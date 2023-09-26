Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D06B67AEF33
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 17:08:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA67382470;
	Tue, 26 Sep 2023 15:08:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA67382470
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695740921;
	bh=CkXCITvGUZED78O1EWrUtYMQXdI7XESVx1H6zsd6Nt4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4EeaH41cM1uqEA+Qmd9vmZXGRN9NQZHAgHfbvaSrgJYKcgLx6oz5dqZk0HrRRS7MJ
	 WhqWpq8nRgtszGe1H485WTw7tzcoAoXGF602JJcnmIwvdVoqgywwI1zd5bM0hRzz0Y
	 hJo9NFPvipUpoSxm/CkH8ZmN2747eHtVbXKK/jQmk/HOkuul33YD8LRgOtHgDPb1r+
	 b6POMA5hW2ePVnJWQSR65ld9w7QJwuj2KU+nLrFL7T/irS131qj23B2LW62jXEmRI1
	 5YtbmG7U4Sz8f34Hq23Id9xx0EMKvN0BhkAIbjdqBllBuE5VKEVQmjuXpCafv7IPHp
	 NdR4NpceSLH5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XXQyTcW7iiHE; Tue, 26 Sep 2023 15:08:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAF0E8243B;
	Tue, 26 Sep 2023 15:08:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAF0E8243B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B2431BF33A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 01:54:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 355BD414C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 01:54:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 355BD414C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bD_C9ZExcIEQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 01:54:44 +0000 (UTC)
X-Greylist: delayed 64748 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 26 Sep 2023 01:54:44 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 140264146F
Received: from out-210.mta1.migadu.com (out-210.mta1.migadu.com
 [IPv6:2001:41d0:203:375::d2])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 140264146F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 01:54:43 +0000 (UTC)
Message-ID: <ef08645e-9891-0d12-2c87-39ce0be52aee@linux.dev>
Date: Tue, 26 Sep 2023 09:54:29 +0800
MIME-Version: 1.0
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, jesse.brandeburg@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com
References: <20230627022658.1876747-1-yajun.deng@linux.dev>
 <10269e86-ed8a-0b09-a39a-a5239a1ba744@intel.com>
 <72bfc00f-7c60-f027-61cb-03084021c218@linux.dev>
 <9e1b824f-04d3-4acb-66d3-a5f90afbad0e@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Yajun Deng <yajun.deng@linux.dev>
In-Reply-To: <9e1b824f-04d3-4acb-66d3-a5f90afbad0e@intel.com>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Tue, 26 Sep 2023 15:08:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1695693280;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ufzb6Q0ueCOMPAPRFaFdRhM3aTpkv2BWqJuSSkbzkI8=;
 b=jvH9uXw7nezAG9r0ukkLe3Z59PNuYljD/apS3isX3wIoOAT1qdv4Nb6X2B3d9TBwbdb6xU
 r27pWgb241Lm7ect9ttQMogWrTjTe9qkA8CUcEVOOvlxqUhCgYhuSF5d91Z+RChN8jzwJI
 /PwKsNIUHPJpXd4ui8UQYtg7zCK2NkI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=jvH9uXw7
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix the wrong PTP frequency
 calculation
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 2023/9/26 07:59, Tony Nguyen wrote:
> On 9/25/2023 12:55 AM, Yajun Deng wrote:
>>
>> On 2023/6/28 04:20, Jacob Keller wrote:
>>>
>>> On 6/26/2023 7:26 PM, Yajun Deng wrote:
>>>> The new adjustment should be based on the base frequency, not the
>>>> I40E_PTP_40GB_INCVAL in i40e_ptp_adjfine().
>>>>
>>>> This issue was introduced in commit 3626a690b717 ("i40e: use
>>>> mul_u64_u64_div_u64 for PTP frequency calculation"), and was fixed in
>>>> commit 1060707e3809 ("ptp: introduce helpers to adjust by scaled
>>>> parts per million"). However the latter is a new feature and hasn't 
>>>> been
>>>> backported to the stable releases.
>>>>
>>>> This issue affects both v6.0 and v6.1 versions, and the v6.1 
>>>> version is
>>>> an LTS version.
>>>>
>
> ...
>
>>>
>>> Thanks for finding and fixing this mistake. I think its the simplest 
>>> fix
>>> to get into the stable kernel that are broken, since taking the
>>> adjust_by_scaled_ppm version would require additional patches.
>>>
>>> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>>>
>> Kindly ping...
>
> As this patch looks to be for stable, you need to follow the process 
> for that. I believe your situation would fall into option 3:
> https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html#option-3 
>
>
Yes, it needs an upstream commit ID. But this patch didn't need to apply 
to the upstream.

As the commit of the patch, the issue was fixed in
commit 1060707e3809 ("ptp: introduce helpers to adjust by scaled
parts per million"). However the commit is a new feature and hasn't been
backported to the stable releases.

Therefore, the patch does not have an upstream commit ID, and only needs 
to be applied to stable.


> Thanks,
> Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
