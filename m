Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCA9A55E3C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 04:21:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91E25411C0;
	Fri,  7 Mar 2025 03:21:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XE68FQAZFUZP; Fri,  7 Mar 2025 03:21:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A23A841123
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741317687;
	bh=gdn4lX+kFQyWfA92qDWyZd8yYqxG7AVp6aPd2bjWTIg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iTLWtHxCc87PX9xU9l7LmaMH32A7Ka+gp7GKGkNwX6quUvABaPMvhfW7rXy++HhgJ
	 pKlXR467/4lwZACBKCV7Hq6kcJCvoErQ3M+zqKYhPZkzfANbqjLeX7ZestfHvZMe++
	 JLjXowETZanCFekoEZ82MhONZj1wq0GIpS65f2hQnwHTS5niNDwrSQRtzmm0GhE7w4
	 FKBYH7GpJfexKzsK3Y++rrboBOyLv3AMzgtjp8yVGrlYmQeyectzrbFfrqLaWlKPN7
	 eoWLAjkGm1ir6xBe2PbVsP7U8wXMZ7yHJKDMDTuyOJPdlE6akH5msCsX2yzj9xI5nw
	 Zot8HJGwlHodw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A23A841123;
	Fri,  7 Mar 2025 03:21:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9474095F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 03:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71F7A41123
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 03:21:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ig_CHDY9Y-qn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 03:21:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4E916410EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E916410EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4E916410EC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 03:21:24 +0000 (UTC)
X-CSE-ConnectionGUID: DDybZPXlSRaMkJCvEwxwRQ==
X-CSE-MsgGUID: gv8f9l3bRRaZGrTQTUMo2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="45164204"
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="45164204"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 19:21:23 -0800
X-CSE-ConnectionGUID: iDlWGXgBRa+qU7VDX2G/zg==
X-CSE-MsgGUID: jWEeBpZ0ToCaX0rjX89xkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="119388873"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.100.177])
 ([10.247.100.177])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 19:20:57 -0800
Message-ID: <df5f2ff0-2ead-4074-a40e-8a2fc9b63339@linux.intel.com>
Date: Fri, 7 Mar 2025 11:20:53 +0800
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
 <20250305130026.642219-12-faizal.abdul.rahim@linux.intel.com>
 <20250305130026.642219-12-faizal.abdul.rahim@linux.intel.com>
 <20250306004809.q2x565rys5zja6kh@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250306004809.q2x565rys5zja6kh@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741317684; x=1772853684;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Jg5XeRxyuKD825uDbJYMZSOpqP9zMmh8t5nyw3/cSXk=;
 b=eVKYI77CQg1VBIAf3OxuOQrecRd1/4XNcA6wNVhduzIa7gX9tb5hf+Vu
 k9i6sqD8EQzt5uLhJ7LZ4ZDpO6FNEaw8jYbOCYKOh80+WJm+qZmWQrJwV
 Cit4b+ZOWvSjS4ZM/Xx368Uek4dio7dQJUK2agC17J6ARiioZRQ93hlUb
 sEpFfS3ZLcNDyUGqakmanJAmSxVSuMkAQimAZ0TFyMhv8/ldc/5ygpw+y
 FFwAYIYIP3lnCD+cUckJG9nmRV/48zOD28NQ8qSragERDKxpRPNf1AEaA
 zftZQxxU0h8593rqSZeIiGc4SsPI+Oe/Or7XcOhV79q1AfTzLgE+flQMZ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eVKYI77C
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 11/11] igc: add support to
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



On 6/3/2025 8:48 am, Vladimir Oltean wrote:
> On Wed, Mar 05, 2025 at 08:00:26AM -0500, Faizal Rahim wrote:
>> +/* Received out of order packets with SMD-C */
>> +#define IGC_PRMEXCPRCNT_OOO_SMDC			0x000000FF
>> +/* Received out of order packets with SMD-C and wrong Frame CNT */
>> +#define IGC_PRMEXCPRCNT_OOO_FRAME_CNT			0x0000FF00
>> +/* Received out of order packets with SMD-C and wrong Frag CNT */
>> +#define IGC_PRMEXCPRCNT_OOO_FRAG_CNT			0x00FF0000
>> +/* Received packets with SMD-S and wrong Frag CNT and Frame CNT */
>> +#define IGC_PRMEXCPRCNT_MISS_FRAME_FRAG_CNT		0xFF000000
>>   
>> +/**
>> + * igc_ethtool_get_frame_ass_error - Get the frame assembly error count.
>> + * @reg_value: Register value for IGC_PRMEXCPRCNT
>> + * Return: The count of frame assembly errors.
>> + */
>> +static u64 igc_ethtool_get_frame_ass_error(u32 reg_value)
>> +{
>> +	u32 ooo_frame_cnt, ooo_frag_cnt; /* Out of order statistics */
>> +	u32 miss_frame_frag_cnt;
>> +
>> +	ooo_frame_cnt = FIELD_GET(IGC_PRMEXCPRCNT_OOO_FRAME_CNT, reg_value);
>> +	ooo_frag_cnt = FIELD_GET(IGC_PRMEXCPRCNT_OOO_FRAG_CNT, reg_value);
>> +	miss_frame_frag_cnt = FIELD_GET(IGC_PRMEXCPRCNT_MISS_FRAME_FRAG_CNT, reg_value);
>> +
>> +	return ooo_frame_cnt + ooo_frag_cnt + miss_frame_frag_cnt;
>> +}
> 
> These counters are quite small (8 bits each). What is their behavior
> once they reach 255? Saturate? Truncate? Do they clear on read?
> 
Hi Vladimir,

These are part of the statistic registers, which in IGC, reset upon read. 
When they reach their maximum value, each field remain at 0xFF.


