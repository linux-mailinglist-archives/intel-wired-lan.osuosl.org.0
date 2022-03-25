Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084A54E7481
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Mar 2022 14:50:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B02FE41019;
	Fri, 25 Mar 2022 13:50:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id af7NbIGA6_hQ; Fri, 25 Mar 2022 13:50:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D3F74100E;
	Fri, 25 Mar 2022 13:50:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 351381BF36C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 12:33:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2C13B404BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 12:33:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A85pSpp_Crt9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Mar 2022 12:33:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2525D404B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 12:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648211630;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tTVF5anL1Ztmoqe0sQ59HKwWNXBml0iqdF0V6c2MUeQ=;
 b=cla+2CV/vs06BlLI0cy+AzPZNc0g/3cpRt3M2RCZowwLDjw2chN3Jgp9SzaCmKRJmrvXuh
 l6AtNZIPXAllw3iVe/NhJK/l+yxpufKoZ6hYgc2QZQq+/Xb+vLrmqFrEe7Gt8hMANeIUcg
 VXwlN7gSl8W3HRief9q6SKGY0VanjBA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-150-POWDRmoqPGe1Ny7TJlI4lQ-1; Fri, 25 Mar 2022 08:33:44 -0400
X-MC-Unique: POWDRmoqPGe1Ny7TJlI4lQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DB7541C05AAA;
 Fri, 25 Mar 2022 12:33:43 +0000 (UTC)
Received: from ceranb (unknown [10.40.192.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DE9814010E5F;
 Fri, 25 Mar 2022 12:33:41 +0000 (UTC)
Date: Fri, 25 Mar 2022 13:33:41 +0100
From: Ivan Vecera <ivecera@redhat.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20220325133341.78821438@ceranb>
In-Reply-To: <YjxVRqTppQeYKb1h@boxer>
References: <20220323135829.4015645-1-ivecera@redhat.com>
 <CO1PR11MB508946CC906E8B851D69D31AD6189@CO1PR11MB5089.namprd11.prod.outlook.com>
 <YjxVRqTppQeYKb1h@boxer>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-Mailman-Approved-At: Fri, 25 Mar 2022 13:50:14 +0000
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
 open list  <linux-kernel@vger.kernel.org>"@osuosl.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "mschmidt@redhat.com" <mschmidt@redhat.com>,
 "poros@redhat.com" <poros@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 24 Mar 2022 12:25:58 +0100
Maciej Fijalkowski <maciej.fijalkowski@intel.com> wrote:

> On Wed, Mar 23, 2022 at 05:28:02PM +0000, Keller, Jacob E wrote:
> > 
> >   
> > > -----Original Message-----
> > > From: Ivan Vecera <ivecera@redhat.com>
> > > Sent: Wednesday, March 23, 2022 6:58 AM
> > > To: netdev@vger.kernel.org
> > > Cc: poros@redhat.com; mschmidt@redhat.com; Brandeburg, Jesse
> > > <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> > > <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Jakub
> > > Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; moderated
> > > list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; open list <linux-  
> > > kernel@vger.kernel.org>  
> > > Subject: [PATCH net] ice: Fix MAC address setting
> > > 
> > > Commit 2ccc1c1ccc671b ("ice: Remove excess error variables") merged
> > > the usage of 'status' and 'err' variables into single one in
> > > function ice_set_mac_address(). Unfortunately this causes
> > > a regression when call of ice_fltr_add_mac() returns -EEXIST because
> > > this return value does not indicate an error in this case but
> > > value of 'err' value remains to be -EEXIST till the end of  
> 
> s/'err' value/'err'
> 
> > > the function and is returned to caller.
> > > 
> > > Prior this commit this does not happen because return value of  
> 
> s/this/mentioned ?
> 
> > > ice_fltr_add_mac() was stored to 'status' variable first and
> > > if it was -EEXIST then 'err' remains to be zero.
> > > 
> > > The patch fixes the problem by reset 'err' to zero when
> > > ice_fltr_add_mac() returns -EEXIST.  
> 
> Again, i'd recommend imperative mood. Besides, good catch!
> 
> > > 
> > > Fixes: 2ccc1c1ccc671b ("ice: Remove excess error variables")
> > > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> > > b/drivers/net/ethernet/intel/ice/ice_main.c
> > > index 168a41ea37b8..420558d1cd21 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > > @@ -5474,14 +5474,15 @@ static int ice_set_mac_address(struct net_device
> > > *netdev, void *pi)
> > > 
> > >  	/* Add filter for new MAC. If filter exists, return success */
> > >  	err = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
> > > -	if (err == -EEXIST)
> > > +	if (err == -EEXIST) {
> > >  		/* Although this MAC filter is already present in hardware it's
> > >  		 * possible in some cases (e.g. bonding) that dev_addr was
> > >  		 * modified outside of the driver and needs to be restored back
> > >  		 * to this value.
> > >  		 */
> > >  		netdev_dbg(netdev, "filter for MAC %pM already exists\n", mac);
> > > -	else if (err)
> > > +		err = 0;
> > > +	} else if (err)
> > >  		/* error if the new filter addition failed */
> > >  		err = -EADDRNOTAVAIL;
> > >   
> > 
> > Style wise, don't we typically use {} for all branches if its needed on one?  
> 
> +1, please add braces around second branch as well.
> 
> > 
> > I'm ok takin this fix as-is now and doing the {} fix up afterwards if we want to avoid delay.
> > 
> > Thanks,
> > Jake
> >   
> > > --
> > > 2.34.1  
> >   
> 

Will fix by v2

Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
