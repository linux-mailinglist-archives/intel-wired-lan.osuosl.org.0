Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B70876BA6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 21:20:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0FEE41CCE;
	Fri,  8 Mar 2024 20:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NhNyIvKTIgyJ; Fri,  8 Mar 2024 20:20:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3969D40B4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709929231;
	bh=dCwA1ZEnNSWwn/RUD3zA3y9EWHi8z80JtCHdS7qOyRY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hKXjnAHIRxRpQq+u697bX6NfGIKMe7ETLdNn+hMQJmGb1Zvf5/7JSPuzqDEFZkba/
	 GO9+9eRzqtyEMPVXLSp5/pc/ZXpd1U79P1le3Z2+ELCWSwZbeOOw1bsaReI41Gasoy
	 ix/TW/70j90xvl9iIpZbefpzYUfkObGsfkD7mmOaoZQQLKHfWHBp5EQOuSuYEOMLG4
	 2qK6mMieLFXQDuLI3V2XEG7BWtvQbC99WBfWduLpxZqo2fwrgikOdHZ4z82BpGqfFl
	 ba854rgKkuoX2UqeNOIjX8hNBCV0f9IyQwy9CwWwF5xwBzpBMeZDdF9s6Yh9qGM97T
	 cKsoVrCAW62+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3969D40B4E;
	Fri,  8 Mar 2024 20:20:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 76E3B1BF306
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 20:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FED4406E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 20:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DZ7MHxpY3V-x for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 20:20:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1FDB84067F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FDB84067F
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1FDB84067F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 20:20:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id BCF3ACE296F;
 Fri,  8 Mar 2024 20:20:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33931C433C7;
 Fri,  8 Mar 2024 20:20:20 +0000 (UTC)
Date: Fri, 8 Mar 2024 20:20:18 +0000
From: Simon Horman <horms@kernel.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20240308202018.GC603911@kernel.org>
References: <20240306235128.it.933-kees@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240306235128.it.933-kees@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709929223;
 bh=gYgxy4F5CnKyHPKbcHJaavUq/XxDolwE8qGCqjDXh+8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bwXjVQtGGIi4z05dXM7t+mW349nAbNwduE6oKVrFaZqaqvjJAZm1gY9cyKAaaGzVz
 jeIwty/w36mFs0a1IIzAQA0eel7mIwNKMwXnn3QRuKZkesAf96SFGm2HRHvyWsDzkR
 Ic29K329b7pgj1Ddkv8YZlovz2x7xk9WTC7TuDGbyRR8eYWnkB7FsGpkAIgQQnlntd
 KR14Yc8aUhx3c87tFBIAuvlqn7x+QBYUvhD9n6gwg2+m1QsW0zm6rybHTFwnjK6Rt1
 YJtX06wEpTmXnvJUMUeHrD1N9CvJAHtpr9tlqrVU8cJkkGHb34BD4L2HIBH+pmpn0R
 UYec58b4sG9Wg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bwXjVQtG
Subject: Re: [Intel-wired-lan] [PATCH v2] overflow: Change DEFINE_FLEX to
 take __counted_by member
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-hardening@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 06, 2024 at 03:51:36PM -0800, Kees Cook wrote:
> The norm should be flexible array structures with __counted_by
> annotations, so DEFINE_FLEX() is updated to expect that. Rename
> the non-annotated version to DEFINE_RAW_FLEX(), and update the
> few existing users.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

Hi Kees,

I'm unclear what this is based on, as it doesn't appear to apply
cleanly to net-next or the dev-queue branch of the iwl-next tree.
But I manually applied it to the latter and ran some checks.

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> index f84bab80ca42..d4baae8c3b72 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c

Given what is currently in the dev-queue branch of the iwl-next tree,
the following hunk also seems to be required for ice_switch.c.

@@ -5378,7 +5378,7 @@ ice_get_compat_fv_bitmap(struct ice_hw *hw, struct ice_adv_rule_info *rinfo,
  */
 static int ice_subscribe_recipe(struct ice_hw *hw, u16 rid)
 {
-	DEFINE_FLEX(struct ice_aqc_alloc_free_res_elem, sw_buf, elem, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_alloc_free_res_elem, sw_buf, elem, 1);
 	u16 buf_len = __struct_size(sw_buf);
 	u16 res_type;
 	int status;

...

> diff --git a/include/linux/overflow.h b/include/linux/overflow.h
> index aa691f2119b0..677b03c4c84f 100644
> --- a/include/linux/overflow.h
> +++ b/include/linux/overflow.h
> @@ -396,9 +396,9 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
>   * @name: Name for a variable to define.
>   * @member: Name of the array member.
>   * @count: Number of elements in the array; must be compile-time const.
> - * @initializer: initializer expression (could be empty for no init).
> + * @initializer...: initializer expression (could be empty for no init).

Curiously kernel-doc --none seems happier without the line above changed.

>   */
> -#define _DEFINE_FLEX(type, name, member, count, initializer)			\
> +#define _DEFINE_FLEX(type, name, member, count, initializer...)			\
>  	_Static_assert(__builtin_constant_p(count),				\
>  		       "onstack flex array members require compile-time const count"); \
>  	union {									\

...
