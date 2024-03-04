Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1448703B7
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Mar 2024 15:10:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C85F60BBC;
	Mon,  4 Mar 2024 14:10:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EH6GY-_UhtR5; Mon,  4 Mar 2024 14:10:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC02760BB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709561431;
	bh=mWXEaTN7eQX+/sSG8Fo0G6IcArhplMnl4/rFGXgSssk=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GHXfiA+u3nE5Mg5jCdQW0VHFcFel6tdQqDBsRZihZlLGOsz7XZOTV1ZqL57x6ahjl
	 ZzFiAbU67nj7G+EGfM8dnWMAPH61yDDIae/52rN4Ym1pHqadyQMVKzqvnaTK4h/XaU
	 jCthvfg6Vw5JDhxdGFcmb6SZ5/BuET5F0eUaOVlBDwCmjtXG3ldrclm29yI97zx7R3
	 vCG14oPmqx7V++ZepBMKf576rHH3XoGdgzhVWH9ytoeI0ULrlF2D7crZxpju0g+wsw
	 XBdI+5eLCpsKqW6rYA+yD7+X1RzsWXsxMN07CPhpu7aeGl9vukxauXH4LfVlQYXoRa
	 6qUo84ngQD75g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC02760BB5;
	Mon,  4 Mar 2024 14:10:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8DCF71BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 14:10:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7550B41030
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 14:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5f1MTwZTNSiT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Mar 2024 14:10:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 62914405D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62914405D1
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 62914405D1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 14:10:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1B89760F3A;
 Mon,  4 Mar 2024 14:10:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE089C433C7;
 Mon,  4 Mar 2024 14:10:26 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 90C7FC595C4; Mon,  4 Mar 2024 14:10:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <170956142658.15074.12322285485014543685.git-patchwork-notify@kernel.org>
Date: Mon, 04 Mar 2024 14:10:26 +0000
References: <20240303083225.1184165-1-yoong.siang.song@intel.com>
In-Reply-To: <20240303083225.1184165-1-yoong.siang.song@intel.com>
To: Song Yoong Siang <yoong.siang.song@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709561426;
 bh=e3vwrozgYttFesjrkEkiWY1DOGCdGg097X1QMijHh14=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=foYRdYyxuUzzlnIK0ysZ+/h7LUP5HkwK3+MztotHFXqWWcsxXxuQL0fgW7QTDWLW1
 JiE+/i9DxUhHjkBW0PbYjUDlGNTMNdkitPb1uftZ6yrBVA/XU7g80EDqeImTKoh9kH
 DzUYAyuDPYXw95glklTZ7nWh3xHQ5cKcg6jSvnh6lRpDi8tGN3hFi4PQsskNy7Bw7K
 5HMm0o+gpW7U2Tj6iTX1tZTHlmFFJbE6MpZhcMfHL5WWuzkOfvO3kysX9ieU5Ght+C
 LSAsbtMHEny5mQc99MKLsZAMX0Lf9D+C0nVjZBbbXYZ4XdSJ84ZDBDSjaJN6eNu16+
 8bzq4osx4vG/A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=foYRdYyx
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v3 0/2] XDP Tx Hardware Timestamp for igc driver
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
Cc: linux-kselftest@vger.kernel.org, florian.bezdeka@siemens.com,
 ast@kernel.org, andrii@kernel.org, song@kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, sdf@google.com, yonghong.song@linux.dev,
 shuah@kernel.org, mykolal@fb.com, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, vinicius.gomes@intel.com, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, hawk@kernel.org, richardcochran@gmail.com,
 kpsingh@kernel.org, haoluo@google.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, eddyz87@gmail.com, jolsa@kernel.org,
 bpf@vger.kernel.org, martin.lau@linux.dev, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to bpf/bpf-next.git (master)
by Daniel Borkmann <daniel@iogearbox.net>:

On Sun,  3 Mar 2024 16:32:23 +0800 you wrote:
> Implemented XDP transmit hardware timestamp metadata for igc driver.
> 
> This patchset is tested with tools/testing/selftests/bpf/xdp_hw_metadata
> on Intel ADL-S platform. Below are the test steps and results.
> 
> Test Step 1: Run xdp_hw_metadata app
>  sudo ./xdp_hw_metadata <iface> > /dev/shm/result.log
> 
> [...]

Here is the summary with links:
  - [iwl-next,v3,1/2] selftests/bpf: xdp_hw_metadata reduce sleep interval
    https://git.kernel.org/bpf/bpf-next/c/01031fd47305
  - [iwl-next,v3,2/2] igc: Add Tx hardware timestamp request for AF_XDP zero-copy packet
    (no matching commit)

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


