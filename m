Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EED4B15177
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jul 2025 18:37:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D35981E02;
	Tue, 29 Jul 2025 16:36:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cyuwuMkIt18h; Tue, 29 Jul 2025 16:36:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F2D581E03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753807018;
	bh=o303TqQc5L2rVYjS38dlYBq8enUZvggK8JI5fHePlJ8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W8qyIIks/1zxwmGuydVggTmDz40GlSvptkufXi1CvpffeueRXXPF++a5FQXx6O3tZ
	 0v5bXKrSqW8FYHaTQz2ajnplhT3KDmQ3n9kF9QZDpHW46+ePpDIH5WUe3md1VH/zAu
	 vTBc0fhLj6fBMiQGKtMU58vnhitFaN9CElFw1pzXgAsHYAy1a2FpVfQxfEnQoWwNIF
	 qYlKHkOed9XU0z7WwHBOoMxf6JIqDVPqIpZhi7DrImLBEr+pv60xUbxFDHisdRuEaJ
	 L/M6HVaNF7/5TjTk+pYrNABVOP1asJMSIc7w32dDa+iIvi+uMQLvfzoHKospdmbrVF
	 wG/jlhrKKVMXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F2D581E03;
	Tue, 29 Jul 2025 16:36:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 14973DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 16:36:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 05AFE4100B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 16:36:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b-KBJJjkeuP1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jul 2025 16:36:56 +0000 (UTC)
X-Greylist: delayed 2139 seconds by postgrey-1.37 at util1-new.osuosl.org;
 Tue, 29 Jul 2025 16:36:55 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0DFA640F06
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DFA640F06
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.179;
 helo=out-179.mta0.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com
 [91.218.175.179])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DFA640F06
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 16:36:55 +0000 (UTC)
Message-ID: <4270ff14-06cd-4a78-afe7-1aa5f254ebb6@linux.dev>
Date: Tue, 29 Jul 2025 17:36:50 +0100
MIME-Version: 1.0
To: Andrew Lunn <andrew@lunn.ch>
Cc: Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
References: <20250729102354.771859-1-vadfed@meta.com>
 <982c780a-1ff1-4d79-9104-c61605c7e802@lunn.ch>
 <1a7f0aa0-47ae-4936-9e55-576cdf71f4cc@linux.dev>
 <9c1c8db9-b283-4097-bb3f-db4a295de2a5@lunn.ch>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <9c1c8db9-b283-4097-bb3f-db4a295de2a5@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1753807012;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o303TqQc5L2rVYjS38dlYBq8enUZvggK8JI5fHePlJ8=;
 b=P6awYfcR4aMNob0r3w1sSfBidQnFh1M1cE0n7rVxx34iBwyxs+rDGu4r0pkv86S65Pk/PJ
 AK33N6+wsbqBwvlUIX3ZpuZPvfz4uAYtE7170lDdUw0+rvVlAhE1yA6ojar9GTaaaVwvQi
 +HhViOT2yNqdrEjPsC6mRX992Wp2l58=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=P6awYfcR
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
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

On 29/07/2025 17:17, Andrew Lunn wrote:
> On Tue, Jul 29, 2025 at 05:01:06PM +0100, Vadim Fedorenko wrote:
>> On 29/07/2025 14:48, Andrew Lunn wrote:
>>>> +        name: fec-hist-bin-low
>>>> +        type: s32
>>>
>>> Signed 32 bit
>>>
>>>> +struct ethtool_fec_hist_range {
>>>> +	s16 low;
>>>
>>> Signed 16 bit.
>>>
>>>> +		if (nla_put_u32(skb, ETHTOOL_A_FEC_STAT_FEC_HIST_BIN_LOW,
>>>> +				ranges[i].low) ||
>>>
>>> Unsigned 32 bit.
>>>
>>> Could we have some consistency with the types.
>>
>> Yeah, it looks a bit messy. AFAIK, any type of integer less than 32 bits
>> will be extended to 32 bits anyway,
> 
> sign extended, not just extended. That makes things more fun.
> 
>> so I believe it's ok to keep smaller
>> memory footprint
> 
>   .../net/ethernet/broadcom/bnxt/bnxt_ethtool.c
>   .../ethernet/fungible/funeth/funeth_ethtool.c
>   .../ethernet/hisilicon/hns3/hns3_ethtool.c
>   drivers/net/ethernet/intel/ice/ice_ethtool.c
>   .../marvell/octeontx2/nic/otx2_ethtool.c
>   .../ethernet/mellanox/mlx5/core/en_ethtool.c
>   drivers/net/ethernet/sfc/ethtool.c
>   drivers/net/ethernet/sfc/siena/ethtool.c
> 
> These are all huge drivers, with extensive memory footprint.  How many
> bins are we talking about? 5? One per PCS? I suspect the size
> difference it deep in the noise.

Well, it's currently up to 18 according to different possible FEC algos,
but I agree, it's not that much.

> 
>> for the histogram definition in the driver but still use
>> s32 as netlink attr type. I'll change the code to use nla_put_s32()
>> to keep sign info.
> 
> So bins can have negative low/high values?

The only one bin will have negative value is the one to signal the end
of the list of the bins, which is not actually put into netlink message.
It actually better to change spec to have unsigned values, I believe.

> 
> 	Andrew

