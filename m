Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CA0D14279
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 17:48:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E26BB40548;
	Mon, 12 Jan 2026 16:48:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VTwhoHNyK45E; Mon, 12 Jan 2026 16:48:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FF7240544
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768236515;
	bh=vC7wn/ye/uBT+aaDl9k3CfBScfwjYeWCooqpfDEE+H8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tV1ZI6etr9bjluK68rjijO9+ugfkNvQ8ByDWcm7tB/9bQwhbTXBKSikaUJfNapKec
	 /CffyMKFVcBc3QP6Yizryr5mncRqq+900KsuVzJ0uGSwR0O81iJ/pkMkNY1VV1I+Wm
	 z0Oo4scVfY6GBnrkReopzCEyH3DCao6rrlzAZsZunDCFq5CBpxtmTvEdINd7eN0B1X
	 WSLDpD2NbWo5H0RbrRwJP0f1WQ59oBGQr41gMnrJYhFeNh7D63X9s4mv4Si6hfsE5F
	 KjJPMpXcSwD0HhE8LqlapOX9YOWNF6+UDhzDoXrkDHqK1NCsIUGxpQHzdsYH6+UKbQ
	 rnz57XQo2F0UQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FF7240544;
	Mon, 12 Jan 2026 16:48:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B52E18D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:48:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A5BD40542
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:48:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NlZAGArkUmBi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 16:48:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 34E5940540
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34E5940540
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34E5940540
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:48:31 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-624-iIPE60pcPUWT1sIRma0cng-1; Mon,
 12 Jan 2026 11:48:26 -0500
X-MC-Unique: iIPE60pcPUWT1sIRma0cng-1
X-Mimecast-MFC-AGG-ID: iIPE60pcPUWT1sIRma0cng_1768236503
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id D479B1800359; Mon, 12 Jan 2026 16:48:22 +0000 (UTC)
Received: from [10.44.34.128] (unknown [10.44.34.128])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 6DF6A19560B2; Mon, 12 Jan 2026 16:48:15 +0000 (UTC)
Message-ID: <bee863d4-81a4-421c-b57e-b27843ca308b@redhat.com>
Date: Mon, 12 Jan 2026 17:48:14 +0100
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
 <a581a86d-d49c-4761-bd68-989a7a12cb56@redhat.com>
 <fd07e1f8-455c-464f-9760-9d16d450a7d5@redhat.com>
 <cbf482be-4aa8-488f-9f78-181f8f145c28@kernel.org>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <cbf482be-4aa8-488f-9f78-181f8f145c28@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768236510;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vC7wn/ye/uBT+aaDl9k3CfBScfwjYeWCooqpfDEE+H8=;
 b=Q4i9/fvA+2Zu3rged2OWX1/bd1b+ZzyAJ381Wig4H3Q/K9bvqKIOE4vKaN9zBNGPGblYkN
 xLKABTBUVtpClaImrkM3FacXdiXuauxAxJfH52BLrpYDX5lFkpGKYjHlYcZb0CtR13QBxX
 DolEIG+wyqfNsbRADYhMaN9OU4Nbgb8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Q4i9/fvA
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



On 1/12/26 5:14 PM, Krzysztof Kozlowski wrote:
> On 09/01/2026 15:11, Ivan Vecera wrote:
>>>>> +  Common properties for devices that require connection to DPLL
>>>>> (Digital Phase
>>>>> +  Locked Loop) pins for frequency synchronization (e.g. SyncE).
>>>>> +
>>>>> +properties:
>>>>> +  dpll-pins:
>>>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>>>>> +    description:
>>>>> +      List of phandles to the DPLL pin nodes connected to this device.
>>>>> +
>>>>> +  dpll-pin-names:
>>>>> +    $ref: /schemas/types.yaml#/definitions/string-array
>>>>> +    description:
>>>>> +      Names for the DPLL pins defined in 'dpll-pins', in the same
>>>>> order.
>>>>> +
>>>>> +dependencies:
>>>>> +  dpll-pin-names: [ dpll-pins ]
>>>>
>>>> Binding should go to dtschema. See also commit
>>>> 3282a891060aace02e3eed4789739768060cea32 in dtschema or other examples
>>>> how to add new provider/consumer properties.
>>
>> Quick questions... if the dpll pin consumer properties schema should go
>> to dtschema...
>>
>> 1) Should I remove this patch from this series? So this schema won't be
>>      a part of kernel
> 
> Yes.

OK, will remove this patch from the series and create PR against
dtschema and ...

>> 2) dtschema does not contain dpll-device and dpll-pin schemas now, I
> 
> The provider, so the #foo-cells should be in dtschema as well.

... include dpll.yaml and dpll-pin.yaml as well.

>>      expect they should be added as well... or? I'm asking because there
>>      is also e.g. hwlock-consumer.yaml in dtschema but no hwlock
> 
> hwlock-cells are missing, probably due to licensing.

and I will also include '#dpll-pin-cells', as we cannot theoretically
rule out its usage in the future.

Thanks,
Ivan

