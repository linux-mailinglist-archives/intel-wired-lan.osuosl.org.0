Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D32FA3AF19
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 02:48:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3E2883A62;
	Wed, 19 Feb 2025 01:48:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1_u_8-7RFZvT; Wed, 19 Feb 2025 01:48:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E341D83A64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739929733;
	bh=dvrO7AWGxoNErdt5JCihmAWqLgTj/DJvdaHKt+Vu9Zk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=URxQhuKVVAUDQLjrtGMBDDbDGrul/YXeXpMyT4yNexWv6hQdyf2GzNGPtoVkhNmon
	 1MDCl2tejmndglIsb0K0IBBAToXlb26AQZRkE32gFS8duWtSQDhiylI7d1tbClKOcm
	 zhPF8Y9dncBtlD5ZQ05heTetCxNSs/MRlLzowv+2kfXP2u1q7UVIICK5eklTdtjIXF
	 awGQQL786EohEtKQUf1QteOLB7nd5J+IeA5PBb8ec6iFZtwZfmEIb0ab72gDpq9CG4
	 fTcLsFamBnCTHQj471/CdwF+0k5lBVw9div9u5e5QcWVDIY6dG3WDHkoLcW7CI/64T
	 kma2pFMVIPi3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E341D83A64;
	Wed, 19 Feb 2025 01:48:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 686B6AF0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 01:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 452E56086A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 01:48:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MC6B5n29vLbs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 01:48:50 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 86B7860764
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86B7860764
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 86B7860764
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 01:48:50 +0000 (UTC)
X-CSE-ConnectionGUID: BksVXuPxRqSBwErITak2Lw==
X-CSE-MsgGUID: MtaMbRhRSkevwtd9UHiXPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="66006882"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="66006882"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 17:48:49 -0800
X-CSE-ConnectionGUID: 3tCnTqP2SCm9n+J0hFQeZw==
X-CSE-MsgGUID: pUBD94G+R3qLe0pCfMzcOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114748406"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.64.179])
 ([10.247.64.179])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 17:48:36 -0800
Message-ID: <b3e02516-d59c-4ed4-b59d-afa72c23d04b@linux.intel.com>
Date: Wed, 19 Feb 2025 09:48:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-6-faizal.abdul.rahim@linux.intel.com>
 <20250217113113.GK1615191@kernel.org>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250217113113.GK1615191@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739929730; x=1771465730;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/6YPLRHm6H9wPjnB667+gK6xaD7arKiwsNiLpHXnheg=;
 b=Vf5gzDRmBVgZMyxxzzBdRiNBQjWVE7xYyrPkKp4FrgJnOeUa+k+HKNPj
 nOu89oBVys7Y/hNEekUgiK4Btf1Eb2qIr3WwG6EF65XiyyNGr0t4r56ac
 1363ExTQnLDdJrVVx/e3uLgG3/pvqvjL9/fB2xjpa/zzS8Ng+ynovAYEc
 cD03Gr1JLUWJhjCTYz/RpDMg8WpytR6Axvyz+G7fpoDOJYr0PJNZhF/fQ
 njyxJa16ryhcS6STv8O4sA6umKXH58X72lhCRT5jzzDqzLCE6QYH867N1
 p5agbLBDIxgp/zBOkBy2X7MAEfA0Bkcne9nZYpsLEorif51yCejikhA8V
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vf5gzDRm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/9] igc: Add support for
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



On 17/2/2025 7:31 pm, Simon Horman wrote:
> On Mon, Feb 10, 2025 at 02:02:03AM -0500, Faizal Rahim wrote:
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> 
> ...
> 
>> +bool igc_fpe_transmitted_smd_v(union igc_adv_tx_desc *tx_desc)
>> +{
>> +	u8 smd = FIELD_GET(IGC_TXD_POPTS_SMD_MASK, tx_desc->read.olinfo_status);
> 
> olininfo_status is little-endian, so I think it needs
> to be converted to host byte order when used as an
> argument to FIELD_GET().
> 
> Flagged by Sparse.
> 
>> +
>> +	return smd == SMD_V;
>> +}
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
> 
> ...
> 
>> +static inline void igc_fpe_lp_event_status(union igc_adv_rx_desc *rx_desc,
>> +					   struct ethtool_mmsv *mmsv)
>> +{
>> +	__le32 status_error = le32_to_cpu(rx_desc->wb.upper.status_error);
> 
> It looks like the type of status_error should be a host byte order integer,
> such as u32.
> 
> Also flagged by Sparse.

Thanks for spotting these, I'll update them.

