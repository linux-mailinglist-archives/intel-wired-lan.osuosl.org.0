Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B6D2B244F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Nov 2020 20:11:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C005F87605;
	Fri, 13 Nov 2020 19:11:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HaeNTFlppFqD; Fri, 13 Nov 2020 19:11:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8F578760F;
	Fri, 13 Nov 2020 19:11:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 323C61BF350
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 19:11:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 22EEB2E24D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 19:11:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gyoiW5K23NA5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Nov 2020 19:11:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id D88EA2E24B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 19:11:01 +0000 (UTC)
IronPort-SDR: 8B+6uZGKmCAr9p+Om2uOajX4zNPnV+JWOd1R0ZD1eakVCyUQT5WLc6ka3ZuwUYBiqN4lN6xIr7
 l2ItbjzfXHpQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="169736970"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="169736970"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 11:11:01 -0800
IronPort-SDR: 2ZUWuBsCzrCVLk1Fms9JjoxN5AUnawZsXeA3Qr8RIGcleHcszqlH9beDJgNO6SEDM0Vz5M2/c4
 WktQc6Zg9KFw==
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="532675890"
Received: from ajdrisco-mobl.amr.corp.intel.com (HELO ellie) ([10.255.231.72])
 by fmsmga005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 11:11:00 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
In-Reply-To: <20201113032451.GB32138@hoboy.vegasvil.org>
References: <20201112093203.GH1559650@localhost> <87pn4i6svv.fsf@intel.com>
 <20201113032451.GB32138@hoboy.vegasvil.org>
Date: Fri, 13 Nov 2020 11:10:58 -0800
Message-ID: <87ima96pj1.fsf@intel.com>
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

> On Thu, Nov 12, 2020 at 03:46:12PM -0800, Vinicius Costa Gomes wrote:
>> I wanted it so using PCIe PTM was transparent to applications, so adding
>> another API wouldn't be my preference.
>> 
>> That being said, having a trigger from the application to start/stop the
>> PTM cycles doesn't sound too bad an idea. So, not too opposed to this
>> idea.
>> 
>> Richard, any opinions here?
>
> Sorry, I only have the last two message from this thread, and so I'm
> missing the backstory.

No worries. The not so short version of the story is this:

I am proposing a series that adds support for PCIe PTM (for the igc
driver), exporting the values via the PTP_SYS_OFFSET_PRECISE ioctl().

The way PTM works in the NIC I have, kind of forces me to start the PTM
dialogs during initialization, and they are kept running in background,
what the _PRECISE ioctl() does is basically collecting the most recent
measurement.

Miroslav is suggesting that a new API, similar to PTP_EXTTS_REQUEST,
would be a good idea.

This new API idea has a few nice "pros":
 - I can use it to trigger starting the PTM cycles (instead of starting
 PTM during initialization), and the application would potentially have
 access to all the measurements;
 - Right now, keeping the PTM cycles always running would probably have
 an impact in power comsuption/number of wake-ups, with this new API,
 this price would only be paid when the user wants.

The main "con" would be that it wouldn't be transparent to applications
(phc2sys), as it would have to use another API if it wants to take
advantage of PTM.

And so question is, what is your opinion on this: export the PTM
measurements using some "to be defined" new API or keep using some of
the PTP_SYS_OFFSET_* ioctls?

I think that's it. Miroslav, feel free to correct me if I missed
something.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
