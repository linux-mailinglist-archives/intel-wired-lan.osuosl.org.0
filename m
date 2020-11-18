Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F132B73B0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Nov 2020 02:21:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3E60D20423;
	Wed, 18 Nov 2020 01:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OeEBZ+SM9GNU; Wed, 18 Nov 2020 01:21:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E31D020419;
	Wed, 18 Nov 2020 01:21:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CABE81BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Nov 2020 01:21:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C6ACF85C77
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Nov 2020 01:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CdzfOSARgLzo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Nov 2020 01:21:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8A32E855BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Nov 2020 01:21:50 +0000 (UTC)
IronPort-SDR: GeD+Lyh7IegT+fBdqokVNg0YKtKWRDOQT6t0A7Uq+mC0W9/W6NS4P5ZXdIfRJ2UrdqNoMRLIla
 1DbVj3rW0liw==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="167535742"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="167535742"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 17:21:49 -0800
IronPort-SDR: FPn8pfqeTRrllz4kT4hF5E0RLenEnVSifImz/pmSo4YJt2hHf9eKLbdu8kWBnMfv3mG/I1Rvo2
 jTzrVO4Lvidw==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="310403267"
Received: from pnoll-mobl.amr.corp.intel.com (HELO ellie) ([10.255.230.106])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 17:21:49 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
In-Reply-To: <20201117014926.GA26272@hoboy.vegasvil.org>
References: <20201114025704.GA15240@hoboy.vegasvil.org>
 <874klo7pwp.fsf@intel.com> <20201117014926.GA26272@hoboy.vegasvil.org>
Date: Tue, 17 Nov 2020 17:21:48 -0800
Message-ID: <87d00b5uj7.fsf@intel.com>
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

Richard Cochran <richardcochran@gmail.com> writes:

> On Mon, Nov 16, 2020 at 05:06:30PM -0800, Vinicius Costa Gomes wrote:
>> The PTM dialogs are a pair of messages: a Request from the endpoint (in
>> my case, the NIC) to the PCIe root (or switch), and a Response from the
>> other side (this message includes the Master Root Time, and the
>> calculated propagation delay).
>> 
>> The interface exposed by the NIC I have allows basically to start/stop
>> these PTM dialogs (I was calling them PTM cycles) and to configure the
>> interval between each cycle (~1ms - ~512ms).
>
> Ah, now I am starting to understand...
>
> Just to be clear, this is yet another time measurement over PCIe,
> different than the cross time stamp that we already have, right?
>

Not so different. This series implement the getcrosststamp() function in
the igc driver, the difference from e1000e (another NIC driver that
supports getcrosststamp()) is that e1000e uses the fact that it has more
or less direct access to the CPU clock. In my case the access is less
direct as it happens via standardized PCIe PTM.

> Also, what is the point of providing time measurements every 1
> millisecond?

I sincerely have no idea. I had no power on how the hardware was
designed, and how PTM was implemented in HW.

>
>> Another thing of note, is that trying to start the PTM dialogs "on
>> demand" syncronously with the ioctl() doesn't seem too reliable, it
>> seems to want to be kept running for a longer time.
>
> So, I think the simplest thing would be to have a one-shot
> measurement, if possible.  Then you could use the existing API and let
> the user space trigger the time stamps.

Agreed that would be easiest/simplest. But what I have in hand seems to
not like it, i.e. I have an earlier series implementing this "one shot" way
and it's not reliable over long periods of time or against having the
system time adjusted.

So I think I am stuck with proposing a new API, if I am reading this
right.

Something like PTP_EXTTS_REQUEST is what was suggested, so
PTP_CROSSTS_REQUEST?

struct ptp_crossts_request {
	unsigned int index;
        struct ptp_clock_time period; /* Desired period, zero means disable */
	unsigned int flags;
	unsigned int rsv[2]; 
};

And a new event type, something like:

struct ptp_extts_event {
	struct ptp_clock_time hostts;
	struct ptp_clock_time devicets;
	unsigned int index;      
	unsigned int flags;      
};


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
