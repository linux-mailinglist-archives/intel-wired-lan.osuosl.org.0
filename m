Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBCFA85D23
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 14:36:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BADD9608CD;
	Fri, 11 Apr 2025 12:36:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KOUtKui2aK-8; Fri, 11 Apr 2025 12:36:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26691605FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744374995;
	bh=yXAEiWzFGtps8bvWRMuhyI24Ssgz5s1xnVH6pTdqCpI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z1zzKlGFQG17qSEfMYL2gRq/SrmFhK95kT1o4ysN84IUZxS+Ux0HwXbd2BOldoYXf
	 3h8+Pez6MyxL1CvdycY1eQgI4rxYtwPIGssxels/pp02Lheaop3SdC3VBetOlYUJDC
	 15kwvgwFI4P+q8MowsaxLrQ1ThhMqx/9UOztMthNvsxv38ysyTPFX/bQNrs6UFBHA3
	 xZ1r6Nr8ffD3JbMBZeq/vfrUQVLLE0LIBo8e4xZOKULRYJJAOuSwk3c0ZBU7VqHFmU
	 MOGd9i+ufoBQjJph11dbCHO/ndnrmh50DU7bEt5t2yVsjMxj3Wn0/zpo4Xm3KnIAF+
	 /OdBSH+VxeqPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26691605FF;
	Fri, 11 Apr 2025 12:36:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A5EDC108
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 12:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94E3640597
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 12:36:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WoFU7pPPD-z8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 12:36:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DFA6F40642
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFA6F40642
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DFA6F40642
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 12:36:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id E7037A4AAFB;
 Fri, 11 Apr 2025 12:31:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6901C4CEE8;
 Fri, 11 Apr 2025 12:36:29 +0000 (UTC)
Date: Fri, 11 Apr 2025 13:36:27 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Michal Kubiak <michal.kubiak@intel.com>,
 Milena Olech <milena.olech@intel.com>
Message-ID: <20250411123627.GB395307@horms.kernel.org>
References: <20250409122830.1977644-12-karol.kolacinski@intel.com>
 <20250409122830.1977644-13-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250409122830.1977644-13-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744374991;
 bh=OGoACs6RH+I8/t+z9lvjp50lGOMfeR8mLDulfIHw2JM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ftbmc6pi3lGTbxjkX9A3bAYC0MDI/k9y+mu95B2c7U1Xvh0PTPlQin3mwFrNU6W3C
 iwOp/tMWVVYrvYFggpRZXynzQaq8v1a35W75hGBYbKYegvs0P31TZx+njxbtKn80jv
 xgPY5RkJbhB+lgDdodQTR0NabA9modkDD8kT/sxQaHHz8q8ujhzYoWm+2gWvYgMKjr
 UdNn9Yu/KduuKscDzorWKBtqmSJKiqREg86jfHUS5xZwq4CzFoH9ASrlIeN/oZJgzC
 gnPWamCVy2OplRDOKyqgFskMX6cKV3OlkC4eHzvoqL+o6ZRCsETW53qOREBWzX4FbL
 dlG8HxJeDkUuQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Ftbmc6pi
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 01/10] ice: move TSPLL
 functions to a separate file
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

On Wed, Apr 09, 2025 at 02:24:58PM +0200, Karol Kolacinski wrote:
> Collect TSPLL related functions and definitions and move them to
> a separate file to have all TSPLL functionality in one place.
> 
> Move CGU related functions and definitions to ice_common.*
> 
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index f7fd0a2451de..190d850f7ff7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -6234,3 +6234,64 @@ u32 ice_get_link_speed(u16 index)
>  
>  	return ice_aq_to_link_speed[index];
>  }
> +
> +/**
> + * ice_read_cgu_reg_e82x - Read a CGU register
> + * @hw: pointer to the HW struct
> + * @addr: Register address to read
> + * @val: storage for register value read
> + *
> + * Read the contents of a register of the Clock Generation Unit. Only
> + * applicable to E822 devices.
> + *
> + * Return: 0 on success, other error codes when failed to read from CGU.
> + */
> +int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
> +{
> +	struct ice_sbq_msg_input cgu_msg = {
> +		.opcode = ice_sbq_msg_rd,
> +		.dest_dev = cgu,

This seems to be addressed in patch v2: when applied against iwl-next,
but not next, this needs to be ice_sbq_dev_cgu.

drivers/net/ethernet/intel/ice/ice_common.c:6253:15: error: use of undeclared identifier 'cgu'
 6253 |                 .dest_dev = cgu,

> +		.msg_addr_low = addr
> +	};
> +	int err;
> +
> +	err = ice_sbq_rw_reg(hw, &cgu_msg, ICE_AQ_FLAG_RD);
> +	if (err) {
> +		dev_dbg(ice_hw_to_dev(hw), "Failed to read CGU register 0x%04x, err %d\n",
> +			addr, err);
> +		return err;
> +	}
> +
> +	*val = cgu_msg.data;
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_write_cgu_reg_e82x - Write a CGU register
> + * @hw: pointer to the HW struct
> + * @addr: Register address to write
> + * @val: value to write into the register
> + *
> + * Write the specified value to a register of the Clock Generation Unit. Only
> + * applicable to E822 devices.
> + *
> + * Return: 0 on success, other error codes when failed to write to CGU.
> + */
> +int ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val)
> +{
> +	struct ice_sbq_msg_input cgu_msg = {
> +		.opcode = ice_sbq_msg_wr,
> +		.dest_dev = cgu,

Ditto.

> +		.msg_addr_low = addr,
> +		.data = val
> +	};
> +	int err;
> +
> +	err = ice_sbq_rw_reg(hw, &cgu_msg, ICE_AQ_FLAG_RD);
> +	if (err)
> +		dev_dbg(ice_hw_to_dev(hw), "Failed to write CGU register 0x%04x, err %d\n",
> +			addr, err);
> +
> +	return err;
> +}

...
