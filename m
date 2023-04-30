Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BA66F27AA
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Apr 2023 07:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42BF584208;
	Sun, 30 Apr 2023 05:03:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42BF584208
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682831004;
	bh=D1ZrEfGncOsrxh3l9y+j6o/bHIeALEmNdvWF+jIGGy0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8I6/m0v+gU9LlJilXvSgF+9UIPsEqUYE4R6s8MW3J/gQAyOug3zgs4C6SDn0L49w4
	 Hqffe24jrtuUA4jBTmMQr8P042KGsm+ehchduYN5iL+pEwW9HyxheiHjorFE3aTUeC
	 0t0WS3BeDfjuY95uFagWjV429vpQA5FY55K5WdYLDc5NxaxZoc2tjzqnhIAAtD0mvG
	 YFi//GEOXPZ7SGJIB0U0SgAqME0rvCEINV8iFaF8EiSh02nWYQUBeEj62e/8HYYvLp
	 JWyxeQ+0es4fZFKinUfBkJ+fxu/TRtEiCnpE47i2JOsKfJidZT+euvJIlwAgWRbTCW
	 YdjpEuFErW7YA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LC4wo6gXeS3u; Sun, 30 Apr 2023 05:03:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 642E484153;
	Sun, 30 Apr 2023 05:03:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 642E484153
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9AE4B1BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 05:03:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6FF1B60FA4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 05:03:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FF1B60FA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PGchuLSFE1q9 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 30 Apr 2023 05:03:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE76560F91
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE76560F91
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 05:03:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10695"; a="411108967"
X-IronPort-AV: E=Sophos;i="5.99,238,1677571200"; d="scan'208";a="411108967"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2023 22:03:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10695"; a="941652643"
X-IronPort-AV: E=Sophos;i="5.99,238,1677571200"; d="scan'208";a="941652643"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.36])
 ([10.13.12.36])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2023 22:03:08 -0700
Message-ID: <7733369a-c3a6-89d4-fb32-ab2bcdc1def0@linux.intel.com>
Date: Sun, 30 Apr 2023 08:03:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Song Yoong Siang <yoong.siang.song@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Vedang Patel <vedang.patel@intel.com>, Jithu Joseph
 <jithu.joseph@intel.com>, Andre Guedes <andre.guedes@intel.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 Stanislav Fomichev <sdf@google.com>
References: <20230413151222.1864307-1-yoong.siang.song@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230413151222.1864307-1-yoong.siang.song@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682830995; x=1714366995;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=q7SEF4bArk/xxwIRZ987yc+xrZpMH3afDQGaBkiO/LA=;
 b=EfFc+EaXNGNfs9iV4vt9Ow16OpkrOuxBVu82jt2OApTno4NTjDIllNNt
 vDWA6ZTBw3LaonwfIHfw0OUHb70RapzPj2tQJHAnyH46gt8n2fJ06ehwK
 6VaQk5YMi/dTTH1Fcfhln3vEFNZKL8GsXYMO0FW7+WQ5LGwPSdsbnW/ba
 yNMCNzE7z3L+c+0IXbJzrx9zimvt7Dx/u8uBguMAbQ6vG2s3gDR6Oh/p3
 tFSmxK4whzZNjGX1zgXMK8seNzpKzIK8ItV6+O6akqlW32HNXMu/G8bHj
 BDB6rrQAdx4lEy6eB31xtA1hIdfRyn8AfLNfn8u0IRxtjFO+7GFzKe3i2
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EfFc+EaX
Subject: Re: [Intel-wired-lan] [PATCH net 1/1] igc: read before write to
 SRRCTL register
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: xdp-hints@xdp-project.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/13/2023 18:12, Song Yoong Siang wrote:
> igc_configure_rx_ring() function will be called as part of XDP program
> setup. If Rx hardware timestamp is enabled prio to XDP program setup,
> this timestamp enablement will be overwritten when buffer size is
> written into SRRCTL register.
> 
> Thus, this commit read the register value before write to SRRCTL
> register. This commit is tested by using xdp_hw_metadata bpf selftest
> tool. The tool enables Rx hardware timestamp and then attach XDP program
> to igc driver. It will display hardware timestamp of UDP packet with
> port number 9092. Below are detail of test steps and results.
> 
> Command on DUT:
>    sudo ./xdp_hw_metadata <interface name>
> 
> Command on Link Partner:
>    echo -n skb | nc -u -q1 <destination IPv4 addr> 9092
> 
> Result before this patch:
>    skb hwtstamp is not found!
> 
> Result after this patch:
>    found skb hwtstamp = 1677762212.590696226
> 
> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
> Cc: <stable@vger.kernel.org> # 5.14+
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_base.h | 7 +++++--
>   drivers/net/ethernet/intel/igc/igc_main.c | 5 ++++-
>   2 files changed, 9 insertions(+), 3 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
