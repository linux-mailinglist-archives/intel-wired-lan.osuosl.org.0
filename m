Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B078BA566A1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 12:26:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C054E41688;
	Fri,  7 Mar 2025 11:26:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FjTNVLA7uMLH; Fri,  7 Mar 2025 11:26:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4A7441684
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741346779;
	bh=mZmBOEDl7GAhGmfF6UfWgCSp1DiacmxMZDHkcWSK2wM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jHMzkFsBx8sgEHWv4H/ayMcpBj/Ob9oaT86lGfYnWSBlaKjJtHfZECouMrCLJMBIt
	 OAFW9cYa8C4QVgY4dhHchtQ5cyWvSfVa55HR3l30+ok1Ef0t3HUKLcXlvEe0/306ts
	 9wlDA4g/YR4SWJSvrEZKi3tEUr+6YJskdbT9MZxQzukWKdAYwXtE1DjxYaqRVSU1j6
	 zTgKgvrDlPgDl1xmR8Vpuz7sPQq8KT6m2m0NGspe0uizodLiuLWJaYBqkchGJYPXqP
	 bhn1IRUXFPkys2QT8jZk4atXHdZuDc2dU7cPd53AJHMZnHtPj+7RFUBNRu4rTl22qb
	 lXRGwsb63rC7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4A7441684;
	Fri,  7 Mar 2025 11:26:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C6051C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 11:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4A0B60B5A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 11:26:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vAsBIfrGhSyO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 11:26:17 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 21EF861098
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21EF861098
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 21EF861098
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 11:26:16 +0000 (UTC)
X-CSE-ConnectionGUID: oLfUe3F/SauJbHxQiAo+AA==
X-CSE-MsgGUID: zsEpRpH/QYSmN5HOevjjng==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52598950"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52598950"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 03:26:15 -0800
X-CSE-ConnectionGUID: MhGzflfcR5uwjOmgTHfi1w==
X-CSE-MsgGUID: RXDB3iloTN6BhM+AbCLNOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="123891784"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.100.177])
 ([10.247.100.177])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 03:26:08 -0800
Message-ID: <152e48f6-e68d-4de4-8170-3f35df1ddd1d@linux.intel.com>
Date: Fri, 7 Mar 2025 19:26:05 +0800
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
 <20250305130026.642219-1-faizal.abdul.rahim@linux.intel.com>
 <20250305130026.642219-9-faizal.abdul.rahim@linux.intel.com>
 <20250305130026.642219-9-faizal.abdul.rahim@linux.intel.com>
 <20250306004301.evw34gqoyll36mso@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250306004301.evw34gqoyll36mso@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741346778; x=1772882778;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=IRGd/73/547JbPgxOPTPAv9MDN91O+zWBBkgec1T5PM=;
 b=ZfT9wrkP7yX8TH16Ym4ahcJ/BP5iWSetMCIK7Uf3qtoxyXFnZJ+R56g4
 E93Gide/UGHNTF18fQWov90qYU62Q37FDzEI+cIV0qK8idhini/W5f3uB
 qoLAAG3iqC6rxkuZnNldPq5h4ZBYwggONqpRnoSaooYt7ol6wD9H9juK4
 JeNROQDgV6Nk05pfSWwIXuuvv8f2zy0J+XymV3gCVnLBLzEMDtrTa1bkw
 ugT+WK5UMXiPjNtvgRaYgjwLD8t4exCk/xG/sQlsv/MaKQtlNnzjEIf1C
 sFBDyJ9nk15KghGhkvm5L6OEttg2JeLhnC+hYUGgFYhXrWpFxaU3SvUf6
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZfT9wrkP
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 08/11] igc: add support to
 set tx-min-frag-size
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



On 6/3/2025 8:43 am, Vladimir Oltean wrote:
>> diff --git a/net/ethtool/mm.c b/net/ethtool/mm.c
>> index ad9b40034003..4c395cd949ab 100644
>> --- a/net/ethtool/mm.c
>> +++ b/net/ethtool/mm.c
>> @@ -153,7 +153,7 @@ const struct nla_policy ethnl_mm_set_policy[ETHTOOL_A_MM_MAX + 1] = {
>>   	[ETHTOOL_A_MM_VERIFY_TIME]	= NLA_POLICY_RANGE(NLA_U32, 1, 128),
>>   	[ETHTOOL_A_MM_TX_ENABLED]	= NLA_POLICY_MAX(NLA_U8, 1),
>>   	[ETHTOOL_A_MM_PMAC_ENABLED]	= NLA_POLICY_MAX(NLA_U8, 1),
>> -	[ETHTOOL_A_MM_TX_MIN_FRAG_SIZE]	= NLA_POLICY_RANGE(NLA_U32, 60, 252),
>> +	[ETHTOOL_A_MM_TX_MIN_FRAG_SIZE]	= NLA_POLICY_RANGE(NLA_U32, 60, 256),
> 
> Please make this a separate patch with a reasonably convincing
> justification for any reader, and also state why it is a change that
> will not introduce regressions to the other drivers. It shows that
> you've done the due dilligence of checking that they all use
> ethtool_mm_frag_size_min_to_add(), which errors out on non-standard
> values.
> 
> To be clear, extending the policy from 252 to 256 is just to suppress
> the netlink warning which states that the driver rounds up the minimum
> fragment size, correct? Because even if you pass 252 (the current
> netlink maximum), the driver will still use 256.
> 
I originally changed 252 to 256 because our internal validation failed when 
setting 256 via ethtool. The test case was based on our old kernel OOT 
patches code, but this run was done on the upstreamed FPE framework plus 
this series. After thinking about it, it doesn’t seem right to change this 
just to accommodate the i226 quirk in a common layer when the IEEE standard 
and other devices use 252.

So, we’ll update our validation to use 252 instead. The driver already 
rounds up to 256 anyway. I’ll drop this change in the next revision.

Also, noted your point about being cautious with changes that impact other 
drivers.

Thanks.
