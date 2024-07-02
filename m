Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB68291ECF8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 04:29:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B115607EE;
	Tue,  2 Jul 2024 02:29:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sLFX6lnXfiJX; Tue,  2 Jul 2024 02:29:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E0C4608F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719887345;
	bh=cPqyQOulQoLvd5lZzOauTTpgSepxyTOZVA9aygxTPqM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HBhv0LSCMv/g/x0+6HIaUcA6kUnYtMyO4CvNmBGNcZWmXXAkHSPd/rQmgAzp48UtX
	 Z9F5srMVyj1Qe1+35Y5h0yLBbpr6JKnCfJurJ5YZaCirWJInzm4cumtE6BOfjFutBK
	 A6JJ79kUswWYPJN40zXkNdb5uDt8zr2Io5uez+SQWQeMTj9lmC24wFhpKmN/Q1cuZj
	 BN32g+zdfD3hNr6JzArqC8vfrR7gJYG/euUDHgmlx4wcljI60xPgS1TV6xWlbziojQ
	 djHGREs0Cg+PNq/JpMpp4+XeCqdSlruXtnvCqdGYuzftPVTIzJNFLFsonO18tqu7EF
	 oC0vEkp4JrYyQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E0C4608F6;
	Tue,  2 Jul 2024 02:29:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2328F1BF326
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 02:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F19040659
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 02:29:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7X4X3lYSelvf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 02:29:02 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BCE00405B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCE00405B6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BCE00405B6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 02:29:00 +0000 (UTC)
X-CSE-ConnectionGUID: 4gF96KfnR/iiICYXCE2mrQ==
X-CSE-MsgGUID: gzSxkoRgSS2lwwvHNqrcMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="16882755"
X-IronPort-AV: E=Sophos;i="6.09,177,1716274800"; d="scan'208";a="16882755"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 19:28:59 -0700
X-CSE-ConnectionGUID: ttmgwcqDTPyxr2a52EQCRw==
X-CSE-MsgGUID: /5JFrGbGTzOTE/cOJp2txg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,177,1716274800"; d="scan'208";a="68946742"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.38.161])
 ([10.247.38.161])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 19:28:58 -0700
Message-ID: <26d42742-d9bd-4817-8a08-94b12598fe4c@linux.intel.com>
Date: Tue, 2 Jul 2024 10:28:54 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240701100058.3301229-1-faizal.abdul.rahim@linux.intel.com>
 <e981261e-77be-407b-b601-f7214a4f57dd@molgen.mpg.de>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <e981261e-77be-407b-b601-f7214a4f57dd@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719887341; x=1751423341;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=j8d61EAjQsOLrMk5eu64iDHSBTUZUUS3SPJgXhshpLI=;
 b=FcVcVpGxAfDZHbE/sO+zlctTnL8qDe6FuWLNTKk6Vzdv4egND4CiQRAM
 bN2U1zYUo3N6FAk6LK7K2uwTkBR7RcUy4TMf0knC92x7EtiNi2X18hH2x
 /CvQJ0pW7AUBsu4RURsjuGgXM5DnXTTw8NACOKz5w4VS+q4BgTCruD+H8
 RTCeH8vDVrAQ8vpfIUiqkF8OWw0935kbYHlki6QSSHQ85YxWvmRW8zpat
 QhoqoGZ69lLmCtVL5yMzotFPe7EgduwBdKEQpyjMT/b9necGlgk7JwF2S
 esfyY9Vuq/EQfZC9XDOkQWhYWy+Fynt8BBFpKqUJRLqGdEcqwm5C7MOq4
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FcVcVpGx
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Fix packet still
 tx after gate close by reducing i226 MAC retry buffer
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/7/2024 8:42 pm, Paul Menzel wrote:
> Dear Faizal,
> 
> 
> Thank you for your patch.
> 
>> This follows guidelines from:
>>
>> a) Ethernet Controller I225/I22 Spec Update Rev 2.1 Errata Item 9:
>>     TSN: Packet Transmission Might Cross Qbv Window
>> b) I225/6 SW User Manual Rev 1.2.4: Section 8.11.5 Retry Buffer Control
>>
>> Test Steps:
>> 1. Send taprio cmd to board A
>> tc qdisc replace dev enp1s0 parent root handle 100 taprio \
>> num_tc 4 \
>> map 3 2 1 0 3 3 3 3 3 3 3 3 3 3 3 3 \
>> queues 1@0 1@1 1@2 1@3 \
>> base-time 0 \
>> sched-entry S 0x07 500000 \
>> sched-entry S 0x0f 500000 \
>> flags 0x2 \
>> txtime-delay 0
>>
>> - Note that for TC3, gate opens for 500us and close for another 500us
>>
>> 3. Take tcpdump log on Board B
>>
>> 4. Send udp packets via UDP tai app from Board A to Board B
>>
>> 5. Analyze tcpdump log via wireshark log on Board B
>> - Observed that the total time from the first to the last packet
>> received during one cycle for TC3 does not exceed 500us
> 
> Indent the list item by four spaces? (Also above?)


Hi Paul,

Would like to confirm, the indent suggestion from you is referring to which 
style ?

(a)
1.  Send taprio ...
     tc qdisc  ..
     map 3 4 ..
     queue 1@0 ....

(b)
1. Send taprio ...
     tc qdisc  ..
     map 3 4 ..
     queue 1@0 ....

(c)
     1. Send taprio ...
        tc qdisc  ..
        map 3 4 ..
        queue 1@0 ....

I think it's (a), but afraid if misunderstood the suggestion.
Thank you !

Regards,
Faizal
