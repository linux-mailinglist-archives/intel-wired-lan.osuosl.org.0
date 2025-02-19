Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EEAA3BA5B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 10:41:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3927785CEB;
	Wed, 19 Feb 2025 09:41:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IzmL_SPeuZ_3; Wed, 19 Feb 2025 09:41:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6249885CF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739958098;
	bh=D8dR7Y1GzdXz+CXgWRM6Ay0d9MpnbDThGr7O8pM9TnM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bIOgOMePSwN+QNvtBMnvrbGzneFU6kv0ug55WBQKoAG1OKmu0fvYfpHneoa+jvj5J
	 DymSOH13mNtpeissFBwTXEYddttuDZXbUgVcKXKmFyw0hJKBCEaBNUdCJM6c8hfyPH
	 DJIblpxjSw0UgZTfqpnPCYRSFvtANYP40dRv0+g+d5cC/bzQ3qF6BmP10j19sWyUxP
	 F2uFhT7Ck0UvglMjS5c1QYA2lmxHVpCyPca+A5iWC46F5+woKg8r5GQCje2EkVX8y9
	 kj22aBFF4CD5OeZ4SgrzuxX6oQ/x3ZbZQCt4u3GY5IB4Kn5uf/wkHKctGbTTgEad1X
	 BklqoNl11qmmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6249885CF9;
	Wed, 19 Feb 2025 09:41:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 80B14C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 09:41:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F04860802
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 09:41:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o1BsJAU3Bewr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 09:41:35 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8D62460737
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D62460737
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D62460737
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 09:41:35 +0000 (UTC)
X-CSE-ConnectionGUID: 9GAItPPUQTCHI/tQB1M2Ow==
X-CSE-MsgGUID: QjXKK8h6TGiR6dQECjx/6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="44443629"
X-IronPort-AV: E=Sophos;i="6.13,298,1732608000"; d="scan'208";a="44443629"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 01:41:34 -0800
X-CSE-ConnectionGUID: ZZIxJgZ5RCKieousb9JNzA==
X-CSE-MsgGUID: K3VY4FQgRP+GpYrZVFFa+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,298,1732608000"; d="scan'208";a="114517753"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 01:41:32 -0800
Date: Wed, 19 Feb 2025 10:37:53 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Paul Greenwalt <paul.greenwalt@intel.com>
Message-ID: <Z7WmcXf8J5j/ksNX@mev-dev.igk.intel.com>
References: <20250218-jk-e830-ddp-loading-fix-v1-1-47dc8e8d4ab5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250218-jk-e830-ddp-loading-fix-v1-1-47dc8e8d4ab5@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739958096; x=1771494096;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=v2KLgziDLI2JVysYzMMszw6RybzprazFv1InI2kbyFU=;
 b=U4wtTO92v1qHxWAk26ylcOpgfZP7Ec4Hk85thFaZVRmvpnfeBciuKCyK
 woe0zThL1rRi/7LgNbTl7sru0rJtVg2+AuQRZbj2nWY0cwu5jBRRS83Ee
 8eesW06nfDSGbM2p4hNv7rporuEwD5ZUu8BioL6aKIBunD0AFawdKzRvZ
 kjgNQR+s75EV1UaS/Yc81ZjGS1j0UTGqGxn+QmjvnYajH7EufSMfH4Smw
 9ZfesbT9OCVaGS97MIvIxfTYrrY/rxche/mCUzkg4qcArmnGuBKMgoqEr
 QDqWqqLS7AwVpGUIf0DEExhtZ7cVphllw+oHe+2etWrK/Hbs6nntH3/Av
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U4wtTO92
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix Get Tx Topology AQ
 command error on E830
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

On Tue, Feb 18, 2025 at 04:46:34PM -0800, Jacob Keller wrote:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> With E830 Get Tx Topology AQ command (opcode 0x0418) returns an error when
> setting the AQ command read flag, and since the get command is a direct
> command there is no need to set the read flag.
> 
> Fix this by only setting read flag on set command.

Why it isn't true for other hw? I mean, why not:
if (set)
	RD_FLAG
else 
	NOT_RD_FLAG
Other hw needs RD flag in case of get too?

> 

Don't you need fixes tag?
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index 03988be03729b76e96188864896527060c8c4d5b..49bd49ab3ccf36c990144894e887341459377a2d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -2345,15 +2345,15 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
>  			cmd->set_flags |= ICE_AQC_TX_TOPO_FLAGS_SRC_RAM |
>  					  ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW;
>  
> -		if (ice_is_e825c(hw))
> -			desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
> +		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
>  	} else {
>  		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_tx_topo);
>  		cmd->get_flags = ICE_AQC_TX_TOPO_GET_RAM;
> -	}
>  
> -	if (!ice_is_e825c(hw))
> -		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
> +		if (hw->mac_type != ICE_MAC_GENERIC_3K_E825 &&
> +		    hw->mac_type != ICE_MAC_E830)
> +			desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
> +	}
>  
>  	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
>  	if (status)
>

In general looks fine, only one question.

Thanks,
Michal

> ---
> base-commit: f5da7c45188eea71394bf445655cae2df88a7788
> change-id: 20250218-jk-e830-ddp-loading-fix-9efdbdfc270a
> 
> Best regards,
> -- 
> Jacob Keller <jacob.e.keller@intel.com>
