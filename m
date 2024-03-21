Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1556886036
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 19:03:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 240F3405BD;
	Thu, 21 Mar 2024 18:03:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GinCussudL1e; Thu, 21 Mar 2024 18:03:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CED3401D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711044195;
	bh=nRNk8DmXe6CPB4/6YrKVTsejbGfE1zUOjTQsm19OqvI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tYq5C15YS+rv0MwwT4GX0eKrbGEhrfzej6gQewgQFbAoUZhrp/+cDI7SVSqGr6DH4
	 ZKe/xTKVwHWPe3ifZNkOQV/lFFRoAj1cDWRrjWsFDGHy+qsCXVfVgzWZPB8A3c0jTK
	 y+QZWIbqCq7a2dy8EZ/Crky8SrWSnxbtUS0et8xm14Wpoz0ZK8bTZoSrc2eBw/qN8O
	 oayU5vF19DIp0aC6gwYyhLg/JRfdu9l8v+gItVj5e8sFkOEP1VxIxn4nm6UhwrlJFN
	 /f5TtupREEeTmZH5yDLmGaXxzik5cLLC80qt6ST4qCLlCYEhAYoRIZypYM8+SZfK3i
	 LlbLsOEEBGJjg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5CED3401D8;
	Thu, 21 Mar 2024 18:03:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C7341BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 18:03:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 780E0401D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 18:03:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hnOpzMv9xCgE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 18:03:10 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 27FD7400B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27FD7400B5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 27FD7400B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 18:03:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6180633"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; 
   d="scan'208";a="6180633"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 11:03:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="914717075"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; d="scan'208";a="914717075"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 11:03:04 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1rnMkm-0000000ExcL-2Dkx; Thu, 21 Mar 2024 20:03:00 +0200
Date: Thu, 21 Mar 2024 20:03:00 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Markus Elfring <Markus.Elfring@web.de>
Message-ID: <Zfx2VL7xnj4rQoV8@smile.fi.intel.com>
References: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
 <d2b1f3bd-42f1-483b-916e-3735b39a30e1@web.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d2b1f3bd-42f1-483b-916e-3735b39a30e1@web.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711044190; x=1742580190;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cpK068KVvFXrGJJCmc7jXbXiOVvPQ+oU7A4+RLoU+Qw=;
 b=LjblWkn46DoJ4D30T1Q4+Xd2HPvwa1M93IlbrFEIGc4mVKHokGBICI3L
 k1DV7xeY8QPHGYUMy0tVVOBiZnxjfeftq4YU77n1MWAnsZ/BEAMIY9/M7
 oaH4WY8SApKWwNspi8MOYAtUd9IKT4dY70kznKAf2nW1rZ7r8tAImk8ik
 xwyoD0fAxtGAxRseivGItDo6DzvJ2ee3HGygKUfqQaF5KYv+fX1soZP5k
 nyhCpxkMqF8PNDNd0LYoU3ljR1uGPC8/2x0idbHxZNPJ7G/ykfxpeVyNh
 Bn02mls4QgT04iL1Cs6qIjrvVbGU323Or3xdjJBpT8/070h2lmqx61438
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LjblWkn4
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Julia Lawall <julia.lawall@inria.fr>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, David Laight <David.Laight@aculab.com>,
 intel-wired-lan@lists.osuosl.org, Jonathan Cameron <jic23@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 21, 2024 at 06:59:00PM +0100, Markus Elfring wrote:

…

> > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > @@ -941,11 +941,11 @@ static u64 ice_loopback_test(struct net_device *netdev)
> >  	struct ice_netdev_priv *np = netdev_priv(netdev);
> >  	struct ice_vsi *orig_vsi = np->vsi, *test_vsi;
> >  	struct ice_pf *pf = orig_vsi->back;
> > +	u8 *tx_frame __free(kfree) = NULL;
> >  	u8 broadcast[ETH_ALEN], ret = 0;
> >  	int num_frames, valid_frames;
> >  	struct ice_tx_ring *tx_ring;
> >  	struct ice_rx_ring *rx_ring;
> > -	u8 *tx_frame __free(kfree);
> >  	int i;
> >
> >  	netdev_info(netdev, "loopback test\n");
> 
> How do you think about to reduce the scope for the affected local variable instead
> with the help of a small script (like the following) for the semantic patch language?
> 
> @movement@
> attribute name __free;
> @@
> -u8 *tx_frame __free(kfree);
>  int i;
>  ... when any
>  if (ice_fltr_add_mac(test_vsi, ...))
>  { ... }
> +
> +{
> +u8 *tx_frame __free(kfree) = NULL;
>  if (ice_lbtest_create_frame(pf, &tx_frame, ...))
>  { ... }
>  ... when any
> +}
> +
>  valid_frames = ice_lbtest_receive_frames(...);

I believe you don't understand what the scope of the above can be.

-- 
With Best Regards,
Andy Shevchenko


