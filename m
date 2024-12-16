Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 076019F3543
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 17:05:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33F3781DEE;
	Mon, 16 Dec 2024 16:05:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5G_AOv0VH4Zo; Mon, 16 Dec 2024 16:05:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A60481E78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734365123;
	bh=dG99stxxx20DSdS/lbls1Jk7NIYbcNyenoZoJZYfN7g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2M2s5yAAs0dS0AyqnCd3JoGUeegQfadM4IXnn+S5m35kcURJRAVoHUlotBqaEwjIo
	 632mtlf67yTT8HlpdAQNAYSosjUFWoVb1qjQQM2aOusT73vGWO40vCVDgpLtkP/uZO
	 cw61DJXQ3WwubWxfr7+guADxytO6Ym2OYSdqUTF8pRck6sl9rtjtBZ6aN+cMCfdz8W
	 oAUbJ/yJRbMPOswe028JT658IxO3unNt2kTq+yPHSSYDjrTxSQhpLUww+vPhROqQtw
	 8bRJAc4zqyHw/1I/LeSg+FRk57k85BrGdXkS4sCIIuqg5GovkgeN94/dffZlJ3/khZ
	 fm95a8itMFHog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A60481E78;
	Mon, 16 Dec 2024 16:05:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 516F0C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:05:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F7F860B4F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:05:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jn2P2Sp7L3On for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 16:05:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=olteanv@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0BA316077F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BA316077F
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0BA316077F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:05:18 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-436284cdbe0so5185005e9.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:05:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734365117; x=1734969917;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dG99stxxx20DSdS/lbls1Jk7NIYbcNyenoZoJZYfN7g=;
 b=lRU6ffisPN5eGWnGFoVQ4ZxpnjvHupZYhRtkKKrBUcbW9zdVrco3gzLo3+c8T06GEt
 Te+tEzEYZC4Fuw6zFalOZat9INC3WZQbL0J+F6YCM8xljx4hiqAuIqnb6EQSQ8M1s1+I
 LebLchpDc5p3nlzX8eySHQ3oCEErhPqRq+2k+eqzDfRIBE0WGJUhp6KhtnUUrn9zJhzy
 ngjWDU+mQN2PBtWuFhE1ilJ/k8hSkaTF1Pmtdm5k5WB42hWyeeheo3nAtA/5GBRTe3hc
 5JERAodf9sLtIXKkAiDAGkjStqrsostsn7cruNH1d70CHK9RXE+ED9aC5lZGCF6gRump
 XTGg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXuYZUCbE9DhOR8ThzihDjvDhoCnZadYUXdH6VZTpNQyqkCn+PlXVTiX008/DiiLP0YAkY0bVYN0ZEKwOOWIp8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxF74XShGM0Ol4WP7Qo3jO0PczSAYUlVGlRt/DhYQYEcuWMuzPc
 Nb5a6RMonFp0A00xdlZUL7KNahHhoWPQ5dcFXyYo9s0k+HgiMdfK
X-Gm-Gg: ASbGncvneoR3TCbWtk6GT1xQy3A6YAwS1S4WZqerrg96LaaokGyfRw29NQAMEtXtnVN
 HoqvSZsX+LNqpaO9tkrlE2C6LdWh//iNM+Z+JjgzUDsqgregzbk7oFjIMvNWlRkyjBwqG4BQmAa
 kRjj50cJrQdJqScdN75MQMRtvo+JgbkzLw6v5W3I2ZPQ1dIkmYRLkgh7OWMXhSUtz+8/zFRjeHi
 FpVpJQOS08KDd7whpMMDqlg1WXUZGZEo2G73bZxLDUv
X-Google-Smtp-Source: AGHT+IHYj/tJTjJciBlbThZka3fht5do0jmD0uAVpuX39xUUzlLX6XnsjobX3DJLyFyd+Ta+kfQJDw==
X-Received: by 2002:a05:6000:1846:b0:37d:4aa2:5cfe with SMTP id
 ffacd0b85a97d-38880ac5c89mr4680766f8f.6.1734365116394; 
 Mon, 16 Dec 2024 08:05:16 -0800 (PST)
Received: from skbuf ([86.127.124.81]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-436360159aasm88625815e9.6.2024.12.16.08.05.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2024 08:05:15 -0800 (PST)
Date: Mon, 16 Dec 2024 18:05:13 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Message-ID: <20241216160513.24i4ehroff47iwzi@skbuf>
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-10-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241216064720.931522-10-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734365117; x=1734969917; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=dG99stxxx20DSdS/lbls1Jk7NIYbcNyenoZoJZYfN7g=;
 b=MlpgIviHV1hqCzPQRGFzBqnS6m4gZyxWKYRVmC8xylFjjW+LKdjFmaMPQcGhR5hXi+
 ReYIiRle7/l9YYvsQsu6wZ4rCP16ro8gMz3vbWVrSdtFZdJ06iLjpPjRMk/hk+wFH0+v
 qCjWOdVncV7E8Ih+v9qDmQaedKfUYZGjlpY1SJLkceqoGjIzO7CcUp44pLm4cZB1Hbdt
 h9WhJ1QU6HHdecjfRN7+qaPYBC+yhVsROfBc4Um8znO/1nK3/uLlZwpHVoDY6+BJ+flS
 tAPS6zjgsn8/Tv98sqpOBjPq/mlzgxqeziOFIXQNnZ5RquDCBqZNO46hDfC5YNoeY/4V
 m7VA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=MlpgIviH
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 9/9] igc: Add support to get
 frame preemption statistics via ethtool
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

On Mon, Dec 16, 2024 at 01:47:20AM -0500, Faizal Rahim wrote:
> Implemented "ethtool --include-statistics --show-mm" callback for IGC.
> 
> Tested preemption scenario to check preemption statistics:
> 1) Trigger verification handshake on both boards:
>     $ sudo ethtool --set-mm enp1s0 pmac-enabled on
>     $ sudo ethtool --set-mm enp1s0 tx-enabled on
>     $ sudo ethtool --set-mm enp1s0 verify-enabled on
> 2) Set preemptible or express queue in taprio for tx board:
>     $ sudo tc qdisc replace dev enp1s0 parent root handle 100 taprio \
>       num_tc 4 map 0 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 \
>       queues 1@0 1@1 1@2 1@3 base-time 0 sched-entry S F 100000 \
>       fp E E P P

Hmm, the prio_tc_map pattern changed since the last time I looked at igc
examples? It was in decreasing order before? How do you handle backwards
compatibility with the Tx ring strict priority default configuration?
I haven't downloaded the entire set locally, will do so later.

> 3) Send large size packets on preemptible queue
> 4) Send small size packets on express queue to preempt packets in
>    preemptible queue
> 5) Show preemption statistics on the receiving board:
>    $ ethtool --include-statistics --show-mm enp1s0
>      MAC Merge layer state for enp1s0:
>      pMAC enabled: on
>      TX enabled: on
>      TX active: on
>      TX minimum fragment size: 252
>      RX minimum fragment size: 252
>      Verify enabled: on
>      Verify time: 128
>      Max verify time: 128
>      Verification status: SUCCEEDED
>      Statistics:
>      	MACMergeFrameAssErrorCount: 0
> 	MACMergeFrameSmdErrorCount: 0
> 	MACMergeFrameAssOkCount: 511
> 	MACMergeFragCountRx: 764
> 	MACMergeFragCountTx: 0
> 	MACMergeHoldCount: 0
> 
> Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 40 ++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_regs.h    | 19 ++++++++++
>  2 files changed, 59 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 16aa6e4e1727..90a9dbb0d901 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1835,6 +1835,45 @@ static int igc_ethtool_set_mm(struct net_device *netdev,
>  	return igc_tsn_offload_apply(adapter);
>  }
>  
> +/**
> + * igc_ethtool_get_frame_ass_error - Get the frame assembly error count.
> + * @dev: Pointer to the net_device structure.
> + * @return: The count of frame assembly errors.

I may be wrong, but I think the syntax for kernel-doc is "Returns: "

> + */
> +static u64 igc_ethtool_get_frame_ass_error(struct net_device *dev)
> +{
> +	struct igc_adapter *adapter = netdev_priv(dev);
> +	u32 ooo_smdc, ooo_frame_cnt, ooo_frag_cnt; /* Out of order statistics */
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 miss_frame_frag_cnt;
> +	u32 reg_value;
> +
> +	reg_value = rd32(IGC_PRMEXPRCNT);
> +	ooo_smdc = reg_value & IGC_PRMEXPRCNT_OOO_SMDC;
> +	ooo_frame_cnt = (reg_value & IGC_PRMEXPRCNT_OOO_FRAME_CNT)
> +			 >> IGC_PRMEXPRCNT_OOO_FRAME_CNT_SHIFT;
> +	ooo_frag_cnt = (reg_value & IGC_PRMEXPRCNT_OOO_FRAG_CNT)
> +			>> IGC_PRMEXPRCNT_OOO_FRAG_CNT_SHIFT;
> +	miss_frame_frag_cnt = (reg_value & IGC_PRMEXPRCNT_MISS_FRAME_FRAG_CNT)
> +			      >> IGC_PRMEXPRCNT_MISS_FRAME_FRAG_CNT_SHIFT;

Candidates for FIELD_GET()?

> +
> +	return ooo_smdc + ooo_frame_cnt + ooo_frag_cnt + miss_frame_frag_cnt;
> +}
> +
> +static void igc_ethtool_get_mm_stats(struct net_device *dev,
> +				     struct ethtool_mm_stats *stats)
> +{
> +	struct igc_adapter *adapter = netdev_priv(dev);
> +	struct igc_hw *hw = &adapter->hw;
> +
> +	stats->MACMergeFrameAssErrorCount = igc_ethtool_get_frame_ass_error(dev);
> +	stats->MACMergeFrameSmdErrorCount = 0; /* Not available in IGC */
> +	stats->MACMergeFrameAssOkCount = rd32(IGC_PRMPTDRCNT);
> +	stats->MACMergeFragCountRx =  rd32(IGC_PRMEVNTRCNT);
> +	stats->MACMergeFragCountTx = rd32(IGC_PRMEVNTTCNT);
> +	stats->MACMergeHoldCount = 0; /* Not available in IGC */

Don't report counters as zero when in reality you don't know.

Just don't assign values to these. mm_prepare_data() -> ethtool_stats_init()
presets them to 0xffffffffffffffff (ETHTOOL_STAT_NOT_SET), and
mm_put_stats() -> mm_put_stat() detects whether they are still equal to
this value, and if they are, does not report netlink attributes for them.

> +}
> +
>  static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>  					  struct ethtool_link_ksettings *cmd)
>  {
> @@ -2124,6 +2163,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
>  	.get_channels		= igc_ethtool_get_channels,
>  	.get_mm			= igc_ethtool_get_mm,
>  	.set_mm			= igc_ethtool_set_mm,
> +	.get_mm_stats		= igc_ethtool_get_mm_stats,
>  	.set_channels		= igc_ethtool_set_channels,
>  	.get_priv_flags		= igc_ethtool_get_priv_flags,
>  	.set_priv_flags		= igc_ethtool_set_priv_flags,
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
> index 12ddc5793651..f40946cce35a 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -222,6 +222,25 @@
>  
>  #define IGC_FTQF(_n)	(0x059E0 + (4 * (_n)))  /* 5-tuple Queue Fltr */
>  
> +/* Time sync registers - preemption statistics */
> +#define IGC_PRMEVNTTCNT		0x04298	/* TX Preemption event counter */
> +#define IGC_PRMEVNTRCNT		0x0429C	/* RX Preemption event counter */
> +#define IGC_PRMPTDRCNT		0x04284	/* Good RX Preempted Packets */
> +
> + /* Preemption Exception Counter */
> +#define IGC_PRMEXPRCNT					0x042A0
> +/* Received out of order packets with SMD-C and NOT ReumeRx */
> +#define IGC_PRMEXPRCNT_OOO_SMDC 0x000000FF
> +/* Received out of order packets with SMD-C and wrong Frame CNT */
> +#define IGC_PRMEXPRCNT_OOO_FRAME_CNT			0x0000FF00
> +#define IGC_PRMEXPRCNT_OOO_FRAME_CNT_SHIFT		8
> +/* Received out of order packets with SMD-C and wrong Frag CNT */
> +#define IGC_PRMEXPRCNT_OOO_FRAG_CNT			0x00FF0000
> +#define IGC_PRMEXPRCNT_OOO_FRAG_CNT_SHIFT		16
> +/* Received packets with SMD-S and ReumeRx */

What is ReumeRx?

> +#define IGC_PRMEXPRCNT_MISS_FRAME_FRAG_CNT		0xFF000000
> +#define IGC_PRMEXPRCNT_MISS_FRAME_FRAG_CNT_SHIFT	24
> +
>  /* Transmit Scheduling Registers */
>  #define IGC_TQAVCTRL		0x3570
>  #define IGC_TXQCTL(_n)		(0x3344 + 0x4 * (_n))
> -- 
> 2.25.1
> 
> 
