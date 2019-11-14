Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2C7FD050
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 22:28:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0947B203D7;
	Thu, 14 Nov 2019 21:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t7vqpef55PYJ; Thu, 14 Nov 2019 21:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2D097228E3;
	Thu, 14 Nov 2019 21:28:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0864A1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 21:28:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E733688E78
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 21:28:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bXQimOW1HHev for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 21:28:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2954F88E25
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 21:28:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 13:28:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,305,1569308400"; d="scan'208";a="235830443"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga002.fm.intel.com with ESMTP; 14 Nov 2019 13:28:11 -0800
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 14 Nov 2019 13:28:11 -0800
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.169]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.152]) with mapi id 14.03.0439.000;
 Thu, 14 Nov 2019 13:28:11 -0800
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [PATCH net 01/13] ptp: Validate requests to enable time
 stamping of external signals.
Thread-Index: AQHVmxuqPgHfLdKDTUG2qf6cbdj4gaeLBvVQgACPAgD//5h1cA==
Date: Thu, 14 Nov 2019 21:28:10 +0000
Message-ID: <02874ECE860811409154E81DA85FBB589698FA96@ORSMSX121.amr.corp.intel.com>
References: <20191114184507.18937-2-richardcochran@gmail.com>
 <02874ECE860811409154E81DA85FBB589698F67E@ORSMSX121.amr.corp.intel.com>
 <20191114193806.GA19147@localhost>
In-Reply-To: <20191114193806.GA19147@localhost>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYmFhNjc4MzUtOTE4ZS00OGVjLWE4OGUtNzQwNDEzZWU4OWYyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNWQ5N1AyYUNMMnk5NjhNekt2RTZjRE5Pc0VTVUIxSVZhVzFNK0l6RzlkXC9IbTlJc29SK0Z2NUdzU1ZWMHlRTEoifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 01/13] ptp: Validate requests to
 enable time stamping of external signals.
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
> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On
> Behalf Of Richard Cochran
> Sent: Thursday, November 14, 2019 11:38 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; David Miller
> <davem@davemloft.net>; Brandon Streiff <brandon.streiff@ni.com>; Hall,
> Christopher S <christopher.s.hall@intel.com>; Eugenia Emantayev
> <eugenia@mellanox.com>; Felipe Balbi <felipe.balbi@linux.intel.com>; Feras
> Daoud <ferasda@mellanox.com>; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>; Sergei Shtylyov
> <sergei.shtylyov@cogentembedded.com>; Stefan Sorensen
> <stefan.sorensen@spectralink.com>
> Subject: Re: [PATCH net 01/13] ptp: Validate requests to enable time stamping of
> external signals.
> 
> On Thu, Nov 14, 2019 at 07:06:58PM +0000, Keller, Jacob E wrote:
> > Just to confirm, these new ioctls haven't been around long enough to be
> concerned about this change?
> 
> The "2" ioctls are about to appear in v5.4, and so I want to get the
> flag checking in before the release if possible.
> 
> Thanks,
> Richard

Yes agreed, we should land these fixes before 5.4 if we can, in order to ensure that the new ioctls always behaved the same way since their first major release introduction.

Regards,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
