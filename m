Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A2077A634
	for <lists+intel-wired-lan@lfdr.de>; Sun, 13 Aug 2023 13:30:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 99F51404F1;
	Sun, 13 Aug 2023 11:30:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99F51404F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691926231;
	bh=BiixcChQIgOYaGQUHoRvv1zRuGXvu8fpi3h2I/ueFzo=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HIi9h/LaHtIozhmQDmSIZtMg5OhUHoZZZAvCQBYQNv2vDwPcCVr+JFkVVVPmvpDsQ
	 XttoWRaMvVmIUxIh56lnuIItpNpEth5ZUG34xFeV4RmRozbJrj73gTBrUmmw4gHsjX
	 KL7jafD/AYSAJyJVL1/T3KoUeVn9d7bjw5TjzYizvhHEtph/hZLxIrhr2W4cgY0PYf
	 Oc00ir8r3ZxE267xcoY9YjLNBDx3Qu0QJA8tqtbPcqWbhPu63JhfGussLKFbndy6uD
	 qFrbJMRR3sWyf/k6vzKNdQxV264AAHztFnv6HbXsCl31eB+5nn+Gav6xwbUIhY7k/j
	 wMFZeo/7vSA0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PrXabhh1CPR4; Sun, 13 Aug 2023 11:30:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F6884011F;
	Sun, 13 Aug 2023 11:30:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F6884011F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E6D601BF909
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Aug 2023 11:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFA7060A80
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Aug 2023 11:30:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFA7060A80
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 53jxerJr6w_z for <intel-wired-lan@lists.osuosl.org>;
 Sun, 13 Aug 2023 11:30:25 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BB0EC60F04
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Aug 2023 11:30:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB0EC60F04
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 76955622F9;
 Sun, 13 Aug 2023 11:30:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65777C433C9;
 Sun, 13 Aug 2023 11:30:22 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 4641CE1CF31; Sun, 13 Aug 2023 11:30:22 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169192622228.28684.15222274340017010414.git-patchwork-notify@kernel.org>
Date: Sun, 13 Aug 2023 11:30:22 +0000
References: <20230811105005.7692-1-yuehaibing@huawei.com>
In-Reply-To: <20230811105005.7692-1-yuehaibing@huawei.com>
To: Yue Haibing <yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691926222;
 bh=8vSQAsTDYEi/UdL5LqIV8Ft5zjJ6BQPG24xPN6gW07A=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=ZKXDqMW/sBKkS+4a+wz3d8bF1yk7aOzMrzQx3wlad7fEF7GEWkCzxVpXSJN+maAyu
 Fdg3WlCBQRfrQXv9iHPV/6ekZ7qplaWVGaRNCHI+K2cgS0VLYDQkhicoHFlaTkt8wq
 hG7oQZWufIOM7h7jml1F+qE4mZ3UPGAaeRYkekFMjnQ/5NY6jOJd248rI9eheNakIA
 TJwxDPQVS3eRmxJy8g3FBdv1Ly0kANNy2hp70O6CdAgY/6C25oGmolHBf+CYEhhAiJ
 UQ8hr7kfJOw4kM5TQpUfIN4TUr01oirnyGLAyseT24h9Vse00IDcWyMnRbYcV56Fgm
 lmLQmXpzRcZIA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZKXDqMW/
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: e1000: Remove unused
 declarations
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Fri, 11 Aug 2023 18:50:05 +0800 you wrote:
> Commit 675ad47375c7 ("e1000: Use netdev_<level>, pr_<level> and dev_<level>")
> declared but never implemented e1000_get_hw_dev_name().
> Commit 1532ecea1deb ("e1000: drop dead pcie code from e1000")
> removed e1000_check_mng_mode()/e1000_blink_led_start() but not the declarations.
> Commit c46b59b241ec ("e1000: Remove unused function e1000_mta_set.")
> removed e1000_mta_set() but not its declaration.
> 
> [...]

Here is the summary with links:
  - [net-next] net: e1000: Remove unused declarations
    https://git.kernel.org/netdev/net-next/c/2045b3938ffa

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
