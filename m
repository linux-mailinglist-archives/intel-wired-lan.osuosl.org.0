Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA12A1755E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jan 2025 02:04:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 375C784789;
	Tue, 21 Jan 2025 01:04:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BmScA01YEXqJ; Tue, 21 Jan 2025 01:04:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 775B784782
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737421444;
	bh=LhGQV8AN1Be4MujE24duwViFj8EPrtc4F4O+Fb2Qa6I=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HGP69z+IeiDBgBhsKsZomUhwYbFpN5wX12BT9Zmg+JV9qVI8vDXWphaNaYy8UTnvb
	 mIS26IVSxSfeOX/Vb50P9YNSfqRAtfTHrZ0WAST+7k2xsMdQw39RJQASmWfp2u7ewP
	 JgciiCrXO9hkkZEIdLWdH71c+z++cU7VZ/JujZtV9Lj55habTryX2gnzFBQHw3MHoR
	 +UqzIZj6XA+LWEozrA4ENPdxN2u6DbLVRHc4+QZB+hSgANpvUp9iFkGXSrcKTWgJKo
	 gLtk8oD1B/wIEbGU3T/AyWpBX+Muew87J/lfM7ZCoooQO0x9R/WSkB9oOu0xVTQ02a
	 qOyA9SObZY7vQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 775B784782;
	Tue, 21 Jan 2025 01:04:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CD7D7959
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 01:04:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B9C7841319
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 01:04:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tk-J2xH3zPR0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jan 2025 01:04:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D55C24053E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D55C24053E
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D55C24053E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 01:04:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 3963AA40A92;
 Tue, 21 Jan 2025 01:02:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD6C7C4CEDD;
 Tue, 21 Jan 2025 01:03:59 +0000 (UTC)
Date: Mon, 20 Jan 2025 17:03:58 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
Message-ID: <20250120170358.3f4181a6@kernel.org>
In-Reply-To: <20250118003335.155379-1-ahmed.zaki@intel.com>
References: <20250118003335.155379-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1737421440;
 bh=IxT6jvxwyfp01I4TqtJpSK9pSaUrBSVjbvnvsdaXqH4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=h12ZZFyLaB/vxc8n+HqYKXOuyLUpjjPWe1US/j7MQwTrgLpqR8sMc8rA/mP0qXgg6
 hfD1dDVviiomAfu9gp89tnKOhOOuA0wvxeJiF6yZ6TP0qdxiV0hofYN+cUxU4DWPIt
 M27f7+Sm+EQsB3pDCHtIw79oqFlMyS6Zy8baW2CtG+AYv7rtPC4EbQe3xvy4RlawZh
 OQ6GUkoag5YZrfcdEUY97j4K2B1we/efT0a+xqcAlQ279TZJorEPjW15pP4p+T77Js
 TMpfdejfqFZGTBt0VESnK35cTIcM0/0wUGCL4mUYvpDDrNkBIH2mQMZudyVtlIZrnI
 5gCeaTT+Dcy8w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=h12ZZFyL
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/5] net: napi: add CPU
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

On Fri, 17 Jan 2025 17:33:30 -0700 Ahmed Zaki wrote:
> Drivers usually need to re-apply the user-set IRQ affinity to their IRQs
> after reset. However, since there can be only one IRQ affinity notifier
> for each IRQ, registering IRQ notifiers conflicts with the ARFS rmap
> management in the core (which also registers separate IRQ affinity
> notifiers).   
> 
> Move the IRQ affinity management to the napi struct. This way we can have
> a unified IRQ notifier to re-apply the user-set affinity and also manage
> the ARFS rmaps. Patches 1 and 2 move the ARFS rmap management to CORE.
> Patch 3 adds the IRQ affinity mask to napi_config and re-applies the mask
> after reset. Patches 4-6 use the new API for bnxt, ice and idpf drivers.

Sorry for not-super-in-depth reviews, the patches didn't apply for me :(
But feels like we are pretty close.
-- 
pw-bot: cr
