Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C6F88B288
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Mar 2024 22:19:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DFEC817A9;
	Mon, 25 Mar 2024 21:19:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R6pshy4ThUCF; Mon, 25 Mar 2024 21:19:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EE4581302
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711401586;
	bh=vjOvPQIFRRTH1APtT37OJaWRSNQCgd8oD7pLfYAuLLg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JeI8A5RUVEetMVTrPqvJ4dVSM+WM69S1+WURoD8IW5WR9p3GruTSBrqW38X2cRDPm
	 3cdlRO8OgaLULNpR5tDTvO7CwLTwxL96MSjZ+oJDBgLi5KuGyHYy+FP9b9oEoba4S3
	 55Lo6+LLq92vJwnz4+R4itmTadQJCVI32ALX2qjyXqurw5C7nwbebaqaeWStvkSAWc
	 ZiA5PpfXtEJ9qLC2XZ7Gj6iD3v3f5sQUaFEGwmh6VcaATOqJ359sWN/rK3aVHJFNy7
	 ZK5AtL2Jhaqlh2MIMw/4HtgoWpkjzuPEvk8fTAt2ZasiFzX/aj0zf7b7p2mRKKs2gI
	 jdLoiQQ3COTxQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EE4581302;
	Mon, 25 Mar 2024 21:19:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 816DA1BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:19:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7ACD340BF5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:19:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7TnAtz5eC7sE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 21:19:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9AD64405F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9AD64405F8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9AD64405F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:19:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="17824343"
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="17824343"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 14:19:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="15641537"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 14:19:40 -0700
Date: Mon, 25 Mar 2024 22:19:35 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Petr Oros <poros@redhat.com>
Message-ID: <ZgHqZ5ebaO9VkvYx@mev-dev>
References: <20240325201901.39365-1-poros@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240325201901.39365-1-poros@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711401583; x=1742937583;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Qbas4ADbxxgE1Ks2CTqG0Srxpp+07yr4ueiXALqVkOo=;
 b=VaJkyW3k3NeYeNq3Bltry63kwfFVuV0tI335jPEBPXbsFAym3gpguSMU
 uJPO3sNr7xX9yq5SDRQS/PINSCtYjWik5D+Lq71ZNoo1Bd+LyKe2NOjL8
 XBZd7Iw2MLIFdPMjyTYjBj4ug7GpI55RoOWmOcrhJCQku3QEv8BZWV5hU
 RkXYDokgrinGbzyyOsBVbV15eMQDRRxxGQGgJlByII5tG/tqMy9ajnPd4
 R57Kc4BQJIko1q0xBhvO1QOUN/FbK3YkbfbhjKxl2sFVZATHrgp6jbFrQ
 DRSf8+GCg9L9hhRU3DaSf+dmOkzcQEij+U0AFqQVGxEA2n4bb0DlSn/IY
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VaJkyW3k
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix enabling RX VLAN
 filtering
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
Cc: wojciech.drewek@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 25, 2024 at 09:19:01PM +0100, Petr Oros wrote:
> ice_port_vlan_on/off() was introduced in commit 2946204b3fa8 ("ice:
> implement bridge port vlan"). But ice_port_vlan_on() incorrectly assigns
> ena_rx_filtering to inner_vlan_ops in DVM mode.
> This causes an error when rx_filtering cannot be enabled in legacy mode.
> 
> Reproducer:
>  echo 1 > /sys/class/net/$PF/device/sriov_numvfs
>  ip link set $PF vf 0 spoofchk off trust on vlan 3
> dmesg:
>  ice 0000:41:00.0: failed to enable Rx VLAN filtering for VF 0 VSI 9 during VF rebuild, error -95
> 
> Fixes: 2946204b3fa8 ("ice: implement bridge port vlan")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c   | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
> index 80dc4bcdd3a41c..b3e1bdcb80f84d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
> @@ -26,24 +26,22 @@ static void ice_port_vlan_on(struct ice_vsi *vsi)
>  	struct ice_vsi_vlan_ops *vlan_ops;
>  	struct ice_pf *pf = vsi->back;
>  
> -	if (ice_is_dvm_ena(&pf->hw)) {
> -		vlan_ops = &vsi->outer_vlan_ops;
> -
> -		/* setup outer VLAN ops */
> -		vlan_ops->set_port_vlan = ice_vsi_set_outer_port_vlan;
> -		vlan_ops->clear_port_vlan = ice_vsi_clear_outer_port_vlan;
> +	/* setup inner VLAN ops */
> +	vlan_ops = &vsi->inner_vlan_ops;
>  
> -		/* setup inner VLAN ops */
> -		vlan_ops = &vsi->inner_vlan_ops;
> +	if (ice_is_dvm_ena(&pf->hw)) {
>  		vlan_ops->add_vlan = noop_vlan_arg;
>  		vlan_ops->del_vlan = noop_vlan_arg;
>  		vlan_ops->ena_stripping = ice_vsi_ena_inner_stripping;
>  		vlan_ops->dis_stripping = ice_vsi_dis_inner_stripping;
>  		vlan_ops->ena_insertion = ice_vsi_ena_inner_insertion;
>  		vlan_ops->dis_insertion = ice_vsi_dis_inner_insertion;
> -	} else {
> -		vlan_ops = &vsi->inner_vlan_ops;
>  
> +		/* setup outer VLAN ops */
> +		vlan_ops = &vsi->outer_vlan_ops;
> +		vlan_ops->set_port_vlan = ice_vsi_set_outer_port_vlan;
> +		vlan_ops->clear_port_vlan = ice_vsi_clear_outer_port_vlan;
> +	} else {
>  		vlan_ops->set_port_vlan = ice_vsi_set_inner_port_vlan;
>  		vlan_ops->clear_port_vlan = ice_vsi_clear_inner_port_vlan;
>  	}

Thanks for fixing it.
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

> -- 
> 2.43.2
> 
