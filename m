Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D7A7790B0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 15:23:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90DF940898;
	Fri, 11 Aug 2023 13:23:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90DF940898
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691760207;
	bh=C6uPxoS10dN5WEjixuXyaVwNxNYdxhIyPuGEoUqWZ2s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j5muudqjN/Zx8oMVtFtqOd1NhkOyVzyAqqQUqA/SKc1fu5RQZ1FDMLZ7la4L/NDno
	 SOOFsL91sQ1JuZdOGIX3uwYRvYsTbtchR/tll8PpC9EvyMPGczsS8ADoypPFotMWWJ
	 AA+03ghxfB4QaTURYLjAkev/flpJTgOD8PqNk+LQGCAa2B5FAURxbKg/MEKmUmXRP7
	 gUcsUWU3HPLvm5RaiuysfsQbzNYXhBeP9J62dL5SlSPKbnYYcEwudHiNBuZhH/qdhh
	 Tsk7QhLYz4hvt5Q00TSOPPjMQ8ETXhcLbzh2FMo0aVMtFkFwzeN9jENDIf/P0D43ur
	 3JldZDevVUTlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3jeEUDuib45p; Fri, 11 Aug 2023 13:23:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A5744088F;
	Fri, 11 Aug 2023 13:23:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A5744088F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA4B01BF473
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 13:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB32683260
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 13:23:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB32683260
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bN2_ByRdTBcy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 13:23:19 +0000 (UTC)
Received: from out-100.mta1.migadu.com (out-100.mta1.migadu.com
 [IPv6:2001:41d0:203:375::64])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F550831F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 13:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F550831F1
Message-ID: <271b76c6-a52a-0c8b-5560-8a72c4340faf@linux.dev>
Date: Fri, 11 Aug 2023 14:23:08 +0100
MIME-Version: 1.0
Content-Language: en-US
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
References: <20230809214027.556192-1-vadim.fedorenko@linux.dev>
 <20230809214027.556192-7-vadim.fedorenko@linux.dev>
 <20230810192102.2932d58f@kernel.org>
 <8d52ab61-e532-0ef8-4227-ea1ab469f4cb@linux.dev>
 <DM6PR11MB46578D7F73BDA4D6EE7E0E239B10A@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <DM6PR11MB46578D7F73BDA4D6EE7E0E239B10A@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1691760195;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SkZWE4XFj7n8PtSuWO95wRoJ9c9BRctbYRXHgzE+874=;
 b=q9k1tHJR1cMhrkd4lyzS4+BSxbHSM490dxoSUrrR8QHrxenoc5OqPCuV0LHLB4XLaiM0Dw
 N8ObBd2AOuHAaL+3bIkd10FDI6YsmHru3PRZOeZh6EbkHFkL+Pd8RPXucsT1d+yT5pTWU/
 n+upeYSRMSeTp3dB4DCewzo6X1LIJiE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=q9k1tHJR
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 6/9] ice: add admin
 commands to access cgu configuration
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
Cc: Jiri Pirko <jiri@resnulli.us>, Bart Van Assche <bvanassche@acm.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Olech,
 Milena" <milena.olech@intel.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/08/2023 13:16, Kubalewski, Arkadiusz wrote:
>> From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>> Sent: Friday, August 11, 2023 11:31 AM
>>
>> On 11/08/2023 03:21, Jakub Kicinski wrote:
>>> On Wed,  9 Aug 2023 22:40:24 +0100 Vadim Fedorenko wrote:
>>>> From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>>
>>>> Add firmware admin command to access clock generation unit
>>>> configuration, it is required to enable Extended PTP and SyncE features
>>>> in the driver.
>>>> Add definitions of possible hardware variations of input and output pins
>>>> related to clock generation unit and functions to access the data.
>>>
>>> Doesn't build, but hold off a little with reposting, please hopefully
>>> I'll have more time tomorrow to review.
>>
>> Yeah, we've found the issue already and Arkadiusz has prepared a patch
>> to fix it. I can do the repost once you are ok to review.
> 
> Thanks Vadim,
> 
> Just realized you have already replied on this..
> Ok, so I guess v4 after all.
> 
> Thank you!
> Arkadiusz


Yeah, it will be v4 anyway
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
