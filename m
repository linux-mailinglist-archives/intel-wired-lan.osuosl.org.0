Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C66039687E2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Sep 2024 14:50:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 714F660850;
	Mon,  2 Sep 2024 12:50:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CHW74F8inpcu; Mon,  2 Sep 2024 12:50:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 414076084A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725281431;
	bh=ef6fXklp0CDwj2eVxrpmJOY1HE84CQ1GQNV/km9XJmg=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N9q/kj44XRXAkquse5XIC9z/CgerpGEgRXD/O9m8B6O2XxH/yGptF1poI1okGs7CY
	 9P2XbLasBkb6jpatcq7DYu/1IE7fjKxjEeKX1on/1oeUfA0hqbXuC1uIAGIlGpM9GS
	 jCM2Ki3YfI34LabPS/Ma/IsHOJfMonvGA/ywxrqa8hrDNjK5BnVjrfQKgsHNh86num
	 ArOH2dlcyb1NAbbCugT0d4C2d0lMUncJGpd7x+G2YENjDnfq4ZchwQoeBweb0SJ98J
	 P9UjB6ULzs/mKrhGNGxqqkXbuWzU+y/+I/ja2d9wSNE+aSbPOOlxCebTyassi35B1K
	 ebPSBTpOahT6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 414076084A;
	Mon,  2 Sep 2024 12:50:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0622F1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 12:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6B796083E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 12:50:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r7yTQgUlkXf2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Sep 2024 12:50:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F36AE60832
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F36AE60832
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F36AE60832
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 12:50:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C4E43A42159;
 Mon,  2 Sep 2024 12:50:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D53DC4CEC2;
 Mon,  2 Sep 2024 12:50:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 70E223805D82; Mon,  2 Sep 2024 12:50:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <172528142727.3879101.4427744206513284824.git-patchwork-notify@kernel.org>
Date: Mon, 02 Sep 2024 12:50:27 +0000
References: <64a982d3-a2f5-4ef7-ad75-61f6bb1fae24@stanley.mountain>
In-Reply-To: <64a982d3-a2f5-4ef7-ad75-61f6bb1fae24@stanley.mountain>
To: Dan Carpenter <dan.carpenter@linaro.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725281426;
 bh=gSSyow/y/SlSqbX4VOuxPJjKb9gx+BXqg2I1lVC/NNA=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=p+J4ej3nbbuZ6OvlbrZXXA1GuBPG1BIrKoCjvtj+j/Z+8iZ237JM1yYcJX1Rg/nnH
 4CxCC4i/Zf2GausECeNH6J92rzJfGQV6PAxaKkTY6E/NCRoM1NsOnHoqcolo6Vc4GA
 l18mQLtLoh4XAHz6BYd9Vosq23g9dM+c3x+fKAXyioQiwro6gfhEFrYj2bMqNWDE91
 PIKZME1xIrvbBUIqWPCGcT21mtJXIekMXHmQB6dlKEDciuPpPiheM29ObgASOuNov3
 moioFZzo1OnSLh1/5me5qvdCPp4HuMxZQjrPDd9TD0yRa6WKPwKNJIFmpRxEEzzkvP
 zb1/qZ8Sn5DMw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=p+J4ej3n
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Unlock on error in
 igc_io_resume()
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
Cc: sasha.neftin@intel.com, przemyslaw.kitszel@intel.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (main)
by David S. Miller <davem@davemloft.net>:

On Thu, 29 Aug 2024 22:22:45 +0300 you wrote:
> Call rtnl_unlock() on this error path, before returning.
> 
> Fixes: bc23aa949aeb ("igc: Add pcie error handler support")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 1 +
>  1 file changed, 1 insertion(+)

Here is the summary with links:
  - [net] igc: Unlock on error in igc_io_resume()
    https://git.kernel.org/netdev/net/c/ef4a99a0164e

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


