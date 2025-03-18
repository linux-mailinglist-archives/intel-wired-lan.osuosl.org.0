Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71951A675BD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 15:00:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64A9560669;
	Tue, 18 Mar 2025 14:00:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i8x8ETgidSRN; Tue, 18 Mar 2025 13:59:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A69960AE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742306399;
	bh=JX3jBPSWfZ1VHVEuwVLFk29glcDhG+NK1uKatT1/fjI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sg/JA8/IIZFMLwoIR56l6VI8e2PD+u374PjXMm6688/QpJNTr4yN3Fk24e3hj3rs/
	 36koI5/Tg1IVaSb7vq5LiQ/1m8KfnraPheOkP9jEMOE3c05DPLsOKV8sqI4u8p3YIC
	 Qg7FRpYXvMafQcLICV22MMi+7wRJmH4+XGaetLt1B0t9sHqQdtiunwuK1WuJ1SJFgs
	 CCAY2UZlrJOv2iKSO+uMvH4QsPTkJJa3YrL50lePECK7jtH/H2oiNY95FU91BN54Eq
	 x8qrO4VD8s2Itnue4YB9/FLxe4XfNZP9OBy96KtpIDDYk6kNn/hC9kxMaOAKd7lppa
	 AZS2ylitc03bw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A69960AE8;
	Tue, 18 Mar 2025 13:59:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C6513D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 13:59:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2E7040967
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 13:59:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f9M2a0pEguYU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 13:59:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A5462405B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5462405B2
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A5462405B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 13:59:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 783E2A44B68;
 Tue, 18 Mar 2025 13:54:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E44DBC4CEDD;
 Tue, 18 Mar 2025 13:59:49 +0000 (UTC)
Date: Tue, 18 Mar 2025 13:59:47 +0000
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
 Raju Lakkaraju <Raju.Lakkaraju@microchip.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Lasse Johnsen <l@ssejohnsen.me>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Message-ID: <20250318135947.GR688833@kernel.org>
References: <20250310-jk-net-fixes-supported-extts-flags-v1-0-854ffb5f3a96@intel.com>
 <20250310-jk-net-fixes-supported-extts-flags-v1-2-854ffb5f3a96@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250310-jk-net-fixes-supported-extts-flags-v1-2-854ffb5f3a96@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742306394;
 bh=Nv2oYFqOTXkVlqdbynct8r7DC63L/Bx+7ExDdZB11tg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=naGNJt06PGOqLdmvK6CJLnXQQGra4v3zUyPdAMjdASTjH9LhOD/KcGXowGj4LRBYS
 GlAd9jp7Qm2ATN4M302/B8W3nHCeik1NuSBKL4fSo7v8kLKmao16NcIvnOhUZ6hlFY
 qwmuZ48m1tziCFmIcohVeyxCVj/bv+cw60jsIjPoGD8apdYItTT3V955BY1/4XrC9F
 yhmbn5ieYteFZYmyU4+4EmsHn5/jyBBIOt0S9qwUOCAkoCiETVcic221WB5PMk1BJ1
 /fNJLkGBim13YkoJb4DfgWHN1YmSIq/QEyMm5C586dLnOW/747Y+xv16rbdIB0+B7i
 OKVCLHismJZ3A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=naGNJt06
Subject: Re: [Intel-wired-lan] [PATCH net 2/5] renesas: reject
 PTP_STRICT_FLAGS as unsupported
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

+ Shimoda-san

On Mon, Mar 10, 2025 at 03:16:37PM -0700, Jacob Keller wrote:
> The ravb_ptp_extts() function checks the flags coming from the
> PTP_EXTTS_REQUEST ioctl, to ensure that future flags are not accepted on
> accident.
> 
> This was updated to 'honor' the PTP_STRICT_FLAGS in commit 6138e687c7b6
> ("ptp: Introduce strict checking of external time stamp options.").
> However, the driver does not *actually* validate the flags.
> 
> I originally fixed this driver to reject future flags in commit
> 592025a03b34 ("renesas: reject unsupported external timestamp flags"). It
> is still unclear whether this hardware timestamps the rising, falling, or
> both edges of the input signal.
> 
> Accepting requests with PTP_STRICT_FLAGS is a bug, as this could lead to
> users mistakenly assuming a request with PTP_RISING_EDGE actually
> timestamps the rising edge only.
> 
> Reject requests with PTP_STRICT_FLAGS (and hence all PTP_EXTTS_REQUEST2
> requests) until someone with access to the datasheet or hardware knowledge
> can confirm the timestamping behavior and update this driver.
> 
> Fixes: 6138e687c7b6 ("ptp: Introduce strict checking of external time stamp options.")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Adding Shimoda-san who may be able to help coordinate a review if
Niklas and Paul are unavailable for some reason.

> ---
>  drivers/net/ethernet/renesas/ravb_ptp.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/renesas/ravb_ptp.c b/drivers/net/ethernet/renesas/ravb_ptp.c
> index 6e4ef7af27bf31ab2aad8e06a65e0ede6046e3c0..b4365906669f3bd40953813e263aeaafd2e1eb70 100644
> --- a/drivers/net/ethernet/renesas/ravb_ptp.c
> +++ b/drivers/net/ethernet/renesas/ravb_ptp.c
> @@ -179,8 +179,7 @@ static int ravb_ptp_extts(struct ptp_clock_info *ptp,
>  	/* Reject requests with unsupported flags */
>  	if (req->flags & ~(PTP_ENABLE_FEATURE |
>  			   PTP_RISING_EDGE |
> -			   PTP_FALLING_EDGE |
> -			   PTP_STRICT_FLAGS))
> +			   PTP_FALLING_EDGE))
>  		return -EOPNOTSUPP;
>  
>  	if (req->index)
> 
> -- 
> 2.48.1.397.gec9d649cc640
> 
> 
