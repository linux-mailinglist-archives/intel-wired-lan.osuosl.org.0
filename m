Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D71EA9529E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Apr 2025 16:19:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FA1680EF0;
	Mon, 21 Apr 2025 14:19:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L4I3xfX81C4e; Mon, 21 Apr 2025 14:19:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C64080E60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745245188;
	bh=R6T144mn1gf1almbWLpMGOt9TlXFcsHxsRAhcafCgJI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zwfXDKFr4gEANbcqhNi2d+l6777r6ShYT5KmRImuI7KqikHaRROrsbYHzu2LkCL0f
	 DOuFdK6l6p1R2uqmTBWvUcSChwdTtx1w8TfOc1XRjLAu+xfQlUOCMxkK+EH9v9dhnl
	 ndoqvg6Oh6Q06BXCnsrADpA6R5GN1ZqHVKM7dG1cvhUgxaNUOmZttGI9BMivjJsCTg
	 T5psV84bP8LS8X45pC7v3eSUJopt9VOaK/VVLgd5FfEJr+82Wh2i/IH+0EKs+jAhWK
	 VqhrUblkly3XmCarS+PXOBL4XMbzS264wjlmNvHzGe8ll2vJsnnAawxwdF7RDowm0p
	 e4l28fd5iXuuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C64080E60;
	Mon, 21 Apr 2025 14:19:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DD6CD1C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 14:19:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3767406C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 14:19:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id djFIV061ZJRv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Apr 2025 14:19:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 265C94058F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 265C94058F
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 265C94058F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 14:19:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 08C5D4A0AF;
 Mon, 21 Apr 2025 14:19:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51A95C4CEE4;
 Mon, 21 Apr 2025 14:19:39 +0000 (UTC)
Date: Mon, 21 Apr 2025 15:19:37 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Mustafa Ismail <mustafa.ismail@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Wenjun Wu <wenjun1.wu@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Phani R Burra <phani.r.burra@intel.com>
Message-ID: <20250421141937.GI2789685@horms.kernel.org>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-7-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250408124816.11584-7-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1745245185;
 bh=Tr9+pqiq4D1eXz6CFkFBVMqYsvom8aBnfD6QBxYvocg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t3Jo7K93LVgH9rdJjTmiOPAouPdZfKVSSsI7tt0fE5/7NBNVaKUOx2TsqBgxaCnsx
 Z7XXaeoqdpcPl/j8zO29nasbGPGUeZReKOfPCG6Ag71sWYNoH69DrPvAqv6XHr5h4+
 c+8qagFwgMr0+CDx/i7qjqdHTkccn08kGgN1SR9suu+8LjldZMoLT4aNJ7bqJ5pfez
 XQFZ1fmQeeyR5vpQHfmuVM4+O+Tcys00pb6Xq31Y6QNAr4YSADBc0pEUsdetpE8Reo
 mWdp8kB+FdDO3RCPww9QmdbioUw8FXut2rQ1PvdJcPYRb7qQvxIZB0P1JAhK30yoyY
 nDS0mdRdLjsHw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=t3Jo7K93
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 06/14] libeth: add
 bookkeeping support for control queue messages
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

On Tue, Apr 08, 2025 at 02:47:52PM +0200, Larysa Zaremba wrote:
> From: Phani R Burra <phani.r.burra@intel.com>
> 
> All send control queue messages are allocated/freed in libeth itself
> and tracked with the unique transaction (Xn) ids until they receive
> response or time out. Responses can be received out of order, therefore
> transactions are stored in an array and tracked though a bitmap.
> 
> Pre-allocated DMA memory is used where possible. It reduces the driver
> overhead in handling memory allocation/free and message timeouts.
> 
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
> Co-developed-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/libeth/controlq.c | 578 +++++++++++++++++++
>  include/net/libeth/controlq.h                | 169 ++++++
>  2 files changed, 747 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/libeth/controlq.c b/drivers/net/ethernet/intel/libeth/controlq.c

...

> +/**
> + * libeth_ctlq_xn_deinit - deallocate and free the transaction manager resources
> + * @xnm: pointer to the transaction manager
> + * @ctx: controlq context structure
> + *
> + * All Rx processing must be stopped beforehand.
> + */
> +void libeth_ctlq_xn_deinit(struct libeth_ctlq_xn_manager *xnm,
> +			   struct libeth_ctlq_ctx *ctx)
> +{
> +	bool must_wait = false;
> +	u32 i;
> +
> +	/* Should be no new clear bits after this */
> +	spin_lock(&xnm->free_xns_bm_lock);
> +		xnm->shutdown = true;

nit: The line above is not correctly indented.

     Flagged by Smatch.

> +
> +	for_each_clear_bit(i, xnm->free_xns_bm, LIBETH_CTLQ_MAX_XN_ENTRIES) {
> +		struct libeth_ctlq_xn *xn = &xnm->ring[i];
> +
> +		spin_lock(&xn->xn_lock);
> +
> +		if (xn->state == LIBETH_CTLQ_XN_WAITING ||
> +		    xn->state == LIBETH_CTLQ_XN_IDLE) {
> +			complete(&xn->cmd_completion_event);
> +			must_wait = true;
> +		} else if (xn->state == LIBETH_CTLQ_XN_ASYNC) {
> +			__libeth_ctlq_xn_push_free(xnm, xn);
> +		}
> +
> +		spin_unlock(&xn->xn_lock);
> +	}
> +
> +	spin_unlock(&xnm->free_xns_bm_lock);
> +
> +	if (must_wait)
> +		wait_for_completion(&xnm->can_destroy);
> +
> +	libeth_ctlq_xn_deinit_dma(&ctx->mmio_info.pdev->dev, xnm,
> +				  LIBETH_CTLQ_MAX_XN_ENTRIES);
> +	kfree(xnm);
> +	libeth_ctlq_deinit(ctx);
> +}
> +EXPORT_SYMBOL_NS_GPL(libeth_ctlq_xn_deinit, "LIBETH_CP");

...
