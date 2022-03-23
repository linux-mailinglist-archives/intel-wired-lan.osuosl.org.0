Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2174E57D9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Mar 2022 18:51:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C3A0B401A3;
	Wed, 23 Mar 2022 17:51:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0w6OcbWTHat3; Wed, 23 Mar 2022 17:51:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70C5740195;
	Wed, 23 Mar 2022 17:51:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD3131BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:49:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D413760A8B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:49:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s3ZyO9nHiDOH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Mar 2022 17:49:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C682608D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648057783;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ztrgRu5GRkrGYkoOi49Yf4+551bsJN9YMiHcpLVOhz0=;
 b=TIddh6IxDqBVV+WCTSyqTcx7OI276G7zXbyL946B1OH94Y2Z38huHu+BS/DdfLYQ6Zxm0D
 Gvr6mqPFXY3HkbPGA5yZCdVQdkvhx87bEjK154zGxdGejjyGGpOfvJd6xrbSpRb4rxiYbL
 poZ1FXzX9wQBWJlWbA+BXDtWMCRozRE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-246-0EK2Et_wPkqi6iypc2DEtg-1; Wed, 23 Mar 2022 13:49:39 -0400
X-MC-Unique: 0EK2Et_wPkqi6iypc2DEtg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4EC6C185A794;
 Wed, 23 Mar 2022 17:49:39 +0000 (UTC)
Received: from ceranb (unknown [10.40.192.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7A4EC1410DD5;
 Wed, 23 Mar 2022 17:49:37 +0000 (UTC)
Date: Wed, 23 Mar 2022 18:49:36 +0100
From: Ivan Vecera <ivecera@redhat.com>
To: Piotr Raczynski <piotr.raczynski@intel.com>
Message-ID: <20220323184936.01a4d117@ceranb>
In-Reply-To: <20220323190519.GA23730@kplh.igk.intel.com>
References: <20220323135829.4015645-1-ivecera@redhat.com>
 <20220323190519.GA23730@kplh.igk.intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-Mailman-Approved-At: Wed, 23 Mar 2022 17:51:34 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix MAC address setting
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
Cc: "moderated list:INTEL ETHERNET DRIVERS\"
 <intel-wired-lan@lists.osuosl.org>,
 open list  <linux-kernel@vger.kernel.org>"@osuosl.org, netdev@vger.kernel.org,
 mschmidt@redhat.com, poros@redhat.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 23 Mar 2022 20:10:10 +0100
Piotr Raczynski <piotr.raczynski@intel.com> wrote:

> On Wed, Mar 23, 2022 at 02:58:29PM +0100, Ivan Vecera wrote:
> > Commit 2ccc1c1ccc671b ("ice: Remove excess error variables") merged
> > the usage of 'status' and 'err' variables into single one in
> > function ice_set_mac_address(). Unfortunately this causes
> > a regression when call of ice_fltr_add_mac() returns -EEXIST because
> > this return value does not indicate an error in this case but
> > value of 'err' value remains to be -EEXIST till the end of
> > the function and is returned to caller.
> > 
> > Prior this commit this does not happen because return value of
> > ice_fltr_add_mac() was stored to 'status' variable first and
> > if it was -EEXIST then 'err' remains to be zero.
> > 
> > The patch fixes the problem by reset 'err' to zero when
> > ice_fltr_add_mac() returns -EEXIST.
> > 
> > Fixes: 2ccc1c1ccc671b ("ice: Remove excess error variables")
> > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> > index 168a41ea37b8..420558d1cd21 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -5474,14 +5474,15 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
> >  
> >  	/* Add filter for new MAC. If filter exists, return success */
> >  	err = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
> > -	if (err == -EEXIST)
> > +	if (err == -EEXIST) {
> >  		/* Although this MAC filter is already present in hardware it's
> >  		 * possible in some cases (e.g. bonding) that dev_addr was
> >  		 * modified outside of the driver and needs to be restored back
> >  		 * to this value.
> >  		 */
> >  		netdev_dbg(netdev, "filter for MAC %pM already exists\n", mac);
> > -	else if (err)
> > +		err = 0;  
> 
> Thanks Ivan, This looks fine. It is a regression as I checked since
> driver used to return success in such case. It seems that the only
> way to have EEXIST here is when the same MAC is requested, I'd also
> consider just return 0 here to skip later firwmare write which seems
> redundant here.

Yes, firmware write looks for me also redundant but to be I wanted to restore
only the previous behavior broken by mentioned commit.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
