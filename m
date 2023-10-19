Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9392E7CF76B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 13:50:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2964183AB5;
	Thu, 19 Oct 2023 11:50:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2964183AB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697716235;
	bh=Rus2yE98xG2SyTvp6OMjTt7xbukvAKb9f4bnpRSLRNk=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TMUVN+ZBB0Hb9DhvWN45eOSnCD/jcsrIOE3lzjRzLBwrhzD8PLsp5Y0N4zv73i2WB
	 IIFuWlW5gy7awYgJ5MtY8auJ4iazasyst78B6Bzv8P1BIUUk280IFxtea66iTgi7UC
	 ydz6+J3wHdzzhBWO6zQcZyhS4VLq6/uunN/4kIVtTrysZW4RtCdrLbGU6gVXLnEak3
	 2Ozq2ZcgqyCgozJmN3f4te8saIfoKq+TsAN78gcA6fFh2WVEFZVvfuwAfN80tXcfCa
	 3RAUjhesC47k/yI2QzTULy1q1IMn02Jzul2fg/kBwMZVuPN8g2xOMIHANMTz+xXUln
	 Z2IgW3rX3cYbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WplPQaW6wxkp; Thu, 19 Oct 2023 11:50:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E65B838E0;
	Thu, 19 Oct 2023 11:50:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E65B838E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90A3B1BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 11:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 75E3A60F56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 11:50:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75E3A60F56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LMR-FWtsWODh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 11:50:28 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A7DB60B74
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 11:50:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A7DB60B74
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id AF9BACE2BC5;
 Thu, 19 Oct 2023 11:50:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9A70C433C8;
 Thu, 19 Oct 2023 11:50:23 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 D5D3EC595CE; Thu, 19 Oct 2023 11:50:23 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169771622387.21633.5843251100307704107.git-patchwork-notify@kernel.org>
Date: Thu, 19 Oct 2023 11:50:23 +0000
References: <20231018111527.78194-1-mschmidt@redhat.com>
In-Reply-To: <20231018111527.78194-1-mschmidt@redhat.com>
To: Michal Schmidt <mschmidt@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697716223;
 bh=TdY+XiXmmLD91TpIQcO/N8dKvhER81eOGRqSvvlvp90=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=thXYzELZ4SFp/pwUtNac/XwJOsb/5eBCmGhLHEmFGw8pBxFA1BNVanb7bLL9kfsMC
 dlgpxKXQfTFy0Y+b3sZtiLNwxOPSjl+3+LpIozYMpmdgSWM5WWuMEkkiZ60XOrdw6C
 qIZoo8XF0v6DBPIDxPIyY0843ygwZZSxM9vHzv2m1939dM0VeRtNfQiTtbQeGraLdC
 USKTGI+eubkaoeCpXcjogQqxh0zy/T1ViK1KslpbpVavDsBr25Hlt3jQVKpaNXV4g6
 L6JxoizAg2tIDpRceqWfKArlp0VEQaKRVqQX1+jn0Z8wGZaCTmhfHUjea9FOYxZWe+
 z1TQfswP6V9wA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=thXYzELZ
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: delete unused
 iavf_mac_info fields
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
Cc: wojciech.drewek@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Wed, 18 Oct 2023 13:15:27 +0200 you wrote:
> 'san_addr' and 'mac_fcoeq' members of struct iavf_mac_info are unused.
> 'type' is write-only. Delete all three.
> 
> The function iavf_set_mac_type that sets 'type' also checks if the PCI
> vendor ID is Intel. This is unnecessary. Delete the whole function.
> 
> If in the future there's a need for the MAC type (or other PCI
> ID-dependent data), I would prefer to use .driver_data in iavf_pci_tbl[]
> for this purpose.
> 
> [...]

Here is the summary with links:
  - [net-next] iavf: delete unused iavf_mac_info fields
    https://git.kernel.org/netdev/net-next/c/a0e6323dbae6

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
