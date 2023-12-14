Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3199481255C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 03:40:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4219061AE5;
	Thu, 14 Dec 2023 02:40:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4219061AE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702521649;
	bh=9V6Qb9gFLwZo2C+S9/EYlDWZ8mGaA2xsSynMAWVxXpY=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P3xCYHzYNVbaH8iEWJrIIhIOBo06+Cxm4lcpGRoGI9+Ts2/qJlueAR1tkNR+PKATA
	 WB7h4/c6R4dUbqTtuzUHhIwD6Ja9D36VQiA05JZVUvqcCCV7nWE8CAEkrapOPfK8kf
	 2eS87VbBuoPoo4M5etyJYMQ0DezETZfdWAqdXxdLn/E8KIBBMVaNi1+up4PGDCaHyN
	 mMBMwW+h4jpUkIGSNJipqwXkBDVimHX+dQhdg58Q3Du0igM2wYhQ5J9aYU7lkJn/dN
	 YhAEp4ZGt2sb4BOIx/PewUToDFKQiAinJC3+Dc6qWRnHAcwCHlmRo26tOlLyQo/dJh
	 hGXt6admbsNxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aW_QX9zn6Fa8; Thu, 14 Dec 2023 02:40:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1303A61ACA;
	Thu, 14 Dec 2023 02:40:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1303A61ACA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 153031BF47F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 02:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E10A28177A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 02:40:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E10A28177A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jNQdkS4RkPmK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 02:40:32 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D2B60812E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 02:40:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2B60812E7
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 8D0F5CE223E;
 Thu, 14 Dec 2023 02:40:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30F5C433C7;
 Thu, 14 Dec 2023 02:40:25 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 A5104DD4EFE; Thu, 14 Dec 2023 02:40:25 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <170252162566.2494.10156204711336606229.git-patchwork-notify@kernel.org>
Date: Thu, 14 Dec 2023 02:40:25 +0000
References: <20231212142752.935000-1-aleksander.lobakin@intel.com>
In-Reply-To: <20231212142752.935000-1-aleksander.lobakin@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702521625;
 bh=RkWa2Vxp48FvhWUEDd4UAUVq0uHmwOqAASOVffoictA=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=EPdGwY0Ea+enh+Og3ixNEC6JafTwyIRlyh5MeZWpXddI8G+rXhH/A8j0nx1UAUGxQ
 aVQtVj+0naW/8J9yOrt9+fj03e1LhjGcoLlDIiMm/o+eWQnEme+KPk0jiwTsZBttB/
 WNSUNXy36Rg+MCrk0tCNdZUQ1RyE31NQhiLCo/TRcO3GVRmKo7U8CEs+fB4Sx7v7Uu
 dNV4UEB/xAeB7PCLyDwr5U1Tp8LJpoO3XqfcpE2uTkywvSKtiXW1Kr9W8Cl+WCWPf6
 mc+qFupyP8IJXKG5+h4B+jhBgxLWKJD8Yw5FPyqyG++ddSY1+Q7+DzcyQ5L4MgR8ty
 mI1SpzuTSnH/Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EPdGwY0E
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/2] idpf: add get/set for
 Ethtool's header split ringparam
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, jiri@resnulli.us,
 przemyslaw.kitszel@intel.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 paul.greenwalt@intel.com, vladimir.oltean@nxp.com, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 12 Dec 2023 15:27:50 +0100 you wrote:
> Currently, the header split feature (putting headers in one smaller
> buffer and then the data in a separate bigger one) is always enabled
> in idpf when supported.
> One may want to not have fragmented frames per each packet, for example,
> to avoid XDP frags. To better optimize setups for particular workloads,
> add ability to switch the header split state on and off via Ethtool's
> ringparams, as well as to query the current status.
> There's currently only GET in the Ethtool Netlink interface for now,
> so add SET first. I suspect idpf is not the only one supporting this.
> 
> [...]

Here is the summary with links:
  - [net-next,1/2] ethtool: add SET for TCP_DATA_SPLIT ringparam
    https://git.kernel.org/netdev/net-next/c/50d73710715d
  - [net-next,2/2] idpf: add get/set for Ethtool's header split ringparam
    https://git.kernel.org/netdev/net-next/c/9b1aa3ef2328

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
