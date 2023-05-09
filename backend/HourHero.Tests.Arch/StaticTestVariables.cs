using ArchUnitNET.Domain;
using ArchUnitNET.Loader;
using HourHero.Api.Controllers.V1;

namespace HourHero.Tests.Arch;

public static class StaticTestVariables
{
    public static readonly Architecture Architecture =
        new ArchLoader().LoadAssemblies(
            typeof(HourHero.Application.ServiceCollectionExtensions).Assembly,
            typeof(HourHero.Domain.Exceptions.ItemNotFoundException).Assembly,
            typeof(HourHero.Infrastructure.ServiceCollectionExtensions).Assembly,
            typeof(BaseController).Assembly
        ).Build();
}