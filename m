Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4DB840348
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jan 2024 11:56:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7ED6D830C1;
	Mon, 29 Jan 2024 10:56:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7ED6D830C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706525762;
	bh=zpNheXLAVFMDhEM4sxBkmZejlD+zFADXBILP2IoHG1U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=whc6wfk6yL6qTLoM7H+kFl/COf85INvFc+IeOIpxB+M/287FuDJKmQELVgjbqJWbl
	 m8eX2dXA6CpI+qh+/EgOF7xEukQ3Nx9unCSI1q+4GMfOrmKxAVwbyQEuWJQBU8nAX5
	 9HMcrRTfZFAdGd5O+giU161Ja4XfARSVbTgsgZLwhmVuVHXZfv+9nvFffHNxN/DHPI
	 FFOf8wpIEMSaTG86il9xD0yhud36m4hVujbKafc/vSAgd3ScwoT53w7vd8/RaKxd1D
	 8H3AtoS9bRI516mVoNOp1TMu8nGvTzAlKpuyLEMLz54+t4MqJ7nl93HaQJLZSOgPye
	 Qc40v6iWq+Qtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DqmWrheBzf_L; Mon, 29 Jan 2024 10:56:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A241082FE4;
	Mon, 29 Jan 2024 10:56:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A241082FE4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A651B1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 10:55:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 88B12400DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 10:55:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88B12400DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SIxleO_teEL4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jan 2024 10:55:51 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67031400D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 10:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67031400D8
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 07EB5CE10AC;
 Mon, 29 Jan 2024 10:55:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB8EDC433C7;
 Mon, 29 Jan 2024 10:55:43 +0000 (UTC)
Date: Mon, 29 Jan 2024 10:55:41 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240129105541.GH401354@kernel.org>
References: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
 <20240125125314.852914-5-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240125125314.852914-5-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706525745;
 bh=8T8pTki2cBRkv1Ls62f1/Lkua7FBs03HkkD51F+WL44=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kq8GLyxKYAx0vbFdAxXiBvLLvv+4wjlAAFsWEq1lpXaLtv8h9taxNzg3Q2F4vVlUd
 SyppyWK51uRy3vRSATXM0pusJ5OXG1bWRQioQGqWwcoFd+ruJZ1rE0EiehSLIVaD4x
 eY96AaWo7poe8tTtabrLrJBQrK2OoNecSZERG1ba2AxPiml8w0/9/dNSF7pb4eQBRq
 v5c4oK3pSNFfZI6Ge8iasRetyT6rMqb7qEc9NbgnbSnjL3u0Ifmq6yYeVzRFRol+vF
 EsmW/fHaqHCZYlqlx07cW73kO9wEGanl4ioOYc3X7uyzG0WSyRLNRblzN2VVn1znz/
 JsHYIh24m7Csg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Kq8GLyxK
Subject: Re: [Intel-wired-lan] [iwl-next v1 4/8] ice: control default Tx
 rule in lag
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>, netdev@vger.kernel.org,
 sridhar.samudrala@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 25, 2024 at 01:53:10PM +0100, Michal Swiatkowski wrote:
> Tx rule in switchdev was changed to use PF instead of additional control
> plane VSI. Because of that during lag we should control it. Control
> means to add and remove the default Tx rule during lag active/inactive
> switching.
> 
> It can be done the same way as default Rx rule.

Hi Michal,

Can I confirm that LAG TX/RX works both before and after this patch?

> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 39 ++++++++++++++++++------
>  drivers/net/ethernet/intel/ice/ice_lag.h |  3 +-
>  2 files changed, 32 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c

...

> @@ -266,9 +274,22 @@ ice_lag_cfg_dflt_fltr(struct ice_lag *lag, bool add)
>  {
>  	u32 act = ICE_SINGLE_ACT_VSI_FORWARDING |
>  		ICE_SINGLE_ACT_VALID_BIT | ICE_SINGLE_ACT_LAN_ENABLE;
> +	int err;
> +
> +	err = ice_lag_cfg_fltr(lag, act, lag->pf_recipe, &lag->pf_rx_rule_id,
> +			       ICE_FLTR_RX, add);
> +	if (err)
> +		return err;
> +
> +	err = ice_lag_cfg_fltr(lag, act, lag->pf_recipe, &lag->pf_tx_rule_id,
> +			       ICE_FLTR_TX, add);
> +	if (err) {
> +		ice_lag_cfg_fltr(lag, act, lag->pf_recipe, &lag->pf_rx_rule_id,
> +				 ICE_FLTR_RX, !add);
> +		return err;
> +	}
>  
> -	return ice_lag_cfg_fltr(lag, act, lag->pf_recipe,
> -				&lag->pf_rule_id, add);
> +	return 0;
>  }

nit: perhaps this could be more idiomatically written using a
     goto to unwind on error.

...
