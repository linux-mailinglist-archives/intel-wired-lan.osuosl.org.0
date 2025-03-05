Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F010EA4FEA8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 13:34:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0A4881CAF;
	Wed,  5 Mar 2025 12:34:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gaQSqXSf1E79; Wed,  5 Mar 2025 12:34:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DB2081C56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741178050;
	bh=pcxVGicBeXIlHqcfnZNHNlV7cLNQK0d6woyZaSqWTmY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MYFQiHEHcJJKY41KqLi9eJQGl4QGMCgQ64sRfQeKyMahyGSmPJC69JefauY+dYhT4
	 0cZ4WuvJRSPxz7GbMD2tPCcoWY9UTrFdKbbc2lOyTEk+kQvNCUunGWGwR0wJVlSeHq
	 kqhBUYzg34b8wzE7vL6D3jxp/+107xhfWa2j8lbPDC2eR/rbSY3mOJwdDm61K69k7s
	 N4n+zuf1euIRQ93MeIUiet0Q/3FQsjWOgV4xmCTGjtAKsBvKzzXuJTjIXv0+O7wjea
	 Zzci1+6DXhLeUc62hwWUQ8QDe6kqd2PdcjpI3NTpuJiB92gkDiHry5w1e1ICyvKtiY
	 JTj0j9WqlfBdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DB2081C56;
	Wed,  5 Mar 2025 12:34:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C2457194
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 12:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8EA1240142
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 12:34:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y5VI167TlJNZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 12:34:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7CB8040129
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7CB8040129
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7CB8040129
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 12:34:06 +0000 (UTC)
X-CSE-ConnectionGUID: zgrJkEfyTIS8QZjSoj63JA==
X-CSE-MsgGUID: MB1msI4aTwyyOWf2IR76aQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="46064878"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="46064878"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 04:34:05 -0800
X-CSE-ConnectionGUID: N7Xoy4TzQJysW2kMb1XEUQ==
X-CSE-MsgGUID: eBSnBMUbTKa2RR8mn5mMOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="118829798"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.123.55])
 ([10.247.123.55])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 04:33:58 -0800
Message-ID: <4882bd5b-1a64-4ac7-ba51-66143d029e8a@linux.intel.com>
Date: Wed, 5 Mar 2025 20:33:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>, ",chwee.lin.choong"@intel.com
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
References: <20250303102658.3580232-1-faizal.abdul.rahim@linux.intel.com>
 <20250303102658.3580232-6-faizal.abdul.rahim@linux.intel.com>
 <20250304152644.y7j7eshr4qxhmxq2@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250304152644.y7j7eshr4qxhmxq2@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741178046; x=1772714046;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KXz7qN+UCvg/zXe/kDPAg/cy+msMPeJPVH/lqPdGHTo=;
 b=bLrVVClcoy9z6vn3AvQfNDWHz6TlGLBX5Xi02/RIsj93kC7Cg80ZdtMJ
 QRCRahzkmZ6E5sPNioVeJZNMh+cNyOeC4YPmmICGwlxXTK30a4xxBFdP0
 Hvc6N6mnIgtvEKU2Z/IvPCaLkxc+jJhBFNVkfNk23eSG1XzwiagLpFGWe
 EVCucO21LIypBMlGLFqXy/mS7SpcJGnX1ESYaznf9Lk74j0s0xYdzhpjr
 cKEEyTMffiqUek0wrRx0bd9oog4yRd/AyxBN1L0g2Ez1pPepPH36EVSwC
 cq8Q6+QsO2nQlJmeHGebnpTz29eBGBotOPB/2x9eTJLWLnDD/kBjXOwo4
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bLrVVClc
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 5/9] igc: Add support for
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



On 4/3/2025 11:26 pm, Vladimir Oltean wrote:
> On Mon, Mar 03, 2025 at 05:26:54AM -0500, Faizal Rahim wrote:
>> +static inline bool igc_fpe_is_verify_or_response(union igc_adv_rx_desc *rx_desc,
>> +						 unsigned int size)
>> +{
>> +	u32 status_error = le32_to_cpu(rx_desc->wb.upper.status_error);
>> +	int smd;
>> +
>> +	smd = FIELD_GET(IGC_RXDADV_STAT_SMD_TYPE_MASK, status_error);
>> +
>> +	return (smd == IGC_RXD_STAT_SMD_TYPE_V || smd == IGC_RXD_STAT_SMD_TYPE_R) &&
>> +		size == SMD_FRAME_SIZE;
>> +}
> 
> The NIC should explicitly not respond to frames which have an SMD-V but
> are not "verify" mPackets (7 octets of 0x55 + 1 octet SMD-V + 60 octets
> of 0x00 + mCRC - as per 802.3 definitions). Similarly, it should only
> treat SMD-R frames which contain 7 octets of 0x55 + 1 octet SMD-R + 60
> octets of 0x00 + mCRC as "respond" mPackets, and only advance its
> verification state machine based on those.
> 
> Specifically, it doesn't look like you are ensuring the packet payload
> contains 60 octets of zeroes. Is this something that the hardware
> already does for you, or is it something that needs further validation
> and differentiation in software?

The hardware doesn’t handle this, so the igc driver have to do it manually. 
I missed this handling, and Chwee Lin also noticed the issue while testing 
this patch series—it wasn’t rejecting SMD-V and SMD-R with a non-zero 
payload. I’ll update this patch to include the fix that Chwee Lin 
implemented and tested. Thanks.
