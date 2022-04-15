Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41ABA503020
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 23:41:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9D9660C0B;
	Fri, 15 Apr 2022 21:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fAQrPW1oUy3e; Fri, 15 Apr 2022 21:41:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E23BC60B96;
	Fri, 15 Apr 2022 21:41:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE7F11C11A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 21:41:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB51860B96
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 21:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hDG-i1jhne1C for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 21:40:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 74D4360AFF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 21:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650058859; x=1681594859;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=D+EtR25o6TgsLEAQY93ZWajgB/+OLtNNhIpII8Uyeks=;
 b=J3NJ2Jp/yNJsDB+nyegVPy2Zfz0dGoiKYRsWIRuuk+Ts3oY/9dv/phJ8
 m/Nw4PeAnACterylQtv7B8vTwommLSQk2jbV1nLvWA2H+9UVs8dUYzYEn
 14/ZnoXbEwDuZH7RZiuCQEydzJtYW9zwhbOJbrzYTC6OyR2c9ZBbLEvye
 r8SDgr0szB7b5ZQ1T/rVkeqFN2Cb0JWcdN8iI0fL+S5KoufYJT2jVD+vr
 IE2qtvPLfYyy0tYhrN9ORxcSNhUmq7BK/29s4ysXn7uq9vjjd9sPzzwKA
 sePgw5NLhihmufbRaXV7WNYW69ckemgt4ltgCttgCH2r32bZNMXUGuySk g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="288301223"
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; d="scan'208";a="288301223"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 14:40:58 -0700
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; d="scan'208";a="560709031"
Received: from aelhiber-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.212.78.254])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 14:40:58 -0700
Date: Fri, 15 Apr 2022 14:40:58 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <Ylnmaji5bHHp8t3p@iweiny-desk3>
References: <20220415205307.675650-1-eng.alaamohamedsoliman.am@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220415205307.675650-1-eng.alaamohamedsoliman.am@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH] intel: igb: igb_ethtool.c: Convert
 kmap() to kmap_local_page()
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
Cc: outreachy@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 15, 2022 at 10:53:07PM +0200, Alaa Mohamed wrote:
> The use of kmap() is being deprecated in favor of kmap_local_page()
> where it is feasible.
> 
> With kmap_local_page(), the mapping is per thread, CPU local and not
> globally visible.
> 
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 2a5782063f4c..ba93aa4ae6a0 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -1798,14 +1798,14 @@ static int igb_check_lbtest_frame(struct igb_rx_buffer *rx_buffer,
>  
>  	frame_size >>= 1;
>  
> -	data = kmap(rx_buffer->page);
> +	data = kmap_local_page(rx_buffer->page);
>  
>  	if (data[3] != 0xFF ||
>  	    data[frame_size + 10] != 0xBE ||
>  	    data[frame_size + 12] != 0xAF)
>  		match = false;
>  
> -	kunmap(rx_buffer->page);
> +	kunmap_local(rx_buffer->page);

kunmap_local() is different from kunmap().  It takes an address within the
mapped page.  From the kdoc:

/**
 * kunmap_local - Unmap a page mapped via kmap_local_page().
 * @__addr: An address within the page mapped
 *
 * @__addr can be any address within the mapped page.  Commonly it is the
 * address return from kmap_local_page(), but it can also include offsets.
 *
 * Unmapping should be done in the reverse order of the mapping.  See
 * kmap_local_page() for details.
 */
#define kunmap_local(__addr)                                    \
...


Ira

>  
>  	return match;
>  }
> -- 
> 2.35.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
