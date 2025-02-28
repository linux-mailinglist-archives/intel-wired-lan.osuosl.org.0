Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E41A4A04F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 18:26:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DB0D50C1C;
	Fri, 28 Feb 2025 17:26:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xZxP3uiu_nMX; Fri, 28 Feb 2025 17:26:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5949143488
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740763560;
	bh=lw0JWqI1OPnu2Yb7FT9723b2AYvYz4/NhY06TvPuIqs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=neJ9sCY23yJcj+GGk28BXL81sM2WahnFey36WALtESBXzkmFrpGEDcZLVNbRBtoye
	 r/d5PfkRUpkDxb5pzJXl9Xp/0FAd/LxQhTWSTxNky9eJmuL/xA9OCh2tM0tnyBQ3Tf
	 c3QpeFcvOHcDbhKPVg7sCobMtGlv+vuiALj/FyTZC5NjXdIiDuyselDw4H5sVZ6Haq
	 EL+HIiLLRrW4e5Jcj1OvE1q+98LrE8/OslXPw/JvA/WkRl1+15qiazfU776KN8epXl
	 lp9kNufd9w3e4KGSWrWJVfh+i796rSwLn/D7PzTHfaP4YUtAwuFW8Haw2vqGPnyKU2
	 GVZHLVbYrFaqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5949143488;
	Fri, 28 Feb 2025 17:26:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 04C3B1CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D01E04EF68
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:09:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XtXMNwrdKeps for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 17:09:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EFA354F081
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFA354F081
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFA354F081
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:09:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D3CFE61FAB;
 Fri, 28 Feb 2025 17:09:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 235BEC4CED6;
 Fri, 28 Feb 2025 17:09:41 +0000 (UTC)
Date: Fri, 28 Feb 2025 17:09:39 +0000
From: Simon Horman <horms@kernel.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20250228170939.GK1615191@kernel.org>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250225090847.513849-8-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225090847.513849-8-martyna.szapar-mudlaw@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740762583;
 bh=S9zzy7A7bNCFlFQ9EkUF9Yue0Nn9SL09FASYNBH3ceg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n4hukd2VmiE1dayEMU6q9Ah/OuSfy21KtM0dx1l1XCYTS32ikeHNUa1xLtPl1c7Nb
 5ULoNmMkI4OJfdtX5vUIO2U8LGLyLWkAbtjwu2ZZKZLaRp5h0I5oKnC3rbuzj1Ri7v
 iPKF4hutb2V8H+ajOGPmKOst69/Ikc2K+5Xel7ijQLUI7oH6XtB0wK6z39HQBhzQR5
 JHmFVCuep1eMSkQcLu3DjrOphWUyJDKWCKIk/U0+gA45TBuycy2cgKTmdGVmv52SEM
 ebbOKwl5K8/BTQRV9SJiBVo6DEty66EEa5vrZ/QtwOBvEumqz7XaE5m/giHTU6xmOz
 BE5N6GjAyRNzw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=n4hukd2V
Subject: Re: [Intel-wired-lan] [iwl-net v2 5/5] ice: fix using untrusted
 value of pkt_len in ice_vc_fdir_parse_raw()
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

On Tue, Feb 25, 2025 at 10:08:49AM +0100, Martyna Szapar-Mudlaw wrote:
> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> 
> Fix using the untrusted value of proto->raw.pkt_len in function
> ice_vc_fdir_parse_raw() by verifying if it does not exceed the
> VIRTCHNL_MAX_SIZE_RAW_PACKET value.
> 
> Fixes: 99f419df8a5c ("ice: enable FDIR filters from raw binary patterns for VFs")
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
> ---
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 25 +++++++++++++------
>  1 file changed, 17 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index 14e3f0f89c78..6250629ee8f9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -835,18 +835,27 @@ ice_vc_fdir_parse_raw(struct ice_vf *vf,
>  	u8 *pkt_buf, *msk_buf __free(kfree);
>  	struct ice_parser_result rslt;
>  	struct ice_pf *pf = vf->pf;
> +	u16 pkt_len, udp_port = 0;
>  	struct ice_parser *psr;
>  	int status = -ENOMEM;
>  	struct ice_hw *hw;
> -	u16 udp_port = 0;
>  
> -	pkt_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
> -	msk_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
> +	if (!proto->raw.pkt_len)
> +		return -EINVAL;
> +
> +	pkt_len = proto->raw.pkt_len;

Hi Martyna,

A check is made for !proto->raw.pkt_len above.
And a check is made for !pkt_len below.

This seems redundant.

> +
> +	if (!pkt_len || pkt_len > VIRTCHNL_MAX_SIZE_RAW_PACKET)
> +		return -EINVAL;

...
