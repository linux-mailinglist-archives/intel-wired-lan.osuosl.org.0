Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C12C1ADBE9E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jun 2025 03:40:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24E4840D55;
	Tue, 17 Jun 2025 01:40:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CNYlnKVroiEF; Tue, 17 Jun 2025 01:40:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4303A40D47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750124426;
	bh=lKNmuKg61Lp08RSjYtxOVkhxCdvA5xgZ6UgskIwBnEk=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=64y+fM39uNyIJdUZBMLgPC9Y/S/ud/xmL3xdjUIa7i2HJpIDmoRp1qtv9Gb90SMmW
	 syxo+Fw1Uya7zvfrRq/aQeU3AYoKmrg2SylgAZ+YJPxGNsXsznYO1x+KPclDZyznNB
	 VbsXlX5KzdNDbjBw7qgkaTp+uv46TkcfPbVOuSExmD1pgC/nC4SqTJZUIYvXJbRgHo
	 BBXZG8Lc7RpFNkAAHieMXvsBJraCZM6T7BZrowpuekPP9ejNh8DHrmi/61Q/Nx1SOM
	 BlCEOzlgaANpnRErQNqmZJmqHC65MJLNw0F0FvHwv4hla7CruVA6fxNi5mx0qxx5da
	 38AvqBvJtZMqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4303A40D47;
	Tue, 17 Jun 2025 01:40:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 092FF16B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jun 2025 01:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E708660BC5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jun 2025 01:40:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gz7vfRNWpKyL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jun 2025 01:40:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 188C160B26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 188C160B26
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 188C160B26
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jun 2025 01:40:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 691494ACE8;
 Tue, 17 Jun 2025 01:40:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40B8CC4CEEA;
 Tue, 17 Jun 2025 01:40:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 33A9238111D8; Tue, 17 Jun 2025 01:40:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175012445200.2579607.10501400435352945895.git-patchwork-notify@kernel.org>
Date: Tue, 17 Jun 2025 01:40:52 +0000
References: <20250614180907.4167714-1-kuba@kernel.org>
In-Reply-To: <20250614180907.4167714-1-kuba@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: davem@davemloft.net, netdev@vger.kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com, joe@dama.to
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750124423;
 bh=Q06Vfek8pVIkka2gkFLzgHEBRTwKppRw5GXiAvtQNLI=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=IZ3X90HiEnmAmW313D7bRYdDhKxiL9cIKNzEbd4glSMdRfP9w9ydQQEqNpv+8AGqD
 PqNA5KtgwWE/Sm74Csf2BeExpSmHdv5bjrZqMW7VgZEdd/mLhWl7V+NoDgcnPccOwT
 BnLF5tTcbI9xRsl9ojBxocRK2TOdhEhETIbUOUbgw1uwn34En369N+qUgf2ujB2sGh
 3fIdgAqZ90tUIQFNZsHPrLv3i1n7kEWdVivrs98Sbwkomft5XSLUHJBOvRAFB8Goes
 icgirw6+gbrINMSFxf7/RJwYDVcqXEzUodcJt3JEpBca+1/Lt32IIqnxeaqz2MfDqS
 JtEzVvi0n7m8A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IZ3X90Hi
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/7] eth: intel: migrate
 to new RXFH callbacks
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

On Sat, 14 Jun 2025 11:09:00 -0700 you wrote:
> Migrate Intel drivers to the recently added dedicated .get_rxfh_fields
> and .set_rxfh_fields ethtool callbacks.
> 
> Note that I'm deleting all the boilerplate kdoc from the affected
> functions in the more recent drivers. If the maintainers feel strongly
> I can respin and add it back, but it really feels useless and undue
> burden for refactoring. No other vendor does this.
> 
> [...]

Here is the summary with links:
  - [net-next,v2,1/7] eth: igb: migrate to new RXFH callbacks
    https://git.kernel.org/netdev/net-next/c/f148250e357b
  - [net-next,v2,2/7] eth: igc: migrate to new RXFH callbacks
    https://git.kernel.org/netdev/net-next/c/575d1b28d204
  - [net-next,v2,3/7] eth: ixgbe: migrate to new RXFH callbacks
    https://git.kernel.org/netdev/net-next/c/ecb86e1ff4a3
  - [net-next,v2,4/7] eth: fm10k: migrate to new RXFH callbacks
    https://git.kernel.org/netdev/net-next/c/5bd68c191a82
  - [net-next,v2,5/7] eth: i40e: migrate to new RXFH callbacks
    https://git.kernel.org/netdev/net-next/c/5a28983710b7
  - [net-next,v2,6/7] eth: ice: migrate to new RXFH callbacks
    https://git.kernel.org/netdev/net-next/c/1899fce53a78
  - [net-next,v2,7/7] eth: iavf: migrate to new RXFH callbacks
    https://git.kernel.org/netdev/net-next/c/2c5f2ad1d919

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


