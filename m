Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FBE9F9A99
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2024 20:37:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C65106064D;
	Fri, 20 Dec 2024 19:37:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3dKpFXTChu4n; Fri, 20 Dec 2024 19:37:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A6FA606F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734723438;
	bh=DxCgbcxG9iiemGr+83BLVgwHNm1vd+LlGc4jTU3X3RM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HUpoub9WSZ4Zdy33SNdYs1TGVp8LYO5SktNv5VaFoy3WCJCC83/0AUQAtLzBt2/os
	 h9frYHGzmqSbcv46CHNWEAY+F975K3Z8wU02E4yFgdQn5EnnVGq+4AzzX+VmY4Tusm
	 DY+xYEM4yXTsCqlsVwJ4iH19o9VLuout7n6g1T33kI3hedCwVhyLZ7NvnQfmp02ZNs
	 ky7vkVO1DaQ0RDhuaopFPwl7mjmxmd7hyAZF6oxgvzBcldH8L7iGTONh5DvsCcGac0
	 19TXfNGXi2afHwdmLTiVNwF1hHUzD2/K8DxHdaz807TkdkL6roO4wIrQ0rWW8RKnvg
	 DnIAQ1D3Mtimw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A6FA606F8;
	Fri, 20 Dec 2024 19:37:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 90152730
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 19:37:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7053F40119
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 19:37:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NKWofCgDeilh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2024 19:37:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 835EA400EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 835EA400EA
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 835EA400EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 19:37:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6CA265C694A;
 Fri, 20 Dec 2024 19:36:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A37EAC4CED4;
 Fri, 20 Dec 2024 19:37:12 +0000 (UTC)
Date: Fri, 20 Dec 2024 11:37:11 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <pabeni@redhat.com>,
 <davem@davemloft.net>, <michael.chan@broadcom.com>, <tariqt@nvidia.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <jdamato@fastly.com>, <shayd@nvidia.com>, <akpm@linux-foundation.org>
Message-ID: <20241220113711.5b09140b@kernel.org>
In-Reply-To: <35441a41-d543-4e7b-b0dc-537062d32c9c@intel.com>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
 <20241218165843.744647-5-ahmed.zaki@intel.com>
 <20241219194237.31822cba@kernel.org>
 <cf836232-ef2b-40c8-b9e5-4f0dffdcc839@intel.com>
 <20241220092356.69c9aa1e@kernel.org>
 <35441a41-d543-4e7b-b0dc-537062d32c9c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1734723433;
 bh=TxNjdNBPDUPVWyiLgYG3IUbsLDUHysJGXU6IvUYBqfs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SPxXkZoXUAsFtT61toQ1KGeUeopbO9yXrucq73cl0zPU+stXjVI9tkdWJH/mEpA5X
 huOp48KKEGHc53ze02VUA3hyY+ScjAd0SMKKH8PIvsIdwQtMmC8sR0EZ5sure4oeoc
 QmS0QbTagaZD2YCYDmhIwMgbyphG7oNg4MDVcshEuTCGZyohyPGQnxi+GmIG+IhkyW
 q5O+jdWczFcu7WHF+4f1om2zIjJblE19Pb0JklraseJ4UHPSk4aXVo2vs70lxEoyiD
 M75iuM44cMtM9R1KzfYU+Wu2sR59tu+aw63TaKoLfZPDFhSuR8fs+eGnhChUmyuI38
 gByTcGED5wB0w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SPxXkZoX
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/8] net: napi: add CPU
 affinity to napi->config
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

On Fri, 20 Dec 2024 12:15:33 -0700 Ahmed Zaki wrote:
> > I don't understand what you're trying to say, could you rephrase?  
> 
> Sure. After this patch, we have (simplified):
> 
> void netif_napi_set_irq(struct napi_struct *napi, int irq, unsigned long 
> flags)
>   {
> 	struct irq_glue *glue = NULL;
>   	int  rc;
> 
>   	napi->irq = irq;
> 
>   #ifdef CONFIG_RFS_ACCEL
>   	if (napi->dev->rx_cpu_rmap && flags & NAPIF_IRQ_ARFS_RMAP) {
> 		rc = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq, napi,
> 				      netif_irq_cpu_rmap_notify);
> 		.
> 		.
> 		.
>   	}
>   #endif
> 
> 	if (flags & NAPIF_IRQ_AFFINITY) {
> 		glue = kzalloc(sizeof(*glue), GFP_KERNEL);
> 		if (!glue)
> 			return;
> 		glue->notify.notify = netif_irq_cpu_rmap_notify;
> 		glue->notify.release = netif_napi_affinity_release;
> 		.
> 		.
> 	}
>   }
> 
> 
> Both branches assign the new cb function "netif_irq_cpu_rmap_notify()" 
> as the new IRQ notifier, but the first branch calls irq_cpu_rmap_add() 
> where the notifier is embedded in "struct irq_glue". So the cb function 
> needs to assume the notifier is inside irq_glue, so the second "if" 
> branch needs to do the same.

First off, I'm still a bit confused why you think the flags should be
per NAPI call and not set at init time, once.
Perhaps rename netif_enable_cpu_rmap() suggested earlier to something
more generic (netif_enable_irq_tracking()?) and pass the flags there?
Or is there a driver which wants to vary the flags per NAPI instance?

Then you can probably register a single unified handler, and inside
that handler check if the device wanted to have rmap or just affinity?
