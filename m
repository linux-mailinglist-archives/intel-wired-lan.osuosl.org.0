Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4CE6B3188
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 23:57:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3D2940502;
	Thu,  9 Mar 2023 22:57:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3D2940502
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678402658;
	bh=xXU779pGFLDZ0Q7THDAMrB5NswYIH2MvRLs+dSwgMaU=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mHj9B7s+3Uva3X5sGhT6ZMsOrLTiK167Q5WDUBBe4Ts/gFi/HsClfKbt4ivpkUCY0
	 kNc88LoF1sLfg0OS1PQ/eZdBdfiZXkxxMhi7jWokRYyFPf9J7YpK02kECVymnzIYbd
	 49nbZ3XPLJC+QvpsbyB+lMbD3AiZALwB3reLq+NXC5rw1a1U31jSnmec5ZfSUThC2e
	 pXEbqDJiMRcd0p4w0KhdQMzLuUWh6YbNfJUIeg8AgQSHC8NS++vtulddo+0yXWaPsD
	 CV22GIGORBbuzrHsil8/qMZaunlUFRQEmJ7BFpQvqudmsp0p0fT87xsWOLvmbvCKeM
	 usiC4QWvYIGyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQqSgSIa0VqJ; Thu,  9 Mar 2023 22:57:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFA6E40483;
	Thu,  9 Mar 2023 22:57:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFA6E40483
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B5851BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 22:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E7E8982239
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 22:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7E8982239
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XSRrX2Q3UEl1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Mar 2023 22:57:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09EEA82234
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 09EEA82234
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 22:57:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="316247385"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="316247385"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 14:57:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="627573828"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="627573828"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.17])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 14:57:28 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20230228182707.iajakkix4mcer62y@skbuf>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228182707.iajakkix4mcer62y@skbuf>
Date: Thu, 09 Mar 2023 14:57:28 -0800
Message-ID: <871qlxr0rr.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678402650; x=1709938650;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=90sjTb0SjkaaHndNnEFwv/Rp++5GfgQiTFx7IuIsZMs=;
 b=kPgA0fiMxwjEtJyHSFNlphKvDuTLGgkS+Z59/Wriv00y4IzHWK4kBOSa
 b35bwL/7ftauNGYiJK6YhCsnkAOT8YW/Sui6mEG61Wc1D9JNw4khlmYKY
 iSS0uZff3mxoBnsf3KFi0Q4ZMsLn8A+g2jtmbnqfkGNF6ctuIXfjESwjO
 Hb/7vKmX2TwqkhkO3pzRW3R6OpnBm2+tv+gdKsiXKT9wTYACQI6IgYiE2
 Me8YvZ+4t2q1TrAaqK1wYEZjB8lyeR2c+Mo856hl5lsqv7Yncp3/ai7ei
 4LoGHWl5z6C9/fM7apo8KuecioUuv4PCygSNxyHg6i/MYX7Fo7imztmYV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kPgA0fiM
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 0/3] igc: Add support
 for multiple TX tstamp requests
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
Cc: kurt@linutronix.de, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> On Mon, Feb 27, 2023 at 09:45:31PM -0800, Vinicius Costa Gomes wrote:
>> Patch 3 - More of an optimization. Use the ptp_aux_work kthread to do
>>       the work, and also try to do the work "inline" if the timestamp
>>       is ready already. Suggested by Vladimir Oltean and Kurt
>>       Kanzenbach.
>> 
>> Evaluation
>> ----------
>> 
>> To do the evaluation I am using a simple application that sends
>> packets (and waits for the timestamp to be received before sending the
>> next packet) and takes two measurements:
>
> If the application never generates multiple requests in flight, then
> this evaluation is only testing patch 3 (and patches 1 and 2 only to the
> extent that they don't cause a regression), right?
>

That's right. I was more interested in not causing a regression. I could
run the same test with two (or more) applications and give some numbers,
but those numbers couldn't be directly compared with the current version
of the code.

But good idea. I will change the application to send "batches" of
packets, so I can configure the number of "in flight" requests.

>>   1. from the HW timestamp value and the time the application
>>   retrieves the timestamps (called "HW to Timestamp";
>>   2. from just before the sendto() being called in the application to
>>   the time the application retrieves the timestamp (called "Send to
>>   Timestamp"). I think this measurement is useful to make sure that
>>   the total time to send a packet and retrieve its timestamp hasn't
>>   degraded.
>> 
>> (all tests were done for 1M packets, and times are in nanoseconds)
>> 
>> Before:
>> 
>> HW to Timestamp
>> 	min: 9130
>> 	max: 143183
>
> what margin of error did phc2sys have here? Tens, hundreds, thousands of
> ns, more? Was it a controlled variable? "HW to Timestamp" implies a
> comparison of 2 times from 2 different time sources, kept in sync with
> each other.
>

Should have provided these numbers, sorry. Yes, I was using phc2sys to
keep those different clocks (CLOCK_TAI and the NIC phc) synchronized,
and the phc2sys measured offset was in the order of tens of nanoseconds,
usually less than 20.

>> 	percentile 99: 10379
>> 	percentile 99.99: 11510
>> Send to Timestamp
>> 	min: 18431
>> 	max: 196798
>> 	percentile 99: 19937
>> 	percentile 99.99: 26066
>> 
>> After:
>> 
>> HW to Timestamp
>> 	min: 7933
>> 	max: 31934
>
> so the reduction of the max "HW to Timestamp" from 143 us to 32 us all
> the way to user space is mostly due to the inline processing of the TX
> timestamp, within the hardirq handler, right? Can you measure how much
> it is due to that, and how much due to the PTP kthread (simplest way
> would be to keep the kthread, but remove the inline processing)? How
> many reschedules of the kthread there are per TX timestamp? Even a
> single set of 4 numbers, denoting the maximum numbers of reschedules per
> timestamp request, would be useful information.
>

I will get these numbers, it will be useful for answering the questions
raised by that other patch.

>> 	percentile 99: 8690
>> 	percentile 99.99: 10598
>> Send to Timestamp
>> 	min: 17291
>> 	max: 46327
>> 	percentile 99: 18268
>> 	percentile 99.99: 21575
>> 
>> The minimum times are not that different
>
> right, probably because the time to do a context switch to user space
> dominates

Yep. Context switches and reading the PCIe registers account for most of
it.

>
>> , but we can see a big improvement in the 'maximum' time.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
