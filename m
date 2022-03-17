Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1354DCC7A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Mar 2022 18:30:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C27884151;
	Thu, 17 Mar 2022 17:30:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zXXn16IKsAN4; Thu, 17 Mar 2022 17:30:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B154829FD;
	Thu, 17 Mar 2022 17:30:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6BBD31BF228
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 17:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 576A740017
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 17:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qmgt2gtkgDIE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Mar 2022 17:30:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 54D8A40004
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 17:30:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3546760F78;
 Thu, 17 Mar 2022 17:30:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EE8BC340EF;
 Thu, 17 Mar 2022 17:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647538210;
 bh=96us3Vh/tsNMsCASX/xc99i/hu4THmpwg7JXOE7T2wA=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=QQ7HIwqoeeaFxGaqcHo2+3DWH6XcB527Rho039o3vg+al77VBDhGTCvqHo5gwLqhy
 iAWBlyfqPtAcjCYnzGtaSvl74cv1RUhpXQ0l3REP075lTcdsTTPEugL8CciY7Yh5k/
 M/g0gU5WNcC9ArRGxJJMMAjpKrxeamw64p2BDNpPz/Qm/+CfcMM0QMPOMy0IEROIk5
 zfedF6qkbkPJA1hEXUfA/LZDC3Pas0N5D9besUFHvoQbH+4NfYhi1rLHOAQjBzRXjs
 FiJhTWWf6gx0mc6WAgI9G6y8N5R1yulEeJz81VBbBTcn8CUKLAHV3LILuKlEH8oHrL
 ytZSYAUesPeMw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 6575FF03841; Thu, 17 Mar 2022 17:30:10 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164753821041.18148.18371834724218825935.git-patchwork-notify@kernel.org>
Date: Thu, 17 Mar 2022 17:30:10 +0000
References: <20220317104524.2802848-1-ivecera@redhat.com>
In-Reply-To: <20220317104524.2802848-1-ivecera@redhat.com>
To: Ivan Vecera <ivecera@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH] iavf: Fix hang during reboot/shutdown
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
Cc: slawomirx.laba@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, poros@redhat.com, mateusz.palczewski@intel.com,
 kuba@kernel.org, phani.r.burra@intel.com, pabeni@redhat.com,
 davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Thu, 17 Mar 2022 11:45:24 +0100 you wrote:
> Recent commit 974578017fc1 ("iavf: Add waiting so the port is
> initialized in remove") adds a wait-loop at the beginning of
> iavf_remove() to ensure that port initialization is finished
> prior unregistering net device. This causes a regression
> in reboot/shutdown scenario because in this case callback
> iavf_shutdown() is called and this callback detaches the device,
> makes it down if it is running and sets its state to __IAVF_REMOVE.
> Later shutdown callback of associated PF driver (e.g. ice_shutdown)
> is called. That callback calls among other things sriov_disable()
> that calls indirectly iavf_remove() (see stack trace below).
> As the adapter state is already __IAVF_REMOVE then the mentioned
> loop is end-less and shutdown process hangs.
> 
> [...]

Here is the summary with links:
  - iavf: Fix hang during reboot/shutdown
    https://git.kernel.org/netdev/net/c/b04683ff8f08

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
