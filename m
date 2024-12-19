Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A189F7F95
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2024 17:25:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2E8583BC6;
	Thu, 19 Dec 2024 16:25:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lq_aPPYe5CDL; Thu, 19 Dec 2024 16:25:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12BF383BBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734625524;
	bh=TCCotu8UrVZHJEECd2/Ae9IP9booNjuAKP9NllMpbqA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=casYVPFa0y1DqxKptZe33McHoLlZR01zBqbpey8sd1NpANKGgGI9VqAYqQ4mUQ2Ej
	 17hHA8giWQvJOFYYj8UFxoVb4WfTCdAGDTq50usNy2y6D/5P+LKcnP5WUIWRYfhdD2
	 haoJ2ojyrNNjdZ9nnl9qRzyIrz9LIgN8lSIgA+c3c5/jMPkq2dL2iDDmjGFXIne9VE
	 8P1TkHls7aafDWajz4ah4vROtYLpinF4vrBs4s+ZJb0NcZ7UvxQGq1ELfPuj0Xu7pn
	 Zsicd2+2OP2Aea6VdTYSBfiz56vONgVdVyk4z+DH/1eI+hnzNUrn+steJY35wy7QI1
	 6IQuwIOG62NOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12BF383BBE;
	Thu, 19 Dec 2024 16:25:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 32313C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 07:24:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F9AD61395
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 07:24:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VdcX6PcZt9Pw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Dec 2024 07:24:49 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=yong.liang.choong@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E3058608AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3058608AA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E3058608AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 07:24:48 +0000 (UTC)
X-CSE-ConnectionGUID: IEwTuZhrSfKe9z2JQr59pw==
X-CSE-MsgGUID: aDzc5DU3T96adVFNWiTm/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="35120985"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="35120985"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 23:24:46 -0800
X-CSE-ConnectionGUID: XiIO2PtrQJSFbBfzd+zw4Q==
X-CSE-MsgGUID: c207iclTSYiTooKVnU97ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="98013114"
Received: from choongyo-mobl.gar.corp.intel.com (HELO [10.247.82.175])
 ([10.247.82.175])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 23:24:43 -0800
Message-ID: <1bc573ec-1f69-4fc6-9bb4-c0a4c38c10aa@linux.intel.com>
Date: Thu, 19 Dec 2024 15:24:40 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Furong Xu <0x1207@gmail.com>, Vladimir Oltean <olteanv@gmail.com>
Cc: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
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
 <20241217002254.lyakuia32jbnva46@skbuf> <20241217200952.000059f2@gmail.com>
Content-Language: en-US
From: Choong Yong Liang <yong.liang.choong@linux.intel.com>
In-Reply-To: <20241217200952.000059f2@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 19 Dec 2024 16:25:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734593087; x=1766129087;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=oZqFuW7QFS4Vc/TSp3AxQi8Ft5gm5pNg6tJATdW+lY0=;
 b=IgTK/ZXqwLmzHFjyZeJciYszJLMkacb69QA4oAAf8m8gRa/JYKPyZWq5
 i5tgKgelct9jIFWUvgVUZCFk3XToBBNLaJTyiNdYgRBu4rQysh39e7x1X
 zZd27+Evm78M3vhFqq5D8L3/Ad/8xByhifOZwgnIRoIOJNzGNKf+/Cpla
 lzLL0NObvClR3F8d3mI2y+Qbllhpsvf83kBcMITlCqqJTX1Y10qHGdVo0
 AK6+soIj+SOkT119JdySdaTwITgPIEq2+YbUnbtzh2ppcoLAi0sdN3pdX
 AsBi4Ecu04nng32eKQ2o+0n0y4NgvR+kDEzOOP/mQHU90DrUg14DM/wIy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IgTK/ZXq
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



On 17/12/2024 8:09 pm, Furong Xu wrote:
> On Tue, 17 Dec 2024 02:22:54 +0200, Vladimir Oltean <olteanv@gmail.com> wrote:
> 
>> Anyway, while browsing through this software implementation of a
>> verification process, I cannot help but think we'd be making a huge
>> mistake to allow each driver to reimplement it on its own. We just
>> recently got stmmac to do something fairly clean, with the help and
>> great perseverence of Furong Xu (now copied).
>>
>> I spent a bit of time extracting stmmac's core logic and putting it in
>> ethtool. If Furong had such good will so as to regression-test the
>> attached patch, do you think you could use this as a starting place
>> instead, and implement some ops and call some library methods, instead
>> of writing the entire logic yourself?
>>
> 
> I am quiet busy these days, especially near the end of the year :)
> 
> Maybe I can help testing the attached patch when the next time net-next opens.
> 
> Thanks.
> 

I'm a colleague of Faizal and I'd be happy to help out with testing the 
patch. I'll take care of testing it on the stmmac side and will sort out 
any issues that come up. If there are any necessary fixes or improvements, 
I'll handle those and provide feedback accordingly.
