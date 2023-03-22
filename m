Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B316C58F2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 22:46:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 976CE614C3;
	Wed, 22 Mar 2023 21:46:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 976CE614C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679521594;
	bh=p0H1Pzy/K6WwtmylP2JitFrds0miAVIi5Oe85xZKDGs=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1GepmYL/v+g3P5WllM2Kzil5sDLUJKinfahuZBCifOGQB+TBX42+ltJwCwlEKhjiP
	 21oXndfapafqe6gdpjHEXIRR+b031uxlWR73R3Vh+fWlb3LdDHKH/OOqXh9vv1yAZ4
	 rr3L2bJalgl9IifCZhi5c7WpjRtaLPfN1x9uBvlEkQkRTJk5uGrhYi34trqIOk550+
	 BybA8lKR0PN1IMjFFlGyrA7Pcqi1wzzSfu4eFL1bDFDSLUHRrqb13s18+tb58mPOFp
	 QCeL4IIAykWBNso2vKbPYQZdMza9WHlLnxADqe6GKRVEpaFHVPaDsNhUzxlNotYHGR
	 FiWSidNsJuIgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t_vlIIzrd7ka; Wed, 22 Mar 2023 21:46:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BDA6613DD;
	Wed, 22 Mar 2023 21:46:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BDA6613DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7008D1BF333
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 21:46:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 491BC81369
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 21:46:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 491BC81369
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZwspQcuWfnmx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 21:46:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C97581359
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C97581359
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 21:46:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="341697765"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="341697765"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 14:46:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="714553105"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="714553105"
Received: from toddkkoe-mobl1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.16.59])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 14:46:25 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Miroslav Lichvar <mlichvar@redhat.com>
In-Reply-To: <ZBsm4GLfzyfQsHJ1@localhost>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228182707.iajakkix4mcer62y@skbuf> <871qlxr0rr.fsf@intel.com>
 <ZBsm4GLfzyfQsHJ1@localhost>
Date: Wed, 22 Mar 2023 14:46:25 -0700
Message-ID: <87o7oko3wu.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679521586; x=1711057586;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7ClMRFFp7LknEsWjshd5LyAaht6WYHMt0o9PSwKGP18=;
 b=aNHFFJbUD0Bbf1SziEjclT8ubIoFDdUJ11LqleYNrT15BRYluCDbcXTT
 YV4QatktUtbW73NOAAh5dA9PpYvenRO71biSYzVjMa9uPz6jILBms18DH
 Lqt1wddhm8cbem8oWIT+rDkUbK5HMTljONJsC603hdO3QaERmDptme95F
 qvok0kfLqTDN6PU3EqM647SnZaUvbH4A/nTEvzez/iAqAw+EGCdJM0Scv
 vB9dooHbechWmFkRqHiW2Emvw20vfBI35PkU1WoctcFss+YQ1YZ8yz2NO
 ebumHWDOKPoi0xEN2zrA9rNQ7aPrPovnUAvimYnqZ6NwAg8yMB14v3Hve
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aNHFFJbU
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
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, kurt@linutronix.de,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Miroslav Lichvar <mlichvar@redhat.com> writes:

> On Thu, Mar 09, 2023 at 02:57:28PM -0800, Vinicius Costa Gomes wrote:
>> Vladimir Oltean <vladimir.oltean@nxp.com> writes:
>> > If the application never generates multiple requests in flight, then
>> > this evaluation is only testing patch 3 (and patches 1 and 2 only to the
>> > extent that they don't cause a regression), right?
>> >
>> 
>> That's right. I was more interested in not causing a regression. I could
>> run the same test with two (or more) applications and give some numbers,
>> but those numbers couldn't be directly compared with the current version
>> of the code.
>> 
>> But good idea. I will change the application to send "batches" of
>> packets, so I can configure the number of "in flight" requests.
>
> If you wanted to see the impact on performance and accuracy of
> timestamps at the same time, you could use chrony as an NTP server and
> generate load with ntpperf. The server can be started as
>
> # chronyd -d local allow 'hwtimestamp eth0' 'clientloglimit 10000000'
>
> ntpperf needs to be started with the -I -H -o options to measure
> the difference between server HW TX timestamp and client HW RX
> timestamp. The PHC used by ntpperf needs to be synchronized, ideally
> via a separate PHC (e.g. by ptp4l+phc2sys).
>
> If the multi-timestamp patches work well, I'd expect the stddev
> reported by ntpperf to stay low at a higher rate. See
> https://github.com/mlichvar/ntpperf for some examples.

I was going to start the testing for the second version of the series
just now.

This suggestion sounds great, let's see how it's going to look.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
