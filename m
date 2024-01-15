Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F347482D76D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jan 2024 11:32:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 772E84021B;
	Mon, 15 Jan 2024 10:32:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 772E84021B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705314776;
	bh=mYKQFLj9amk7vBp6rgih+XVukHGcYbi56UxRUUSK7to=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fQcVHA9jqPUquvGWJ6X1KvcCw1AnYoVMcdAyQdTerkhopwAKGYRGp6jocucmD3Spz
	 7G8zGiYR7Vqz5pXWxeKcj4ZPdWHUV8DiPW8TtOlw4fzxPmJDtY/eoBJTxrP3BDRR8b
	 VCltQcFXGe+STZ9ZTNCvr2X5cGbUEKN57WVSd4pMrX+cv+UQRzgmmtz3M6QIDseNWr
	 eTK+IFApoLCnm7bekMulyz+VeawUreGSToUYCeVm6Ff1KxML+vxMeBgQbIWHvddwOz
	 mBKrdYiuqkTAcILqVt1m9Apqo6xX0Ic8ARyl5DyVJfJhtFe5MN8jR0ttjTXn9e26nP
	 4VzLr+zqDYnTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0jieiPC9ymBz; Mon, 15 Jan 2024 10:32:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81D314019A;
	Mon, 15 Jan 2024 10:32:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81D314019A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA39F1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 10:32:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8299040080
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 10:32:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8299040080
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T8nfwI5tMMTV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jan 2024 10:32:49 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B9584415D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 10:32:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9584415D7
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 1BF84CE0A1A;
 Mon, 15 Jan 2024 10:32:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA597C433F1;
 Mon, 15 Jan 2024 10:32:42 +0000 (UTC)
Date: Mon, 15 Jan 2024 10:32:40 +0000
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240115103240.GL392144@kernel.org>
References: <20240108124717.1845481-1-karol.kolacinski@intel.com>
 <20240108124717.1845481-2-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240108124717.1845481-2-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705314764;
 bh=3KeBNlQG85wu86o1172m7DM1lMr/QxGKxX/LSwGRrmY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=daCnLaQXkmIEfVvDXe4+QoHLM6XOF+t6qMVxQ1uJwSLZqtg/+GGJETaUDQ9bmzzJd
 Gb+NHmUxsWxsFgeBUJnUl4e+GvCCbZXQCVhNT1HwAYXyH4fpLdpuEPQZuEwcXVqr0K
 XCV2HDK2joCzQCngRKgnvvFfmaIgWJCjpRm5DZujzlA9lxQ2wTMw2JN9Xt6J6g4Ttz
 mrFiMOi0PEg/RR9t4SMPZHcKWaieQZStayYlsT5oWAd7LOOb7JTyTGY8y4cn+uryh/
 AIkuC5t72f9DJlQRODfmzvos018U6U902KzK5tKH1BRrA2PLiKXhSka/oe/yfDJ1mV
 wz/wKX7Xel+pw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=daCnLaQX
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 1/6] ice: introduce PTP
 state machine
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
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 08, 2024 at 01:47:12PM +0100, Karol Kolacinski wrote:

Should there be a "From: Jacob" line here to
match the Signed-off-by below?

> Add PTP state machine so that the driver can correctly identify PTP
> state around resets.
> When the driver got information about ungraceful reset, PTP was not
> prepared for reset and it returned error. When this situation occurs,
> prepare PTP before rebuilding its structures.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Hi Karol and Jacob,

FWIIW, The combination of both a Signed-off-by and Reviewed-by tag from
Jacob seems a little odd to me. If he authored the patch then I would have
gone with the following (along with the From line mentioned above):

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

Otherwise, if he reviewed the patch I would have gone with:

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c

...

> @@ -2640,6 +2676,16 @@ void ice_ptp_reset(struct ice_pf *pf)
>  	int err, itr = 1;
>  	u64 time_diff;
>  
> +	if (ptp->state != ICE_PTP_RESETTING) {
> +		if (ptp->state == ICE_PTP_READY) {
> +			ice_ptp_prepare_for_reset(pf);
> +		} else {
> +			err = -EINVAL;
> +			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
> +			goto err;
> +		}
> +	}

nit: perhaps this following is slightly nicer?
     (completely untested!)

	if (ptp->state == ICE_PTP_READY) {
		ice_ptp_prepare_for_reset(pf);
	} else if (ptp->state != ICE_PTP_RESETTING) {
		err = -EINVAL;
		dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
		goto err;
	}

> +
>  	if (test_bit(ICE_PFR_REQ, pf->state) ||
>  	    !ice_pf_src_tmr_owned(pf))
>  		goto pfr;

...
