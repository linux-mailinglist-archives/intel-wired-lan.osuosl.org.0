Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F01D9FD055
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 22:29:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A8F2C87C89;
	Thu, 14 Nov 2019 21:29:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8vLmRjNtzcSv; Thu, 14 Nov 2019 21:29:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F4B587DF1;
	Thu, 14 Nov 2019 21:29:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33AED1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 21:29:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F35189C1F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 21:29:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P-TAVU1eNMK2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 21:29:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 585DB89C1C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 21:29:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 13:29:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,305,1569308400"; d="scan'208";a="208239198"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2019 13:29:14 -0800
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 14 Nov 2019 13:29:14 -0800
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.169]) by
 ORSMSX112.amr.corp.intel.com ([169.254.3.26]) with mapi id 14.03.0439.000;
 Thu, 14 Nov 2019 13:29:14 -0800
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [PATCH net 08/13] ptp: Introduce strict checking of external
 time stamp options.
Thread-Index: AQHVmxuxoPK+e8/gkEmkIRBM+apU76eLCGPggACPRgD//5b+4A==
Date: Thu, 14 Nov 2019 21:29:14 +0000
Message-ID: <02874ECE860811409154E81DA85FBB589698FABB@ORSMSX121.amr.corp.intel.com>
References: <20191114184507.18937-9-richardcochran@gmail.com>
 <02874ECE860811409154E81DA85FBB589698F6E0@ORSMSX121.amr.corp.intel.com>
 <20191114194410.GB19147@localhost>
In-Reply-To: <20191114194410.GB19147@localhost>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTVhZjhlNjYtNGE2Ny00NTg3LWJiYjUtNTMxYWIxN2RkOTQ2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicHNcL0pRbVlEYzVJZThWNkorRFI2R3FGMVlaR3E5QmFWeDltaVdEcHA1TlpjUDVib3hYQkkxTXdWWUNzMXF1NSsifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 08/13] ptp: Introduce strict
 checking of external time stamp options.
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
Cc: "Hall, Christopher S" <christopher.s.hall@intel.com>,
 Brandon Streiff <brandon.streiff@ni.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Feras Daoud <ferasda@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Eugenia Emantayev <eugenia@mellanox.com>, David Miller <davem@davemloft.net>,
 Stefan Sorensen <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Thursday, November 14, 2019 11:44 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; David Miller
> <davem@davemloft.net>; Brandon Streiff <brandon.streiff@ni.com>; Hall,
> Christopher S <christopher.s.hall@intel.com>; Eugenia Emantayev
> <eugenia@mellanox.com>; Felipe Balbi <felipe.balbi@linux.intel.com>; Feras
> Daoud <ferasda@mellanox.com>; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>; Sergei Shtylyov
> <sergei.shtylyov@cogentembedded.com>; Stefan Sorensen
> <stefan.sorensen@spectralink.com>
> Subject: Re: [PATCH net 08/13] ptp: Introduce strict checking of external time
> stamp options.
> 
> On Thu, Nov 14, 2019 at 07:12:38PM +0000, Keller, Jacob E wrote:
> > So, this patch adds the flag *and* modifies the drivers to accept it, but not
> actually enable strict checking?
> >
> > I'd prefer if this flag got added, and the drivers were modified in separate
> patches to both allow the flag and to perform the strict check.. that feels like a
> cleaner patch boundary.
> >
> > That would ofcourse break the drivers that reject the strict command until
> they're fixed in follow-on commands.. hmm
> 
> You are right, but if anything I'd squash the following four driver
> patches into this one.  I left the series in little steps just to make
> review easier.  Strictly speaking, if you were to do a git bisect from
> the introduction of the "2" ioctls until here, you would find drivers'
> acceptance of the new flags changing.  But it is too late to fix that,
> and I doubt anyone will care.
> 
> IMHO it *is* important to have v5.4 with strict checking.
> 
> Thanks,
> Richard

Yes I agree. I think the series is good as is, and having this fixed before the ioctls have been in a full release makes sense.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
