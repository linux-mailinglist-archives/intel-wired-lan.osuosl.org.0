Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69156410B49
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Sep 2021 13:30:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E258C4052B;
	Sun, 19 Sep 2021 11:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tB0XszO2_8JV; Sun, 19 Sep 2021 11:30:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE0DF40556;
	Sun, 19 Sep 2021 11:30:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B6C731BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Sep 2021 11:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A238E606C6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Sep 2021 11:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oOSC9taZVNks for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Sep 2021 11:30:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 09D5A60608
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Sep 2021 11:30:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 98D7F611F0;
 Sun, 19 Sep 2021 11:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632051006;
 bh=MlXpQUWLkNfs41pyUoRnk+tFkqoxCIDDWLqIFCksVOI=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=L5YAlNchkYqzijioYxXrlMGAqW3jET+M6korpU4gw6kUXYg2nXriP2L97aysWYNl8
 9w80RtugCyCNQ1mRIzh3rC0hCNN9Ul6Fy4B4u0/OLp4b12E99k1PiTxCLvRs46XIXV
 CdfiMhygNY+yh5kOkP/mPqk5TCv78Fq8cmaMbWOT6ioC7dHBWebqAUgrbFB7wCfZ7Y
 lNoNbR2Q5DhuLEZR3jH8jRucjYny3IXK4ESJ6DUA2hCnKCyJ1ESugR/UdwEmbpvzRA
 gsGsLxXYWHwRSz+xBSWs8Kv00M195BK5uaCDxHGjWwEhn1nh/RMTT1iG14G5/TNN+J
 8+K6/dtj25ixw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 8C21D60A37;
 Sun, 19 Sep 2021 11:30:06 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163205100656.18169.172670291108556041.git-patchwork-notify@kernel.org>
Date: Sun, 19 Sep 2021 11:30:06 +0000
References: <20210917210547.12578-1-rdunlap@infradead.org>
In-Reply-To: <20210917210547.12578-1-rdunlap@infradead.org>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [Intel-wired-lan] [PATCH -net] igc: fix build errors for PTP
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
Cc: netdev@vger.kernel.org, jeffrey.t.kirsher@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (refs/heads/master):

On Fri, 17 Sep 2021 14:05:47 -0700 you wrote:
> When IGC=y and PTP_1588_CLOCK=m, the ptp_*() interface family is
> not available to the igc driver. Make this driver depend on
> PTP_1588_CLOCK_OPTIONAL so that it will build without errors.
> 
> Various igc commits have used ptp_*() functions without checking
> that PTP_1588_CLOCK is enabled. Fix all of these here.
> 
> [...]

Here is the summary with links:
  - [-net] igc: fix build errors for PTP
    https://git.kernel.org/netdev/net/c/87758511075e

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
