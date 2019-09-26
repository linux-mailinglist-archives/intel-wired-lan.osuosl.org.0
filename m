Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17115BF7C5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Sep 2019 19:42:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 98DC887E7D;
	Thu, 26 Sep 2019 17:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fGWw6i1kcoj5; Thu, 26 Sep 2019 17:42:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A643D87E6D;
	Thu, 26 Sep 2019 17:42:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 56D4B1BF853
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 17:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 50CC286969
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 17:42:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XL5CjAuKVH1Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Sep 2019 17:42:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9C8C7868CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 17:42:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 10:42:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,552,1559545200"; d="scan'208";a="189191659"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga008.fm.intel.com with ESMTP; 26 Sep 2019 10:42:34 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Sep 2019 10:42:34 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.190]) by
 ORSMSX113.amr.corp.intel.com ([169.254.9.232]) with mapi id 14.03.0439.000;
 Thu, 26 Sep 2019 10:42:34 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [net-next v2 2/2] net: reject ptp requests with unsupported flags
Thread-Index: AQHVdBIT+/LmAd3bQk+fhYOFVcDCqKc9y5uAgABvm6A=
Date: Thu, 26 Sep 2019 17:42:33 +0000
Message-ID: <02874ECE860811409154E81DA85FBB58968D86CB@ORSMSX121.amr.corp.intel.com>
References: <20190926022820.7900-1-jacob.e.keller@intel.com>
 <20190926022820.7900-3-jacob.e.keller@intel.com>
 <20190926040222.GB21883@localhost>
In-Reply-To: <20190926040222.GB21883@localhost>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWE4M2FkN2YtZDQ4MS00ZmViLTlmMzItNDNlZDk3M2QxNDQ1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidDVRSE9CT0pUR0pIVUpiOW9UNURUQnZRK1oxK3ZiRXB6ZTUrcTlJdnVhUHpLSmY3ZHJQWTJaMmJzZktSVXFsTCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next v2 2/2] net: reject ptp requests
 with unsupported flags
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
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: netdev-owner@vger.kernel.org [mailto:netdev-owner@vger.kernel.org] On
> Behalf Of Richard Cochran
> Sent: Wednesday, September 25, 2019 9:02 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: netdev@vger.kernel.org; Intel Wired LAN <intel-wired-lan@lists.osuosl.org>;
> Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; Felipe Balbi
> <felipe.balbi@linux.intel.com>; David S . Miller <davem@davemloft.net>; Hall,
> Christopher S <christopher.s.hall@intel.com>
> Subject: Re: [net-next v2 2/2] net: reject ptp requests with unsupported flags
> 
> On Wed, Sep 25, 2019 at 07:28:20PM -0700, Jacob Keller wrote:
> > This patch may not be correct for individual drivers, especially
> > regarding the rising vs falling edge flags. I interpreted the default
> > behavior to be to timestamp the rising edge of a pin transition.
> 
> So I think this patch goes too far.  It breaks the implied ABI.
> 
> > diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c
> b/drivers/net/ethernet/intel/igb/igb_ptp.c
> > index fd3071f55bd3..2867a2581a36 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
> > @@ -521,6 +521,10 @@ static int igb_ptp_feature_enable_i210(struct
> ptp_clock_info *ptp,
> >
> >  	switch (rq->type) {
> >  	case PTP_CLK_REQ_EXTTS:
> > +		/* Reject requests with unsupported flags */
> > +		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE | PTP_RISING_EDGE))
> > +			return -EOPNOTSUPP;
> 
> This HW always time stamps both edges, and that is not configurable.
> Here you reject PTP_FALLING_EDGE, and that is clearly wrong.  If the
> driver had been really picky (my fault I guess), it should have always
> insisted on (PTP_RISING_EDGE | PTP_FALLING_EDGE) being set together.
> But it is too late to enforce that now, because it could break user
> space programs.
> 
> I do agree with the sentiment of checking the flags at the driver
> level, but this needs to be done case by case, with the drivers'
> author's input.
> 
> (The req.perout.flags can be done unconditionally in all drivers,
> since there were never any valid flags, but req.extts.flags needs
> careful attention.)
> 
> Thanks,
> Richard

I will split this patch apart and make the extts part per-driver.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
