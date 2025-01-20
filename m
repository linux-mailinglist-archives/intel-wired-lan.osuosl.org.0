Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2BDA1674D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jan 2025 08:25:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 193E460ADC;
	Mon, 20 Jan 2025 07:25:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aMBFIXp6jtAQ; Mon, 20 Jan 2025 07:25:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D915360A65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737357916;
	bh=NuIlwQIppzZiZANUiNYhJ9syYVM/GdZezT8FryIqca8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SWQx4zlND4cqspw5Rt6u0LcCyk3c4iq3UAuMn/E8qcX7PvrdmMf0ksJHuCuzg8sII
	 dexnxDK2bEkVFMiCVM06j23NUfhPWavixROjcCgFROfqBK9fBk0i8DoBrgFk4pSlMN
	 ioXJKIlwgJsc+lVQ+LIL4uOD38Yo7ettoJ6QMd85wW45Z+Yv9siSRIeluyTB8g0yEM
	 mHD9Nn2PXUTxm9ssZtiu2t2kWzUz6F/R6Pi+ImnpB6DbPDPQSrfELVmTsf6ak2Qu02
	 LY4s/xAY8VWo9A/C/bf7Q3E2qXNNfmEjhJCdIGlZ7YKLpRcY/rXxbrBROXXYdDOvXw
	 Moamf4IcEc7dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D915360A65;
	Mon, 20 Jan 2025 07:25:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 85B70959
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 07:25:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7F33260AEC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 07:25:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JZptV6FwI-Dn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jan 2025 07:25:14 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=yong.liang.choong@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AC31660ADC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC31660ADC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC31660ADC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 07:25:13 +0000 (UTC)
X-CSE-ConnectionGUID: vGLKDJwIQquKV7GsqJHx3w==
X-CSE-MsgGUID: wcJia+W0Rb+ca6eF3ZyY5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="37601862"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="37601862"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 23:25:12 -0800
X-CSE-ConnectionGUID: vyQrnkD1RKuZNocxarZucg==
X-CSE-MsgGUID: 4NfaGBcnSKmXfEo/7NNF7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="106224522"
Received: from unknown (HELO [10.107.2.109]) ([10.107.2.109])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 23:25:02 -0800
Message-ID: <20fa0b55-405c-4b7c-8c10-1f8d71c956b9@linux.intel.com>
Date: Mon, 20 Jan 2025 15:24:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>,
 Song Yoong Siang <yoong.siang.song@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Willem de Bruijn <willemb@google.com>,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Donald Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Bjorn Topel <bjorn@kernel.org>, Magnus Karlsson <magnus.karlsson@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Joe Damato <jdamato@fastly.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Xuan Zhuo
 <xuanzhuo@linux.alibaba.com>, Mina Almasry <almasrymina@google.com>,
 Daniel Jurgens <danielj@nvidia.com>, Andrii Nakryiko <andrii@kernel.org>,
 Eduard Zingerman <eddyz87@gmail.com>, Mykola Lysenko <mykolal@fb.com>,
 Martin KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Shuah Khan <shuah@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, bpf@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, intel-wired-lan@lists.osuosl.org,
 xdp-hints@xdp-project.net
References: <20250116155350.555374-1-yoong.siang.song@intel.com>
 <20250116155350.555374-5-yoong.siang.song@intel.com>
 <84770113-2546-4035-8bd4-bf9cedcfb00f@linux.intel.com>
Content-Language: en-US
From: Choong Yong Liang <yong.liang.choong@linux.intel.com>
In-Reply-To: <84770113-2546-4035-8bd4-bf9cedcfb00f@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737357913; x=1768893913;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=k4ykqooUPTL/roXw/fFpliH2XGWlf7OfDPK35rRh9HA=;
 b=Yy4zCkjScxKE/31Z8LuC1hzfDmi3Ba3qksEZBqe3zzAOTkQJPZny9SIG
 Xv24gcEtk5tQ4YKn98a11s/pOonob70UcPV1Qfq1IGEsFMJJHQUh7xkvL
 zPcpnXghJ6ccDihKLiTO2jsXjDvgeofT9l4xhxqAoROr75/LKvjEGf8M1
 JlwQnP7Yj556oVLnGgKuTnzrvDyBcXXbPx4zXg7SmHXFwFWMuxjj65zQT
 Ela2XeHkh5o9FLHPpNTc5phEw9SVK9wPMQEKCLf9qKcedOFXWICGArhyJ
 SmMqCbUcpfEbNXhOooPJYFrMLtCMFXRtAEoOzh8nhNijZUpqAF5Mdya6M
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Yy4zCkjS
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 4/4] igc: Add launch time
 support to XDP ZC
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



On 20/1/2025 2:25 pm, Abdul Rahim, Faizal wrote:
> 
> To be cautious, could we perform a stress test by sending a higher number 
> of packets with launch time? For example, we could send 200 packets, each 
> configured with a launch time, and verify that the driver continues to 
> function correctly afterward.
> 
I agree on this point. Could you perform the same stress test on the STMMAC 
driver as well?
