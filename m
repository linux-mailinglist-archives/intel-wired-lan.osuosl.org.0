Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 858C14934D6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jan 2022 07:09:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15F4941512;
	Wed, 19 Jan 2022 06:09:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pt3d-m50bvwO; Wed, 19 Jan 2022 06:09:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1E3C41499;
	Wed, 19 Jan 2022 06:09:06 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 078411BF2E3
 for <intel-wired-lan@osuosl.org>; Wed, 19 Jan 2022 06:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E90CD607FF
 for <intel-wired-lan@osuosl.org>; Wed, 19 Jan 2022 06:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wUz8PREgWK1f for <intel-wired-lan@osuosl.org>;
 Wed, 19 Jan 2022 06:09:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 40A1B607B5
 for <intel-wired-lan@osuosl.org>; Wed, 19 Jan 2022 06:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642572540;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZJmYLbcbv8lBtjGOd/JtLOo+KTdFEGmckMITgiGoGHU=;
 b=BSrRYd/FFQyH967H80E6yby6i2FX/Vk4MHwJD1T7tPWzjeCgb6TM/AQJGPpr5lvC32RnvR
 3x0Q1nnhWdDM7mQsprpUsy1tqqQjRh36yT4wy46iDDGyTHim7gydP5+oU9wk/b2e+QIVEz
 GTK5W4kk2mkcobjkAoKzxN29+o4tA/g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-146-v0IDQttLMLmeZ5OmGbKOcQ-1; Wed, 19 Jan 2022 01:08:58 -0500
X-MC-Unique: v0IDQttLMLmeZ5OmGbKOcQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE5221091DA4;
 Wed, 19 Jan 2022 06:08:56 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-112-9.ams2.redhat.com [10.36.112.9])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 404424EC66;
 Wed, 19 Jan 2022 06:08:56 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id AEA85A80D5F; Wed, 19 Jan 2022 07:08:54 +0100 (CET)
Date: Wed, 19 Jan 2022 07:08:54 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Message-ID: <Yeeq9k5L/Md66Ktm@calimero.vinschen.de>
Mail-Followup-To: Alexander Lobakin <alexandr.lobakin@intel.com>,
 intel-wired-lan@osuosl.org, netdev@vger.kernel.org,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Lennert Buytenhek <buytenh@wantstofly.org>
References: <20220117182915.1283151-1-vinschen@redhat.com>
 <20220117182915.1283151-3-vinschen@redhat.com>
 <20220118150512.25541-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220118150512.25541-1-alexandr.lobakin@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: Re: [Intel-wired-lan] [PATCH 2/3 net-next v5] igb: refactor XDP
 registration
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

On Jan 18 16:05, Alexander Lobakin wrote:
> From: Corinna Vinschen <vinschen@redhat.com>
> Date: Mon, 17 Jan 2022 19:29:14 +0100
> 
> > On changing the RX ring parameters igb uses a hack to avoid a warning
> > when calling xdp_rxq_info_reg via igb_setup_rx_resources.  It just
> > clears the struct xdp_rxq_info content.
> > 
> > Change this to unregister if we're already registered instead.  Align
> > code to the igc code.
> > 
> > Fixes: 9cbc948b5a20c ("igb: add XDP support")
> > Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/igb/igb_ethtool.c |  4 ----
> >  drivers/net/ethernet/intel/igb/igb_main.c    | 12 +++++++++---
> >  2 files changed, 9 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > index 51a2dcaf553d..2a5782063f4c 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > @@ -965,10 +965,6 @@ static int igb_set_ringparam(struct net_device *netdev,
> >  			memcpy(&temp_ring[i], adapter->rx_ring[i],
> >  			       sizeof(struct igb_ring));
> >  
> > -			/* Clear copied XDP RX-queue info */
> > -			memset(&temp_ring[i].xdp_rxq, 0,
> > -			       sizeof(temp_ring[i].xdp_rxq));
> > -
> >  			temp_ring[i].count = new_rx_count;
> >  			err = igb_setup_rx_resources(&temp_ring[i]);
> >  			if (err) {
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> > index 38ba92022cd4..cea89d301bfd 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -4352,7 +4352,7 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
> >  {
> >  	struct igb_adapter *adapter = netdev_priv(rx_ring->netdev);
> >  	struct device *dev = rx_ring->dev;
> > -	int size;
> > +	int size, res;
> >  
> >  	size = sizeof(struct igb_rx_buffer) * rx_ring->count;
> >  
> > @@ -4376,9 +4376,15 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
> >  	rx_ring->xdp_prog = adapter->xdp_prog;
> >  
> >  	/* XDP RX-queue info */
> > -	if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
> > -			     rx_ring->queue_index, 0) < 0)
> > +	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
> > +		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
> > +	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
> > +			       rx_ring->queue_index, 0);
> > +	if (res < 0) {
> > +		dev_err(dev, "Failed to register xdp_rxq index %u\n",
> > +			rx_ring->queue_index);
> >  		goto err;
> 
> Error path always returns -ENOMEM, even in this case, and reports
> that it failed to allocate memory for rings. Handle this correctly
> and return `res` instead and without one more error message?

In that case, it makes sense to revert the code to the way igc did it,
rather then trying to do as igb did it.

I. e., for both drivers, call xdp_rxq_info_is_reg before the first
allocation took place, and just return immediately from there if it
fails.  Everything else complicates the code unnecessarily.

> As I mentioned a bit above, `res` is unused here as an error code,
> only to test the value on < 0. Does it make sense to add a new
> variable?

Following my above sugggestion, res will be used as error code, so
it should stay.

I'll provide a matching patchset later today.


Thanks,
Corinna

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
