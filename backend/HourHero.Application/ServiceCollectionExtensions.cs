using Microsoft.Extensions.DependencyInjection;

namespace HourHero.Application;

public static class ServiceCollectionExtensions
{
    public static IServiceCollection AddApplication(this IServiceCollection services)
    {
        return services;
    }
}