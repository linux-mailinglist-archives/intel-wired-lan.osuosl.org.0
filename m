Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB9BA2C98E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 17:59:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6D0541707;
	Fri,  7 Feb 2025 16:59:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hTYeQmA6RU3h; Fri,  7 Feb 2025 16:59:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D4D041747
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738947568;
	bh=ehW9K4c48CwLY/BR+mDs7xsKqDAw7Qeg9IJQ7Ou3tbg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ht9bS3RoUbZe5nuMbOxnlTIN68Ht+5htr5Riksijr1r8VPlLiB5hTsMivyGAV6cFn
	 SFTlUFIDQFVUTQZlIwR+XzDhstb+zfZ38uOIESFe7aWVorYd1olTVJKxOWOUuzMXVi
	 fNwhd4CNu2mYdlbu1r0Jw6cSW4vcs0MYfY6gR92vNn2eUgyH7qwrbQgsNmzG4spMxD
	 4ooMVLO45cp9yNM93E05qFDl7bGm1y/2LVAu1liXamVaM8R1vVZ1eNk+OEHtge4/7H
	 Vbez3uQtPFEEUU218lfBJ6CZ7SiuJiELE1Wi5dB9EAelk1QpsXGc99+JxEoXiSQlrY
	 QvRa/0Kldg70A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D4D041747;
	Fri,  7 Feb 2025 16:59:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 64257E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 16:59:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4860D40773
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 16:59:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JYCGnmwRhKkj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 16:59:25 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 512F340917
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 512F340917
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 512F340917
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 16:59:25 +0000 (UTC)
X-CSE-ConnectionGUID: Jgkpm5xvRbiDgL2CBIjedg==
X-CSE-MsgGUID: /0P3fK1pThanLlWXpimgjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42436013"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="42436013"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 08:59:25 -0800
X-CSE-ConnectionGUID: xh97f0y8TjGtJI3gx/8V4A==
X-CSE-MsgGUID: uTOuguuVSR6n8OMUQ6ULHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116777275"
Received: from wkuan-mobl1.gar.corp.intel.com (HELO [10.247.64.179])
 ([10.247.64.179])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 08:59:15 -0800
Message-ID: <65c82c04-6c71-4120-aaa0-5d20e7eca0fe@linux.intel.com>
Date: Sat, 8 Feb 2025 00:59:12 +0800
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
 John Fastabend <john.fastabend@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Furong Xu <0x1207@gmail.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Petr Tesarik <petr@tesarici.cz>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
References: <20250205100524.1138523-1-faizal.abdul.rahim@linux.intel.com>
 <20250205100524.1138523-6-faizal.abdul.rahim@linux.intel.com>
 <20250205171234.cuscjpzdyc34ofbn@skbuf>
 <6bf3f4b2-efee-41fe-97b3-cb53eca4dfed@linux.intel.com>
 <20250206150410.u4rehwxnnuhtcfxr@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250206150410.u4rehwxnnuhtcfxr@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738947565; x=1770483565;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=h75b+TdsJ58/EyAZzGusAGULFypKzhj4oZJY0fm1wu8=;
 b=Cl6LlcBNDgMZSNek0LhjuIuQZShCcC3pLXwv1/7f5yf6Gp/KhAGfPojq
 da/LDB3NzjblgoxzfXSVDMafs9NJxcaT9v24jkuPFIfGSGw0VfQBKAz26
 bO1vCKlW/HLG5L38AlsOqBNRI4nxGkUYLYtbAB6s3WLNLjXIJDQxj9P+1
 1gVJQeQQEBLItlkV17dK4piTVbMr6fA59v8iieYP1hiU+lH8d7geQLLp8
 +nl7p5UqUUsHM6pbaEaNuL2x5zzKan931PM+iyYw5OlZkqdLv9PFQJ54L
 ZJv4IZ+yUoXAqSmDSUEzG57dkQiA8DfsJQr98m1PdEPwzCVE7S8qMFQWn
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cl6LlcBN
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/9] igc: Add support for
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



On 6/2/2025 11:04 pm, Vladimir Oltean wrote:
> On Thu, Feb 06, 2025 at 10:40:11PM +0800, Abdul Rahim, Faizal wrote:
>>
>> Hi Vladimir,
>>
>> Thanks for the quick review, appreciate your help.
>>
>> On 6/2/2025 1:12 am, Vladimir Oltean wrote:
>>> On Wed, Feb 05, 2025 at 05:05:20AM -0500, Faizal Rahim wrote:
>>>> This patch implements the "ethtool --set-mm" callback to trigger the
>>>> frame preemption verification handshake.
>>>>
>>>> Uses the MAC Merge Software Verification (mmsv) mechanism in ethtool
>>>> to perform the verification handshake for igc.
>>>> The structure fpe.mmsv is set by mmsv in ethtool and should remain
>>>> read-only for the driver.
>>>>
>>>> igc does not use two mmsv callbacks:
>>>> a) configure_tx()
>>>>      - igc lacks registers to configure FPE in the transmit direction.
>>>
>>> Yes, maybe, but it's still important to handle this. It tells you when
>>> the preemptible traffic classes should be sent as preemptible on the wire
>>> (i.e. when the verification is either disabled, or it succeeded).
>>>
>>> There is a selftest called manual_failed_verification() which supposedly
>>> tests this exact condition: if verification fails, then packets sent to
>>> TC0 are supposed to bump the eMAC's TX counters, even though TC0 is
>>> configured as preemptible. Otherwise stated: even if the tc program says
>>> that a certain traffic class is preemptible, you don't want to actually
>>> send preemptible packets if you haven't verified the link partner can
>>> handle them, since it will likely drop them on RX otherwise.
>>
>> Even though fpe in tx direction isn't set in igc, it still checks
>> ethtool_mmsv_is_tx_active() before setting a queue as preemptible.
>>
>> This is done in :
>> igc_tsn_enable_offload(struct igc_adapter *adapter) {
>> {
>> 	....
>> 	if (ethtool_mmsv_is_tx_active(&adapter->fpe.mmsv) &&
>>              ring->preemptible)
>> 	    txqctl |= IGC_TXQCTL_PREEMPTIBLE;
>>
>>
>> Wouldn't this handle the situation mentioned ?
>> Sorry if I miss something here.
> 
> And what if tx_active becomes true after you had already configured the
> queues with tc (and the above check caused IGC_TXQCTL_PREEMPTIBLE to not
> be set)? Shouldn't you set IGC_TXQCTL_PREEMPTIBLE now? Isn't
> ethtool_mmsv_configure_tx() exactly the function that notifies you of
> changes to tx_active, and hence, aren't you interested in setting up a
> callback for it?
> 

Ahh okay, got it. I sent v3 that also included this update. Thanks!
