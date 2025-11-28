Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFECAC90992
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Nov 2025 03:13:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31C3C84431;
	Fri, 28 Nov 2025 02:13:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vpxEjRRCqrXU; Fri, 28 Nov 2025 02:13:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C58F84427
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764295988;
	bh=rV6HEebwW+Pfsq7sW4m+KQI4BZ0xLI1qyfCnSKYo/kQ=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R9me0/LiXykuVPIi/iYJN57qIPB+HlLM0ZwadhblARIWp9sNvMnQgk3SlURYRiIXO
	 t6GHzSBLEQAUCYMdM1SpHk3ETSaq18+VbttV7lH+YD7Df20VrQkbmsTfGbSudV9iOp
	 8UiRJo1toRSOXdsD006cjLoAvGKvZA2GOz3FXOPzVhjdW5V2rqR6y0r+cQDmQOgeap
	 lrvvplfgeIfdS/vVJhwGPJ7lVbZwlms2P6Huc6UG+4wzwCZ5O2Xw23sW9H6zjU1cv/
	 G/PjYijKBrSW++oeKAKmHPfbSF5MalweqkfO8WLulGUDGKj4mjFE/tSGR2qcd1K2Tk
	 pPoFBZUIbu08Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C58F84427;
	Fri, 28 Nov 2025 02:13:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8F901967
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 02:13:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 758984009C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 02:13:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rv-19Lhi8bP0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Nov 2025 02:13:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6C4D840079
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C4D840079
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6C4D840079
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 02:13:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D59AA60251;
 Fri, 28 Nov 2025 02:13:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8446AC4CEF8;
 Fri, 28 Nov 2025 02:13:04 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 F2B6C3808204; Fri, 28 Nov 2025 02:10:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <176429580680.112305.4866761396083363563.git-patchwork-notify@kernel.org>
Date: Fri, 28 Nov 2025 02:10:06 +0000
References: <20251126094850.2842557-1-mschmidt@redhat.com>
In-Reply-To: <20251126094850.2842557-1-mschmidt@redhat.com>
To: Michal Schmidt <mschmidt@redhat.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, richardcochran@gmail.com,
 mateusz.polchlopek@intel.com, saikrishnag@marvell.com, horms@kernel.org,
 jacob.e.keller@intel.com, thostet@google.com, ahmed.zaki@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764295984;
 bh=NberzIKstWpJhkRDZwOMPC5eimdM4ACC4Dp1LcvG6zc=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Xo4ggw4Ainal5UoqtfOtsPrB2mImTiG/Czbpc/jd0DS9gWzT8w/6sWvKUnv+IiC7X
 geTd6++6IXtY3syRpxcXYp38Y4Q2rbtGdMzb0aSPE1YMk+3g4SbSKjIA28gF0U0Gt8
 c07WljIavqpQHpLUp/XqQYt38DcAEytaA9KAXrjjHolKIV5FZ8Avo/BLyhfUZiR9Gs
 B6+cfVVtaUOH5Z8Ilfq9qbYsAxSmZTUJplf6vCQBSnplpDtT9f3K8dUp64enSp1ugE
 mXDQnE+8Wk4MXO67ZHXmj/pAw7Sd9NhuAhd+gcaRG1U/geBKa3A9f9/NbI+zHk05cd
 w8oTbH32FSZkQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Xo4ggw4A
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Implement settime64 with
 -EOPNOTSUPP
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 26 Nov 2025 10:48:49 +0100 you wrote:
> ptp_clock_settime() assumes every ptp_clock has implemented settime64().
> Stub it with -EOPNOTSUPP to prevent a NULL dereference.
> 
> The fix is similar to commit 329d050bbe63 ("gve: Implement settime64
> with -EOPNOTSUPP").
> 
> Fixes: d734223b2f0d ("iavf: add initial framework for registering PTP clock")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> 
> [...]

Here is the summary with links:
  - [net] iavf: Implement settime64 with -EOPNOTSUPP
    https://git.kernel.org/netdev/net/c/1e43ebcd5152

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


