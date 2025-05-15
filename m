Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 415E5AB8461
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 12:53:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC3E041516;
	Thu, 15 May 2025 10:52:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S_yY2XPcaKRV; Thu, 15 May 2025 10:52:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CAEF40CF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747306379;
	bh=RghYQjQEpBN55gJjX50MHE7tfMz1PujuHhKbS9q6ixo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zzfcb5HH0L+DLzHAGPYbCfiJOjc+nJFYtzhP2Dv4vkIwTi2MnZbCmTayevWfX+raQ
	 ooVFYGjeG71iUrkhmmqHmBc6jjgZKhPrSkinf/zotyEzH4Vo7jGY9kIv7F/rJSFlQ3
	 gp5MJ5H3jEkORMy6q4LUdpux6Vi4nUlCFjX7Y14KBk4YqpjEWtMiL9EaDns/GN8KL3
	 9q3u4UwnsYC5ySG9b04A6K/0rcK8k/zJbfVgvy8vOzF3DF9/cqreijVS/qP7FQX3bc
	 w32loX8l+oDK11SEm1s5HIHFVQ9UmJRfl66rgj4v9LGEJFhTdpQn4Udplmzv0RD+Gl
	 IMOKZSvPJYUOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CAEF40CF2;
	Thu, 15 May 2025 10:52:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B856513D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 10:52:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A992B6071F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 10:52:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5-bFLV2ni3_v for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 10:52:57 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1AD116068A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AD116068A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AD116068A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 10:52:56 +0000 (UTC)
X-CSE-ConnectionGUID: mGcr2rmjQ+aN+rqJM/1V5Q==
X-CSE-MsgGUID: I1clZq6xSVWPCaPvbI3QYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="66641230"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="66641230"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 03:52:57 -0700
X-CSE-ConnectionGUID: vXcliIivSTyFGvZjGVwE8A==
X-CSE-MsgGUID: roBxfZv1TSCgUz6qCwmjGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="139234033"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.245.119.244])
 ([10.245.119.244])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 03:52:55 -0700
Message-ID: <c13179c7-74e2-4843-a052-571f6f0c033d@linux.intel.com>
Date: Thu, 15 May 2025 12:52:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250409113622.161379-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250409113622.161379-4-martyna.szapar-mudlaw@linux.intel.com>
 <55ae83fc-8333-4a04-9320-053af1fd6f46@molgen.mpg.de>
 <4012b88a-091d-4f81-92ab-ad32727914ff@linux.intel.com>
 <355fc4f1-0116-4028-a455-ec76772f19b3@molgen.mpg.de>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <355fc4f1-0116-4028-a455-ec76772f19b3@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747306378; x=1778842378;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ovFJnUrpIEp4+ba9a6q5iRMCX72A5K+Jk4wxyKuysrw=;
 b=VxeJelswaxEVZ9QUbzOMvCrE3FIV29/SS/5fUpWnuX0BC920lk8tjlK5
 HVtBPvlfSe5ubpwbgZfkyR5q9oFf92D6Fit5qGALR0Y8+76pG8spJfgwj
 cALel6FGu8UAl/DKu4kBVy09z5Ri7y0I2JG8XXWh0shPEBqTpratvyDEp
 MkzrTF1nnRWTgVtDnDnCY/dVW6HKvGuGbMv4cNgKIHWJbFsh4symU8ym4
 f3Xz75szHWJn6Mh0U6R2ooDvQOHHRxv6Stz22Ta1qGMVA6byxp1Pssckz
 D6ajyud7GJLnIJnheI7fn3FDyK4zflvWgIRzHnjON1ax9C7ecBi4cs+xC
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VxeJelsw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: add
 link_down_events statistic
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/12/2025 11:27 AM, Paul Menzel wrote:
> Dear Martyna,
> 
> 
> Thank you for your reply.
> 
> Am 14.04.25 um 15:12 schrieb Szapar-Mudlaw, Martyna:
> 
>> On 4/9/2025 2:08 PM, Paul Menzel wrote:
> 
>>> Am 09.04.25 um 13:36 schrieb Martyna Szapar-Mudlaw:
>>>> Introduce a new ethtool statistic to ice driver, `link_down_events`,
>>>> to track the number of times the link transitions from up to down.
>>>> This counter can help diagnose issues related to link stability,
>>>> such as port flapping or unexpected link drops.
>>>>
>>>> The counter increments when a link-down event occurs and is exposed
>>>> via ethtool stats as `link_down_events.nic`.
>>>
>>> It’d be great if you pasted an example output.
>>
>> In v2 (which I just submitted) the generic ethtool statistic is used 
>> for this, instead of driver specific, so I guess no need to paste the 
>> example output now.
> 
> I think it’s always good also as a reference how to test the patch. I 
> just saw your v3. Should you resent, it’d be great if you added the 
> example output.
> 
> […]

Done in v4 updated cover letter.

> 
> 
> Kind regards,
> 
> Paul

