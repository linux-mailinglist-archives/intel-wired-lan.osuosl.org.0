Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8390A5671D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 12:52:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BFA560885;
	Fri,  7 Mar 2025 11:52:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BQXwbWERLaSd; Fri,  7 Mar 2025 11:52:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AAD3607E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741348367;
	bh=IfIw/KMMmIDRi3/nd/gsWTKf+hzgQZ9OjQBsJhXyFrs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ojw0n7vgUWWFsqDl3+fPPTEGV7yhYkom92KOxcrhC8PJR8a8a9bwPYKZRhDZLtShG
	 l5BA39Cn8/qbQksqTxhh38xi989ZurfqALSzneWKeL0s8WElD5bDzbFfPwGOFkuOzu
	 ydTwVKXRUpQNs/60cFR+G7PoGu4C0HKSlcBFO3plaDLLc8BynkcqOXi615GpxYcbTF
	 IY9+DfzYveyf3767sX/3SK1XTxFZfhlYCxqdminZR9j80Cc5tIu7Xu26iIQLNT6mTn
	 lkuCPbEVTJsFDQs/pi9WE91ap640qzZEdKh0QkOdUFNVdq+DyoQJRbtpUacegRHPLR
	 IkyhXUmXf8UmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AAD3607E9;
	Fri,  7 Mar 2025 11:52:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1AA101C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 11:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 15AEA40811
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 11:52:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MruuNsSNWIK0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 11:52:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AD1C64080C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD1C64080C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD1C64080C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 11:52:44 +0000 (UTC)
X-CSE-ConnectionGUID: mB0JquSUSCiV6Wd6Xsst2A==
X-CSE-MsgGUID: /UmgVRigTYi7EVvFgDEIVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="64834322"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="64834322"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 03:52:44 -0800
X-CSE-ConnectionGUID: Gq2NhXteTvWPF9+DnKuFJQ==
X-CSE-MsgGUID: opl3JIbRQVSlCkVEbStQSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120226099"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.100.177])
 ([10.247.100.177])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 03:52:36 -0800
Message-ID: <43277258-7100-4230-82da-8a78ad341dde@linux.intel.com>
Date: Fri, 7 Mar 2025 19:52:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
References: <20250305130026.642219-1-faizal.abdul.rahim@linux.intel.com>
 <20250305130026.642219-8-faizal.abdul.rahim@linux.intel.com>
 <20250306002825.rva7wjsymmms7kbd@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250306002825.rva7wjsymmms7kbd@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741348365; x=1772884365;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=HfAgk9zOtpbfUTR/ph6GVkTV0/0ByfBX3QerezGYdeI=;
 b=MqL4DDrTMat1gnEPCgCGr8LHt7zuYODh4eAkukvhvEYRzsDDCu0Er+Qe
 G/Uh6H1CTsEFmUSLfM6m8Efl8FskBh78YeonAv50vHRBeFkRUfNg33qog
 fmgl0wZkOajOPkBENMrs0b6wP4eLHnfxlS3UWix5Kd7lnM4EJwNoFCkpO
 fLuYPpA1wBLUom4PLVXukHxJYY8SduNPKH+j49rShOpZgkzCdN9hp7pp5
 dzqFPfkeI00yczBUvL4EYPjA6Glnt+c5UrAU8DnDvDM1XE8oAsFbe6kIE
 sOnH2/9ru1AT5rjfTF7HIV5i5Reb/x5NT+ZsIsy/GsqYMsxoqqU9w2rZC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MqL4DDrT
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 07/11] igc: add support
 for frame preemption verification
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



On 6/3/2025 8:28 am, Vladimir Oltean wrote:
> On Wed, Mar 05, 2025 at 08:00:22AM -0500, Faizal Rahim wrote:
>> Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> Co-developed-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
>> Signed-off-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
>> Co-developed-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
>> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>> ---
>> +
>> +static inline bool igc_fpe_is_verify_or_response(union igc_adv_rx_desc *rx_desc,
>> +						 unsigned int size, void *pktbuf)
>> +{
>> +	u32 status_error = le32_to_cpu(rx_desc->wb.upper.status_error);
>> +	static const u8 zero_payload[SMD_FRAME_SIZE] = {0};
>> +	int smd;
>> +
>> +	smd = FIELD_GET(IGC_RXDADV_STAT_SMD_TYPE_MASK, status_error);
>> +
>> +	return (smd == IGC_RXD_STAT_SMD_TYPE_V || smd == IGC_RXD_STAT_SMD_TYPE_R) &&
>> +		size == SMD_FRAME_SIZE &&
>> +		!memcmp(pktbuf, zero_payload, SMD_FRAME_SIZE); /* Buffer is all zeros */
> 
> Using this definition...
> 
>> +}
>> +
>> +static inline void igc_fpe_lp_event_status(union igc_adv_rx_desc *rx_desc,
>> +					   struct ethtool_mmsv *mmsv)
>> +{
>> +	u32 status_error = le32_to_cpu(rx_desc->wb.upper.status_error);
>> +	int smd;
>> +
>> +	smd = FIELD_GET(IGC_RXDADV_STAT_SMD_TYPE_MASK, status_error);
>> +
>> +	if (smd == IGC_RXD_STAT_SMD_TYPE_V)
>> +		ethtool_mmsv_event_handle(mmsv, ETHTOOL_MMSV_LP_SENT_VERIFY_MPACKET);
>> +	else if (smd == IGC_RXD_STAT_SMD_TYPE_R)
>> +		ethtool_mmsv_event_handle(mmsv, ETHTOOL_MMSV_LP_SENT_RESPONSE_MPACKET);
>> +}
>> @@ -2617,6 +2617,15 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>>   			size -= IGC_TS_HDR_LEN;
>>   		}
>>   
>> +		if (igc_fpe_is_pmac_enabled(adapter) &&
>> +		    igc_fpe_is_verify_or_response(rx_desc, size, pktbuf)) {
> 
> ... invalid SMD-R and SMD-V frames will skip this code block altogether, and
> will be passed up the network stack, and visible at least in tcpdump, correct?
> Essentially, if the link partner would craft an ICMP request packet with
> an SMD-V or SMD-R, your station would respond to it, which is incorrect.
> 
> A bit strange, the behavior in this case seems a bit under-specified in
> the standard, and I don't see any counter that should be incremented.
> 
>> +			igc_fpe_lp_event_status(rx_desc, &adapter->fpe.mmsv);
>> +			/* Advance the ring next-to-clean */
>> +			igc_is_non_eop(rx_ring, rx_desc);
>> +			cleaned_count++;
>> +			continue;
>> +		}
> 
> To fix this, don't you want to merge the unnaturally split
> igc_fpe_is_verify_or_response() and igc_fpe_lp_event_status() into a
> single function, which returns true whenever the mPacket should be
> consumed by the driver, but decides whether to emit a mmsv event on its
> own? Merging the two would also avoid reading rx_desc->wb.upper.status_error
> twice.
> 
> Something like this:
> 
> static inline bool igc_fpe_handle_mpacket(struct igc_adapter *adapter,
> 					  union igc_adv_rx_desc *rx_desc,
> 					  unsigned int size, void *pktbuf)
> {
> 	u32 status_error = le32_to_cpu(rx_desc->wb.upper.status_error);
> 	int smd;
> 
> 	smd = FIELD_GET(IGC_RXDADV_STAT_SMD_TYPE_MASK, status_error);
> 	if (smd != IGC_RXD_STAT_SMD_TYPE_V && smd != IGC_RXD_STAT_SMD_TYPE_R)
> 		return false;
> 
> 	if (size == SMD_FRAME_SIZE && mem_is_zero(pktbuf, SMD_FRAME_SIZE)) {
> 		struct ethtool_mmsv *mmsv = &adapter->fpe.mmsv;
> 		enum ethtool_mmsv_event event;
> 
> 		if (smd == IGC_RXD_STAT_SMD_TYPE_V)
> 			event = ETHTOOL_MMSV_LP_SENT_VERIFY_MPACKET;
> 		else
> 			event = ETHTOOL_MMSV_LP_SENT_RESPONSE_MPACKET;
> 
> 		ethtool_mmsv_event_handle(mmsv, event);
> 	}
> 
> 	return true;
> }
> 
> 		if (igc_fpe_is_pmac_enabled(adapter) &&
> 		    igc_fpe_handle_mpacket(adapter, rx_desc, size, pktbuf)) {
> 			/* Advance the ring next-to-clean */
> 			igc_is_non_eop(rx_ring, rx_desc);
> 			cleaned_count++;
> 			continue;
> 		}
> 
> [ also remark the use of mem_is_zero() instead of memcmp() with a buffer
>    pre-filled with zeroes. It should be more efficient, for the simple
>    reason that it's accessing a single memory buffer and not two. Though
>    I'm surprised how widespread the memcmp() pattern is throughout the
>    kernel. ]

Thanks for the suggestion—it reads much better and flows smoothly. Got it 
on the driver needing to consume a non-zero packet buffer from SMD-V and SMD-R.
