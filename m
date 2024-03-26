Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2E688B76B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 03:29:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BDA840770;
	Tue, 26 Mar 2024 02:29:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IxCi5ZU2qt6W; Tue, 26 Mar 2024 02:29:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2AB340773
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711420151;
	bh=bXrSxgtP7el5B/ve+S8nbnonEaRZlU6TCiJKw0OawWY=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HHkh2K5m+Z3PqCTtHItEMua21hejjV6in89c53Qq/RvyGl55TBeQ3qcp3mwXJGUD6
	 hHKeZkScpI/1lwM7XdwqQR4kOqYEmrIrh0Q5aDi6RAbcNnrna3xyksQQphNjHpedQW
	 SNqA6YPMlJII2f9M41voiXcioVzX3wFzshF51J10WI17eNNiv7W8m035h4QpCJdJ4S
	 FfmL6vNv/MLRGL34F/f3QWlYf2H1bRBtTk8i4qRvkr/f8tdIve5qYxAmLlW8T0MjER
	 c9/QgJMOrLsuKNH//yamDHhMoym/oOXwj13aq+OK6f+tdRszPiuvadczaHUM4lMdS/
	 HRKJdPTWT2TsA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2AB340773;
	Tue, 26 Mar 2024 02:29:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E88DD1BF316
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 02:29:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E182F40CB3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 02:29:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v1LEJn--RYvp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 02:29:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9949841176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9949841176
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9949841176
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 02:29:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="17595649"
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="17595649"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 19:29:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="20480787"
Received: from unknown (HELO vcostago-mobl3) ([10.124.221.210])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 19:29:05 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Song Yoong Siang <yoong.siang.song@intel.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@google.com>, Florian
 Bezdeka <florian.bezdeka@siemens.com>, Kurt Kanzenbach
 <kurt@linutronix.de>, Maciej Fijalkowski <maciej.fijalkowski@intel.com>
In-Reply-To: <20240325020928.1987947-1-yoong.siang.song@intel.com>
References: <20240325020928.1987947-1-yoong.siang.song@intel.com>
Date: Mon, 25 Mar 2024 19:29:04 -0700
Message-ID: <87h6gtpvyn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711420146; x=1742956146;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DzbYHLscCUSnCTsi0cUZu2GsJUAq1ezQAtFLnEB1Pis=;
 b=KfzYT6QyRaisMRIc8px1e6Rn8KQodiqRHncCdBhy4KkeqMrDeZr1uM84
 alug+x2F217ErFdwlCt0Q1gXN4M697TpOeBfGkLtFTFc3Zve8EakxSVnF
 CQ2Md5A4IA9E6xvosT2F80xa1LT1KKWHGpHgHwRb02G0Urih1idkLqRro
 xSbuxjbPSl8JJVO9o+5+dIZnn4DYluo3feZTO3y16Hxy+txLTJyQ1z473
 VY3TFkMJCCCeKgXsH3gwp+zEdY27/nbPe9GXKNkvCzZMT0pEAfEa+hqZo
 vXRPa1BHpzsy54rgGVMoJi8qohegSG+bfXh2xFagdnfENYnAuVkRvI04E
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KfzYT6Qy
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

Song Yoong Siang <yoong.siang.song@intel.com> writes:

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
>  ./xdp_hw_metadata <iface> > /dev/shm/result.log
>
> Test Step 2: Enable Tx hardware timestamp
>  hwstamp_ctl -i <iface> -t 1 -r 1
>
> Test Step 3: Run ptp4l and phc2sys for time synchronization
>
> Test Step 4: Generate UDP packets with 1ms interval for 10s
>  trafgen --dev <iface> '{eth(da=<addr>), udp(dp=9091)}' -t 1ms -n 10000
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
>   instead of pointing xsk_pending_ts (Vinicius).
> - In struct igc_tx_timestamp_request, introduce buffer_type to indicate
>   whether skb or igc_tx_buffer pointer should be use (Vinicius).
> - In struct igc_metadata_request, remove igc_adapter pointer (Vinicius).
> - When request tx hwts, copy the value of cmd_type, instead of using
>   pointer (Vinicius).
> - For boolean variable, use true and false, instead of 1 and 0 (Vinicius).
> - In igc_xsk_request_timestamp(), make an early return if none of the 4 ts
>   registers is available (Vinicius).
> - Create helper functions to clear tx buffer and skb for tstamp (John).
> - Perform throughput test with mix traffic (Vinicius & John).
> V2 -> V3
> - Improve tstamp reg searching loop for better readability (John).
> - In igc_ptp_free_tx_buffer(), add comment to inform user that
>   tstamp->xsk_tx_buffer and tstamp->skb are in union (John).
> V3 -> V4
> - Add protection with xp_tx_metadata_enabled (Kurt & Maciej).
> ---
> ---
>  drivers/net/ethernet/intel/igc/igc.h      |  71 ++++++++------
>  drivers/net/ethernet/intel/igc/igc_main.c | 113 ++++++++++++++++++++--
>  drivers/net/ethernet/intel/igc/igc_ptp.c  |  51 ++++++++--
>  3 files changed, 195 insertions(+), 40 deletions(-)
>

[...]

> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 885faaa7b9de..1bb026232efc 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -11,6 +11,7 @@
>  #include <linux/ktime.h>
>  #include <linux/delay.h>
>  #include <linux/iopoll.h>
> +#include <net/xdp_sock_drv.h>
>  
>  #define INCVALUE_MASK		0x7fffffff
>  #define ISGN			0x80000000
> @@ -545,6 +546,30 @@ static void igc_ptp_enable_rx_timestamp(struct igc_adapter *adapter)
>  	wr32(IGC_TSYNCRXCTL, val);
>  }
>  
> +static void igc_ptp_free_tx_buffer(struct igc_adapter *adapter,
> +				   struct igc_tx_timestamp_request *tstamp)
> +{
> +	if (tstamp->buffer_type == IGC_TX_BUFFER_TYPE_XSK) {
> +		/* Release the transmit completion */
> +		tstamp->xsk_tx_buffer->xsk_pending_ts = false;
> +
> +		/* Note: tstamp->skb and tstamp->xsk_tx_buffer are in union.
> +		 * By setting tstamp->xsk_tx_buffer to NULL, tstamp->skb will
> +		 * become NULL as well.
> +		 */
> +		tstamp->xsk_tx_buffer = NULL;
> +		tstamp->buffer_type = 0;
> +
> +		/* Trigger txrx interrupt for transmit completion */
> +		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
> +
> +		return;
> +	}
> +
> +	dev_kfree_skb_any(tstamp->skb);
> +	tstamp->skb = NULL;
> +}
> +
>  static void igc_ptp_clear_tx_tstamp(struct igc_adapter *adapter)
>  {
>  	unsigned long flags;
> @@ -555,8 +580,8 @@ static void igc_ptp_clear_tx_tstamp(struct igc_adapter *adapter)
>  	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
>  		struct igc_tx_timestamp_request *tstamp = &adapter->tx_tstamp[i];
>  
> -		dev_kfree_skb_any(tstamp->skb);
> -		tstamp->skb = NULL;
> +		if (tstamp->skb)
> +			igc_ptp_free_tx_buffer(adapter, tstamp);
>  	}
>  

More a question: you are potentially triggering an interrupt from
igc_ptp_clear_tx_tstamp() (igc_xsk_wakeup()) which can be called from
igc_down(). So, how does it work when there's a pending timestamp and
you remove the igc module? (example of a situation that it might be
problematic).


Cheers,
-- 
Vinicius
