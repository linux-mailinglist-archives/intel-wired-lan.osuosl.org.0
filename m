Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1226490BF3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jan 2022 16:57:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5696781455;
	Mon, 17 Jan 2022 15:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zWZw6y6V76ZG; Mon, 17 Jan 2022 15:57:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 432DA81460;
	Mon, 17 Jan 2022 15:57:54 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2EFF61BF38D
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jan 2022 15:57:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28B6A6068F
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jan 2022 15:57:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 072KBCk-GbtD for <intel-wired-lan@osuosl.org>;
 Mon, 17 Jan 2022 15:57:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C21760C04
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jan 2022 15:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642435068;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rlvIrjXEeXhEFtRWn3AnWoo+xaG5A+dzL35dY7MweEc=;
 b=LUbbxlfV8T68QdnAj9ADgsJh9ntK/LlIMS+ws0S5FYEd+vKKSZdfUC5GAP28WDzHllrPVr
 fGD/JUh5V8h/poz0TzQAvmzlJ9eoFZI2HaWT4HTBeE2xnFyQhIbnFouIDyFY6D6DG7hVNs
 1Vy6tD9IhITuGfFz1oASm0q0ddtl9hY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-622-7WdMD0SGMB-XILYH8j4TQQ-1; Mon, 17 Jan 2022 10:57:45 -0500
X-MC-Unique: 7WdMD0SGMB-XILYH8j4TQQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD7C784DA60;
 Mon, 17 Jan 2022 15:57:31 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-112-3.rdu2.redhat.com [10.10.112.3])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E08E5442F;
 Mon, 17 Jan 2022 15:57:31 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 6DF89A807AA; Mon, 17 Jan 2022 16:57:29 +0100 (CET)
Date: Mon, 17 Jan 2022 16:57:29 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: Lennert Buytenhek <buytenh@wantstofly.org>
Message-ID: <YeWR6Q6stSFqIghS@calimero.vinschen.de>
Mail-Followup-To: Lennert Buytenhek <buytenh@wantstofly.org>,
 intel-wired-lan@osuosl.org, netdev@vger.kernel.org,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Alexander Lobakin <alexandr.lobakin@intel.com>
References: <20220114194520.1092894-1-vinschen@redhat.com>
 <20220114194520.1092894-2-vinschen@redhat.com>
 <YeWD4OG+eYr5B8Sd@wantstofly.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YeWD4OG+eYr5B8Sd@wantstofly.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: Re: [Intel-wired-lan] [PATCH 1/2 net-next v4] igc: avoid kernel
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

On Jan 17 16:57, Lennert Buytenhek wrote:
> On Fri, Jan 14, 2022 at 08:45:19PM +0100, Corinna Vinschen wrote:
> 
> > Calling ethtool changing the RX ring parameters like this:
> > 
> >   $ ethtool -G eth0 rx 1024
> > 
> > on igc triggers kernel warnings like this:
> > 
> > [  225.198467] ------------[ cut here ]------------
> > [  225.198473] Missing unregister, handled but fix driver
> > [  225.198485] WARNING: CPU: 7 PID: 959 at net/core/xdp.c:168
> > xdp_rxq_info_reg+0x79/0xd0
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
> > +		goto err;
> > +	}
> > +
> >  	return 0;
> >  
> >  err:
> > -	xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
> >  	vfree(rx_ring->rx_buffer_info);
> >  	rx_ring->rx_buffer_info = NULL;
> >  	netdev_err(ndev, "Unable to allocate memory for Rx descriptor ring\n");
> 
> This patch fixes the warning...
> 
> Tested-by: Lennert Buytenhek <buytenh@arista.com>
> 
> ...but doesn't it now forget to free rx_ring->desc if xdp_rxq_info_reg()
> fails?

Uhm... I see what you mean.  But then again, the same error was already
present in igb.  Looks like a call to dma_free_coherent is missing there,
too.

I'll prepare YA patch.

Thanks,
Corinna

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
