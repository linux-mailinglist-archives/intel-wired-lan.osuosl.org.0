Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B3A790C1B
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Sep 2023 15:20:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30F5740A01;
	Sun,  3 Sep 2023 13:20:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30F5740A01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693747212;
	bh=PoZhAncn/SeZWfEtKhSAzSIXfJ25EBtUQRpOFsQ7wg4=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JU3bucMh5pw7HdaP1sg+P4g4OsyUGHgP/3DqPlNmg/96XYvTtGWWT/aXNDfHsedtk
	 FBeFXe7HGzfrY/n2sDvJpkMWONlfYPgD2+wh/MziBnaXLVXtxmTPizE+MIxVsyqDRe
	 J4lf7x0g4m2U4iyKfcYesAWR6Rg3AOcRhx+3LD0LXa7a8wYs2WtBdYTiLc+O4ZfmRy
	 OYLssi1jAO+aqBTd5dzmr4hCOhLqHFwYFj6UIwvIZ+nlK2IXjRsWRthQPOo8v9LXhq
	 +YcuIy5NF/ZEj8TGhzP0hwKiRv4LJrRPrPr9g5bxcwwJi/TsL18BF/MSDOmMcfawCO
	 GgzGkRi9PjZQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m-jBbozbA6G2; Sun,  3 Sep 2023 13:20:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1F724097B;
	Sun,  3 Sep 2023 13:20:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1F724097B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D95931BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Sep 2023 13:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BEC1181E38
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Sep 2023 13:20:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEC1181E38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fE4I8WhpU1YG for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Sep 2023 13:20:04 +0000 (UTC)
X-Greylist: delayed 442 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 03 Sep 2023 13:20:03 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9383481E32
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9383481E32
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Sep 2023 13:20:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id B68F5CE0AAF;
 Sun,  3 Sep 2023 13:12:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69C23C433CA;
 Sun,  3 Sep 2023 13:12:33 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 4C894E29F39; Sun,  3 Sep 2023 13:12:33 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169374675330.16952.10821656752298867430.git-patchwork-notify@kernel.org>
Date: Sun, 03 Sep 2023 13:12:33 +0000
References: <20230831121914.660875-1-vinschen@redhat.com>
In-Reply-To: <20230831121914.660875-1-vinschen@redhat.com>
To: Corinna Vinschen <vinschen@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1693746753;
 bh=g8pSR9QSVK6IeE2/A0s/1+eGsGP0iQjvdmE/KxRxGHs=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=bGcMumlA/LMwxHzciuPWXEmAmoGpA8XWLb+ZxkzxMGAEh6tVIyf9qQRK43A8t2FMW
 mQhhBJuN5VVYjh8KcC/wjBFlZyOoaBHn/qkpGAumIimER83M6Qg7Q/YVqi5CXwE307
 NKT/ecSNY4LjYP2/7Phsenq+jsSuV2pzVPsXqe2TEgglG24RAHS21ZcZ3YfK1Vn5SC
 fg5pztGMbFctuS1lX+q7kYuzDaFUwvWrF2/HBM4yzVkHkrh9cj8qxFH8TirM4h2cU5
 CWp+gk4CjowMmt0dGBL7j8uxDahM+wJcVl6xlq1GmalOh5VleOzb8iExsSBXy9aujv
 UIiZPXpmZnlVw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bGcMumlA
Subject: Re: [Intel-wired-lan] [PATCH v2 net] igb: disable virtualization
 features on 82580
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
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (main)
by David S. Miller <davem@davemloft.net>:

On Thu, 31 Aug 2023 14:19:13 +0200 you wrote:
> Disable virtualization features on 82580 just as on i210/i211.
> This avoids that virt functions are acidentally called on 82850.
> 
> Fixes: 55cac248caa4 ("igb: Add full support for 82580 devices")
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Here is the summary with links:
  - [v2,net] igb: disable virtualization features on 82580
    https://git.kernel.org/netdev/net/c/fa09bc40b21a

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
