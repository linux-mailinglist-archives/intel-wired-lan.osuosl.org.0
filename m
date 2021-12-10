Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3833647056D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 17:17:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A7186853CD;
	Fri, 10 Dec 2021 16:17:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mb8Lhg0VDiEJ; Fri, 10 Dec 2021 16:17:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B348E853CC;
	Fri, 10 Dec 2021 16:17:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3B731BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 16:17:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D088F6148F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 16:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uWNunDkhX81A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 16:17:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D36961480
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 16:17:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 29E4EB828DB;
 Fri, 10 Dec 2021 16:16:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DEADC00446;
 Fri, 10 Dec 2021 16:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639153015;
 bh=3ifJrSFjNhly+TY2+b6L86AuUb/oef45UACm9ExPytk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hi78EGlVGdyLvNLR0hbzVr0GKRJWWcmA9R2nonRI7O2dCpOwjXmjAjtk4NNY5woVE
 Kel8PeqN5d+7iaJOB6aZXoZgEeSv/U0ScV4VU2X6W0PZq6UWdeDWZ2tvBiy5yvtxNG
 ldC9dx/ZpqE2WTSGycY9bxhpLV5/DHD52pCCTQiwCtmAThLndj+lkbYwXaLCEXFuqC
 NWDsjL2Qi6sKUgarJWHiRASkE172hze5EJqJZnrvDmMPyDVUE/wlNv1K/7XcI4RvS7
 0jRxRFjld06t27TL+8J9SZ5kojYJfHL9/WkxHhIJscx2hZENMijLDOqeg/d7+MFO5q
 5oR84vEJkQKeA==
Date: Fri, 10 Dec 2021 08:16:54 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <20211210081654.233a41b6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211210134550.1195182-1-maciej.machnikowski@intel.com>
References: <20211210134550.1195182-1-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 0/4] Add ethtool interface
 for RClocks
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: mkubecek@suse.cz, petrm@nvidia.com, abyagowi@fb.com, saeed@kernel.org,
 netdev@vger.kernel.org, richardcochran@gmail.com,
 Vadim Fedorenko <vfedorenko@novek.ru>, idosch@idosch.org,
 linux-kselftest@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 michael.chan@broadcom.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 10 Dec 2021 14:45:46 +0100 Maciej Machnikowski wrote:
> Synchronous Ethernet networks use a physical layer clock to syntonize
> the frequency across different network elements.
> 
> Basic SyncE node defined in the ITU-T G.8264 consist of an Ethernet
> Equipment Clock (EEC) and have the ability to synchronize to reference
> frequency sources.
> 
> This patch series is a prerequisite for EEC object and adds ability
> to enable recovered clocks in the physical layer of the netdev object.
> Recovered clocks can be used as one of the reference signal by the EEC.
> 
> Further work is required to add the DPLL subsystem, link it to the
> netdev object and create API to read the EEC DPLL state.

You missed CCing Vadim. I guess Ccing the right people may be right up
there with naming things as the hardest things in SW development..

Anyway, Vadim - do you have an ETA on the first chunk of the PLL work?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
