Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7403AC88011
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Nov 2025 05:01:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 070D040D31;
	Wed, 26 Nov 2025 04:01:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ovlx4eCAOH5W; Wed, 26 Nov 2025 04:01:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4366740AD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764129668;
	bh=/gnzHuNJE8fxWowtfntuTXS71OKqDKGcWo1bSZqNHiM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q0Kc1v/oz/nBv/4LwG54SN7dNQymxEH/wOBp4hp2NDmEFRBHVf3elJbrb+mHA6FS/
	 azM6MCWxARnkEiulZk5C5sTp2+c102lNxYfxlYl+/tsnOKINezXEpvG+JOOgpUKIwm
	 ESK/fhb/z/cSDgq8nLQ7ixHut5RU0yBPPnDCrcw0YjN2Ijnp+ocWjuOf6Kq5H5B+lL
	 MsxoVq8xCrQRNSI8fMxdU0WZnyaQrNUGA0lzVDZ2tU0imH83A5uJ5FDJIaoFiczjYC
	 d9+Kczo9/MaMN4B7dQ31eCZd+N/Xfkr98qvH9DCm3wjXtX0WFhSVax9opn8KGg44ZK
	 unpJnWlbQxiIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4366740AD1;
	Wed, 26 Nov 2025 04:01:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E16A359
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 04:01:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C3BD40AFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 04:01:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mc2r2VGHP497 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Nov 2025 04:01:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1FD3D40ED3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FD3D40ED3
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1FD3D40ED3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 04:01:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 8DDCC60175;
 Wed, 26 Nov 2025 04:01:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 446AAC16AAE;
 Wed, 26 Nov 2025 04:01:03 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 AE1FE380AA73; Wed, 26 Nov 2025 04:00:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <176412962530.1513924.5156245445511033054.git-patchwork-notify@kernel.org>
Date: Wed, 26 Nov 2025 04:00:25 +0000
References: <20251124170735.3077425-1-aleksander.lobakin@intel.com>
In-Reply-To: <20251124170735.3077425-1-aleksander.lobakin@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, jakub.slepecki@intel.com,
 nxne.cnse.osdt.itp.upstreaming@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764129663;
 bh=yxPxRhrTDbY+y54DKOOAKlTteq8knZ5DChr7Be+981M=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=CUG9U4a9kvpGlvTygI5Td+Jc70c40ltdc2hOcpGLK6h6Z8aNDG95qOhs47ZLeaSm2
 9ipbzWwzXLRVZycFH/3iM3JoKm732N9D2k5GHIUgM5RNa3xkuhUOwCOfN+QewpyJMw
 fUlds41s+m2cRevA9o2Q2gRi+uxWOa0TQgBO+irZqiTdbHPrTA/zkZvX+RUMGFmREb
 HxFz5s055n4IJU4Cv1QDthNMZMvtvy8ti3lWloGioGTha/NZPcKvq3a9U0lC4fD2Et
 Y2mXZo+sthySxpaVftvQPVccNeHcIs+X4ptmrUNy87tVSryyVUXXfz34oOG+52YQ+I
 tBNX49Gsq0xUA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CUG9U4a9
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix broken Rx on VFs
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

On Mon, 24 Nov 2025 18:07:35 +0100 you wrote:
> Since the tagged commit, ice stopped respecting Rx buffer length
> passed from VFs.
> At that point, the buffer length was hardcoded in ice, so VFs still
> worked up to some point (until, for example, a VF wanted an MTU
> larger than its PF).
> The next commit 93f53db9f9dc ("ice: switch to Page Pool"), broke
> Rx on VFs completely since ice started accounting per-queue buffer
> lengths again, but now VF queues always had their length zeroed, as
> ice was already ignoring what iavf was passing to it.
> 
> [...]

Here is the summary with links:
  - [net-next] ice: fix broken Rx on VFs
    https://git.kernel.org/netdev/net-next/c/436fa8e7d1a1

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


