Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB47F944DB8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 16:13:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EDFA606F0;
	Thu,  1 Aug 2024 14:13:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JI6GspnoeuIB; Thu,  1 Aug 2024 14:13:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 896A260682
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722521616;
	bh=AVMTm7VKcieAT1WFKCrLRQwPvyOmL+pnSuOHGhrytn4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rCCJ+/vIecohFihZ7LZrfkg/75YcEzfID6ZnB+q9TjnZ1Kb/A4IiIzP3mG5eOldSV
	 bPla1k3VKn9Vr4ExhK70X+8L970FxevEwXKMXlvgVir0yb8d82VNNAhs7kWg11JIaD
	 b10nK4HlPXj5iXTZ+0AM4rdYHps8vVdd24qewgALogj7soYwLkhG9yUZ9xwH64Vj/0
	 nZSUCGQAPxNLW+uGd7QGrtj0UjV8Rh2+1sQtiYBwmXlaaI1PtZs9TkV8rPT266AcQV
	 MAvei+8XaTf8DO+bbvhIgj4n2O5GpafqqgoZD/FgPhQxLChBZz3R0PlPgXrRWnJt1K
	 QVXDyRWxRov6Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 896A260682;
	Thu,  1 Aug 2024 14:13:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 816301BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 14:13:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6DA7440294
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 14:13:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tDm5lTMfu2Wa for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 14:13:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AA7044011C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA7044011C
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA7044011C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 14:13:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E844D62502;
 Thu,  1 Aug 2024 14:13:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B2E6C32786;
 Thu,  1 Aug 2024 14:13:32 +0000 (UTC)
Date: Thu, 1 Aug 2024 07:13:31 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240801071331.086a0864@kernel.org>
In-Reply-To: <616bd069-51a0-4b05-96af-2d419961e0e5@intel.com>
References: <20240730105121.78985-1-wojciech.drewek@intel.com>
 <20240730065835.191bd1de@kernel.org>
 <c0213cae-5e63-4fd7-81e7-37803806bde4@intel.com>
 <20240731164716.63f3b5b7@kernel.org>
 <616bd069-51a0-4b05-96af-2d419961e0e5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722521612;
 bh=Eq/aNHDxaOY+V8tE16TNUHJ1VjAhDc5Cbsz9tdj07LI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EFgG1SCivUy5ObYkMX4OJCtMA+1JmXglJyJodcsoZq2KDbr+TZfWPqOD0rCDu5gbu
 KjrZkrUJtIdpPIyBpbnzi/HYbT2gFy14S28F2E/JMJpH34ZZLtIqB5+DyvBvxoHVC4
 m90a9fk7qNH8gOJV0zU2ynsLuHELTJVd9dCtrxg5ZEIkxiVjMyKhSfxLRXPQViQfxT
 tFk03E8lpWN3EckbB2KBeoxhYvr2ztpDwTXlVI+cleUFbEXohNjnaV9DTgxWaUH+w4
 VfmM7bx6gwWeYa4E2D228l7PR3/GaIe7d6ufEU0/uEHUSR/y4P7P/NbxhRHzlwdQBX
 2IWD2MJtKsaqQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=EFgG1SCi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Implement ethtool reset
 support
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 1 Aug 2024 13:01:52 +0200 Wojciech Drewek wrote:
> We've came up with below mapping:
> 
> PF reset:
> ethtool --reset eth0 irq dma filter offload
> (we reset all those components but only for the given PF)
> 
> CORE reset:
> ethtool --reset eth0 irq-shared dma-shared filter-shared offload-shared ram-shared
> (whole adapter is affected so we use shared versions + ram)
> 
> GLOBAL reset:
> ethtool --reset eth0 irq-shared dma-shared filter-shared offload-shared mac-shared phy-shared ram-shared
> (GLOBALR is CORER plus mac and phy components are also reinitialized)

SG!
