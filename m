Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2234FC921
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 02:13:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E734660B2D;
	Tue, 12 Apr 2022 00:13:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H-_R2ONwzbOm; Tue, 12 Apr 2022 00:13:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65ED4607CE;
	Tue, 12 Apr 2022 00:13:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5175F1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 00:13:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 494A04015D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 00:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VReAHpli1huw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Apr 2022 00:13:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A83A340004
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 00:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649722403; x=1681258403;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=5dBwwHcXKdUCKtqkRMelDzqzACrPk7AH5q78g9uzkKw=;
 b=l6h3ICSfRryCj041S2uvyY9lA+5UvCG141wcDFtl0uzu+LI0dCHGjw5c
 wv9Pc3hP/bC2m4V5XkeA7H9WOgB1Vat5ido/0sJUqiFmBGB1krIJCgoha
 1CJyU1PWapUUvwqJP8JwPCx4YPZ85rG5ee7mbgs0s5pNpUAa4nwH4xwvv
 k3OB6pbFg70zOctKL9nX9n5QYNIivyBWr6v92oY+OylvpeyHaTFp9qbA0
 iHJYL9uEhWDq/bHMG1D4Geg3b6kWSfoJIVnI3t4GArJiQpOHqS9CMeePC
 ZEvNu+SJfvoKo6m/seMmkeyhqBtkjYPfc6cLLf0vPsTME/DcfleTIRmp1 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="242830520"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="242830520"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 17:13:22 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="660257859"
Received: from vcostago-mobl3.jf.intel.com (HELO vcostago-mobl3)
 ([10.24.14.61])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 17:13:21 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20210628095950.ifbgzmsmpecmlol4@skbuf>
References: <20210626003314.3159402-1-vinicius.gomes@intel.com>
 <20210626003314.3159402-13-vinicius.gomes@intel.com>
 <20210628095950.ifbgzmsmpecmlol4@skbuf>
Date: Mon, 11 Apr 2022 17:13:21 -0700
Message-ID: <87r163cg66.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 12/12] igc: Add support
 for Frame Preemption verification
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> On Fri, Jun 25, 2021 at 05:33:14PM -0700, Vinicius Costa Gomes wrote:
>> Add support for sending/receiving Frame Preemption verification
>> frames.
>> 
>> The i225 hardware doesn't implement the process of verification
>> internally, this is left to the driver.
>> 
>> Add a simple implementation of the state machine defined in IEEE
>> 802.3-2018, Section 99.4.7.
>> 
>> For now, the state machine is started manually by the user, when
>> enabling verification. Example:
>> 
>> $ ethtool --set-frame-preemption IFACE disable-verify off
>> 
>> The "verified" condition is set to true when the SMD-V frame is sent,
>> and the SMD-R frame is received. So, it only tracks the transmission
>> side. This seems to be what's expected from IEEE 802.3-2018.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> ---
>>  drivers/net/ethernet/intel/igc/igc.h         |  15 ++
>>  drivers/net/ethernet/intel/igc/igc_defines.h |  13 ++
>>  drivers/net/ethernet/intel/igc/igc_ethtool.c |  20 +-
>>  drivers/net/ethernet/intel/igc/igc_main.c    | 216 +++++++++++++++++++
>>  4 files changed, 261 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
>> index 9b2ddcbf65fb..84234efed781 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -122,6 +122,13 @@ struct igc_ring {
>>  	struct xsk_buff_pool *xsk_pool;
>>  } ____cacheline_internodealigned_in_smp;
>>  
>> +enum frame_preemption_state {
>> +	FRAME_PREEMPTION_STATE_FAILED,
>> +	FRAME_PREEMPTION_STATE_DONE,
>> +	FRAME_PREEMPTION_STATE_START,
>> +	FRAME_PREEMPTION_STATE_SENT,
>> +};
>> +
>>  /* Board specific private data structure */
>>  struct igc_adapter {
>>  	struct net_device *netdev;
>> @@ -240,6 +247,14 @@ struct igc_adapter {
>>  		struct timespec64 start;
>>  		struct timespec64 period;
>>  	} perout[IGC_N_PEROUT];
>> +
>> +	struct delayed_work fp_verification_work;
>> +	unsigned long fp_start;
>> +	bool fp_received_smd_v;
>> +	bool fp_received_smd_r;
>> +	unsigned int fp_verify_cnt;
>> +	enum frame_preemption_state fp_tx_state;
>> +	bool fp_disable_verify;
>>  };
>>  
>>  void igc_up(struct igc_adapter *adapter);
>> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
>> index a2ea057d8e6e..cf46f5d5a505 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
>> @@ -268,6 +268,8 @@
>>  #define IGC_TXD_DTYP_C		0x00000000 /* Context Descriptor */
>>  #define IGC_TXD_POPTS_IXSM	0x01       /* Insert IP checksum */
>>  #define IGC_TXD_POPTS_TXSM	0x02       /* Insert TCP/UDP checksum */
>> +#define IGC_TXD_POPTS_SMD_V	0x10       /* Transmitted packet is a SMD-Verify */
>> +#define IGC_TXD_POPTS_SMD_R	0x20       /* Transmitted packet is a SMD-Response */
>>  #define IGC_TXD_CMD_EOP		0x01000000 /* End of Packet */
>>  #define IGC_TXD_CMD_IC		0x04000000 /* Insert Checksum */
>>  #define IGC_TXD_CMD_DEXT	0x20000000 /* Desc extension (0 = legacy) */
>> @@ -327,9 +329,20 @@
>>  
>>  #define IGC_RXDEXT_STATERR_LB	0x00040000
>>  
>> +#define IGC_RXD_STAT_SMD_V	0x2000  /* Received packet is SMD-Verify packet */
>> +#define IGC_RXD_STAT_SMD_R	0x4000  /* Received packet is SMD-Response packet */
>> +
>
> So the i225 gives you the ability to select from multiple
> Start-of-mPacket-Delimiter values on a per-TX descriptor basis?
> And this is in addition to configuring that TX ring as preemptable I
> guess? Because I notice that you're sending on the TX ring affine to the
> current CPU that the verification work item is running on (which you
> don't check anywhere that it is configured as going to the pMAC or
> not).

Yeah, talking to the hardware folks, those descriptors are handled
differently by the hardware.

> And on RX, it always gives you the kind of SMD that the packet had
> (including the classic SFD for express packets)?
> Cool.

I would use another word, but yeah :-)

>
> It would be nice if I could connect back to back an i225 board with an
> NXP LS1028A to see if the verification state machines pass both ways (on
> LS1028A it is 100% hardware based, we just enable/disable the feature
> and we can monitor the state changes via an interrupt).
>

My life would be easier if that were the case here.

>>  /* Advanced Receive Descriptor bit definitions */
>>  #define IGC_RXDADV_STAT_TSIP	0x08000 /* timestamp in packet */
>>  
>> +#define IGC_RXDADV_STAT_SMD_TYPE_MASK	0x06000
>> +#define IGC_RXDADV_STAT_SMD_TYPE_SHIFT	13
>> +
>> +#define IGC_SMD_TYPE_SFD		0x0
>> +#define IGC_SMD_TYPE_SMD_V		0x1
>> +#define IGC_SMD_TYPE_SMD_R		0x2
>> +#define IGC_SMD_TYPE_COMPLETE		0x3
>> +
>>  #define IGC_RXDEXT_STATERR_L4E		0x20000000
>>  #define IGC_RXDEXT_STATERR_IPE		0x40000000
>>  #define IGC_RXDEXT_STATERR_RXE		0x80000000
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> index 84d5afe92154..f52a7be3af66 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> @@ -1649,6 +1649,8 @@ static int igc_ethtool_get_preempt(struct net_device *netdev,
>>  
>>  	fpcmd->enabled = adapter->frame_preemption_active;
>>  	fpcmd->add_frag_size = adapter->add_frag_size;
>> +	fpcmd->verified = adapter->fp_tx_state == FRAME_PREEMPTION_STATE_DONE;
>> +	fpcmd->disable_verify = adapter->fp_disable_verify;
>>  
>>  	return 0;
>>  }
>> @@ -1664,10 +1666,22 @@ static int igc_ethtool_set_preempt(struct net_device *netdev,
>>  		return -EINVAL;
>>  	}
>>  
>> -	adapter->frame_preemption_active = fpcmd->enabled;
>> -	adapter->add_frag_size = fpcmd->add_frag_size;
>> +	if (!fpcmd->disable_verify && adapter->fp_disable_verify) {
>> +		adapter->fp_tx_state = FRAME_PREEMPTION_STATE_START;
>> +		schedule_delayed_work(&adapter->fp_verification_work, msecs_to_jiffies(10));
>
> Not sure how much you'd like to tune this, but the spec has a
> configurable verifyTime between 1 ms and 128 ms. You chose the default
> value, so we should be ok for now.

We can add a configurable for that later, via ethtool for example.

>
>> +	}
>>  
>> -	return igc_tsn_offload_apply(adapter);
>> +	adapter->fp_disable_verify = fpcmd->disable_verify;
>> +
>> +	if (adapter->frame_preemption_active != fpcmd->enabled ||
>> +	    adapter->add_frag_size != fpcmd->add_frag_size) {
>> +		adapter->frame_preemption_active = fpcmd->enabled;
>> +		adapter->add_frag_size = fpcmd->add_frag_size;
>> +
>> +		return igc_tsn_offload_apply(adapter);
>> +	}
>> +
>> +	return 0;
>>  }
>>  
>>  static int igc_ethtool_begin(struct net_device *netdev)
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 20dac04a02f2..ed55bd13e4a1 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -28,6 +28,11 @@
>>  #define IGC_XDP_TX		BIT(1)
>>  #define IGC_XDP_REDIRECT	BIT(2)
>>  
>> +#define IGC_FP_TIMEOUT msecs_to_jiffies(100)
>> +#define IGC_MAX_VERIFY_CNT 3
>> +
>> +#define IGC_FP_SMD_FRAME_SIZE 60
>> +
>>  static int debug = -1;
>>  
>>  MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
>> @@ -2169,6 +2174,79 @@ static int igc_xdp_init_tx_descriptor(struct igc_ring *ring,
>>  	return 0;
>>  }
>>  
>> +static int igc_fp_init_smd_frame(struct igc_ring *ring, struct igc_tx_buffer *buffer,
>> +				 struct sk_buff *skb)
>> +{
>> +	dma_addr_t dma;
>> +	unsigned int size;
>> +
>> +	size = skb_headlen(skb);
>> +
>> +	dma = dma_map_single(ring->dev, skb->data, size, DMA_TO_DEVICE);
>> +	if (dma_mapping_error(ring->dev, dma)) {
>> +		netdev_err_once(ring->netdev, "Failed to map DMA for TX\n");
>> +		return -ENOMEM;
>> +	}
>> +
>> +	buffer->skb = skb;
>> +	buffer->protocol = 0;
>> +	buffer->bytecount = skb->len;
>> +	buffer->gso_segs = 1;
>> +	buffer->time_stamp = jiffies;
>> +	dma_unmap_len_set(buffer, len, skb->len);
>> +	dma_unmap_addr_set(buffer, dma, dma);
>> +
>> +	return 0;
>> +}
>> +
>> +static int igc_fp_init_tx_descriptor(struct igc_ring *ring,
>> +				     struct sk_buff *skb, int type)
>> +{
>> +	struct igc_tx_buffer *buffer;
>> +	union igc_adv_tx_desc *desc;
>> +	u32 cmd_type, olinfo_status;
>> +	int err;
>> +
>> +	if (!igc_desc_unused(ring))
>> +		return -EBUSY;
>> +
>> +	buffer = &ring->tx_buffer_info[ring->next_to_use];
>> +	err = igc_fp_init_smd_frame(ring, buffer, skb);
>> +	if (err)
>> +		return err;
>> +
>> +	cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
>> +		   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
>> +		   buffer->bytecount;
>> +	olinfo_status = buffer->bytecount << IGC_ADVTXD_PAYLEN_SHIFT;
>> +
>> +	switch (type) {
>> +	case IGC_SMD_TYPE_SMD_V:
>> +		olinfo_status |= (IGC_TXD_POPTS_SMD_V << 8);
>> +		break;
>> +	case IGC_SMD_TYPE_SMD_R:
>> +		olinfo_status |= (IGC_TXD_POPTS_SMD_R << 8);
>> +		break;
>> +	default:
>> +		return -EINVAL;
>> +	}
>> +
>> +	desc = IGC_TX_DESC(ring, ring->next_to_use);
>> +	desc->read.cmd_type_len = cpu_to_le32(cmd_type);
>> +	desc->read.olinfo_status = cpu_to_le32(olinfo_status);
>> +	desc->read.buffer_addr = cpu_to_le64(dma_unmap_addr(buffer, dma));
>> +
>> +	netdev_tx_sent_queue(txring_txq(ring), skb->len);
>> +
>> +	buffer->next_to_watch = desc;
>> +
>> +	ring->next_to_use++;
>> +	if (ring->next_to_use == ring->count)
>> +		ring->next_to_use = 0;
>> +
>> +	return 0;
>> +}
>> +
>>  static struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter,
>>  					    int cpu)
>>  {
>> @@ -2299,6 +2377,19 @@ static void igc_update_rx_stats(struct igc_q_vector *q_vector,
>>  	q_vector->rx.total_bytes += bytes;
>>  }
>>  
>> +static int igc_rx_desc_smd_type(union igc_adv_rx_desc *rx_desc)
>> +{
>> +	u32 status = le32_to_cpu(rx_desc->wb.upper.status_error);
>> +
>> +	return (status & IGC_RXDADV_STAT_SMD_TYPE_MASK)
>> +		>> IGC_RXDADV_STAT_SMD_TYPE_SHIFT;
>> +}
>> +
>> +static bool igc_check_smd_frame(struct igc_rx_buffer *rx_buffer, unsigned int size)
>> +{
>> +	return size == 60;
>
> You should probably also verify that the contents is 60 octets of zeroes (sans the mCRC)?
>

Yeah, I will add some checks for that.

>> +}
>> +
>>  static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>>  {
>>  	unsigned int total_bytes = 0, total_packets = 0;
>> @@ -2315,6 +2406,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>>  		ktime_t timestamp = 0;
>>  		struct xdp_buff xdp;
>>  		int pkt_offset = 0;
>> +		int smd_type;
>>  		void *pktbuf;
>>  
>>  		/* return some buffers to hardware, one at a time is too slow */
>> @@ -2346,6 +2438,22 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>>  			size -= IGC_TS_HDR_LEN;
>>  		}
>>  
>> +		smd_type = igc_rx_desc_smd_type(rx_desc);
>> +
>> +		if (smd_type == IGC_SMD_TYPE_SMD_V || smd_type == IGC_SMD_TYPE_SMD_R) {
>
> I guess the performance people will love you for this change. You should
> probably guard it by an "if (unlikely(disableVerify == false))" condition.
>

Will add the unlikely().

>> +			if (igc_check_smd_frame(rx_buffer, size)) {
>> +				adapter->fp_received_smd_v = smd_type == IGC_SMD_TYPE_SMD_V;
>> +				adapter->fp_received_smd_r = smd_type == IGC_SMD_TYPE_SMD_R;
>> +				schedule_delayed_work(&adapter->fp_verification_work, 0);
>> +			}
>> +
>> +			/* Advance the ring next-to-clean */
>> +			igc_is_non_eop(rx_ring, rx_desc);
>> +
>> +			cleaned_count++;
>> +			continue;
>> +		}
>> +
>>  		if (!skb) {
>>  			xdp_init_buff(&xdp, truesize, &rx_ring->xdp_rxq);
>>  			xdp_prepare_buff(&xdp, pktbuf - igc_rx_offset(rx_ring),
>> @@ -5607,6 +5715,107 @@ static int igc_tsn_enable_qbv_scheduling(struct igc_adapter *adapter,
>>  	return igc_tsn_offload_apply(adapter);
>>  }
>>  
>> +/* I225 doesn't send the SMD frames automatically, we need to handle
>> + * them ourselves.
>> + */
>> +static int igc_xmit_smd_frame(struct igc_adapter *adapter, int type)
>> +{
>> +	int cpu = smp_processor_id();
>> +	struct netdev_queue *nq;
>> +	struct igc_ring *ring;
>> +	struct sk_buff *skb;
>> +	void *data;
>> +	int err;
>> +
>> +	if (!netif_running(adapter->netdev))
>> +		return -ENOTCONN;
>> +
>> +	/* FIXME: rename this function to something less specific, as
>> +	 * it can be used outside XDP.
>> +	 */
>> +	ring = igc_xdp_get_tx_ring(adapter, cpu);
>> +	nq = txring_txq(ring);
>> +
>> +	skb = alloc_skb(IGC_FP_SMD_FRAME_SIZE, GFP_KERNEL);
>> +	if (!skb)
>> +		return -ENOMEM;
>> +
>> +	data = skb_put(skb, IGC_FP_SMD_FRAME_SIZE);
>> +	memset(data, 0, IGC_FP_SMD_FRAME_SIZE);
>> +
>> +	__netif_tx_lock(nq, cpu);
>> +
>> +	err = igc_fp_init_tx_descriptor(ring, skb, type);
>> +
>> +	igc_flush_tx_descriptors(ring);
>> +
>> +	__netif_tx_unlock(nq);
>> +
>> +	return err;
>> +}
>> +
>> +static void igc_fp_verification_work(struct work_struct *work)
>> +{
>> +	struct delayed_work *dwork = to_delayed_work(work);
>> +	struct igc_adapter *adapter;
>> +	int err;
>> +
>> +	adapter = container_of(dwork, struct igc_adapter, fp_verification_work);
>> +
>> +	if (adapter->fp_disable_verify)
>> +		goto done;
>> +
>> +	switch (adapter->fp_tx_state) {
>> +	case FRAME_PREEMPTION_STATE_START:
>> +		adapter->fp_received_smd_r = false;
>> +		err = igc_xmit_smd_frame(adapter, IGC_SMD_TYPE_SMD_V);
>> +		if (err < 0)
>> +			netdev_err(adapter->netdev, "Error sending SMD-V frame\n");
>
> On TX error should you really advance to the STATE_SENT?
>

We tried to send a SMD-V frame and it failed, the error was probably
transient (unable to allocate memory) and it's going to be retried later.

>> +
>> +		adapter->fp_tx_state = FRAME_PREEMPTION_STATE_SENT;
>> +		adapter->fp_start = jiffies;
>> +		schedule_delayed_work(&adapter->fp_verification_work, IGC_FP_TIMEOUT);
>> +		break;
>> +
>> +	case FRAME_PREEMPTION_STATE_SENT:
>> +		if (adapter->fp_received_smd_r) {
>> +			adapter->fp_tx_state = FRAME_PREEMPTION_STATE_DONE;
>> +			adapter->fp_received_smd_r = false;
>> +			break;
>> +		}
>> +
>> +		if (time_is_before_jiffies(adapter->fp_start + IGC_FP_TIMEOUT)) {
>> +			adapter->fp_verify_cnt++;
>> +			netdev_warn(adapter->netdev, "Timeout waiting for SMD-R frame\n");
>> +
>> +			if (adapter->fp_verify_cnt > IGC_MAX_VERIFY_CNT) {
>> +				adapter->fp_verify_cnt = 0;
>> +				adapter->fp_tx_state = FRAME_PREEMPTION_STATE_FAILED;
>> +				netdev_err(adapter->netdev,
>> +					   "Exceeded number of attempts for frame preemption verification\n");
>> +			} else {
>> +				adapter->fp_tx_state = FRAME_PREEMPTION_STATE_START;
>> +			}
>> +			schedule_delayed_work(&adapter->fp_verification_work, IGC_FP_TIMEOUT);
>> +		}
>> +
>> +		break;
>> +
>> +	case FRAME_PREEMPTION_STATE_FAILED:
>> +	case FRAME_PREEMPTION_STATE_DONE:
>> +		break;
>> +	}
>> +
>> +done:
>> +	if (adapter->fp_received_smd_v) {
>> +		err = igc_xmit_smd_frame(adapter, IGC_SMD_TYPE_SMD_R);
>> +		if (err < 0)
>> +			netdev_err(adapter->netdev, "Error sending SMD-R frame\n");
>> +
>> +		adapter->fp_received_smd_v = false;
>> +	}
>> +}
>> +
>>  static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
>>  			void *type_data)
>>  {
>> @@ -6023,6 +6232,7 @@ static int igc_probe(struct pci_dev *pdev,
>>  
>>  	INIT_WORK(&adapter->reset_task, igc_reset_task);
>>  	INIT_WORK(&adapter->watchdog_task, igc_watchdog_task);
>> +	INIT_DELAYED_WORK(&adapter->fp_verification_work, igc_fp_verification_work);
>>  
>>  	/* Initialize link properties that are user-changeable */
>>  	adapter->fc_autoneg = true;
>> @@ -6044,6 +6254,12 @@ static int igc_probe(struct pci_dev *pdev,
>>  
>>  	igc_ptp_init(adapter);
>>  
>> +	/* FIXME: This sets the default to not do the verification
>> +	 * automatically, when we have support in multiple
>> +	 * controllers, this default can be changed.
>> +	 */
>> +	adapter->fp_disable_verify = true;
>> +
>
> Hmmmmm. So we need to instruct our users to explicitly enable
> verification in their ethtool-based scripts, since the default values
> will vary wildly from one vendor to another. On LS1028A I see no reason
> why verification would be disabled by default.
>

Reading 99.4.3 (IEEE 802.3-2018) again, that "Verification may be disabled"
seems to imply that it should be enabled by default.

I will change this.

>>  	/* reset the hardware with the new settings */
>>  	igc_reset(adapter);
>>  
>> -- 
>> 2.32.0
>> 

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
