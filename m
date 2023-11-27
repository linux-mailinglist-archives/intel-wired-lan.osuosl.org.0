Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E597FA730
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 17:57:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3CDF4088A;
	Mon, 27 Nov 2023 16:57:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3CDF4088A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701104254;
	bh=nbj6eYCZY3DmYxNzvBQqxNCUE+kit/mf9lYLT2jSlXw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yGuTBhV4o5XIrZWiRwywUOP1MzccoKzIHP+o4ayLVkyfJ6GnTRxfWAgCX3h/p+pOf
	 gEEdI5pjYfHorxiJxaEocLgZTE+LHhYBSskGY6/WBQtIEC4jx9NMXTIVtTjx4PYCT9
	 +BG6OY4LSzbsja+O8FdlOpK7lmJdMy23mabrA4agzkCi7WZ/piuubv4C987IXx2S3K
	 Gf758lmi12jf1J4nNwV1hfoNapnjUM+276N3U2UzgDVCctAHR8PBATRBf7ax7+VJjW
	 IwEvsDJ56/s8YFITs5sjoagvF4h3wd4TE/xvLl9qYMc+tiHcDPQV8CU82ETVOJnzoS
	 FmjDx/f+NNrXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id npe6NaFCdf-U; Mon, 27 Nov 2023 16:57:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C16CB405C7;
	Mon, 27 Nov 2023 16:57:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C16CB405C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D9D191BF405
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 16:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF86360EE0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 16:57:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF86360EE0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kZ56P2Eb66qR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 16:57:28 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0964460EDF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 16:57:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0964460EDF
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 1C342B836D1;
 Mon, 27 Nov 2023 16:57:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E44DBC433C7;
 Mon, 27 Nov 2023 16:57:24 +0000 (UTC)
Date: Mon, 27 Nov 2023 08:57:24 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20231127085724.3cc31a9c@kernel.org>
In-Reply-To: <f24802ae-bd66-446b-9b13-e291d33fb5c6@intel.com>
References: <20231120205614.46350-1-ahmed.zaki@intel.com>
 <20231120205614.46350-3-ahmed.zaki@intel.com>
 <20231121153358.3a6a09de@kernel.org>
 <f24802ae-bd66-446b-9b13-e291d33fb5c6@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701104245;
 bh=fwpUjuF5ShDyPElkq7WkuUJxK4tf7Xezd/JJVyXFQ44=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Hil/ESDHYVy2hFe6Vw+4TnylC7oFmRqzdMdERMLKQ7BVO1vn/5joYw4X37cn1XVsR
 MomcONrvEkshDvsGLd4gsRAfar9fzpllN6ptrDNf+nVSRYUiCRzVcoNOP6U32HRuR3
 1ffoY02dGRSz3rX8b/BabLMWBFeaAIA/zBtd30DHPSBQ7eGooVKEeRukyeQ0smKt2i
 7812LhzHFaF5aI8ML85fn+igCyw/e2iggKltp/UlSthbvRnmHOZRR01ZNSifVRutyw
 zPKxkHVJTOIzjfUpWEGDlGAR7hrxHjXL8Klqp+p1l7ZDGnAUgUWZpNxo3ipN9emXUS
 9XDqyv1qFmFcw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Hil/ESDH
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/7] net: ethtool: add
 support for symmetric-xor RSS hash
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, gal@nvidia.com, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 27 Nov 2023 07:21:47 -0700 Ahmed Zaki wrote:
> On 2023-11-21 16:33, Jakub Kicinski wrote:
> > On Mon, 20 Nov 2023 13:56:09 -0700 Ahmed Zaki wrote:  
> >> + * @data: Extension for the RSS hash function. Valid values are one of the
> >> + *	%RXH_HFUNC_*.  
> > 
> > @data is way too generic. Can we call this key_xfrm? key_preproc?  
> 
> We manipulate the "input data" (protocol fields) not the key. I will 
> rename to "input_xfrm".

Ugh, right!

> >> +/* RSS hash function data
> >> + * XOR the corresponding source and destination fields of each specified
> >> + * protocol. Both copies of the XOR'ed fields are fed into the RSS and RXHASH
> >> + * calculation.
> >> + */
> >> +#define	RXH_HFUNC_SYM_XOR	(1 << 0)  
> > 
> > We need to mention somewhere that sym-xor is unsafe, per Alex's
> > comments.  
> 
> I already added the following in Documentation/networking/scaling.rst:
> 
> "The Symmetric-XOR" is a type of RSS algorithms that achieves this hash 
> symmetry by XORing the input source and destination fields of the IP
> and/or L4 protocols. This, however, results in reduced input entropy and
> could potentially be exploited."
> 
> Or do you mean add it also to "uapi/linux/ethtool.h" ?

Yes, a short mention in a comment next to the define.
There's a good chance person looking at this will not notice 
the documentation in scaling.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
