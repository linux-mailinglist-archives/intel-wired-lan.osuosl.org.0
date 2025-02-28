Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1692A4A04C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 18:25:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B70650C22;
	Fri, 28 Feb 2025 17:25:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id efAcFqUfmQWM; Fri, 28 Feb 2025 17:25:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C4B9509F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740763557;
	bh=4O2DnyzODLsgs3J9j34JUQumR+KnJ3L2+Imsd2T+fSk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DEQHRC1Oq8gImBD9ISxUSPelSAFiDq7Kmk4TQKbwl+11Sbo00bbkSEaDd2ZmKl2ws
	 EVt55A3tCwtHtfviTZUIBCNLFOkGUizOho/Klk8+WVmsJ9Fd3rd/wcbOIGBpj8ZbOd
	 +E4hxSfWw0ywOffxwRlyU1n3KOMudlGXZVHHR3KqKMNsMZLPPLKpDFEQsh+VrIYfxZ
	 ME41q+BQPwHsgdALNXhXXmc2v7HSeS8dNceJbQ8dyAFNnMsVteKYq/mDDOcW5abZng
	 Orm7drlOnZn5v20ZnXhCAhYaQ0d/SeKH0QsrlMd1GIa4S5ToPJj54+XLHa1w7n6/yi
	 bmZ4MoN0gu30A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C4B9509F7;
	Fri, 28 Feb 2025 17:25:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 852EA1DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:17:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7336140482
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:17:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ovy52dNAb42v for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 17:17:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 562D3402E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 562D3402E6
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 562D3402E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:17:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C9A9061148;
 Fri, 28 Feb 2025 17:17:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E48FC4CED6;
 Fri, 28 Feb 2025 17:17:55 +0000 (UTC)
Date: Fri, 28 Feb 2025 17:17:53 +0000
From: Simon Horman <horms@kernel.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20250228171753.GL1615191@kernel.org>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250225090847.513849-8-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225090847.513849-8-martyna.szapar-mudlaw@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740763077;
 bh=L5qKmW9g5UE+AbZtglGmdI2i5mIH089oEROsqANpXdI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PwWsI0ucRfx9BGYJa0tTEXgMIenITKpMGN896F4GhZH8T/JDflhvsfXM++C4XXeCn
 XghQqY/Ki232i7gmubV4auCpnUzX1y+tYgU6fG7FQGk+N3zNCWY0E0/0A4Q3zNCvWX
 01OWwqaW63i+w6FfVxBRKEzn1LbKIWwpSEgLBCq32sNGvlddYV05FwDas0en4fsYfC
 /sOYlDyx5ozyq0vr/dodCD9vtgrP3j+0Z8EdQ+aoT7nBZY87/0kv6vYZiQybzjcEf5
 hAzHQ+ySLaBVpcWSIVkM7BHZJQMRnGkIGAuNdknh+tGpAuQ+EfCVtVIiHLkZ74bhbj
 R+excFWex/xMw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PwWsI0uc
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

Hi Martyna,

It seems to me that the use of __free() above will result in
kfree(msk_buf) being called here. But msk_buf is not initialised at this
point.

My suggest would be to drop the use of __free().
But if not, I think that in order to be safe it would be best to do this
(completely untested;

	u8 *pkt_buf, *msk_buf __free(kfree) = NULL;

...
