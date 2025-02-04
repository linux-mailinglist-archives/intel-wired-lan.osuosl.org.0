Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD87FA269DB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 02:34:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F13D410A3;
	Tue,  4 Feb 2025 01:34:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PyNmOXPksVeC; Tue,  4 Feb 2025 01:34:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5818B410AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738632878;
	bh=LqjQqm2oEPOCgSSBDV/Hy82J8MN7Uwz4VNtZy4dVLaY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=huOaFgAMav7czokmv1H2N+705saWfbXrcVO3UbZ+r2OTJHO3veeUoZc0UppL9nZDf
	 6pgRkU2VFMaN8njwJt0kp709QjSuJAqDO4hxfDAIsmmJj9LbkcLz0vNdfb8DcVqKIh
	 sAIDzkjGIe74kBVfqDotk8TKtHzaWItGGseKqaHvHu7Pm3S0nuKAm/tb4Af7q32Y5I
	 J736rHktXtPllBsmcCGIo3BAWRB/85aqOy0KFuZKqJpZg76Aa7xSA+SyoZjY8EUwCd
	 c2XVY4GFo3hDAoH9fIO3tFpI3oCOI9gE9jpVlj/q+qI1ye8MV2o+mljHasSsQVZEtR
	 CWgRU6n7AsYqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5818B410AE;
	Tue,  4 Feb 2025 01:34:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B76012F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 01:34:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B6BE4012F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 01:34:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n3iUu-7dDF-T for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 01:34:34 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=yong.liang.choong@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 24D6C40159
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24D6C40159
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24D6C40159
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 01:34:33 +0000 (UTC)
X-CSE-ConnectionGUID: GOF+F80uTjiNl3iiB9e5GQ==
X-CSE-MsgGUID: EncgLve0R+aSvaSMg+D1Wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="49795746"
X-IronPort-AV: E=Sophos;i="6.13,257,1732608000"; d="scan'208";a="49795746"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 17:34:18 -0800
X-CSE-ConnectionGUID: 4tSta66CTFq8So3/FmHf2g==
X-CSE-MsgGUID: 907kdKGuTAyI/dVJbUURBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="115441422"
Received: from choongyo-mobl.gar.corp.intel.com (HELO [10.247.124.71])
 ([10.247.124.71])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 17:34:06 -0800
Message-ID: <e0d34c88-dd8d-402d-bc67-6b9c4f8effaf@linux.intel.com>
Date: Tue, 4 Feb 2025 09:34:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Song Yoong Siang <yoong.siang.song@intel.com>,
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Bouska Zdenek <zdenek.bouska@siemens.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, bpf@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, intel-wired-lan@lists.osuosl.org,
 xdp-hints@xdp-project.net
References: <20250204004907.789330-1-yoong.siang.song@intel.com>
 <20250204004907.789330-4-yoong.siang.song@intel.com>
Content-Language: en-US
From: Choong Yong Liang <yong.liang.choong@linux.intel.com>
In-Reply-To: <20250204004907.789330-4-yoong.siang.song@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738632874; x=1770168874;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=cTqZc7KMQfir834dyF7dto20NWb+pLw52qL9bC6G4tA=;
 b=Wmg4YqnuxIy7WN2mstdVl9xbxhjOGREa0InYgMpmrs7in0zvMKOUqlr7
 hTGCaF44je1K7HhyBjY2/hEn1K8Z6l6egN/8ik2hVK8tdScZhV8eoJ/lw
 RJ+jGiugeHycBVeitdACGZWm8Hq8n3Tc2Qs5r8vDvfop6wF8hLawiRssj
 HA69T+Hr9XXKQ5UQB0XIXYqQb7pHExHGAys2Mz6WhX3UV2aHB//8Xw9WT
 J67XRUW/FvA5DU/Xg8VAag09qY/uNSWnSiZ9+OHaYrWT5/1IBM3TAR7DW
 dxE2DQcty041wDVS+V3Xtmdks03w2WJRf1XbzAwu9b1oFNkKtua8zgB5a
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Wmg4Yqnu
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v7 3/5] net: stmmac: Add
 launch time support to XDP ZC
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



On 4/2/2025 8:49 am, Song Yoong Siang wrote:
> Enable launch time (Time-Based Scheduling) support for XDP zero copy via
> the XDP Tx metadata framework.
> 
> This patch has been tested with tools/testing/selftests/bpf/xdp_hw_metadata
> on Intel Tiger Lake platform. Below are the test steps and result.
> 
> Test 1: Send a single packet with the launch time set to 1 s in the future.
> 
> Test steps:
> 1. On the DUT, start the xdp_hw_metadata selftest application:
>     $ sudo ./xdp_hw_metadata enp0s30f4 -l 1000000000 -L 1
> 
> 2. On the Link Partner, send a UDP packet with VLAN priority 1 to port 9091
>     of the DUT.
> 
> Result:
> When the launch time is set to 1 s in the future, the delta between the
> launch time and the transmit hardware timestamp is 16.963 us, as shown in
> printout of the xdp_hw_metadata application below.
>    0x55b5864717a8: rx_desc[4]->addr=88100 addr=88100 comp_addr=88100 EoP
>    No rx_hash, err=-95
>    HW RX-time:   1734579065767717328 (sec:1734579065.7677)
>                  delta to User RX-time sec:0.0004 (375.624 usec)
>    XDP RX-time:   1734579065768004454 (sec:1734579065.7680)
>                   delta to User RX-time sec:0.0001 (88.498 usec)
>    No rx_vlan_tci or rx_vlan_proto, err=-95
>    0x55b5864717a8: ping-pong with csum=5619 (want 0000)
>                    csum_start=34 csum_offset=6
>    HW RX-time:   1734579065767717328 (sec:1734579065.7677)
>                  delta to HW Launch-time sec:1.0000 (1000000.000 usec)
>    0x55b5864717a8: complete tx idx=4 addr=4018
>    HW Launch-time:   1734579066767717328 (sec:1734579066.7677)
>                      delta to HW TX-complete-time sec:0.0000 (16.963 usec)
>    HW TX-complete-time:   1734579066767734291 (sec:1734579066.7677)
>                           delta to User TX-complete-time sec:0.0001
>                           (130.408 usec)
>    XDP RX-time:   1734579065768004454 (sec:1734579065.7680)
>                   delta to User TX-complete-time sec:0.9999
>                  (999860.245 usec)
>    HW RX-time:   1734579065767717328 (sec:1734579065.7677)
>                  delta to HW TX-complete-time sec:1.0000 (1000016.963 usec)
>    0x55b5864717a8: complete rx idx=132 addr=88100
> 
> Test 2: Send 1000 packets with a 10 ms interval and the launch time set to
>          500 us in the future.
> 
> Test steps:
> 1. On the DUT, start the xdp_hw_metadata selftest application:
>     $ sudo chrt -f 99 ./xdp_hw_metadata enp0s30f4 -l 500000 -L 1 > \
>       /dev/shm/result.log
> 
> 2. On the Link Partner, send 1000 UDP packets with a 10 ms interval and
>     VLAN priority 1 to port 9091 of the DUT.
> 
> Result:
> When the launch time is set to 500 us in the future, the average delta
> between the launch time and the transmit hardware timestamp is 13.854 us,
> as shown in the analysis of /dev/shm/result.log below. The XDP launch time
> works correctly in sending 1000 packets continuously.
>    Min delta: 08.410 us
>    Avr delta: 13.854 us
>    Max delta: 17.076 us
>    Total packets forwarded: 1000
> 
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>

Reviewed-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
