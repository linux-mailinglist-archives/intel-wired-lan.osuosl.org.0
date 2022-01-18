Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEF949212A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jan 2022 09:26:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B11B281801;
	Tue, 18 Jan 2022 08:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lREAnLEU9Mmf; Tue, 18 Jan 2022 08:26:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDFCD8176E;
	Tue, 18 Jan 2022 08:26:15 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 95D3E1BF319
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jan 2022 08:26:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F58A405D2
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jan 2022 08:26:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eJzt8L6Fzjqa for <intel-wired-lan@osuosl.org>;
 Tue, 18 Jan 2022 08:26:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 163E3405D1
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jan 2022 08:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642494368;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=A/b6yg4ShWdAV0SfuluaVdnvCZUNPg/qEytwysGwHTk=;
 b=anxoryL9kroHXEv3z/lFxcdWVI3DhDLsR/LUBHhUAVk+6LUEpOcFpG21tSp83kyQuy343P
 4ellT9LpeOQvrBnnG4hzAV78TYn7n9aco+ojkdWmAj6vYzY1UMw9VQjM8e+EnJE1SH4rjH
 PazcFoHJDS9lEtiQzwHXQvtSmtxMTFk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-563-T--zKjN0PiqF09K4X1zXPQ-1; Tue, 18 Jan 2022 03:26:05 -0500
X-MC-Unique: T--zKjN0PiqF09K4X1zXPQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A07CC190D340;
 Tue, 18 Jan 2022 08:26:03 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-112-3.rdu2.redhat.com [10.10.112.3])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3451B7A230;
 Tue, 18 Jan 2022 08:26:03 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 12AEFA8096F; Tue, 18 Jan 2022 09:26:01 +0100 (CET)
Date: Tue, 18 Jan 2022 09:26:01 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: Lennert Buytenhek <buytenh@wantstofly.org>
Message-ID: <YeZ5mVY/SpThBi/O@calimero.vinschen.de>
Mail-Followup-To: Lennert Buytenhek <buytenh@wantstofly.org>,
 intel-wired-lan@osuosl.org, netdev@vger.kernel.org,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Alexander Lobakin <alexandr.lobakin@intel.com>
References: <20220117182915.1283151-1-vinschen@redhat.com>
 <20220117182915.1283151-4-vinschen@redhat.com>
 <YeZXuoRa/39zzoEY@wantstofly.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YeZXuoRa/39zzoEY@wantstofly.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Subject: Re: [Intel-wired-lan] [PATCH 3/3 net-next v5] igb/igc: RX queues:
 fix DMA leak in error case
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

On Jan 18 08:01, Lennert Buytenhek wrote:
> On Mon, Jan 17, 2022 at 07:29:15PM +0100, Corinna Vinschen wrote:
> 
> > When setting up the rx queues, igb and igc neglect to free DMA memory
> > in error case.  Add matching dma_free_coherent calls.
> > 
> > Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/igb/igb_main.c | 1 +
> >  drivers/net/ethernet/intel/igc/igc_main.c | 1 +
> >  2 files changed, 2 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> > index cea89d301bfd..343568d4ff7f 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -4389,6 +4389,7 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
> >  	return 0;
> >  
> >  err:
> > +	dma_free_coherent(dev, rx_ring->size, rx_ring->desc, rx_ring->dma);
> >  	vfree(rx_ring->rx_buffer_info);
> >  	rx_ring->rx_buffer_info = NULL;
> >  	dev_err(dev, "Unable to allocate memory for the Rx descriptor ring\n");
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> > index 56ed0f1463e5..f323cec0b74f 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -540,6 +540,7 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
> >  	return 0;
> >  
> >  err:
> > +	dma_free_coherent(dev, rx_ring->size, rx_ring->desc, rx_ring->dma);
> >  	vfree(rx_ring->rx_buffer_info);
> >  	rx_ring->rx_buffer_info = NULL;
> >  	netdev_err(ndev, "Unable to allocate memory for Rx descriptor ring\n");
> 
> If the vzalloc() call in igc_setup_rx_resources() fails, and we jump
> to 'err' before dma_alloc_coherent() was reached, won't dma_free_coherent()
> be called inadvertently here?

These calls all check for a NULL pointer themselves.

Corinna

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
