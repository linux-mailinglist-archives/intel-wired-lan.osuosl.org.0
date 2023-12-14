Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FD68127E0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 07:20:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 748FC813B6;
	Thu, 14 Dec 2023 06:20:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 748FC813B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702534840;
	bh=FTKUO1kFjAM2eTBzI78PIGrfA1O+ULz4YDD1dkgupm0=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d83xlKwPIiTjwPvknvtMmYn+txi5FWyCyxg3Ni0YXGNdg+AQN3Dli0z9PRsUttI7X
	 H2qtEqVXYKUfrYVHEAkn30S7tkWDt5HTIyCp2PSCZCLJeQfyxJWDTKryZ+VTNDFJEc
	 SW+jhswxLDD7LfxO6FwbT5velwo1855750WWQVhRt9L87TEAMIfQ2Drux5esW84WzZ
	 zgdRmDF8dEfTE8Q5TxMNkKQqdZEtqlHYVAsUzOt6Uer1aROZI0NWXClB/T0//osceZ
	 okgCiD9GELGafLlhTuoMdecfror+MxJv58iMzgzDj/megfkp+6/RbEtikCEIcidWTE
	 OuBs6FNVA68JQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kzp_zzCuJWM6; Thu, 14 Dec 2023 06:20:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 575B4813AD;
	Thu, 14 Dec 2023 06:20:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 575B4813AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 188401BF335
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 06:20:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F077461AC7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 06:20:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F077461AC7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zTk5WNIFy0-s for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 06:20:33 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E161C60F41
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 06:20:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E161C60F41
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id AB905CE2319;
 Thu, 14 Dec 2023 06:20:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8AFC433C9;
 Thu, 14 Dec 2023 06:20:27 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 C1115DD4EF9; Thu, 14 Dec 2023 06:20:27 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <170253482778.28524.4770397031071631009.git-patchwork-notify@kernel.org>
Date: Thu, 14 Dec 2023 06:20:27 +0000
References: <20231213003321.605376-1-ahmed.zaki@intel.com>
In-Reply-To: <20231213003321.605376-1-ahmed.zaki@intel.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702534827;
 bh=gVzW956pE4WZPiafeYeaFLar70TRxqJHBI/nEbsghSk=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=uaLBXFBxTz4OYPv+IVw11RKr/ii1rs4cpxVdpItKOF0JGJtsBspzhnMX3ku7O9MXZ
 xoezExqyTBP2b1AFiOmLlDr3kqt1PR9VK84jmyTeSNIPY53Q6uHkwq3Jmwp+SeGDzU
 qWL4Hy9KWWXCOH9XrwV8XDZA1mxlrYwKTQVK+TGi5eJqERcwyxuVVhijRZwobSJ2fW
 kZhWLxWc94R/WdDJAqXygSetBYKa2QzrsR3Ka34QbPeF4elE9ATrN02GrPGBM0MVVa
 P6SsRVaJmzRauBaBC+t/bqtqPSKvmVLgqVhL+v+F8ksH+/ZtPn+P+AhWig6bMLV9JF
 abWEG2kZgaNHw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=uaLBXFBx
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 0/8] Support symmetric-xor
 RSS hash
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 corbet@lwn.net, netdev@vger.kernel.org, gal@nvidia.com,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com, vladimir.oltean@nxp.com,
 ecree.xilinx@gmail.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 12 Dec 2023 17:33:13 -0700 you wrote:
> Patches 1 and 2 modify the get/set_rxh ethtool API to take a pointer to
> struct of parameters instead of individual params. This will allow future
> changes to the uAPI-shared struct ethtool_rxfh without changing the
> drivers' API.
> 
> Patch 3 adds the support at the Kernel level, allowing the user to set a
> symmetric-xor RSS hash for a netdevice via:
> 
> [...]

Here is the summary with links:
  - [net-next,v9,1/8] net: ethtool: pass a pointer to parameters to get/set_rxfh ethtool ops
    https://git.kernel.org/netdev/net-next/c/fb6e30a72539
  - [net-next,v9,2/8] net: ethtool: get rid of get/set_rxfh_context functions
    https://git.kernel.org/netdev/net-next/c/dcd8dbf9e734
  - [net-next,v9,3/8] net: ethtool: add support for symmetric-xor RSS hash
    https://git.kernel.org/netdev/net-next/c/13e59344fb9d
  - [net-next,v9,4/8] ice: fix ICE_AQ_VSI_Q_OPT_RSS_* register values
    https://git.kernel.org/netdev/net-next/c/20f73b60bb5c
  - [net-next,v9,5/8] ice: refactor RSS configuration
    https://git.kernel.org/netdev/net-next/c/dc6e44c9d6d6
  - [net-next,v9,6/8] ice: refactor the FD and RSS flow ID generation
    https://git.kernel.org/netdev/net-next/c/b1f5921a99ac
  - [net-next,v9,7/8] ice: enable symmetric-xor RSS for Toeplitz hash function
    https://git.kernel.org/netdev/net-next/c/352e9bf23813
  - [net-next,v9,8/8] iavf: enable symmetric-xor RSS for Toeplitz hash function
    https://git.kernel.org/netdev/net-next/c/4a3de3fb0eb6

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
