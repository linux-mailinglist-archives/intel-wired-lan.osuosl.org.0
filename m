Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB8586AEFB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 13:20:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6705740558;
	Wed, 28 Feb 2024 12:20:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fEqOxoCC5Dvz; Wed, 28 Feb 2024 12:20:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4545540571
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709122837;
	bh=AtQHxKuMPFaa47xDwU8gZqzFe9oHA+Yo/ESLtoNd7KQ=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WUA5OELVkkgTWdyZgfyaNeIbahTsdQ2QfiFRSjJdfOicZBPLehBW9WCPBYphTUhhy
	 bmeZQqyCEdwh2j1ZMGltpKw8zf1RG2gO/0phgMPUyKoNF3hBAuKkKwYrdfPXIE5NBf
	 E9T41o4U+tVR3qI8O1jBj9oTCy/aSETojtlam8+W42cJgR7MwuUovcCFIeWkXsGYvz
	 VkDKneZ1uqxytgN+3IhE/nhNY3PqP5/HCrwG8SiCIA/iteVuBKZEzNnvIrwq4SXuvb
	 aE+SE/1s000HyKUB0ZK7re8OgJRCe+7vmldBXm4UO86Ylw5symH5CLmreO/6hxQW/b
	 qb9uf7HmZq1mw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4545540571;
	Wed, 28 Feb 2024 12:20:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 083541BF28A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 12:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E8F638176E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 12:20:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fowE0TjJ2Uyx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 12:20:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9439981551
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9439981551
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9439981551
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 12:20:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AC81B6182C;
 Wed, 28 Feb 2024 12:20:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5051CC433C7;
 Wed, 28 Feb 2024 12:20:32 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 3735CD88FAF; Wed, 28 Feb 2024 12:20:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <170912283221.5780.10584545658329943642.git-patchwork-notify@kernel.org>
Date: Wed, 28 Feb 2024 12:20:32 +0000
References: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
In-Reply-To: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709122832;
 bh=HJCBNKeuAAuw0Rwm5UYnlvoamIJt/suPGdB5W963k3A=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Jy2gh12MpRAsyipw1H7jdt6xXzYPug/pMt7K+4lTUoldoWR76uDFtoj5GE598zSHT
 pyUGWeNaUkYeJ9stmhHh4mlRh2OKJb+4+dhTJlN4sMZXMN2ROE9jeyBEg7KO4+GGHL
 EewqdjtK3MIbD/OXixIm9OaFDO6nV2Ts/Nzw0FWnqHE8YD52Dytf/U0LU8T+RqX9kZ
 2P1DgoWHr92iXRbKfpBT3figX0zODB9/kqGCL8DZdOVwo9gFjOWnYRY489+O7MGW+F
 qJegLR6ymtfgGdlpc9mwgU0dOf4U31J0ZPjs37wCwNDrGd07WZ/M6Qm4BJprj+xQQz
 UmzEu/HfQX5ew==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Jy2gh12M
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/9] drivers: net: Convert
 EEE handling to use linkmode bitmaps
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
Cc: aelior@marvell.com, manishc@marvell.com, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Mon, 26 Feb 2024 19:29:06 -0600 you wrote:
> EEE has until recently been limited to lower speeds due to the use of
> the legacy u32 for link speeds. This restriction has been lifted, with
> the use of linkmode bitmaps, added in the following patches:
> 
> 1f069de63602 ethtool: add linkmode bitmap support to struct ethtool_keee
> 1d756ff13da6 ethtool: add suffix _u32 to legacy bitmap members of struct ethtool_keee
> 285cc15cc555 ethtool: adjust struct ethtool_keee to kernel needs
> 0b3100bc8fa7 ethtool: switch back from ethtool_keee to ethtool_eee for ioctl
> d80a52335374 ethtool: replace struct ethtool_eee with a new struct ethtool_keee on kernel side
> 
> [...]

Here is the summary with links:
  - [net-next,v5,1/9] net: usb: r8152: Use linkmode helpers for EEE
    https://git.kernel.org/netdev/net-next/c/17206c116d75
  - [net-next,v5,2/9] net: usb: ax88179_178a: Use linkmode helpers for EEE
    https://git.kernel.org/netdev/net-next/c/93e6da6cce4a
  - [net-next,v5,3/9] net: qlogic: qede: Use linkmode helpers for EEE
    https://git.kernel.org/netdev/net-next/c/9f8b8adca800
  - [net-next,v5,4/9] net: ethernet: ixgbe: Convert EEE to use linkmodes
    https://git.kernel.org/netdev/net-next/c/9356b6db9d05
  - [net-next,v5,5/9] net: intel: i40e/igc: Remove setting Autoneg in EEE capabilities
    https://git.kernel.org/netdev/net-next/c/01cf893bf0f4
  - [net-next,v5,6/9] net: intel: e1000e: Use linkmode helpers for EEE
    https://git.kernel.org/netdev/net-next/c/02de1741eaf1
  - [net-next,v5,7/9] net: intel: igb: Use linkmode helpers for EEE
    https://git.kernel.org/netdev/net-next/c/41b9797de4d6
  - [net-next,v5,8/9] net: intel: igc: Use linkmode helpers for EEE
    https://git.kernel.org/netdev/net-next/c/1e45b5f28a57
  - [net-next,v5,9/9] net: ethtool: eee: Remove legacy _u32 from keee
    https://git.kernel.org/netdev/net-next/c/292fac464b01

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


