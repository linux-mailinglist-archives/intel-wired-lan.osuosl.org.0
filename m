Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFB5D14AAD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 19:07:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78BF340E11;
	Mon, 12 Jan 2026 18:07:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id whsqY2PrqkKQ; Mon, 12 Jan 2026 18:07:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B39D940E10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768241249;
	bh=id5XPqkuM+zrpYOCKhCCCDsyMuntmPe6ENzF1N8Jw8o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SNEfBcu6PkEfv0PFVG8++GU8bvyZBpkBXZtmcxbKbiTCQd0bcXEfCiXVAMYwITBKg
	 EWOZw8Wj0MXK7CViPRJ2wv/lKUDrZWZifLcVtdCtq5VtXN08KPIYTAPUA4AfYALisj
	 +dgGnVAB+3d16MMePD7MEfJpH2xdfjQE746rdF6ZuQLMNx6mErSQXa6tlK2z1/OkRP
	 KpvvaNBjPeNEPQLNaSaZC3AQbhICJ6riNDSZFu3ZGcaRwgtlabEtxXLCCm35X10P5T
	 ZXBiGDkq9Oi1fOacZ4hoHHU4bwNuC8HDGQ4Gm8+kxfR9F92T5sQDj57L1O5m8Ynw91
	 E81gZ9ZyZU2Hg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B39D940E10;
	Mon, 12 Jan 2026 18:07:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E633F18D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E2D0D60B59
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:07:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uebj3QAO5-9q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 18:07:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BEEE860755
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEEE860755
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BEEE860755
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:07:26 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-14-GFrrsXd3Pdau7aSSVBCihg-1; Mon,
 12 Jan 2026 13:07:13 -0500
X-MC-Unique: GFrrsXd3Pdau7aSSVBCihg-1
X-Mimecast-MFC-AGG-ID: GFrrsXd3Pdau7aSSVBCihg_1768241230
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id EF7ED18002C4; Mon, 12 Jan 2026 18:07:09 +0000 (UTC)
Received: from [10.44.34.128] (unknown [10.44.34.128])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id DE4E019560AB; Mon, 12 Jan 2026 18:07:02 +0000 (UTC)
Message-ID: <1fc327e0-fd35-4192-80c8-7b73bb9cb9c3@redhat.com>
Date: Mon, 12 Jan 2026 19:07:01 +0100
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
 <fd07e1f8-455c-464f-9760-9d16d450a7d5@redhat.com>
 <cbf482be-4aa8-488f-9f78-181f8f145c28@kernel.org>
 <bee863d4-81a4-421c-b57e-b27843ca308b@redhat.com>
Content-Language: en-US
In-Reply-To: <bee863d4-81a4-421c-b57e-b27843ca308b@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768241245;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=id5XPqkuM+zrpYOCKhCCCDsyMuntmPe6ENzF1N8Jw8o=;
 b=MdFVVMv1wjMhvmMk0LazJOc6b0/LENzTKdFK7hFvoaZn+S9n2WGfrpPbwPPGj+a5r1MhHg
 ISWf1xUi+LLDlB2jBAW1nWxBK70Hvubz7f/w99TwdnT//Oq2R6Mvgu64Hc9ikFUsgpgoHy
 KLAENrieMCVBckXajviWMbkyCU581q8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=MdFVVMv1
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



On 1/12/26 5:48 PM, Ivan Vecera wrote:
> 
> 
> On 1/12/26 5:14 PM, Krzysztof Kozlowski wrote:
>> On 09/01/2026 15:11, Ivan Vecera wrote:
>>>>>> +  Common properties for devices that require connection to DPLL
>>>>>> (Digital Phase
>>>>>> +  Locked Loop) pins for frequency synchronization (e.g. SyncE).
>>>>>> +
>>>>>> +properties:
>>>>>> +  dpll-pins:
>>>>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>>>>>> +    description:
>>>>>> +      List of phandles to the DPLL pin nodes connected to this 
>>>>>> device.
>>>>>> +
>>>>>> +  dpll-pin-names:
>>>>>> +    $ref: /schemas/types.yaml#/definitions/string-array
>>>>>> +    description:
>>>>>> +      Names for the DPLL pins defined in 'dpll-pins', in the same
>>>>>> order.
>>>>>> +
>>>>>> +dependencies:
>>>>>> +  dpll-pin-names: [ dpll-pins ]
>>>>>
>>>>> Binding should go to dtschema. See also commit
>>>>> 3282a891060aace02e3eed4789739768060cea32 in dtschema or other examples
>>>>> how to add new provider/consumer properties.
>>>
>>> Quick questions... if the dpll pin consumer properties schema should go
>>> to dtschema...
>>>
>>> 1) Should I remove this patch from this series? So this schema won't be
>>>      a part of kernel
>>
>> Yes.
> 
> OK, will remove this patch from the series and create PR against
> dtschema and ...
> 
>>> 2) dtschema does not contain dpll-device and dpll-pin schemas now, I
>>
>> The provider, so the #foo-cells should be in dtschema as well.
> 
> ... include dpll.yaml and dpll-pin.yaml as well.

Well, after dtschema investigation, I should make a PR with
dpll-pin-consumer.yaml and dpll-pin-producer.yaml.

Correct?

Thanks,
Ivan

