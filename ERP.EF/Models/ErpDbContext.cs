using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;

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

    public virtual DbSet<WorkOrder> WorkOrders { get; set; }

    public virtual DbSet<DataToExcel> DataToExcels { get; set; }

    public partial class DataToExcel
    {
        public int Id { get; set; }

        public string TableName { get; set; }

        public long? LastReadedId { get; set; }
    }

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
            entity.HasKey(e => e.CheckListID).HasName("PK__CheckLis__56318361EAAC08C3");

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
                .HasConstraintName("FK__CheckList__Equip__0D7A0286");
        });

        modelBuilder.Entity<CheckListMaster>(entity =>
        {
            entity.HasKey(e => e.CheckListMasterID).HasName("PK__CheckLis__F424F241F95F31EE");

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
                .HasConstraintName("FK__CheckList__Check__0E6E26BF");

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
            entity.HasKey(e => e.EmployeeID).HasName("PK__Employee__7AD04FF180713E56");

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
            entity.HasKey(e => e.EmployeePermissionID).HasName("PK__Employee__E736E77D416B2E2A");

            entity.HasOne(d => d.Permission).WithMany(p => p.EmployeePermissions)
                .HasForeignKey(d => d.PermissionID)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__EmployeeP__Permi__1332DBDC");
        });

        modelBuilder.Entity<Equipment>(entity =>
        {
            entity.HasKey(e => e.EquipmentID).HasName("PK__Equipmen__34474599593CD184");

            entity.ToTable(tb => tb.HasComment("المعدات"));

            entity.HasIndex(e => e.SerialNumber, "UQ__Equipmen__048A0008EA483302").IsUnique();

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
                .HasConstraintName("FK__Equipment__Equip__14270015");
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
            entity.HasKey(e => e.EquipmentLocationPlanID).HasName("PK__Equipmen__10EBEE7F72831C81");

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
            entity.HasKey(e => e.TransferID).HasName("PK__Equipmen__9549017144E51C1B");

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
                .HasConstraintName("FK__Equipment__Respo__1AD3FDA4");
        });

        modelBuilder.Entity<EquipmentType>(entity =>
        {
            entity.HasKey(e => e.EquipmentTypeID).HasName("PK__Equipmen__554726DCFAFAF56D");

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
            entity.HasKey(e => e.LocationID).HasName("PK__Location__E7FEA477A48108C4");

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
            entity.HasKey(e => e.PermissionID).HasName("PK__Permissi__EFA6FB0FB0B9122C");

            entity.Property(e => e.Description).HasMaxLength(100);
            entity.Property(e => e.PermissionName).HasMaxLength(100);
        });

        modelBuilder.Entity<PermissionScreen>(entity =>
        {
            entity.HasKey(e => e.PermissionScreenID).HasName("PK__Permissi__A9C86A8AB7713A15");

            entity.HasOne(d => d.Permission).WithMany(p => p.PermissionScreens)
                .HasForeignKey(d => d.PermissionID)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Permissio__Permi__1BC821DD");

            entity.HasOne(d => d.Screen).WithMany(p => p.PermissionScreens)
                .HasForeignKey(d => d.ScreenID)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Permissio__Scree__1CBC4616");
        });

        modelBuilder.Entity<Plan>(entity =>
        {
            entity.HasKey(e => e.PlanID).HasName("PK__Plan__755C22D75E564CC9");

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
            entity.HasKey(e => e.ScreenID).HasName("PK__Screens__0AB60F856114CF10");

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
            entity.HasKey(e => e.SparePartTypeID).HasName("PK__SparePar__9773A288F3F67EDA");

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
            entity.HasKey(e => e.StoreInventoryID).HasName("PK__StoreInv__314E77A5FF7B2140");

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

        modelBuilder.Entity<WorkOrder>(entity =>
        {
            entity.HasKey(e => e.WorkOrderID).HasName("PK__WorkOrde__AE755175BB03452C");

            entity.ToTable("WorkOrder");

            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.InventoryID).HasComment("رقم امر العمل");
            entity.Property(e => e.IsActive).HasDefaultValue(true);
            entity.Property(e => e.IsDeleted).HasDefaultValue(false);
            entity.Property(e => e.Quantity).HasComment("الكمية المطلوبة");
            entity.Property(e => e.UpdatedAt).HasColumnType("datetime");

            entity.HasOne(d => d.CheckListMasterDetail).WithMany(p => p.WorkOrders)
                .HasForeignKey(d => d.CheckListMasterDetailID)
                .HasConstraintName("FK__WorkOrder__Check__5D95E53A");

            entity.HasOne(d => d.SparePart).WithMany(p => p.WorkOrders)
                .HasForeignKey(d => d.SparePartID)
                .HasConstraintName("FK__WorkOrder__Spare__5E8A0973");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
