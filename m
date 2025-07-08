Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69636AFCF69
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 17:38:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41437811A1;
	Tue,  8 Jul 2025 15:38:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iQKJDWe3Hjo1; Tue,  8 Jul 2025 15:38:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4A7E811FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751989112;
	bh=Y+4EaLYxq3yGGMrrPkwRZ6VXgG0mi34fyI7a1PxeFas=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yzQuQbJlwTkbxWrEurrsoisa7ZoDpwFmJx0DUSmzlirdCpD8vvq7Z8+ep/qxcZZwl
	 3jaH23Y2N6d/x+Si85sAvja1y3SzFVP22ZitbyLc+eg3j4CRN2HuXoohnJA6QFzNzq
	 EGegk3Xzx1/2x7vpB/9puauQ8SNQJPMwQ0WsbbuOxnX6WcY1QrTNz6bE1arAj7gnAY
	 qESW3nv7teJaKvsENThR58WItK7nm4NArKMycTwXAZyuBssmhfom6Kx+2yiCfK7vX5
	 XoqoxFvhAE4L7r207rzMJJEFXDC7/dYxDlLtI+tLQ8syE6B+WJmDVZt1p6limIH1rG
	 P91kpPE9rfLqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4A7E811FC;
	Tue,  8 Jul 2025 15:38:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 468D515F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 15:38:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3865860DFE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 15:38:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p8ze0y9Kiu-b for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 15:38:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ADD0060641
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADD0060641
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADD0060641
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 15:38:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 32F116113B;
 Tue,  8 Jul 2025 15:38:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D598C4CEED;
 Tue,  8 Jul 2025 15:38:26 +0000 (UTC)
Date: Tue, 8 Jul 2025 16:38:24 +0100
From: Simon Horman <horms@kernel.org>
To: Yuto Ohnuki <ytohnuki@amazon.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kohei Enju <enjuk@amazon.com>
Message-ID: <20250708153824.GM452973@horms.kernel.org>
References: <20250707180116.44657-2-ytohnuki@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250707180116.44657-2-ytohnuki@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1751989108;
 bh=oDEtOf0DaTfsiKg+dTzSTHuTGeQPH+ZbPyfhdxIehAo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n9PbLbQ9DxyvF2ZYdhO1L4fP9gUwKnXhGM1vEeabzvph5jN6AV4yyjNFpoTbw47f8
 S+Q8aAyfjkbCC4pqyV/qXa6M7F1y3K4Bp4CO5nSq/brqJz1Zci6a2rEyTsrvDzMyNY
 nHwAL0wmnYEM6YQF+Ij9iWqGjwWDaozG7oiav3//lv4qzSibydlDld+Ll1w8wng+m3
 bwVM80Xtw47Kh394C0tlvIXGvzgHgG6G/pcy+Rulh9/EueQA+imWyC32h9wvtz78ay
 U1Dh1lp4MfCN4dJ04q+S0S8YVRp1xsdKJP5ajdH4exlxyhPglxhKdE/gq20mPJuB2g
 Wc7OXHmbYDqOA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=n9PbLbQ9
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] igbvf: remove unused
 fields from struct igbvf_adapter
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

On Mon, Jul 07, 2025 at 07:01:17PM +0100, Yuto Ohnuki wrote:
> Remove following unused fields from struct igbvf_adapter that are never
> referenced in the driver.
> 
> - blink_timer
> - eeprom_wol
> - fc_autoneg
> - int_mode
> - led_status
> - mng_vlan_id
> - polling_interval
> - rx_dma_failed
> - test_icr
> - test_rx_ring
> - test_tx_ring
> - tx_dma_failed
> - tx_fifo_head
> - tx_fifo_size
> - tx_head_addr
> 
> Also removed the following fields from struct igbvf_adapter since they
> are never read or used after initialization by igbvf_probe() and igbvf_sw_init().
> 
> - bd_number
> - rx_abs_int_delay
> - tx_abs_int_delay
> - rx_int_delay
> - tx_int_delay
> 
> This changes simplify the igbvf driver by removing unused fields, which
> improves maintenability.
> 
> Tested-by: Kohei Enju <enjuk@amazon.com>
> Signed-off-by: Yuto Ohnuki <ytohnuki@amazon.com>
> ---
>  drivers/net/ethernet/intel/igbvf/igbvf.h  | 25 -----------------------
>  drivers/net/ethernet/intel/igbvf/netdev.c |  7 -------
>  2 files changed, 32 deletions(-)

Less is more :)

Reviewed-by: Simon Horman <horms@kernel.org>

