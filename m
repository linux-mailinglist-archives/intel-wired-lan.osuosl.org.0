Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAAE9A1F6E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 12:07:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB0B84078C;
	Thu, 17 Oct 2024 10:07:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 48TTXoAkV7lT; Thu, 17 Oct 2024 10:07:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C34A1406EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729159633;
	bh=aIt4bCXIOMwJFJ0IbnAykyQhYiFHo+yrLpheu9muex8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DEITtAX9SbEQtuTU6JvxrW2v4hLPnlJXeAMeyLz2xDQKuZYolLkAYqzUWmAkDua+Q
	 4vd35Y9d/nL57H21HZe8LiHhyNhRTjUvSwKS/pMJbwbmOOFFZ5qAIloJed7RUwtElt
	 JU7gYa16zZcOfuufewGQaMWqurS8ZOqHuC0YIo4pyjJCOiQQnwNS85SOjivbqHzqAq
	 hDLTdzIXbR+k1E3f5KuUkrhRsnXqx/oUpaXW+qbY/LKT5NqddwuovQWm8XXuttrbwR
	 rZ5ASgxTdA39o/IQ06FJP18PV92cQPjL74NKKurHckyztJ/4GQkWKxYZc114c8tM1b
	 XPgYl+GbWh5OQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C34A1406EF;
	Thu, 17 Oct 2024 10:07:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CA5772316
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 10:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A536880C35
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 10:07:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HWt-h5DQTdqC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 10:07:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7D57D812BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D57D812BB
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D57D812BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 10:07:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A510C5C5AAB;
 Thu, 17 Oct 2024 10:06:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BD0EC4CEC3;
 Thu, 17 Oct 2024 10:07:01 +0000 (UTC)
Date: Thu, 17 Oct 2024 11:06:59 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Dan Nowlin <dan.nowlin@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20241017100659.GD1697@kernel.org>
References: <20241003001433.11211-4-przemyslaw.kitszel@intel.com>
 <20241003001433.11211-5-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241003001433.11211-5-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729159622;
 bh=YBkxxstuUuf5CLdZWYU59di/a9T0f/45jEPdXIIjQnA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e5bHAQ1vwmQYbcHlq+dDEFuUA/WDDRObnFq7f1E1szmDJq63GJ3X9HsSWfbo+NOTN
 U6pEH0oUahvD0CLsbs9hqjzLF5dPGJto4ZaBGA0RuJFVI6aVTekIGWS3L6CGZo5/QY
 h40jab6SjO2/SFpOuoLYndl1f8O4KjylfawNA4q2rdeQlm1QGt+fJBbWsPZic+HAhQ
 hDVuOqjq69SpH1xL+TPRwyTyllE7PuY4KKyPxwedD0m2TIauxxpltJqcZ4oHddl7Xk
 V3J+Yy8poRbKDTBfuxvywwvXiPB8wop2ORpVE1DqyeAkLXjFvro92P6ldpQdSJXj7Y
 Jy8R+K0crQuqg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=e5bHAQ1v
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: refactor "last"
 segment of DDP pkg
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

On Thu, Oct 03, 2024 at 02:10:31AM +0200, Przemek Kitszel wrote:
> Add ice_ddp_send_hunk() that buffers "sent FW hunk" calls to AQ in order
> to mark the "last" one in more elegant way. Next commit will add even
> more complicated "sent FW" flow, so it's better to untangle a bit before.
> 
> Note that metadata buffers were not skipped for NOT-@indicate_last
> segments, this is fixed now.
> 
> Minor:
>  + use ice_is_buffer_metadata() instead of open coding it in
>    ice_dwnld_cfg_bufs();
>  + ice_dwnld_cfg_bufs_no_lock() + dependencies were moved up a bit to have
>    better git-diff, as this function was rewritten (in terms of git-blame)
> 
> CC: Paul Greenwalt <paul.greenwalt@intel.com>
> CC: Dan Nowlin <dan.nowlin@intel.com>
> CC: Ahmed Zaki <ahmed.zaki@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Hi Przemek,

Some minor feedback from my side.

> ---
> git: --inter-hunk-context=6
> 
> v2: fixed one kdoc warning
> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 280 ++++++++++++-----------
>  1 file changed, 145 insertions(+), 135 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index 016fcab6ba34..a2bb8442f281 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -1210,6 +1210,127 @@ ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
>  	return status;
>  }
>  
> +/**
> + * ice_is_buffer_metadata - determine if package buffer is a metadata buffer
> + * @buf: pointer to buffer header
> + * Return: whether given @buf is a metadata one.
> + */
> +static bool ice_is_buffer_metadata(struct ice_buf_hdr *buf)
> +{
> +	return le32_to_cpu(buf->section_entry[0].type) & ICE_METADATA_BUF;

I see this is moving existing logic around.
And I see that this is a no-op on LE systems.
But it might be nicer to perform the byte-order conversion on the constant.

> +}
> +
> +/**
> + * struct ice_ddp_send_ctx - sending context of current DDP segment
> + * @hw: pointer to the hardware struct
> + *
> + * Keeps current sending state (header, error) for the purpose of proper "last"
> + * bit settting in ice_aq_download_pkg(). Use via calls to ice_ddp_send_hunk().

setting

> + */
> +struct ice_ddp_send_ctx {
> +	struct ice_hw *hw;
> +/* private: only for ice_ddp_send_hunk() */
> +	struct ice_buf_hdr *hdr;
> +	int err;
> +};
> +
> +/**
> + * ice_ddp_send_hunk - send one hunk of data to FW
> + * @ctx - current segment sending context
> + * @hunk - next hunk to send, size is always ICE_PKG_BUF_SIZE

Tooling seems to expect the following syntax.

 * @ctx: ...
 * @hunk: ...

> + *
> + * Send the next hunk of data to FW, retrying if needed.
> + *
> + * Notice: must be called once more with a NULL @hunk to finish up; such call
> + * will set up the "last" bit of an AQ request. After such call @ctx.hdr is
> + * cleared, @hw is still valid.
> + *
> + * Return: %ICE_DDP_PKG_SUCCESS if there were no problems; a sticky @err
> + *         otherwise.
> + */
> +static enum ice_ddp_state ice_ddp_send_hunk(struct ice_ddp_send_ctx *ctx,
> +					    struct ice_buf_hdr *hunk)

...

> +/**
> + * ice_dwnld_cfg_bufs_no_lock
> + * @ctx: context of the current buffers section to send
> + * @bufs: pointer to an array of buffers
> + * @start: buffer index of first buffer to download
> + * @count: the number of buffers to download
> + *
> + * Downloads package configuration buffers to the firmware. Metadata buffers
> + * are skipped, and the first metadata buffer found indicates that the rest
> + * of the buffers are all metadata buffers.
> + */
> +static enum ice_ddp_state
> +ice_dwnld_cfg_bufs_no_lock(struct ice_ddp_send_ctx *ctx, struct ice_buf *bufs,
> +			   u32 start, u32 count)
> +{
> +	struct ice_buf_hdr *bh;
> +	enum ice_ddp_state err;
> +
> +	if (!bufs || !count) {
> +		ctx->err = ICE_DDP_PKG_ERR;
> +		return ctx->err;
> +	}
> +
> +	bufs += start;
> +	bh = (struct ice_buf_hdr *)bufs;

Again I see that, to some extent, this is moving existing logic around.
But as bh is set in each loop iteration does it also need to be set here?

> +
> +	for (int i = 0; i < count; i++, bufs++) {
> +		bh = (struct ice_buf_hdr *)bufs;
> +		/* Metadata buffers should not be sent to FW,
> +		 * their presence means "we are done here".
> +		 */
> +		if (ice_is_buffer_metadata(bh))
> +			break;
> +
> +		err = ice_ddp_send_hunk(ctx, bh);
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_get_pkg_seg_by_idx
>   * @pkg_hdr: pointer to the package header to be searched

...

> @@ -1454,17 +1459,16 @@ ice_dwnld_sign_and_cfg_segs(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr,
>  	}
>  
>  	count = le32_to_cpu(seg->signed_buf_count);
> -	state = ice_download_pkg_sig_seg(hw, seg);
> +	state = ice_download_pkg_sig_seg(ctx, seg);
>  	if (state || !count)
>  		goto exit;
>  
>  	conf_idx = le32_to_cpu(seg->signed_seg_idx);
>  	start = le32_to_cpu(seg->signed_buf_start);
>  
> -	state = ice_download_pkg_config_seg(hw, pkg_hdr, conf_idx, start,
> -					    count);
> -
> +	return ice_download_pkg_config_seg(ctx, pkg_hdr, conf_idx, start, count);

This changes the conditions under which this function sets
ctx->err, which is then changed again by the following patch.
Is that intentional?

>  exit:
> +	ctx->err = state;
>  	return state;
>  }

...
