Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB154A3F5F3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 14:30:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5945F40874;
	Fri, 21 Feb 2025 13:30:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uslrx3YmnjP3; Fri, 21 Feb 2025 13:30:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4199940847
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740144626;
	bh=+x+EaGcFloDpw0PN2mNyGlDOAS7KxkJW3uvqoSqKDms=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=esOHVb06RR/d6lx8hE+Bnliy3iSh0DfCq/WgQlLrSu5g/5dM3FGQINbgs2+IBic92
	 uWf+zoRlz6WKp1jAK8+E6kL86Owh2uu+g9RRASmitFhVVanlec3AeDXaIWVITvd1mA
	 0CILg6VtVD/+bJoifWn7VCRTxFWN4qzkwYKHBkMLg+m3+FhfJwY12Suk62TP23kM07
	 gQKo4cy2mtLszCyoIZ7/wEciG7IYoRUTtlUOh9BHAaTYbfgnfw12x+u6mNhxsVBGok
	 5j8cLTkyCXMaMm0Xa/2wI4+Odb4Jbb3bUL46DgpVm3i4NfiqbHCyGIf/JbCCTeYvsZ
	 ggvemvglAC35A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4199940847;
	Fri, 21 Feb 2025 13:30:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DB949194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 13:30:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBF30403F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 13:30:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7q9jRwjXOEkA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 13:30:23 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4965B40194
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4965B40194
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4965B40194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 13:30:23 +0000 (UTC)
X-CSE-ConnectionGUID: W9TtkCQ4Ra2M4uRw/3eeAg==
X-CSE-MsgGUID: 9xvnOuFkRieE0y4hxzC/KQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="58510786"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="58510786"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 05:30:22 -0800
X-CSE-ConnectionGUID: Yyg/CP+UTXO0VBzS4RNfow==
X-CSE-MsgGUID: k5Pn0+0ERjyzbmGZjjCwkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120614996"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.60.175])
 ([10.247.60.175])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 05:30:11 -0800
Message-ID: <3fbe3955-48b8-449d-93ff-2699a7efcd8d@linux.intel.com>
Date: Fri, 21 Feb 2025 21:30:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Furong Xu <0x1207@gmail.com>
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
 John Fastabend <john.fastabend@gmail.com>,
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
References: <20250220025349.3007793-1-faizal.abdul.rahim@linux.intel.com>
 <20250220025349.3007793-2-faizal.abdul.rahim@linux.intel.com>
 <20250221174249.000000cc@gmail.com> <20250221095651.npjpkoy2y6nehusy@skbuf>
 <20250221182409.00006fd1@gmail.com> <20250221104333.6s7nvn2wwco3axr3@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250221104333.6s7nvn2wwco3axr3@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740144623; x=1771680623;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=yrgPSzS1iVpcnrrmsNx/lFzIbzwcOZjCNokDJvcWQ3s=;
 b=HZCj/dQKuZRzKq1DCDpeuhhDwIxR+KItJUJOgcFqqxkWrI9OXYK3jpdN
 1zOG767p1yUoIK9UAID5xz9WA3LS6hcjt/r3jwPz0V38z+tdAdY2CdEuY
 9a6MeIhL1tFmxfhV6KixWBF7PtlLAwISquG4gYsKPyKFBjA5YJsNof1nT
 aOivWG1qTk32M2vA3tJzVpJioSe4mSnAJho4SZRQ1GzEn05nT3ewDoOlS
 vCjymgzd91fqe1+y+g71LcugEKYd5xe9WKuvqzcd627FYyKb/RCSDaYot
 3GWpAPW6imKkP6MErBmcySdncfwizN2jbkqCsxfEUm/iYkyaAXpkifWwK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HZCj/dQK
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/9] net: ethtool: mm:
 extract stmmac verification logic into common library
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



On 21/2/2025 6:43 pm, Vladimir Oltean wrote:
> On Fri, Feb 21, 2025 at 06:24:09PM +0800, Furong Xu wrote:
>> Your fix is better when link is up/down, so I vote verify_enabled.
> 
> Hmmm... I thought this was a bug in stmmac that was carried over to
> ethtool_mmsv, but it looks like it isn't.
> 
> In fact, looking at the original refactoring patch I had attached in
> this email:
> https://lore.kernel.org/netdev/20241217002254.lyakuia32jbnva46@skbuf/
> 
> these 2 lines in ethtool_mmsv_link_state_handle() didn't exist at all.
> 
> 	} else {
>>>>> 		mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
>>>>> 		mmsv->verify_retries = ETHTOOL_MM_MAX_VERIFY_RETRIES;
> 
> 		/* No link or pMAC not enabled */
> 		ethtool_mmsv_configure_pmac(mmsv, false);
> 		ethtool_mmsv_configure_tx(mmsv, false);
> 	}
> 
> Faizal, could you remind me why they were added? I don't see this
> explained in change logs.
> 

Hi Vladimir,

Yeah, it wasn’t there originally. I added that change because it failed the 
link down/link up test.
After a successful verification, if the link partner goes down, the status 
still shows ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED, which isn’t correct—so 
that’s why I added it.

Sorry for not mentioning it earlier. I assumed you’d check the delta 
between the original patch and the upstream one, my bad, should have 
mentioned this logic change.

Should I update it to the latest suggestion?



