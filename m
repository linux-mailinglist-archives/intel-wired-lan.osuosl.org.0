Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC7689BE26
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 13:31:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0447C40539;
	Mon,  8 Apr 2024 11:31:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OKjBWNmzy1gc; Mon,  8 Apr 2024 11:31:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FB5D40696
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712575914;
	bh=RHQoved3Ib0bbpwwG5PSbAdOu4VZwZ++KFamXa97I+Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vyzwhHiOSPqTTn+yjDCXgn3CU20N3TLzB8EWwbWyW8z9Pq1KfzP2HWO9J7CrGEbrf
	 Kv3IDey02RxKFsyY5f8lKdR892CgMboBW9TbN5jYd1dt2ignPLONWXUwB8mh3DbyoP
	 SnGwrjxbEFkScJAEctfNAdoPyGKhU21+oWn5GvhzRPyvvCiu/xdRI6/wElGxqvkSIn
	 m+wO1ZIQKaJvFWsSa92Rfk98p6iBkK3F9H0loFlsONrINiV3YisCQBhpvsK9r9p+c9
	 jZhk0ZjjhDV72Zd+9+BKDMzmLk62FyNpZ7sV5tbbvIzjjaU3wk4AneUAO+0X81Htte
	 H+rwOdL/brJcg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FB5D40696;
	Mon,  8 Apr 2024 11:31:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B04E11BF340
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:31:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A6ACF60AE6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:31:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JaAwkfeV6wFH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 11:31:49 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1ED0E60ADE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1ED0E60ADE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1ED0E60ADE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:31:48 +0000 (UTC)
X-CSE-ConnectionGUID: 4+1R/EyDSniNMiB4xslWuw==
X-CSE-MsgGUID: 1RfumElTQ6u4ajviwgmzvA==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7719681"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7719681"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 04:31:34 -0700
X-CSE-ConnectionGUID: iGy4cJ9WQnmXBWQchwnkWA==
X-CSE-MsgGUID: FcWLRQYLRUyMX0HX9CcM7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="20294008"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.12.48.215])
 ([10.12.48.215])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 04:31:30 -0700
Message-ID: <a27c0807-cd53-41e1-b54b-dc4dde623467@linux.intel.com>
Date: Mon, 8 Apr 2024 14:31:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Song Yoong Siang <yoong.siang.song@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@google.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20240325020928.1987947-1-yoong.siang.song@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240325020928.1987947-1-yoong.siang.song@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712575909; x=1744111909;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=D71Valr4oVt/G2WrBytJ8ydGge5jOgkT2K54j+Q+l8c=;
 b=P1GRzSKA1V+A7FmY2WHTO30clCnwh9MxJ4bmBqV5/AmHxs714uhHddvd
 cdGDpidFjYAO+WNHU392HVVZYfBs3l5G576fXc3beQVfCmOEdq3y5yqJt
 JN851/O9mS7nhVGvJ/ETtc/zm4UGSQr1EzQetsmk7fGC5kikrxlj/Y+UJ
 vnyAFCtbDMi2iAW1sSoDq5Kw4YaXDW/HegV5SfdHDCGQJ7Fdt2VjPkOej
 pusP40729gwt2o2YdJG7eqhkjv8NeMUfh4IImtRnPk4ZWTd+jrzMKsprw
 rcJFT2K6eLpfxT0mJxrN+eQ6ftlUqk4DVqSbmFi/+T2FPQmsfwtanoB5q
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P1GRzSKA
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v4 1/1] igc: Add Tx hardware timestamp request for AF_XDP zero-copy
 packet
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, xdp-hints@xdp-project.net,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/25/2024 04:09, Song Yoong Siang wrote:
> This patch adds support to per-packet Tx hardware timestamp request to
> AF_XDP zero-copy packet via XDP Tx metadata framework. Please note that
> user needs to enable Tx HW timestamp capability via igc_ioctl() with
> SIOCSHWTSTAMP cmd before sending xsk Tx hardware timestamp request.
> 
> Same as implementation in RX timestamp XDP hints kfunc metadata, Timer 0
> (adjustable clock) is used in xsk Tx hardware timestamp. i225/i226 have
> four sets of timestamping registers. *skb and *xsk_tx_buffer pointers
> are used to indicate whether the timestamping register is already occupied.
> 
> Furthermore, a boolean variable named xsk_pending_ts is used to hold the
> transmit completion until the tx hardware timestamp is ready. This is
> because, for i225/i226, the timestamp notification event comes some time
> after the transmit completion event. The driver will retrigger hardware irq
> to clean the packet after retrieve the tx hardware timestamp.
> 
> Besides, xsk_meta is added into struct igc_tx_timestamp_request as a hook
> to the metadata location of the transmit packet. When the Tx timestamp
> interrupt is fired, the interrupt handler will copy the value of Tx hwts
> into metadata location via xsk_tx_metadata_complete().
> 
> This patch is tested with tools/testing/selftests/bpf/xdp_hw_metadata
> on Intel ADL-S platform. Below are the test steps and results.
> 
> Test Step 1: Run xdp_hw_metadata app
>   ./xdp_hw_metadata <iface> > /dev/shm/result.log
> 
> Test Step 2: Enable Tx hardware timestamp
>   hwstamp_ctl -i <iface> -t 1 -r 1
> 
> Test Step 3: Run ptp4l and phc2sys for time synchronization
> 
> Test Step 4: Generate UDP packets with 1ms interval for 10s
>   trafgen --dev <iface> '{eth(da=<addr>), udp(dp=9091)}' -t 1ms -n 10000
> 
> Test Step 5: Rerun Step 1-3 with 10s iperf3 as background traffic
> 
> Test Step 6: Rerun Step 1-4 with 10s iperf3 as background traffic
> 
> Based on iperf3 results below, the impact of holding tx completion to
> throughput is not observable.
> 
> Result of last UDP packet (no. 10000) in Step 4:
> poll: 1 (0) skip=99 fail=0 redir=10000
> xsk_ring_cons__peek: 1
> 0x5640a37972d0: rx_desc[9999]->addr=f2110 addr=f2110 comp_addr=f2110 EoP
> rx_hash: 0x2049BE1D with RSS type:0x1
> HW RX-time:   1679819246792971268 (sec:1679819246.7930) delta to User RX-time sec:0.0000 (14.990 usec)
> XDP RX-time:   1679819246792981987 (sec:1679819246.7930) delta to User RX-time sec:0.0000 (4.271 usec)
> No rx_vlan_tci or rx_vlan_proto, err=-95
> 0x5640a37972d0: ping-pong with csum=ab19 (want 315b) csum_start=34 csum_offset=6
> 0x5640a37972d0: complete tx idx=9999 addr=f010
> HW TX-complete-time:   1679819246793036971 (sec:1679819246.7930) delta to User TX-complete-time sec:0.0001 (77.656 usec)
> XDP RX-time:   1679819246792981987 (sec:1679819246.7930) delta to User TX-complete-time sec:0.0001 (132.640 usec)
> HW RX-time:   1679819246792971268 (sec:1679819246.7930) delta to HW TX-complete-time sec:0.0001 (65.703 usec)
> 0x5640a37972d0: complete rx idx=10127 addr=f2110
> 
> Result of iperf3 without tx hwts request in step 5:
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.00  sec  2.74 GBytes  2.36 Gbits/sec    0             sender
> [  5]   0.00-10.05  sec  2.74 GBytes  2.34 Gbits/sec                  receiver
> 
> Result of iperf3 running parallel with trafgen command in step 6:
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.00  sec  2.74 GBytes  2.36 Gbits/sec    0             sender
> [  5]   0.00-10.04  sec  2.74 GBytes  2.34 Gbits/sec                  receiver
> 
> Co-developed-by: Lai Peter Jun Ann <jun.ann.lai@intel.com>
> Signed-off-by: Lai Peter Jun Ann <jun.ann.lai@intel.com>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> Acked-by: John Fastabend <john.fastabend@gmail.com>
> ---
> V1: https://patchwork.kernel.org/project/netdevbpf/patch/20231215162158.951925-1-yoong.siang.song@intel.com/
> V2: https://patchwork.kernel.org/project/netdevbpf/cover/20240301162348.898619-1-yoong.siang.song@intel.com/
> V3: https://patchwork.kernel.org/project/netdevbpf/cover/20240303083225.1184165-1-yoong.siang.song@intel.com/
> 
> changelog:
> V1 -> V2
> - In struct igc_tx_timestamp_request, keep a pointer to igc_tx_buffer,
>    instead of pointing xsk_pending_ts (Vinicius).
> - In struct igc_tx_timestamp_request, introduce buffer_type to indicate
>    whether skb or igc_tx_buffer pointer should be use (Vinicius).
> - In struct igc_metadata_request, remove igc_adapter pointer (Vinicius).
> - When request tx hwts, copy the value of cmd_type, instead of using
>    pointer (Vinicius).
> - For boolean variable, use true and false, instead of 1 and 0 (Vinicius).
> - In igc_xsk_request_timestamp(), make an early return if none of the 4 ts
>    registers is available (Vinicius).
> - Create helper functions to clear tx buffer and skb for tstamp (John).
> - Perform throughput test with mix traffic (Vinicius & John).
> V2 -> V3
> - Improve tstamp reg searching loop for better readability (John).
> - In igc_ptp_free_tx_buffer(), add comment to inform user that
>    tstamp->xsk_tx_buffer and tstamp->skb are in union (John).
> V3 -> V4
> - Add protection with xp_tx_metadata_enabled (Kurt & Maciej).
> ---
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  71 ++++++++------
>   drivers/net/ethernet/intel/igc/igc_main.c | 113 ++++++++++++++++++++--
>   drivers/net/ethernet/intel/igc/igc_ptp.c  |  51 ++++++++--
>   3 files changed, 195 insertions(+), 40 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
