using ERP.Repository.Repositories.Maintenance;
using ERP.Repository.Repositories.Menu;
using ERP.Services.Maintenance;
using ERP.Services.Menu;
using ERP.VM.ViewModels;

namespace ERP.IoC;

public static class DependencyInjection
{
    public static IServiceCollection AddPersistence(this IServiceCollection services,
      IConfiguration configuration)
    {


        services.AddDbContext<ErpDbContext>(options =>
            options.UseSqlServer(configuration.GetConnectionString("DBConnection")));

        services.AddScoped<IHelperRepo, HelperRepo>();
        services.AddScoped<IHelperService, HelperService>();

        services.AddScoped<IAccountRepo, AccountRepo>();
        services.AddScoped<IAccountService, AccountService>();

        services.AddScoped<IMenuRepo, MenuRepo>();
        services.AddScoped<IMenuService, MenuService>();
        

        services.AddScoped<ICheckListRepo, CheckListRepo>();
        services.AddScoped<ICheckListService, CheckListService>();

        services.AddScoped<IGenericRepo<ClosingFaultGroupVm>, ClosingFaultRepo>();
        services.AddScoped<IGenericService<ClosingFaultGroupVm>, ClosingFaultService>();

        services.AddScoped<IGenericRepo<WorkOrderGroupVM>, WorkOrderRepo>();
        services.AddScoped<IGenericService<WorkOrderGroupVM>, WorkOrderService>();

        services.AddScoped<IGenericRepo<WorkOrderPrintGroupVM>, WorkOrderPrintRepo>();
        services.AddScoped<IGenericService<WorkOrderPrintGroupVM>, WorkOrderPrintService>();

        services.AddScoped<IGenericRepo<ClosingFaultFinIshedGroupVm>, ClosingFaultFinishedRepo>();
        services.AddScoped<IGenericService<ClosingFaultFinIshedGroupVm>, ClosingFaultFinishedService>();

        //Auto Mapper Configurations
        var mapperConfig = new MapperConfiguration(mc =>
        {
            mc.AddProfile(new MappingProfile());
        });

        IMapper mapper = mapperConfig.CreateMapper();
        services.AddSingleton(mapper);

        return services;
    }
}