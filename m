Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9349C8900
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 12:33:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 445DB840BE;
	Thu, 14 Nov 2024 11:33:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HOZcNefQY0ur; Thu, 14 Nov 2024 11:33:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 849C0840B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731583984;
	bh=b2GVfFZJ8T0CW9ESug0juDTNdlM8QFvij40vtlZjPDw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=65T3Wk56vgrUtEFAtGLdmA86F3fJ0v0VholF2D3onIagQa9+RDw9iHzw6gXrwna2o
	 tm9/v4sgLZ/RiRX6hhZq+Drkik4yvqlI04qofw5VzdxFfwfuc8uSge1y5c8GdFz/X+
	 LMpA7zpTTZC6Fw5U2lR3I26RkUL4KC5t7lqpdjO339LaXkAShogd0LeS8kW6pPp7dr
	 0uESV8ybFthLMATr+CjazuOge2Xphbaby7RczF6ubtSCNMKtNXDhpDt/63Dnt3bldF
	 oDH21mqOHHT0SipzIF7Gh8x0sFTHdCHzyjx11+5LyqqyCe5LJiIRnfSbEa8tphbWiY
	 07sqSFBEfGlgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 849C0840B6;
	Thu, 14 Nov 2024 11:33:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A18F2BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 11:33:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 826E6400C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 11:33:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IaxcH71mgOqG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 11:33:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8FB92400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FB92400D2
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8FB92400D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 11:33:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 02F8FA41797;
 Thu, 14 Nov 2024 11:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11ED0C4CECD;
 Thu, 14 Nov 2024 11:32:58 +0000 (UTC)
Date: Thu, 14 Nov 2024 13:32:52 +0200
From: Leon Romanovsky <leon@kernel.org>
To: jbrandeb@kernel.org
Cc: netdev@vger.kernel.org, jbrandeburg@cloudflare.com,
 intel-wired-lan@lists.osuosl.org, Dave Ertman <david.m.ertman@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <20241114113252.GC499069@unreal>
References: <20241114000105.703740-1-jbrandeb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241114000105.703740-1-jbrandeb@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731583979;
 bh=V39RIN2jCDCxaKnoONcb8DL4UIqTets440Hul9Wz37k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FPDDBUwbVx22gySud/IB4lNvx0g7sPasPnMBo8rV0XdQukYHmMMzK0rmjmmmAzt/c
 AriG3AaWS+nCttT+1J+FOlNg9dXpXQ5U7Id2a0Bb0ik1SYpFnH6/XmdisEwgJHNWJ4
 z4ImRmMOr4wRsGWtUl7SgWIhs6j+hrl+83FZBnECVF1o69oxKyxYEQmMM5zZzKyquH
 vdUsqYadiCcyjAFqXFppKCJENcTd+junAjWBjnJ4K3Sl5ni2cdLcFvNF7+bKa2YF3q
 +AEaX7l11qU7kkDuJ4nsrV8AKV46kn431GxDbWt3YimYs4d442QG+P86NUTozv0WaP
 Jn77kLKfRq5ow==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=FPDDBUwb
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: do not reserve resources
 for RDMA when disabled
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

On Wed, Nov 13, 2024 at 04:00:56PM -0800, jbrandeb@kernel.org wrote:
> From: Jesse Brandeburg <jbrandeb@kernel.org>
> 
> If the CONFIG_INFINIBAND_IRDMA symbol is not enabled as a module or a
> built-in, then don't let the driver reserve resources for RDMA.
> 
> Do this by avoiding enabling the capability when scanning hardware
> capabilities.
> 
> Fixes: d25a0fc41c1f ("ice: Initialize RDMA support")
> CC: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Jesse Brandeburg <jbrandeb@kernel.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 009716a12a26..70be07ad2c10 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2174,7 +2174,8 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
>  			  caps->nvm_unified_update);
>  		break;
>  	case ICE_AQC_CAPS_RDMA:
> -		caps->rdma = (number == 1);
> +		if (IS_ENABLED(CONFIG_INFINIBAND_IRDMA))

ice_eth is not dependent on CONFIG_INFINIBAND_IRDMA and can be built
perfectly without irdma. So technically, you disabled RDMA for such
kernels and users won't be able to load out-of-tree built module.

I don't care about out-of-tree code, but it is worth to add into commit
message, so users will know what to do it IRDMA stopped to work for them.

Thanks

> +			caps->rdma = (number == 1);
>  		ice_debug(hw, ICE_DBG_INIT, "%s: rdma = %d\n", prefix, caps->rdma);
>  		break;
>  	case ICE_AQC_CAPS_MAX_MTU:
> 
> base-commit: 2d5404caa8c7bb5c4e0435f94b28834ae5456623
> -- 
> 2.39.5
> 
> 
