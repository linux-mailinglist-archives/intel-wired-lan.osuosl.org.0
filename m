Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6626055A74E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jun 2022 07:40:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86A3660777;
	Sat, 25 Jun 2022 05:40:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86A3660777
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656135626;
	bh=MJMDEyGQ7L+O3DHEV7Ojc1xcTQwHUJEt7a3OojbpZ4Y=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=egA0wHZaHKvFQk5ipHR0FVI+dBXqDjCZoX4UGM+DCJM0cGgEFA0aDxODJ2fEHoZNr
	 9j6XzfgBlZbPVukO5LYTeZVLF+Rlr7LfrgyS2MKtakAAK106PcQk4fuq60oU6yBZXP
	 MKRXzEy9yBwsb4iEGQ8i1zYU3rfdMI+rOhc/VYL6BhJbULK/K16ZLIgO531k5EXPOl
	 ZsywaD84LZDwZV29I/fQNFPBimlkvaxFfRTE5mzgmNGO9OYSOVqmV1aV2njME2RzDx
	 MmkcIwHJBFHGOAg83I7CUL+HMSx81yNTBEKc7YVcjNSyfKvv6bGrcE4fakJX8eD4kG
	 U9dPibb52dAeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sdnA66N0Y8h1; Sat, 25 Jun 2022 05:40:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 889A560640;
	Sat, 25 Jun 2022 05:40:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 889A560640
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1429F1BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 05:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E190783E9E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 05:40:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E190783E9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iFyTtqnXSUaW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Jun 2022 05:40:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A82FE83E81
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A82FE83E81
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 05:40:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 65CECB8216B;
 Sat, 25 Jun 2022 05:40:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 442B5C341CA;
 Sat, 25 Jun 2022 05:40:14 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 2A68CE8DBCB; Sat, 25 Jun 2022 05:40:14 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <165613561417.1389.16592018504137661188.git-patchwork-notify@kernel.org>
Date: Sat, 25 Jun 2022 05:40:14 +0000
References: <20220623100852.7867-1-ciara.loftus@intel.com>
In-Reply-To: <20220623100852.7867-1-ciara.loftus@intel.com>
To: Ciara Loftus <ciara.loftus@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1656135614;
 bh=BPY0rZoFapSHi7kmQIicnZbqOZa2v+cLm7nKfFmg0KA=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=KpVTnOutCeyKOKAS+p87m2B1mXRsC0zatrhYCJ+CrCVohgw7HAuhUcdvnX+MBityy
 ZQvc6jlS2dUGOZGR+yh96JOG93pVQyciSfE1ISuh0cBfOV0QoUJrUFEhmEYCOCgwOr
 ap2XCM7zNJdq++XXai5BJDoRpA9unQQhwNyV+DPCEiNoXoUQy7SSc9OrKkKiWBt3IY
 /q3hkOlntm68zDytcERnh+jFBnRzXEmqqyHR+BuxJdue4drKmoOOX8pmqa2sLhISEk
 /Y5XdV6E+mpp3d9IklKcTs4yWCD2fTKfqhE7/LVyfYJXLikgdJbgRYExJpOBGsCVPq
 cAHNcwbcl6A6w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KpVTnOut
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] i40e: read the XDP
 program once per NAPI
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Thu, 23 Jun 2022 10:08:52 +0000 you wrote:
> Similar to how it's done in the ice driver since 'eb087cd82864 ("ice:
> propagate xdp_ring onto rx_ring")', read the XDP program once per NAPI
> instead of once per descriptor cleaned. I measured an improvement in
> throughput of 2% for the AF_XDP xdpsock l2fwd benchmark for zero copy mode
> and 1% for copy mode.
> 
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
> 
> [...]

Here is the summary with links:
  - [net-next,v2] i40e: read the XDP program once per NAPI
    https://git.kernel.org/netdev/net-next/c/78f319315764

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
