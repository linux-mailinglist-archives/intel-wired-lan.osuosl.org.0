Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B96A3B399FA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 12:33:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E93F60B29;
	Thu, 28 Aug 2025 10:33:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fERQSgs_8UwL; Thu, 28 Aug 2025 10:33:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD64860B31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756377189;
	bh=V7yMT0jTN0Fq+VgOjtqCaC7Vr7+9qsVFkZwtAVQoXko=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xc/byRzno0i/sME/Ou4+MDaBBr2cY4uq+ePnApMZ26LrTvy2xLrxoB3NxbY13V2S2
	 TBhr8ZwXNjrRJR0P+VAmFz2TR5HEu9iPGcHR7iL5K//o/ho/xglZrGS4TXYvF767ko
	 y4mGPb4Xpcs7cLo6hy6aKhN0yQw+e+w1nBaEKSDcU4mgVc+LEP00apDxqgguzmhxU8
	 a23KQlpuuPaBao2OtWsYtEGvuH3xrFF0eSJd7v//bekK5dwSpG4IPaN1cOgYxBqA59
	 nDMNKEelt3CV4johN9swiLdETo7BUs3gnEkc8RXriRP3Rf6T0c9IYLGyUl0RaRZlNu
	 I7UhzaKiW2Paw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD64860B31;
	Thu, 28 Aug 2025 10:33:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A6A351B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 852CE60B21
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:33:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Daw8eNbSdHpN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 10:33:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 04EAE60B0A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04EAE60B0A
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04EAE60B0A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:33:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3FD794058A;
 Thu, 28 Aug 2025 10:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BD44C4CEEB;
 Thu, 28 Aug 2025 10:33:04 +0000 (UTC)
Date: Thu, 28 Aug 2025 11:33:02 +0100
From: Simon Horman <horms@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250828103302.GZ10519@horms.kernel.org>
References: <20250826153118.2129807-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250826153118.2129807-1-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756377186;
 bh=ApaRwpJeqb99ibXDe3dtLn8mCDS3zrygAvunHsREGr4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Xe0HND/Qwks2jszGWekVHOQjyj8NWBMyOky2BTPU21LUfvhuQf48DAs4FhKGtQRkt
 StQhX62q5huazo0L39Z43I2isj3Pi+k8l9lf2mKFVBvSC922kotnryEubQ9KnZOMxN
 SJBuiSYG+iCYrtfzChQcq/5FPzzjf4/P57S6ogPCoWYeOJo9bP+08kevOZdWaex212
 oO59BInnittt8Uv6j9Ct5xUy9oCgappCgd43OdKMuZW/WgPu3r6IpU4yLSWfTcY+Z+
 5VJGKslNTyQBWSUfUayq+5mEwqtWm+2e+cxcBRTFAqVUvajQY+E6xWaOGH+yAp894k
 frPFamw6H8Awg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Xe0HND/Q
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: add support for
 unmanaged dpll on E830 NIC
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

On Tue, Aug 26, 2025 at 05:31:18PM +0200, Arkadiusz Kubalewski wrote:

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c

...

> +/**
> + * ice_dpll_init_info_unmanaged - init dpll information for unmanaged dpll
> + * @pf: board private structure
> + *
> + * Acquire (from HW) and set basic dpll information (on pf->dplls struct).
> + * For unmanaged dpll mode.
> + *
> + * Return:
> + * * 0 - success
> + * * negative - init failure reason
> + */
> +static int ice_dpll_init_info_unmanaged(struct ice_pf *pf)
> +{
> +	struct ice_dplls *d = &pf->dplls;
> +	struct ice_dpll *de = &d->eec;
> +	int ret = 0;
> +
> +	d->clock_id = ice_generate_clock_id(pf);
> +	d->num_inputs = ice_cgu_get_pin_num(&pf->hw, true);
> +	d->num_outputs = ice_cgu_get_pin_num(&pf->hw, false);
> +	ice_dpll_lock_state_init_unmanaged(pf);
> +
> +	d->inputs = kcalloc(d->num_inputs, sizeof(*d->inputs), GFP_KERNEL);
> +	if (!d->inputs)
> +		return -ENOMEM;
> +
> +	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_INPUT);
> +	if (ret)
> +		goto deinit_info;
> +
> +	d->outputs = kcalloc(d->num_outputs, sizeof(*d->outputs), GFP_KERNEL);
> +	if (!d->outputs)

Hi Arkadiusz,

I think the following is needed here:

		err = -ENOMEM;

Flagged by Smatch.

> +		goto deinit_info;
> +
> +	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_OUTPUT);
> +	if (ret)
> +		goto deinit_info;
> +
> +	de->mode = DPLL_MODE_AUTOMATIC;
> +	dev_dbg(ice_pf_to_dev(pf), "%s - success, inputs:%u, outputs:%u\n",
> +		__func__, d->num_inputs, d->num_outputs);
> +	return 0;
> +deinit_info:
> +	dev_err(ice_pf_to_dev(pf), "%s - fail: d->inputs:%p, d->outputs:%p\n",
> +		__func__, d->inputs, d->outputs);
> +	ice_dpll_deinit_info(pf);
> +	return ret;
> +}

...
