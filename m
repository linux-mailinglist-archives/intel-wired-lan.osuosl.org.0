Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94312A3CFD6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 04:09:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24E4A40CF9;
	Thu, 20 Feb 2025 03:09:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hnWHTPqfhk-T; Thu, 20 Feb 2025 03:09:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1735940CE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740020949;
	bh=PuZQt7G6sgo8CGWDiMdFanq2N8yNV5r0IKaW70I99FI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BAi/41+27xxL78S4vBS+OvvaRMDWvRmDean+Qyz+j/bSpoqSsnG1ENYyXkryaGynl
	 opbFzxomkGO4rJBNFJNShLkhdbJB7ergQy9OHdr+etACyaqXb3MsAtPDHI7xE/ulAP
	 AXjgI+OAMeTdYdSy2ChnjQ8Ek0rhBCs/hGPeBigGdFp70PBOkFc7bWC+KLaC1AnQ4k
	 RowjDlfqt8ZPktKW8RmjTJpeDnJMmnnOEfXmxqGaUlWeUtyUePyB18gP5SSACUu99f
	 8cm9uqhZ8ucnfupSFCtKYKaJxehOl4CNwhFQGhPS5p5opaHCSlqXItBkFl0ImzP6DJ
	 Tifkgl0AnTdrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1735940CE1;
	Thu, 20 Feb 2025 03:09:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D43ECF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 03:09:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2D01B6078D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 03:09:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bnm7aXebclTe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 03:09:05 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1A15C60668
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A15C60668
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A15C60668
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 03:09:04 +0000 (UTC)
X-CSE-ConnectionGUID: 5GMgB5iNT3WTPmZEwjO4KQ==
X-CSE-MsgGUID: +Glf6LRGQ5OVkqFYWukJxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="44433452"
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; d="scan'208";a="44433452"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 19:09:03 -0800
X-CSE-ConnectionGUID: NtSLS7/pTki0JlkmiayN3A==
X-CSE-MsgGUID: phFnrHBBQ4u+5LiD6T/d6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; d="scan'208";a="114892383"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.77.104])
 ([10.247.77.104])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 19:08:56 -0800
Message-ID: <72c1a698-ba1e-44f6-a52f-ef03c7acba06@linux.intel.com>
Date: Thu, 20 Feb 2025 11:08:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
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
 "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250212220121.ici3qll66pfoov62@skbuf>
 <SJ0PR11MB586651473E7F571ECD54B13BE5FF2@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <SJ0PR11MB586651473E7F571ECD54B13BE5FF2@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740020944; x=1771556944;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=6Om/YQ9BDTJoSdcjeVlNE5mx2TxHgQH+HygQWJDZxTI=;
 b=WXFXm8vbeEQMlJ5dlpZo3xIcEZEntVRPy3q8yUwyKukTQv5EQX/9VjuQ
 7gMFmQLwmeMbUaKEO64sPLUjHS3uT/0hx+A+48xCJpPh5k/9Idg8Nw/X5
 W59N8FrzdbbwhofL4MSxwz270WiXYeIU7bt9w4TVlFdA2ALWSC0b9yk6V
 b1ETkEOCNDTbFrJNy59soe4Dx9hkEvNfyVFeUDVJnKCslnsg/3TntdsCK
 BZHijUhLxEe7yetixVOcozdwHC+jn/cZx6rtIamH92Ur8l8/aeaKrONuD
 lU3+8jKX6boWH/KAg7nvwlygZFqKDfsEbFnOegs4WfsUXYZr61CEdzJU+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WXFXm8vb
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/9] igc: Add support for
 Frame Preemption feature in IGC
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



On 13/2/2025 4:59 pm, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Vladimir Oltean
>> Sent: Wednesday, February 12, 2025 11:01 PM
>> To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
>> David S . Miller <davem@davemloft.net>; Eric Dumazet
>> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
>> <pabeni@redhat.com>; Maxime Coquelin <mcoquelin.stm32@gmail.com>;
>> Alexandre Torgue <alexandre.torgue@foss.st.com>; Simon Horman
>> <horms@kernel.org>; Russell King <linux@armlinux.org.uk>; Alexei
>> Starovoitov <ast@kernel.org>; Daniel Borkmann <daniel@iogearbox.net>;
>> Jesper Dangaard Brouer <hawk@kernel.org>; John Fastabend
>> <john.fastabend@gmail.com>; Furong Xu <0x1207@gmail.com>; Russell King
>> <rmk+kernel@armlinux.org.uk>; Serge Semin <fancer.lancer@gmail.com>;
>> Xiaolei Wang <xiaolei.wang@windriver.com>; Suraj Jaiswal
>> <quic_jsuraj@quicinc.com>; Kory Maincent <kory.maincent@bootlin.com>;
>> Gal Pressman <gal@nvidia.com>; Jesper Nilsson <jesper.nilsson@axis.com>;
>> Andrew Halaney <ahalaney@redhat.com>; Choong Yong Liang
>> <yong.liang.choong@linux.intel.com>; Kunihiko Hayashi
>> <hayashi.kunihiko@socionext.com>; Gomes, Vinicius
>> <vinicius.gomes@intel.com>; intel-wired-lan@lists.osuosl.org;
>> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; linux-stm32@st-md-
>> mailman.stormreply.com; linux-arm-kernel@lists.infradead.org;
>> bpf@vger.kernel.org
>> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/9] igc: Add support for
>> Frame Preemption feature in IGC
> 
> Please start commit title from slam letters:
> Igc: add ...

Hi Aleksandr,

I haven't updated this in v5 yet. Could you share any reference or 
guideline for this?

 From what I checked, the recently accepted patches in igc seem to follow a 
similar commit title format as my patches:

$ git log --oneline | grep igc
b65969856d4f igc: Link queues to NAPI instances
1a63399c13fe igc: Link IRQs to NAPI instances
8b6237e1f4d4 igc: Fix passing 0 to ERR_PTR in igc_xdp_run_prog()
484d3675f2aa igc: Allow hot-swapping XDP program
c75889081366 igc: Remove unused igc_read/write_pcie_cap_reg
121c3c6bc661 igc: Remove unused igc_read/write_pci_cfg wrappers
b37dba891b17 igc: Remove unused igc_acquire/release_nvm


