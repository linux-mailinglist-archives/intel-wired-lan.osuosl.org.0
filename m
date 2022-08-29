Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAAC5A51B8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Aug 2022 18:29:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A64FF400C7;
	Mon, 29 Aug 2022 16:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A64FF400C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661790586;
	bh=KGsoGc6Giaw/rsghjKTFnr1p1QAw1bAP0iVjVesrLWY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hvKr6JOvZtGI/Lkf4n2ElBKD8N8W/DYlqcc+wEOtxPOikxtavheb347qqZEZfpZn6
	 aSdFueAiIq8cPGo9kTWVXA+Wdmc4RjAf2q+1u2xvw9jr4+10da0onXc0zd/VwIPMAN
	 Ce3uyn+BxlnQskRhICB8QGtEOO/hb18TvV2lvT4uyJlnWHEg68uHa938MOSuMSVajm
	 9tBI+KA9nfd7lVugkV4gsvZvU1khActeEg+EseKGMRvLrvZKM8AxQleCONtwImXKF7
	 GaLRBPKWTD21B2loVCvSMAkChbFUNCKwMKNg35QIXSZuCrvinMOSNamIrOcr/jNrpL
	 Hma12fClzPdiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m8cZMEX9Jaaq; Mon, 29 Aug 2022 16:29:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 41BFA40125;
	Mon, 29 Aug 2022 16:29:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41BFA40125
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 851861BF287
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 16:29:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F05181360
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 16:29:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F05181360
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XGAcFI1k7nw2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Aug 2022 16:29:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 851A181343
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 851A181343
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 16:29:39 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-578-l71OkxkgNkaAprZ_YuryrQ-1; Mon, 29 Aug 2022 12:29:33 -0400
X-MC-Unique: l71OkxkgNkaAprZ_YuryrQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB84A811E81;
 Mon, 29 Aug 2022 16:29:32 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.40.195.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D6B89C15BB3;
 Mon, 29 Aug 2022 16:29:30 +0000 (UTC)
Date: Mon, 29 Aug 2022 18:29:29 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: "Laba, SlawomirX" <slawomirx.laba@intel.com>
Message-ID: <20220829182929.2822fafc@p1.luc.cera.cz>
In-Reply-To: <DM6PR11MB311314DD438AE5A5AA4F5ED687719@DM6PR11MB3113.namprd11.prod.outlook.com>
References: <20220818165558.997984-1-ivecera@redhat.com>
 <DM6PR11MB311314DD438AE5A5AA4F5ED687719@DM6PR11MB3113.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1661790578;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KwCsREdznoy00YBbgW4AErRvUc6/IZZWjwk9hxW6AGA=;
 b=WG/NszrivnGSO9gcNFmCTMn/FPWEVAOv4wkXHP+5NGnH1NgEr/n6tZV/Fy9dvB0GzwfUxB
 DwSCx+1b2lzgfD4p6VkXBjenSB6ZSazih7caZslPhNjS6z5q7ysLIH3bwAvEuPoUqUn78x
 4SeOvokhxF09cWv4xcRVRl7ihHhg/uc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WG/Nszri
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Detach device during reset
 task
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
Cc: Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, "Piotrowski,
 Patryk" <patryk.piotrowski@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Vitaly Grinberg <vgrinber@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 22 Aug 2022 17:42:44 +0000
"Laba, SlawomirX" <slawomirx.laba@intel.com> wrote:

> > -----Original Message-----
> > From: ivecera <ivecera@redhat.com>
> > Sent: Thursday, August 18, 2022 6:56 PM
> > To: netdev@vger.kernel.org
> > Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Piotrowski, Patryk
> > <patryk.piotrowski@intel.com>; Vitaly Grinberg <vgrinber@redhat.com>;
> > Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric
> > Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> > Abeni <pabeni@redhat.com>; Jeff Kirsher <jeffrey.t.kirsher@intel.com>;
> > moderated list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>;
> > open list <linux-kernel@vger.kernel.org>
> > Subject: [PATCH net] iavf: Detach device during reset task
> > 
> > iavf_reset_task() takes crit_lock at the beginning and holds it during whole call.
> > The function subsequently calls
> > iavf_init_interrupt_scheme() that grabs RTNL. Problem occurs when userspace
> > initiates during the reset task any ndo callback that runs under RTNL like
> > iavf_open() because some of that functions tries to take crit_lock. This leads to
> > classic A-B B-A deadlock scenario.
> > 
> > To resolve this situation the device should be detached in
> > iavf_reset_task() prior taking crit_lock to avoid subsequent ndos running under
> > RTNL and reattach the device at the end.
> > 
> > Fixes: 62fe2a865e6d ("i40evf: add missing rtnl_lock() around
> > i40evf_set_interrupt_capability")
> > Cc: Jacob Keller <jacob.e.keller@intel.com>
> > Cc: Patryk Piotrowski <patryk.piotrowski@intel.com>
> > Tested-by: Vitaly Grinberg <vgrinber@redhat.com>
> > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 22 +++++++++++++++------
> >  1 file changed, 16 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index f39440ad5c50..ee8f911b57ea 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > @@ -2877,6 +2877,13 @@ static void iavf_reset_task(struct work_struct
> > *work)
> >  	int i = 0, err;
> >  	bool running;
> > 
> > +	/*
> > +	 * Detach interface to avoid subsequent NDO callbacks
> > +	 */  
> 
> nit:
> The comment should start this way: /* Detach ...

Will fix.

> > +	rtnl_lock();
> > +	netif_device_detach(netdev);
> > +	rtnl_unlock();
> > +
> >  	/* When device is being removed it doesn't make sense to run the reset
> >  	 * task, just return in such a case.
> >  	 */
> > @@ -2884,7 +2891,7 @@ static void iavf_reset_task(struct work_struct *work)
> >  		if (adapter->state != __IAVF_REMOVE)
> >  			queue_work(iavf_wq, &adapter->reset_task);
> > 
> > -		return;
> > +		goto reset_finish;  
> 
> Correct me if I'm wrong.
> In case when you fail to grab a crit_lock you'd jump to the reset_finish label and unlock the locks you didn't lock.

You're right.. I tried to dedup mutex unlocks after testing and missed this path.
Will fix by v2.

Thanks,
I.

> >  	}
> > 
> >  	while (!mutex_trylock(&adapter->client_lock))
> > @@ -2954,7 +2961,6 @@ static void iavf_reset_task(struct work_struct *work)
> > 
> >  	if (running) {
> >  		netif_carrier_off(netdev);
> > -		netif_tx_stop_all_queues(netdev);
> >  		adapter->link_up = false;
> >  		iavf_napi_disable_all(adapter);
> >  	}
> > @@ -3081,10 +3087,8 @@ static void iavf_reset_task(struct work_struct
> > *work)
> > 
> >  	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
> > 
> > -	mutex_unlock(&adapter->client_lock);
> > -	mutex_unlock(&adapter->crit_lock);
> > +	goto reset_finish;
> > 
> > -	return;
> >  reset_err:
> >  	if (running) {
> >  		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state); @@ -3092,9
> > +3096,15 @@ static void iavf_reset_task(struct work_struct *work)
> >  	}
> >  	iavf_disable_vf(adapter);
> > 
> > +	dev_err(&adapter->pdev->dev, "failed to allocate resources during
> > +reinit\n");
> > +
> > +reset_finish:
> >  	mutex_unlock(&adapter->client_lock);
> >  	mutex_unlock(&adapter->crit_lock);
> > -	dev_err(&adapter->pdev->dev, "failed to allocate resources during
> > reinit\n");
> > +
> > +	rtnl_lock();
> > +	netif_device_attach(netdev);
> > +	rtnl_unlock();
> >  }
> > 
> >  /**
> > --
> > 2.35.1  
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
