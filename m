Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 004DA901191
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2024 14:58:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9DE582160;
	Sat,  8 Jun 2024 12:58:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kncnbrj3zMAV; Sat,  8 Jun 2024 12:58:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E896782101
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717851527;
	bh=jNShOBjMbhVtAoTaAKJUeTI6hmIllCwWfoQjeNjpFn0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MqqHqQqq75UuufN9laKHsjInpao4byd3I/gbZJ7n5DPiRnVjLTPRIM0lVNAD7fdrX
	 a2fV+N3Ak5W42iBVlf+egmAOpCQxa9bwHyBup4iSBcEshnyDNGDLEej31WC6pkUeJX
	 kTwjJETypHunYbaVfhzwT0XT2/LiKv5RVSw/cnRZLxs1lvAB38PYWxsQHGueMCwz8s
	 2RU2ztktzvg7UFdON+yE7XywSs7n7l3NLFVsmNTMgFBTm2NsmQ9aaxHziMeLg0Bg+A
	 CUnHWQ4BWIfmP5VOr/BpyZG3F1QAQ0Hpkx+xvgR+3EvwGU1aQopQM9YuZyzG+QBasd
	 Y9zj1AFnZSQdA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E896782101;
	Sat,  8 Jun 2024 12:58:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B68A1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:58:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4561440538
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:58:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4NGG-HKX8OuM for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jun 2024 12:58:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 77AB7404C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77AB7404C6
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 77AB7404C6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:58:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BF9AF61243;
 Sat,  8 Jun 2024 12:58:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB4F6C2BD11;
 Sat,  8 Jun 2024 12:58:41 +0000 (UTC)
Date: Sat, 8 Jun 2024 13:58:39 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240608125839.GY27689@kernel.org>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-7-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604131400.13655-7-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717851523;
 bh=8h7iVKPU4zLmsDfT69C7Raz8WD0w2TDfKWzcdLn9Pq4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c4LzFsPpACQdCLgYrKa/nQLxExi29Xw9BKOrw/kBHsU4tqXKRcbLw21z9hxdZXypg
 FURcNTxtkGtj/pQ1Bynrv9zk5VXIrhxuNewDbmq6VcLfhxC9NykqQlIe3N464/HXCC
 dnCnp8Fny7xqg8undiagjsssgUSaJPtTIXPs/JYlOXM2dTCi8Z2V4p2lWQlQuUyJ6X
 b1ubb15dr/LxJUrK2PeubsEWDiDcbk2JaBHrDnJ8ajlvUR+f7LyJMfW8776Ae1ksal
 /mOl5Dw8LDBx4TOJ0tvEBu9OCidsF+w12izpWBRArrbadrfETTuFj9ud2KzVyH/Yxd
 /3EiYuveFmSEQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=c4LzFsPp
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 06/12] iavf: add initial
 framework for registering PTP clock
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Ahmed Zaki <ahmed.zaki@intel.com>, Sai Krishna <saikrishnag@marvell.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 04, 2024 at 09:13:54AM -0400, Mateusz Polchlopek wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add the iavf_ptp.c file and fill it in with a skeleton framework to
> allow registering the PTP clock device.
> Add implementation of helper functions to check if a PTP capability
> is supported and handle change in PTP capabilities.
> Enabling virtual clock would be possible, though it would probably
> perform poorly due to the lack of direct time access.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Sai Krishna <saikrishnag@marvell.com>
> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

