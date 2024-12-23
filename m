Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E58549FABFC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Dec 2024 10:32:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9731541739;
	Mon, 23 Dec 2024 09:32:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5CGphO_QoQaq; Mon, 23 Dec 2024 09:32:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 672A841754
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734946334;
	bh=GLS9vjiJ0ZEAomiIm2cGfSxjk2Z9GZNdX1TXqPYlpys=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nTGlx9T0ECSSWfHSZiOf7j+LLKi92hIC9tlvvZtOVh296XaY4ffSi9xZ2MLLmCIXZ
	 AVHozrDcQUPeFzRSTeYVfQfGd1dM9hF7qzFwAnSNDugqnQWkkZ/QWp2th3zL0MHWcU
	 HAhfmSvzYuelp/efSJOHFe6kZEZyPoPvATIEIqr+yzSeLfqwkEzc5GGhNEOSdTJ+xT
	 Q62j64niL09ZtYbPkIYryUTnn4OZ5ipY42dvFw3UHpws/OqQN2P1Iz/QheNwgQc7Yi
	 EaNkMDdl6DxNm2zemYkfffmbsdKRBmZDsXmLEenldNgPabbjkIIxbEU5GTiwSejcxw
	 mNFcJcVZsHWMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 672A841754;
	Mon, 23 Dec 2024 09:32:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DCD1D757
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 09:32:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D85DE60DEF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 09:32:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aXWv8GiRqneo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Dec 2024 09:32:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F380760BC3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F380760BC3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F380760BC3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 09:32:10 +0000 (UTC)
X-CSE-ConnectionGUID: ajYNL/S1QsaEr/eEvEh50A==
X-CSE-MsgGUID: FuUHCE9JQLO4MWd3uRlx3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11294"; a="35562550"
X-IronPort-AV: E=Sophos;i="6.12,256,1728975600"; d="scan'208";a="35562550"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 01:32:10 -0800
X-CSE-ConnectionGUID: Qid9TWEwR0q6XzNKxI3M2A==
X-CSE-MsgGUID: iFzH1ctPQ7ydzjESI9DnHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="103263965"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.22.166])
 ([10.247.22.166])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 01:32:06 -0800
Message-ID: <fe42e84d-3b78-4bba-b1a3-27fe89625809@linux.intel.com>
Date: Mon, 23 Dec 2024 17:32:03 +0800
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
 t=1734946331; x=1766482331;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=P64O16FrSBKrElzcFpJ4fpAue0KeclHRxfazBIZUWio=;
 b=IT93qoqorRIwELpslUYKQGRd+R7u2Q6BIZei+vKvgewPhZ3UIIV2rAcZ
 RFJUDnHZd79uAkw3u2ZYkCPKC0NAzTQ/ocM4BdG6z/sRISxWnAlak1xU/
 BkmAgO/oWZfODC6/ADfk0GEvCIkw8jZY9KQ+BCel6+JKdV0XD/RQQOpm2
 psfYLgEHqozx+DO1f6sPU1cb0cFdaL9YgUHiogvSG67fFSlrqJEl7i8hR
 hGjuDzKXkzJBH5hyq7zqgGMNvnFUxq6fcI41Lqh2YWi6wKUIjoLOq7FRy
 h0dIqMIJOH8yTkHIg7hBEr3Eb1fhOiy3RpeIEOBWiv/C2fHTCtCNkd4lq
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IT93qoqo
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

>> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
>> index 3088cdd08f35..ba96776d5854 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
>> @@ -308,6 +308,8 @@
>>   #define IGC_TXD_DTYP_C		0x00000000 /* Context Descriptor */
>>   #define IGC_TXD_POPTS_IXSM	0x01       /* Insert IP checksum */
>>   #define IGC_TXD_POPTS_TXSM	0x02       /* Insert TCP/UDP checksum */
>> +#define IGC_TXD_POPTS_SMD_V	0x10       /* Transmitted packet is a SMD-Verify */
>> +#define IGC_TXD_POPTS_SMD_R	0x20       /* Transmitted packet is a SMD-Response */
>>   #define IGC_TXD_CMD_EOP		0x01000000 /* End of Packet */
>>   #define IGC_TXD_CMD_IC		0x04000000 /* Insert Checksum */
>>   #define IGC_TXD_CMD_DEXT	0x20000000 /* Desc extension (0 = legacy) */
>> @@ -370,9 +372,13 @@
>>   #define IGC_RXD_STAT_VP		0x08	/* IEEE VLAN Packet */
>>   
>>   #define IGC_RXDEXT_STATERR_LB	0x00040000
>> +#define IGC_RXD_STAT_SMD_V	0x2000  /* SMD-Verify packet */
>> +#define IGC_RXD_STAT_SMD_R	0x4000  /* SMD-Response packet */
>>   
>>   /* Advanced Receive Descriptor bit definitions */
>>   #define IGC_RXDADV_STAT_TSIP	0x08000 /* timestamp in packet */
>> +#define IGC_RXDADV_STAT_SMD_TYPE_MASK	0x06000
>> +#define IGC_RXDADV_STAT_SMD_TYPE_SHIFT	13
>>   
>>   #define IGC_RXDEXT_STATERR_L4E		0x20000000
>>   #define IGC_RXDEXT_STATERR_IPE		0x40000000
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> index 1954561ec4aa..7cde0e5a7320 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> @@ -1788,6 +1788,7 @@ static int igc_ethtool_set_mm(struct net_device *netdev,
>>   {
>>   	struct igc_adapter *adapter = netdev_priv(netdev);
>>   	struct fpe_t *fpe = &adapter->fpe;
>> +	bool verify_enabled_changed;
>>   
>>   	if (cmd->tx_min_frag_size < IGC_TX_MIN_FRAG_SIZE ||
>>   	    cmd->tx_min_frag_size > IGC_TX_MAX_FRAG_SIZE)
>> @@ -1805,7 +1806,12 @@ static int igc_ethtool_set_mm(struct net_device *netdev,
>>   
>>   	fpe->tx_enabled = cmd->tx_enabled;
>>   	fpe->pmac_enabled = cmd->pmac_enabled;
>> -	fpe->verify_enabled = cmd->verify_enabled;
>> +	verify_enabled_changed = (cmd->verify_enabled != fpe->verify_enabled);
> 
> I wonder if it's worth using an intermediary variable when the result is
> only evaluated once. The intention is clear enough already, you call a
> function named igc_fpe_verify_enabled_changed().
> 
yea when I read this part again, I don't this it's needed.
Will remove the new local var and change the code to:

    	if (cmd->verify_enabled != fpe->verify_enabled) {
                 fpe->verify_enabled = cmd->verify_enabled;
                 igc_fpe_verify_enabled_changed(fpe);

>> +
>> +	if (verify_enabled_changed) {
>> +		fpe->verify_enabled = cmd->verify_enabled;
>> +		igc_fpe_verify_enabled_changed(fpe);
>> +	}
>>   
>>   	return igc_tsn_offload_apply(adapter);
>>   }
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index b85eaf34d07b..e184959ef218 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -2534,7 +2534,7 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
>>   }
>>   
>>   /* This function assumes __netif_tx_lock is held by the caller. */
>> -static void igc_flush_tx_descriptors(struct igc_ring *ring)
>> +void igc_flush_tx_descriptors(struct igc_ring *ring)
>>   {
>>   	/* Once tail pointer is updated, hardware can fetch the descriptors
>>   	 * any time so we issue a write membar here to ensure all memory
>> @@ -2585,6 +2585,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>>   	struct sk_buff *skb = rx_ring->skb;
>>   	u16 cleaned_count = igc_desc_unused(rx_ring);
>>   	int xdp_status = 0, rx_buffer_pgcnt;
>> +	int smd_type;
>>   
>>   	while (likely(total_packets < budget)) {
>>   		struct igc_xdp_buff ctx = { .rx_ts = NULL };
>> @@ -2622,6 +2623,18 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>>   			size -= IGC_TS_HDR_LEN;
>>   		}
>>   
>> +		smd_type = igc_fpe_get_smd_type(rx_desc->wb.upper.status_error);
>> +
>> +		if (igc_fpe_is_verify_or_response(smd_type, size)) {
>> +			igc_fpe_preprocess_verify_response(&adapter->fpe,
>> +							   smd_type);
>> +
>> +			/* Advance the ring next-to-clean */
>> +			igc_is_non_eop(rx_ring, rx_desc);
>> +			cleaned_count++;
>> +			continue;
>> +		}
>> +
> 
> Premature optimization is the root of all evil, I know, but in the
> future it might be interesting to add a static key here that gets
> incremented (enabled) based on pmac_enabled, such that the fast path
> does not get to suffer a performance penalty when frame preemption is
> supported in the kernel, regardless of whether it is enabled or not.
> 

You mean something like this ?

igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
{
	static bool pmac_enabled = adapter->fpe.pmac_enabled;
	..
         ..
	if (pmac_enabled && (igc_fpe_is_verify_or_response(smd_type, size))

