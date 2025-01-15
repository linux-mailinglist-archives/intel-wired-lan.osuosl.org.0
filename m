Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45462A116B3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jan 2025 02:38:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B13683498;
	Wed, 15 Jan 2025 01:38:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G1VXcnGRmRFJ; Wed, 15 Jan 2025 01:38:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCEBC833FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736905091;
	bh=oMrwPrHB11ZmU30q1J/SkCs1rfOtawUvEBmybm7HHvY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H00p70XY7joWfhZjp3mXABA+bIZstd1B3x/La8RaDoh74lDooR/OV/VMPkmhFWJxJ
	 CO+WM1djOOtU4rIGN0+mHKrIQrcl8yfzgWXEhP79XG/3MsqYggrqxatgGzJ/LQwP8E
	 WkpURVk3SfCKnvVQakeNK+ucBJ14IjQMI8Mv14fmgzGAlrxAGilwyJLhT0DW3S/O5l
	 1vIkUpCTL0vynU69jSrqbeNvTTgtroCxBFfV3O0AY+mVC2dZ4tw+42Zaw2jGw14q2G
	 7j2OPs7+YE47wzFLFML/HVHc0flZ6W67CeSeAkCoKbahIP6AqXskQLDtjJyTJLg4+Y
	 Jv3UlMw8IjgoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCEBC833FB;
	Wed, 15 Jan 2025 01:38:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F5B994B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 01:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4FB8561002
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 01:38:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 47eU2QohGbSq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jan 2025 01:38:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AD0A760FF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD0A760FF9
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD0A760FF9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 01:38:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 97CAC5C5A8B;
 Wed, 15 Jan 2025 01:37:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59D4BC4CEDD;
 Wed, 15 Jan 2025 01:38:06 +0000 (UTC)
Date: Tue, 14 Jan 2025 17:38:05 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <horms@kernel.org>,
 <pabeni@redhat.com>, <davem@davemloft.net>, <michael.chan@broadcom.com>,
 <tariqt@nvidia.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <jdamato@fastly.com>, <shayd@nvidia.com>,
 <akpm@linux-foundation.org>, <shayagr@amazon.com>,
 <kalesh-anakkur.purayil@broadcom.com>, <pavan.chebbi@broadcom.com>,
 <yury.norov@gmail.com>, <darinzon@amazon.com>
Message-ID: <20250114173805.23d254a9@kernel.org>
In-Reply-To: <5e9659aa-d21f-4ee9-8c0a-1d9191bbeb8c@intel.com>
References: <20250113171042.158123-1-ahmed.zaki@intel.com>
 <20250113171042.158123-2-ahmed.zaki@intel.com>
 <20250114140813.5a7d527f@kernel.org>
 <5e9659aa-d21f-4ee9-8c0a-1d9191bbeb8c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736905087;
 bh=rXDyVzqRYD1yqsER5V/bGDwGrtFOZ+HbyXu3jgH1F+I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nJy1jSylS3VUDL7OObgc1tMwFpn/1zDSr3o/+/c/vTMupvPMKsS6grWaPsB2+UxzV
 w57b0ZhkF6q8/byuHtsIXxUFnlckdL/yKo7lEk3svNYaD+HnBSwZVjOTHZZ6S5u/ai
 DYpEZ8LdC4Xw/Dw92AYyJPbwEOg6GfhgSiZHa7S//9rx5FzcApyOj3mE/cptcQEJCb
 bKy0EwwGKRx+Vj2IF2D74gl41jeZnH2najGqxG0qI46G6PqOTMyNGqYtgzIHT68chN
 HydPC2jJ3cQJ3DMewiXT5ZVhdDxsu3Yc2LHzANlD911WSWuRMnaGp36lN12GOV6b90
 M/zjefGiW5YDg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=nJy1jSyl
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/6] net: move ARFS rmap
 management to core
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

On Tue, 14 Jan 2025 18:00:30 -0700 Ahmed Zaki wrote:
> > Similarly netif_napi_set_irq() may get called with -1 to clear
> > the IRQ number, which you currently treat at a real IRQ id, AFAICT.  
> 
> correct there is no handling for irq = -1. So netif_napi_set_irq() needs 
> to add the irq to the rmap only if it is > 0.
> 
> I need to clarify expectation of netif_napi_set_irq() because I only see 
> it called with irq = -1 in napi_add_weight. But you say it can be called 
> with irq = -1 to "clear" the IRQ.

I _think_ that's what Amritha had in mind. For queue <> NAPI linking
similarly we are expected to call the same helper with a NULL param.

> Does this mean that, if irq = -1, we need to "delete" the irq from rmap 
> if a valid irq already existed (which means this can happen as an 
> alternative to napi_del()/napi_diable())? or just skip adding irq to 
> rmap is enough?

I'm afraid we need both. Most drivers today simply never clear the IRQ,
they will just delete the NAPI and kfree() its memory. So we need to
"catch" NAPIs with IRQs assigned getting deleted and clean up the IRQ.

In the future some drivers may explicitly call the set with -1,
especially now that the IRQ has more implications than just getting
reported via netlink. We need to support that, too.

And for a good measure we should also throw in a warning if a driver
tries to set the IRQ but the IRQ is already set in the NAPI (not -1).
