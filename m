Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2B27C9931
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Oct 2023 15:40:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FB1681E4D;
	Sun, 15 Oct 2023 13:40:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FB1681E4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697377234;
	bh=ZFmygP6Dz74Bcpy1E42ePE+6rEk41tMoVOEwoWoXu84=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vFAHtfQD6WECMzVxldGKNe1n9OGfIywPY4zMFcqH3LVtfSwS50/IXIazvqNMOdGvq
	 JU1zvrx02epraMJ9hEgH6cYSqE/tH/DHKdORA/ZuQ/Dwf/eIYau2vHtZTwgc7l1yBF
	 G4FPgT2AbYwxlx2GW3ZMDn0L0yh1ey0oFXdhMXNRJTj7n39eYFkHRTMuxmfVh0S9O7
	 c0gprpCVNZkGoGCarzXUBsAUg6b5fjwIR31Rlz6nJ5ogY+plMDtHPgPVlJlwtFlJCv
	 IBEC0M5DTb8QkvxDQgCmlPRs/PG6VP1HqItYxes18W/Zer7Unp6LUQTPqGcQDdLFdy
	 N8PtEJIGTjhQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h6xpK1CN6HBY; Sun, 15 Oct 2023 13:40:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D59D8146C;
	Sun, 15 Oct 2023 13:40:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D59D8146C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A231B1BF841
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 13:40:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8663081462
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 13:40:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8663081462
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VrBwsrZG3FdZ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Oct 2023 13:40:24 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B62D381440
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 13:40:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B62D381440
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 943DC60BB5;
 Sun, 15 Oct 2023 13:40:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3734EC433C8;
 Sun, 15 Oct 2023 13:40:23 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 1F6A5C595D0; Sun, 15 Oct 2023 13:40:23 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169737722312.30429.981395182996753709.git-patchwork-notify@kernel.org>
Date: Sun, 15 Oct 2023 13:40:23 +0000
References: <20231013170755.2367410-1-ivecera@redhat.com>
In-Reply-To: <20231013170755.2367410-1-ivecera@redhat.com>
To: Ivan Vecera <ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697377223;
 bh=6Mewa66v8BFCchHUq3fJshoDXWM7XvqrgL6LOYfNQ5A=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=D3XCGPD7hW8kYrTPpM3j/FV684hSxNCdzR68EEKgdmGKo4/IMY1NjVw0E5XeIRzTl
 nUNLyqFGY8ENnHfbYa5jCjY1D/DXwkUozUGcR2X1TaGM5wCUa51++tCcwilSORamAd
 kIrrGvpcTqa3fHR7p/g5r1mIM0g70897IMU+Ll6lqPFYPgqnX38RPrN7VRyNvOfrGJ
 myjVkiHGuUf4vBfvv8pBU49Q0Z9NujCptSHdaxLLOVTCTZRmjymdZndVP0q2fv9aYJ
 UOxLuGoJTm3zMGR3lU/5X1NgKho1V19gjGhue79drxXN9f0ZIYZOLIpolXljY1pady
 1jonfls8tmvFQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=D3XCGPD7
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] i40e: Add basic devlink
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Fri, 13 Oct 2023 19:07:50 +0200 you wrote:
> The series adds initial support for devlink to i40e driver.
> 
> Patch-set overview:
> Patch 1: Adds initial devlink support (devlink and port registration)
> Patch 2: Refactors and split i40e_nvm_version_str()
> Patch 3: Adds support for 'devlink dev info'
> Patch 4: Refactors existing helper function to read PBA ID
> Patch 5: Adds 'board.id' to 'devlink dev info' using PBA ID
> 
> [...]

Here is the summary with links:
  - [net-next,1/5] i40e: Add initial devlink support
    https://git.kernel.org/netdev/net-next/c/9e479d64dc58
  - [net-next,2/5] i40e: Split and refactor i40e_nvm_version_str()
    https://git.kernel.org/netdev/net-next/c/7aabde397683
  - [net-next,3/5] i40e: Add handler for devlink .info_get
    https://git.kernel.org/netdev/net-next/c/5a423552e0d9
  - [net-next,4/5] i40e: Refactor and rename i40e_read_pba_string()
    https://git.kernel.org/netdev/net-next/c/df19ea696644
  - [net-next,5/5] i40e: Add PBA as board id info to devlink .info_get
    https://git.kernel.org/netdev/net-next/c/3e02480d5e38

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
