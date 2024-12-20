Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4609F97C8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2024 18:24:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 930CD41147;
	Fri, 20 Dec 2024 17:24:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i9tUpNK-XI60; Fri, 20 Dec 2024 17:24:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B716C411A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734715442;
	bh=awsQ/gNYz1QtesuPL69Uj9xf6MovyTW2G/UtONLIztk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pGW8DM3jSuh6g4lurbC50jhIilG9enC1cW3aRbOJtZvHfwMrTrXPa2JhuNCGn6Bm5
	 fDBzHM059sl4vgt/d2ii2m2Sy6ceOm9jkuPvAn3UhdeQ9jjKv4PFjfu6585bDVqFa4
	 wAHgulnZ9Q3qv8ugl97UT7UQFA2egeAIKWA+umO7430Pi6eFufsFAq7z/ab/VBMCzz
	 /+Bkf+a5zGozEE2CzrUCHfNyHC+t+y0hAyU7etsu5wbH/ygFZkWhorKz1WuCl47qJv
	 cDqc7HOkV7V03vLoanGgpCDueJkTAFuQXcIneGDhqKqjPlkJAdSLaIsGaz4x6hbQeC
	 sbmSuaBFWOuaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B716C411A7;
	Fri, 20 Dec 2024 17:24:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6632B920
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 17:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4681B83BB9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 17:24:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pp4RppOIyiAe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2024 17:23:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 979A283BCD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 979A283BCD
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 979A283BCD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 17:23:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 96F34A40486;
 Fri, 20 Dec 2024 17:22:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49EBAC4CECD;
 Fri, 20 Dec 2024 17:23:57 +0000 (UTC)
Date: Fri, 20 Dec 2024 09:23:56 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <pabeni@redhat.com>,
 <davem@davemloft.net>, <michael.chan@broadcom.com>, <tariqt@nvidia.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <jdamato@fastly.com>, <shayd@nvidia.com>, <akpm@linux-foundation.org>
Message-ID: <20241220092356.69c9aa1e@kernel.org>
In-Reply-To: <cf836232-ef2b-40c8-b9e5-4f0dffdcc839@intel.com>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
 <20241218165843.744647-5-ahmed.zaki@intel.com>
 <20241219194237.31822cba@kernel.org>
 <cf836232-ef2b-40c8-b9e5-4f0dffdcc839@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1734715437;
 bh=y87VLdF5d2f4POgxkE6UMOkUIbV8zOdiEIsbrBIDqt8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KfORZ6fi8IYAwyWtbtHd8LiOE50f04K6XjDeWVvCaHMcL+k+y/5xq65UIi9jlPSoq
 a/aEhq+ECtQF7yI/NbwZtOlYW/JePiBZdRgfJzPYrO8P9pKnF7ZKjKwOQBqoY4tR0K
 koD3HF9fqAsS7uvDIBrbaFQr6zCGIBG1lL3rEBpEGJnqADPkciA/CdXs/YgGw8QDvO
 WCuBhaqpJOz/3FasBXgSF6jTYNqf8s7E25njMGGWtp7MpOTxXX+VG89vt2gEW9lfYr
 g3UbMLnzsXT69XmAuT1f47Lh1YvW2ICWs47C74IJMhmqCU5ewfzuU+zPYzAY/BmBb/
 sNuMJl9Q3+YfA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KfORZ6fi
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

On Fri, 20 Dec 2024 07:51:09 -0700 Ahmed Zaki wrote:
> On 2024-12-19 8:42 p.m., Jakub Kicinski wrote:
> > On Wed, 18 Dec 2024 09:58:39 -0700 Ahmed Zaki wrote:  
> >> +	if (!glue_created && flags & NAPIF_IRQ_AFFINITY) {
> >> +		glue = kzalloc(sizeof(*glue), GFP_KERNEL);
> >> +		if (!glue)
> >> +			return;
> >> +		glue->notify.notify = netif_irq_cpu_rmap_notify;
> >> +		glue->notify.release = netif_napi_affinity_release;
> >> +		glue->data = napi;
> >> +		glue->rmap = NULL;
> >> +		napi->irq_flags |= NAPIF_IRQ_NORMAP;  
> > 
> > Why allocate the glue? is it not possible to add the fields:
> > 
> > 	struct irq_affinity_notify notify;
> > 	u16 index;
> > 
> > to struct napi_struct ?  
> 
> In the first branch of "if", the cb function netif_irq_cpu_rmap_notify() 
> is also passed to irq_cpu_rmap_add() where the irq notifier is embedded 
> in "struct irq_glue".

I don't understand what you're trying to say, could you rephrase?

> I think this cannot be changed as long as some drivers are directly 
> calling irq_cpu_rmap_add() instead of the proposed API.

Drivers which are not converted shouldn't matter if we have our own
notifier and call cpu_rmap_update() directly, no?

Drivers which are converted should not call irq_cpu_rmap_add().
