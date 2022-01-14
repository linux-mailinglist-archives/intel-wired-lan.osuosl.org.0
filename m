Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AC248F072
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 20:25:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FA1D40182;
	Fri, 14 Jan 2022 19:25:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aWBbrax5ab9W; Fri, 14 Jan 2022 19:25:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2DB1A40118;
	Fri, 14 Jan 2022 19:25:30 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 412C31BF363
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jan 2022 19:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 312D841558
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jan 2022 19:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IZMC5HFr-CXk for <intel-wired-lan@osuosl.org>;
 Fri, 14 Jan 2022 19:25:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4DFE341517
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jan 2022 19:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642188323;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gChq0Rq74zl99KBYEg0JKplyCgCrejoCg9jhvydHVlI=;
 b=bV6k+Y6OHu2CMWHFF3LrfjCNs8V2KHgY0LKYpkT/Djd04w3muK59G88av/NT/8QKEmwx4+
 lsEQ0KpPVtbEV4cjideVvFZtNZqhKUC18lUqh7TX9b0sJjp/9lddmes32Da/kXp4VFzJsZ
 4161vZwk9u4WJ/PvSIG/x1wH+tVv8Iw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-464-x6UPzVwtOfaoOQE7v2MmIA-1; Fri, 14 Jan 2022 14:25:21 -0500
X-MC-Unique: x6UPzVwtOfaoOQE7v2MmIA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2A8B8839A44;
 Fri, 14 Jan 2022 19:25:20 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-112-14.ams2.redhat.com
 [10.36.112.14])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A7C525BE08;
 Fri, 14 Jan 2022 19:25:19 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 2111AA80ED6; Fri, 14 Jan 2022 20:25:18 +0100 (CET)
Date: Fri, 14 Jan 2022 20:25:18 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <YeHOHp2vztm1Oi5V@calimero.vinschen.de>
Mail-Followup-To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@osuosl.org, netdev@vger.kernel.org,
 Lennert Buytenhek <buytenh@wantstofly.org>,
 Alexander Lobakin <alexandr.lobakin@intel.com>
References: <20220114165106.1085474-1-vinschen@redhat.com>
 <20220114165106.1085474-2-vinschen@redhat.com>
 <87czku6sm2.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87czku6sm2.fsf@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: Re: [Intel-wired-lan] [PATCH 1/2 net-next v3] igc: avoid kernel
 warning when changing RX ring parameters
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
Cc: intel-wired-lan@osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Jan 14 11:10, Vinicius Costa Gomes wrote:
> Corinna Vinschen <vinschen@redhat.com> writes:
> 
> > Calling ethtool changing the RX ring parameters like this:
> >
> >   $ ethtool -G eth0 rx 1024
> >
> > on igc triggers the "Missing unregister, handled but fix driver" warning in
> > xdp_rxq_info_reg().
> >
> > igc_ethtool_set_ringparam() copies the igc_ring structure but neglects to
> > reset the xdp_rxq_info member before calling igc_setup_rx_resources().
> > This in turn calls xdp_rxq_info_reg() with an already registered xdp_rxq_info.
> >
> > Make sure to unregister the xdp_rxq_info structure first in
> > igc_setup_rx_resources.  Move xdp_rxq_info handling down to bethe last
> > action, thus allowing to remove the xdp_rxq_info_unreg call in the error path.
> >
> > Fixes: 73f1071c1d29 ("igc: Add support for XDP_TX action")
> > Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/igc/igc_main.c | 20 +++++++++++---------
> >  1 file changed, 11 insertions(+), 9 deletions(-)
> > [...]
> > @@ -534,10 +526,20 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
> >  	rx_ring->next_to_clean = 0;
> >  	rx_ring->next_to_use = 0;
> >  
> > +	/* XDP RX-queue info */
> > +	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
> > +		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
> > +	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, index,
> > +			       rx_ring->q_vector->napi.napi_id);
> > +	if (res < 0) {
> > +		netdev_err(ndev, "Failed to register xdp_rxq index %u\n",
> > +			   index);
> > +		return res;
> 
> Here and in the igb patch, it should be 'goto err', no?

D'oh, of course.  Soory and thanks for catching.  I'll prepare a v4.

> Another suggestion is to add the warning that Lennert reported in the
> commit message (the comment from Maciej in that other thread).

The current commit message already mentiones the "Missing unregister,
handled but fix driver" warning.  Do you mean the entire warning
snippet including call stack?  If so, no problem.  I'll add it to v4,
too.

Shall I also add "Reported-by: Lennert ..."?  Funny enough we
encountered the problem independently at almost the same time, so when I
sent my v1 of the patch I wasn't even aware of the thread started by
Lennert and only saw it afterwards :}

> Apart from that, I think this is cleaner than what I had proposed.

Thanks,
Corinna

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
