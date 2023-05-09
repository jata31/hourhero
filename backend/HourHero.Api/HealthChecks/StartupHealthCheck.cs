using Microsoft.Extensions.Diagnostics.HealthChecks;

namespace HourHero.Api.HealthChecks;

public class StartupHealthCheck : IHealthCheck
{
    public Task<HealthCheckResult> CheckHealthAsync(HealthCheckContext context, CancellationToken cancellationToken = new())
    {
        return Task.FromResult(HealthCheckResult.Healthy("The startup task has completed."));
    }
}