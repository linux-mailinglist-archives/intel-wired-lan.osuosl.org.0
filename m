Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6CE9B88B4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Nov 2024 02:40:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 845B560A3D;
	Fri,  1 Nov 2024 01:40:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zOayBp1P-R2X; Fri,  1 Nov 2024 01:40:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 498D760A92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730425231;
	bh=pcLfwCXbeXq58MIzZzjWh6H0ga0e04uNZrMRDUK7SKU=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Kdp132IosAJr4YPEpBWctjXQQ4DqFeaH1orUdRPIzZoM/An6d3e3xg6a8kPGYBql9
	 8mPw+CCtv+u8X/JfqH9qv61w7vUtCLtL1G80FLvrela0tKTBD5AFL92+3rNocIR3Fg
	 U7SPQcUhJjhJemb/iYYANGwMAsPuMiLULBpFNUmYQM4KdVhpH2ySYnM/j33JjZmNgz
	 b0oIi+LST4SrNVUxU2Fsrh97f5pbh/W62tbOJtG6u0ZstU3gG73iNvk527za84iG4b
	 BTZGfZPH32hCvkd1cFtprGuaTnvJ8ScHZbPl/ktsjaBjjAagXd04SkWVN2zAxSg89a
	 lVcXjyR8PULoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 498D760A92;
	Fri,  1 Nov 2024 01:40:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E6AD5E4F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 01:40:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18A594018B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 01:40:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HaMQxA3I-EWF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Nov 2024 01:40:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1C6D540142
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C6D540142
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1C6D540142
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 01:40:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 085A35CAF22;
 Fri,  1 Nov 2024 01:39:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8436CC4CEC3;
 Fri,  1 Nov 2024 01:40:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 AE04F380AC02; Fri,  1 Nov 2024 01:40:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <173042523324.2147711.14478562238628999014.git-patchwork-notify@kernel.org>
Date: Fri, 01 Nov 2024 01:40:33 +0000
References: <20241025203757.288367-1-rosenp@gmail.com>
In-Reply-To: <20241025203757.288367-1-rosenp@gmail.com>
To: Rosen Penev <rosenp@gmail.com>
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 bpf@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730425225;
 bh=GRJEKlHR8b5LRnU1kiPmGCbmnJ+WuP/4OUML9P8ReSQ=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=oo13IK6r88xnNUO39oWyLkPf+uNIZKckf/WYWg06gzci3wkMnwAfc2N4hx4QvaXzi
 fRDrwpjrAm/yXBgXBZYIRGoL3V5bhCqyYcs4z4sAZEpON5ASNYfzgta3yhhSeypvL9
 +TKJ34gK907pDjTR9t+wA8fEueJzdaJSL8YAYcqQ80WP4HG2jik86bj48GnjgIde3E
 NVWxn4hVl0xbpkIuGskXgsYKsJuFeBGyJccEUdN7bdi31diQtdgG+rJf3FJDyVorTs
 cxeWLTrZ5GQkdRonTkAilng2rlKIbaKXXMXT4WigoO92Qa58Vw6GAuRTLBbffh3PZj
 LW3uYa2WJujXA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=oo13IK6r
Subject: Re: [Intel-wired-lan] [PATCHv2 net-next] net: freescale: use
 ethtool string helpers
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

On Fri, 25 Oct 2024 13:37:57 -0700 you wrote:
> The latter is the preferred way to copy ethtool strings.
> 
> Avoids manually incrementing the pointer. Cleans up the code quite well.
> 
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  v2: fix wrong variable in for loop
>  .../ethernet/freescale/dpaa/dpaa_ethtool.c    | 40 ++++++-------------
>  .../ethernet/freescale/dpaa2/dpaa2-ethtool.c  | 15 +++----
>  .../net/ethernet/freescale/dpaa2/dpaa2-mac.c  |  9 ++---
>  .../net/ethernet/freescale/dpaa2/dpaa2-mac.h  |  2 +-
>  .../freescale/dpaa2/dpaa2-switch-ethtool.c    |  9 ++---
>  .../ethernet/freescale/enetc/enetc_ethtool.c  | 35 +++++-----------
>  .../net/ethernet/freescale/gianfar_ethtool.c  |  8 ++--
>  .../net/ethernet/freescale/ucc_geth_ethtool.c | 21 +++++-----
>  8 files changed, 51 insertions(+), 88 deletions(-)

Here is the summary with links:
  - [PATCHv2,net-next] net: freescale: use ethtool string helpers
    https://git.kernel.org/netdev/net-next/c/f611cc38925b

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


