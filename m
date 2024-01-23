Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04ABA839499
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 17:26:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D12E40491;
	Tue, 23 Jan 2024 16:26:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D12E40491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706027165;
	bh=NvUIQluKlHwuY0RyyjEf6elrQeh0AtWEivc9YLeLMS8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GbilOeWjx8ro36V67thmSOb1hhlJNZ8RbdpLmzivhlSsYRPu0q3QjDbH/m1PKktzQ
	 ay2HJMv6fZIM+u/l9xb4XJxmxLWCn6nTLV30hQv9ByIQvA4GjWaT15RTzR7bLCzHsx
	 nhelFLrggR16qaayNeMbqJjyd7zc1zx0kvpRrAKXb9Zok5DbBZCtPklCsNKPjsqFGm
	 fdE4J4HE0gA0IeFADL4vGMsMF8LuMjY75JM0g+2dIDqhT5J8OME3uFt+NlhuCNVsF6
	 9YRk2i4Vni26C3joqR5iA0rolN4ngZTaNH1mgdUcMYFG0JA2tzXUr2iJkm2s4E4PwA
	 jrhb8HwogFnxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EPsoV_uOKOeS; Tue, 23 Jan 2024 16:26:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5207E40217;
	Tue, 23 Jan 2024 16:26:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5207E40217
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 249061BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:25:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 08E6A830D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:25:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08E6A830D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2eHjqLkEo7t5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 16:25:57 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E98CF82F77
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:25:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E98CF82F77
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id EA8FECE2B95;
 Tue, 23 Jan 2024 16:25:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5435C433C7;
 Tue, 23 Jan 2024 16:25:50 +0000 (UTC)
Date: Tue, 23 Jan 2024 16:25:47 +0000
From: Simon Horman <horms@kernel.org>
To: Alan Brady <alan.brady@intel.com>
Message-ID: <20240123162547.GA254773@kernel.org>
References: <20240122211125.840833-1-alan.brady@intel.com>
 <20240122211125.840833-2-alan.brady@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240122211125.840833-2-alan.brady@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706027152;
 bh=Db/jN7Jo2Il34tau7l6TXAThDAYrdAUA/UZhgrIh4Qw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q5ni6bSFBx5yE0uNeFPBXhRFxOrVjlLBoWxSViJdx0Q7kjcfRuXo+KqDghmh+0av1
 0iwIXIpDkAdpflGuqVdNNdTbe09dPC1F2rw6Vr5vi3+QTQtQA2eJVUKKhJkddHRy5W
 HcFEQRZGocc85Gs+nJtkRhJbPRfEpDarpHtfewP4Cpbi5BJSZt8C5INzAVuWR6jAxP
 YLwp/hHiDFMGmbd2EN+vN8Rs5uoN6vOwNQpG2+itY1y3XxO8QYJ2S5iBeCPD0VHeSf
 nIaWxoYd1rRaJkKMQOoerdIbC/y1rq+7U/3Wu0O7PB+FpzkAjAeo3CJ/s+z16ZINqK
 7/lPapy0VGaew==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=q5ni6bSF
Subject: Re: [Intel-wired-lan] [PATCH 1/6 iwl-next] idpf: implement virtchnl
 transaction manager
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
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 intel-wired-lan@lists.osuosl.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 22, 2024 at 01:11:20PM -0800, Alan Brady wrote:
> This starts refactoring how virtchnl messages are handled by adding a
> transaction manager (idpf_vc_xn_manager).
> 
> There are two primary motivations here which are to enable handling of
> multiple messages at once and to make it more robust in general. As it
> is right now, the driver may only have one pending message at a time and
> there's no guarantee that the response we receive was actually intended
> for the message we sent prior.
> 
> This works by utilizing a "cookie" field of the message descriptor. It
> is arbitrary what data we put in the cookie and the response is required
> to have the same cookie the original message was sent with. Then using a
> "transaction" abstraction that uses the completion API to pair responses
> to the message it belongs to.
> 
> The cookie works such that the first half is the index to the
> transaction in our array, and the second half is a "salt" that gets
> incremented every message. This enables quick lookups into the array and
> also ensuring we have the correct message. The salt is necessary because
> after, for example, a message times out and we deem the response was
> lost for some reason, we could theoretically reuse the same index but
> using a different salt ensures that when we do actually get a response
> it's not the old message that timed out previously finally coming in.
> Since the number of transactions allocated is U8_MAX and the salt is 8
> bits, we can never have a conflict because we can't roll over the salt
> without using more transactions than we have available.
> 
> This starts by only converting the VIRTCHNL2_OP_VERSION message to use
> this new transaction API. Follow up patches will convert all virtchnl
> messages to use the API.
> 
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>

...

> +/**
> + * idpf_vc_xn_init - Initialize virtchnl transaction object
> + * @vcxn_mngr: pointer to vc transaction manager struct
> + */
> +static void idpf_vc_xn_init(struct idpf_vc_xn_manager *vcxn_mngr)
> +{
> +	int i;
> +
> +	spin_lock_init(&vcxn_mngr->xn_bm_lock);
> +
> +	for (i = 0; i < ARRAY_SIZE(vcxn_mngr->ring); i++) {
> +		struct idpf_vc_xn *xn = &vcxn_mngr->ring[i];
> +
> +		xn->state = IDPF_VC_XN_IDLE;
> +		xn->idx = i;
> +		idpf_vc_xn_release_bufs(xn);
> +		init_completion(&xn->completed);
> +	}

Hi Alan and Joshua,

I'm slightly surprised to see that
it is safe to initialise xn_bm_lock above,
but it needs to be taken below.

> +
> +	spin_lock_bh(&vcxn_mngr->xn_bm_lock);
> +	bitmap_set(vcxn_mngr->free_xn_bm, 0, IDPF_VC_XN_RING_LEN);
> +	spin_unlock_bh(&vcxn_mngr->xn_bm_lock);
> +}
