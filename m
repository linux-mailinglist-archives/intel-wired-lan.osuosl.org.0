Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D93E78BC8D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Aug 2023 03:59:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E8F4403FB;
	Tue, 29 Aug 2023 01:58:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E8F4403FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693274339;
	bh=VHEPmKqLgkaSPZFKVobO0uPhbTSurlw4AnIbwTANnx8=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bSx3tYFnu0c48KXLARtHfKNTTl8ighn/rlrprhaHxQm82duS7u0yb+3uilDziGq3c
	 lnyMzkyt4f1otQxwn4q9BUKc/1UmhtTZBkBWhxS206OOgn98Ivn6Fhjq27JWoCO76b
	 WhMZ3Very7yHoindIHbgl27syRNqmuGRWkLk7AC9Ln+0BOtFMSVMTXIwgcfKgawSi9
	 xzUwlm/NlkM6gcV7YgvZwzzD88WDqcE+ATlc6LaDGJ5Ldw1EjpQbcPvyvBt3sgbTPt
	 Z9RH6k/YDIMOMzC4bWmvXdG+WovkATItCF4hCo59gMePWXvaYGIm2ndhUQTnWJFfn1
	 ukO/SPWGekFcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VcX4dtHqF1J8; Tue, 29 Aug 2023 01:58:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B9AB402E6;
	Tue, 29 Aug 2023 01:58:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B9AB402E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10E501BF29F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 01:58:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA07440180
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 01:58:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA07440180
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hpr0RosqJnwm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Aug 2023 01:58:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C1BD0400BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 01:58:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1BD0400BB
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="375220031"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="375220031"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 18:58:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="808496024"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="808496024"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.67])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 18:58:42 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: James Hogan <jhogan@kernel.org>
In-Reply-To: <5962826.lOV4Wx5bFT@saruman>
References: <20220811151342.19059-1-vinicius.gomes@intel.com>
 <3186253.aeNJFYEL58@saruman> <3329047.e9J7NaK4W3@saruman>
 <5962826.lOV4Wx5bFT@saruman>
Date: Mon, 28 Aug 2023 18:58:42 -0700
Message-ID: <87zg2alict.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693274331; x=1724810331;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=e2Ig3o1OA0kayp4cVYbjNkTKB/JXTgUcugSMWn1Mw+U=;
 b=X7qoAw/QH4T4pLq9NoWAiUBT5Ffe1KnnHBM5hIAvOocPVs3svGS3Mvs0
 s3BlqqOymqlZLeyoV82JPSkLjvzhLRPFXxGzbcMXYwCaX31qNwc2FZC1A
 4c/lAv6blXgaHHvHSI7hq0eNpCSdmn4VjzY5pD2nf1fmJ0y8x/eGa32Cz
 dkhImtdzOXLtk0wUKgYu7wbUYj5n2WnTnXzogaeht0ZEYE5OWWYdArJ8r
 uBUSnNZBS2L1NSqfrwudGsfRHrqNz5Lwlh2lRvTjgS7O+QdonX7Ildo3X
 ENm87kUYpz5O80xOCcsuZygv1SPhGxF7lyqqhCT1h0cZlwFLuezXBKHGt
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X7qoAw/Q
Subject: Re: [Intel-wired-lan] [WIP v2] igc: fix deadlock caused by taking
 RTNL in RPM resume path
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi James,

James Hogan <jhogan@kernel.org> writes:

> On Sunday, 2 October 2022 11:56:28 BST James Hogan wrote:
>> On Monday, 29 August 2022 09:16:33 BST James Hogan wrote:
>> > On Saturday, 13 August 2022 18:18:25 BST James Hogan wrote:
>> > > On Saturday, 13 August 2022 01:05:41 BST Vinicius Costa Gomes wrote:
>> > > > James Hogan <jhogan@kernel.org> writes:
>> > > > > On Thursday, 11 August 2022 21:25:24 BST Vinicius Costa Gomes wrote:
>> > > > >> It was reported a RTNL deadlock in the igc driver that was causing
>> > > > >> problems during suspend/resume.
>> > > > >> 
>> > > > >> The solution is similar to commit ac8c58f5b535 ("igb: fix deadlock
>> > > > >> caused by taking RTNL in RPM resume path").
>> > > > >> 
>> > > > >> Reported-by: James Hogan <jhogan@kernel.org>
>> > > > >> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> > > > >> ---
>> > > > >> Sorry for the noise earlier, my kernel config didn't have runtime
>> > > > >> PM
>> > > > >> enabled.
>> > > > > 
>> > > > > Thanks for looking into this.
>> > > > > 
>> > > > > This is identical to the patch I've been running for the last week.
>> > > > > The
>> > > > > deadlock is avoided, however I now occasionally see an assertion
>> > > > > from
>> > > > > netif_set_real_num_tx_queues due to the lock not being taken in some
>> > > > > cases
>> > > > > via the runtime_resume path, and a suspicious
>> > > > > rcu_dereference_protected()
>> > > > > warning (presumably due to the same issue of the lock not being
>> > > > > taken).
>> > > > > See here for details:
>> > > > > https://lore.kernel.org/netdev/4765029.31r3eYUQgx@saruman/
>> > > > 
>> > > > Oh, sorry. I missed the part that the rtnl assert splat was already
>> > > > using similar/identical code to what I got/copied from igb.
>> > > > 
>> > > > So what this seems to be telling us is that the "fix" from igb is only
>> > > > hiding the issue,
>> > > 
>> > > I suppose the patch just changes the assumption from "lock will never be
>> > > held on runtime resume path" (incorrect, deadlock) to "lock will always
>> > > be
>> > > held on runtime resume path" (also incorrect, probably racy).
>> > > 
>> > > > and we would need to remove the need for taking the
>> > > > RTNL for the suspend/resume paths in igc and igb? (as someone else
>> > > > said
>> > > > in that igb thread, iirc)
>> > > 
>> > > (I'll defer to others on this. I'm pretty unfamiliar with networking
>> > > code
>> > > and this particular lock.)
>> > 
>> > I'd be great to have this longstanding issue properly fixed rather than
>> > having to carry a patch locally that may not be lock safe.
>> > 
>> > Also, any tips for diagnosing the issue of the network link not coming
>> > back
>> > up after resume? I sometimes have to unload and reload the driver module
>> > to
>> > get it back again.
>> 
>> Any thoughts on this from anybody?
>
> Ping... I've been carrying this patch locally on archlinux for almost a year 
> now. Every time I update my kernel and forget to rebuild with the patch it 
> catches me out with deadlocks after resume, and even with the patch I 
> frequently have to reload the igc module after resume to get the network to 
> come up (which is preferable to deadlocks but still really sucks). I'd really 
> appreciate if it could get some attention.

I am setting up my test systems to reproduce the deadlocks, then let's
see what ideas happen about removing the need for those locks.

About the link failures, are there any error messages in the kernel
logs? (also, if you could share those logs, can be off-list, it would
help) I am trying to think what could be happening, and how to further
debug this.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
