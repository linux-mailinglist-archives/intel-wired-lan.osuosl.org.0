Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33671957AA8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 03:00:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABA4D6087A;
	Tue, 20 Aug 2024 01:00:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wr6UwjuF8hQ6; Tue, 20 Aug 2024 01:00:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FD4760872
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724115641;
	bh=YyxhZLLN95Zv7GhCHqslr2kyuTWDDlC9tyv08xiy9dk=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7+38yGqoXlvelBL854t1//ro90no4dAH++tMme0/IxvGSYp7ZErgCQM1MydY9aScE
	 gWBV7jtSF9eTSNypP+NEUDfXaHlbMEzfSZaSvBLd4YXWFuR/MYRqozZC0A0uIiYP30
	 RFyv6LiyUrlXb/edD/gCp4yK3yc6cxoBw9DjJIEASz7mmCXw+XOqL+CkqA5tlQwDNY
	 SPQsWhJvo9wKSMxmshEgang/QLI2wGk2aAdo+BLil1ceS2DCwaeisXavsI7fV0CHLb
	 nmf0zj0Z+CgYedDN1MAJq1hqwp1miugBJX9ZXYcD3GRYKq8C/AkxeuSMnsbIjRVgbm
	 s48cTn4O2RBBA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FD4760872;
	Tue, 20 Aug 2024 01:00:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2AC61BF95D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 01:00:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C82C6086D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 01:00:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ovWzwDj2Al5G for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 01:00:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C971F6086F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C971F6086F
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C971F6086F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 01:00:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A963F60CEE;
 Tue, 20 Aug 2024 01:00:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 760E8C32782;
 Tue, 20 Aug 2024 01:00:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 33BD83823271; Tue, 20 Aug 2024 01:00:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <172411563675.698489.16448666120117181368.git-patchwork-notify@kernel.org>
Date: Tue, 20 Aug 2024 01:00:36 +0000
References: <20240816101638.882072-1-yuehaibing@huawei.com>
In-Reply-To: <20240816101638.882072-1-yuehaibing@huawei.com>
To: Yue Haibing <yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724115637;
 bh=QLnL+YuboXnJw7rd/7tmTvpPo+EYNrmzAHUoUONsdn8=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=qidlXgqmaB6t3hZtqgv5bN2ovpHWijWrHOvOBaE4yyZIr0YH0r4630QPhHR1ZTvL9
 pgykB/EJ1fUT45yJjZqM/iIJSuNgBphabOFnaITLrX+aA12FkZPemfQxXRIDhxG0id
 /bqkygYibbbeAOKSRhSR+IrlzWqZB4tNQD4+kWF2Tn/7KvFInsUUGkA+fXf4d1Jf0g
 iugD2XV9z5xG5miLbu8E2OhIa1saJN67tZ2+ZYxmrKPgc0oLy8UxsRoLXcrSW4nYlx
 666fg6UnxMDlBRPf6l62PH0Gcqwxn/8ysh3bprjwpkxzZdFBjNXe88w0mBb1r6Yu7g
 MHNYzgvIf2z7Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=qidlXgqm
Subject: Re: [Intel-wired-lan] [PATCH net-next] igbvf: Remove two unused
 declarations
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
Cc: przemyslaw.kitszel@intel.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, olga.zaborska@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Fri, 16 Aug 2024 18:16:38 +0800 you wrote:
> There is no caller and implementations in tree.
> 
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
> ---
>  drivers/net/ethernet/intel/igbvf/igbvf.h | 1 -
>  drivers/net/ethernet/intel/igbvf/mbx.h   | 1 -
>  2 files changed, 2 deletions(-)

Here is the summary with links:
  - [net-next] igbvf: Remove two unused declarations
    https://git.kernel.org/netdev/net-next/c/12906bab4414

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


