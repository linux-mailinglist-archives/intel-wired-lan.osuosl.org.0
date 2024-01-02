Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19858225AC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 00:47:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBA12404C1;
	Tue,  2 Jan 2024 23:47:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBA12404C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704239241;
	bh=GMKDrv2TWQYS8eJw1X3WWb6f8xYVpaFTlWdcOrvjZdE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gz+Ifm+/5iS6L9fCqNWjPf7DDyzf2Tj20KzcacIzPMxOaHSgZeYgYbEHj7J9I2A32
	 JEHn/sshqV2sk4xm8Ii3PiKioztn7i7VAIEglF3ttjkm52ZaR3j17SbXU6wNMe9cbd
	 QB9+jeo9TV2AK83Nsa8ldfeH0wLGv4ny8Doda6jxC/0c4WwhkOVdzesy14vCyv/m5S
	 tVMJCDFLGgA8UA0WIi52ncTQAFUP5dI7/Nz/F5ikc9MiFtdqSuG/BQevNZO5xN+p4F
	 PGVEpJSX+biM2NO5Dujhq3MdeS2eDBRtjmYIBEfkPUeQHRG+B9crgR7BKbHjV8QXdP
	 VyxLiI2TQcQgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dQ-6pSrOu8nP; Tue,  2 Jan 2024 23:47:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44FBD4032B;
	Tue,  2 Jan 2024 23:47:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44FBD4032B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E96D11BF31F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jan 2024 23:47:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B77DC4032B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jan 2024 23:47:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B77DC4032B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tmP31W3anmd1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jan 2024 23:47:13 +0000 (UTC)
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06C1C40148
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jan 2024 23:47:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06C1C40148
Received: by mail-oi1-x22b.google.com with SMTP id
 5614622812f47-3bbebe6191bso2860739b6e.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Jan 2024 15:47:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704239232; x=1704844032;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=GMKDrv2TWQYS8eJw1X3WWb6f8xYVpaFTlWdcOrvjZdE=;
 b=ezOYWDZRhjeQOG73dVi3jrBGqLQ5EmIALRo/zRAYAL0lct0Dp4PmVUDTaOL9ENtR4X
 yb/QPwVPPzrEo0ih2U+uktgqV2uOAkO2PcoD2xuPepiZ58+9Bk6aOSDSmWRFXzt+R2oq
 ii/7oybNufZjXmtoOhPYoUl9Y88N5gRwvjNYjr4TwwQ9v93NXnmzidfV9u7eZ0ov9g0R
 DDZTt4yJRISG0U1LX86gMMKr9VPHWsd9Y1iWpgPU04UZdGoBnaXx/c0rstWwlsM/fQUl
 B9YqKrIfRckSuVTYEH8cGZ3eAqEq1vgfcrwDodjyhgXWHVKZnHjLUgGBevAGlNzY3BGk
 XVhw==
X-Gm-Message-State: AOJu0YxJOjBOOem64g+jKw3h98hyLHNNpdc8K22Sc03xycCMd+VGS3gr
 XlS1YyX/B9bcwOcgIidIUhE=
X-Google-Smtp-Source: AGHT+IGE0vMKQ+WYeo2CAGrgEK2drSSEAo0VGfEugiSpQFAiEuMHoDBk8rh1SMJqlMSVeb7soWeSeA==
X-Received: by 2002:a05:6808:4ce:b0:3ba:10b1:7a24 with SMTP id
 a14-20020a05680804ce00b003ba10b17a24mr17971954oie.105.1704239231933; 
 Tue, 02 Jan 2024 15:47:11 -0800 (PST)
Received: from localhost ([98.97.37.198]) by smtp.gmail.com with ESMTPSA id
 h16-20020aa79f50000000b006d9ab1e15c3sm16974037pfr.129.2024.01.02.15.47.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jan 2024 15:47:11 -0800 (PST)
Date: Tue, 02 Jan 2024 15:47:10 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: Song Yoong Siang <yoong.siang.song@intel.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S . Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@google.com>, 
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, 
 Florian Bezdeka <florian.bezdeka@siemens.com>
Message-ID: <6594a07eb3d4_11e8620810@john.notmuch>
In-Reply-To: <20231215162158.951925-1-yoong.siang.song@intel.com>
References: <20231215162158.951925-1-yoong.siang.song@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1704239232; x=1704844032; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GMKDrv2TWQYS8eJw1X3WWb6f8xYVpaFTlWdcOrvjZdE=;
 b=mAUK7TTwy40zX2YVIoTzRV3g5jTakrhraM1N8omtFA7/vbObXCbuupVrQQAp3uERSw
 rmNSP5OsuSvsObjkt3Ksfs4kUQ/cyntdeh9bHc+xLyH1P9AgpvbZhxd6TCbeoz6qhnIY
 AXCXyOAVkmH/F6oP2Kgqvv5umYOQOERAZpaWcJpZO5hXHpvWfBwZ6GADr5jCkqdygiKH
 nQtf8K0W/4tNy0HGoo+J1UJZg8Cl5pgKPOw6mLiIRrPvQXh8r588dHKj2zdcc5hZg/0Y
 c2CyRFnO1yNbkzB2vy2+BUHeDnfmLbWcmKceaVGpJp28aepn6RwRfQMUue6CdltWJqyx
 8BKg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=mAUK7TTw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v1 1/1] igc: Add Tx hardware timestamp request for AF_XDP zero-copy
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

Song Yoong Siang wrote:
> This patch adds support to per-packet Tx hardware timestamp request to
> AF_XDP zero-copy packet via XDP Tx metadata framework. Please note that
> user needs to enable Tx HW timestamp capability via igc_ioctl() with
> SIOCSHWTSTAMP cmd before sending xsk Tx timestamp request.
> 
> Same as implementation in RX timestamp XDP hints kfunc metadata, Timer 0
> (adjustable clock) is used in xsk Tx hardware timestamp. i225/i226 have
> four sets of timestamping registers. A pointer named "xsk_pending_ts"
> is introduced to indicate the timestamping register is already occupied.
> Furthermore, the mentioned pointer also being used to hold the transmit
> completion until the tx hardware timestamp is ready. This is because for
> i225/i226, the timestamp notification comes some time after the transmit
> completion event. The driver will retrigger hardware irq to clean the
> packet after retrieve the tx hardware timestamp.
> 
> Besides, a pointer named "xsk_meta" is added into igc_tx_timestamp_request
> structure as a hook to the metadata location of the transmit packet. When
> a Tx timestamp interrupt happens, the interrupt handler will copy the
> value of Tx timestamp into metadata via xsk_tx_metadata_complete().
> 
> This patch is tested with tools/testing/selftests/bpf/xdp_hw_metadata
> on Intel ADL-S platform. Below are the test steps and results.
> 
> Command on DUT:
> sudo ./xdp_hw_metadata <interface name>
> sudo hwstamp_ctl -i <interface name> -t 1 -r 1
> sudo ./testptp -d /dev/ptp0 -s
> 
> Command on Link Partner:
> echo -n xdp | nc -u -q1 <destination IPv4 addr> 9091
> 
> Result:
> xsk_ring_cons__peek: 1
> 0x555b112ae958: rx_desc[6]->addr=86110 addr=86110 comp_addr=86110 EoP
> rx_hash: 0xBFDEC36E with RSS type:0x1
> HW RX-time:   1677762429190040955 (sec:1677762429.1900) delta to User RX-time sec:0.0001 (100.124 usec)
> XDP RX-time:   1677762429190123163 (sec:1677762429.1901) delta to User RX-time sec:0.0000 (17.916 usec)
> 0x555b112ae958: ping-pong with csum=404e (want c59e) csum_start=34 csum_offset=6
> 0x555b112ae958: complete tx idx=6 addr=6010
> HW TX-complete-time:   1677762429190173323 (sec:1677762429.1902) delta to User TX-complete-time sec:0.0100 (10035.884 usec)
> XDP RX-time:   1677762429190123163 (sec:1677762429.1901) delta to User TX-complete-time sec:0.0101 (10086.044 usec)
> HW RX-time:   1677762429190040955 (sec:1677762429.1900) delta to HW TX-complete-time sec:0.0001 (132.368 usec)
> 0x555b112ae958: complete rx idx=134 addr=86110

Curious was there any benchmarks run with and without this enabled?

> 
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      | 15 ++++
>  drivers/net/ethernet/intel/igc/igc_main.c | 88 ++++++++++++++++++++++-
>  drivers/net/ethernet/intel/igc/igc_ptp.c  | 42 ++++++++---
>  3 files changed, 134 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index ac7c861e83a0..c831dde01662 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -79,6 +79,9 @@ struct igc_tx_timestamp_request {
>  	u32 regl;              /* which TXSTMPL_{X} register should be used */
>  	u32 regh;              /* which TXSTMPH_{X} register should be used */
>  	u32 flags;             /* flags that should be added to the tx_buffer */
> +	u8 xsk_queue_index;    /* Tx queue which requesting timestamp */
> +	bool *xsk_pending_ts;  /* ref to tx ring for waiting timestamp event */

Is it really necessary to use a ref to a bool here if feels a
bit odd to me? Is this just to block the tx completion on the timestamp?

> +	struct xsk_tx_metadata_compl xsk_meta;	/* ref to xsk Tx metadata */
>  };
>  
>  struct igc_inline_rx_tstamps {
> @@ -319,6 +322,9 @@ void igc_disable_tx_ring(struct igc_ring *ring);
>  void igc_enable_tx_ring(struct igc_ring *ring);
>  int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
>  
> +/* AF_XDP TX metadata operations */
> +extern const struct xsk_tx_metadata_ops igc_xsk_tx_metadata_ops;
> +
>  /* igc_dump declarations */
>  void igc_rings_dump(struct igc_adapter *adapter);
>  void igc_regs_dump(struct igc_adapter *adapter);
> @@ -528,6 +534,7 @@ struct igc_tx_buffer {
>  	DEFINE_DMA_UNMAP_ADDR(dma);
>  	DEFINE_DMA_UNMAP_LEN(len);
>  	u32 tx_flags;
> +	bool xsk_pending_ts;
>  };
>  
>  struct igc_rx_buffer {
> @@ -553,6 +560,14 @@ struct igc_xdp_buff {
>  	struct igc_inline_rx_tstamps *rx_ts; /* data indication bit IGC_RXDADV_STAT_TSIP */
>  };
>  
> +struct igc_metadata_request {
> +	struct xsk_tx_metadata *meta;
> +	struct igc_adapter *adapter;
> +	struct igc_ring *tx_ring;
> +	bool *xsk_pending_ts;
> +	u32 *cmd_type;
> +};
> +
>  struct igc_q_vector {
>  	struct igc_adapter *adapter;    /* backlink */
>  	void __iomem *itr_register;
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 61db1d3bfa0b..311c85f2d82d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1553,7 +1553,7 @@ static bool igc_request_tx_tstamp(struct igc_adapter *adapter, struct sk_buff *s
>  	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
>  		struct igc_tx_timestamp_request *tstamp = &adapter->tx_tstamp[i];
>  
> -		if (tstamp->skb)
> +		if (tstamp->skb || tstamp->xsk_pending_ts)
>  			continue;
>  
>  		tstamp->skb = skb_get(skb);
> @@ -2878,6 +2878,71 @@ static void igc_update_tx_stats(struct igc_q_vector *q_vector,
>  	q_vector->tx.total_packets += packets;

[...]

> +static u64 igc_xsk_fill_timestamp(void *_priv)
> +{
> +	return *(u64 *)_priv;
> +}
> +
> +const struct xsk_tx_metadata_ops igc_xsk_tx_metadata_ops = {
> +	.tmo_request_timestamp		= igc_xsk_request_timestamp,
> +	.tmo_fill_timestamp		= igc_xsk_fill_timestamp,
> +};
> +
>  static void igc_xdp_xmit_zc(struct igc_ring *ring)
>  {
>  	struct xsk_buff_pool *pool = ring->xsk_pool;
> @@ -2899,6 +2964,8 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
>  	budget = igc_desc_unused(ring);
>  
>  	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
> +		struct igc_metadata_request meta_req;
> +		struct xsk_tx_metadata *meta = NULL;
>  		u32 cmd_type, olinfo_status;
>  		struct igc_tx_buffer *bi;
>  		dma_addr_t dma;
> @@ -2909,14 +2976,23 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
>  		olinfo_status = xdp_desc.len << IGC_ADVTXD_PAYLEN_SHIFT;
>  
>  		dma = xsk_buff_raw_get_dma(pool, xdp_desc.addr);
> +		meta = xsk_buff_get_metadata(pool, xdp_desc.addr);
>  		xsk_buff_raw_dma_sync_for_device(pool, dma, xdp_desc.len);
> +		bi = &ring->tx_buffer_info[ntu];
> +
> +		meta_req.adapter = netdev_priv(ring->netdev);
> +		meta_req.tx_ring = ring;
> +		meta_req.meta = meta;
> +		meta_req.cmd_type = &cmd_type;
> +		meta_req.xsk_pending_ts = &bi->xsk_pending_ts;
> +		xsk_tx_metadata_request(meta, &igc_xsk_tx_metadata_ops,
> +					&meta_req);
>  
>  		tx_desc = IGC_TX_DESC(ring, ntu);
>  		tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
>  		tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
>  		tx_desc->read.buffer_addr = cpu_to_le64(dma);
>  
> -		bi = &ring->tx_buffer_info[ntu];
>  		bi->type = IGC_TX_BUFFER_TYPE_XSK;
>  		bi->protocol = 0;
>  		bi->bytecount = xdp_desc.len;
> @@ -2979,6 +3055,13 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
>  		if (!(eop_desc->wb.status & cpu_to_le32(IGC_TXD_STAT_DD)))
>  			break;
>  
> +		/* Hold the completions while there's a pending tx hardware
> +		 * timestamp request from XDP Tx metadata.
> +		 */
> +		if (tx_buffer->type == IGC_TX_BUFFER_TYPE_XSK &&
> +		    tx_buffer->xsk_pending_ts)
> +			break;
> +
>  		/* clear next_to_watch to prevent false hangs */
>  		tx_buffer->next_to_watch = NULL;
>  
> @@ -6819,6 +6902,7 @@ static int igc_probe(struct pci_dev *pdev,
>  
>  	netdev->netdev_ops = &igc_netdev_ops;
>  	netdev->xdp_metadata_ops = &igc_xdp_metadata_ops;
> +	netdev->xsk_tx_metadata_ops = &igc_xsk_tx_metadata_ops;
>  	igc_ethtool_set_ops(netdev);
>  	netdev->watchdog_timeo = 5 * HZ;
>  
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 885faaa7b9de..b722bca40309 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -11,6 +11,7 @@
>  #include <linux/ktime.h>
>  #include <linux/delay.h>
>  #include <linux/iopoll.h>
> +#include <net/xdp_sock.h>
>  
>  #define INCVALUE_MASK		0x7fffffff
>  #define ISGN			0x80000000
> @@ -555,8 +556,15 @@ static void igc_ptp_clear_tx_tstamp(struct igc_adapter *adapter)
>  	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
>  		struct igc_tx_timestamp_request *tstamp = &adapter->tx_tstamp[i];
>  
> -		dev_kfree_skb_any(tstamp->skb);
> -		tstamp->skb = NULL;
> +		if (tstamp->skb) {
> +			dev_kfree_skb_any(tstamp->skb);
> +			tstamp->skb = NULL;
> +		} else if (tstamp->xsk_pending_ts) {
> +			*tstamp->xsk_pending_ts = false;
> +			tstamp->xsk_pending_ts = NULL;

If we really need this maybe a helper with set_tstamp and clear
tstamp would be nice? But they seem to come in pairs its either
false and NULL or true and set.

> +			igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index,
> +				       0);
> +		}
>  	}
>  
>  	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
> @@ -657,8 +665,15 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,

Thanks,
John
