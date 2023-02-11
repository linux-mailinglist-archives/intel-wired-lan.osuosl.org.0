Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 299D5692E2E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Feb 2023 05:00:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D6C282379;
	Sat, 11 Feb 2023 04:00:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D6C282379
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676088030;
	bh=63Uv0BHtzqUvX92tYn4cbdB7sGhF+jSSs9hR22Nmmog=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=svSky14aR8GSSfukXsy0rhbT5oU++4ZSacl/9Je4zccC6F0WCtAMnvB2UWaelAVXL
	 YfWToaknqsyLx0abg1lZiDvMbVpTI6cEKWTKuJvguBo+t3pMpEEo/uxsa7IWRe/i4l
	 HNVXJ0X2qbfvfIfT3IBsGfblyA/1S0xZzf+TOYYjWxzo7MCZwbZvrjtdqNhji+8ofb
	 EYcWDuLu3saBbOgnc5vRvyWjSXizCptGQr4WjNjmmmTbg0LxYgWVJ9iNl4vR3Cz2M3
	 pvQEfAqtLKKkqTWST/fTXVjfgoRj0G1CJVhP3GtOwqJZO5EiWfdma5Jm+imr5JNd7v
	 uKKO9axhGTudA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XlrnqoHDn730; Sat, 11 Feb 2023 04:00:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E3DE82193;
	Sat, 11 Feb 2023 04:00:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E3DE82193
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 38AA71BF8A8
 for <intel-wired-lan@osuosl.org>; Sat, 11 Feb 2023 04:00:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1AE7D40235
 for <intel-wired-lan@osuosl.org>; Sat, 11 Feb 2023 04:00:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AE7D40235
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dV6F4-_LWFKZ for <intel-wired-lan@osuosl.org>;
 Sat, 11 Feb 2023 04:00:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CB0D400C8
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1CB0D400C8
 for <intel-wired-lan@osuosl.org>; Sat, 11 Feb 2023 04:00:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 4DA5BB826DC;
 Sat, 11 Feb 2023 04:00:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A9EC4339C;
 Sat, 11 Feb 2023 04:00:19 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 C3AB8E55EFD; Sat, 11 Feb 2023 04:00:19 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167608801979.32607.6812685908820179983.git-patchwork-notify@kernel.org>
Date: Sat, 11 Feb 2023 04:00:19 +0000
References: <20230209160130.1779890-1-larysa.zaremba@intel.com>
In-Reply-To: <20230209160130.1779890-1-larysa.zaremba@intel.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1676088019;
 bh=kBp1uteC19i6bkOE0j5LqAmzuVCE7BS7DDOYVZTtvww=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=DHTtPD/8xDVyMgACd9O4l5g7UajA5NhwKN6IQsDkhmz7k2L21BBRVIGz0G9BKhYEt
 s471IYXp9eCBmz+lMeHkxSm0mdr357/z3mIniHNI92ATPkr0ekibA6ZBVdkLxD7ue2
 ztqhX9d7ynwXxd5A6pXBXl7gwD4RukiiN+tjVXFq/feC5yFNxp+/itQ7YyQI1wrtFX
 eiaWyqgI/55jHaASPnqS6YhlrXTGDJj8TCW8wOhsOw0cSAOWZs768+pb0I1wYGzZ9V
 KOvEkmFnUXEIGaFh0D4+8MIWC45rDeJiqa042aLDFuNik9/oMnlU2fbDySUbOMsCP6
 Qsns1KOcLqzRA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DHTtPD/8
Subject: Re: [Intel-wired-lan] [PATCH net] ice: xsk: Fix cleaning of XDP_TX
 frames
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
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Thu,  9 Feb 2023 17:01:30 +0100 you wrote:
> Incrementation of xsk_frames inside the for-loop produces
> infinite loop, if we have both normal AF_XDP-TX and XDP_TXed
> buffers to complete.
> 
> Split xsk_frames into 2 variables (xsk_frames and completed_frames)
> to eliminate this bug.
> 
> [...]

Here is the summary with links:
  - [net] ice: xsk: Fix cleaning of XDP_TX frames
    https://git.kernel.org/netdev/net/c/1f090494170e

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
