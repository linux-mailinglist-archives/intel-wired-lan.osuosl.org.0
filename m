Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB9C1729C2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2020 21:55:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 804D7204C3;
	Thu, 27 Feb 2020 20:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ahDd1wWRCqn; Thu, 27 Feb 2020 20:55:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2A526230E6;
	Thu, 27 Feb 2020 20:55:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9EF2D1BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 20:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 828CA204C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 20:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yxBG0vGYokj8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2020 20:55:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 3AECD1FEAE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 20:55:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 12:55:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="261630736"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga004.fm.intel.com with ESMTP; 27 Feb 2020 12:55:30 -0800
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 27 Feb 2020 12:55:30 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.43]) by
 ORSMSX116.amr.corp.intel.com ([169.254.7.180]) with mapi id 14.03.0439.000;
 Thu, 27 Feb 2020 12:55:30 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue PATCH v3 2/2] igc: Add support
 for ETF offloading
Thread-Index: AQHV45GTqv5/9VwSEk2cSo5e1RXhPKgueVPggAGGqQD//5ePQA==
Date: Thu, 27 Feb 2020 20:55:30 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971FE358@ORSMSX103.amr.corp.intel.com>
References: <20200214235203.3910513-1-vinicius.gomes@intel.com>
 <20200214235203.3910513-3-vinicius.gomes@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B971FCCCA@ORSMSX103.amr.corp.intel.com>
 <878sknontx.fsf@linux.intel.com>
In-Reply-To: <878sknontx.fsf@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue PATCH v3 2/2] igc: Add support
 for ETF offloading
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Gomes, Vinicius <vinicius.gomes@intel.com>
> Sent: Thursday, February 27, 2020 11:03 AM
> To: Brown, Aaron F <aaron.f.brown@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: RE: [Intel-wired-lan] [next-queue PATCH v3 2/2] igc: Add support for
> ETF offloading
> 
> Hi Aaron,
> 
> "Brown, Aaron F" <aaron.f.brown@intel.com> writes:
> 
> >> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of
> >> Vinicius Costa Gomes
> >> Sent: Friday, February 14, 2020 3:52 PM
> >> To: intel-wired-lan@lists.osuosl.org
> >> Subject: [Intel-wired-lan] [next-queue PATCH v3 2/2] igc: Add support for
> >> ETF offloading
> >>
> >> This adds support for ETF offloading for the i225 controller.
> >>
> >> For i225, the LaunchTime feature is almost a subset of the Qbv
> >> feature. The main change from the i210 is that the launchtime of each
> >> packet is specified as an offset applied to the BASET register. BASET
> >> is automatically incremented each cycle.
> >>
> >> For i225, the approach chosen is to re-use most of the setup used for
> >> taprio offloading. With a few changes:
> >>
> >>  - The more or less obvious one is that when ETF is enabled, we should
> >>  set add the expected launchtime to the (advanced) transmit
> >>  descriptor;
> >>
> >>  - The less obvious, is that when taprio offloading is not enabled, we
> >>  add a dummy schedule (all queues are open all the time, with a cycle
> >>  time of 1 second).
> >>
> >> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> >> ---
> >>  drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
> >>  drivers/net/ethernet/intel/igc/igc_main.c    | 70
> +++++++++++++++++++-
> >>  drivers/net/ethernet/intel/igc/igc_tsn.c     | 19 +++++-
> >>  3 files changed, 86 insertions(+), 4 deletions(-)
> >>
> > I'm using the TSN Scheduled TX Tools from
> https://gist.github.com/jeez/bd3afeff081ba64a695008dd8215866f, and the
> process (from both the README.etf and README.taprio) seems to work fine
> with an i210 (igb adapter) but when I try to use the same process with an i225
> (igc based adapter) I get a series of Tx Unit Hangs when I start sending traffic.
> Packets are still getting sent, but lot of ones just hang.
> > ------------------------------------------------------------
> > [  936.406229] igc 0000:01:00.0: Detected Tx Unit Hang
> >                  Tx Queue             <0>
> >                  TDH                  <de>
> >                  TDT                  <e4>
> >                  next_to_use          <e4>
> >                  next_to_clean        <de>
> >                buffer_info[next_to_clean]
> >                  time_stamp           <100099d84>
> >                  next_to_watch        <0000000052519a89>
> >                  jiffies              <10009a393>
> >                  desc.status          <4a8200>
> > [  941.932530] igc 0000:01:00.0: Detected Tx Unit Hang
> >                  Tx Queue             <0>
> >                  TDH                  <1e>
> >                  TDT                  <22>
> >                  next_to_use          <22>
> >                  next_to_clean        <1e>
> >                buffer_info[next_to_clean]
> >                  time_stamp           <10009b0e0>
> >                  next_to_watch        <00000000ff485dca>
> >                  jiffies              <10009bb52>
> >                  desc.status          <4a8200>
> > [  945.581031] igc 0000:01:00.0: Detected Tx Unit Hang
> >                  Tx Queue             <0>
> >                  TDH                  <4a>
> >                  TDT                  <52>
> >                  next_to_use          <52>
> >                  next_to_clean        <4a>
> >                buffer_info[next_to_clean]
> >                  time_stamp           <10009c388>
> >                  next_to_watch        <00000000073a6ad3>
> >                  jiffies              <10009caff>
> >                  desc.status          <4a8200>
> >
> > ...
> > And so on until I stop the talker.  Other (regular) traffic still gets through
> without any apparent problem.  But only a portion of the etf scheduled ones,
> the rest left TX Hanging.
> >
> 
> Thanks for the test.
> 
> I only got to reproduce this when the system clock and the NIC PHC are
> out of sync, e.g. I only see this when I start udp_tai just after I
> start ptp4l/phc2sys.

That could be the case on my system.  I am getting a fair amount of thrash from ptp4l, switching between the local ptp hw clock and the remote one that it supposed to be master.  I'll see what happens when I use more of a known quantity, probably i210, for the link partner ptp master.

> 
> Just to confirm that we talking about the same problem, if possible,
> wait a few minutes before starting udp_tai after starting ptp4l/phc2sys,
> and see if the problem persists.

I do still see the Tx Unit Hangs if I give it a few minutes between starting the clock synch and launching the talker (udp_tai.)  But I don't think my ptp4l session is settling down so it sounds plausible that we are looking the same thing.

> 
> I am trying to think what I can do from the driver side.
> 
> Cheers,
> --
> Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
