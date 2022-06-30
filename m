Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FC5561751
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jun 2022 12:10:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A2A641BE3;
	Thu, 30 Jun 2022 10:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A2A641BE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656583836;
	bh=msX86gfFxXTkP79zG6r/jGIVx1GwxAcbB0HveXWzTbE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ldErprvTZ+wXdvd/ojo9xbovvjaCTzmhgJsZzWdc/sDKAZN7dFuJWkgURx5VmEDm1
	 GyEerXfTz2aUuRPfvOa+C9SDvYHC351cOIkSVO5VyBQ1n9N9GAXS8RZrokXv4v/PVW
	 GqS98OFPog1y5lqyxjIhi4Hu0hyGH2dQUDo3IgzqC8ZwkHDLrj0RtD1dKNN8vuwS/F
	 yjusnV71wn4GDQ3I8yX6Uc7j4VqzBoMyh517EyUBYLvenRQxkUPkbXwF8FBlbNjWAL
	 qMkV75/AfPulovvVZ78AUmRMz8btAoHtSJrJHA6IsIknz46UYZFse3WgHUG3R3Y6cC
	 fK+yaS1a5Y/sg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UY0O-B-9LqbD; Thu, 30 Jun 2022 10:10:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AD3B41B4F;
	Thu, 30 Jun 2022 10:10:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AD3B41B4F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5EE191BF387
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 10:10:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 33EBC840CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 10:10:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33EBC840CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vyiEfm_u5qWF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jun 2022 10:10:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C83183F70
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7C83183F70
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 10:10:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="283405710"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="283405710"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 03:10:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="680918936"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Jun 2022 03:10:23 -0700
Date: Thu, 30 Jun 2022 12:10:22 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Message-ID: <Yr12jl1nEqqVI3TT@boxer>
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220629085836.18042-1-fmdefrancesco@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656583828; x=1688119828;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XzV8lb39RqU/gtzU+hmSRVGu76gzswS57eUcYcMU+Qs=;
 b=aZS93eVCGoesr1bFR8fnVYOlg23DYll4Sm8l5ZWDeyVxx2AaubJqwl76
 Z39R2pnsbvV1Rn0xKu3BMqfKJqij6opY3Uc2oG094zuLVs/IKLf9t1V5+
 +3lH08RAz5ect3wLrl/gjqfgi5dlZgUj66rFSxIYFqMc3pPxjRQeHjP4k
 qpQrJ0npzmMU2/22Tn0HxetWy9n5y3bWcFr0xRFwXVcbQ4XgtFrbSkcLa
 EwMJDclXiZrpym0MelAJSTfN9PBEZTFX1Dbk79OXB8xeopVsH8kuCcja5
 aOfNMxEQBdjCwOFaB9WKZTQzpJxyPLwoUqNbOj7x6+yub7G1uIQQ1+IYG
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aZS93eVC
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, intel-wired-lan@lists.osuosl.org,
 alexanderduyck@fb.com, John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Ira Weiny <ira.weiny@intel.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 29, 2022 at 10:58:36AM +0200, Fabio M. De Francesco wrote:
> The use of kmap() is being deprecated in favor of kmap_local_page().
> 
> With kmap_local_page(), the mapping is per thread, CPU local and not
> globally visible. Furthermore, the mapping can be acquired from any context
> (including interrupts).
> 
> Therefore, use kmap_local_page() in ixgbe_check_lbtest_frame() because
> this mapping is per thread, CPU local, and not globally visible.

Hi,

I'd like to ask why kmap was there in the first place and not plain
page_address() ?

Alex?

> 
> Suggested-by: Ira Weiny <ira.weiny@intel.com>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 628d0eb0599f..e64d40482bfd 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -1966,14 +1966,14 @@ static bool ixgbe_check_lbtest_frame(struct ixgbe_rx_buffer *rx_buffer,
>  
>  	frame_size >>= 1;
>  
> -	data = kmap(rx_buffer->page) + rx_buffer->page_offset;
> +	data = kmap_local_page(rx_buffer->page) + rx_buffer->page_offset;
>  
>  	if (data[3] != 0xFF ||
>  	    data[frame_size + 10] != 0xBE ||
>  	    data[frame_size + 12] != 0xAF)
>  		match = false;
>  
> -	kunmap(rx_buffer->page);
> +	kunmap_local(data);
>  
>  	return match;
>  }
> -- 
> 2.36.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
