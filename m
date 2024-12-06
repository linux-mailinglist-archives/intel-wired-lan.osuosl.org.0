Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C5B9E6F50
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Dec 2024 14:30:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8578405A2;
	Fri,  6 Dec 2024 13:30:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H8doHXo7Quz8; Fri,  6 Dec 2024 13:30:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE1554058F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733491812;
	bh=+gSHMJPqwknrlZThILNHo1cjSyKqKaKXWrEVwZ0iQgs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h4WhCRT32Q9JrZFBnquVo1LdwYkm0MBN896Vq20h1zaVi23and2w4M/kF0b/IkSsB
	 w5xH5clESr/CRKHuIKU9uPRMKoWaHRVwxJjrbFHiQg/+UMpj3k7TvjytVUlSgGetEx
	 NKaGr6y5wyTLlgX3BEou3FN7fXQEO+8umYLYI1qCzjRN18fh5qRVjxgKpjrmM9VSIS
	 qBHs/pRIc5rnLygZZW1CbMGTxuyHFpRFm2jYhJgj6nc+Lgo2nA7D3B9mIy9qbyZLqC
	 HLNcSwWwy7OFLgkbDaPS1aEL4K2SzGKRXUdBkjkvPc/SODS0x4us+cm+YLaZEdTOjy
	 jrbmUIE9CWhBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE1554058F;
	Fri,  6 Dec 2024 13:30:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E5150ED2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 13:30:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E0598812DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 13:30:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A_KQe3VXZldB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Dec 2024 13:30:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 056D0812DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 056D0812DB
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 056D0812DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 13:30:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 93167A44248;
 Fri,  6 Dec 2024 13:28:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6329EC4CED1;
 Fri,  6 Dec 2024 13:30:05 +0000 (UTC)
Date: Fri, 6 Dec 2024 13:30:03 +0000
From: Simon Horman <horms@kernel.org>
To: Anton Nadezhdin <anton.nadezhdin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, Jacob Keller <jacob.e.keller@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Message-ID: <20241206133003.GQ2581@kernel.org>
References: <20241204180709.307607-1-anton.nadezhdin@intel.com>
 <20241204180709.307607-2-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204180709.307607-2-anton.nadezhdin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1733491807;
 bh=hSjn+Yo+zbCHri+Wt94Yceiwsk7Bbtsp1TsYWTdFm3U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MhAlIXxwWNMU18OtfVKXk2rMjaaFmUmah/GrAgIBWbrYgwYOJtJcg7nf2fvMCnG3L
 cCEhAw5sQ7g4Mwgjt9nT2HkMo/OBpaNmGKOLYDtLt/V4t4rg6LvDAEu/+Wr2t3/pGW
 iw4XhiUyCEhUMGgX6ahD3WJ/pdsaUgk9QDc8x3Mx5K09m4kAvqnISM85AIhQtfBojT
 KZmky/BkXwQ3UKEQkkY8KDUXMBt13qPfokh+UapdQAXj2eQQViQCHUhx93LkNyqqgl
 x4gKmPsBV2cNu5zMRO5skr1EhGYGFfyH2g/wcP/giLG28tarBPPJ3ZUhHGbHtEsYRR
 wQFgMVS1zkXUA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=MhAlIXxw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/5] ice: use
 rd32_poll_timeout_atomic in ice_read_phy_tstamp_ll_e810
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

On Wed, Dec 04, 2024 at 01:03:44PM -0500, Anton Nadezhdin wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_read_phy_tstamp_ll_e810 function repeatedly reads the PF_SB_ATQBAL
> register until the TS_LL_READ_TS bit is cleared. This is a perfect
> candidate for using rd32_poll_timeout. However, the default implementation
> uses a sleep-based wait.
> 
> Add a new rd32_poll_timeout_atomic macro which is based on the non-sleeping
> read_poll_timeout_atomic implementation. Use this to replace the loop
> reading in the ice_read_phy_tstamp_ll_e810 function.
> 
> This will also be used in the future when low latency PHY timer updates are
> supported.
> 
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_osdep.h  |  3 +++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 30 +++++++++------------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 +-
>  3 files changed, 17 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_osdep.h b/drivers/net/ethernet/intel/ice/ice_osdep.h
> index b9f383494b3f..9bb343de80a9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_osdep.h
> +++ b/drivers/net/ethernet/intel/ice/ice_osdep.h
> @@ -26,6 +26,9 @@
>  
>  #define rd32_poll_timeout(a, addr, val, cond, delay_us, timeout_us) \
>  	read_poll_timeout(rd32, val, cond, delay_us, timeout_us, false, a, addr)
> +#define rd32_poll_timeout_atomic(a, addr, val, cond, delay_us, timeout_us) \
> +	read_poll_timeout_atomic(rd32, val, cond, delay_us, timeout_us, false, \
> +				 a, addr)
>  
>  #define ice_flush(a)		rd32((a), GLGEN_STAT)
>  #define ICE_M(m, s)		((m ## U) << (s))
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index e55aeab0975c..b9cf8ce9644a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -4868,32 +4868,28 @@ static int
>  ice_read_phy_tstamp_ll_e810(struct ice_hw *hw, u8 idx, u8 *hi, u32 *lo)
>  {
>  	u32 val;
> -	u8 i;
> +	u8 err;
>  
>  	/* Write TS index to read to the PF register so the FW can read it */
>  	val = FIELD_PREP(TS_LL_READ_TS_IDX, idx) | TS_LL_READ_TS;
>  	wr32(hw, PF_SB_ATQBAL, val);
>  
>  	/* Read the register repeatedly until the FW provides us the TS */
> -	for (i = TS_LL_READ_RETRIES; i > 0; i--) {
> -		val = rd32(hw, PF_SB_ATQBAL);
> -
> -		/* When the bit is cleared, the TS is ready in the register */
> -		if (!(FIELD_GET(TS_LL_READ_TS, val))) {
> -			/* High 8 bit value of the TS is on the bits 16:23 */
> -			*hi = FIELD_GET(TS_LL_READ_TS_HIGH, val);
> +	err = rd32_poll_timeout_atomic(hw, PF_SB_ATQBAL, val,
> +				       !FIELD_GET(TS_LL_READ_TS, val),
> +				       10, TS_LL_READ_TIMEOUT);

Hi Jakob and Karol,

A minor nit from my side: rd32_poll_timeout_atomic may return a negative
error value but err is unsigned. This doesn't seem ideal.

Flagged by Smatch

> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to read PTP timestamp using low latency read\n");
> +		return err;
> +	}
>  
> -			/* Read the low 32 bit value and set the TS valid bit */
> -			*lo = rd32(hw, PF_SB_ATQBAH) | TS_VALID;
> -			return 0;
> -		}
> +	/* High 8 bit value of the TS is on the bits 16:23 */
> +	*hi = FIELD_GET(TS_LL_READ_TS_HIGH, val);
>  
> -		udelay(10);
> -	}
> +	/* Read the low 32 bit value and set the TS valid bit */
> +	*lo = rd32(hw, PF_SB_ATQBAH) | TS_VALID;
>  
> -	/* FW failed to provide the TS in time */
> -	ice_debug(hw, ICE_DBG_PTP, "Failed to read PTP timestamp using low latency read\n");
> -	return -EINVAL;
> +	return 0;
>  }
>  
>  /**

...
