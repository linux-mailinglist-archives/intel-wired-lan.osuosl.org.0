Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B791448048B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Dec 2021 21:34:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41F19605A4;
	Mon, 27 Dec 2021 20:34:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vt_YnCDtkxWr; Mon, 27 Dec 2021 20:34:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F6C66058F;
	Mon, 27 Dec 2021 20:34:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 250381BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Dec 2021 20:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C5DE402D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Dec 2021 20:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cp0_gpmURUI9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Dec 2021 20:34:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42266402BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Dec 2021 20:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640637266; x=1672173266;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=iG1ggZ11L9JNjcVM2LtagDTWszVONzK5iQFTRN1NBe4=;
 b=Y+azEPzCyM7O0pxbTwcxY3sTT9MTPtcsJayHj1KSGWqkOKXreFdRSKoU
 sDyw7Xg2okXrYwiAPvuuCq4rSHjZvkO+P6c9IyvYrFnoH0bx1DThn3Nn9
 li6LAU4Ul/I8ERMj3+HwH82oIk8UKuaShuu+7mjGrUl7JRYUuPHw6xqnr
 BLcMCQerXi4uL+Gr5G/YjVw8zMHXS3caFGRtBSjvzYMmkkI0J0+fJl6aE
 85sbccO6wnEG4FZWKKsdNOt6Ykjp3GMBaiylgVxkGwlR1jCmiFiug0dsp
 eV2RTqEyFWGbXYxlXLNrkAjjMPFIpWxJhak0DGHxioTXUWS7p/tbCZKJw Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10210"; a="302022252"
X-IronPort-AV: E=Sophos;i="5.88,240,1635231600"; d="scan'208";a="302022252"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2021 12:34:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,240,1635231600"; d="scan'208";a="523405879"
Received: from krausnex-mobl.ger.corp.intel.com (HELO [10.255.195.237])
 ([10.255.195.237])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2021 12:34:18 -0800
Message-ID: <e7145513-1808-fb59-35cc-37169ecec047@linux.intel.com>
Date: Mon, 27 Dec 2021 22:34:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Alexander Lobakin <alexandr.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20211208140702.642741-1-alexandr.lobakin@intel.com>
 <20211208140702.642741-7-alexandr.lobakin@intel.com>
From: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>
In-Reply-To: <20211208140702.642741-7-alexandr.lobakin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 6/9] igc: don't reserve
 excessive XDP_PACKET_HEADROOM on XSK Rx to skb
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
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Andrii Nakryiko <andrii@kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, KP Singh <kpsingh@kernel.org>,
 Yonghong Song <yhs@fb.com>, bpf@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/8/2021 16:06, Alexander Lobakin wrote:
> {__,}napi_alloc_skb() allocates and reserves additional NET_SKB_PAD
> + NET_IP_ALIGN for any skb.
> OTOH, igc_construct_skb_zc() currently allocates and reserves
> additional `xdp->data_meta - xdp->data_hard_start`, which is about
> XDP_PACKET_HEADROOM for XSK frames.
> There's no need for that at all as the frame is post-XDP and will
> go only to the networking stack core.
> Pass the size of the actual data only (+ meta) to
> __napi_alloc_skb() and don't reserve anything. This will give
> enough headroom for stack processing.
> Also, net_prefetch() xdp->data_meta and align the copy size to
> speed-up memcpy() a little and better match igc_costruct_skb().
> 
> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
> Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 13 +++++++------
>   1 file changed, 7 insertions(+), 6 deletions(-)
>
Tested-by: Nechama Kraus <nechamax.kraus@linux.intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
