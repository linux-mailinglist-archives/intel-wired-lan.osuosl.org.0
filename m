Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA306055A1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Oct 2022 04:48:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6161260C04;
	Thu, 20 Oct 2022 02:48:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6161260C04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666234090;
	bh=SbMW0zlvxVLyWZ7h5wavGaCY5UA8MXEv/9AaGogNcOk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c/2aa2qiWQ5OmOH2K4ao6R6m2w5Dq3lvRGisCL1CKMiQ3r5G+fZX0gWqRZukHhcR5
	 J6iUYfcMoRavLwrDTyco/FALWrAJitkPjAsFO6k+5jybl3sFOd0pfaLp2vKciaJvLV
	 d2nRT/NVjwRu79nsP63vGuDgu9B9xL2u0kSYiGdbQRlBBDJQfTlSAQTH+B+PKjAZG2
	 /qB2DertrysHDsnkIUOn/dBbGz29HB83gTyDScoX9YnkGBrD09pll0GHIvhBBUoLgE
	 DaMZgDMlpdFLpOgWtcG92AGUmYrf036NGPGccG+MyAdr5ltIlR6mm7GYZz8z1w4lnx
	 hXzw6uBOgIEow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Q1KqErszTxA; Thu, 20 Oct 2022 02:48:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A7E760C21;
	Thu, 20 Oct 2022 02:48:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A7E760C21
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F39391BF2FB
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 02:48:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE4D74036F
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 02:48:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE4D74036F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mvYYHjCzObdL for <intel-wired-lan@osuosl.org>;
 Thu, 20 Oct 2022 02:48:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1A6D4019B
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1A6D4019B
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 02:48:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B315B619B3;
 Thu, 20 Oct 2022 02:47:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FEE2C433D6;
 Thu, 20 Oct 2022 02:47:58 +0000 (UTC)
Date: Wed, 19 Oct 2022 19:47:57 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20221019194757.3e21a93e@kernel.org>
In-Reply-To: <SJ1PR11MB61802672AFAA8A4B0A34E81AB82A9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
 <20221018120254.752de264@kernel.org>
 <SJ1PR11MB61802672AFAA8A4B0A34E81AB82A9@SJ1PR11MB6180.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1666234079;
 bh=ylhd5iTqqGAemMIhI+Dp5Vb3E4mYoi6I/gK3lsXkwAI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nJYjM+3El2niJL/4yFxYddIrkEl82skjFKedexHSgelZ7CoCNGAh9LkK6lNM3yDNb
 SMqPH04Xz/LYeKz41kWYZl4gaFwLyR73C0bfu1Xf2zsNa91ApDXsDjT/c5dTvDje37
 zU5FGHFPp2iyb9hiqlAyHkb8gqVUI8x9eT+pQbP4urJpzWoSu21QJjl3JUdZUgCufl
 LYv7YdFoOt/h2IFcZmRSikLuBHC2MGHIhEjvT2ndJbrIB3bcVI4EiHpzgkf+LaKNSV
 PnySeuVYgSeliry/4y/Ipp/i4d8tuPrpIa1jZJ3Pe+eTH9KvWGh3qEAK/RQMeasJie
 MmYi3Lr2eTGmA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nJYjM+3E
Subject: Re: [Intel-wired-lan] [PATCH v2 0/5] Add support for DMA timestamp
 for non-PTP packets
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
Cc: "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Vadim Fedorenko <vfedorenko@novek.ru>, "saeed@kernel.org" <saeed@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "gal@nvidia.com" <gal@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "andy@greyhouse.net" <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 20 Oct 2022 02:16:25 +0000 Zulkifli, Muhammad Husaini wrote:
> > On Tue, 18 Oct 2022 09:07:28 +0800 Muhammad Husaini Zulkifli wrote:  
> > > v1 -> v2:
> > > 	- Move to the end for the new enum.
> > > 	- Add new HWTSTAMP_FILTER_DMA_TIMESTAMP receive filters.  
> > 
> > Did you address my feedback? How do we know if existing
> > HWTSTAMP_FILTER_ALL is PHC quality of DMA?  
> 
> I apologize if I didn't respond to your feedback. If I recall properly, you agreed to only
>  use the flag rather than creating a new tx type as a result of below conversation. 
> https://lore.kernel.org/all/20220930074016.295cbfab@kernel.org/

My bad, I wasn't very clear. I meant to agree that if you prefer we can
forgo adding a new tx_type, and depend on SOF_TIMESTAMPING_TX_* to
advertise the capabilities and request particular type. But
SOF_TIMESTAMPING_TX_* should still not assume that SOF_TIMESTAMPING_TX_HARDWARE 
is guaranteed to be measured close to the wire.

I was just looking at some mlx5 patches from last night:
https://lore.kernel.org/all/20221019063813.802772-5-saeed@kernel.org/
and if you look around you'll see that they advertise hardware
timestamps but AFAIU only packets they match to be PTP will go on 
the special queue that gets real close-to-wire time:
https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/net/ethernet/mellanox/mlx5/core/en/selq.c#L247
If application requests a HW stamp on a non-PTP packet (NTP? custom
proto?), or PTP is running on a custom UDP port, or simply the FW/HW
does not support this feature (mlx5 supports at least a decade's worth
of HW generations) - the application will get a DMA stamp.

Same for Rx - close-to-wire stamps may be more expensive for the NIC
and some modern TCP congestion control algos (BBRv2, Swift) need
HW timestamps of all packets but are okay with DMA stamps.

So we need:
 1) clear disambiguation when time stamps are *really* taken
    close-to-the-wire (CTW);
 2) ability to configure Rx to provide CTW stamps for PTP/NTP
    frames and DMA stamps for all the rest for congestion control.

I think extending the documentation in:
  Documentation/networking/timestamping.rst
to explain the API you're adding and how it will allow the above cases
to be satisfied will be a good start.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
