Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5096FBAF6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 May 2023 00:19:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B09F982304;
	Mon,  8 May 2023 22:18:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B09F982304
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683584338;
	bh=73D8PL4DsJIkNZZPjfmOHUBzuqyfo6RVgB/hjrqgOmA=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uCqB7o08ga3O5lWJfHopTZP35T9uqG8eAqBWHTZzja0wtn1R72eb29cjbVH4Bn37z
	 /UJWKER0126CFLlv8eV1/YaCvYYY2Zd74AkIjn3JpaPPpi5FhnLWrd/7b1VAADBKFE
	 jVwalAE8MgGleNleBJ7zM5KGu5BTPlPQzClEhj0qml6swLPob0p0wjZltLad/DIWN4
	 jeLSi6fr7JWdpZtF4FOpxH+JlXv2F6OZMh9JmNiwew5nCnomxUlBhE6aLOyt5AcX2r
	 mpjSM5n/qehGLHwcX7ADO5aM12F7pY/GB2kIxSg+FpJStCpgfqqLFVqZLqdmamkNJc
	 uOdLV6jPryOsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wOYUxTDds7qd; Mon,  8 May 2023 22:18:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7415782191;
	Mon,  8 May 2023 22:18:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7415782191
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29CA61BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 22:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F410A4185D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 22:18:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F410A4185D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZfKrcvZHtWU4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 May 2023 22:18:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7421C417AF
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7421C417AF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 22:18:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="338992811"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="338992811"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 15:18:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="768223338"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="768223338"
Received: from vcostago-mobl3.jf.intel.com (HELO vcostago-mobl3)
 ([10.24.14.106])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 15:18:48 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
In-Reply-To: <970e057f-eed9-69ae-b321-ff78049e33ac@intel.com>
References: <20230504235233.1850428-1-vinicius.gomes@intel.com>
 <970e057f-eed9-69ae-b321-ff78049e33ac@intel.com>
Date: Mon, 08 May 2023 15:18:48 -0700
Message-ID: <87y1lytqk7.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683584330; x=1715120330;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4mDmJYTj89fro2FBVJrLtZ4oIJlAodgterU1JbMAZsk=;
 b=RB3sn5Mu23Fn2JBND7/mSUA14zSwDMMy9Xi6PeQHe7SIGTtYsooxG3PW
 q/TR7CGl/XwoUug98dJYXYzBUagVf/KM9lS81dbjPUTDaHDIggK53IeYZ
 WmXtZlEW8yC4Y0P3Wm0wxvJJkkNbOBw7MHVeotJN8IQkHXPLBavdvIt0Z
 cVTPAwCul0j+bJVvLMwYD++uTUmT0IF+t3Odu0jc/Z6CAFcxT6lhcGqKZ
 XRSsW7x1h0OrsJroZNSmVHG3SWXkaKbs4cc7cxefGmviclpN1IXwMo2UN
 gNxtweYplI07eBfMljq8ChUFxJHRQ5tw9SDm2ugwBRMRIkIc3QWZlU/0H
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RB3sn5Mu
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

Tony Nguyen <anthony.l.nguyen@intel.com> writes:

> On 5/4/2023 4:52 PM, Vinicius Costa Gomes wrote:
>> Hi,
>> 
>> Changes from the "for-next-queue" version:
>>   - As this is intended for the iwl/net-queue tree, removed adding
>>     support for adding the "extra" tstamp registers;
>>   - Added "Fixes:" tags to the appropriate patches (Vladimir Oltean);
>
> In most cases, net patches should have Fixes: tags to them. Patches 3 
> and 5 don't have them and it seems like it would be applicable to them.
>

Patch 3 is directly related to patch 1, but I think it deserved a
separate commit, as it has a bit of refactor. I can squash it into patch
1, if you think it's better I can do that, no worries, I was only afraid
to make the patch harder to follow.

Patch 5, as a hardware issue workaround, I didn't know if adding a
'Fixes:' tag made sense, but as a way to direct patches to the right
stable trees, that would be a good point in favor, even if it's not
fixing a bug in the code. Is this what you had in mind? If so, I can do
that.

> Patch 4 seems more like an improvement than a bug fix? If so, -next 
> would seem a better path for that patch. Based on the 'for-next-queue 
> version' link, there are still some patches remaining that will go 
> through -next? Perhaps this can go with them.
>

On a very loaded system, for example, time synchronization can fail if
something blocks the system workqueue from running, so in a sense, that
patches fixes/helps some user visible issues. But I can see it both
ways, that this is an improvement. What's your preference?

>>   - Improved the check to catch the case that the skb has the
>>     SKBTX_HW_TSTAMP flag, but TX timestamping is not enabled (Vladimir
>>     Oltean);
>>   - Ony check for timestamping timeouts if TX timestamping is enabled
>>     (Vladimir Oltean);
>> 
>> for-next-queue version link:
>> https://lore.kernel.org/intel-wired-lan/20230228054534.1093483-1-vinicius.gomes@intel.com/
>
> ...
>
>> BTW: I hope this is the correct usage of the "iwl" subject prefix.
>
> If you could also add -net|-next for the (eventual) target tree
> i.e.
>      net : iwl-net
>      net-next : iwl-next
>
> in this case 'iwl-net'

Yeah, I sent this patch a couple minutes before seeing the email about
the subject prefix conventions. Will use the correct one next time.

>
> Thanks,
> Tony

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
