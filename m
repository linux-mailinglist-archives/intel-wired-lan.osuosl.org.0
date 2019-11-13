Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFDEFB93F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Nov 2019 20:58:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B426588C21;
	Wed, 13 Nov 2019 19:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xTlKmFImfGmV; Wed, 13 Nov 2019 19:58:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 79DA488C15;
	Wed, 13 Nov 2019 19:58:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DFC411BF41D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 19:58:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D8C038853C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 19:58:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iKTDSLGQ2NJv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Nov 2019 19:58:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BCFA988546
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 19:58:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 11:58:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,301,1569308400"; d="scan'208";a="406079723"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga006.fm.intel.com with ESMTP; 13 Nov 2019 11:58:18 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 13 Nov 2019 11:58:18 -0800
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.169]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.219]) with mapi id 14.03.0439.000;
 Wed, 13 Nov 2019 11:58:18 -0800
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [net-next v3 0/7] new PTP ioctl fixes
Thread-Index: AQHVdJXQZ4VVw33DpU6C3xL/BA8h0aeJKIiAgAD+0oCAAChcAP//gE1w
Date: Wed, 13 Nov 2019 19:58:17 +0000
Message-ID: <02874ECE860811409154E81DA85FBB58969890E8@ORSMSX121.amr.corp.intel.com>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20191113015809.GA8608@localhost> <20191113171011.GA16997@localhost>
 <20191113193438.GA7551@localhost>
In-Reply-To: <20191113193438.GA7551@localhost>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzk2ZWQ3YTEtZmVhOC00OWZmLWI3ODItMjkzYWQzN2ZmZDZhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYzVKN3ZvWG1ERHZKSVJpVVI3RVVBS1B1VHpPWDdSa2E5OURkdDB5cXVSTkNzN0FxMmRNejI4R0MwUFE2dFZaMyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next v3 0/7] new PTP ioctl fixes
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
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Wednesday, November 13, 2019 11:35 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: netdev@vger.kernel.org; Intel Wired LAN <intel-wired-lan@lists.osuosl.org>;
> Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Subject: Re: [net-next v3 0/7] new PTP ioctl fixes
> 
> On Wed, Nov 13, 2019 at 09:10:11AM -0800, Richard Cochran wrote:
> > On Tue, Nov 12, 2019 at 05:58:09PM -0800, Richard Cochran wrote:
> > > There is still time before v5.4 gets released.  Would you care to
> > > re-submit the missing six patches?
> >
> > Or, if you don't mind, I can submit these for you, along with the
> > STRICT flag checking for v2 ioctls that we discussed.
> 
> Okay, so I took the liberty of taking your series, picking up the
> tags, and adding the new strict checking.  I'll post it later today or
> early tomorrow after testing.
> 
> Thanks,
> Richard

Yes, that is fine with me. Thanks Richard!

I will take a look at them once they hit the lists.

Regards,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
