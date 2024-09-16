Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEDC97A5CB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Sep 2024 18:15:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB20D60A8E;
	Mon, 16 Sep 2024 16:15:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kCoH3z3NhQ6T; Mon, 16 Sep 2024 16:15:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9105A60A83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726503328;
	bh=aK8+yZEBww0j2B7ZhIK8vvbZcwTiwxTtrXRXK6/iJXo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3JsLF+9kNRe+rv3YDZFB2/uChoc+UUGseFrMqVQhgVQ0yW8uRrayVENG/kMkDEgrk
	 PlBmv6PbJd79txBZw+VXLkDJJSrkTxyglsBKkoULQRVuiqyyCmAy+KsHYO7UZfR1Md
	 CpppjEQP3+sfiTdvILgJ3awg/Ozb83JE+xRi8GdZpNMOwWtpeyY0Tq/sSaEmWvX143
	 PdZwvILAtK1PJfwcjgIW97viZ+5Hf4FKw4XTY0/b2YZ+pxGHhrtJ1Llhar5+D+/Rd6
	 BrZSvrPkbIvakPpLbQCp8HDIYN+yfRfMcfKY3tWoSGykH2stZAmliMm2gXDMTwhU7r
	 ppmbDGsv411IQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9105A60A83;
	Mon, 16 Sep 2024 16:15:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45F8D1BF410
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 16:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3FE01406EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 16:15:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dxsiUwunQPgu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Sep 2024 16:15:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.154.184;
 helo=dispatch1-us1.ppe-hosted.com; envelope-from=greearb@candelatech.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 229F7406DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 229F7406DE
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [67.231.154.184])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 229F7406DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 16:15:25 +0000 (UTC)
Received: from dispatch1-us1.ppe-hosted.com (ip6-localhost [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 AF0F6504A88
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 16:15:24 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mail3.candelatech.com (mail.candelatech.com [208.74.158.173])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id A8AE73C006A; 
 Mon, 16 Sep 2024 16:15:20 +0000 (UTC)
Received: from [192.168.1.23] (unknown [98.97.35.129])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 96CC213C2B0;
 Mon, 16 Sep 2024 09:15:17 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 96CC213C2B0
Message-ID: <66479f9e-fd0b-41d0-b7b8-07a336c3341b@candelatech.com>
Date: Mon, 16 Sep 2024 09:15:17 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <9ac75ea7-84de-477c-b586-5115ce844dc7@candelatech.com>
 <b833aea6-b499-4b9c-90fe-aab31510544d@intel.com>
 <3547078e-acdf-4189-9a1d-98f581896706@intel.com>
Content-Language: en-MW
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
In-Reply-To: <3547078e-acdf-4189-9a1d-98f581896706@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-MDID: 1726503321-V6bNT80edoyE
X-MDID-O: us5; at1; 1726503321; V6bNT80edoyE; <greearb@candelatech.com>;
 8dc78dbb4e7cf902f842fac31f92f42e
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=candelatech.com; s=default; t=1726503317;
 bh=1pMBZe3CZS7KCVlHuAKU0Q0Vubg12C2rCijxOKy/0tA=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=QKsIEDMr7J/Hj/q126qbAO5c4q9Q4S/LCGsUCRjUV8zK2X0e/vuCpmdhOHj3kYt/5
 q87fVuyCSxmIJPYe4l5UjGz4RHYxA3QMTtl5b16tHW0v+GygbVhvGzSbnEJjnq71EX
 kPTZkGftIxcNwJOdWrO+APArk7o1s8YCXrWmsPCM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=candelatech.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=candelatech.com header.i=@candelatech.com
 header.a=rsa-sha256 header.s=default header.b=QKsIEDMr
Subject: Re: [Intel-wired-lan] tcp_ack __list_del crash in 6.10.3+ hacks
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 netdev <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jan Glaza <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/16/24 04:09, Przemek Kitszel wrote:
> On 9/16/24 12:32, Przemek Kitszel wrote:
>> On 9/14/24 07:27, Ben Greear wrote:
>>> Hello,
>>>
>>> We found this during a long duration network test where we are using
>>> lots of wifi network devices in a single system, talking with
>>
>> It will be really hard to repro for us. Still would like to help.

We also have trouble reproducing this.  Thanks for suggestions on
debugging tips below...we'll try to get some better debugging
to share (on stock kernels).

>>
>>> an intel 10g
>>
>> It's more likely to get Intel's help if you mail (also) to our IWL list
>> (CCed, +Aleksandr for ixgbe expertise).
>>
>>
>>> NIC in the same system (using vrfs and such).  The system ran around
>>> 7 hours before it crashed.  Seems to be a null pointer in a list, but
>>> I'm not having great luck understanding where exactly in the large tcp_ack
>>> method this is happening.  Any suggestions for how to get more relevant
>>> info out of gdb?
> 
> I would also enable kmemleak, lockdep, ubsan to get some easy helpers.
> 
>>>
>>> BUG: kernel NULL pointer dereference, address: 0000000000000008^M
>>> #PF: supervisor write access in kernel mode^M
> 
> could you share your virtualization config?

We are using vrf for each of the network devices.  We're using mac-vlans
and 12 intel ax210 as well, though I need to verify the netdevs to make sure I'm
not confusing it with a second mostly unrelated problem we are tracking.

>>> #PF: error_code(0x0002) - not-present page^M
>>> PGD 115855067 P4D 115855067 PUD 283ed3067 PMD 0 ^M
>>> Oops: Oops: 0002 [#1] PREEMPT SMP^M
>>> CPU: 6 PID: 115673 Comm: btserver Tainted: G           O       6.10.3+ 
> 
> so, what hacks do you have? those are to aid debugging or to enable some
> of the wifi devices?

Great piles of wifi related hacks mostly.

> I don't have any insightful comment unfortunately, sorry.

We are able to reproduce on upstream 6.11.0 as well.  Or, we reproduced a soft-lockup
at least.  We are trying again now with lockdep and list debugging and some other
debugging enabled.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

