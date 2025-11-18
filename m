Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E69AFC67E7E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 08:22:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F01360F06;
	Tue, 18 Nov 2025 07:22:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QG2EEI_-y-xT; Tue, 18 Nov 2025 07:22:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6660160F0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763450543;
	bh=J3A9byHqj7DmCffTw0EZQpDqUJKKTHg+7MD/WewzY00=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=96ypLmSNlGFKsM5q2WIuhrNV9VdtzAxovLSEcyObWbLgzGjnyupEPPU7DxzEFYSDV
	 /m6ocAZeiJ/9asXmbBRkUsANKj2P1MWQgCWX596RbTb1IRB8L0kvsvoXspPJ1+9j+K
	 EKw7nsxSjIDYgk/Rr4v/lmgroh4oPgzzOMLRp9KH5mjejOxdFfWg+p1iZIbsS0X+BF
	 Mwq47lHVbVe8g1xLR0CoMbNxbKaAQH/vzRmBbG3953cO/a9tLLGavfToKojL+YhEcE
	 J7ycOuMHcVr0Mrfs0qlbWgQOHc2xOx8+l51yhZwIVOnvcv8Lau3MzZs/tXM6CAnmAC
	 TW70lPxgBptKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6660160F0B;
	Tue, 18 Nov 2025 07:22:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6336C1BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 07:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60ACA82B9F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 07:22:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4tVwAh2adcGb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 07:22:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 35E9B82AA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35E9B82AA2
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 35E9B82AA2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 07:22:18 +0000 (UTC)
Received: from [192.168.2.216] (p5b13a468.dip0.t-ipconnect.de [91.19.164.104])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7AA7961CC3FE3;
 Tue, 18 Nov 2025 08:22:02 +0100 (CET)
Message-ID: <a3b8dc4c-caa3-4950-8834-29e8adc57854@molgen.mpg.de>
Date: Tue, 18 Nov 2025 08:22:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sreedevi Joshi <sreedevi.joshi@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>
References: <20251118042228.381667-1-sreedevi.joshi@intel.com>
 <20251118042228.381667-2-sreedevi.joshi@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251118042228.381667-2-sreedevi.joshi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] idpf: Fix RSS LUT NULL
 pointer crash on early ethtool operations
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

Dear Sreedevi,


Thank you for your patch.

Am 18.11.25 um 05:22 schrieb Sreedevi Joshi:
> The RSS LUT is not initialized until the interface comes up, causing
> the following NULL pointer crash when ethtool operations like rxhash on/off
> are performed before the interface is brought up for the first time.
> 
> Move RSS LUT initialization from ndo_open to vport creation to ensure LUT
> is always available. This enables RSS configuration via ethtool before
> bringing the interface up. Simplify LUT management by maintaining all
> changes in the driver's soft copy and programming zeros to the indirection
> table when rxhash is disabled. Defer HW programming until the interface
> comes up if it is down during rxhash and LUT configuration changes.
> 
> [89408.371875] BUG: kernel NULL pointer dereference, address: 0000000000000000
> [89408.371908] #PF: supervisor read access in kernel mode
> [89408.371924] #PF: error_code(0x0000) - not-present page
> [89408.371940] PGD 0 P4D 0
> [89408.371953] Oops: Oops: 0000 [#1] SMP NOPTI
> <snip>
> [89408.372052] RIP: 0010:memcpy_orig+0x16/0x130
> [89408.372310] Call Trace:
> [89408.372317]  <TASK>
> [89408.372326]  ? idpf_set_features+0xfc/0x180 [idpf]
> [89408.372363]  __netdev_update_features+0x295/0xde0
> [89408.372384]  ethnl_set_features+0x15e/0x460
> [89408.372406]  genl_family_rcv_msg_doit+0x11f/0x180
> [89408.372429]  genl_rcv_msg+0x1ad/0x2b0
> [89408.372446]  ? __pfx_ethnl_set_features+0x10/0x10
> [89408.372465]  ? __pfx_genl_rcv_msg+0x10/0x10
> [89408.372482]  netlink_rcv_skb+0x58/0x100
> [89408.372502]  genl_rcv+0x2c/0x50
> [89408.372516]  netlink_unicast+0x289/0x3e0
> [89408.372533]  netlink_sendmsg+0x215/0x440
> [89408.372551]  __sys_sendto+0x234/0x240
> [89408.372571]  __x64_sys_sendto+0x28/0x30
> [89408.372585]  x64_sys_call+0x1909/0x1da0
> [89408.372604]  do_syscall_64+0x7a/0xfa0
> [89408.373140]  ? clear_bhb_loop+0x60/0xb0
> [89408.373647]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [89408.378887]  </TASK>
> <snip>

It’d be great if you described your test system.

> Fixes: a251eee62133 ("idpf: add SRIOV support and other ndo_ops")
> Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf.h        |  2 -
>   drivers/net/ethernet/intel/idpf/idpf_lib.c    | 89 +++++++++----------
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 36 +++-----
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  4 +-
>   .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  9 +-
>   5 files changed, 64 insertions(+), 76 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index e69ce1d852f8..cdaa603ad82c 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -425,14 +425,12 @@ enum idpf_user_flags {
>    * @rss_key: RSS hash key
>    * @rss_lut_size: Size of RSS lookup table
>    * @rss_lut: RSS lookup table
> - * @cached_lut: Used to restore previously init RSS lut
>    */
>   struct idpf_rss_data {
>   	u16 rss_key_size;
>   	u8 *rss_key;
>   	u16 rss_lut_size;
>   	u32 *rss_lut;
> -	u32 *cached_lut;
>   };
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 8c3041f00cda..7359677d8a3d 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -1073,7 +1073,7 @@ static void idpf_vport_rel(struct idpf_vport *vport)
>   	u16 idx = vport->idx;
>   
>   	vport_config = adapter->vport_config[vport->idx];
> -	idpf_deinit_rss(vport);
> +	idpf_deinit_rss_lut(vport);
>   	rss_data = &vport_config->user_config.rss_data;
>   	kfree(rss_data->rss_key);
>   	rss_data->rss_key = NULL;
> @@ -1226,6 +1226,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
>   	u16 idx = adapter->next_vport;
>   	struct idpf_vport *vport;
>   	u16 num_max_q;
> +	int err;
>   
>   	if (idx == IDPF_NO_FREE_SLOT)
>   		return NULL;
> @@ -1276,10 +1277,11 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
>   
>   	idpf_vport_init(vport, max_q);
>   
> -	/* This alloc is done separate from the LUT because it's not strictly
> -	 * dependent on how many queues we have. If we change number of queues
> -	 * and soft reset we'll need a new LUT but the key can remain the same
> -	 * for as long as the vport exists.
> +	/* LUT and key are both initialized here. Key is not strictly dependent
> +	 * on how many queues we have. If we change number of queues and soft
> +	 * reset is initiated, LUT will be freed and a new LUT will be allocated
> +	 * as per the updated number of queues during vport bringup. However,
> +	 * the key remains the same for as long as the vport exists.
>   	 */
>   	rss_data = &adapter->vport_config[idx]->user_config.rss_data;
>   	rss_data->rss_key = kzalloc(rss_data->rss_key_size, GFP_KERNEL);
> @@ -1289,6 +1291,13 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
>   	/* Initialize default rss key */
>   	netdev_rss_key_fill((void *)rss_data->rss_key, rss_data->rss_key_size);
>   
> +	/* Initialize default rss LUT */
> +	err = idpf_init_rss_lut(vport);
> +	if (err) {
> +		kfree(rss_data->rss_key);
> +		goto free_vport;
> +	}
> +
>   	/* fill vport slot in the adapter struct */
>   	adapter->vports[idx] = vport;
>   	adapter->vport_ids[idx] = idpf_get_vport_id(vport);
> @@ -1476,6 +1485,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
>   	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
>   	struct idpf_adapter *adapter = vport->adapter;
>   	struct idpf_vport_config *vport_config;
> +	struct idpf_rss_data *rss_data;
>   	int err;
>   
>   	if (np->state != __IDPF_VPORT_DOWN)
> @@ -1570,14 +1580,23 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
>   	idpf_restore_features(vport);
>   
>   	vport_config = adapter->vport_config[vport->idx];
> -	if (vport_config->user_config.rss_data.rss_lut)
> -		err = idpf_config_rss(vport);
> -	else
> -		err = idpf_init_rss(vport);
> +	rss_data = &vport_config->user_config.rss_data;
> +
> +	if (!rss_data->rss_lut) {
> +		err = idpf_init_rss_lut(vport);
> +		if (err) {
> +			dev_err(&adapter->pdev->dev,
> +				"Failed to initialize RSS LUT for vport %u: %d\n",
> +				vport->vport_id, err);
> +			goto disable_vport;
> +		}
> +	}
> +
> +	err = idpf_config_rss(vport);
>   	if (err) {
> -		dev_err(&adapter->pdev->dev, "Failed to initialize RSS for vport %u: %d\n",
> +		dev_err(&adapter->pdev->dev, "Failed to configure RSS for vport %u: %d\n",
>   			vport->vport_id, err);
> -		goto disable_vport;
> +		goto deinit_rss;
>   	}
>   
>   	err = idpf_up_complete(vport);
> @@ -1593,7 +1612,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
>   	return 0;
>   
>   deinit_rss:
> -	idpf_deinit_rss(vport);
> +	idpf_deinit_rss_lut(vport);
>   disable_vport:
>   	idpf_send_disable_vport_msg(vport);
>   disable_queues:
> @@ -2042,7 +2061,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
>   		idpf_vport_stop(vport, false);
>   	}
>   
> -	idpf_deinit_rss(vport);
> +	idpf_deinit_rss_lut(vport);
>   	/* We're passing in vport here because we need its wait_queue
>   	 * to send a message and it should be getting all the vport
>   	 * config data out of the adapter but we need to be careful not
> @@ -2210,40 +2229,6 @@ static void idpf_set_rx_mode(struct net_device *netdev)
>   		dev_err(dev, "Failed to set promiscuous mode: %d\n", err);
>   }
>   
> -/**
> - * idpf_vport_manage_rss_lut - disable/enable RSS
> - * @vport: the vport being changed
> - *
> - * In the event of disable request for RSS, this function will zero out RSS
> - * LUT, while in the event of enable request for RSS, it will reconfigure RSS
> - * LUT with the default LUT configuration.
> - */
> -static int idpf_vport_manage_rss_lut(struct idpf_vport *vport)
> -{
> -	bool ena = idpf_is_feature_ena(vport, NETIF_F_RXHASH);
> -	struct idpf_rss_data *rss_data;
> -	u16 idx = vport->idx;
> -	int lut_size;
> -
> -	rss_data = &vport->adapter->vport_config[idx]->user_config.rss_data;
> -	lut_size = rss_data->rss_lut_size * sizeof(u32);
> -
> -	if (ena) {
> -		/* This will contain the default or user configured LUT */
> -		memcpy(rss_data->rss_lut, rss_data->cached_lut, lut_size);
> -	} else {
> -		/* Save a copy of the current LUT to be restored later if
> -		 * requested.
> -		 */
> -		memcpy(rss_data->cached_lut, rss_data->rss_lut, lut_size);
> -
> -		/* Zero out the current LUT to disable */
> -		memset(rss_data->rss_lut, 0, lut_size);
> -	}
> -
> -	return idpf_config_rss(vport);
> -}
> -
>   /**
>    * idpf_set_features - set the netdev feature flags
>    * @netdev: ptr to the netdev being adjusted
> @@ -2269,8 +2254,16 @@ static int idpf_set_features(struct net_device *netdev,
>   	}
>   
>   	if (changed & NETIF_F_RXHASH) {
> +		struct idpf_netdev_priv *np = netdev_priv(netdev);
> +
>   		netdev->features ^= NETIF_F_RXHASH;
> -		err = idpf_vport_manage_rss_lut(vport);
> +
> +		/* If the Interface is not up when changing the rxhash, update to the HW is

I’d spell interface lowercase.

> +		 * skipped. The updated LUT will be committed to the HW when the interface
> +		 * is brought up.
> +		 */
> +		if (np->state == __IDPF_VPORT_UP)
> +			err = idpf_config_rss(vport);
>   		if (err)
>   			goto unlock_mutex;
>   	}
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index dcdd4fef1c7a..11f711997db8 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -2868,7 +2868,6 @@ int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)
>   	return 1;
>   }
>   
> -

Unrelated.

>   /**
>    * idpf_tx_splitq_get_ctx_desc - grab next desc and update buffer ring
>    * @txq: queue to put context descriptor on
> @@ -4486,6 +4485,7 @@ static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
>   
>   	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
>   		struct idpf_q_vector *q_vector = &vport->q_vectors[v_idx];
> +

Unrelated.

>   		qv_idx = vport->q_vector_idxs[v_idx];
>   		irq_num = vport->adapter->msix_entries[qv_idx].vector;
>   
> @@ -4652,57 +4652,47 @@ static void idpf_fill_dflt_rss_lut(struct idpf_vport *vport)
>   
>   	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
>   
> -	for (i = 0; i < rss_data->rss_lut_size; i++) {
> +	for (i = 0; i < rss_data->rss_lut_size; i++)
>   		rss_data->rss_lut[i] = i % num_active_rxq;
> -		rss_data->cached_lut[i] = rss_data->rss_lut[i];
> -	}
>   }
>   
>   /**
> - * idpf_init_rss - Allocate and initialize RSS resources
> + * idpf_init_rss_lut - Allocate and initialize RSS LUT
>    * @vport: virtual port
>    *
>    * Return 0 on success, negative on failure
>    */
> -int idpf_init_rss(struct idpf_vport *vport)
> +int idpf_init_rss_lut(struct idpf_vport *vport)
>   {
>   	struct idpf_adapter *adapter = vport->adapter;
>   	struct idpf_rss_data *rss_data;
> -	u32 lut_size;
>   
>   	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
> +	if (!rss_data->rss_lut) {
> +		u32 lut_size;
>   
> -	lut_size = rss_data->rss_lut_size * sizeof(u32);
> -	rss_data->rss_lut = kzalloc(lut_size, GFP_KERNEL);
> -	if (!rss_data->rss_lut)
> -		return -ENOMEM;
> -
> -	rss_data->cached_lut = kzalloc(lut_size, GFP_KERNEL);
> -	if (!rss_data->cached_lut) {
> -		kfree(rss_data->rss_lut);
> -		rss_data->rss_lut = NULL;
> -
> -		return -ENOMEM;
> +		lut_size = rss_data->rss_lut_size * sizeof(u32);
> +		rss_data->rss_lut = kzalloc(lut_size, GFP_KERNEL);
> +		if (!rss_data->rss_lut)
> +			return -ENOMEM;
>   	}
>   
>   	/* Fill the default RSS lut values */
>   	idpf_fill_dflt_rss_lut(vport);
>   
> -	return idpf_config_rss(vport);
> +	return 0;
>   }
>   
>   /**
> - * idpf_deinit_rss - Release RSS resources
> + * idpf_deinit_rss_lut - Release RSS LUT
>    * @vport: virtual port
>    */
> -void idpf_deinit_rss(struct idpf_vport *vport)
> +void idpf_deinit_rss_lut(struct idpf_vport *vport)
>   {
>   	struct idpf_adapter *adapter = vport->adapter;
>   	struct idpf_rss_data *rss_data;
>   
>   	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
> -	kfree(rss_data->cached_lut);
> -	rss_data->cached_lut = NULL;
>   	kfree(rss_data->rss_lut);
>   	rss_data->rss_lut = NULL;
>   }
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index a1255099656f..2bfb87b82a9b 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -1087,8 +1087,8 @@ void idpf_vport_intr_deinit(struct idpf_vport *vport);
>   int idpf_vport_intr_init(struct idpf_vport *vport);
>   void idpf_vport_intr_ena(struct idpf_vport *vport);
>   int idpf_config_rss(struct idpf_vport *vport);
> -int idpf_init_rss(struct idpf_vport *vport);
> -void idpf_deinit_rss(struct idpf_vport *vport);
> +int idpf_init_rss_lut(struct idpf_vport *vport);
> +void idpf_deinit_rss_lut(struct idpf_vport *vport);
>   int idpf_rx_bufs_init_all(struct idpf_vport *vport);
>   
>   struct idpf_q_vector *idpf_find_rxq_vec(const struct idpf_vport *vport,
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index ca302df9ff40..13a7581c07e6 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -2804,6 +2804,10 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
>    * @vport: virtual port data structure
>    * @get: flag to set or get rss look up table
>    *
> + * When rxhash is disabled, RSS LUT will be configured with zeros.  If rxhash
> + * is enabled, the LUT values stored in driver's soft copy will be used to setup
> + * the HW.
> + *
>    * Returns 0 on success, negative on failure.
>    */
>   int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
> @@ -2814,10 +2818,12 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
>   	struct idpf_rss_data *rss_data;
>   	int buf_size, lut_buf_size;
>   	ssize_t reply_sz;
> +	bool rxhash_ena;
>   	int i;
>   
>   	rss_data =
>   		&vport->adapter->vport_config[vport->idx]->user_config.rss_data;
> +	rxhash_ena = idpf_is_feature_ena(vport, NETIF_F_RXHASH);
>   	buf_size = struct_size(rl, lut, rss_data->rss_lut_size);
>   	rl = kzalloc(buf_size, GFP_KERNEL);
>   	if (!rl)
> @@ -2839,7 +2845,8 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
>   	} else {
>   		rl->lut_entries = cpu_to_le16(rss_data->rss_lut_size);
>   		for (i = 0; i < rss_data->rss_lut_size; i++)
> -			rl->lut[i] = cpu_to_le32(rss_data->rss_lut[i]);
> +			rl->lut[i] = (rxhash_ena) ?
> +				cpu_to_le32(rss_data->rss_lut[i]) : 0;
>   
>   		xn_params.vc_op = VIRTCHNL2_OP_SET_RSS_LUT;
>   	}

With the minor comments above addressed, feel free to add:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
