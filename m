Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44AF2BB1D7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Nov 2020 18:58:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8C86E87640;
	Fri, 20 Nov 2020 17:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wLxJvgaGEtMy; Fri, 20 Nov 2020 17:58:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 22D03875F8;
	Fri, 20 Nov 2020 17:58:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6669F1BF332
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 17:58:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 565B72E120
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 17:58:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JSJDBrCBo3Ab for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Nov 2020 17:58:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 2E2B22E107
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 17:58:16 +0000 (UTC)
IronPort-SDR: BvhV50wqSmoZ5AZIoYF7BW/NJqEcTWrBjrvrvOp2jOTiqxp7z7nL/xtft/ONGs+bDc+g4QW5pp
 dUAMQ2+iWD7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="233131825"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="233131825"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 09:58:15 -0800
IronPort-SDR: v/sTxd7qwryAj5uZni3OxkmBfo/XnOnKrjNiIsj/kIe4l7H2kfE8y+EXWppmTqEVaD5zeT1FPm
 HwQPf1pIVoQw==
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="331399391"
Received: from deeppate-mobl1.amr.corp.intel.com (HELO ellie) ([10.212.22.160])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 09:58:14 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
In-Reply-To: <20201120141621.GC7027@hoboy.vegasvil.org>
References: <20201114025704.GA15240@hoboy.vegasvil.org>
 <874klo7pwp.fsf@intel.com> <20201117014926.GA26272@hoboy.vegasvil.org>
 <87d00b5uj7.fsf@intel.com> <20201118125451.GC23320@hoboy.vegasvil.org>
 <87wnyi2o1e.fsf@intel.com> <20201120141621.GC7027@hoboy.vegasvil.org>
Date: Fri, 20 Nov 2020 09:58:14 -0800
Message-ID: <877dqf29mx.fsf@intel.com>
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
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Richard,

Richard Cochran <richardcochran@gmail.com> writes:

> On Wed, Nov 18, 2020 at 04:22:37PM -0800, Vinicius Costa Gomes wrote:
>
>> Talking with the hardware folks, they recommended using the periodic
>> method, the one shot method was implemented as a debug/evaluation aid.
>
> I'm guessing ...
>
> The HW generates pairs of time stamps, right?

Not exactly.

On the PTM protocol there are four timestamps involved:
 - T1, when the NIC sends the Request message;
 - T2, when the PCIe root receives the Request message;
 - T3, when the PCIe root sends the Response message;
 - T4, when the NIC receives the Response message;

The NIC registers expose these values (I am using ' to indicate
timestamps captured on the previous cycle):
 - T1 (on this cycle);
 - T2 and T2' (on this and on the previous cycle);
 - (T4 - T1) and (T4' - T1') (on this and on the previous cycle);
 - (T3' - T2') (on the previous cycle).

Yeah, applications would be most interested in a pair (host, device)
timestamps, but as Miroslav said, a third value expressing the
propagation delay from those values could be also useful.

>
> And these land in the device driver by means of an interrupt, right?

Again, not exactly. I have to either poll for a "valid bit" on a status
register or wait for a "fake" (all zeroes source and destination
addresses) ethernet frame to arrive on a specific queue.

Just for information the "fake" packet has different information:
 - T1 (on this cycle);
 - T2 (on this cycle);
 - (T4' - T1') (on the previous cycle);
 - (T3 - T2) (on this cycle);

>
> If that is so, then maybe the best way to expose the pair to user
> space is to have a readable character device, like we have for the
> PTP_EXTTS_REQUEST2.  The ioctl to enable reporting could also set the
> message rate.

Sounds reasonable.

>
> Although it will be a bit clunky, it looks like we have reserved room
> enough for a second, eight-byte time stamp.

The question is if we want to also expose some of the other values.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
