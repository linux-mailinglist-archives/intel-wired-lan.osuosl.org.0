Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3B78716C1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 08:28:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFB5441556;
	Tue,  5 Mar 2024 07:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VQ84GmnvB3FN; Tue,  5 Mar 2024 07:28:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B34DA4154F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709623727;
	bh=C19xVfg0KLYr8EP6zEpizlMEhgKh1IgzrajosiTRwjI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=efeoIQiidMkv7fNqR6FoDniNQnwzu9eL4l61NJ1MIPhajoWtBcZtWx3TAC0eqLi6d
	 yTT2+uGB8MLUdaXRcn571XYvFfyqLxPnF+jXQ3YllyRJvO1fne5KFpRz6wHX/OVRfO
	 4jxxvXX2zMylGUKXzG9kNIQqGU/zGNR+kAHt2/NGUOuqHU9STN4p9mCl4VLbibB+ab
	 LAZCoXTu69Ct8tMSzsUXxKIIS78NOgKdIwwEKTjIBncubarTc/Dxvc975/lE20IQKJ
	 GiqlHtByZ5pUm9eZ35Fu6IupZth0X5Mt7gWjw7UUxNu4g67F9XkLSW8H/6+dYexsbz
	 9yvRA/7hpGzKw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B34DA4154F;
	Tue,  5 Mar 2024 07:28:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 96AC71BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 07:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 80CC5822CB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 07:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vuJN5USYgIve for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 07:28:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 262FF822C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 262FF822C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 262FF822C6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 07:28:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="15585531"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="15585531"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 23:28:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9354222"
Received: from agoll-mobl.ger.corp.intel.com (HELO [10.245.176.64])
 ([10.245.176.64])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 23:28:37 -0800
Message-ID: <76621a84-d5c5-40c2-ac51-db0ec57be472@linux.intel.com>
Date: Tue, 5 Mar 2024 09:28:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Florian Kauer <florian.kauer@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>, Andre Guedes
 <andre.guedes@intel.com>, Vedang Patel <vedang.patel@intel.com>
References: <20240219090843.9307-1-florian.kauer@linutronix.de>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240219090843.9307-1-florian.kauer@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709623725; x=1741159725;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=0CSkO4V5DXVEFBREqHoKNNDYXRtYsWIaR34aGSPoS2E=;
 b=GF24+S+jjEuGQBI2TXflz1dPK2U/VSohlbL82IuAcMZwZuSovadlZ/7t
 EVa7WCxXWx0+nD3gZsHr07qoVcGJdYwm41/2/31JwFwgchwsQ+OuQoxYx
 iBysIw6NlH19jkVeqb2Kajh20zAWvs3OgIb9u3yTKqQX0aZsECET9LEX7
 nfeO6WgANK5r8X1onzcrinJdMF1DP/AEzYnCrZujIqR/yqa2agiI2zIMs
 fxqzuAqTEAvBR7qj/GZhtY2SvcxzOcVwJZmi1fiKPhv/2WWmbz1HpBAwF
 29LWokfhEXDTaDSROl8vDsmro3b0vRccXvrEU5Ih926/gYC1FQalAgs7y
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GF24+S+j
Subject: Re: [Intel-wired-lan] [PATCH net 1/1] igc: avoid returning frame
 twice in XDP_REDIRECT
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/19/2024 11:08, Florian Kauer wrote:
> When a frame can not be transmitted in XDP_REDIRECT
> (e.g. due to a full queue), it is necessary to free
> it by calling xdp_return_frame_rx_napi.
> 
> However, this is the reponsibility of the caller of
> the ndo_xdp_xmit (see for example bq_xmit_all in
> kernel/bpf/devmap.c) and thus calling it inside
> igc_xdp_xmit (which is the ndo_xdp_xmit of the igc
> driver) as well will lead to memory corruption.
> 
> In fact, bq_xmit_all expects that it can return all
> frames after the last successfully transmitted one.
> Therefore, break for the first not transmitted frame,
> but do not call xdp_return_frame_rx_napi in igc_xdp_xmit.
> This is equally implemented in other Intel drivers
> such as the igb.
> 
> There are two alternatives to this that were rejected:
> 1. Return num_frames as all the frames would have been
>     transmitted and release them inside igc_xdp_xmit.
>     While it might work technically, it is not what
>     the return value is meant to repesent (i.e. the
>     number of SUCCESSFULLY transmitted packets).
> 2. Rework kernel/bpf/devmap.c and all drivers to
>     support non-consecutively dropped packets.
>     Besides being complex, it likely has a negative
>     performance impact without a significant gain
>     since it is anyway unlikely that the next frame
>     can be transmitted if the previous one was dropped.
> 
> The memory corruption can be reproduced with
> the following script which leads to a kernel panic
> after a few seconds.  It basically generates more
> traffic than a i225 NIC can transmit and pushes it
> via XDP_REDIRECT from a virtual interface to the
> physical interface where frames get dropped.
> 
>     #!/bin/bash
>     INTERFACE=enp4s0
>     INTERFACE_IDX=`cat /sys/class/net/$INTERFACE/ifindex`
> 
>     sudo ip link add dev veth1 type veth peer name veth2
>     sudo ip link set up $INTERFACE
>     sudo ip link set up veth1
>     sudo ip link set up veth2
> 
>     cat << EOF > redirect.bpf.c
> 
>     SEC("prog")
>     int redirect(struct xdp_md *ctx)
>     {
>         return bpf_redirect($INTERFACE_IDX, 0);
>     }
> 
>     char _license[] SEC("license") = "GPL";
>     EOF
>     clang -O2 -g -Wall -target bpf -c redirect.bpf.c -o redirect.bpf.o
>     sudo ip link set veth2 xdp obj redirect.bpf.o
> 
>     cat << EOF > pass.bpf.c
> 
>     SEC("prog")
>     int pass(struct xdp_md *ctx)
>     {
>         return XDP_PASS;
>     }
> 
>     char _license[] SEC("license") = "GPL";
>     EOF
>     clang -O2 -g -Wall -target bpf -c pass.bpf.c -o pass.bpf.o
>     sudo ip link set $INTERFACE xdp obj pass.bpf.o
> 
>     cat << EOF > trafgen.cfg
> 
>     {
>       /* Ethernet Header */
>       0xe8, 0x6a, 0x64, 0x41, 0xbf, 0x46,
>       0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
>       const16(ETH_P_IP),
> 
>       /* IPv4 Header */
>       0b01000101, 0,   # IPv4 version, IHL, TOS
>       const16(1028),   # IPv4 total length (UDP length + 20 bytes (IP header))
>       const16(2),      # IPv4 ident
>       0b01000000, 0,   # IPv4 flags, fragmentation off
>       64,              # IPv4 TTL
>       17,              # Protocol UDP
>       csumip(14, 33),  # IPv4 checksum
> 
>       /* UDP Header */
>       10,  0, 1, 1,    # IP Src - adapt as needed
>       10,  0, 1, 2,    # IP Dest - adapt as needed
>       const16(6666),   # UDP Src Port
>       const16(6666),   # UDP Dest Port
>       const16(1008),   # UDP length (UDP header 8 bytes + payload length)
>       csumudp(14, 34), # UDP checksum
> 
>       /* Payload */
>       fill('W', 1000),
>     }
>     EOF
> 
>     sudo trafgen -i trafgen.cfg -b3000MB -o veth1 --cpp
> 
> Fixes: 4ff320361092 ("igc: Add support for XDP_REDIRECT action")
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 13 ++++++-------
>   1 file changed, 6 insertions(+), 7 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
