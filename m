Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9AE4E73C2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Mar 2022 13:54:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BC1441CA2;
	Fri, 25 Mar 2022 12:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7fqlArMDjklr; Fri, 25 Mar 2022 12:54:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 847C241C45;
	Fri, 25 Mar 2022 12:54:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 399861BF36C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 12:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 34EF4841B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 12:54:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FmKmTu7CYBnd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Mar 2022 12:54:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 83796841B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 12:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648212846;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WhhWwWg4FCTKQgANTQEkU3eik+mebp4qX/dh9cAxltc=;
 b=L3mi5n4H4Mm1YSGI5ui1IBRwP3gtVO3F/dlFLPH27wcYdrkqgFoi35pzUiD2dNex5TxSXX
 k/J6/t6jgEs6/wDPWHDqotVu1Vh5xNEkAWWyJDV4rxhcZUwaFJYw/7ZJZ9xxAR/mADAjSO
 /waKUEC3zL3Y1Dd6eHHF1Svxijs+XJs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-577-vrMoUzvJN5Kjtvk0lT1KnQ-1; Fri, 25 Mar 2022 08:54:02 -0400
X-MC-Unique: vrMoUzvJN5Kjtvk0lT1KnQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D7DD381D8A9;
 Fri, 25 Mar 2022 12:53:55 +0000 (UTC)
Received: from ceranb (unknown [10.40.192.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AE3E42024CD2;
 Fri, 25 Mar 2022 12:53:39 +0000 (UTC)
Date: Fri, 25 Mar 2022 13:53:37 +0100
From: Ivan Vecera <ivecera@redhat.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220325135337.2091ba08@ceranb>
In-Reply-To: <eb6538d9-4667-f1f5-492c-e1e113a6da35@linux.intel.com>
References: <20220321191731.2596414-1-ivecera@redhat.com>
 <eb6538d9-4667-f1f5-492c-e1e113a6da35@linux.intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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

> > @@ -352,29 +359,15 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
> >  	/* check for changes in promiscuous modes */
> >  	if (changed_flags & IFF_ALLMULTI) {
> >  		if (vsi->current_netdev_flags & IFF_ALLMULTI) {
> > -			if (vsi->num_vlan > 1)
> > -				promisc_m = ICE_MCAST_VLAN_PROMISC_BITS;
> > -			else
> > -				promisc_m = ICE_MCAST_PROMISC_BITS;  
> 
> Because `ice_{set,clear}_promisc()` are now always called with the same second argument (ICE_MCAST_PROMISC_BITS), wouldn't it be better to remove the arg and instead call `ice_fltr_{clear,set}_{vlan,vsi}_vsi_promisc()` with either ICE_MCAST_VLAN_PROMISC_BITS or ICE_MCAST_PROMISC_BITS inside the function?

Because ice_{set,clear}_promisc() then could be used only for set mcast prosmisc mode so I modified them only to automatically insert ICE_PROMISC_VLAN_RX & ICE_PROMISC_VLAN_TX based on vsi->num_vlan value.

Anyway I will fix some objections from Jacob and send v2.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
