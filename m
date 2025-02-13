Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FE3A33769
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 06:42:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6ACAB41A33;
	Thu, 13 Feb 2025 05:42:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wor3G4kC_uUY; Thu, 13 Feb 2025 05:42:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96FBE413C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739425363;
	bh=Do17BA+cEX8egqIOlhDHgQ++q9RXTUe7OTvSkOYSCyk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=i0RL0jAP8BfRWn5h+cTYwIh9fTsgnneAGFzKZBl5IafDfq2X6ur1EqrJleiKhFgAH
	 F4um3ec8CKbaKJwC2kh1H3R0yiH6dfrgdh/SOA5YRUN0x322CQmauNey1QcS8CAe7U
	 l88EgZ2lh63FGYTQaVVYro/S8srbqK23ryX0tqzezffwruVn5lxiqx+kZiBiCq9V5y
	 OtT0dqNxglQgif7CelouMmpKHPcBpGduOFxRwL00iSwfkMDsuOoSZuMq3+2p+8QrvB
	 rb6GNV9w/3fCDQfGJj2jwgnCKWiJ1vCCDXL5e3GdoGpODGrc7RgiRDgzGNL/kUSP7K
	 RvZ2XQoaQixZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96FBE413C5;
	Thu, 13 Feb 2025 05:42:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4CF0A1A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 05:42:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3AF908406D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 05:42:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LeSYuFZBR5tV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 05:42:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 37D2A8404A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37D2A8404A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37D2A8404A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 05:42:40 +0000 (UTC)
X-CSE-ConnectionGUID: TSSUrob/StCniMgN44uGKg==
X-CSE-MsgGUID: QgDrYFp0TyeD2hrWNxq7tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="40144831"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40144831"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 21:42:39 -0800
X-CSE-ConnectionGUID: absVRYFWTE6GjFbSpIfu3A==
X-CSE-MsgGUID: Rc56qI39ThGchxAi5S5+/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="118128278"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.42.34])
 ([10.247.42.34])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 21:42:31 -0800
Message-ID: <74a324de-7a64-4d67-8167-79bf6e4ae8da@linux.intel.com>
Date: Thu, 13 Feb 2025 13:42:28 +0800
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
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-10-faizal.abdul.rahim@linux.intel.com>
 <20250212215408.v47eb42zx67ij6vp@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250212215408.v47eb42zx67ij6vp@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739425360; x=1770961360;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=s1+zMW0r7uW6tCZ4MRxVO4Jw77rHPs73bHu8Fg5RZuA=;
 b=Fqzdhc3xkAFSv4ZfrEh8z+g5RK13ayGpI1bBAhenxwrAX4MZBXyjOr43
 j8cN0+VSdJcXrjXrRqwKjW+MFkcYNL+qfwTLpCtgfGA8unAl2/DDsBeH3
 VrcElUhz2q951scF+KUqTyR6VrGWnhftvd3hofZn6XZziMf35/qkCa5QW
 mi45Ib93ofQc5gOG+Z9NlsI60mOMHN5dNB3stG4Bejl7TIGKw/vg8aVPs
 2zuoPBFzbyeeoc3n+XCWwcPqhcfyTGJ25QXen9Zwu7dEo9bFvItrvY+BB
 xQNei/nPvvfl1/BbptNGVWanrPGhWUmJQrjz9u9rA9BzxcgFU/P5g5qbg
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fqzdhc3x
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 9/9] igc: Add support to
 get frame preemption statistics via ethtool
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



On 13/2/2025 5:54 am, Vladimir Oltean wrote:
> On Mon, Feb 10, 2025 at 02:02:07AM -0500, Faizal Rahim wrote:
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index f15ac7565fbd..cd5160315993 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -3076,6 +3076,7 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
>>   			break;
>>   
>>   		if (static_branch_unlikely(&igc_fpe_enabled) &&
>> +		    adapter->fpe.mmsv.pmac_enabled &&
> 
> This bit is misplaced in this patch.

My bad, thanks for catching that.
