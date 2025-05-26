Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2603DAC3D54
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 May 2025 11:51:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8FEF80CE4;
	Mon, 26 May 2025 09:51:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xq_2VlgSlE_y; Mon, 26 May 2025 09:51:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 248B580CE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748253111;
	bh=QLGPvtJJlPAMlq4PZzIy8aEez8qffEYrBiyp0ppfbZs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bnouw2iremTXZnOEVUs1poKOLHw0A7BnR0MZ9IM4aNG6i/XX8AhKQlAnoekLbg/eC
	 4+Fk9lpZNic+NJlDCqJfIIJqI+GFyuYeZCGQwULjYAVp1Md+jBg4uTDU1qc0o3aEkX
	 rqVdF4+5VJLlvMbuqWttOED2oNKZFIzhWttjV109Yo/1VhqpJ3urIn4unnTTJX12JU
	 ls3O1I1MnZagR/1G+l0sU0OceEOAHCzyk/Vf83lKE65kpqEbxScNjHRWFP2RrOKfQ3
	 mHWEbriULT+x2nxbqw5dhVlMFcw7NDgVYFf7ulEprKYhqtEYMowlbfjLKUXXWSp6YZ
	 p0YJOB4PjWzLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 248B580CE8;
	Mon, 26 May 2025 09:51:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B95819D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:51:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8CB0D80CD2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:51:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5fHIcbXsWp1T for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 May 2025 09:51:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3E31580CA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E31580CA7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E31580CA7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:51:47 +0000 (UTC)
X-CSE-ConnectionGUID: efg8aigJTTuOcgv87UwQmw==
X-CSE-MsgGUID: BTqlKk68RuCw84A0xQl/Hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11444"; a="61631861"
X-IronPort-AV: E=Sophos;i="6.15,315,1739865600"; d="scan'208";a="61631861"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2025 02:51:47 -0700
X-CSE-ConnectionGUID: MpZRJJz4QTupfXrYoxvo/A==
X-CSE-MsgGUID: f38UmJFZTmW3MP8a2UHD2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,315,1739865600"; d="scan'208";a="142679357"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2025 02:51:43 -0700
Date: Mon, 26 May 2025 11:51:06 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Haoxiang Li <haoxiang_li2024@163.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, sergey.temerkhanov@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Message-ID: <aDQ5ipcH346PJPGp@mev-dev.igk.intel.com>
References: <20250524072658.3586149-1-haoxiang_li2024@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250524072658.3586149-1-haoxiang_li2024@163.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748253107; x=1779789107;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3qgtqvR99/jckDm4wJuF1A1c37Gw/lv4DloT3Rig0lQ=;
 b=iy90u/JMsFfKIfBDYntdkO0Pkr2DKZsBSFTEFpJpggfFzEG7uf52CuiS
 GhebsKL1Yi9ihSKCXwMwZJ2Wl3Bx6QpWLrvJm3noXSPfblFPShsFszCHp
 YXXtt+dTTUNjfWxL1soGnsUFJmSUnZI3fuymEp6KG7b4+3tT7B3EKfG8B
 OPUj4W42prHKTmgLuai3exPdpDn+dOuzJfEb+PmJ0d6RcV1v5LeujRbn6
 rPG92s8PSFYc9pQb0t9SEgGXt7ToV84WG7g3XjEUoK/oVH+femjoppCsZ
 tJiHTcaFHEVMS5nIx1+s6QKz4VYHiak6XCWpJ3G/sRyJP1keVPjtldLwA
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iy90u/JM
Subject: Re: [Intel-wired-lan] [PATCH] ice: Fix a null pointer dereference
 in ice_copy_and_init_pkg()
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

On Sat, May 24, 2025 at 03:26:58PM +0800, Haoxiang Li wrote:
> Add check for the return value of devm_kmemdup()
> to prevent potential null pointer dereference.
> 
> Fixes: 2ffd87d38d6b ("ice: Move support DDP code out of ice_flex_pipe.c")

This commit is only moving the code to new file. I think it should be:
c76488109616 ("ice: Implement Dynamic Device Personalization (DDP) download")

> Cc: stable@vger.kernel.org
> Signed-off-by: Haoxiang Li <haoxiang_li2024@163.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index 59323c019544..351824dc3c62 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -2301,6 +2301,8 @@ enum ice_ddp_state ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf,
>  		return ICE_DDP_PKG_ERR;
>  
>  	buf_copy = devm_kmemdup(ice_hw_to_dev(hw), buf, len, GFP_KERNEL);
> +	if (!buf_copy)
> +		return ICE_DDP_PKG_ERR;

Fix looks fine, thanks
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

>  
>  	state = ice_init_pkg(hw, buf_copy, len);
>  	if (!ice_is_init_pkg_successful(state)) {
> -- 
> 2.25.1
