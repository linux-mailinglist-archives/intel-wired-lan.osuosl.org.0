Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6F0D142DF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 17:52:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 171648126A;
	Mon, 12 Jan 2026 16:52:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PECkr8MROnt5; Mon, 12 Jan 2026 16:52:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93AFC81276
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768236773;
	bh=wNUxirVuC6Amib0RnMLuE2BYHWTtcIWHH53MESKRWvY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j8XHk0mThxjUrnHNWqI8YVy5jz9f2SxTy/DYWD/H9ffasPEFdeUywlXqbjw1EPaL9
	 q7yzQEgs+h/akvyX1dkquBZgOwrPzVh9EJRVxsyXGdxGYlB7S7t7Z1/8ZW3PATPXFj
	 VxjWNFXGw8wwbzXe8g86Kv+jaI76yL43FXtfKOniPf5zfGyHOHgUfmbXJMkeGgIwtW
	 EEnV26Qlw2xgiNnAzB245YbzUQlFvdZKCBYRn8AJEUTUEmW7sn/ehIZjoONoWBaKzQ
	 O8BEISm2f4yiuVYHu1iAeU02df38hXuouw2Lb1zIuNdNiKGziSLYX3a0ImQBfaK9i+
	 7jdwEkkxeVBiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93AFC81276;
	Mon, 12 Jan 2026 16:52:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2529618D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:52:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B7D6404AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:52:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zq5T3ODNkwQI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 16:52:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EC5F84013F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC5F84013F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC5F84013F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:52:50 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-248-hepfzZdONg65ms3TNDv15w-1; Mon,
 12 Jan 2026 11:52:46 -0500
X-MC-Unique: hepfzZdONg65ms3TNDv15w-1
X-Mimecast-MFC-AGG-ID: hepfzZdONg65ms3TNDv15w_1768236763
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id A42DF19560B2; Mon, 12 Jan 2026 16:52:42 +0000 (UTC)
Received: from [10.44.34.128] (unknown [10.44.34.128])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 4323819560B2; Mon, 12 Jan 2026 16:52:35 +0000 (UTC)
Message-ID: <323241f0-9d70-4b4a-b32b-b14d0efc037b@redhat.com>
Date: Mon, 12 Jan 2026 17:52:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-4-ivecera@redhat.com>
 <20260109-cooperative-chinchilla-of-swiftness-aebbc8@quoll>
 <25f49485-2228-4aa5-9023-0b00cc10a4da@redhat.com>
 <22bdda82-9ebf-4381-a7d4-edbf97408a5f@kernel.org>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <22bdda82-9ebf-4381-a7d4-edbf97408a5f@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768236769;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wNUxirVuC6Amib0RnMLuE2BYHWTtcIWHH53MESKRWvY=;
 b=YU4+izdB/Fnw9/ML3E2Du2x1i4LKWQld9xvbJtE5KkyV2lcAZM0amc8Lniv1nQ4wBJqM32
 Wx3uhn9lr8SQjY15td8/mgFIKdOpD4VSUO1XOBYiK6+eo1w7LCXJrgAWPQ6tmRchGyA5VU
 +CuwqkLBMh86li9hxKpsHNYp0DqD8rM=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=YU4+izdB
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

On 1/12/26 5:16 PM, Krzysztof Kozlowski wrote:
> On 09/01/2026 11:22, Ivan Vecera wrote:
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
>>>
>> WDYM by property.c ?
> 
> Each standardized phandle reliationship is supposed to be reflected with
> device links (at least of now... maybe it already changed after this LPC?)

Do you mean 'supplier_bindings' in drivers/of/property.c ?

Thanks,
Ivan

