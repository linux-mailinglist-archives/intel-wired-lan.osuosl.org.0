Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D7A9C9609
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 00:20:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B797407DA;
	Thu, 14 Nov 2024 23:20:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o5YqVwPswp2r; Thu, 14 Nov 2024 23:20:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE5424059E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731626435;
	bh=3hhbJF3cqdx94LP72fGPi0HCh8zamC8+LLvMwRDyU2Y=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wPB3/0jbyXzuNsuD3CWbiDHKACyph2u0YiwndYMmvp2kaylZFvbyYPO1+gFM9VDAA
	 IsROCDFsnTcavIrozHYfX6rVkdNJme27z4VyNdvezj6SHMQiTRDgaIUP2MPHf7XuPk
	 gMxeZp0070AEhpqrd/XTt3z2+ARWd7hx5isBrEkehkl/q8SCJBAYZEVFbDSNyPW1T+
	 OYNxg+RflUQHzseE96uDuqY+cUyCFx9WLNxcLAcCZkQMSQ4+VlMhfJJU9MzvcMSJwe
	 csqwQ0qrU+rpLijJ2r2cVhKOz/gt9v1bSLRQZhU5WnkQKVSApUIiM3GkZ2is/tGoPD
	 rNSn3yS4xRMhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE5424059E;
	Thu, 14 Nov 2024 23:20:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A6259BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 23:20:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0A9540156
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 23:20:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aFS76MQch2mL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 23:20:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::832; helo=mail-qt1-x832.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 188724025F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 188724025F
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 188724025F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 23:20:30 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id
 d75a77b69052e-460d1145cd8so7026401cf.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 15:20:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731626430; x=1732231230;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=3hhbJF3cqdx94LP72fGPi0HCh8zamC8+LLvMwRDyU2Y=;
 b=GXgLi/S+UN8DcUKk/kJ+KBcWTm/nSiQzCEKSY+dz7vFlHq0i8IlvQCUir0uNF3p2WC
 E0kazIGXVBWSGP53iVBu/qwkYOkTl1hDw678QRfUwQFWUnJX2VjAML+8272Wy3tMgZ3J
 R+ceXVpKuc+KTGoqQSCgkPmO75khHN19D4q6XXex8S7vkHKXKmRSrCdZPmQeRqHa8HdK
 xeIojKtnWdu/t/Yj1PYz+hLSOgmHCu+DS1LkarncF7viqcpolXYELqiRb6hR+F2v66Rh
 8uWagpFZGeA3Ax5DUVaQ1Teb4NpMXGiSOvFgmA6xETLYWoK9k2d7I4j1FI5rd/J6/jgb
 Q82g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXCQCMEHpCvH6IAnTmp5fxV25T/LacoMI/SzShkLiF6OfbkQK0RDS2koRUadNYUtE+t3DTzFqHWFXPj0uAJs+k=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy8TVV+t3EUheJx10kQrTGjmYELvn9oj9KKa82l2X8EYM6e1X0l
 sTA94WsaPwql2ozqAGbtflQLzViTYzovDYuRR3Em0lHYLONUhuxN
X-Google-Smtp-Source: AGHT+IFBkFYf+uKEeJ8CjGMvCgBoPu/aNRVqF3CBQ9iXH6VfXdAn3//iS3Lq91AJxSKor0v5LOQ0iw==
X-Received: by 2002:a05:622a:4b0d:b0:458:2894:984e with SMTP id
 d75a77b69052e-46363de1df5mr8400321cf.3.1731626429701; 
 Thu, 14 Nov 2024 15:20:29 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-4635ab62fb9sm11712591cf.73.2024.11.14.15.20.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 15:20:29 -0800 (PST)
Date: Thu, 14 Nov 2024 18:20:28 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Josh Hay <joshua.a.hay@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <673685bc9ef98_3379ce2948@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241113154616.2493297-9-milena.olech@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-9-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731626430; x=1732231230; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3hhbJF3cqdx94LP72fGPi0HCh8zamC8+LLvMwRDyU2Y=;
 b=PfgVQ8tVgCHK3eb54uW7Q8gb//Ut0LfnAcPT7o4BrHahgNi0GQJ+cHYsn+x9hsyEeO
 Op/wUBSOY/vpFW3EKfMy342PAUb8jeaSNAespAqG06pk1mRcnOVf0LL1dEl+eY3ZEGuy
 20obTJ9YoSxEQlTWCVTYNkZ+2tqyLnamiIzuNNK3/ljZk8Cr5gL4n0YV/Bv3KXoRuYXT
 C4XkAEG6bR/+Zalqw0JCgb+Nay2zIZJLzotmpJLZnbe6gYxJ8mL5mAvl+Ix0ppADYUzM
 oP8RQ7iSBrf378K1K0RMw73ibLt7Y2BulnmZrnNVzBWV1p9k12RmowuTbjeN8qz10dpo
 1wCQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=PfgVQ8tV
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 08/10] idpf: add Tx timestamp
 flows
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

Milena Olech wrote:
> Add functions to request Tx timestamp for the PTP packets, read the Tx
> timestamp when the completion tag for that packet is being received,
> extend the Tx timestamp value and set the supported timestamping modes.
> 
> Tx timestamp is requested for the PTP packets by setting a TSYN bit and
> index value in the Tx context descriptor. The driver assumption is that
> the Tx timestamp value is ready to be read when the completion tag is
> received. Then the driver schedules delayed work and the Tx timestamp
> value read is requested through virtchnl message. At the end, the Tx
> timestamp value is extended to 64-bit and provided back to the skb.
> 
> Co-developed-by: Josh Hay <joshua.a.hay@intel.com>
> Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        |   4 +
>  .../net/ethernet/intel/idpf/idpf_ethtool.c    |  63 +++++
>  .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  13 +-
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |  40 +++
>  drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 265 +++++++++++++++++-
>  drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  57 ++++
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 136 ++++++++-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  10 +-
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   |   6 +-
>  .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 232 +++++++++++++++
>  10 files changed, 813 insertions(+), 13 deletions(-)
> 

> +/**
> + * idpf_set_timestamp_filters - Set the supported timestamping mode
> + * @vport: Virtual port structure
> + * @info: ethtool timestamping info structure
> + *
> + * Set the Tx/Rx timestamp filters.
> + */
> +static void idpf_set_timestamp_filters(const struct idpf_vport *vport,
> +				       struct kernel_ethtool_ts_info *info)
> +{
> +	if (!vport->tx_tstamp_caps ||
> +	    vport->adapter->ptp->tx_tstamp_access == IDPF_PTP_NONE)
> +		return;
> +
> +	info->so_timestamping = SOF_TIMESTAMPING_TX_SOFTWARE |
> +				SOF_TIMESTAMPING_RX_SOFTWARE |
> +				SOF_TIMESTAMPING_SOFTWARE |
> +				SOF_TIMESTAMPING_TX_HARDWARE |
> +				SOF_TIMESTAMPING_RX_HARDWARE |
> +				SOF_TIMESTAMPING_RAW_HARDWARE;
> +

Drivers no longer need to set various software timestamping options
since commit "ethtool: RX software timestamp for all"

> +	info->tx_types = BIT(HWTSTAMP_TX_OFF) | BIT(HWTSTAMP_TX_ON);
> +}
> +
> +/**
> + * idpf_get_ts_info - Get device PHC association
> + * @netdev: network interface device structure
> + * @info: ethtool timestamping info structure
> + *
> + * Return: 0 on success, -errno otherwise.
> + */
> +static int idpf_get_ts_info(struct net_device *netdev,
> +			    struct kernel_ethtool_ts_info *info)
> +{
> +	struct idpf_vport *vport;
> +	int err = 0;
> +
> +	idpf_vport_ctrl_lock(netdev);
> +	vport = idpf_netdev_to_vport(netdev);
> +
> +	if (!vport->adapter->ptp) {
> +		err = -EOPNOTSUPP;
> +		goto unlock;
> +	}
> +
> +	idpf_set_timestamp_filters(vport, info);
> +
> +	if (idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_PTP) &&
> +	    vport->adapter->ptp->clock) {
> +		info->phc_index = ptp_clock_index(vport->adapter->ptp->clock);
> +	} else {
> +		pci_dbg(vport->adapter->pdev, "PTP clock not detected\n");
> +		err = ethtool_op_get_ts_info(netdev, info);
> +	}
> +
> +unlock:
> +	idpf_vport_ctrl_unlock(netdev);
> +
> +	return err;
> +}
> +
>  static const struct ethtool_ops idpf_ethtool_ops = {
>  	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
>  				     ETHTOOL_COALESCE_USE_ADAPTIVE,
> @@ -1336,6 +1398,7 @@ static const struct ethtool_ops idpf_ethtool_ops = {
>  	.get_ringparam		= idpf_get_ringparam,
>  	.set_ringparam		= idpf_set_ringparam,
>  	.get_link_ksettings	= idpf_get_link_ksettings,
> +	.get_ts_info		= idpf_get_ts_info,
>  };

> +/**
> + * idpf_ptp_tstamp_extend_32b_to_64b - Convert a 32b nanoseconds Tx timestamp
> + *				       to 64b.
> + * @cached_phc_time: recently cached copy of PHC time
> + * @in_timestamp: Ingress/egress 32b nanoseconds timestamp value
> + *
> + * Hardware captures timestamps which contain only 32 bits of nominal
> + * nanoseconds, as opposed to the 64bit timestamps that the stack expects.
> + *
> + * Return: Tx timestamp value extended to 64 bits based on cached PHC time.
> + */
> +u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time, u32 in_timestamp)
> +{
> +	u32 delta, phc_lo;
> +	u64 ns;
> +
> +	phc_lo = lower_32_bits(cached_phc_time);
> +	delta = in_timestamp - phc_lo;
> +
> +	if (delta > S32_MAX) {
> +		delta = phc_lo - in_timestamp;
> +		ns = cached_phc_time - delta;
> +	} else {
> +		ns = cached_phc_time + delta;
> +	}
> +
> +	return ns;
> +}

Consider a standard timecounter to estimate a device clock.

> +#if (IS_ENABLED(CONFIG_PTP_1588_CLOCK))
> +/**
> + * idpf_tx_tstamp - set up context descriptor for hardware timestamp
> + * @tx_q: queue to send buffer on
> + * @skb: pointer to the SKB we're sending
> + * @off: pointer to the offload struct
> + *
> + * Return: Positive index number on success, negative otherwise.
> + */
> +static int idpf_tx_tstamp(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
> +			  struct idpf_tx_offload_params *off)
> +{
> +	int err, idx;
> +
> +	if (!idpf_ptp_get_txq_tstamp_capability(tx_q))
> +		return -1;
> +
> +	/* Tx timestamps cannot be sampled when doing TSO */
> +	if (off->tx_flags & IDPF_TX_FLAGS_TSO)
> +		return -1;
> +
> +	/* only timestamp the outbound packet if the user has requested it */
> +	if (likely(!(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)))
> +		return -1;

Make this the first test. This function is being called on every
outgoing packet. It should be as cheap as possible in the likely
case where the PTP timestamp is not requested.

Even move this test to the callee if this does not get inlined.

>  /**
>   * idpf_tx_splitq_frame - Sends buffer on Tx ring using flex descriptors
>   * @skb: send buffer
> @@ -2743,9 +2859,10 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
>  					struct idpf_tx_queue *tx_q)
>  {
>  	struct idpf_tx_splitq_params tx_params = { };
> +	union idpf_flex_tx_ctx_desc *ctx_desc;
>  	struct idpf_tx_buf *first;
>  	unsigned int count;
> -	int tso;
> +	int tso, idx;
>  
>  	count = idpf_tx_desc_count_required(tx_q, skb);
>  	if (unlikely(!count))
> @@ -2765,8 +2882,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
>  
>  	if (tso) {
>  		/* If tso is needed, set up context desc */
> -		struct idpf_flex_tx_ctx_desc *ctx_desc =
> -			idpf_tx_splitq_get_ctx_desc(tx_q);
> +		ctx_desc = idpf_tx_splitq_get_ctx_desc(tx_q);
>  
>  		ctx_desc->tso.qw1.cmd_dtype =
>  				cpu_to_le16(IDPF_TX_DESC_DTYPE_FLEX_TSO_CTX |
> @@ -2784,6 +2900,12 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
>  		u64_stats_update_end(&tx_q->stats_sync);
>  	}
>  
> +	idx = idpf_tx_tstamp(tx_q, skb, &tx_params.offload);
> +	if (idx != -1) {
> +		ctx_desc = idpf_tx_splitq_get_ctx_desc(tx_q);
> +		idpf_tx_set_tstamp_desc(ctx_desc, idx);
> +	}
> +

Called here

> +/**
> + * idpf_ptp_get_tx_tstamp_async_handler - Async callback for getting Tx tstamps
> + * @adapter: Driver specific private structure
> + * @xn: transaction for message
> + * @ctlq_msg: received message
> + *
> + * Read the tstamps Tx tstamp values from a received message and put them
> + * directly to the skb. The number of timestamps to read is specified by
> + * the virtchnl message.
> + *
> + * Return: 0 on success, -errno otherwise.
> + */
> +static int
> +idpf_ptp_get_tx_tstamp_async_handler(struct idpf_adapter *adapter,
> +				     struct idpf_vc_xn *xn,
> +				     const struct idpf_ctlq_msg *ctlq_msg)
> +{
> +	struct virtchnl2_ptp_get_vport_tx_tstamp_latches *recv_tx_tstamp_msg;
> +	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
> +	struct virtchnl2_ptp_tx_tstamp_latch tstamp_latch;
> +	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
> +	struct idpf_vport *tstamp_vport = NULL;
> +	struct list_head *head;
> +	u16 num_latches;
> +	u32 vport_id;
> +	int err;
> +
> +	recv_tx_tstamp_msg = ctlq_msg->ctx.indirect.payload->va;
> +	vport_id = le32_to_cpu(recv_tx_tstamp_msg->vport_id);
> +
> +	idpf_for_each_vport(adapter, vport) {
> +		if (!vport)
> +			continue;
> +
> +		if (vport->vport_id == vport_id) {
> +			tstamp_vport = vport;
> +			break;
> +		}
> +	}

idpf_vid_to_vport?

> +
> +	if (!tstamp_vport || !tstamp_vport->tx_tstamp_caps)
> +		return -EINVAL;
