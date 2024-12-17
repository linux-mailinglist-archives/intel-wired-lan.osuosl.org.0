Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACB49F47E8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2024 10:47:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7BA6842F6;
	Tue, 17 Dec 2024 09:47:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B4q-vhXq3Pwq; Tue, 17 Dec 2024 09:47:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2831384346
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734428833;
	bh=kihn5j8Pn5Yddz91ugOFiT4etnkin0yl5a3l9M7qdqs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=67exOm2pAgUKQ72Ol7q5sP9ly+J+YPIsRuiOHCqWMJJuCfxNFeRs3fcQlygtDs3HP
	 XBwY2n+u2pe0lDAt0a1WuxwJUH71OgododXUrzvCos1ydJuoXRvOmx8m6SZBUzRGt8
	 M9oeLdELRDqgBTm2rlxPkFc9sivwAyxAwLk4t83dplJHoAGwwt2OfLcgmvojOnXvkA
	 jQcArE4NwIdTAikwZXVR4/aBcd2Ybz1E0db08WR3rcuz4VK8Ksj+lXtvieVyXuFDm2
	 DNzcXL87u5xfvJhJ3tm9P4LwHH4AGi5qVgdK6u/cGoDlha3CZ2t9EQ/Fu7aOunGfLL
	 8jN1ls23cnYEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2831384346;
	Tue, 17 Dec 2024 09:47:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B92A1E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 09:47:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87EB3841C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 09:47:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jmjrbec_6ULV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2024 09:47:10 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9B770841A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B770841A2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B770841A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 09:47:10 +0000 (UTC)
X-CSE-ConnectionGUID: BEMiVLvwTi+G53C5QUJlxg==
X-CSE-MsgGUID: waMDmyUpQR6PQG+UsBRT1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45330402"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45330402"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:47:09 -0800
X-CSE-ConnectionGUID: N/aRvvV8QYSYTW7GPDUFBw==
X-CSE-MsgGUID: bqCuAgKgSsuB/qEfCPga1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102084252"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.127.121])
 ([10.247.127.121])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:47:06 -0800
Message-ID: <8f8d6149-d6a6-4fec-bb4d-fa0eb3613cd8@linux.intel.com>
Date: Tue, 17 Dec 2024 17:47:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <olteanv@gmail.com>, Furong Xu <0x1207@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-7-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-7-faizal.abdul.rahim@linux.intel.com>
 <20241217002254.lyakuia32jbnva46@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20241217002254.lyakuia32jbnva46@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734428830; x=1765964830;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=TywHOsLe9J4L4PuYcOrxBq9KYHTRDSQRWvdeuyZVVaY=;
 b=NQ/A7NuzbLBYwJKXqsIGL7mPTdL2WZzPbSJMRewSrSvbLCQHoGe3ngjh
 e2TLzNvt4pqQMgfaJl6O/bAgXw2kzL9Hkw2SxeX+Co6Q31dM6K0BNgyEB
 5bZta5lB0yAMtGvWwBBAIfXtQsYtmnwoS7l0PS38OzWhHD3SShc79xEAD
 aHfhc80lm9FIZiagOvZfSv0wrgD3zUPOlYBzrX87Ri3HbMyxWMCQn6vr4
 T0B75dKa8P59TVKsVw1vHmtZ+ezM3fQmYKxo2GlA53VVZed/Kk5I94gov
 7gDnTa2Y+O+7oilBWVHCcWZup9euk4CgLRDL5fo1BcI7+OBG5WSAR3bkb
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NQ/A7Nuz
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/9] igc: Add support for
 frame preemption verification
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



On 17/12/2024 8:22 am, Vladimir Oltean wrote:
> On Mon, Dec 16, 2024 at 01:47:17AM -0500, Faizal Rahim wrote:
>> The i226 hardware doesn't implement the process of verification
>> internally, this is left to the driver.
>>
>> Add a simple implementation of the state machine defined in IEEE
>> 802.3-2018, Section 99.4.7. The state machine is started manually by
>> user after "verify-enabled" command is enabled.
>>
>> Implementation includes:
>> 1. Send and receive verify frame
>> 2. Verification state handling
>> 3. Send and receive response frame
>>
>> Tested by triggering verification handshake:
>> $ sudo ethtool --set-mm enp1s0 pmac-enabled on
>> $ sudo ethtool --set-mm enp1s0 tx-enabled on
>> $ sudo ethtool --set-mm enp1s0 verify-enabled on
>>
>> Note that Ethtool API requires enabling "pmac-enabled on" and
>> "tx-enabled on" before "verify-enabled on" can be issued.
>>
>> After the upcoming patch ("igc: Add support to get MAC Merge data via
>> ethtool") is implemented, verification status can be checked using:
>> $ ethtool --show-mm enp1s0
>>    MAC Merge layer state for enp1s0:
>>    pMAC enabled: on
>>    TX enabled: on
>>    TX active: on
>>    TX minimum fragment size: 252
>>    RX minimum fragment size: 252
>>    Verify enabled: on
>>    Verify time: 128
>>    Max verify time: 128
>>    Verification status: SUCCEEDED
>>
>> Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>> ---
> 
> Am I missing something, or this does not handle link state changes,
> where the verification should restart on each link up? (maybe the old
> link partner didn't support FPE and the new one does, or vice versa)
> 
> Either I don't follow the link between igc_watchdog_task() and any
> verification related task, or it doesn't exist.

The latter. I missed this "link state changes" interaction, will rework, 
thanks.

> Anyway, while browsing through this software implementation of a
> verification process, I cannot help but think we'd be making a huge
> mistake to allow each driver to reimplement it on its own. We just
> recently got stmmac to do something fairly clean, with the help and
> great perseverence of Furong Xu (now copied).
> 
> I spent a bit of time extracting stmmac's core logic and putting it in
> ethtool. If Furong had such good will so as to regression-test the
> attached patch, do you think you could use this as a starting place
> instead, and implement some ops and call some library methods, instead
> of writing the entire logic yourself?

Totally agree with moving it to a layer reusable by any driver. Thank you 
so much for the skeleton patch implementing it in ethtool — I’ll expand on 
it from here.


