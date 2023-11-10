Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC4C7E79FB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Nov 2023 09:10:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DA0D4050C;
	Fri, 10 Nov 2023 08:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DA0D4050C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699603844;
	bh=vpCtbjOQYB7CbGmDZeC8zhL9z85yZ9rjhQgjRnIMeNA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=665Grd6pTT4wZaI4lOuo1aZLt6vFaaMWCCzxwhlG7P369yjjjN56IxcvyH842+LHL
	 XnE8ddUCUeUuoDx5YUEx5NwNl5SG+LNSxnSyxYU52mjFGB93NWIh8QL5tCGDYj1b4P
	 JAJJIcqspv4VOgn/1irm8WfHBSPSfpWuT8baac9CvuKmRvJgOGvtT+zd5qMSk7K6cD
	 tGbvPOVZmTaXWSM8YTCp1x7c81n7kL9FRRQfKRvh7/HEcKOxMXtph7fSrKqQlivVJL
	 M/GQn7fSiQ9b6z1RbVByq7Rmgb5dgQiJflwpuJjKIucdjHjOCx0Rp50Z1Dc6kUwvPQ
	 0Ghf0qkjsgMaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QdwFRJ769NUo; Fri, 10 Nov 2023 08:10:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF2CD40424;
	Fri, 10 Nov 2023 08:10:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF2CD40424
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 883A61BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Nov 2023 08:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5BDD260E22
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Nov 2023 08:10:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BDD260E22
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pK-3C7mMyxAM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Nov 2023 08:10:36 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7905E60E03
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Nov 2023 08:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7905E60E03
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-185-v6VMaS5TP3inGFLqfefYRg-1; Fri, 10 Nov 2023 03:10:33 -0500
X-MC-Unique: v6VMaS5TP3inGFLqfefYRg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 67A0085A5B5;
 Fri, 10 Nov 2023 08:10:33 +0000 (UTC)
Received: from [10.45.225.136] (unknown [10.45.225.136])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E98BFC1290F;
 Fri, 10 Nov 2023 08:10:31 +0000 (UTC)
Message-ID: <ff619fd3-c6df-4ecb-a717-18449620012e@redhat.com>
Date: Fri, 10 Nov 2023 09:10:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20231108151018.72670-1-ivecera@redhat.com>
 <d6114f2b-4ac8-ce15-19f6-483965daf3f3@intel.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <d6114f2b-4ac8-ce15-19f6-483965daf3f3@intel.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1699603835;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4GQjFWahYGq4tfrY4kZ+Y1bC9y7ReN8MIM0FcjIcMww=;
 b=gjFanukJG4ebPRZvoMRFxdupnfTMLG5IsOeoFiw3mgKkffGFYyepRTcbXNJukMFdNQG6/s
 MQ8w2INMXWocbflUFpxY3Hzpmm3G/B1mwY+wfeG919xelGtBMDVMe9p5Xx0Xb6bSNPrRjO
 puW17N0JiEXaEjwA1aA+rsd0y+bSKNk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=gjFanukJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix max frame size check
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 08. 11. 23 21:38, Jesse Brandeburg wrote:
> On 11/8/2023 7:10 AM, Ivan Vecera wrote:
>> Commit 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set") added
>> a check for port's MFS (max frame size) value. The value is stored
>> in PRTGL_SAH register for each physical port. According datasheet this
>> register is defined as:
>>
>> PRTGL_SAH[PRT]: (0x001E2140 + 0x4*PRT, PRT=0...3)
>>
>> where PRT is physical port number.
> 
> <trimmed lkml, and a couple of non-existent intel addresses>
> 
> Was there an actual problem here? I suspect if you read all the
> registers for each PF's BAR, you'll find that all 4 report the same,
> correct value, for the perspective of the BAR they're being read from.
> 
> The i40e hardware does this (somewhat non-obvious) for *lots* of port
> specific registers, and what happens is no matter which of the 4 you
> read the value from, you'll get the right "port specific" value. This is
> because the hardware designers decided to make a different "view" on the
> register set depending on which PF you access it from. The only time
> these offsets matter is when the part is in debug mode or when the
> firmware is reading the internal registers (from the internal firmware
> register space - which has no aliasing) that rely on the correct offset.
> 
> In this case, I think your change won't make any functional difference,
> but I can see why you want to make the change as the code doesn't match
> the datasheet's definition of the register.
> 
> That all said, unless you can prove a problem, I'm relatively sure that
> nothing is wrong here in functionality or code. And if you go this
> route, there might be a lot of other registers to fix that have the same
> aliasing.
> 
> I apologize for the confusing manuals and header file, it's complicated
> but in practice works really well. Effectively you can't read other
> port's registers by accident.
> 
> Here was my experiment showing the aliasing on X722. You'll note that
> the lower 16 bits are a MAC address that doesn't change no matter which
> register you read.
> 
> device 20:0.0
> 0x1e2140 == 0x26008245
> 0x1e2144 == 0x26008245
> 0x1e2148 == 0x26008245
> 0x1e214c == 0x26008245
> device 20:0.1
> 0x1e2140 == 0x26008345
> 0x1e2144 == 0x26008345
> 0x1e2148 == 0x26008345
> 0x1e214c == 0x26008345
> device 20:0.2
> 0x1e2140 == 0x26008445
> 0x1e2144 == 0x26008445
> 0x1e2148 == 0x26008445
> 0x1e214c == 0x26008445
> device 20:0.3
> 0x1e2140 == 0x26008545
> 0x1e2144 == 0x26008545
> 0x1e2148 == 0x26008545
> 0x1e214c == 0x26008545
> 
> lspci -d ::0200
> 20:00.0 Ethernet controller: Intel Corporation Ethernet Connection X722
> for 10GBASE-T (rev 04)
> 20:00.1 Ethernet controller: Intel Corporation Ethernet Connection X722
> for 10GBASE-T (rev 04)
> 20:00.2 Ethernet controller: Intel Corporation Ethernet Connection X722
> for 10GbE SFP+ (rev 04)
> 20:00.3 Ethernet controller: Intel Corporation Ethernet Connection X722
> for 10GbE SFP+ (rev 04)
> 
> Hope this helps!

Hi Jesse,
thanks a lot for the explanation. I found this during preparation of my 
iwl-next stuff and found that variable 'i' is used inappropriately so I 
checked also the datasheet and found the definition of PRTGL_SAH 
register that is defined per port but I didn't know there is such 
aliasing for registers in PF BAR space.
I will send a new patch that at least fix the wrong usage of 'i' variable.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
