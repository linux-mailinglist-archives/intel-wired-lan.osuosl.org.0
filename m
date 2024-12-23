Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 687F39FACDB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Dec 2024 10:52:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1398781CE7;
	Mon, 23 Dec 2024 09:52:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b7C1Nv6tU0RK; Mon, 23 Dec 2024 09:52:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8E8F80E01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734947569;
	bh=hJfW2j+T4PI8RJnS9qYJN/vDoCDSO6EkCG1ODDSdkXE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dyqBwL0H7lWrpFr1u4sUqkTifvhZvPFZnkTy65DQJKuLPIutPVV4G+9m2RuqHjAmu
	 rH9JA408xZzlxmCPcU8f7F+dEktAmF7q+2Le09DGJw9YDRSBhxcJajaJwvdp3olD7k
	 Id97y3wBxqPLEe5Z9Z2lVMh2T0wsS20+94KqOuhikExkbdV7rkztQd/UNbLFPfmsIS
	 eojcuKvCKzP1RljA9DRQrKa4MwoNzxR+rs9tJQQI/12UA/PvTSdmsuZKWeA9NvuGGq
	 387J+xId8VrdFsxnL9L7+FCJDPO3n051vBri0Y6N98EYa7Fu4lmZDK7GqDzGeKyUKG
	 sKz6N/jUMomlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8E8F80E01;
	Mon, 23 Dec 2024 09:52:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 332DCD8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 09:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1404D41449
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 09:52:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id of8GPzW6Bo-x for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Dec 2024 09:52:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DC2ED4140D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC2ED4140D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC2ED4140D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 09:52:44 +0000 (UTC)
X-CSE-ConnectionGUID: VxFhv2LSQFGhS6F7CA2XnA==
X-CSE-MsgGUID: DOjQetsBSqWqA2qfSSLTbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11294"; a="35305433"
X-IronPort-AV: E=Sophos;i="6.12,256,1728975600"; d="scan'208";a="35305433"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 01:52:44 -0800
X-CSE-ConnectionGUID: DHhMlnesSSGucxM7jXt3PQ==
X-CSE-MsgGUID: L/IlE5k/QWCySVIiYCfi4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="104229726"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.22.166])
 ([10.247.22.166])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 01:52:40 -0800
Message-ID: <57139951-daf7-42c3-b7a6-e4870a3f71fa@linux.intel.com>
Date: Mon, 23 Dec 2024 17:52:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <olteanv@gmail.com>
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
 <20241216064720.931522-10-faizal.abdul.rahim@linux.intel.com>
 <20241216160513.24i4ehroff47iwzi@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20241216160513.24i4ehroff47iwzi@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734947565; x=1766483565;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=CYXT0R2h9iFmaHMvl1O1YlhVhXTSLB8bpr75ea7+Vqc=;
 b=j4/eE3cQKnuNuwAm5CAMJAno7H7VpysJVp2Z1Cu6p+gRVNnxlPSJxT/l
 hSQ7tHJ4znbNSUdMt1ZlK2H/5Urpup97WeSdsqXngte7iQn5SnUlMYPX9
 ziivp8P4SInsHbK2zyBoXYp9xLesiZADFsOhxoP74RR1KV6bKU7r1C5YA
 p1AeftI0DeaqIaIgYpA9U8D/Xk30qDbhZgc98xBT+5Kv94DLeyqOQPSlQ
 K5GRdyCkx3Lnz6BY/x0B5JkbKidds/mEiTFIjunosod/HXAvpTpO2NsK0
 2iTuR87hxbZgDQik4KQclwuVv01+m1DZ7piTqNJIAlhPeJxjhwQL8gy7A
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j4/eE3cQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 9/9] igc: Add support to get
 frame preemption statistics via ethtool
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



On 17/12/2024 12:05 am, Vladimir Oltean wrote:
> On Mon, Dec 16, 2024 at 01:47:20AM -0500, Faizal Rahim wrote:
>> Implemented "ethtool --include-statistics --show-mm" callback for IGC.
>>
>> Tested preemption scenario to check preemption statistics:
>> 1) Trigger verification handshake on both boards:
>>      $ sudo ethtool --set-mm enp1s0 pmac-enabled on
>>      $ sudo ethtool --set-mm enp1s0 tx-enabled on
>>      $ sudo ethtool --set-mm enp1s0 verify-enabled on
>> 2) Set preemptible or express queue in taprio for tx board:
>>      $ sudo tc qdisc replace dev enp1s0 parent root handle 100 taprio \
>>        num_tc 4 map 0 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 \
>>        queues 1@0 1@1 1@2 1@3 base-time 0 sched-entry S F 100000 \
>>        fp E E P P
> 
> Hmm, the prio_tc_map pattern changed since the last time I looked at igc
> examples? It was in decreasing order before? How do you handle backwards
> compatibility with the Tx ring strict priority default configuration?
> I haven't downloaded the entire set locally, will do so later.
> 

I tested like this for i226:
     CMD=(
         "tc qdisc replace dev $IFACE parent root handle 100 taprio "
         "num_tc 4 "
         "map 3 2 1 0 3 3 3 3 3 3 3 3 3 3 3 3 "
         "queues 1@0 1@1 1@2 1@3 "
         "base-time $BASE "
         "${SCHED_ENTRY[*]} "
         "flags 0x1 "
         "txtime-delay $TXTIME_DELAY "
         "clockid CLOCK_TAI "

But I mistakenly copied the mapping from a different scenario where socket 
priority -> tc -> hw_queue mapping is not important to my test objective in 
that scenario.

I'll update the description to use decreasing order then.

>> +
>> +	return ooo_smdc + ooo_frame_cnt + ooo_frag_cnt + miss_frame_frag_cnt;
>> +}
>> +
>> +static void igc_ethtool_get_mm_stats(struct net_device *dev,
>> +				     struct ethtool_mm_stats *stats)
>> +{
>> +	struct igc_adapter *adapter = netdev_priv(dev);
>> +	struct igc_hw *hw = &adapter->hw;
>> +
>> +	stats->MACMergeFrameAssErrorCount = igc_ethtool_get_frame_ass_error(dev);
>> +	stats->MACMergeFrameSmdErrorCount = 0; /* Not available in IGC */
>> +	stats->MACMergeFrameAssOkCount = rd32(IGC_PRMPTDRCNT);
>> +	stats->MACMergeFragCountRx =  rd32(IGC_PRMEVNTRCNT);
>> +	stats->MACMergeFragCountTx = rd32(IGC_PRMEVNTTCNT);
>> +	stats->MACMergeHoldCount = 0; /* Not available in IGC */
> 
> Don't report counters as zero when in reality you don't know.
> 
> Just don't assign values to these. mm_prepare_data() -> ethtool_stats_init()
> presets them to 0xffffffffffffffff (ETHTOOL_STAT_NOT_SET), and
> mm_put_stats() -> mm_put_stat() detects whether they are still equal to
> this value, and if they are, does not report netlink attributes for them.
> 

Got it.


>> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
>> index 12ddc5793651..f40946cce35a 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
>> @@ -222,6 +222,25 @@
>>   
>>   #define IGC_FTQF(_n)	(0x059E0 + (4 * (_n)))  /* 5-tuple Queue Fltr */
>>   
>> +/* Time sync registers - preemption statistics */
>> +#define IGC_PRMEVNTTCNT		0x04298	/* TX Preemption event counter */
>> +#define IGC_PRMEVNTRCNT		0x0429C	/* RX Preemption event counter */
>> +#define IGC_PRMPTDRCNT		0x04284	/* Good RX Preempted Packets */
>> +
>> + /* Preemption Exception Counter */
>> +#define IGC_PRMEXPRCNT					0x042A0
>> +/* Received out of order packets with SMD-C and NOT ReumeRx */
>> +#define IGC_PRMEXPRCNT_OOO_SMDC 0x000000FF
>> +/* Received out of order packets with SMD-C and wrong Frame CNT */
>> +#define IGC_PRMEXPRCNT_OOO_FRAME_CNT			0x0000FF00
>> +#define IGC_PRMEXPRCNT_OOO_FRAME_CNT_SHIFT		8
>> +/* Received out of order packets with SMD-C and wrong Frag CNT */
>> +#define IGC_PRMEXPRCNT_OOO_FRAG_CNT			0x00FF0000
>> +#define IGC_PRMEXPRCNT_OOO_FRAG_CNT_SHIFT		16
>> +/* Received packets with SMD-S and ReumeRx */
> 
> What is ReumeRx?

Resume receive. It’s a typo in the i226 documentation that I (shamelessly) 
copied into the code without checking properly. It's meant to indicate that 
an RX flag in the i226 firmware is set. I’ll remove the 'ResumeRX' part 
since it adds confusion.

