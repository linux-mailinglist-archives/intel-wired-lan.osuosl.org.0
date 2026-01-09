Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C5BD0885E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 11:23:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4758C60DA8;
	Fri,  9 Jan 2026 10:23:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XBQzwgKJ5zxw; Fri,  9 Jan 2026 10:23:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5C5460849
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767954190;
	bh=PgTuGSJqZ1fMkiPNSGvIy/EFwwr4d2ZCO17UacaOjNc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ToAGGWKruDgX0lmmTpWCWinPYCTQaL6/Q7obiq1jU4olj/KiVV8ACvtBbl2erqCWf
	 tNCJj6tjOwsT32XOozuHW2KdXH1SKxdNd6k+u0b6L51VBdZ7M0Ow69se1kzbzgl11A
	 4rDViSJCydv2HTJzeYAUT19um2q0DJ6q/NdsThpOiKA30dDrhGPwq2za/BTGjwBhaQ
	 NSaF2+ZSIU9YMACFkcXmX7h1Ym4tBHMislGbsE1rrBh6wolV7OptPrJycK4aK89bLb
	 5jrwKyG8a5FE8s4E002YONKulVisfLI+N9K+x5BbuG+xBTtZswDx60v2+ZklnPsy7V
	 /a2YqjUrj/F4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5C5460849;
	Fri,  9 Jan 2026 10:23:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0AA90131
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 10:23:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F146E80B56
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 10:23:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BfevrTravt-U for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 10:23:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F0F0380D64
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0F0380D64
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0F0380D64
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 10:23:07 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-519-DfkO9NcCMtSPK9fQ5b93Rg-1; Fri,
 09 Jan 2026 05:23:00 -0500
X-MC-Unique: DfkO9NcCMtSPK9fQ5b93Rg-1
X-Mimecast-MFC-AGG-ID: DfkO9NcCMtSPK9fQ5b93Rg_1767954177
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 51BC01956096; Fri,  9 Jan 2026 10:22:56 +0000 (UTC)
Received: from [10.44.32.135] (unknown [10.44.32.135])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 793241956048; Fri,  9 Jan 2026 10:22:48 +0000 (UTC)
Message-ID: <25f49485-2228-4aa5-9023-0b00cc10a4da@redhat.com>
Date: Fri, 9 Jan 2026 11:22:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-4-ivecera@redhat.com>
 <20260109-cooperative-chinchilla-of-swiftness-aebbc8@quoll>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20260109-cooperative-chinchilla-of-swiftness-aebbc8@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1767954186;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PgTuGSJqZ1fMkiPNSGvIy/EFwwr4d2ZCO17UacaOjNc=;
 b=Kwte4IHnqdVVEc+N6hR5krAwXEU9/XET5L/eJPAgSbbjUZWGfjG361bFZD1V5KmaA0nO70
 LKZ1lFF3DhhFKTElSxylmFWPK9smeX1skyKW8VrrB3XTCmqjAoQvbs/rrhskoCNLwKzSkp
 gYnbnoWmLM/T1xxevSjWTW+Xx4WTws0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Kwte4IHn
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



On 1/9/26 10:55 AM, Krzysztof Kozlowski wrote:
> On Thu, Jan 08, 2026 at 07:23:09PM +0100, Ivan Vecera wrote:
>> Add helper functions to the DPLL core to retrieve a DPLL pin's firmware
>> node handle based on the "dpll-pins" and "dpll-pin-names" properties.
>>
>> * `fwnode_dpll_pin_node_get()`: matches the given name against the
>>    "dpll-pin-names" property to find the correct index, then retrieves
>>    the reference from "dpll-pins".
>> * `device_dpll_pin_node_get()`: a wrapper around the fwnode helper for
>>    convenience when using a `struct device`.
>>
>> These helpers simplify the process for consumer drivers (such as Ethernet
>> controllers or PHYs) to look up their associated DPLL pins defined in
>> the DT or ACPI, which can then be passed to the DPLL subsystem to acquire
>> the pin object.
>>
>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>> ---
>>   drivers/dpll/dpll_core.c | 20 ++++++++++++++++++++
>>   include/linux/dpll.h     | 15 +++++++++++++++
>>   2 files changed, 35 insertions(+)
>>
> 
> I don't see cells defined in your binding. Neither updated property.c.
> 
WDYM by property.c ?

Thanks,
Ivan

