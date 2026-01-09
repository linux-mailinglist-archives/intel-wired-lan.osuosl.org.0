Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F19D0A90E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 15:12:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FEAC60748;
	Fri,  9 Jan 2026 14:12:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MaL3gyN-aBcd; Fri,  9 Jan 2026 14:12:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F2C960791
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767967941;
	bh=xcr1hWAXxXMTm+MOI2pLQIo/wtCHSaw2hi1H8FmkX8c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=liseZA4xihWJUgAmzZqd4Wz9gd629XQ0m+ohaAhw4SQly3l3xDIOqkrbP2V9nCpMZ
	 grLLDyxqkTejHY8icygVAwsdtTMMmeCacb1/SwGKBzXlAuvIFp4sD/u9p/y2KTdmW7
	 s8Bd1STrrYgtg5cIev6xURkHuKa4gEkJOaH/jm2yEcp6xTxXKAllnLrNLxtF5cy6v+
	 uIrzlkpPvZNavmfEI3IfknptrcbHaxPQktqJeOBgHyeIJx75n/MELka9I6ZZB2jmva
	 807f8ifRGe56ZUqJr7Z3EVlr1xT2pHgKjXp41g9Ij+Xdtrmvx3mOgDG2XCo3TLe8Kc
	 mF40BgO4FYrOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F2C960791;
	Fri,  9 Jan 2026 14:12:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E475512E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 14:12:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D5FEF80BC7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 14:12:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WL_zoT5YKAdi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 14:12:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D195A8095E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D195A8095E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D195A8095E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 14:12:18 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-609-wRIAoh3BOniKE_S44Jwm1g-1; Fri,
 09 Jan 2026 09:12:11 -0500
X-MC-Unique: wRIAoh3BOniKE_S44Jwm1g-1
X-Mimecast-MFC-AGG-ID: wRIAoh3BOniKE_S44Jwm1g_1767967928
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id D95E31956058; Fri,  9 Jan 2026 14:12:07 +0000 (UTC)
Received: from [10.44.33.222] (unknown [10.44.33.222])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 11B1030002D2; Fri,  9 Jan 2026 14:12:00 +0000 (UTC)
Message-ID: <fd07e1f8-455c-464f-9760-9d16d450a7d5@redhat.com>
Date: Fri, 9 Jan 2026 15:11:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ivan Vecera <ivecera@redhat.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 linux-rdma@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed
 <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-2-ivecera@redhat.com>
 <20260109-wonderful-acoustic-civet-e030da@quoll>
 <a581a86d-d49c-4761-bd68-989a7a12cb56@redhat.com>
Content-Language: en-US
In-Reply-To: <a581a86d-d49c-4761-bd68-989a7a12cb56@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1767967937;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xcr1hWAXxXMTm+MOI2pLQIo/wtCHSaw2hi1H8FmkX8c=;
 b=KmjZ2ynYShcgjzjjfmGZ9KuezdGqqRwks3w+LXz61Ogi6lQPukOc21rSMLP2IKWq8mWaXB
 bnuJqoeM7NudSEWqhfxagbnK+Ben13c96nACdf6vfwyTJHr1oIxEil1mvN9OGiH0oeLJVg
 SAbCUCWwKJEncxkamujGygiHSzdirAE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=KmjZ2ynY
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/12] dt-bindings: dpll: add
 common dpll-pin-consumer schema
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/9/26 11:22 AM, Ivan Vecera wrote:
> 
> 
> On 1/9/26 10:48 AM, Krzysztof Kozlowski wrote:
>> On Thu, Jan 08, 2026 at 07:23:07PM +0100, Ivan Vecera wrote:
>>> Introduce a common schema for DPLL pin consumers. Devices such as 
>>> Ethernet
>>> controllers and PHYs may require connections to DPLL pins for 
>>> Synchronous
>>> Ethernet (SyncE) or other frequency synchronization tasks.
>>>
>>> Defining these properties in a shared schema ensures consistency across
>>> different device types that consume DPLL resources.
>>>
>>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>>> ---
>>>   .../bindings/dpll/dpll-pin-consumer.yaml      | 30 +++++++++++++++++++
>>>   MAINTAINERS                                   |  1 +
>>>   2 files changed, 31 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/dpll/dpll-pin- 
>>> consumer.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/dpll/dpll-pin- 
>>> consumer.yaml b/Documentation/devicetree/bindings/dpll/dpll-pin- 
>>> consumer.yaml
>>> new file mode 100644
>>> index 0000000000000..60c184c18318a
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
>>> @@ -0,0 +1,30 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/dpll/dpll-pin-consumer.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: DPLL Pin Consumer
>>> +
>>> +maintainers:
>>> +  - Ivan Vecera <ivecera@redhat.com>
>>> +
>>
>> You miss select. Without it this binding is no-op.
> 
> Will fix.
> 
>>> +description: |
>>
>> Drop |
> 
> Will do.
> 
>>> +  Common properties for devices that require connection to DPLL 
>>> (Digital Phase
>>> +  Locked Loop) pins for frequency synchronization (e.g. SyncE).
>>> +
>>> +properties:
>>> +  dpll-pins:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>>> +    description:
>>> +      List of phandles to the DPLL pin nodes connected to this device.
>>> +
>>> +  dpll-pin-names:
>>> +    $ref: /schemas/types.yaml#/definitions/string-array
>>> +    description:
>>> +      Names for the DPLL pins defined in 'dpll-pins', in the same 
>>> order.
>>> +
>>> +dependencies:
>>> +  dpll-pin-names: [ dpll-pins ]
>>
>> Binding should go to dtschema. See also commit
>> 3282a891060aace02e3eed4789739768060cea32 in dtschema or other examples
>> how to add new provider/consumer properties.

Quick questions... if the dpll pin consumer properties schema should go
to dtschema...

1) Should I remove this patch from this series? So this schema won't be
    a part of kernel
2) dtschema does not contain dpll-device and dpll-pin schemas now, I
    expect they should be added as well... or? I'm asking because there
    is also e.g. hwlock-consumer.yaml in dtschema but no hwlock

Thanks,
Ivan

> Will do.
> 
> Thanks for advice...
> 
> Ivan
> 

