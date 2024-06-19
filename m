Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0041890F45E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2024 18:44:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5945B413CD;
	Wed, 19 Jun 2024 16:44:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ssol2yXrpoJ9; Wed, 19 Jun 2024 16:44:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F23ED41463
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718815478;
	bh=tdCQohO2zcPSbK1AZE5FYdJakGTLi47vnmd94/CcKxg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wVHr3IV3znio7IPJqDg+9Sa/sLjEvjFMoc4Uvkkt91DtqCYttg+BC0V5DwkOflpIK
	 XAbG34vn5fDzDOPpnHqwUN2ng03xnl+L1tCfaZBbxXMHBHUsnZjuPe1KggBlHQDdHu
	 uTojY92P9+TWjCX/l20z3OPrbOYNqPJKpQrkDYCXH0XJZSQJk486kkd+FEdbh3j84c
	 cIJtR/MVCvca4e60rzvpaaogv2aBsXZPyHojPbcWhFxAtb8L8Th7uAa+gamUj8TvS6
	 735MOP4mgpAKcidCHCYwrT72Ukdk83Gvri/Z4IJDdXbJ8hsn9RTqCFrtpKYsUStZn0
	 s5VGI4LR9bD2A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F23ED41463;
	Wed, 19 Jun 2024 16:44:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CDA31BF370
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 16:44:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 257AD404BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 16:44:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hiqReCj6l5QV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2024 16:44:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 27700404A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27700404A8
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 27700404A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 16:44:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 53317619A2;
 Wed, 19 Jun 2024 16:44:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B996AC4AF08;
 Wed, 19 Jun 2024 16:44:31 +0000 (UTC)
Date: Wed, 19 Jun 2024 17:44:29 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240619164429.GL690967@kernel.org>
References: <20240618104310.1429515-1-karol.kolacinski@intel.com>
 <20240618104310.1429515-4-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240618104310.1429515-4-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718815473;
 bh=Ucq3CIEnp7nuN4eV6bKSXDv5ypODlJoh5abKEQDh/xs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B6Xs746qhlaz72V9RWMlblcaW77ENAnN6ZVcdMhqSnmCykMYC3SWyVbwD3jztddLT
 UosnEpjZE56TD4XBakGNJODtE/emkHqYBIi3mymiWFPGb349R7ObEu8eRKelcXXGfC
 kDw9M1ik8EwMxaeFpuq9Dj93W2sVFG2C1T7LJCJ98h/zwdwbvTia7sykA+aLebVxej
 +afO5mH8iITJkZwyzw1Z8Po1vo1IwYoPjOsD903jB2j5UCkvdXgRrl+RFYxkMfqDua
 178nJoLwzQkn9j71Dk6g5FEdkDkc9s9eTa92J7X4nNWKkARPhSdParEi4IEAb2Gpln
 f0b/8zLSF8JAQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=B6Xs746q
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: Reject pin requests
 with unsupported flags
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 18, 2024 at 12:41:38PM +0200, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The driver receives requests for configuring pins via the .enable
> callback of the PTP clock object. These requests come into the driver
> with flags which modify the requested behavior from userspace. Current
> implementation in ice does not reject flags that it doesn't support.
> This causes the driver to incorrectly apply requests with such flags as
> PTP_PEROUT_DUTY_CYCLE, or any future flags added by the kernel which it
> is not yet aware of.
> 
> Fix this by properly validating flags in both ice_ptp_cfg_perout and
> ice_ptp_cfg_extts. Ensure that we check by bit-wise negating supported
> flags rather than just checking and rejecting known un-supported flags.
> This is preferable, as it ensures better compatibility with future
> kernels.
> 
> Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

Hi Jacob and Karol,

Some minor feedback from my side.

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index b952cad42f92..5fa377786f4c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1591,14 +1591,23 @@ void ice_ptp_extts_event(struct ice_pf *pf)
>   * @store: If set to true, the values will be stored
>   *
>   * Configure an external timestamp event on the requested channel.
> -  */
> -static void ice_ptp_cfg_extts(struct ice_pf *pf, unsigned int chan,
> -			      struct ice_extts_channel *config, bool store)
> + *
> + * Return: 0 on sucess, -EOPNOTUSPP on unsupported flags

nit: success

     Flagged by checkpatch.pl --codespell

> + */
> +static int ice_ptp_cfg_extts(struct ice_pf *pf, unsigned int chan,
> +			     struct ice_extts_channel *config, bool store)
>  {
>  	u32 func, aux_reg, gpio_reg, irq_reg;
>  	struct ice_hw *hw = &pf->hw;
>  	u8 tmr_idx;
>  
> +	/* Reject requests with unsupported flags */
> +	if (config->flags & ~(PTP_ENABLE_FEATURE |
> +			      PTP_RISING_EDGE |
> +			      PTP_FALLING_EDGE |
> +			      PTP_STRICT_FLAGS))
> +	return -EOPNOTSUPP;

The line above should to be indented one more tab.
Clearly this makes no difference at run-time,
but it takes a while (for me) to parse things as-is.

...

> @@ -1697,6 +1708,9 @@ static int ice_ptp_cfg_clkout(struct ice_pf *pf, unsigned int chan,
>  	u32 func, val, gpio_pin;
>  	u8 tmr_idx;
>  
> +	if (config->flags & ~PTP_PEROUT_PHASE)
> +		return -EOPNOTSUPP;

A little further down in this function it is assumed that config may
be NULL. So I think the code above needs to be updated to take that
into account too.

Flagged by Smatch.

...
