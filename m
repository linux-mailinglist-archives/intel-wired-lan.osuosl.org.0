Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAD42AFB57
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 23:23:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B877A2E184;
	Wed, 11 Nov 2020 22:23:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HSnA13PLjIid; Wed, 11 Nov 2020 22:23:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6DB202E182;
	Wed, 11 Nov 2020 22:23:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC93F1BF471
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 22:23:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B820286D22
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 22:23:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tomtoxum0cnL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 22:23:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 04CCD86CF5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 22:23:31 +0000 (UTC)
IronPort-SDR: H46pCDY86shsvWq+jitigEAR/26YNHZQVyDYu0IF5mn6crx7dgxzpteQ+I4JRmf5RHMewL+4D5
 +qm/HG2QrvHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="166719439"
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="166719439"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 14:23:31 -0800
IronPort-SDR: hGsxbfaYRvdWk35pTBUKpOW8JOJVfq1oGMb5usGf4KNU/tYgcJe7uNyzqYS88ZIKvSDQ6XPS4D
 +gQjyFmkcKKg==
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="541980922"
Received: from mcalqui1-mobl.amr.corp.intel.com (HELO ellie) ([10.212.84.222])
 by orsmga005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Nov 2020 14:23:30 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Miroslav Lichvar <mlichvar@redhat.com>
In-Reply-To: <20201111093346.GE1559650@localhost>
References: <20201110061019.519589-1-vinicius.gomes@intel.com>
 <20201110061019.519589-4-vinicius.gomes@intel.com>
 <20201110180719.GA1559650@localhost> <871rh19gm8.fsf@intel.com>
 <20201111093346.GE1559650@localhost>
Date: Wed, 11 Nov 2020 14:23:28 -0800
Message-ID: <87tutv8rdr.fsf@intel.com>
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
Cc: bhelgaas@google.com, linux-pci@vger.kernel.org, andre.guedes@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Miroslav Lichvar <mlichvar@redhat.com> writes:

> On Tue, Nov 10, 2020 at 11:06:07AM -0800, Vinicius Costa Gomes wrote:
>> Miroslav Lichvar <mlichvar@redhat.com> writes:
>> > I suspect the estimate would be valid only when the NIC is connected
>> > directly to the PTM root (PCI root complex). Is it possible to get the
>> > timestamps or delay from PTM-capable switches on the path between CPU
>> > and NIC? Also, how frequent can be the PTM dialogs? Could they be
>> > performed synchronously in the ioctl?
>> 
>> Reading the PTM specs, it could work over PCIe switches (if they also
>> support PTM).
>
> I saw some "implementation specific means" mentioned in the spec, so
> I'm not sure what and how exactly it works with the existing CPUs,
> NICs and PCIe switches. But even if the reported delay was valid only
> for directly connected NICs, I think that could still be useful as
> long as the user/application can figure out whether that is the case.

Right now, the logic I am using is that the PTM cycles (and measurement
reporting) are started only if PTM could be enabled in the endpoint PCI
device. If I understand the code right, PTM will only be enabled if it
could be enabled all along the path to the root port.

In other words, what this series does is: if the CONFIG_PCIE_PTM option
is enabled, and if PTM is supported along the path to the NIC, the PTM
cycles will be started during the device initialization, and the
measurements will be reported when the ioctl() is called.

>
>> The NIC I have supports PTM cycles from every ~1ms to ~512ms, and from
>> my tests it wants to be kept running "in background" always, i.e. set
>> the cycles to run, and only report the data when necessary. Trying to
>> only enable the cycles "on demand" was unreliable.
>
> I see. It does makes sense if the clocks need to be are synchronized.
> For the case of this ioctl, I think it would be better if it we could
> just collect the measurements and leave the clocks free running.

Not sure if I understand. This is what this series does, it only adds
support for starting the PTM cycles and reporting the measurements.

>
>> (so for the _EXTENDED case, I would need to accumulate multiple values
>> in the driver, and report them later, a bit annoying, but not
>> impossible)
>
> I think you could simply repeat the sample in the output up to the
> requested number.
>
> I suspect a bigger issue, for both the PRECISE and EXTENDED variants,
> is that it would return old data. I'm not sure if the existing
> applications are ready to deal with that. With high clock update
> rates, a delay of 50 milliseconds could cause an instability. You can
> try phc2sys -R 50 and see if it stays stable.

After a couple of hours of testing, with the current 50ms delay,
'phc2sys -R 50' is stable, but I got the impression that it takes longer
(~10s) to get to ~10ns offset.

Just for fun, I tried 'phc2sys -R 100' and it doesn't stabilize.

So it seems that applications (phc2sys) are able to tolerate some old
data.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
