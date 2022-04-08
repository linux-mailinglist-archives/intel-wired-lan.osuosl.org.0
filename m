Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7037E4F9742
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Apr 2022 15:49:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E51384470;
	Fri,  8 Apr 2022 13:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gbktV9ag0i2J; Fri,  8 Apr 2022 13:49:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E6B98446C;
	Fri,  8 Apr 2022 13:49:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 251461BF312
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 13:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 087966134B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 13:49:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oachTA-0i1pD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Apr 2022 13:49:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 45E796133E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 13:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649425761; x=1680961761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JHxUCB/6BRTe6TReGYNBtiqtMSGrnYkHBfI8LfQrgAc=;
 b=MkpuAuyrMLyJ1ArysSQdpCuaxLCiO6z0Sdoi/DxQ1w/mH9YZUjglsKMH
 ZrkSNIkanshoxM/3iMjLb/RR0nLooF2vKPMjAaLWUabNjaMR/S70uw0hY
 xtRkZRmpM1+T/H3lJKNiaOnpXWhdsY8eJiPgKOrIF7iNEBF7ydS6bPXWb
 4BkXBD706+QKUEQVis8tuE4oimpU/i+Mplqz53h/WLng0M4Qav4T+RPyL
 5yZbrKjOll54TE8eIzspyldle1MrVq6qHllQbSz6/vknpQoMQ91msjyML
 rfaMCw7NfEutKhEQ5f6BcxbnXjwdtUgxkpFrIA4o/Jhf4IB0OOTHWJ2F9 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="241528043"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="241528043"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 06:49:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="550507028"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 08 Apr 2022 06:49:16 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 238DnFvK003958; Fri, 8 Apr 2022 14:49:15 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri,  8 Apr 2022 15:47:14 +0200
Message-Id: <20220408134714.1834349-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220401104052.1711721-1-ivecera@redhat.com>
References: <20220401104052.1711721-1-ivecera@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix incorrect locking in
 ice_vc_process_vf_msg()
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 mschmidt@redhat.com, Brett Creeley <brett@pensando.io>,
 open list <linux-kernel@vger.kernel.org>, poros@redhat.com,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ivan Vecera <ivecera@redhat.com>
Date: Fri,  1 Apr 2022 12:40:52 +0200

> Usage of mutex_trylock() in ice_vc_process_vf_msg() is incorrect
> because message sent from VF is ignored and never processed.
> 
> Use mutex_lock() instead to fix the issue. It is safe because this
> mutex is used to prevent races between VF related NDOs and
> handlers processing request messages from VF and these handlers
> are running in ice_service_task() context. Additionally move this
> mutex lock prior ice_vc_is_opcode_allowed() call to avoid potential
> races during allowlist acccess.
> 
> Fixes: e6ba5273d4ed ("ice: Fix race conditions between virtchnl handling and VF ndo ops")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Hey Tony,

I guess you missed this one due to being on a vacation previously.
It's been previously reviewed IIRC, could you take it into
net-queue?

> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 21 +++++++------------
>  1 file changed, 7 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 3f1a63815bac..a465f3743ffc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -3642,14 +3642,6 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
>  			err = -EINVAL;
>  	}
>  
> -	if (!ice_vc_is_opcode_allowed(vf, v_opcode)) {
> -		ice_vc_send_msg_to_vf(vf, v_opcode,
> -				      VIRTCHNL_STATUS_ERR_NOT_SUPPORTED, NULL,
> -				      0);
> -		ice_put_vf(vf);
> -		return;
> -	}
> -
>  error_handler:
>  	if (err) {
>  		ice_vc_send_msg_to_vf(vf, v_opcode, VIRTCHNL_STATUS_ERR_PARAM,
> @@ -3660,12 +3652,13 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
>  		return;
>  	}
>  
> -	/* VF is being configured in another context that triggers a VFR, so no
> -	 * need to process this message
> -	 */
> -	if (!mutex_trylock(&vf->cfg_lock)) {
> -		dev_info(dev, "VF %u is being configured in another context that will trigger a VFR, so there is no need to handle this message\n",
> -			 vf->vf_id);
> +	mutex_lock(&vf->cfg_lock);
> +
> +	if (!ice_vc_is_opcode_allowed(vf, v_opcode)) {
> +		ice_vc_send_msg_to_vf(vf, v_opcode,
> +				      VIRTCHNL_STATUS_ERR_NOT_SUPPORTED, NULL,
> +				      0);
> +		mutex_unlock(&vf->cfg_lock);
>  		ice_put_vf(vf);
>  		return;
>  	}
> -- 
> 2.35.1

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
