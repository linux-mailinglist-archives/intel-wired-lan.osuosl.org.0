Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54225D14327
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 17:56:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1172E8130E;
	Mon, 12 Jan 2026 16:56:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id suP46aGqpslg; Mon, 12 Jan 2026 16:56:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86EDD81311
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768236971;
	bh=bj92T4kdPMa4hTjyGAxNwL1RPMgnUsDf7pHcc06+7bY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rsUL5fj8mpwWSkGQ80HaYUM7WaLE/I+5TmuktU+8aEXXL+A+IIrMd4pXxcGrxUe3A
	 0xUvGquKGWyD9Gh/BI5pTaLWUJ5YSIcq/lRy5oSDkiD94p/mykWvYYx0pp0OojVOtM
	 ksM0tUWWwBLzJsmi0sfSAwZIeX8P2A1dJu2zkmlPcbd2zambiSKp4XkSBaPxXgwpUf
	 G9oAfocnvLdvxnOm6tqDBOcc9phwhf/36RggkhKbVkYwTBEkeddW19TMQCxGk7z1PQ
	 MZX/w7Wzqfy2QvMjv8fcCrBCPq/z1/HlsDMa+Rwhot/nFPEsmvHNXrWklU0j5REV0B
	 yuFtk4Dv21tGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86EDD81311;
	Mon, 12 Jan 2026 16:56:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5607418D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:56:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 41A5B404F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:56:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i1KuqExmi9pG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 16:56:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7A383400C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A383400C5
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A383400C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:56:03 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-435-PtbRvg4BPEq--o89R600bQ-1; Mon,
 12 Jan 2026 11:55:46 -0500
X-MC-Unique: PtbRvg4BPEq--o89R600bQ-1
X-Mimecast-MFC-AGG-ID: PtbRvg4BPEq--o89R600bQ_1768236943
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id D90D01800342; Mon, 12 Jan 2026 16:55:42 +0000 (UTC)
Received: from [10.44.34.128] (unknown [10.44.34.128])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 9966F30001A7; Mon, 12 Jan 2026 16:55:35 +0000 (UTC)
Message-ID: <d444e846-5891-4bcb-96b8-9b3aa3f925bd@redhat.com>
Date: Mon, 12 Jan 2026 17:55:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-4-ivecera@redhat.com>
 <20260109-cooperative-chinchilla-of-swiftness-aebbc8@quoll>
 <09ffc379-85e5-41ce-b781-66ba6bb9a6c7@redhat.com>
 <fcc35747-81f3-4a3a-8b5d-cf29e9c52bb2@kernel.org>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <fcc35747-81f3-4a3a-8b5d-cf29e9c52bb2@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768236962;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bj92T4kdPMa4hTjyGAxNwL1RPMgnUsDf7pHcc06+7bY=;
 b=fpZYTpDIOGaFiaH2orD7h/7lDpVGwNBuHT/Sayo0EdrZEzIqQRnj/ULv5C4HE+hWrorcDh
 8w3wNkCUZLeBLLWLVpt/6I1gMAlnJMPhZxpnSphhBiYVVsgymfxXvTpWyN+5v+VVoyqwso
 Q1R0rUh5Ge1iWTHaEqSwhTY+7yq7JlE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=fpZYTpDI
Subject: Re: [Intel-wired-lan] [PATCH net-next 03/12] dpll: Add helpers to
 find DPLL pin fwnode
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
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/12/26 5:20 PM, Krzysztof Kozlowski wrote:
> On 09/01/2026 15:19, Ivan Vecera wrote:
>>
>>
>> On 1/9/26 10:55 AM, Krzysztof Kozlowski wrote:
>>> On Thu, Jan 08, 2026 at 07:23:09PM +0100, Ivan Vecera wrote:
>>>> Add helper functions to the DPLL core to retrieve a DPLL pin's firmware
>>>> node handle based on the "dpll-pins" and "dpll-pin-names" properties.
>>>>
>>>> * `fwnode_dpll_pin_node_get()`: matches the given name against the
>>>>     "dpll-pin-names" property to find the correct index, then retrieves
>>>>     the reference from "dpll-pins".
>>>> * `device_dpll_pin_node_get()`: a wrapper around the fwnode helper for
>>>>     convenience when using a `struct device`.
>>>>
>>>> These helpers simplify the process for consumer drivers (such as Ethernet
>>>> controllers or PHYs) to look up their associated DPLL pins defined in
>>>> the DT or ACPI, which can then be passed to the DPLL subsystem to acquire
>>>> the pin object.
>>>>
>>>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>>>> ---
>>>>    drivers/dpll/dpll_core.c | 20 ++++++++++++++++++++
>>>>    include/linux/dpll.h     | 15 +++++++++++++++
>>>>    2 files changed, 35 insertions(+)
>>>>
>>>
>>> I don't see cells defined in your binding. Neither updated property.c.
>>
>> And if the cells are not required? I mean that dpll-names only specifies
>> array of phandles without parameters...
>>
>> e.g.
>> dpll-pin-names = "abc", "def";
>> dpll-pins = <&dpll_pin_abc>, <&dpll_pin_def>;
>>
>> Should '#dpll-pin-cells' be defined as constantly equal to 0?
> 
> I don't understand how can you guarantee for every possible future
> device to have always cells=0. If that's the case then indeed you do not
> need cells, but this needs explanation. You are designing now entire
> ABI, so you must design it fully, not just "works for me now".

Get it, you are right... Theoretically is possible that number of cells
will be > 0.

Will add '#dpll-pin-cells'

Thanks,
Ivan

