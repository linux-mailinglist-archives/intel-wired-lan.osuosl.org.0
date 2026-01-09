Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC45D0883D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 11:22:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7A8D60E12;
	Fri,  9 Jan 2026 10:22:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XZUGhYsX9Z7c; Fri,  9 Jan 2026 10:22:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECFF060E43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767954144;
	bh=1X6VjjSDBSXJE0ymL3SGMh0l4uxNAcGGXw1ekS2+I5g=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3dUAJ1b1svTSeAi9TU6ZdOhdOaGOy9pFio0Aga3HaixmJnE3jw4PsTvJS5mTueWVX
	 jKfJPVcY+JAEX5OzmlS94C06N+zI0n6NIKdvWhcVL8jVkQ5WLk/qt2Mamo7r+xsdEY
	 XbWZZPNvlKkmBhScYCWFe6xX+GMtkHD0KKOns89jni01usg5JVVWLbxA7GCdC/xoY1
	 0QhmBUVzs3FNQqmJ8UtBwxj+BjpnBEFB0EWL+/2mXhk6VnS2f+EkRE5Yg2I9wQCZvU
	 2ExEk8KL6wjg1eUWCoZlw6is/83MAboCkSSpJvL3jS2RZRI7rE20WRLXeKM6UXo58u
	 zXfxwb+Xeu0Dg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECFF060E43;
	Fri,  9 Jan 2026 10:22:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EBC6412E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 10:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E8CFF810DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 10:22:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eGiiid9g6z8n for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 10:22:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D217D80DDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D217D80DDB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D217D80DDB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 10:22:20 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-204-ChZLRiv_Nwe1xlCYcTvuzw-1; Fri,
 09 Jan 2026 05:22:16 -0500
X-MC-Unique: ChZLRiv_Nwe1xlCYcTvuzw-1
X-Mimecast-MFC-AGG-ID: ChZLRiv_Nwe1xlCYcTvuzw_1767954133
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 94F33180035D; Fri,  9 Jan 2026 10:22:12 +0000 (UTC)
Received: from [10.44.32.135] (unknown [10.44.32.135])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 13FC61800994; Fri,  9 Jan 2026 10:22:04 +0000 (UTC)
Message-ID: <a581a86d-d49c-4761-bd68-989a7a12cb56@redhat.com>
Date: Fri, 9 Jan 2026 11:22:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
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
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20260109-wonderful-acoustic-civet-e030da@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1767954139;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1X6VjjSDBSXJE0ymL3SGMh0l4uxNAcGGXw1ekS2+I5g=;
 b=U3pPfqTql/pe6xSuGjuWN6cW41+Gnvzt4TVUkNsNkJQ+INFM8MrZGPRQD5r8lwMi7wHDO7
 EvrPPyn7sEYhXYUPVMP8ZFGqokyGDg1Hr6xu06Fmx/zxuz6RlVGDZCdtAUOetlqPjoKC7Q
 L+OikqoOnynPccC7IkYRtH7U42mc81k=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=U3pPfqTq
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



On 1/9/26 10:48 AM, Krzysztof Kozlowski wrote:
> On Thu, Jan 08, 2026 at 07:23:07PM +0100, Ivan Vecera wrote:
>> Introduce a common schema for DPLL pin consumers. Devices such as Ethernet
>> controllers and PHYs may require connections to DPLL pins for Synchronous
>> Ethernet (SyncE) or other frequency synchronization tasks.
>>
>> Defining these properties in a shared schema ensures consistency across
>> different device types that consume DPLL resources.
>>
>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>> ---
>>   .../bindings/dpll/dpll-pin-consumer.yaml      | 30 +++++++++++++++++++
>>   MAINTAINERS                                   |  1 +
>>   2 files changed, 31 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml b/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
>> new file mode 100644
>> index 0000000000000..60c184c18318a
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
>> @@ -0,0 +1,30 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/dpll/dpll-pin-consumer.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: DPLL Pin Consumer
>> +
>> +maintainers:
>> +  - Ivan Vecera <ivecera@redhat.com>
>> +
> 
> You miss select. Without it this binding is no-op.

Will fix.

>> +description: |
> 
> Drop |

Will do.

>> +  Common properties for devices that require connection to DPLL (Digital Phase
>> +  Locked Loop) pins for frequency synchronization (e.g. SyncE).
>> +
>> +properties:
>> +  dpll-pins:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      List of phandles to the DPLL pin nodes connected to this device.
>> +
>> +  dpll-pin-names:
>> +    $ref: /schemas/types.yaml#/definitions/string-array
>> +    description:
>> +      Names for the DPLL pins defined in 'dpll-pins', in the same order.
>> +
>> +dependencies:
>> +  dpll-pin-names: [ dpll-pins ]
> 
> Binding should go to dtschema. See also commit
> 3282a891060aace02e3eed4789739768060cea32 in dtschema or other examples
> how to add new provider/consumer properties.

Will do.

Thanks for advice...

Ivan

