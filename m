Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDFCCBE5BF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 15:44:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD71740A22;
	Mon, 15 Dec 2025 14:44:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KYV9Gfs5C1kL; Mon, 15 Dec 2025 14:44:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CFAD40A0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765809852;
	bh=C51q4VVZgq0ClKfKyE5EVxJ653wbsH0MQVaHCdcWFjc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y0+QQ2jXOirXfY0V58hsSNqIXwItGu0f/ZPhGsbtOY5WKGpi+IkW+Pdzy0pcmCwQZ
	 rrkarmGRQat7D17qqFsdfkVmxk51QU8pc/lJ47HDNX6IGkZJgXxoLiXDz7wdF/XN82
	 T4h5UMKT9ryppc9wXhJSYSLBVgIVFEQ0ORIH5yla/PFb3SOJb3+l9dETetk5a0ih/Q
	 sAoYc02B/MxK9huIcWXPGVdl2+XXXhsb7lNA6xrQSI+fWxqfu74Hg9B/mm2+86k2MZ
	 sW0TvcU/YYNexeienYX0wFpKqUi30KNGIo2u/dS8e7BKSS7pgf6pQq2/yuU3XyTKfN
	 6C3unaBH4naZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CFAD40A0D;
	Mon, 15 Dec 2025 14:44:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A7E30118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 14:44:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A0D48114E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 14:44:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BTjgZBI_AXN3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 14:44:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8ED3281112
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8ED3281112
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8ED3281112
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 14:44:08 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-308-jFvP-_CHPGu1Aag2bs8DpA-1; Mon,
 15 Dec 2025 09:44:05 -0500
X-MC-Unique: jFvP-_CHPGu1Aag2bs8DpA-1
X-Mimecast-MFC-AGG-ID: jFvP-_CHPGu1Aag2bs8DpA_1765809842
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id E844D18002ED; Mon, 15 Dec 2025 14:44:01 +0000 (UTC)
Received: from [10.45.224.214] (unknown [10.45.224.214])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id A244A180044F; Mon, 15 Dec 2025 14:43:53 +0000 (UTC)
Message-ID: <31e2a687-7e5d-40f2-ba5a-0c05db10e5ae@redhat.com>
Date: Mon, 15 Dec 2025 15:43:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-7-ivecera@redhat.com>
 <7204d8f7-6482-4217-998f-2788d55f4235@intel.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <7204d8f7-6482-4217-998f-2788d55f4235@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765809847;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=C51q4VVZgq0ClKfKyE5EVxJ653wbsH0MQVaHCdcWFjc=;
 b=Hysbowu4Rm2ufnqLIFdsIBurNP4UC1WVDZsB67gVv5VVQqR7QzhEYot9SmJM5HT2RSP/Tg
 cbSaRL33jyo6jVHB0G2vv+GghPXspAsBI/4x3g8Z9vQRE41lMyOpVaHUOXnWl+rNKkTJXF
 klWQzNg8I/VbnLT/vjyoxj3ixbD7/+Y=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Hysbowu4
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 06/13] dpll: Support
 dynamic pin index allocation
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
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/15/25 3:10 PM, Przemek Kitszel wrote:
> On 12/11/25 20:47, Ivan Vecera wrote:
>> Allow drivers to register DPLL pins without manually specifying a pin
>> index.
>>
>> Currently, drivers must provide a unique pin index when calling
>> dpll_pin_get(). This works well for hardware-mapped pins but creates
>> friction for drivers handling virtual pins or those without a strict
>> hardware indexing scheme.
> 
> wouldn't it be better to just switch everything to allocated IDs?
> 
No, this would break original dpll_pin_get() logic. If a caller use
dynamic pin index allocation then in practice means that a new pin
is allocated. But if I have a HW pin with specific index then I want
to get the same ref-counted dpll_pin pointer by dpll_pin_get().

Ivan

