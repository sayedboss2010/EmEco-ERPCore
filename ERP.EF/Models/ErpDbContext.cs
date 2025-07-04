﻿using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace ERP.EF.Models;

public partial class ErpDbContext : DbContext
{
    public ErpDbContext()
    {
    }

    public ErpDbContext(DbContextOptions<ErpDbContext> options)
        : base(options)
    {
    }
    public virtual DbSet<DataToExcel> DataToExcels { get; set; }

    public virtual DbSet<CheckList> CheckLists { get; set; }

    public virtual DbSet<CheckListMaster> CheckListMasters { get; set; }

    public virtual DbSet<CheckListMasterDetail> CheckListMasterDetails { get; set; }

    public virtual DbSet<Employee> Employees { get; set; }

    public virtual DbSet<EmployeePermission> EmployeePermissions { get; set; }

    public virtual DbSet<Equipment> Equipment { get; set; }

    public virtual DbSet<EquipmentLocation> EquipmentLocations { get; set; }

    public virtual DbSet<EquipmentLocationPlan> EquipmentLocationPlans { get; set; }

    public virtual DbSet<EquipmentTransfer> EquipmentTransfers { get; set; }

    public virtual DbSet<EquipmentType> EquipmentTypes { get; set; }

    public virtual DbSet<Location> Locations { get; set; }

    public virtual DbSet<PR_User> PR_Users { get; set; }

    public virtual DbSet<Permission> Permissions { get; set; }

    public virtual DbSet<PermissionScreen> PermissionScreens { get; set; }

    public virtual DbSet<Plan> Plans { get; set; }

    public virtual DbSet<Screen> Screens { get; set; }

    public virtual DbSet<SparePart> SpareParts { get; set; }

    public virtual DbSet<SparePartType> SparePartTypes { get; set; }

    public virtual DbSet<Store> Stores { get; set; }

    public virtual DbSet<StoreInventory> StoreInventories { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        try
        {
            string c = Directory.GetCurrentDirectory();
            IConfigurationRoot configuration =
                new ConfigurationBuilder().SetBasePath(c).AddJsonFile("appsettings.json").Build();

            optionsBuilder.UseSqlServer(configuration.GetConnectionString("DBConnection"));
        }
        catch
        {
            //ignore
        }
    }
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<CheckList>(entity =>
        {
            entity.HasKey(e => e.CheckListID).HasName("PK__CheckLis__56318361EB1AD802");

            entity.ToTable("CheckList", tb => tb.HasComment("CheckList معدة"));

            entity.Property(e => e.CheckItem).HasMaxLength(255);
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.IsRequired).HasDefaultValue(true);
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");

            entity.HasOne(d => d.EquipmentType).WithMany(p => p.CheckLists)
                .HasForeignKey(d => d.EquipmentTypeID)
                .HasConstraintName("FK__CheckList__Equip__09A971A2");

            entity.HasOne(d => d.Plan).WithMany(p => p.CheckLists)
                .HasForeignKey(d => d.PlanID)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_CheckList_Plan");
        });

        modelBuilder.Entity<CheckListMaster>(entity =>
        {
            entity.HasKey(e => e.CheckListMasterID).HasName("PK__CheckLis__F424F241C760DF99");

            entity.ToTable("CheckListMaster");

            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.PlanID).HasComment("الخطة");
            entity.Property(e => e.ProcessDate).HasColumnType("datetime");
            entity.Property(e => e.ProcessProblem).HasComment("فيها مشكلة ام لا");
            entity.Property(e => e.ReviewedAt).HasColumnType("datetime");
            entity.Property(e => e.ReviewedBy).HasComment("مين عمل مراجعه للعملية");
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");
            entity.Property(e => e.isClosed).HasComment("الاجراءات كلها خلصت");
            entity.Property(e => e.isClosedDate)
                .HasComment("تاريخ غلق العملية")
                .HasColumnType("datetime");

            entity.HasOne(d => d.CheckList).WithMany(p => p.CheckListMasters)
                .HasForeignKey(d => d.CheckListID)
                .HasConstraintName("FK__CheckList__Check__0A9D95DB");

            entity.HasOne(d => d.EquipmentLocation).WithMany(p => p.CheckListMasters)
                .HasForeignKey(d => d.EquipmentLocationID)
                .HasConstraintName("FK_CheckListMaster_EquipmentLocation");

            entity.HasOne(d => d.Plan).WithMany(p => p.CheckListMasters)
                .HasForeignKey(d => d.PlanID)
                .HasConstraintName("FK_CheckListMaster_Plan");
        });

        modelBuilder.Entity<CheckListMasterDetail>(entity =>
        {
            entity.HasKey(e => e.CheckListMasterDetailID).HasName("PK__CheckLis__32E104E00BC1708A");

            entity.Property(e => e.CommentExecuted).HasComment("ملاحظات");
            entity.Property(e => e.CommentReviewed).HasComment("ملاحظات");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.ExecutedAt).HasColumnType("datetime");
            entity.Property(e => e.ExecutedBy).HasComment("تم التنفيذ بواسطة");
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.QuantityStoreInventory).HasComment("عدد القطع فى المخزن");
            entity.Property(e => e.ReviewedAt).HasColumnType("datetime");
            entity.Property(e => e.ReviewedBy).HasComment("تم المراجعة بواسطة");
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");
            entity.Property(e => e.isClosed).HasComment("الاجراءات كلها خلصت");
            entity.Property(e => e.isClosedDate)
                .HasComment("تاريخ غلق العملية")
                .HasColumnType("datetime");

            entity.HasOne(d => d.CheckListMaster).WithMany(p => p.CheckListMasterDetails)
                .HasForeignKey(d => d.CheckListMasterID)
                .HasConstraintName("FK__CheckList__Check__503BEA1C");

            entity.HasOne(d => d.SparePart).WithMany(p => p.CheckListMasterDetails)
                .HasForeignKey(d => d.SparePartID)
                .HasConstraintName("FK__CheckList__Spare__51300E55");
        });

        modelBuilder.Entity<Employee>(entity =>
        {
            entity.HasKey(e => e.EmployeeID).HasName("PK__Employee__7AD04FF1B9D440ED");

            entity.ToTable(tb => tb.HasComment("الموظفين"));

            entity.Property(e => e.EmployeeID).HasComment("الموظفين");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.FirstName).HasMaxLength(100);
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.JobTitle).HasMaxLength(100);
            entity.Property(e => e.LastName).HasMaxLength(100);
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");
        });

        modelBuilder.Entity<EmployeePermission>(entity =>
        {
            entity.HasKey(e => e.EmployeePermissionID).HasName("PK__Employee__E736E77D5AE59705");

            entity.HasOne(d => d.Permission).WithMany(p => p.EmployeePermissions)
                .HasForeignKey(d => d.PermissionID)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__EmployeeP__Permi__0F624AF8");
        });

        modelBuilder.Entity<Equipment>(entity =>
        {
            entity.HasKey(e => e.EquipmentID).HasName("PK__Equipmen__34474599A1A42014");

            entity.ToTable(tb => tb.HasComment("المعدات"));

            entity.HasIndex(e => e.SerialNumber, "UQ__Equipmen__048A0008882D707A").IsUnique();

            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.EquipmentName).HasMaxLength(100);
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.SerialNumber).HasMaxLength(100);
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");

            entity.HasOne(d => d.EquipmentType).WithMany(p => p.Equipment)
                .HasForeignKey(d => d.EquipmentTypeID)
                .HasConstraintName("FK__Equipment__Equip__10566F31");
        });

        modelBuilder.Entity<EquipmentLocation>(entity =>
        {
            entity.HasKey(e => e.EquipmentLocationID).HasName("PK__Equipmen__06650250CCA53E02");

            entity.ToTable("EquipmentLocation", tb => tb.HasComment("معدات الموقع"));

            entity.HasIndex(e => new { e.EquipmentID, e.SerialNumber }, "UC_SerialNumber").IsUnique();

            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.EntryDate)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.EquipmentName).HasMaxLength(100);
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.SerialNumber).HasMaxLength(100);
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");

            entity.HasOne(d => d.Equipment).WithMany(p => p.EquipmentLocations)
                .HasForeignKey(d => d.EquipmentID)
                .HasConstraintName("FK__Equipment__Equip__6477ECF3");

            entity.HasOne(d => d.Location).WithMany(p => p.EquipmentLocations)
                .HasForeignKey(d => d.LocationID)
                .HasConstraintName("FK_EquipmentLocation_Locations");

            entity.HasOne(d => d.ResponsiblePerson).WithMany(p => p.EquipmentLocations)
                .HasForeignKey(d => d.ResponsiblePersonID)
                .HasConstraintName("FK__Equipment__Respo__656C112C");
        });

        modelBuilder.Entity<EquipmentLocationPlan>(entity =>
        {
            entity.HasKey(e => e.EquipmentLocationPlanID).HasName("PK__Equipmen__10EBEE7F683279BA");

            entity.ToTable("EquipmentLocationPlan");

            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");

            entity.HasOne(d => d.EquipmentLocation).WithMany(p => p.EquipmentLocationPlans)
                .HasForeignKey(d => d.EquipmentLocationID)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_EquipmentLocationPlan_EquipmentLocation");

            entity.HasOne(d => d.Plan).WithMany(p => p.EquipmentLocationPlans)
                .HasForeignKey(d => d.PlanID)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_EquipmentLocationPlan_Plan");
        });

        modelBuilder.Entity<EquipmentTransfer>(entity =>
        {
            entity.HasKey(e => e.TransferID).HasName("PK__Equipmen__954901718EE3B784");

            entity.ToTable("EquipmentTransfer", tb => tb.HasComment("تاريخ نقل المعدات"));

            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.FromLocation).HasMaxLength(100);
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.ToLocation).HasMaxLength(100);
            entity.Property(e => e.TransferDate)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.TransferReason).HasMaxLength(255);
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");

            entity.HasOne(d => d.EquipmentLocation).WithMany(p => p.EquipmentTransfers)
                .HasForeignKey(d => d.EquipmentLocationID)
                .HasConstraintName("FK__Equipment__Equip__6C190EBB");

            entity.HasOne(d => d.ResponsiblePerson).WithMany(p => p.EquipmentTransfers)
                .HasForeignKey(d => d.ResponsiblePersonID)
                .HasConstraintName("FK__Equipment__Respo__17036CC0");
        });

        modelBuilder.Entity<EquipmentType>(entity =>
        {
            entity.HasKey(e => e.EquipmentTypeID).HasName("PK__Equipmen__554726DC0E31F506");

            entity.ToTable(tb => tb.HasComment("نوع المعدة"));

            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.Description).HasMaxLength(255);
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.TypeName).HasMaxLength(100);
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");
        });

        modelBuilder.Entity<Location>(entity =>
        {
            entity.HasKey(e => e.LocationID).HasName("PK__Location__E7FEA4776B9CDB63");

            entity.ToTable(tb => tb.HasComment("الموقع"));

            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.LocationName).HasMaxLength(100);
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");
        });

        modelBuilder.Entity<PR_User>(entity =>
        {
            entity.ToTable("PR_User");

            entity.Property(e => e.Password).IsRequired();
            entity.Property(e => e.UserName).IsRequired();
        });

        modelBuilder.Entity<Permission>(entity =>
        {
            entity.HasKey(e => e.PermissionID).HasName("PK__Permissi__EFA6FB0F8B0D429F");

            entity.Property(e => e.Description).HasMaxLength(100);
            entity.Property(e => e.PermissionName).HasMaxLength(100);
        });

        modelBuilder.Entity<PermissionScreen>(entity =>
        {
            entity.HasKey(e => e.PermissionScreenID).HasName("PK__Permissi__A9C86A8A6ADE5DE1");

            entity.HasOne(d => d.Permission).WithMany(p => p.PermissionScreens)
                .HasForeignKey(d => d.PermissionID)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Permissio__Permi__17F790F9");

            entity.HasOne(d => d.Screen).WithMany(p => p.PermissionScreens)
                .HasForeignKey(d => d.ScreenID)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Permissio__Scree__18EBB532");
        });

        modelBuilder.Entity<Plan>(entity =>
        {
            entity.HasKey(e => e.PlanID).HasName("PK__Plan__755C22D7F7727A3C");

            entity.ToTable("Plan");

            entity.Property(e => e.CreatedAt).HasColumnType("datetime");
            entity.Property(e => e.EndDate).HasColumnType("datetime");
            entity.Property(e => e.PlanName)
                .IsRequired()
                .HasMaxLength(300);
            entity.Property(e => e.StartDate).HasColumnType("datetime");
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");
        });

        modelBuilder.Entity<Screen>(entity =>
        {
            entity.HasKey(e => e.ScreenID).HasName("PK__Screens__0AB60F85ABAA9962");

            entity.Property(e => e.Description).HasMaxLength(100);
            entity.Property(e => e.ScreenName).HasMaxLength(100);
        });

        modelBuilder.Entity<SparePart>(entity =>
        {
            entity.HasKey(e => e.SparePartID).HasName("PK__SparePar__F5BA41F21EFF7128");

            entity.ToTable(tb => tb.HasComment("قطع الغيار"));

            entity.HasIndex(e => e.SerialNumber, "UQ__SparePar__048A00087E87EBB7").IsUnique();

            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.SerialNumber).HasMaxLength(100);
            entity.Property(e => e.SparePartName).HasMaxLength(100);
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");

            entity.HasOne(d => d.Equipment).WithMany(p => p.SpareParts)
                .HasForeignKey(d => d.EquipmentID)
                .HasConstraintName("FK__SparePart__Equip__4BAC3F29");

            entity.HasOne(d => d.SparePartType).WithMany(p => p.SpareParts)
                .HasForeignKey(d => d.SparePartTypeID)
                .HasConstraintName("FK__SparePart__Spare__4CA06362");
        });

        modelBuilder.Entity<SparePartType>(entity =>
        {
            entity.HasKey(e => e.SparePartTypeID).HasName("PK__SparePar__9773A2881EE1E0FB");

            entity.ToTable(tb => tb.HasComment("نوع قطع الغيار"));

            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.Description).HasMaxLength(255);
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.TypeName).HasMaxLength(100);
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");
        });

        modelBuilder.Entity<Store>(entity =>
        {
            entity.HasKey(e => e.StoreID).HasName("PK__Store__3B82F0E189ABC2F7");

            entity.ToTable("Store", tb => tb.HasComment("المخزن"));

            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.StoreName).HasMaxLength(100);
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");

            entity.HasOne(d => d.Location).WithMany(p => p.Stores)
                .HasForeignKey(d => d.LocationID)
                .HasConstraintName("FK_Store_Locations");
        });

        modelBuilder.Entity<StoreInventory>(entity =>
        {
            entity.HasKey(e => e.StoreInventoryID).HasName("PK__StoreInv__314E77A5D91D627E");

            entity.ToTable("StoreInventory", tb => tb.HasComment("مخزن وقطع الغيار"));

            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.EntryDate)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");

            entity.HasOne(d => d.SparePart).WithMany(p => p.StoreInventories)
                .HasForeignKey(d => d.SparePartID)
                .HasConstraintName("FK__StoreInve__Spare__534D60F1");

            entity.HasOne(d => d.Store).WithMany(p => p.StoreInventories)
                .HasForeignKey(d => d.StoreID)
                .HasConstraintName("FK_StoreInventory_Store");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
