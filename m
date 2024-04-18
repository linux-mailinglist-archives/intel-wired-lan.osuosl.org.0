Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9348A93FD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 09:30:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FB4381F45;
	Thu, 18 Apr 2024 07:30:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EZvwKw3057je; Thu, 18 Apr 2024 07:30:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A66581F0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713425430;
	bh=LBchh3ctoKIyTg1KvRtEpcHY08UPnQa/BKEUg3A0GaA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M6tQjFRiwYy2MlYPHvjy2CeWr/X+9lc3fKKGmAHUx70Evujy7CVyVirZbCLd1YNDh
	 nC0F4nrabzt9E+5V4cETbzFJg41GGgbh7YWpp/oEXo48bsUF+NeoeAqMDZKjXwrguy
	 H10KYew3UYL8p4Ae820EuN8m9JAEDUfaLQ3c6us2JbxUGteUQkpPmgwBkFBJigVB80
	 DySfjiXGX2are8NPJLphnoo17Z8LSwR383mcD4Ykl1ACras5MFv+zxg64r2paOJ1Aw
	 /AFz3c3BeOoiHf7VuUnsMhfnbFfWCNXxF/MjSQQYee3fUCrC7vLRzyIDoOa97YDEwu
	 /HohfZ68hvYCg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A66581F0A;
	Thu, 18 Apr 2024 07:30:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A811A1BF31E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 07:30:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 93D1281F0A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 07:30:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mbpi3y2-1Nic for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 07:30:27 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CFB1281EF7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFB1281EF7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CFB1281EF7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 07:30:26 +0000 (UTC)
X-CSE-ConnectionGUID: msUcSI87R8ChFTBn02jyPA==
X-CSE-MsgGUID: XN40gV0kQ5uqS3khzfhLtA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9502747"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; 
   d="scan'208";a="9502747"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 00:30:26 -0700
X-CSE-ConnectionGUID: iks+W5Y9Q5K1RKF6sS7HkQ==
X-CSE-MsgGUID: KqH5QFqvRm68XI9aFxiv3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="23316867"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 00:30:24 -0700
Date: Thu, 18 Apr 2024 09:30:01 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: =?iso-8859-1?Q?Asbj=F8rn_Sloth_T=F8nnesen?= <ast@fiberby.net>
Message-ID: <ZiDL+TTeJWhYam6Q@mev-dev>
References: <20240416144331.15336-1-ast@fiberby.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240416144331.15336-1-ast@fiberby.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713425427; x=1744961427;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5g7iu/VVAy/L+SP4+CheknDrk8WwulKiELdeRGtgDF8=;
 b=QY/N9fundHkAsTf2cChu4e4/6lr9980bnzNQ21h/OQP7ztb0yckr1Da1
 i34raXWOw5n6RxnrdiN8af7KZs+2bkdOOdDWu+rktqUIdESRRczVvAfbb
 byMtCuht0zcmgaRUfSCcYNSZw0a0lQH41/mYZVroRvnok8HJ0D7gLl1RA
 kBJPpyyc28KBXpHU0lXAAgeKStSL4k8e2Q62SsYoDDSGiQXhjCtFL0cK7
 IEmlY6ktAiUY/udcclDF9l2QlEE7/Ok2sNkfLfCVCiHSll9FpA6lYUf5L
 KQ9bCwOxgkL4AyRlo5ClX4WXKd1f5tqkRGSFpopUBOQ6kA74s5ls7/kJk
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QY/N9fun
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: flower: validate
 control flags
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 16, 2024 at 02:43:30PM +0000, Asbjørn Sloth Tønnesen wrote:
> This driver currently doesn't support any control flags.
> 
> Use flow_rule_has_control_flags() to check for control flags,
> such as can be set through `tc flower ... ip_flags frag`.
> 
> In case any control flags are masked, flow_rule_has_control_flags()
> sets a NL extended error message, and we return -EOPNOTSUPP.
> 
> Only compile-tested.
> 
> Signed-off-by: Asbjørn Sloth Tønnesen <ast@fiberby.net>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> index 2f2fce285ecd..361abd7d7561 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> @@ -1673,6 +1673,10 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
>  		flow_rule_match_control(rule, &match);
>  
>  		addr_type = match.key->addr_type;
> +
> +		if (flow_rule_has_control_flags(match.mask->flags,
> +						fltr->extack))
> +			return -EOPNOTSUPP;
>  	}
>  

Thanks,
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

>  	if (addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
> -- 
> 2.43.0
> 
