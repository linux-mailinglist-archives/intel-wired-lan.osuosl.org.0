Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D90C5FE04
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Nov 2025 03:21:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C47DE6139D;
	Sat, 15 Nov 2025 02:20:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aPKkIpeU29st; Sat, 15 Nov 2025 02:20:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8972F613A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763173258;
	bh=1XBCr1Gcby41gbrxrZKGrihoIsMYp2hfQsi4AnCFSqQ=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ikDrXNVjOVitZ5PXN/dvKi8ayNBxaY8uF6vPlGr33P48dEeZ5x7iTOaEl+z5CSWwN
	 cZY7MbObFtnM2n08CFYTPPdx9sSt63HUu5P59S2h411SDoJhz5vtyvvUft6jGdWyTu
	 f4aDKVopVEqkvUpY/Am9DhZWfxAYt+61n74TW0TBHm2xScVJ2zWbnCjZ6VD+JuD7Cz
	 DpMt4rhqZm5/F0RpdPaGOswfacaVL605+HmgJXyOmlQDZ2qPhmjxRK+iWnNOayjuGf
	 ARbY0O7TVbrWy30uueeNaxhg58XHJUgEfiJ7NohpuaZJCcpMpuNjlhiM8I9ugdXCnI
	 SlC2j/heL2mkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8972F613A0;
	Sat, 15 Nov 2025 02:20:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E9E2232
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Nov 2025 02:20:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47C95412C2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Nov 2025 02:20:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Klwhia7DisjS for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Nov 2025 02:20:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 87FF4412C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87FF4412C7
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 87FF4412C7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Nov 2025 02:20:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B5C7044574;
 Sat, 15 Nov 2025 02:20:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98B14C4CEFB;
 Sat, 15 Nov 2025 02:20:55 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 33C563A78A62; Sat, 15 Nov 2025 02:20:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <176317322399.1911668.4514971413823098969.git-patchwork-notify@kernel.org>
Date: Sat, 15 Nov 2025 02:20:23 +0000
References: <20251113-ixgbe_gxrings-v2-1-0ecf57808a78@debian.org>
In-Reply-To: <20251113-ixgbe_gxrings-v2-1-0ecf57808a78@debian.org>
To: Breno Leitao <leitao@debian.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-team@meta.com,
 pmenzel@molgen.mpg.de, aleksandr.loktionov@intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1763173255;
 bh=3Vzr6Pt0NbBXXmH7E0ftKeDdei+KnDDF1zkjPTm169Y=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=KXGMzj9CRUjAL6jieYChehFMXATRpQXDvRy7wo8kKOrVP8Y1Tt4h4BTxO8HDePzuS
 XVAV07rH1Xhn+xxdlS0XeAP8+J04vtlDmVYha2Bi9o+CBBG+JUtq7FiH3kynuGV9iK
 AqYMQQl6pTVNX78goOT4MYrlN+dMQey3YrbsNMbFGjel5fG2f+hkPtu1YPH7qrmfWJ
 vNfOXJ2yFvys/Met05KQu7ZJi0tQkayjDKYkt2tqHPT4WjhiOE08wiAT0/wKQZALkY
 AQzjhnhDb48m2qSAoeYEV0IZdiR4tjXpM+N157aHre/CxjOEitJWZKpzm3GETXbNes
 gVnlE7GGypDbQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KXGMzj9C
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] net: ixgbe: convert to
 use .get_rx_ring_count
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

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Thu, 13 Nov 2025 06:23:29 -0800 you wrote:
> Convert the ixgbe driver to use the new .get_rx_ring_count ethtool
> operation for handling ETHTOOL_GRXRINGS command. This simplifies the
> code by extracting the ring count logic into a dedicated callback.
> 
> The new callback provides the same functionality in a more direct way,
> following the ongoing ethtool API modernization.
> 
> [...]

Here is the summary with links:
  - [net-next,v2] net: ixgbe: convert to use .get_rx_ring_count
    https://git.kernel.org/netdev/net-next/c/f455d3f02d89

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


