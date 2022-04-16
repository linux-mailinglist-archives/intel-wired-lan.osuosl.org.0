Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CEC503705
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Apr 2022 16:10:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73C3360E94;
	Sat, 16 Apr 2022 14:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O_0LVMI-6Ps4; Sat, 16 Apr 2022 14:10:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DB9560A74;
	Sat, 16 Apr 2022 14:10:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E89AF1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 14:10:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D4226415DB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 14:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=inria.fr
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0c6y13s_FU5s for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Apr 2022 14:10:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 60B5F415D0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 14:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=QXg79ITIMb+c/YfTxTorJco9Mt6LYRevJ11/hq3FBHM=;
 b=fmJwVTpLkxQYJ84reDMPtf2kdPCy1MxrwZogdslFhrQhcidTftQca1zB
 VDQQHeuEtFCSO4nHYtOSPVwEae3uCetGHZTbhmQlZ770ZtDBtQjqUDskl
 Uvs9Xz7l5HY7zTbYbVLzjJRxg/3NQdnvRz3VJaSidouSlW2874zxBStNj 4=;
Authentication-Results: mail2-relais-roc.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,264,1643670000"; d="scan'208";a="32016200"
Received: from 203.107.68.85.rev.sfr.net (HELO hadrien) ([85.68.107.203])
 by mail2-relais-roc.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2022 16:09:58 +0200
Date: Sat, 16 Apr 2022 16:09:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <857a2d22-5d0f-99d6-6686-98d50e4491d5@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2204161608230.3501@hadrien>
References: <20220416111457.5868-1-eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204161331080.3501@hadrien>
 <857a2d22-5d0f-99d6-6686-98d50e4491d5@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-848588355-1650118198=:3501"
Subject: Re: [Intel-wired-lan] [PATCH v3] intel: igb: igb_ethtool.c: Convert
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
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@inria.fr>,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 ira.weiny@intel.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-848588355-1650118198=:3501
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 16 Apr 2022, Alaa Mohamed wrote:

>
> On ١٦/٤/٢٠٢٢ ١٣:٣١, Julia Lawall wrote:
> >
> > On Sat, 16 Apr 2022, Alaa Mohamed wrote:
> >
> > > Convert kmap() to kmap_local_page()
> > >
> > > With kmap_local_page(), the mapping is per thread, CPU local and not
> > > globally visible.
> > It's not clearer.
> I mean this " fix kunmap_local path value to take address of the mapped page"
> be more clearer
> > This is a general statement about the function.  You
> > need to explain why it is appropriate to use it here.  Unless it is the
> > case that all calls to kmap should be converted to call kmap_local_page.
> It's required to convert all calls kmap to kmap_local_page. So, I don't what
> should the commit message be?

If all calls should be changed then you can also say that.

I thought that a previous commit on the outreachy list made some arguments
about how the affacted value was just allocated and thus could not yet be
shared.

julia

>
> Is this will be good :
>
> "kmap_local_page() was recently developed as a replacement for kmap().  The
> kmap_local_page() creates a mapping which is restricted to local use by a
> single thread of execution. "
> >
> > julia
> >
> > > Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> > > ---
> > > changes in V2:
> > > 	fix kunmap_local path value to take address of the mapped page.
> > > ---
> > > changes in V3:
> > > 	edit commit message to be clearer
> > > ---
> > >   drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
> > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > > b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > > index 2a5782063f4c..c14fc871dd41 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > > @@ -1798,14 +1798,14 @@ static int igb_check_lbtest_frame(struct
> > > igb_rx_buffer *rx_buffer,
> > >
> > >   	frame_size >>= 1;
> > >
> > > -	data = kmap(rx_buffer->page);
> > > +	data = kmap_local_page(rx_buffer->page);
> > >
> > >   	if (data[3] != 0xFF ||
> > >   	    data[frame_size + 10] != 0xBE ||
> > >   	    data[frame_size + 12] != 0xAF)
> > >   		match = false;
> > >
> > > -	kunmap(rx_buffer->page);
> > > +	kunmap_local(data);
> > >
> > >   	return match;
> > >   }
> > > --
> > > 2.35.2
> > >
> > >
> > >
>
--8323329-848588355-1650118198=:3501
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--8323329-848588355-1650118198=:3501--
