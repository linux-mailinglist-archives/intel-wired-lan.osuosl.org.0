Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D756FD033
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 May 2023 22:52:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C84642B71;
	Tue,  9 May 2023 20:52:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C84642B71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683665521;
	bh=WoVUwD6gr2F0m+Npzvs6tFvbh+NjhB+VfEhtoBr79Rg=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VkxXVbQuAaPcwnQdmOufnZWQYGGBvKLL3jYEc/HYwnDGuhZM75mOnDTiZ9oK8KvRL
	 ZnF8Q/ArsLezkjXNhqPQfh6gxwH7ueCcDN7b/kJX6fNq/kJm+BgrOivJLBQdYxhwlP
	 vnQEV1hZRxAtQuCP3/a60sPsUbkVoQSouHcdCq7YPiaY3aas7dq5zO3Iqw90I2Nven
	 y9nAaktIjWLUR6tqI8/OKfhF7s2FJEo/HEhcyleBGXipzFGZdykMuGfpOKPa97HINX
	 dYhWvmjC6l5xSnwFMIs5YJIeqPdILOQ4tO88FpL1XiQkozG7RX2FTDBVjTsTKpeLng
	 SLqRfYhvGNo1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id THIgRhB7O5_Q; Tue,  9 May 2023 20:52:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A4DE400C8;
	Tue,  9 May 2023 20:52:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A4DE400C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BDAFA1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 20:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8A66942946
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 20:51:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A66942946
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xfXAbMOJLkOl for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 May 2023 20:51:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D46842942
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5D46842942
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 20:51:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="353114995"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="353114995"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 13:51:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="1028947308"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="1028947308"
Received: from klaytonx-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.251.13.103])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 13:51:51 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
In-Reply-To: <84750f92-40b5-29f7-fe55-148ead0b1811@intel.com>
References: <20230504235233.1850428-1-vinicius.gomes@intel.com>
 <970e057f-eed9-69ae-b321-ff78049e33ac@intel.com>
 <87y1lytqk7.fsf@intel.com>
 <84750f92-40b5-29f7-fe55-148ead0b1811@intel.com>
Date: Tue, 09 May 2023 13:51:51 -0700
Message-ID: <87v8h1rzx4.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683665513; x=1715201513;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KzFAE2O3z9Dhrbq47P8AULsO2wFtlF6DS2H87RrOJ8M=;
 b=XQi/ewFORFJc01YmWJHU+v7F7uj0g/IIfn/5ZwoyaMHWH8rK2gq4xmez
 htbSMLYEGtPonUoZUmLkbqFqzAC5XUFam/5VJSO3XkV2tt7rb4LU2oaWU
 81Y8odWOmy1/GuZ+zoLiv1TRfzlUCGHKmxRcVchObm4XRcc3lVk0pkQ3e
 yMF5aJreXWkJgo8A/BS0ShUhwmDzKUrxn7TcHOo0BvGpw9yTaYqosEeeW
 I+skV9zUqEaCyWZwyA2vQp9Rkp268IOEDRCXzmQ9TSxg8zfVpJKBwwsAr
 Qvmm5iB3qofpQtY9JMeExZs40X/tRtBR5O77ExYMdDScokRKbcCutsw6/
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XQi/ewFO
Subject: Re: [Intel-wired-lan] [PATCH iwl v1 0/5] igc: TX timestamping fixes
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
Cc: kurt@linutronix.de, vladimir.oltean@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Tony,

Tony Nguyen <anthony.l.nguyen@intel.com> writes:

> On 5/8/2023 3:18 PM, Vinicius Costa Gomes wrote:
>> Tony Nguyen <anthony.l.nguyen@intel.com> writes:
>> 
>>> On 5/4/2023 4:52 PM, Vinicius Costa Gomes wrote:
>>>> Hi,
>>>>
>>>> Changes from the "for-next-queue" version:
>>>>    - As this is intended for the iwl/net-queue tree, removed adding
>>>>      support for adding the "extra" tstamp registers;
>>>>    - Added "Fixes:" tags to the appropriate patches (Vladimir Oltean);
>>>
>>> In most cases, net patches should have Fixes: tags to them. Patches 3
>>> and 5 don't have them and it seems like it would be applicable to them.
>>>
>> 
>> Patch 3 is directly related to patch 1, but I think it deserved a
>> separate commit, as it has a bit of refactor. I can squash it into patch
>> 1, if you think it's better I can do that, no worries, I was only afraid
>> to make the patch harder to follow.
>
> I understand the reasoning and makes sense, however, I want to say I 
> recently read on netdev a comment for keeping it in one patch for ease 
> of backport.
>

Makes sense. Will squash it.

>> Patch 5, as a hardware issue workaround, I didn't know if adding a
>> 'Fixes:' tag made sense, but as a way to direct patches to the right
>> stable trees, that would be a good point in favor, even if it's not
>> fixing a bug in the code. Is this what you had in mind? If so, I can do
>> that.
>
> Yea, I think a hint on how far back to backport would be valuable. I 
> believe even though it's a workaround, from user perspective, it would 
> appear as a bug(?)
>

Will add the 'Fixes:' tag.

>>> Patch 4 seems more like an improvement than a bug fix? If so, -next
>>> would seem a better path for that patch. Based on the 'for-next-queue
>>> version' link, there are still some patches remaining that will go
>>> through -next? Perhaps this can go with them.
>>>
>> 
>> On a very loaded system, for example, time synchronization can fail if
>> something blocks the system workqueue from running, so in a sense, that
>> patches fixes/helps some user visible issues. But I can see it both
>> ways, that this is an improvement. What's your preference?
>
> I think I'd rather err on the side of fixing and it's already here :)
>

Understood. Will keep proposing it here for 'iwl-net'.

Will send the v2 soon.


Thank you,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
