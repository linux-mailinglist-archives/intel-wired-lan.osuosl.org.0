Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B6C4E73E6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Mar 2022 14:04:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D10C083E4E;
	Fri, 25 Mar 2022 13:04:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KxSPS_BFT5oO; Fri, 25 Mar 2022 13:04:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF34B829B1;
	Fri, 25 Mar 2022 13:04:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F3C381BF35D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 13:04:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E13ED41C4A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 13:04:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aBhRudNNEf5C for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Mar 2022 13:04:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3FB6941C49
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 13:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648213474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tE/eAfmAjD6lTZj7wBC76uZYxkyvkom3vjRY4fsJkcM=;
 b=OAHK5EdDnTMVyUZ6NUs6TDIDjcfFGOAEfeslpM1TkvCTjro5S1H+4KTtQBd4gcT/eTjhQG
 oadsnNbmMvglWj5MkVQ7hvgH7VaVdOo1rw4TZ7h8ZDgx9i1XI+zqD9afxmnWOU9N9SAuCz
 x6xUIx08qUKKgynLJhqNamb8rqb/S3s=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-553-TomwG3uSNUuzrcPOhW2nZA-1; Fri, 25 Mar 2022 09:04:30 -0400
X-MC-Unique: TomwG3uSNUuzrcPOhW2nZA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3DCF9802809;
 Fri, 25 Mar 2022 13:04:29 +0000 (UTC)
Received: from ceranb (unknown [10.40.192.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 374C42166B2D;
 Fri, 25 Mar 2022 13:04:25 +0000 (UTC)
Date: Fri, 25 Mar 2022 14:04:24 +0100
From: Ivan Vecera <ivecera@redhat.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220325140424.696e8abc@ceranb>
In-Reply-To: <eb6538d9-4667-f1f5-492c-e1e113a6da35@linux.intel.com>
References: <20220321191731.2596414-1-ivecera@redhat.com>
 <eb6538d9-4667-f1f5-492c-e1e113a6da35@linux.intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix broken IFF_ALLMULTI
 handling
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
Cc: netdev@vger.kernel.org, mschmidt@redhat.com,
 open list <linux-kernel@vger.kernel.org>, poros@redhat.com,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 Akeem G Abodunrin <akeem.g.abodunrin@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 23 Mar 2022 21:05:20 +0100
Marcin Szycik <marcin.szycik@linux.intel.com> wrote:

> > @@ -3482,18 +3503,44 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
> >  	if (!vid)
> >  		return 0;
> >  
> > +	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state))
> > +		usleep_range(1000, 2000);
> > +
> >  	/* Make sure ice_vsi_kill_vlan is successful before updating VLAN
> >  	 * information
> >  	 */
> >  	ret = ice_vsi_kill_vlan(vsi, vid);
> >  	if (ret)
> > -		return ret;
> > +		goto finish;
> >  
> > -	/* Disable pruning when VLAN 0 is the only VLAN rule */
> > -	if (vsi->num_vlan == 1 && ice_vsi_is_vlan_pruning_ena(vsi))
> > -		ret = ice_cfg_vlan_pruning(vsi, false);
> > +	/* Remove multicast promisc rule for the removed VLAN ID if
> > +	 * all-multicast is enabled.
> > +	 */
> > +	if (vsi->current_netdev_flags & IFF_ALLMULTI)
> > +		ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
> > +					   ICE_MCAST_VLAN_PROMISC_BITS, vid);
> > +
> > +	if (vsi->num_vlan == 1) {
> > +		/* Disable pruning when VLAN 0 is the only VLAN rule */
> > +		if (ice_vsi_is_vlan_pruning_ena(vsi))
> > +			ice_cfg_vlan_pruning(vsi, false);  
> 
> Why was `ret = ...` removed here?

Because we are in ice_vlan_rx_kill_vid() that is used to remove VLAN and at this
the VLAN ID was removed from VLAN filter so we cannot return value other than 0.
Network stack would think that the VLAN ID is still present in VLAN filter.

Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
