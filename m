Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A68A7E055
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 16:02:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 709654069A;
	Mon,  7 Apr 2025 14:02:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jR5NyKlnuT18; Mon,  7 Apr 2025 14:02:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEDA8406C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744034570;
	bh=fdnGVLfRkD9zRtMLTLReBFHsSrnFe+4EithzXUJo3ew=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6/tR7fekUt84SXQaxC1glfttuHOPOKlZMnWQBk7AXKwkTCfdxVQFtj96Nacs5AL5N
	 YMjpL8jIYDnv2Flq7cE4JYWyQGzSVxr4Zxmta4azvTrrLd2HP1RZfnTyjmeB0Cbxo+
	 MCNBYcZ0NipC6+pSGOLL0yhdHPFXVQTr++vHrUppfKweHnn8wGgNHheyisrJ2Blt6j
	 nWRLCKa1nYbX0kOARWgEYdJiRs5K63z3Hi35Ye8URDfzz1eiJ/LgFePyLsF/j2gbg0
	 ES0YukWPqsYYGqPoxieDuIXAvVCSm6K+VT7Oh/V3Ub+Az+/Lnv0zk61yt/BKlX7pV6
	 VP6jEgbJH3SAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEDA8406C4;
	Mon,  7 Apr 2025 14:02:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D31E1DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 14:02:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 829A160BCB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 14:02:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qf924Ai8PKDM for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 14:02:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D59BE60B16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D59BE60B16
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D59BE60B16
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 14:02:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C7A3CA48C47;
 Mon,  7 Apr 2025 13:57:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9351BC4CEDD;
 Mon,  7 Apr 2025 14:02:44 +0000 (UTC)
Date: Mon, 7 Apr 2025 15:02:42 +0100
From: Simon Horman <horms@kernel.org>
To: Xuanqiang Luo <xuanqiang.luo@linux.dev>
Cc: przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Xuanqiang Luo <luoxuanqiang@kylinos.cn>
Message-ID: <20250407140242.GK395307@horms.kernel.org>
References: <20250325020149.2041648-1-xuanqiang.luo@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250325020149.2041648-1-xuanqiang.luo@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744034566;
 bh=fR7PBr6tXm57kWHmOH6/mTwC1BYD8urfsW/j3fAdi+8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sktWr8vfZzwR4iCxq07Y3isgrQymVdA1eK1vTdZIH01p+zpcGhsWAlsZSdD5jTfWC
 r3BMISYilhgVeeSnQMhpE9ENTOKOR7cCRU04HRN1htlhrvAbdEVdpUu2TsG5PHgvAy
 BjKKzoIo2LR9men2Rmi4Vfdxe6MnjwX2pmGtO1871I2fhqymPGKEbnwvplma9RIK9n
 UzRo7DVEtEk8vvEqVOWswqzhd9sO/QGeheGfjFjO/4ij+mrj5yq5hSpMccZYTnMaLd
 hiT8AVXpXT8BLnA5FTd3C/1QorD/mTFFIqCFyzjEqbyzxquLSvBPxncsHWO2NIzZwm
 uzVo6vxjg9Fhw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=sktWr8vf
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Check VF VSI Pointer
 Value in ice_vc_add_fdir_fltr()
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

On Tue, Mar 25, 2025 at 10:01:49AM +0800, Xuanqiang Luo wrote:
> From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
> 
> As mentioned in the commit baeb705fd6a7 ("ice: always check VF VSI
> pointer values"), we need to perform a null pointer check on the return
> value of ice_get_vf_vsi() before using it.
> 
> v2: Add "iwl-net" to the subject and modify the name format.
> 
> Fixes: 6ebbe97a4881 ("ice: Add a per-VF limit on number of FDIR filters")
> Signed-off-by: Xuanqiang Luo <luoxuanqiang@kylinos.cn>

Reviewed-by: Simon Horman <horms@kernel.org>

> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index 14e3f0f89c78..53bad68e3f38 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -2092,6 +2092,12 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
>  	dev = ice_pf_to_dev(pf);
>  	vf_vsi = ice_get_vf_vsi(vf);
>  

nit, but not need to repost because of this: it's seems nicer
not to have not to have a blank line here. And instead, if one is
really wanted, put it above the ice_get_vf_vsi() line.

> +	if (!vf_vsi) {
> +		dev_err(dev, "Can not get FDIR vf_vsi for VF %u\n", vf->vf_id);
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err_exit;
> +	}
> +
>  #define ICE_VF_MAX_FDIR_FILTERS	128
>  	if (!ice_fdir_num_avail_fltr(&pf->hw, vf_vsi) ||
>  	    vf->fdir.fdir_fltr_cnt_total >= ICE_VF_MAX_FDIR_FILTERS) {
> -- 
> 2.27.0
> 
> 
