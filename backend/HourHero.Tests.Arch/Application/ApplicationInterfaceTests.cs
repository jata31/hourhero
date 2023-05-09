using ArchUnitNET.Domain.Extensions;
using ArchUnitNET.Fluent.Syntax.Elements.Members.MethodMembers;
using ArchUnitNET.NUnit;
using NUnit.Framework;
using static ArchUnitNET.Fluent.ArchRuleDefinition;

namespace HourHero.Tests.Arch.Application;

public class ApplicationInterfaceTests
{
    [Test]
    public void AsyncMethodsHaveCancellationTokenTest()
    {
        MethodMembersShouldConjunction rule = MethodMembers()
            .That().AreDeclaredIn(
                Types()
                    .That()
                    .ResideInNamespace("HourHero.Application")
            )
            .And().AreNoConstructors()
            .And().ArePublic()
            .And().HaveReturnType(typeof(Task))
            .Should().FollowCustomCondition(m => m.Parameters.Any(t => t.IsAssignableTo(nameof(CancellationToken))),
                "has a cancellation token",
                "has no cancellation token");

        rule.Check(StaticTestVariables.Architecture);
    }
}