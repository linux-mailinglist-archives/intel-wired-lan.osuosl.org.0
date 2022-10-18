Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E466601FD3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 02:50:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96A6560FA1;
	Tue, 18 Oct 2022 00:50:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96A6560FA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666054255;
	bh=FNnvJT/mRTk1FRahGuJdaE8s3hKPDQWiobpADl6efwc=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t6mwhAYNrVrY2OtRiCnnnj+5EdpgVETzL7AlTVjpo73UlO/cHDLIqDSgIU2iN0Yda
	 n0jxPrhkp9dqkd6Tdq7URB4bJFW1/JmdUgbNgVL+hHAfzrZejrQnTdV1xDsw0YshP1
	 yRfJ1quakNcZc84NUVGnP2jdDmdp68XbG8rSPvTOjJwR8+EYKeW+nijIr42bTWeeIS
	 bzR+NNBydk+0en35Upq+78JEow/rI9ZAC9o/SQ2SL5qc/Y2GPBGtfyWeM7c11hwFYM
	 VFXAcvYU78K6YhbIof8wxjoWvOJyrSVerM09+Wtfkbbw2QdxjF8cih2FsnQrnrCfKo
	 bCjVtQwBCANjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4zOh1jzHqyi9; Tue, 18 Oct 2022 00:50:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77FA260ADB;
	Tue, 18 Oct 2022 00:50:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77FA260ADB
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BFD71BF982
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 00:50:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0349982BC8
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 00:50:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0349982BC8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M-YTEj4uPNV4 for <intel-wired-lan@osuosl.org>;
 Tue, 18 Oct 2022 00:50:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29D3582BBA
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 29D3582BBA
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 00:50:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="293328406"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="293328406"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 17:50:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="628503188"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="628503188"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 17:50:47 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@osuosl.org
In-Reply-To: <65b11d3a-8806-7d1d-e010-eb886af9f772@intel.com>
References: <20221003095519.539390-1-karol.kolacinski@intel.com>
 <20221003095519.539390-2-karol.kolacinski@intel.com>
 <7b4176bc-a5a8-467f-f2f2-a7defb37b89f@intel.com>
 <MW4PR11MB5800C7EFFCA3CFE32A351EFB865D9@MW4PR11MB5800.namprd11.prod.outlook.com>
 <87bkqqou2e.fsf@intel.com>
 <65b11d3a-8806-7d1d-e010-eb886af9f772@intel.com>
Date: Mon, 17 Oct 2022 17:50:47 -0700
Message-ID: <877d0yt0ns.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666054249; x=1697590249;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version;
 bh=5pePKT8Ehh3a3dHjJUQ4pAV5KUIGjnFXM0X6uj3Yx7c=;
 b=Ey+Px5nwN1pane8+0ev9T+FI2ghwqyWcNkdzLcpxaZN1/fyg+YKEhQBr
 EA7VtrEznjyrU8BuV42hPwDxRmuSg02Wb+8+sKN36vlT2KkQcqKSu53w7
 PWeTsvEqV5rKMx4pQSKJc6FhsY0An2swOTPuOgLZhKAdEKwG4lqXE6loR
 +hX2HNPxXM7ooaQPMDxKsn4mk16+0YxsdPe4z6lO74obIYJv/br8+Adla
 7iQBL9gN0+NWaXwnxqmo1RGop48k/BHdJTCgC72ONcoIIHjN2yqHHG4E+
 4I/HNo8djEPS4m+1gRbtSUXIoIJoLxLfUsaBfZrY7ZYKFEjcgEt400lcn
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ey+Px5nw
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: Remove gettime HW
 semaphore
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

Jacob Keller <jacob.e.keller@intel.com> writes:

> On 10/5/2022 2:10 PM, Vinicius Costa Gomes wrote:
>> "Kolacinski, Karol" <karol.kolacinski@intel.com> writes:
>> 
>>> Hi Vinicius,
>>>
>>>> I think the problem is less about concurrent writes/reads than
>>>> concurrent reads: the fact that the registers are latched when the
>>>> "lower" register is read, makes me worried that there's a (very narrow)
>>>> window during rollover in which the "losing" read (of multiple threads
>>>> doing reads) can return a wrong value.
>>>
>>> The issue in this case is, it's either risk of reading slightly wrong
>>> value or having multiple timeouts and errors.
>>> We experienced a lot of simultaneous reads on multiple PFs (especially
>>> on E822 HW with 8 ports) and even with increased timeout to acquire
>>> the HW semaphore, it still failed.
>> 
>> I am wondering if using a hw semaphore is making the problem worse than
>> it needs to be. Why a kernel spinlock can't be used?
>> 
>> 
>> Cheers,
>
> The same clock is shared across multiple ports which operate as
> independent PCIe devices, hence having their own instance of the ice
> driver structures. A spinlock doesn't work because they wouldn't be
> using the same lock.
>

Oh! I should have realized that. The thought that there could be
multiple devices/ports sharing some resources didn't cross my mind.

> We could try to share the lock in software between PFs, but its actually
> quite difficult to do that with the existing PCIe driver model.

I can see how that would be difficult, yeah.

Did you happen to test if my fears were true or not? For example,
'phc2sys' running in parallel with a few (4?) 'while true { phc_ctl get }'.
Do you notice any weirdness?


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
