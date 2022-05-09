Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD3C51F55A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 May 2022 09:39:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0A634150E;
	Mon,  9 May 2022 07:39:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EFAaGv5y2p_p; Mon,  9 May 2022 07:39:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68D96414CD;
	Mon,  9 May 2022 07:39:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D83021BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 07:39:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA26281A58
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 07:39:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=amazon.de
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XFgoxloyYA-g for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 May 2022 07:39:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from smtp-fw-6001.amazon.com (smtp-fw-6001.amazon.com [52.95.48.154])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F071C81A39
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 07:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1652081981; x=1683617981;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QTHY//D2kCJcGfjjQQ29xj9+Qvuho9wSSnjlq8Fi0Ao=;
 b=Rt0B0w2+2lBtukSK8+Ezpmd/bd+n9vajIo2oK0/gbA8U0C6PnoUqMOmy
 rFKvC0dDsV4c8M608Z+SbLUgSilwrW2dzvdCOrPFHNjy7Wbraii1n2S2V
 zH8qcZYkQLuXwPMa3UN6ARQJrZVnsUxH40OKyS+ROddMnLkupMU9Dj7LN Y=;
X-IronPort-AV: E=Sophos;i="5.91,210,1647302400"; d="scan'208";a="201065087"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-pdx-2b-c275e159.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-6001.iad6.amazon.com with ESMTP; 09 May 2022 07:39:27 +0000
Received: from EX13D08EUC001.ant.amazon.com
 (pdx1-ws-svc-p6-lb9-vlan2.pdx.amazon.com [10.236.137.194])
 by email-inbound-relay-pdx-2b-c275e159.us-west-2.amazon.com (Postfix) with
 ESMTPS id 23C40829A6; Mon,  9 May 2022 07:39:26 +0000 (UTC)
Received: from EX13MTAUWA001.ant.amazon.com (10.43.160.58) by
 EX13D08EUC001.ant.amazon.com (10.43.164.184) with Microsoft SMTP Server (TLS)
 id 15.0.1497.32; Mon, 9 May 2022 07:39:24 +0000
Received: from dev-dsk-mheyne-1b-c1524648.eu-west-1.amazon.com (10.15.60.66)
 by mail-relay.amazon.com (10.43.160.118) with Microsoft SMTP Server id
 15.0.1497.32 via Frontend Transport; Mon, 9 May 2022 07:39:23 +0000
Received: by dev-dsk-mheyne-1b-c1524648.eu-west-1.amazon.com (Postfix,
 from userid 5466572)
 id C2D8B41135; Mon,  9 May 2022 07:39:21 +0000 (UTC)
From: Maximilian Heyne <mheyne@amazon.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 9 May 2022 07:39:15 +0000
Message-ID: <20220509073915.28476-1-mheyne@amazon.de>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <7775a23b-199e-b0f2-fe6b-06a667ac9dee@intel.com>
References: 
MIME-Version: 1.0
Precedence: Bulk
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] drivers,
 ixgbe: show VF statistics
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Maximilian Heyne <mheyne@amazon.de>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2022-05-06T09:20:14-07:00   Tony Nguyen <anthony.l.nguyen@intel.com> wrote:
> On 5/6/2022 9:13 AM, Jakub Kicinski wrote:
> > On Fri, 6 May 2022 06:44:40 +0000 Maximilian Heyne wrote:
> >> On 2022-05-04T20:16:32-07:00   Jakub Kicinski <kuba@kernel.org> wrote:
> >>
> >>> On Tue, 3 May 2022 15:00:17 +0000 Maximilian Heyne wrote:
> >>>> +		for (i = 0; i < adapter->num_vfs; i++) {
> >>>> +			ethtool_sprintf(&p, "VF %u Rx Packets", i);
> >>>> +			ethtool_sprintf(&p, "VF %u Rx Bytes", i);
> >>>> +			ethtool_sprintf(&p, "VF %u Tx Packets", i);
> >>>> +			ethtool_sprintf(&p, "VF %u Tx Bytes", i);
> >>>> +			ethtool_sprintf(&p, "VF %u MC Packets", i);
> >>>> +		}
> >>>
> >>> Please drop the ethtool stats. We've been trying to avoid duplicating
> >>> the same stats in ethtool and iproute2 for a while now.
> >>
> >> I can see the point that standard metrics should only be reported via the
> >> iproute2 interface. However, in this special case this patch was
> >> intended to converge the out-of-tree driver with the in-tree version.
> >> These missing stats were breaking our userspace. If we now switch
> >> solely to iproute2 based statistics both driver versions would
> >> diverge even more. So depending on where a user gets the ixgbe driver
> >> from, they have to work-around.
> >>
> >> I can change the patch as requested, but it will contradict the inital
> >> intention. At least Intel should then port this change to the
> >> external driver as well. Let's get a statement from them.
> 
> We discussed this patch internally and concluded the correct approach 
> would be to not have the ethtool stats and use the VF info. Jakub beat 
> us to the comment. We would plan to port the iproute implementation to 
> OOT as well.

Ok, then I'll send a follow-up patch without the ethtool changes. I'm happy to
get some kind of convergence between the out-of-tree driver and upstream. 

While at it, I wonder whether other drivers need similar changes as well and
what other features are missing in the upstream driver. There should be no
surprises when switching between these drivers.

> 
> > Ack, but we really want people to move towards using standard stats.
> > 
> > Can you change the user space to first try reading the stats via
> > iproute2/rtnetlink? And fallback to random ethtool strings if not
> > available? That way it will work with any driver implementing the
> > standard API. Long term that'll make everyone's life easier.

Yes, in this case we are in control of user space and can work around.

> > 
> > Out-of-tree code cannot be an argument upstream, otherwise we'd
> > completely lose control over our APIs. Vendors could ship whatever
> > in their out of tree repo and then force us to accept it upstream.
> > 
> > It's disappointing to see the vendor letting the uAPI of the out of
> > tree driver diverge from upstream, especially a driver this mature.
> 



Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Jonathan Weiss
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
