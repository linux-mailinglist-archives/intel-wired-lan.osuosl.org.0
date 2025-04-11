Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08031A8538D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 07:53:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFDE660631;
	Fri, 11 Apr 2025 05:52:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tws9tQJsAkUo; Fri, 11 Apr 2025 05:52:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2288A60669
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744350778;
	bh=HbZIHuFzKHLu25sdU95RtHcHSqgrQQFyc4DxksFm6AQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JzgJdk6/EUk6QfmR04gaGO/b2KhBSXQvYHI/jL5KDJwLUZNfWsSEQFlUlWQ7jLIA+
	 VU9K6pwBH7dqZtwzi9Xwz1FjYK+1Kyx0Ski7hPXu+N7/JLlsz6qCfXMZ8uUT/w686J
	 ZYOZBbJBy+PXWieo4ZHkNaJT6Af/MLeKAdH58doClDdrdv/El2rSbyrawbMJsPmHTO
	 nCXVXNnYQZGydL120ef2+rh3URrxOwGW2KEQmWz07/unR1bZE0shhTxc3/yP7Ia+W5
	 ae7zLGTpBxsphoFWuo5NPsYvG1w4M/YsaE+QDbxKwcEsI5YxCzFZZwBST4EIvyhPOb
	 qw03sffwqc65g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2288A60669;
	Fri, 11 Apr 2025 05:52:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 88287193
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 05:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 71F984018E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 05:52:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MZ2UiLxHV98j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 05:52:55 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6685A40252
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6685A40252
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6685A40252
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 05:52:54 +0000 (UTC)
X-CSE-ConnectionGUID: CFOQn4BXTM+/fCPsrxP41A==
X-CSE-MsgGUID: DHWU0fvxTS2LMqTvIqWVmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="46032628"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="46032628"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 22:52:54 -0700
X-CSE-ConnectionGUID: 0InnnB9sQYu1mkSOQmV8MA==
X-CSE-MsgGUID: 14FJqnjxTuSQEf/prDlGAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="133202782"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 22:52:53 -0700
Date: Fri, 11 Apr 2025 07:52:36 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 netdev <netdev@vger.kernel.org>
Message-ID: <Z/iuJLZY1cwkxwxv@mev-dev.igk.intel.com>
References: <20250410-jk-fix-v-num-mac-count-v1-1-19b3bf8fe55a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250410-jk-fix-v-num-mac-count-v1-1-19b3bf8fe55a@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744350775; x=1775886775;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Ip8lJB4i+WtPdj6Dm47pbnmtnM9EE9gcx3B85Pupu8I=;
 b=MicvCk3qxNF4/tvXhenAzF7bxZWUpvQx3sXMpO+AThyIJlJFmEvwvFU0
 xRf0YATsBN7KfnktXd/P4eVWrViW5yLCbIyOFhAMAaZc2qCTaFBk7RVFu
 N786+fLuIe28oc2cFrYA9dHnVnQx4kPTpUHX8FKNnPiGKTJ88zbqAdmYn
 /gtULMsT60DdAyN+0Ptl8iwSXIFZuLdfn9vi11/Uci1100BsBmxLf3dI2
 VjNimjQGrWVD4TzgCuDGnGMfNu2FqyEOMkwdBnoEl3aJcXSVjLP/uveLY
 sKr4AI3dpLSpLzXa2KcBF3Tl4aZUGamEtVzoIk0zCZEiUHj/5kAKWgVYx
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MicvCk3q
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix vf->num_mac count with
 port representors
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

On Thu, Apr 10, 2025 at 11:13:52AM -0700, Jacob Keller wrote:
> The ice_vc_repr_add_mac() function indicates that it does not store the MAC
> address filters in the firmware. However, it still increments vf->num_mac.
> This is incorrect, as vf->num_mac should represent the number of MAC
> filters currently programmed to firmware.
> 
> Indeed, we only perform this increment if the requested filter is a unicast
> address that doesn't match the existing vf->hw_lan_addr. In addition,
> ice_vc_repr_del_mac() does not decrement the vf->num_mac counter. This
> results in the counter becoming out of sync with the actual count.
> 
> As it turns out, vf->num_mac is currently only used in legacy made without
> port representors. The single place where the value is checked is for
> enforcing a filter limit on untrusted VFs.
> 
> Upcoming patches to support VF Live Migration will use this value when
> determining the size of the TLV for MAC address filters. Fix the
> representor mode function to stop incrementing the counter incorrectly.
> 
> Fixes: ac19e03ef780 ("ice: allow process VF opcodes in different ways")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> I am not certain if there is currently a way to trigger a bug from
> userspace due to this incorrect count, but I think it still warrants a net
> fix.
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 7c3006eb68dd071ab76e62d8715dc2729610586a..6446d0fcc0528656054e506c9208880ce1e417ea 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -4275,7 +4275,6 @@ static int ice_vc_repr_add_mac(struct ice_vf *vf, u8 *msg)
>  		}
>  
>  		ice_vfhw_mac_add(vf, &al->list[i]);
> -		vf->num_mac++;
>  		break;
>  	}
>  

Right, thanks for fixing it.
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

> 
> ---
> base-commit: a9843689e2de1a3727d58b4225e4f8664937aefd
> change-id: 20250410-jk-fix-v-num-mac-count-55acd188162b
> 
> Best regards,
> -- 
> Jacob Keller <jacob.e.keller@intel.com>
