Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD752417561
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Sep 2021 15:20:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9CB7A402B6;
	Fri, 24 Sep 2021 13:20:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HFCVmAqm2Niu; Fri, 24 Sep 2021 13:20:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 789A4402B3;
	Fri, 24 Sep 2021 13:20:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A03811BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 13:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8E424606DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 13:20:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a4cALRHzhiNk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Sep 2021 13:20:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED990606C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 13:20:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 970716124F;
 Fri, 24 Sep 2021 13:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632489608;
 bh=56znLhm2Eu6W0VdktjA89pY7++BwUbPQJ/zhVaJ6O6c=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=sJ/nWK1Gt0RVBCj1srbjQwlrJK28x1LPuRPIRo5dZMNHUlaD+bTijQkDGqnD7n4LY
 UgCe0AMnaxdPElgP885ybrdz7yetYbYOPxlcdiDwpPVGIhZczHh/yCAY6amh5VJypP
 3Ozv36MqFnOXyy9Tm7Dqcv8L8bX729rNiIMzaeXVuaMeYVc5nBzVbvTdL9y+Pyo7kp
 XfClOmvTIf/2Fb+jnjCyqx7iNS6pBQAeXrKtrzeaurFMiuLCtsnLXQ4C0bMsGwYXkJ
 7BioNOGeVFVdZi3pY6k4vTr0dlZB5KHNVV5/FzViWjEV9f5L3WeITF84UZyYgGgcp+
 rWomgW7PqJSvQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 8DD9F60973;
 Fri, 24 Sep 2021 13:20:08 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163248960857.28971.5549585387092198522.git-patchwork-notify@kernel.org>
Date: Fri, 24 Sep 2021 13:20:08 +0000
References: <cover.1632420430.git.leonro@nvidia.com>
In-Reply-To: <cover.1632420430.git.leonro@nvidia.com>
To: Leon Romanovsky <leon@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/6] Batch of devlink related
 fixes
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
Cc: irusskikh@marvell.com, alobakin@pm.me, jhasan@marvell.com,
 michal.kalderon@marvell.com, leonro@nvidia.com, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com, jiri@nvidia.com,
 kuba@kernel.org, aelior@marvell.com, jejb@linux.ibm.com,
 vasundhara-v.volam@broadcom.com, sathya.perla@broadcom.com,
 michael.chan@broadcom.com, skashyap@marvell.com, martin.petersen@oracle.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 GR-QLogic-Storage-Upstream@marvell.com, davem@davemloft.net,
 GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (refs/heads/master):

On Thu, 23 Sep 2021 21:12:47 +0300 you wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Hi,
> 
> I'm asking to apply this batch of devlink fixes to net-next and not to
> net, because most if not all fixes are for old code or/and can be considered
> as cleanup.
> 
> [...]

Here is the summary with links:
  - [net-next,1/6] bnxt_en: Check devlink allocation and registration status
    https://git.kernel.org/netdev/net-next/c/e624c70e1131
  - [net-next,2/6] bnxt_en: Properly remove port parameter support
    https://git.kernel.org/netdev/net-next/c/61415c3db3d9
  - [net-next,3/6] devlink: Delete not used port parameters APIs
    https://git.kernel.org/netdev/net-next/c/42ded61aa75e
  - [net-next,4/6] devlink: Remove single line function obfuscations
    https://git.kernel.org/netdev/net-next/c/8ba024dfaf61
  - [net-next,5/6] ice: Delete always true check of PF pointer
    https://git.kernel.org/netdev/net-next/c/2ff04286a956
  - [net-next,6/6] qed: Don't ignore devlink allocation failures
    https://git.kernel.org/netdev/net-next/c/e6a54d6f2213

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
