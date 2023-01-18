Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECD267120C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 04:40:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6D3881E6C;
	Wed, 18 Jan 2023 03:40:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6D3881E6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674013230;
	bh=kqzMJa1tJsI3oN3Zl6u/CkKcDHysObNeEZY9H8u2goY=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0OzHJdeXmQmrFW3gnA1aims08QPbEVGs3A+3tGgtDVr+dDrD4Gmd9UdSGkxizHIg9
	 /76lvVPIjuHc5x+nCni3Hnw6U8h/t5keqr5Puau3SOxnfJR2IpcbB+TzELgntUHcqw
	 kDVPDruY0TF6lkm1A32OTDINQnx5pzr7pH4JOdhsMEb4ooYHZc3q3pgA3ZSVU/gUUg
	 ha4ePYMDVseHPdz1uEBsHie/1NdAKT+e3bx+W+OcUfp29gtbhlmlD9VV83LjZizYQ4
	 pgMO3ZxfteRLZ54F7vdo14EAXSjk4m0Ia/h9BWcYoF2x5AYlPV1GQDVjesToKaGq5B
	 IMUSMix6E0SjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6xgGnCxssFmF; Wed, 18 Jan 2023 03:40:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D272F8195D;
	Wed, 18 Jan 2023 03:40:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D272F8195D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C3B241BF390
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 03:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AAD3B8195D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 03:40:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AAD3B8195D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q_kik2sNvU_Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 03:40:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2214A818A2
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2214A818A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 03:40:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 450C6B81AEE;
 Wed, 18 Jan 2023 03:40:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B38C433D2;
 Wed, 18 Jan 2023 03:40:18 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 B4C45C395C3; Wed, 18 Jan 2023 03:40:18 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167401321873.20942.13534371074632308788.git-patchwork-notify@kernel.org>
Date: Wed, 18 Jan 2023 03:40:18 +0000
References: <20230116-net-next-c45-seperation-part-3-v1-0-0c53afa56aad@walle.cc>
In-Reply-To: <20230116-net-next-c45-seperation-part-3-v1-0-0c53afa56aad@walle.cc>
To: Michael Walle <michael@walle.cc>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674013218;
 bh=LAEh1qjeJJ3YVp+GzADUviUyXXdjaMIyAqB9kh1X3d8=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=cLz7/cNXQ3WV7JrQfGkdGY3wR5Gk7CowU9fGOo5Qfk1W7eve67VpHaazDA4NkYpBf
 Ep5DtxJY1f/46UyNY0DljFA91DZAHOoFA3Tk20yYudM/DIpAFqFqVMuLQ6J9nEpSFy
 vfkflOtniiVkgn3TJXTU0ZnC4Rw+vNZK6zVflaCezisCASPbsfnM9GypaheK2gsA9D
 MTxWQV8V0OvZA3TnIEiva1VSha91BCNNWXxNeEo+jLvgVTvqSTUjQWQxsEuBxo5tXw
 a0vnjNyeXHnYqFcb3Gs3/p1ZzBJwEAs7APyFilUpgW62Mi8R5yDEoezLBFnnSC5QBa
 U60lFiLKvpFwg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cLz7/cNX
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/12] net: mdio: Continue
 separating C22 and C45
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
Cc: andrew@lunn.ch, Shyam-sundar.S-k@amd.com, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, f.fainelli@gmail.com,
 linux@armlinux.org.uk, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, yisen.zhuang@huawei.com, thomas.lendacky@amd.com,
 Landen.Chao@mediatek.com, bh74.an@samsung.com, linux-kernel@vger.kernel.org,
 sean.wang@mediatek.com, dqfext@gmail.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 salil.mehta@huawei.com, s.shtylyov@omp.ru, netdev@vger.kernel.org,
 nicolas.ferre@microchip.com, davem@davemloft.net,
 linux-renesas-soc@vger.kernel.org, olteanv@gmail.com,
 claudiu.beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 17 Jan 2023 00:52:16 +0100 you wrote:
> I've picked this older series from Andrew up and rebased it onto
> the latest net-next.
> 
> This is the third (and hopefully last) patch set in the series which
> separates the C22 and C45 MDIO bus transactions at the API level to the
> MDIO bus drivers.
> 
> [...]

Here is the summary with links:
  - [net-next,01/12] net: dsa: mt7530: Separate C22 and C45 MDIO bus transactions
    https://git.kernel.org/netdev/net-next/c/defa2e541894
  - [net-next,02/12] net: sxgbe: Separate C22 and C45 transactions
    https://git.kernel.org/netdev/net-next/c/e078c8b5eab7
  - [net-next,03/12] net: nixge: Separate C22 and C45 transactions
    https://git.kernel.org/netdev/net-next/c/064a6a887f95
  - [net-next,04/12] net: macb: Separate C22 and C45 transactions
    https://git.kernel.org/netdev/net-next/c/a4d65b1de2a2
  - [net-next,05/12] ixgbe: Separate C22 and C45 transactions
    https://git.kernel.org/netdev/net-next/c/308c8ffd5a7d
  - [net-next,06/12] ixgbe: Use C45 mdiobus accessors
    https://git.kernel.org/netdev/net-next/c/ab2960f0fdfe
  - [net-next,07/12] net: hns: Separate C22 and C45 transactions
    https://git.kernel.org/netdev/net-next/c/41799a77f4bb
  - [net-next,08/12] amd-xgbe: Separate C22 and C45 transactions
    https://git.kernel.org/netdev/net-next/c/070f6186a2f1
  - [net-next,09/12] amd-xgbe: Replace MII_ADDR_C45 with XGBE_ADDR_C45
    https://git.kernel.org/netdev/net-next/c/47e61593f367
  - [net-next,10/12] net: dsa: sja1105: C45 only transactions for PCS
    https://git.kernel.org/netdev/net-next/c/ae271547bba6
  - [net-next,11/12] net: dsa: sja1105: Separate C22 and C45 transactions for T1 MDIO bus
    https://git.kernel.org/netdev/net-next/c/c708e1350370
  - [net-next,12/12] net: ethernet: renesas: rswitch: C45 only transactions
    https://git.kernel.org/netdev/net-next/c/95331514d95f

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
