Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 515933661A6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Apr 2021 23:33:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E595660B36;
	Tue, 20 Apr 2021 21:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DrCsr-zDhbbt; Tue, 20 Apr 2021 21:33:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03A6260B1E;
	Tue, 20 Apr 2021 21:33:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 97A481BF59D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 21:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 858854066D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 21:28:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id skxUsLYgKbiy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Apr 2021 21:28:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A20274065E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 21:28:11 +0000 (UTC)
Received: from DGGEML402-HUB.china.huawei.com (unknown [172.30.72.53])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4FPxYv5wzNzYVxM;
 Wed, 21 Apr 2021 05:25:55 +0800 (CST)
Received: from dggpeml100022.china.huawei.com (7.185.36.176) by
 DGGEML402-HUB.china.huawei.com (10.3.17.38) with Microsoft SMTP Server (TLS)
 id 14.3.498.0; Wed, 21 Apr 2021 05:28:06 +0800
Received: from lhreml703-chm.china.huawei.com (10.201.108.52) by
 dggpeml100022.china.huawei.com (7.185.36.176) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Wed, 21 Apr 2021 05:28:05 +0800
Received: from lhreml703-chm.china.huawei.com ([10.201.68.198]) by
 lhreml703-chm.china.huawei.com ([10.201.68.198]) with mapi id 15.01.2176.012; 
 Tue, 20 Apr 2021 22:28:03 +0100
From: Salil Mehta <salil.mehta@huawei.com>
To: "Brelinski, TonyX" <tonyx.brelinski@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH V2 net] ice: Re-organizes reqstd/avail
 {R, T}XQ check/code for efficiency+readability
Thread-Index: AQHXNiN2hWkBr07qTEeNIfBhJLjN3qq9612A
Date: Tue, 20 Apr 2021 21:28:03 +0000
Message-ID: <3779ba631def46ddaa1fc90d8d6b47a5@huawei.com>
References: <20210413224446.16612-1-salil.mehta@huawei.com>
 <CO1PR11MB51058003106492F6552DB98FFA489@CO1PR11MB5105.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB51058003106492F6552DB98FFA489@CO1PR11MB5105.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.47.76.38]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 20 Apr 2021 21:33:01 +0000
Subject: Re: [Intel-wired-lan] [PATCH V2 net] ice: Re-organizes reqstd/avail
 {R, T}XQ check/code for efficiency+readability
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 "linuxarm@openeuler.org" <linuxarm@openeuler.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Brelinski, TonyX [mailto:tonyx.brelinski@intel.com]
> Sent: Tuesday, April 20, 2021 9:26 PM
> 
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Salil Mehta
> > Sent: Tuesday, April 13, 2021 3:45 PM
> > To: davem@davemloft.net; kuba@kernel.org
> > Cc: salil.mehta@huawei.com; linuxarm@openeuler.org;
> > netdev@vger.kernel.org; linuxarm@huawei.com; linux-
> > kernel@vger.kernel.org; Jeff Kirsher <jeffrey.t.kirsher@intel.com>; intel-
> > wired-lan@lists.osuosl.org
> > Subject: [Intel-wired-lan] [PATCH V2 net] ice: Re-organizes reqstd/avail {R,
> > T}XQ check/code for efficiency+readability
> >
> > If user has explicitly requested the number of {R,T}XQs, then it is
> > unnecessary to get the count of already available {R,T}XQs from the PF
> > avail_{r,t}xqs bitmap. This value will get overridden by user specified value
> in
> > any case.
> >
> > This patch does minor re-organization of the code for improving the flow and
> > readabiltiy. This scope of improvement was found during the review of the
> > ICE driver code.
> >
> > FYI, I could not test this change due to unavailability of the hardware.
> > It would be helpful if somebody can test this patch and provide Tested-by
> > Tag. Many thanks!
> >
> > Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
> > Cc: intel-wired-lan@lists.osuosl.org
> > Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> > Signed-off-by: Salil Mehta <salil.mehta@huawei.com>
> > --
> > Change V1->V2
> >  (*) Fixed the comments from Anthony Nguyen(Intel)
> >      Link: https://lkml.org/lkml/2021/4/12/1997
> > ---
> >  drivers/net/ethernet/intel/ice/ice_lib.c | 14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at
> Intel)

Many thanks! 

Salil.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
