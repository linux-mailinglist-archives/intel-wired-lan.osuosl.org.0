Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3100CA86A0E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Apr 2025 03:28:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0945441738;
	Sat, 12 Apr 2025 01:28:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G-EJMXNFwAOO; Sat, 12 Apr 2025 01:28:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C00BB414E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744421311;
	bh=CO4vAmMa42zzYOFQ2JuPnYwtW6e38ztGizXtrVq1edk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cGMKXLxVQ7mlpWDRoWT4lcvc6Gwe7oBbWlMAxxnFKaJyFhagCD/BVSjkLGaqNkL5J
	 8TZyFORFMs4CzCGzm/0e6/aguz7jM6FQaWvlOy9W6WduoExOGyeTPJfAbGw2Qq2P3P
	 n7aTU/BHelSnMgXa/pqUjUyQbYdkiW6kGuaY1oTCKBeDn22VDr/JCuXcaBiy89V0K+
	 JkK2sJtd/cFfvD1lfIQzajM2OhB3E0R7UdhKtjzT95ipwlAgExDKnbS1LkoDoc7sRy
	 f07nbj4+amcALnj35Wimtze8CKF02PLtab7H+/ZyznktCOR2ERhi9SQLKB3SBQOj67
	 uqSoQD5OJDlow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C00BB414E7;
	Sat, 12 Apr 2025 01:28:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1CA55138
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Apr 2025 01:28:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2403400E7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Apr 2025 01:28:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jopoTWT1MZaZ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Apr 2025 01:28:29 +0000 (UTC)
X-Greylist: delayed 461 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 12 Apr 2025 01:28:29 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 23A184003A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23A184003A
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23A184003A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Apr 2025 01:28:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id B715868459;
 Sat, 12 Apr 2025 01:20:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2EADC4CEE2;
 Sat, 12 Apr 2025 01:20:45 +0000 (UTC)
Date: Fri, 11 Apr 2025 18:20:44 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Saeed Mahameed <saeedm@nvidia.com>, Leon
 Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>, Bryan
 Whitehead <bryan.whitehead@microchip.com>, UNGLinuxDriver@microchip.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, Paul Barker
 <paul.barker.ct@bp.renesas.com>, Niklas =?UTF-8?B?U8O2ZGVybHVuZA==?=
 <niklas.soderlund@ragnatech.se>, Richard Cochran
 <richardcochran@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>, Russell
 King <linux@armlinux.org.uk>, Andrei Botila <andrei.botila@oss.nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Message-ID: <20250411182044.0ee40963@kernel.org>
In-Reply-To: <20250408-jk-supported-perout-flags-v1-1-d2f8e3df64f3@intel.com>
References: <20250408-jk-supported-perout-flags-v1-0-d2f8e3df64f3@intel.com>
 <20250408-jk-supported-perout-flags-v1-1-d2f8e3df64f3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744420846;
 bh=CoQliKqWOHFzGKP4DchqFP7OVdp1mTfrv/cHHzKnePg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ene4xxBXkuYwEtUfKCDeZCNQW9Xqn8hwwVQ4k/lsQOd3e7aMDfsfd0on6GZcyYpzQ
 b7+Uwtjlo3+dsguHMuOf17/c/C1rTQGgOS2ZnvEwAUr8lT1vwNNTCr4jzPHyqZGX8U
 X/tjMvTlvx8F/O9euitLcAg/olViXuQwC9WWzrRz19n+zhVFp32HDaUQdNi8RRJ+UN
 x4rh4i2BuWNa0P7WglvTJ3kSK/beT0TyjIMQk6/svtSgvkIu67PYoVR4cvEYTWcKba
 OVswweFe4z7/gWfyTv2rven6NbFwiX7YTB/7AUWfcxP+3R9SSR31KaLfzDv0C5tceC
 c8ghQbKeC2yGA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Ene4xxBX
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] net: ptp: introduce
 .supported_extts_flags to ptp_clock_info
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

Sorry for the late nit but the conversion is pretty inconsistent..

On Tue, 08 Apr 2025 13:55:14 -0700 Jacob Keller wrote:
> diff --git a/drivers/net/dsa/mv88e6xxx/ptp.c b/drivers/net/dsa/mv88e6xxx/ptp.c
> index aed4a4b07f34b1643a8bf51c2501d1f61ef0cf0b..4c037d4853fdbb86b5082437efe2ae7308559d66 100644
> --- a/drivers/net/dsa/mv88e6xxx/ptp.c
> +++ b/drivers/net/dsa/mv88e6xxx/ptp.c
> @@ -332,13 +332,6 @@ static int mv88e6352_ptp_enable_extts(struct mv88e6xxx_chip *chip,
>  	int pin;
>  	int err;
>  
> -	/* Reject requests with unsupported flags */
> -	if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
> -				PTP_RISING_EDGE |
> -				PTP_FALLING_EDGE |
> -				PTP_STRICT_FLAGS))
> -		return -EOPNOTSUPP;
> -
>  	/* Reject requests to enable time stamping on both edges. */
>  	if ((rq->extts.flags & PTP_STRICT_FLAGS) &&
>  	    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
> @@ -566,6 +559,11 @@ int mv88e6xxx_ptp_setup(struct mv88e6xxx_chip *chip)
>  	chip->ptp_clock_info.verify	= ptp_ops->ptp_verify;
>  	chip->ptp_clock_info.do_aux_work = mv88e6xxx_hwtstamp_work;
>  
> +	chip->ptp_clock_info.supported_extts_flags = PTP_ENABLE_FEATURE |
> +						     PTP_RISING_EDGE |
> +						     PTP_FALLING_EDGE |
> +						     PTP_STRICT_FLAGS;

Sometimes you leave all the flags be..

>  	if (ptp_ops->set_ptp_cpu_port) {
>  		struct dsa_port *dp;
>  		int upstream = 0;
> diff --git a/drivers/net/dsa/sja1105/sja1105_ptp.c b/drivers/net/dsa/sja1105/sja1105_ptp.c
> index 08b45fdd1d2482b0f1f922aae4ff18db8e279f09..a7e9f9ab7a19a8413f2f450c3b4b3f636a177c67 100644
> --- a/drivers/net/dsa/sja1105/sja1105_ptp.c
> +++ b/drivers/net/dsa/sja1105/sja1105_ptp.c
> @@ -820,13 +820,6 @@ static int sja1105_extts_enable(struct sja1105_private *priv,
>  	if (extts->index != 0)
>  		return -EOPNOTSUPP;
>  
> -	/* Reject requests with unsupported flags */
> -	if (extts->flags & ~(PTP_ENABLE_FEATURE |
> -			     PTP_RISING_EDGE |
> -			     PTP_FALLING_EDGE |
> -			     PTP_STRICT_FLAGS))
> -		return -EOPNOTSUPP;
> -
>  	/* We can only enable time stamping on both edges, sadly. */
>  	if ((extts->flags & PTP_STRICT_FLAGS) &&
>  	    (extts->flags & PTP_ENABLE_FEATURE) &&
> @@ -912,6 +905,9 @@ int sja1105_ptp_clock_register(struct dsa_switch *ds)
>  		.n_pins		= 1,
>  		.n_ext_ts	= 1,
>  		.n_per_out	= 1,
> +		.supported_extts_flags = PTP_ENABLE_FEATURE |
> +					 PTP_EXTTS_EDGES |
> +					 PTP_STRICT_FLAGS,

..sometimes you combine FALLNIG|RISING -> EDGES ..

>  	};
>  
>  	/* Only used on SJA1105 */
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 1fd1ae03eb90960d1e3e20acb0638baecaa995f5..96f68c356fe81b6954653f8903faf433ef6018f5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1624,14 +1624,6 @@ static int ice_ptp_cfg_extts(struct ice_pf *pf, struct ptp_extts_request *rq,
>  	int pin_desc_idx;
>  	u8 tmr_idx;
>  
> -	/* Reject requests with unsupported flags */
> -
> -	if (rq->flags & ~(PTP_ENABLE_FEATURE |
> -			  PTP_RISING_EDGE |
> -			  PTP_FALLING_EDGE |
> -			  PTP_STRICT_FLAGS))
> -		return -EOPNOTSUPP;
> -
>  	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
>  	chan = rq->index;
>  
> @@ -2737,6 +2729,10 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
>  	info->enable = ice_ptp_gpio_enable;
>  	info->verify = ice_verify_pin;
>  
> +	info->supported_extts_flags = PTP_RISING_EDGE |
> +				      PTP_FALLING_EDGE |
> +				      PTP_STRICT_FLAGS;

sometimes you drop ENABLE

> +
>  	switch (pf->hw.mac_type) {
>  	case ICE_MAC_E810:
>  		ice_ptp_set_funcs_e810(pf);
> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
> index f323e1c1989f1bfbbf1f04043c2c0f14ae8c716f..7dd5bf02ca32506666ce422ae3da23e66b0adfca 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
> @@ -502,13 +502,6 @@ static int igb_ptp_feature_enable_82580(struct ptp_clock_info *ptp,
>  
>  	switch (rq->type) {
>  	case PTP_CLK_REQ_EXTTS:
> -		/* Reject requests with unsupported flags */
> -		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
> -					PTP_RISING_EDGE |
> -					PTP_FALLING_EDGE |
> -					PTP_STRICT_FLAGS))
> -			return -EOPNOTSUPP;
> -
>  		/* Both the rising and falling edge are timestamped */
>  		if (rq->extts.flags & PTP_STRICT_FLAGS &&
>  		    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
> @@ -658,13 +651,6 @@ static int igb_ptp_feature_enable_i210(struct ptp_clock_info *ptp,
>  
>  	switch (rq->type) {
>  	case PTP_CLK_REQ_EXTTS:
> -		/* Reject requests with unsupported flags */
> -		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
> -					PTP_RISING_EDGE |
> -					PTP_FALLING_EDGE |
> -					PTP_STRICT_FLAGS))
> -			return -EOPNOTSUPP;
> -
>  		/* Reject requests failing to enable both edges. */
>  		if ((rq->extts.flags & PTP_STRICT_FLAGS) &&
>  		    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
> @@ -1356,6 +1342,10 @@ void igb_ptp_init(struct igb_adapter *adapter)
>  		adapter->ptp_caps.n_per_out = IGB_N_PEROUT;
>  		adapter->ptp_caps.n_pins = IGB_N_SDP;
>  		adapter->ptp_caps.pps = 0;
> +		adapter->ptp_caps.supported_extts_flags = PTP_ENABLE_FEATURE |
> +							  PTP_RISING_EDGE |
> +							  PTP_FALLING_EDGE |
> +							  PTP_STRICT_FLAGS;
>  		adapter->ptp_caps.pin_config = adapter->sdp_config;
>  		adapter->ptp_caps.adjfine = igb_ptp_adjfine_82580;
>  		adapter->ptp_caps.adjtime = igb_ptp_adjtime_82576;
> @@ -1378,6 +1368,8 @@ void igb_ptp_init(struct igb_adapter *adapter)
>  		adapter->ptp_caps.n_ext_ts = IGB_N_EXTTS;
>  		adapter->ptp_caps.n_per_out = IGB_N_PEROUT;
>  		adapter->ptp_caps.n_pins = IGB_N_SDP;
> +		adapter->ptp_caps.supported_extts_flags = PTP_EXTTS_EDGES |
> +							  PTP_STRICT_FLAGS;

sometimes you both drop the enabled and combine the edges 

>  		adapter->ptp_caps.pps = 1;
>  		adapter->ptp_caps.pin_config = adapter->sdp_config;
>  		adapter->ptp_caps.adjfine = igb_ptp_adjfine_82580;

No preference which version you pick but shouldn't we go with one?
Or is this on purpose to show we have no preference?
-- 
pw-bot: cr
