using System.Runtime.Serialization;

namespace HourHero.Domain.Exceptions;

public class ItemNotFoundException : Exception
{
    public ItemNotFoundException()
    {
    }

    protected ItemNotFoundException(SerializationInfo info, StreamingContext context) : base(info, context)
    {
    }

    public ItemNotFoundException(string message) : base(message)
    {
    }

    public ItemNotFoundException(string message, Exception innerException) : base(message, innerException)
    {
    }
}