Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6A7C8C88E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 02:21:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9711284123;
	Thu, 27 Nov 2025 01:21:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vsGKklOMPeES; Thu, 27 Nov 2025 01:21:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6D9384155
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764206471;
	bh=JTXy9MRW+NzUvMyJHb9wF4zBMUzpmVvr1cYpMqlsuX8=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WqKqVtNN7TXzqac4RV1i0DCgqhW5wIvVcsuzY0evoo9ad4HWdUFMVoBdCp8pXSlos
	 8SrtYqV1/zg75JNNXy73Yp0zz8mktSUKO0XQkXXKwfqqJziOLxNOVV/wtQCw/DIE4S
	 irnx9X4nLNJbPT3wUJss0lTACEDFkFQ4aZPHGe4V0ASsEnlNNQ6ixpzkPmvgRahdFD
	 r+D1g1lYDUZPY9HXWPAWraUxi8EiEDjsEloODNsGFLDmELz0LVa80GQRpHabO9JzLu
	 wVKRpAvFIq8OiIwGQAAMUd8uM2WiqNk7fM4ifawKrIElkFMoRuds1Fkf0SaxooS4vw
	 OnFQHvhshk1Lw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6D9384155;
	Thu, 27 Nov 2025 01:21:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A3592A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 01:21:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 748784026A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 01:21:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6GhVPnYRmf2A for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 01:21:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 402D140210
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 402D140210
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 402D140210
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 01:21:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A2B5F60243;
 Thu, 27 Nov 2025 01:21:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C94DC4CEF7;
 Thu, 27 Nov 2025 01:21:04 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 340F7380CEF8; Thu, 27 Nov 2025 01:20:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <176420642599.1910295.10418248024267534204.git-patchwork-notify@kernel.org>
Date: Thu, 27 Nov 2025 01:20:25 +0000
References: <20251125-gxring_intel-v2-0-f55cd022d28b@debian.org>
In-Reply-To: <20251125-gxring_intel-v2-0-f55cd022d28b@debian.org>
To: Breno Leitao <leitao@debian.org>
Cc: aleksander.lobakin@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-team@meta.com,
 aleksandr.loktionov@intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764206464;
 bh=H3Sk4FkNlLvO2pxRyLrNJOf23k9YNgMuCOiAIH2os1Y=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=sAKqyTgaMimz0WCFD8grun5Hjmibsqz3q9iVzkV7dsecfNNk/89w3I06e8UQlV3nH
 C4ro0oTboWtZQYbhqjChXkJsStlm9W09if6B4VErCf6dUcKfKwl7RVtynHi0y1dWfT
 bbPWY01ABapbeDurhIPy1s/NWlf88dJ6CgIkiKByKnPYBBEWigQct4AoCHE0WI8Tg8
 7luWl0vOHPQD3DkYcZ/SoS5a71f0Qwk1+Bf3h8dnjrclkHBQqS8i0o36Mmensq4mHN
 FC2p/J6ocUhFvvygtiilW2cbQldkqVLP90Rkz7GbFEqqehRnsO73Fa6rvGAjhdRUK5
 tOeW6oj16QLeA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=sAKqyTga
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/8] net: intel: migrate
 to .get_rx_ring_count() ethtool callback
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

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 25 Nov 2025 02:19:43 -0800 you wrote:
> This series migrates Intel network drivers to use the new .get_rx_ring_count()
> ethtool callback introduced in commit 84eaf4359c36 ("net: ethtool: add
> get_rx_ring_count callback to optimize RX ring queries").
> 
> The new callback simplifies the .get_rxnfc() implementation by removing
> ETHTOOL_GRXRINGS handling and moving it to a dedicated callback. This provides
> a cleaner separation of concerns and aligns these drivers with the modern
> ethtool API.
> 
> [...]

Here is the summary with links:
  - [net-next,v2,1/8] i40e: extract GRXRINGS from .get_rxnfc
    https://git.kernel.org/netdev/net-next/c/a8acbcbaf6d0
  - [net-next,v2,2/8] iavf: extract GRXRINGS from .get_rxnfc
    https://git.kernel.org/netdev/net-next/c/fe0a3d7d1dca
  - [net-next,v2,3/8] ice: extract GRXRINGS from .get_rxnfc
    https://git.kernel.org/netdev/net-next/c/8e8c00e1d213
  - [net-next,v2,4/8] idpf: extract GRXRINGS from .get_rxnfc
    https://git.kernel.org/netdev/net-next/c/873a1942fbc6
  - [net-next,v2,5/8] igb: extract GRXRINGS from .get_rxnfc
    https://git.kernel.org/netdev/net-next/c/d6c744f46816
  - [net-next,v2,6/8] igc: extract GRXRINGS from .get_rxnfc
    https://git.kernel.org/netdev/net-next/c/768ce58dddb2
  - [net-next,v2,7/8] ixgbevf: extract GRXRINGS from .get_rxnfc
    https://git.kernel.org/netdev/net-next/c/3399fd519dd4
  - [net-next,v2,8/8] fm10k: extract GRXRINGS from .get_rxnfc
    https://git.kernel.org/netdev/net-next/c/73d834cd1774

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


