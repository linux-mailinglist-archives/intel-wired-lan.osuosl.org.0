Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8AA99B5D4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Oct 2024 17:13:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD7E16062F;
	Sat, 12 Oct 2024 15:13:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VhIK79ek1pCq; Sat, 12 Oct 2024 15:13:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC3B660635
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728745992;
	bh=6J9fZLN5p4L488ZWAb4UsOk8m/WaeeXKFAtqroslj4M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eVYfX9/vS/3GyRe7UcPVeT/mUn4WGTJmwqqlcjL3bjXbHRPcJpsvZeGuRUaaD410X
	 TXQ+iZUX79n2XN5Qnv+TSG5zfRlB7W0wSzZXsRg6cLCFfe+GCMQRFGP/VfmaJ2T22O
	 l7QEUwpKsXm7Y2FTVijpAlRm0rilQQij6rop4OCxYGVhJzeu0lib5HwydmfoWYVQA3
	 xlYqDMdm9gVXqrWz1o9WwrQttLOk8p67t79LOi73L8YVQoHOuqK2itVqb9KjD0zE2y
	 /3/TNuCSaLORlYL7AyLRzIXKWQHph+wsQEnCXbfCYs+0YUwuHww+eP+Q++dQs+fo2O
	 RfkHTEspv+5QQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC3B660635;
	Sat, 12 Oct 2024 15:13:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A1BD61BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2024 15:13:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C4F9406A5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2024 15:13:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z791vPzoB42g for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Oct 2024 15:13:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7931F4063B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7931F4063B
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7931F4063B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2024 15:13:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D5D495C56FF;
 Sat, 12 Oct 2024 15:13:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 461B0C4CEC6;
 Sat, 12 Oct 2024 15:13:06 +0000 (UTC)
Date: Sat, 12 Oct 2024 16:13:04 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20241012151304.GK77519@kernel.org>
References: <20240930120402.3468-1-michal.swiatkowski@linux.intel.com>
 <20240930120402.3468-4-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240930120402.3468-4-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728745988;
 bh=X9Ab7tshI5kNRSZBOc7vNlX5e2NKrp5MjV1nHpOxXps=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VsNzXrFkmWrwZ9Zg4euPqC9wPzuNeLZGPnJOSGoR9M/FQrCgRMfZpIJLEn6Gwa1K2
 M+T8J+RGmQqtsAbTdJ6fB6vsa+rwJJFVjIXnkM7TEIXUgykbqjro8iAUtwnPPf+scU
 GVeysPVsb7+UDLm8OjDDTm71atrDf97jh93IGnE6I8luZ2019UNrwMVgH+elIP1yRc
 ZkKA4/EToUDo8qEQBLbsO67fjXhZp1QikZJN8ozAX2zMrOWtV6ZnEdnw5qHLdl3mvP
 WqXvkj17wIH1DBo6CvgYj3mbOLDlaAJwWhfFDXYgk1dATEfI3pFsbqarR7dh1BQdiX
 lcALNa9knsyng==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=VsNzXrFk
Subject: Re: [Intel-wired-lan] [iwl-next v4 3/8] ice: get rid of
 num_lan_msix field
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 David Laight <David.Laight@aculab.com>, intel-wired-lan@lists.osuosl.org,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com, jiri@resnulli.us,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+ David Laight

On Mon, Sep 30, 2024 at 02:03:57PM +0200, Michal Swiatkowski wrote:
> Remove the field to allow having more queues than MSI-X on VSI. As
> default the number will be the same, but if there won't be more MSI-X
> available VSI can run with at least one MSI-X.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 -
>  drivers/net/ethernet/intel/ice/ice_base.c    | 10 +++-----
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  8 +++---
>  drivers/net/ethernet/intel/ice/ice_irq.c     | 11 +++------
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 26 +++++++++++---------
>  5 files changed, 27 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index cf824d041d5a..1e23aec2634f 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -622,7 +622,6 @@ struct ice_pf {
>  	u16 max_pf_txqs;	/* Total Tx queues PF wide */
>  	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
>  	struct ice_pf_msix msix;
> -	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
>  	u16 num_lan_tx;		/* num LAN Tx queues setup */
>  	u16 num_lan_rx;		/* num LAN Rx queues setup */
>  	u16 next_vsi;		/* Next free slot in pf->vsi[] - 0-based! */

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 85a3b2326e7b..e5c56ec8bbda 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3811,8 +3811,8 @@ ice_get_ts_info(struct net_device *dev, struct kernel_ethtool_ts_info *info)
>   */
>  static int ice_get_max_txq(struct ice_pf *pf)
>  {
> -	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
> -		    (u16)pf->hw.func_caps.common_cap.num_txq);
> +	return min_t(u16, num_online_cpus(),
> +		     pf->hw.func_caps.common_cap.num_txq);

It is unclear why min_t() is used here or elsewhere in this patch
instead of min() as it seems that all the entities being compared
are unsigned. Are you concerned about overflowing u16? If so, perhaps
clamp, or some error handling, is a better approach.

I am concerned that the casting that min_t() brings will hide
any problems that may exist.

>  }
>  
>  /**
> @@ -3821,8 +3821,8 @@ static int ice_get_max_txq(struct ice_pf *pf)
>   */
>  static int ice_get_max_rxq(struct ice_pf *pf)
>  {
> -	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
> -		    (u16)pf->hw.func_caps.common_cap.num_rxq);
> +	return min_t(u16, num_online_cpus(),
> +		     pf->hw.func_caps.common_cap.num_rxq);
>  }
>  
>  /**

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index d4e74f96a8ad..26cfb4b67972 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -157,6 +157,16 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
>  	}
>  }
>  
> +static u16 ice_get_rxq_count(struct ice_pf *pf)
> +{
> +	return min_t(u16, ice_get_avail_rxq_count(pf), num_online_cpus());
> +}
> +
> +static u16 ice_get_txq_count(struct ice_pf *pf)
> +{
> +	return min_t(u16, ice_get_avail_txq_count(pf), num_online_cpus());
> +}
> +
>  /**
>   * ice_vsi_set_num_qs - Set number of queues, descriptors and vectors for a VSI
>   * @vsi: the VSI being configured
> @@ -178,9 +188,7 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
>  			vsi->alloc_txq = vsi->req_txq;
>  			vsi->num_txq = vsi->req_txq;
>  		} else {
> -			vsi->alloc_txq = min3(pf->num_lan_msix,
> -					      ice_get_avail_txq_count(pf),
> -					      (u16)num_online_cpus());
> +			vsi->alloc_txq = ice_get_txq_count(pf);
>  		}
>  
>  		pf->num_lan_tx = vsi->alloc_txq;
> @@ -193,17 +201,14 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
>  				vsi->alloc_rxq = vsi->req_rxq;
>  				vsi->num_rxq = vsi->req_rxq;
>  			} else {
> -				vsi->alloc_rxq = min3(pf->num_lan_msix,
> -						      ice_get_avail_rxq_count(pf),
> -						      (u16)num_online_cpus());
> +				vsi->alloc_rxq = ice_get_rxq_count(pf);
>  			}
>  		}
>  
>  		pf->num_lan_rx = vsi->alloc_rxq;
>  
> -		vsi->num_q_vectors = min_t(int, pf->num_lan_msix,
> -					   max_t(int, vsi->alloc_rxq,
> -						 vsi->alloc_txq));
> +		vsi->num_q_vectors = max_t(int, vsi->alloc_rxq,
> +					   vsi->alloc_txq);
>  		break;
>  	case ICE_VSI_SF:
>  		vsi->alloc_txq = 1;
> @@ -1173,12 +1178,11 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
>  static void
>  ice_chnl_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
>  {
> -	struct ice_pf *pf = vsi->back;
>  	u16 qcount, qmap;
>  	u8 offset = 0;
>  	int pow;
>  
> -	qcount = min_t(int, vsi->num_rxq, pf->num_lan_msix);
> +	qcount = vsi->num_rxq;
>  
>  	pow = order_base_2(qcount);
>  	qmap = FIELD_PREP(ICE_AQ_VSI_TC_Q_OFFSET_M, offset);
> -- 
> 2.42.0
> 
> 
