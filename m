Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F7B32F518
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Mar 2021 22:10:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0E05843BF;
	Fri,  5 Mar 2021 21:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fCWpNmwA8CJd; Fri,  5 Mar 2021 21:10:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAB6B842A1;
	Fri,  5 Mar 2021 21:10:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3958D1BF59E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 21:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 25A1542FF4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 21:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KBy3jliCQmnL for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Mar 2021 21:10:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 312BE43245
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 21:10:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 522D8650AC;
 Fri,  5 Mar 2021 21:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614978609;
 bh=m/rUIqLPWADGD0R2avGUe5AEv6r0FxUd/ZNvpibpZuo=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=dWqTdHDLDnAbex7Tetm4yfvbiQ8Cuc4UeRDXTvk6czIVuis4WEQYO3FouAMmUwLP3
 RAiEQHAs4LLQLJ+9eSlVnUFFgBEFDXhd4fKNShN7QgSycUSUiv8yXUolSboSCoMpWc
 RhAU0abaq1r2UcwaFrRvFik841Nf53RHLS+afJ1wWfg2mNSXK5BpRb0PCzUER7YLRF
 9lGNIWSAUIAmu4xApIEXQ7H+HXDe2j43TyM7aTKEi/1FIB2PhLz0cbHnGnXvZi/jnR
 w4qQ6eBsUbUqWgkcCKCwJ0WTJZTCHRcvJQioUqDFDTKr7Glo+LKrMDaAaQIGpa2pox
 hiidpG/tCvExA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 4BB3C60A3E;
 Fri,  5 Mar 2021 21:10:09 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161497860930.24588.6617205222590161114.git-patchwork-notify@kernel.org>
Date: Fri, 05 Mar 2021 21:10:09 +0000
References: <20210305031010.5396-1-baijiaju1990@gmail.com>
In-Reply-To: <20210305031010.5396-1-baijiaju1990@gmail.com>
To: Jia-Ju Bai <baijiaju1990@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH] net: intel: iavf: fix error return
 code of iavf_init_get_resources()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (refs/heads/master):

On Thu,  4 Mar 2021 19:10:10 -0800 you wrote:
> When iavf_process_config() fails, no error return code of
> iavf_init_get_resources() is assigned.
> To fix this bug, err is assigned with the return value of
> iavf_process_config(), and then err is checked.
> 
> Reported-by: TOTE Robot <oslab@tsinghua.edu.cn>
> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
> 
> [...]

Here is the summary with links:
  - net: intel: iavf: fix error return code of iavf_init_get_resources()
    https://git.kernel.org/netdev/net/c/6650d31f21b8

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
