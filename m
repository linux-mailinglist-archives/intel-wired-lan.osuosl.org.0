Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 830862B12D9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Nov 2020 00:46:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F07287347;
	Thu, 12 Nov 2020 23:46:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eEucOyvUiNEf; Thu, 12 Nov 2020 23:46:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 631988721B;
	Thu, 12 Nov 2020 23:46:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 756201BF376
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 23:46:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6D24687088
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 23:46:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZD1C9vCMR72K for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 23:46:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B163787083
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 23:46:14 +0000 (UTC)
IronPort-SDR: jhznXmLVMfHInpe00RF6iCEsSXUyFnuH/HK86BP2vWhr4KAjfmdNb5ybMz+2gICVMviXkgq+fK
 M1bp1QcywQyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="166892272"
X-IronPort-AV: E=Sophos;i="5.77,473,1596524400"; d="scan'208";a="166892272"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 15:46:13 -0800
IronPort-SDR: jYVbLpAt3WxNi5IIIvZNfkVOuiGfuVOjBt5URs95iChHdOy3WkqwFELzs6IbfepfRv0yH2/YtA
 PKpyOq1OWRqQ==
X-IronPort-AV: E=Sophos;i="5.77,473,1596524400"; d="scan'208";a="542450074"
Received: from jlee24-mobl1.amr.corp.intel.com (HELO ellie) ([10.212.177.92])
 by orsmga005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2020 15:46:13 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Miroslav Lichvar <mlichvar@redhat.com>
In-Reply-To: <20201112093203.GH1559650@localhost>
References: <20201112093203.GH1559650@localhost>
Date: Thu, 12 Nov 2020 15:46:12 -0800
Message-ID: <87pn4i6svv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for PTP getcrosststamp()
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
Cc: andre.guedes@intel.com, linux-pci@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Miroslav Lichvar <mlichvar@redhat.com> writes:

> Considering how the existing applications work, ideally the
> measurements would be performed on demand from the ioctl to minimize
> the delay. If that's not possible, maybe it would be better to provide
> the measurements on a descriptor at their own rate, which could be
> polled by the applications, similarly to how the PTP_EXTTS_REQUEST
> ioctl works?

I wanted it so using PCIe PTM was transparent to applications, so adding
another API wouldn't be my preference.

That being said, having a trigger from the application to start/stop the
PTM cycles doesn't sound too bad an idea. So, not too opposed to this
idea.

Richard, any opinions here?

> That sounds like it could break in some specific conditions. Please
> try slightly different -R values and when it's running, try inserting
> a step with date -s '+0.1 sec' and see how reliable is the recovery.
> You can also test it with a different servo: phc2sys -E linreg.

Yeah, for some combinations, the disturbances make the recovery take
more time. So, I have to increase the frequency that the PTM cycles are
run. Thanks.

> Is that the case even when there is a PTM-enabled switch between the
> CPU and NIC? My understanding of the spec is that the switches are
> supposed to have their own clocks and have separate PTM dialogs on
> their upstream and downstream ports. In terms of PTP, are the switches
> boundary or transparent clocks?

Yeah, it seems that PCIe PTM switches are indeed more like boundary
clocks i.e. they are Requesters for the Root Complex and Responders for
the endpoints, and the Master time that they provide in their Responses
are in relation to their own clocks.

>
> Yes, I think that would work, except the delay would need to be
> doubled in the T3' calculation. The important thing is that the offset
> and delay calculated from the timestamps don't change. It might be
> better to shift the timestamps back to avoid the "post" timestamp
> coming from future, which applications could drop as invalid. To not
> shift the middlepoints in the conversion, this should work:
>
> T1' = (T2 + T3) / 2 - delay
> T2' = (T1 + T4) / 2
> T3' = (T2 + T3) / 2 + delay

Makes total sense. Thanks a lot!


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
