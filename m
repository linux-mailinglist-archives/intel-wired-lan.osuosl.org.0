Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6804DF5161
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2019 17:43:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAE1D86DAD;
	Fri,  8 Nov 2019 16:43:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0SeG6Ly4wdBw; Fri,  8 Nov 2019 16:43:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70ED886D91;
	Fri,  8 Nov 2019 16:43:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 420541BF370
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 16:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3CD4386222
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 16:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YDOZ_lD2CQSR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2019 16:43:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6737D86211
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 16:43:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 08:43:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,282,1569308400"; d="scan'208";a="193213375"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga007.jf.intel.com with ESMTP; 08 Nov 2019 08:43:37 -0800
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 8 Nov 2019 08:43:37 -0800
Received: from orsmsx113.amr.corp.intel.com ([169.254.9.28]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.154]) with mapi id 14.03.0439.000;
 Fri, 8 Nov 2019 08:43:37 -0800
From: "Creeley, Brett" <brett.creeley@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>, Arkady Gilinsky
 <arkady.gilinsky@harmonicinc.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [EXTERNAL] RE: [PATCH net] i40e/iavf: Fix msg interface
 between VF and PF
Thread-Index: AQHVktE9LXQEe1tn8E2yMWCX6YmauKd7neLQgABu5ACAALtz8IAA2KwAgAMFkICAANqjAA==
Date: Fri, 8 Nov 2019 16:43:36 +0000
Message-ID: <3508A0C5D531054DBDD98909F6FA64FA11B3EB75@ORSMSX113.amr.corp.intel.com>
References: <1572845537.13810.225.camel@harmonicinc.com>
 <3508A0C5D531054DBDD98909F6FA64FA11B3936D@ORSMSX113.amr.corp.intel.com>
 <1572931430.13810.227.camel@harmonicinc.com>
 <3508A0C5D531054DBDD98909F6FA64FA11B39863@ORSMSX113.amr.corp.intel.com>
 <1573018214.10368.1.camel@harmonicinc.com>
 <d078d3efc784805a67ba1a1c6e94fb4ec1c0aec6.camel@intel.com>
In-Reply-To: <d078d3efc784805a67ba1a1c6e94fb4ec1c0aec6.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzEwYjA3MDYtMzk1OS00ZDRmLWJiYWUtNWY5NTVkODViNWY0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiXC9rMXR6cGt5NFRIMUpcL3FCRnhvQ2xCaTh4M1MzNm0rR0dOZVdqcXJiRm9CbVVJNUtQRFg0YnErY0NsOVwvN3p5ZiJ9
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [EXTERNAL] RE: [PATCH net] i40e/iavf: Fix msg
 interface between VF and PF
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
Cc: Arkady Gilinsky <arcadyg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Sent: Thursday, November 7, 2019 11:39 AM
> To: Arkady Gilinsky <arkady.gilinsky@harmonicinc.com>; Creeley, Brett <brett.creeley@intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Cc: Arkady Gilinsky <arcadyg@gmail.com>
> Subject: Re: [EXTERNAL] RE: [PATCH net] i40e/iavf: Fix msg interface between VF and PF
> 
> On Wed, 2019-11-06 at 05:30 +0000, Arkady Gilinsky wrote:
> > On Tue, 2019-11-05 at 16:55 +0000, Creeley, Brett wrote:
> > > > -----Original Message-----
> > > > From: Arkady Gilinsky <arkady.gilinsky@harmonicinc.com>
> > > > Sent: Monday, November 4, 2019 9:24 PM
> > > > To: Creeley, Brett <brett.creeley@intel.com>;
> > > > intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kirsher,
> > > > Jeffrey T
> > > > <jeffrey.t.kirsher@intel.com>
> > > > Cc: Arkady Gilinsky <arcadyg@gmail.com>
> > > > Subject: Re: [EXTERNAL] RE: [PATCH net] i40e/iavf: Fix msg interface
> > > > between VF and PF
> > > > > static bool i40e_vc_verify_vqs_bitmaps(struct virtchnl_queue_select
> > > > > *vqs)
> > > > > {
> > > > >    /* this will catch any changes made to the virtchnl_queue_select
> > > > > bitmap */
> > > > >    if (sizeof(vqs->rx_queues) != sizeof(u32) ||
> > > > >         sizeof(vqs->tx_queues) != sizeof(u32))
> > > > >            return false;
> > > >
> > > > If so, then is it better to check the type of the fields in compile-
> > > > time rather than in runtime ?
> > > > Something like this:
> > > > BUILD_BUG_ON(sizeof(vqs->rx_queues) != sizeof(u32));
> > > > BUILD_BUG_ON(sizeof(vqs->tx_queues) != sizeof(u32));
> > > > This is not required comparison each time when function is called and
> > > > made code more optimized.
> > >
> > > I don't think this is required with the change you suggested below.
> > Agree.
> > If other code in driver not need to be adjusted/verified, then this check
> > is not needed.
> > > > >    if ((vqs->rx_queues == 0 && vqs->tx_queues == 0) ||
> > > > >          hweight32(vqs->rx_queues) > I40E_MAX_VF_QUEUES ||
> > > > >          hweight32(vqs->tx_queues) > I40E_MAX_VF_QUEUES)
> > > > >            return false;
> > > >
> > > > Again, from optimization POV it is better to have constant changed
> > > > than variable,
> > > > since it is compile time and not run time action:
> > > >      if ((vqs->rx_queues == 0 && vqs->tx_queues == 0) ||
> > > >            vqs->rx_queues >= (BIT(I40E_MAX_VF_QUEUES)) ||
> > > >
> > > >       vqs->tx_queues >= (BIT(I40E_MAX_VF_QUEUES)))
> > > >              return false;
> > >
> > > This seems much better than my solution. It fixes the original issue,
> > > handles if the
> > > vqs->[r|t]x_queues variables have changed in size, and the queue bitmap
> > > comparison
> > > uses a constant. Thanks!
> > Thanks to you for feedback.
> > I am trying to understand if this patch will enter into official kernel
> > tree
> > and, not less important from my POV, to official Intel drivers.
> > Brett/Jeffrey, could you, please, assist to make sure that this fix, or
> > fix suggested by Brett,
> > will be integrated into Intel i40e/iavf drivers ?
> > Or may be I should write mail straight to Intel support ?
> 
> As Brett pointed out, there are issues with this patch. Please make the
> suggested changes and re-submit the patch to
> intel-wired-lan@lists.osuosl.org

Jeff/Arkady: I have already submitted patches for this internally for
official Intel drivers. Apologies for the delayed response.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
