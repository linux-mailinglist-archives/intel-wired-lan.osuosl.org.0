Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06AAFD24B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2019 02:14:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15053898AA;
	Fri, 15 Nov 2019 01:14:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jQ64rofscQpD; Fri, 15 Nov 2019 01:14:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 350D6898AC;
	Fri, 15 Nov 2019 01:14:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E34D21BF406
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 01:14:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DF73E87BDC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 01:14:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VgVyvHLknZzc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2019 01:14:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1F3FF87BB6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 01:14:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 17:14:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,306,1569308400"; d="scan'208";a="355974696"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga004.jf.intel.com with ESMTP; 14 Nov 2019 17:14:17 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 14 Nov 2019 17:14:16 -0800
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.169]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.219]) with mapi id 14.03.0439.000;
 Thu, 14 Nov 2019 17:14:16 -0800
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Saeed Mahameed <saeedm@mellanox.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH net 02/13] net: reject PTP periodic output requests
 with unsupported flags
Thread-Index: AQHVmxupDYJzKkQgG0K/vc+RFtuzwqeL3n8A//+OXlA=
Date: Fri, 15 Nov 2019 01:14:15 +0000
Message-ID: <02874ECE860811409154E81DA85FBB5896990A94@ORSMSX121.amr.corp.intel.com>
References: <20191114184507.18937-3-richardcochran@gmail.com>
 <7275436b02f9551807f68784d4f4ebaf0adbc35e.camel@mellanox.com>
In-Reply-To: <7275436b02f9551807f68784d4f4ebaf0adbc35e.camel@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWQ3YTU0ODItZDc4Yi00ODMwLWIyY2ItOTA1OGY2NGY2ZjRhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRTZcL0QwMm1YZjJIQ1dYOXlLdFFYR1kxNWhWcFwvK3p2YTZqWHZrSTF0RGtxZjRwWFE2VURaWGQ1ek92NWJzcG9UIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 02/13] net: reject PTP periodic
 output requests with unsupported flags
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
 "brandon.streiff@ni.com" <brandon.streiff@ni.com>,
 "felipe.balbi@linux.intel.com" <felipe.balbi@linux.intel.com>,
 "sergei.shtylyov@cogentembedded.com" <sergei.shtylyov@cogentembedded.com>,
 Eugenia Emantayev <eugenia@mellanox.com>, Feras Daoud <ferasda@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "stefan.sorensen@spectralink.com" <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Saeed Mahameed <saeedm@mellanox.com>
> Sent: Thursday, November 14, 2019 3:58 PM
> To: richardcochran@gmail.com; netdev@vger.kernel.org
> Cc: Hall, Christopher S <christopher.s.hall@intel.com>; Eugenia Emantayev
> <eugenia@mellanox.com>; davem@davemloft.net;
> sergei.shtylyov@cogentembedded.com; Feras Daoud <ferasda@mellanox.com>;
> stefan.sorensen@spectralink.com; Brown, Aaron F <aaron.f.brown@intel.com>;
> brandon.streiff@ni.com; Keller, Jacob E <jacob.e.keller@intel.com>; Kirsher,
> Jeffrey T <jeffrey.t.kirsher@intel.com>; intel-wired-lan@lists.osuosl.org;
> felipe.balbi@linux.intel.com
> Subject: Re: [PATCH net 02/13] net: reject PTP periodic output requests with
> unsupported flags
> 
> On Thu, 2019-11-14 at 10:44 -0800, Richard Cochran wrote:
> > From: Jacob Keller <jacob.e.keller@intel.com>
> >
> LGTM, just there might be a problem with old tools that didn't clear
> the flags upon request and expected PTP periodic .. they will stop to
> work with new kernel, am i am not sure if such tools do exist.
> 

Not quite. This is why there is a V2 ioctl now. The V1 ioctl now explicitly disables any bits set beyond the originally defined ones, so that callers of v1 will continue to work, even if they send junk data.

Thus, old tools should continue working with the old interface, while tools that want new functionality must be upgraded to use the v2 ioctls.

Thanks,
Jake

> But the fact now that we have PTP_PEROUT_ONE_SHOT, we need to trust
> both driver and tools to do the right thing.
> 
> What are the tools to test PTP_PEROUT_ONE_SHOT ? to support this in
> mlx5 it is just a matter of a flipping a bit.
> 
> Reviewed-by: Saeed Mahameed <saeedm@mellanox.com>
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
