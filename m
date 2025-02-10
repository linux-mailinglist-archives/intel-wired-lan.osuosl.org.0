Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF90A2F7BA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 19:47:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61A68404C1;
	Mon, 10 Feb 2025 18:47:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NWn3_lwU3pWM; Mon, 10 Feb 2025 18:47:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6A7241292
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739213237;
	bh=7vS+R9r6QwfgQsutdOUsz1zbnMNHKHHCfPpNBqcMo6M=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zX19cVGsPBss7OEpUompzTLZvH0gmbH5iMD8BffSB/Dvuh5PG9hHnwrnK7/m41a0E
	 ukXPumqMW9gBN9PCo8F0IoB/sC39ICTtU6XLg1eONBlrEA9YAdn3FMNW80hlP+UOfd
	 F3g/zDjK2+cdmG/2x7+r9pB+o6/ftojVLk+DkzOPZjKWcIuidywMYX0+KW+hnO+a7Z
	 nZGjI4k1y4j0Zn/0ijlBC+F6P7ufyFaEdzhR6R+R3CrqQPgkvJT9PfqqSPZkx4lpJc
	 h6n4pNdAbUAA5exPu8/+gqGtxytdEJkCV3XR5r+/DgrzxYnGG83ZkUwUxBVtwCHC+w
	 1Lv0+liaStkjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6A7241292;
	Mon, 10 Feb 2025 18:47:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 064FFC2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 18:47:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E893940822
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 18:47:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DXi0B4nmItnp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 18:47:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C10B640734
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C10B640734
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C10B640734
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 18:47:13 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-21f7f03d7c0so37428605ad.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 10:47:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739213233; x=1739818033;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7vS+R9r6QwfgQsutdOUsz1zbnMNHKHHCfPpNBqcMo6M=;
 b=a2eDFz+7s7MLj/DNq+SjPImxNlGtldNIFs9OYbfGILuSzWEWUqOZfkG4dDaPkCP0mh
 Nf71iJ5rkSMVtEiSa4B7uwgwspwZ3eKgmtQFjL3aAL8ucHuN3oLT5HM8TtpDSm+Po7C8
 +v73txiGO3uVY28DVksfS4CPIyWdSHl7ca1ohoufFsmFs2O76fwMO0tf/5fTErNcPbyC
 M+fCSsPJ0oRVC3bG+1ko884dsH2yTInfFYl1r3TiJvaGUUk71lYKWnq1Ef8i9WymBv4Z
 m/j+SlxteU1l9ZsXJwK5+lfjZcm0NFXZnZAk3TDQNHGRAafFmJ/QsICRSZaey+WQZFbr
 styg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUEo07zCp+7FYB4RYot+gcU4+N9TidHjjsnWRkDcoKPc7Tarh+Ni3a91s12H12MTfSyliZf4S3ZSYonfozouQw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyioqeN4RO3O6HTSLpLUc+KRNfg9JmDuVR1VQZ3BxWxJ/RuSWkg
 8gBAvUrkhRlhCfNCD8EiM2223IkglHs7cffKZgxU+8IEz+Fc/+lif2FCik+ATFo=
X-Gm-Gg: ASbGncvcdmm4Ia4fJgi+P6LhqVbGpiwczm653XPlLiz6YbYP137a3usM5K9Ds1Wak1E
 YzJd3znLDdp5BoJCsEFP+mipJHklNFZNXKMAwo+yqj/ib6coGdtLRw4DozNjqZUP775KBpUYXYZ
 bG31Rv4O1XrVrhC3UzXmbvSva4wR4+9RIsLhz+775YYivIDhuTuPbf8m/PxXx7IOxZVlSDsWFVN
 vnzT+evvrN197zVmF3Yhdxjf4XAdW9EHhzODZ8ZmB6wwLSgK1qA8txmihNL74wLZ1kOYMW2QbvJ
 +viQUEzSu+/qk4ewDRPny0m2DB2KljhWpPGb/0qfO3bmtIhGi4dKJ9t/hg==
X-Google-Smtp-Source: AGHT+IH/pmfRtbhhKoGspZi03DIQ2MheVXjwe1mrxcsIVwMzba26/0KygkRTSGNq6EQufftaUIcDEg==
X-Received: by 2002:a17:902:f60a:b0:215:94eb:adb6 with SMTP id
 d9443c01a7336-21f4e73b2c6mr262378865ad.40.1739213232932; 
 Mon, 10 Feb 2025 10:47:12 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-ad54f1691ddsm2747458a12.61.2025.02.10.10.47.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 10:47:12 -0800 (PST)
Date: Mon, 10 Feb 2025 10:47:09 -0800
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z6pJrRRqcHYhZWss@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
 <20250210-igb_irq-v1-2-bde078cdb9df@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250210-igb_irq-v1-2-bde078cdb9df@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1739213233; x=1739818033; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7vS+R9r6QwfgQsutdOUsz1zbnMNHKHHCfPpNBqcMo6M=;
 b=nBa2YMpjiTmKhtmMY/TGKeeRl4S3MJ5yBWn8oVIpUIjMc/eyRbX3oqxVTxsh7AIVzn
 qq/ajuOjjX8sYV+8VAQa99DbA35xgWqpfuXDmmwe+JUT6oGqqN8zuM4g/HLcGnrXd0cO
 /QTKN+oK5T/ebBcCFIMGbFvrMkUVJNgMiUYfY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=nBa2YMpj
Subject: Re: [Intel-wired-lan] [PATCH 2/3] igb: Link queues to NAPI instances
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

On Mon, Feb 10, 2025 at 10:19:36AM +0100, Kurt Kanzenbach wrote:
> Link queues to NAPI instances via netdev-genl API. This is required to use
> XDP/ZC busy polling. See commit 5ef44b3cb43b ("xsk: Bring back busy polling
> support") for details.
> 
> This also allows users to query the info with netlink:
> 
> |$ ./tools/net/ynl/pyynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> |                               --dump queue-get --json='{"ifindex": 2}'
> |[{'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'rx'},
> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'rx'},
> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'rx'},
> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'rx'},
> | {'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'tx'},
> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'tx'},
> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'tx'},
> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'tx'}]
> 
> While at __igb_open() use RCT coding style.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>  drivers/net/ethernet/intel/igb/igb.h      |  2 ++
>  drivers/net/ethernet/intel/igb/igb_main.c | 35 ++++++++++++++++++++++++++-----
>  drivers/net/ethernet/intel/igb/igb_xsk.c  |  2 ++
>  3 files changed, 34 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> index 02f340280d20a6f7e32bbd3dfcbb9c1c7b4c6662..79eca385a751bfdafdf384928b6cc1b350b22560 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -722,6 +722,8 @@ enum igb_boards {
>  
>  extern char igb_driver_name[];
>  
> +void igb_set_queue_napi(struct igb_adapter *adapter, int q_idx,
> +			struct napi_struct *napi);
>  int igb_xmit_xdp_ring(struct igb_adapter *adapter,
>  		      struct igb_ring *ring,
>  		      struct xdp_frame *xdpf);
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index d4128d19cc08f62f95682069bb5ed9b8bbbf10cb..8e964484f4c9854e4e3e0b4f3e8785fe93bd1207 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -2099,6 +2099,22 @@ static void igb_check_swap_media(struct igb_adapter *adapter)
>  	wr32(E1000_CTRL_EXT, ctrl_ext);
>  }
>  
> +void igb_set_queue_napi(struct igb_adapter *adapter, int vector,
> +			struct napi_struct *napi)
> +{
> +	struct igb_q_vector *q_vector = adapter->q_vector[vector];
> +
> +	if (q_vector->rx.ring)
> +		netif_queue_set_napi(adapter->netdev,
> +				     q_vector->rx.ring->queue_index,
> +				     NETDEV_QUEUE_TYPE_RX, napi);
> +
> +	if (q_vector->tx.ring)
> +		netif_queue_set_napi(adapter->netdev,
> +				     q_vector->tx.ring->queue_index,
> +				     NETDEV_QUEUE_TYPE_TX, napi);
> +}
> +
>  /**
>   *  igb_up - Open the interface and prepare it to handle traffic
>   *  @adapter: board private structure
> @@ -2106,6 +2122,7 @@ static void igb_check_swap_media(struct igb_adapter *adapter)
>  int igb_up(struct igb_adapter *adapter)
>  {
>  	struct e1000_hw *hw = &adapter->hw;
> +	struct napi_struct *napi;
>  	int i;
>  
>  	/* hardware has been reset, we need to reload some things */
> @@ -2113,8 +2130,11 @@ int igb_up(struct igb_adapter *adapter)
>  
>  	clear_bit(__IGB_DOWN, &adapter->state);
>  
> -	for (i = 0; i < adapter->num_q_vectors; i++)
> -		napi_enable(&(adapter->q_vector[i]->napi));
> +	for (i = 0; i < adapter->num_q_vectors; i++) {
> +		napi = &adapter->q_vector[i]->napi;
> +		napi_enable(napi);
> +		igb_set_queue_napi(adapter, i, napi);
> +	}

It looks like igb_ub is called from igb_io_resume (struct
pci_error_handlers). I don't know if RTNL is held in that path. If
its not, this could trip the ASSERT_RTNL in netif_queue_set_napi.

Can you check and see if this is an issue for that path?

igb_reinit_locked looks OK (as the name implies).

>  
>  	if (adapter->flags & IGB_FLAG_HAS_MSIX)
>  		igb_configure_msix(adapter);
> @@ -2184,6 +2204,7 @@ void igb_down(struct igb_adapter *adapter)
>  	for (i = 0; i < adapter->num_q_vectors; i++) {
>  		if (adapter->q_vector[i]) {
>  			napi_synchronize(&adapter->q_vector[i]->napi);
> +			igb_set_queue_napi(adapter, i, NULL);
>  			napi_disable(&adapter->q_vector[i]->napi);

Same question as above. It looks like igb_down is called from
igb_io_error_detected. I don't know if RTNL is held in that path. If
its not, it'll trip the ASSERT_RTNL in netif_queue_set_napi.

Can you check if that's an issue for this path, as well?

>  		}
>  	}
> @@ -4116,8 +4137,9 @@ static int igb_sw_init(struct igb_adapter *adapter)
>  static int __igb_open(struct net_device *netdev, bool resuming)
>  {
>  	struct igb_adapter *adapter = netdev_priv(netdev);
> -	struct e1000_hw *hw = &adapter->hw;
>  	struct pci_dev *pdev = adapter->pdev;
> +	struct e1000_hw *hw = &adapter->hw;
> +	struct napi_struct *napi;
>  	int err;
>  	int i;
>  
> @@ -4169,8 +4191,11 @@ static int __igb_open(struct net_device *netdev, bool resuming)
>  	/* From here on the code is the same as igb_up() */
>  	clear_bit(__IGB_DOWN, &adapter->state);
>  
> -	for (i = 0; i < adapter->num_q_vectors; i++)
> -		napi_enable(&(adapter->q_vector[i]->napi));
> +	for (i = 0; i < adapter->num_q_vectors; i++) {
> +		napi = &adapter->q_vector[i]->napi;
> +		napi_enable(napi);
> +		igb_set_queue_napi(adapter, i, napi);
> +	}

The above looks fine. __igb_open is called from __igb_resume which
takes care of RTNL. So, I think this part is fine.


>  	rd32(E1000_TSICR);
> diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 157d43787fa0b55a74714f69e9e7903b695fcf0a..a5ad090dfe94b6afc8194fe39d28cdd51c7067b0 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -45,6 +45,7 @@ static void igb_txrx_ring_disable(struct igb_adapter *adapter, u16 qid)
>  	synchronize_net();
>  
>  	/* Rx/Tx share the same napi context. */
> +	igb_set_queue_napi(adapter, qid, NULL);
>  	napi_disable(&rx_ring->q_vector->napi);
>  
>  	igb_clean_tx_ring(tx_ring);
> @@ -78,6 +79,7 @@ static void igb_txrx_ring_enable(struct igb_adapter *adapter, u16 qid)
>  
>  	/* Rx/Tx share the same napi context. */
>  	napi_enable(&rx_ring->q_vector->napi);
> +	igb_set_queue_napi(adapter, qid, &rx_ring->q_vector->napi);
>  }

These seem fine to me.
