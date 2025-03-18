Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF6AA675E6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 15:07:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F188080D48;
	Tue, 18 Mar 2025 14:07:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3xMn16O1K1QQ; Tue, 18 Mar 2025 14:07:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5300280CFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742306829;
	bh=f1akVtA8rMMDhUwSFGTZZ51RQmpHNhw/SKl+u1Azh5g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IhYJi3yOaU3AfL79ZdKInCUVrV6eXLRJSqL2CWliot8XwnPFDxniDWWJMzWDhzYkW
	 WwiVW/BcG4MNtU82itnSixMbVEG9uzbCUXcMy4Pr2kXdF3D7Xi7eDcD58dI+lEksQm
	 nSUcBCoG04WUmVzjCKfvZXiGybuLsZgux0bVikOAOV96NwadOn7L/IiATKVPPBzpo0
	 HZovqiORFDgp6wSV154zqYvup4AX5RxZRO5R85yvCqgylDvWMgakUb6rG5EbB4VV5G
	 s9HFyXDsbc8VPiKhUWHmKYji5egkt8QWd+unsSiziH+9wSPZhOZ9MScR2Vji5QDBDb
	 hSFklQTMK7P3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5300280CFF;
	Tue, 18 Mar 2025 14:07:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C1F5D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:07:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 410B740580
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:07:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fotxg7qd6UIj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 14:07:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4F7E9409A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F7E9409A7
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F7E9409A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:07:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 26EECA45F0B;
 Tue, 18 Mar 2025 14:01:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B519EC4AF09;
 Tue, 18 Mar 2025 14:06:59 +0000 (UTC)
Date: Tue, 18 Mar 2025 14:06:57 +0000
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Ruud Bos <kernel.hbk@gmail.com>,
 Paul Barker <paul.barker.ct@bp.renesas.com>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Bryan Whitehead <bryan.whitehead@microchip.com>,
 UNGLinuxDriver@microchip.com,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Lasse Johnsen <l@ssejohnsen.me>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
Message-ID: <20250318140657.GV688833@kernel.org>
References: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
 <20250312-jk-net-fixes-supported-extts-flags-v2-1-ea930ba82459@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250312-jk-net-fixes-supported-extts-flags-v2-1-ea930ba82459@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742306824;
 bh=x+ln5AfDExf7TBvKk6FVfaJvANPiM17BmFZInPNzSpg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FKHM9POv4Gf+HtL0UXHmuYb/RxiVCglZ02a6atCv6JB2Q+j0tBiztjw90Sp5vxiMH
 bwt2waGkGiqMbEHLpToBOejy6Hd6JK2sIywntO6H6yKqrF2vtAwQyF2inFd42BX8Pd
 CPAbH0a43AOuHLVimgnBW8xxk/YPvP/JrXl/h3KtZs4ZTW5rerYGbpEUzxbEYfml5F
 a1WJfVdimDvGl4RgsRlLvhTS8UsQCV7UwLoWzTYIiTtwoeVayiqFokEcqnd+eEsGBl
 IuMec359zCbBG3KHPIC8sKyY4fp9fvHIVlKM8nDZgVO8LDlDdfn3X6o0/FWPgmhNt6
 MFmGxpDYPILsA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FKHM9POv
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/5] igb: reject invalid
 external timestamp requests for 82580-based HW
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

On Wed, Mar 12, 2025 at 03:15:50PM -0700, Jacob Keller wrote:
> The igb_ptp_feature_enable_82580 function correctly checks that unknown
> flags are not passed to the function. However, it does not actually check
> PTP_RISING_EDGE or PTP_FALLING_EDGE when configuring the external timestamp
> function.
> 
> The data sheet for the 82580 product says:
> 
>   Upon a change in the input level of one of the SDP pins that was
>   configured to detect Time stamp events using the TSSDP register, a time
>   stamp of the system time is captured into one of the two auxiliary time
>   stamp registers (AUXSTMPL/H0 or AUXSTMPL/H1).
> 
>   For example to define timestamping of events in the AUXSTMPL0 and
>   AUXSTMPH0 registers, Software should:
> 
>   1. Set the TSSDP.AUX0_SDP_SEL field to select the SDP pin that detects
>      the level change and set the TSSDP.AUX0_TS_SDP_EN bit to 1.
> 
>   2. Set the TSAUXC.EN_TS0 bit to 1 to enable timestamping
> 
> The same paragraph is in the i350 and i354 data sheets.
> 
> The wording implies that the time stamps are captured at any level change.
> There does not appear to be any way to only timestamp one edge of the
> signal.
> 
> Reject requests which do not set both PTP_RISING_EDGE and PTP_FALLING_EDGE
> when operating under PTP_STRICT_FLAGS mode via PTP_EXTTS_REQUEST2.
> 
> Fixes: 38970eac41db ("igb: support EXTTS on 82580/i354/i350")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

