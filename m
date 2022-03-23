Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5115A4E57B7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Mar 2022 18:39:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E700E8483C;
	Wed, 23 Mar 2022 17:39:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fOpQE6dU5sJq; Wed, 23 Mar 2022 17:39:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9E8E847F7;
	Wed, 23 Mar 2022 17:39:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B88151BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:39:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF10A40510
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:39:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EjUDJUBwt3Gd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Mar 2022 17:39:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D8593400C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648057158; x=1679593158;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=zJDagyibNbk8SsVd5xnyYaCfEE/tEBY6Q2NBuH6XAnc=;
 b=du4tnEXMOxeyL/hSQ695m2h7jrfFlK/Y5DSkj25sh8vtpRRIDtZPhUx5
 CAo3LX4flGTpfL2OirWz+qn4B4cE126v/UvZR3ftGmpEjVdRSyO1bl5s7
 q4nGrxHj7uHkmt32X6AshKzCOBV396oUpdu/W1mRA4HCOkoDeoM4yOm6x
 3xcS2566L7XeOOGdFu/Ui8IL/rgHdLpBe12NKcDR9Jd4FiI/a9KeVpnqU
 b3D32h6tozfbKL0dQci3FaEIO9z6rCy/317TZ1/3RV3cJQXL0YKJIYC30
 xwxXarar+lJHRfwTqxWzlMbyFa4htuxtItBwsX4hOdiLA5/BxNyGG2big g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="283034223"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="283034223"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 10:39:18 -0700
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="561012724"
Received: from mszycik-mobl.ger.corp.intel.com (HELO [10.249.137.148])
 ([10.249.137.148])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 10:39:13 -0700
Message-ID: <45b155ff-8e26-fa96-f89e-6a561de01abb@linux.intel.com>
Date: Wed, 23 Mar 2022 18:39:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org
References: <20220322142554.3253428-1-ivecera@redhat.com>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20220322142554.3253428-1-ivecera@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Clear default forwarding VSI
 during VSI release
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
Cc: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 mschmidt@redhat.com, Brett Creeley <brett.creeley@intel.com>,
 open list <linux-kernel@vger.kernel.org>, poros@redhat.com,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 22-Mar-22 15:25, Ivan Vecera wrote:
> VSI is set as default forwarding one when promisc mode is set for
> PF interface, when PF is switched to switchdev mode or when VF
> driver asks to enable allmulticast or promisc mode for the VF
> interface (when vf-true-promisc-support priv flag is off).
> The third case is buggy because in that case VSI associated with
> VF remains as default one after VF removal.
> 
> Reproducer:
> 1. Create VF
>    echo 1 > sys/class/net/ens7f0/device/sriov_numvfs
> 2. Enable allmulticast or promisc mode on VF
>    ip link set ens7f0v0 allmulticast on
>    ip link set ens7f0v0 promisc on
> 3. Delete VF
>    echo 0 > sys/class/net/ens7f0/device/sriov_numvfs
> 4. Try to enable promisc mode on PF
>    ip link set ens7f0 promisc on
> 
> Although it looks that promisc mode on PF is enabled the opposite
> is true because ice_vsi_sync_fltr() responsible for IFF_PROMISC
> handling first checks if any other VSI is set as default forwarding
> one and if so the function does not do anything. At this point
> it is not possible to enable promisc mode on PF without re-probe
> device.
> 
> To resolve the issue this patch clear default forwarding VSI
> during ice_vsi_release() when the VSI to be released is the default
> one.
> 
> Fixes: 01b5e89aab49 ("ice: Add VF promiscuous support")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 53256aca27c7..20d755822d43 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3147,6 +3147,8 @@ int ice_vsi_release(struct ice_vsi *vsi)
>  		}
>  	}
>  
> +	if (ice_is_vsi_dflt_vsi(pf->first_sw, vsi))
> +		ice_clear_dflt_vsi(pf->first_sw);

It would probably be good to check `ice_clear_dflt_vsi` return code.

>  	ice_fltr_remove_all(vsi);
>  	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
>  	err = ice_rm_vsi_rdma_cfg(vsi->port_info, vsi->idx);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
