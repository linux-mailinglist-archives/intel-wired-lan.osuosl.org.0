Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC60B12BD8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jul 2025 20:30:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D9D781970;
	Sat, 26 Jul 2025 18:29:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UVDZR54NuwiG; Sat, 26 Jul 2025 18:29:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C84A081801
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753554597;
	bh=Kok2De9rkh5v6OPrZ4uIDIy4UfiJxkVYb6U4nqZJ7bQ=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WyG2x7bvjtd9uKHlY22UiCaqKCI/jY0Bth0Ra6gWjBIcvWFreEoiRFiIpNLWK6ObH
	 7qaVU7iJ+ah9JMGA5lCcBF40KBCsjyoNrc/jfNWk9E5pV7mHviRnYF/AhZtOwY/hlb
	 keorECmXefYekcJnpTYg+8plBdpSnioWMiw2J1x1J9k48uqjE4bIaD2Go3Myc+Tfk+
	 oKcDR0o3WWQx0zHPZZuOAP+Kh74HYPZzHhxPIlvISpIsHaY8lC5As4j0WZgqLzn7tc
	 WZp56v1jNE8XqEjyABkQRmkbBXf5ye/yjE9uTT6YU48uPHo0YzSBfkI8dxJNPSs1ZG
	 diBQsODhX3wXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C84A081801;
	Sat, 26 Jul 2025 18:29:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C3A4C177
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 18:29:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA10841424
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 18:29:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tcHUxM2rEvAg for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Jul 2025 18:29:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DC485413A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC485413A9
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC485413A9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 18:29:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 29900A540BD;
 Sat, 26 Jul 2025 18:29:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3188C4CEF1;
 Sat, 26 Jul 2025 18:29:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 33D39383BF4E; Sat, 26 Jul 2025 18:30:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175355461105.3662765.16598122698049376540.git-patchwork-notify@kernel.org>
Date: Sat, 26 Jul 2025 18:30:11 +0000
References: <20250723142327.85187-1-kerneljasonxing@gmail.com>
In-Reply-To: <20250723142327.85187-1-kerneljasonxing@gmail.com>
To: Jason Xing <kerneljasonxing@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
 linux-stm32@st-md-mailman.stormreply.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 kernelxing@tencent.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753554593;
 bh=mxo9qya/kzvBI7JkhII6DI4w28F8yzccAxoPm1FQ4Mc=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=tYiVri0QD33QM0ljryw3G6aNP5+B/csvJqrOIvwmx3AGsJOo0dNaKCdXW+m5ViZWb
 d+8uVdUCbGDy6ghfyIxWQFonT0WxCz4jiwY060cGdSgUsPJGJu3gNZOYFAT8RwpOS9
 hch5tpQjrTyOp+XvpgKOSsI7YIThcvX+LoYdE2Z+tYZMhAO5/ufBUzpDkNKIUSP4XU
 +HWtSCSpf6lBjv8lJFVZMhen5K/qrqRsnPa28RxqESE55KXpCENEMhgmjmmafx9cyW
 UpSa8+g9qabVPejG3TF62QGmLEo+cYPCgutZmJe5dtiJJk9FelzYMCzjGZFhcFTVck
 qbhbn3aEppxUw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=tYiVri0Q
Subject: Re: [Intel-wired-lan] [PATCH net v3 0/2] xsk: fix negative overflow
 issues in zerocopy xmit
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

This series was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 23 Jul 2025 22:23:25 +0800 you wrote:
> From: Jason Xing <kernelxing@tencent.com>
> 
> Fix two negative overflow issues around {stmmac_xdp|igb}_xmit_zc().
> 
> Jason Xing (2):
>   stmmac: xsk: fix negative overflow of budget in zerocopy mode
>   igb: xsk: solve negative overflow of nb_pkts in zerocopy mode
> 
> [...]

Here is the summary with links:
  - [net,v3,1/2] stmmac: xsk: fix negative overflow of budget in zerocopy mode
    https://git.kernel.org/netdev/net/c/2764ab51d5f0
  - [net,v3,2/2] igb: xsk: solve negative overflow of nb_pkts in zerocopy mode
    https://git.kernel.org/netdev/net/c/3b7c13dfdcc2

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


