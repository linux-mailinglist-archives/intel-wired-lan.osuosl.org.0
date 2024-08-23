Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6134495D7E1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 22:33:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E14841309;
	Fri, 23 Aug 2024 20:33:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EOgMwb7iforS; Fri, 23 Aug 2024 20:33:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2382041305
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724445228;
	bh=hI8eS6AirCJNgGieTTUBTviIU/S3XybYWf2Yv3HqnCA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a3XPlYubzOJ2rAO3b7xnw7mARARcYrHH6Um9a0a/WOD4fm4A5f7OW+xtk67Fj8LKw
	 mjAO+SgoJFND87ikxo0phjq395CEk2TssKPnMPi0gVh4cIJrRu1+tgfYkssnILlyBs
	 5/QwEU4n34ulWzELEMh6RcPbdvcglqM2JzW7q0E6BBGIJPfwp6HQ44jZ8UpggD7lzM
	 Q342dlIer6cryONKOOVrazRDMiixaPl1PLebtqOT+EMcvWMfUw6LcBqPazF4OXpmFN
	 PP/aJ3JPUBDpEr+Ifw8DlHdARlWcResZObeutaWkT2XCK4Z9olRydzLzjxx+8FbtXU
	 mPrKwuXcf4lBQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2382041305;
	Fri, 23 Aug 2024 20:33:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 28A461BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 20:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2356241302
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 20:33:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IG0kVlRvKyb3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 20:33:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D806D412FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D806D412FA
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D806D412FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 20:33:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 6B53FCE125F;
 Fri, 23 Aug 2024 20:33:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDC2FC4AF09;
 Fri, 23 Aug 2024 20:33:39 +0000 (UTC)
Date: Fri, 23 Aug 2024 21:33:37 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240823203337.GH2164@kernel.org>
References: <20240820102402.576985-8-karol.kolacinski@intel.com>
 <20240820102402.576985-11-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240820102402.576985-11-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724445221;
 bh=AUYPCHt3tYNY9yFLugWcI1QD2hn6lJfc/4jgQhr4Szg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VtZMp+jSxLRK32WyV/0NUGBkmuXlJfkzdQcMcR1VZ6k1cCZIKK9prg5wG7xi4I4aH
 RJY0atKWWJxxqo7kZTJvFhXx7DvKxXV5w/LW17Qw+CzIWBHoFPi3eB5/qmMbS/dw6V
 PCiOij8cESjSCC/qAy28Z4sP+hk/OcXMApjyGQyhGLpYthWjHlUiGjGvriZbLLlfTG
 v/1TkV8WzXvLx71y/ir/gDB1ccqJOuxIrNywrO4y1wRZSWo3r+2H5M1BownBQB7WUZ
 nIoxjnfFmYAhjx2EVWLV6VU+7zugTn32st5IsXF6EpZMVU66Nj4bsvZWDrGPyCoFfd
 Veyx4pptmJwqQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=VtZMp+jS
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 3/6] ice: Implement PTP
 support for E830 devices
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
Cc: Paul Greenwalt <paul.greenwalt@intel.com>,
 Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org, Milena Olech <milena.olech@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 20, 2024 at 12:21:50PM +0200, Karol Kolacinski wrote:
> From: Michal Michalik <michal.michalik@intel.com>
> 
> Add specific functions and definitions for E830 devices to enable
> PTP support.
> Introduce new PHY model ICE_PHY_E830.
> E830 devices support direct write to GLTSYN_ registers without shadow
> registers and 64 bit read of PHC time.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Co-developed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c

...

> @@ -1405,10 +1416,11 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
>  
>  	switch (hw->mac_type) {
>  	case ICE_MAC_E810:
> -		/* Do not reconfigure E810 PHY */
> +	case ICE_MAC_E830:
> +		/* Do not reconfigure E810 or E830 PHY */
>  		return;
> -	case ICE_MAC_GENERIC_3K_E825:
>  	case ICE_MAC_GENERIC:
> +	case ICE_MAC_GENERIC_3K_E825:
>  		ice_ptp_port_phy_restart(ptp_port);
>  		return;
>  	default:

The re-ordering of ICE_MAC_GENERIC_3K_E825 does not feel like it belongs
in this patch. Perhaps it can be squashed into the earlier patch
in the series that adds the code that is being shuffled here?

...

> @@ -3271,10 +3285,8 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
>  	mutex_init(&ptp_port->ps_lock);
>  
>  	switch (hw->mac_type) {
> -	case ICE_MAC_GENERIC_3K_E825:
> -		return ice_ptp_init_tx_eth56g(pf, &ptp_port->tx,
> -					      ptp_port->port_num);
>  	case ICE_MAC_E810:
> +	case ICE_MAC_E830:
>  		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
>  	case ICE_MAC_GENERIC:
>  		kthread_init_delayed_work(&ptp_port->ov_work,
> @@ -3282,6 +3294,9 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
>  
>  		return ice_ptp_init_tx_e82x(pf, &ptp_port->tx,
>  					    ptp_port->port_num);
> +	case ICE_MAC_GENERIC_3K_E825:
> +		return ice_ptp_init_tx_eth56g(pf, &ptp_port->tx,
> +					      ptp_port->port_num);
>  	default:
>  		return -ENODEV;
>  	}

Ditto.

...
