Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3579BE32E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 10:54:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 027D2606C8;
	Wed,  6 Nov 2024 09:54:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uzFVfXuLyUeU; Wed,  6 Nov 2024 09:53:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39688608A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730886839;
	bh=LMxbCHgkkvx5XhMu4SkqdL5emWrivIpJuB42LR9Yen4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=28E8HMpGudKN+nEEQz9ixqPR4GobqPvMVrqvQXB9TxW8SgJjLOBG/SpIlkcvi5MrH
	 0TovS4d9dTZNy5Qk/9cxuSSIU36FkqCcNI6Gu2lvDCIocY254BgabXYJJbuGaGeEdO
	 XpqhZX6X8E5Cr1/dt0PIheSzJB5ihILtngOOhZRzmBuAMxVasjIwKwfcfuXz7BMpa6
	 WPoMS5ocn5JJ9/JB1hX+VeZMw4D++F88akBYh9WJRi8Pm7deaN8xuMFXbALalaAevc
	 I7xyUTDPmxImugTC6Rha1uln+yGWoucOPpYhHpcDzcKDud/KXLFxPG68tQCODRIgoj
	 ey63qVXAqskpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39688608A1;
	Wed,  6 Nov 2024 09:53:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5FE843B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 09:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 40D3760676
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 09:53:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L6Yd-ujFNqUG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 09:53:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 972ED60652
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 972ED60652
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 972ED60652
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 09:53:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 3D6BCA42B64;
 Wed,  6 Nov 2024 09:51:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDE18C4CECD;
 Wed,  6 Nov 2024 09:53:52 +0000 (UTC)
Date: Wed, 6 Nov 2024 09:53:50 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 sridhar.samudrala@intel.com
Message-ID: <20241106095350.GJ4507@kernel.org>
References: <20241031060009.38979-1-michal.swiatkowski@linux.intel.com>
 <20241031060009.38979-2-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241031060009.38979-2-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730886833;
 bh=bPepb+/BgfiR6bYytxcaRaPssEkGU1xCaygb9x+TGik=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JSfFNmNQN6bbBo3K1K4YytOYVWdAtrS2O0ewxrIUQ3317WiNL0A+gzKNNkoIsYSwJ
 OGpH6H0oGG9PXsjl/vj6sq3+iwLJKECncsGT5vgW4TWwmcjHrk4u6yjpY9ZWkJu3PC
 jYW4z5Jku1drRdlMqAwjgwVv2eRyTOyrVuojSK+2b8IXV+vbY43kjCzcu8C7FFlHCp
 YFetnctpz/B5n+V1RLKMV7DC/9/52CCkjI4Alj3Zq3Xpbyhdv96Ehf3p6Cg4PIet5e
 G0LCOFPTQfwu2igLqfty4Ad08YPP68QSzs1V13hkGq5oSJ+ks29BFl2lPiN9acC3Wu
 SvzOedS2KvHyA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=JSfFNmNQ
Subject: Re: [Intel-wired-lan] [iwl-next v1 1/3] ice: support max_io_eqs for
 subfunction
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

On Thu, Oct 31, 2024 at 07:00:07AM +0100, Michal Swiatkowski wrote:
> Implement get and set for the maximum IO event queues for SF.
> It is used to derive the maximum number of Rx/Tx queues on subfunction
> device.
> 
> If the value isn't set when activating set it to the low default value.
> 
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/devlink/port.c | 37 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice.h          |  2 +
>  2 files changed, 39 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/port.c b/drivers/net/ethernet/intel/ice/devlink/port.c

...

> @@ -548,6 +575,14 @@ ice_activate_dynamic_port(struct ice_dynamic_port *dyn_port,
>  	if (dyn_port->active)
>  		return 0;
>  
> +	if (!dyn_port->vsi->max_io_eqs) {
> +		err = ice_devlink_port_fn_max_io_eqs_set(&dyn_port->devlink_port,
> +							 ICE_SF_DEFAULT_EQS,
> +							 extack);

Hi Michal,

I am a little confused about the relationship between this,
where ICE_SF_DEFAULT_EQS is 8, and the following check in
ice_devlink_port_fn_max_io_eqs_set().

	if (max_io_eqs > num_online_cpus()) {
		NL_SET_ERR_MSG_MOD(extack, "Supplied value out of range");
		return -EINVAL;
	}

What is the behaviour on systems with more than 8 online CPUs?

> +		if (err)
> +			return err;
> +	}
> +
>  	err = ice_sf_eth_activate(dyn_port, extack);
>  	if (err)
>  		return err;

...

> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 70d5294a558c..ca0739625d3b 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -109,6 +109,7 @@
>  #define ICE_Q_WAIT_MAX_RETRY	(5 * ICE_Q_WAIT_RETRY_LIMIT)
>  #define ICE_MAX_LG_RSS_QS	256
>  #define ICE_INVAL_Q_INDEX	0xffff
> +#define ICE_SF_DEFAULT_EQS	8
>  
>  #define ICE_MAX_RXQS_PER_TC		256	/* Used when setting VSI context per TC Rx queues */
>  

...
