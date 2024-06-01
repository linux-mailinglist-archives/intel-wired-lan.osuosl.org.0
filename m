Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6648D6F0B
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Jun 2024 10:53:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92A9A40A44;
	Sat,  1 Jun 2024 08:53:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6jl_DXHSReY1; Sat,  1 Jun 2024 08:53:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B200A4098E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717231998;
	bh=jHHXqnxqLD7pgGo0x07reN6AD4p9u0oiQRQYusGLO1g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ozL/WBttUXXwymHsI5y1plgFNv2Cd3mcqENKJ5MCFutEyNO4pYERcifLe8oMed5/y
	 DVBEbmKnr1G/oPj4+6FVhUt/pMYk7iRYZZZPXvV0aTdN4lCkmbKXUhX1Cx28hTnOuk
	 eHvgoViHh1BVhaInxPwKNA5fYRGB94nPXyy+RBSI0VLXaYKbDYNNjP3xb3najwMSNs
	 FoN1elx3lJWxlK5PkMKKfHaK2ykRDCX8agBueRaKiobf+wWdkKsDq+XKbkopZlMDay
	 FRlNm+75DZKXqVJAReeb7vuzkR7QLIiQazGP5qp2iZXJaZz9tFwJIkSE9CIBRsI/Y6
	 WVZhEF0P5F1vg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B200A4098E;
	Sat,  1 Jun 2024 08:53:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 128F31BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 08:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E74896083F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 08:53:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XUzp-whfc9Gh for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Jun 2024 08:53:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2523D60824
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2523D60824
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2523D60824
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 08:53:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E7550608CC;
 Sat,  1 Jun 2024 08:53:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EEA5C116B1;
 Sat,  1 Jun 2024 08:53:10 +0000 (UTC)
Date: Sat, 1 Jun 2024 09:53:08 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240601085308.GY491852@kernel.org>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-4-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528134846.148890-4-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717231993;
 bh=H5sB6TwHZi7BqHGT0l4LyuL8uIqho7zk4EU9ve/2M7M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uYM5mKBMZVOnqc1CmIlU/61jMLZeQXjryZ8hfftIDjU2gZUfQn2kgd4NLOwF6K+Fj
 Wgtb/pN3HPAIFLYHgVqlW10OutVn6ctkRJTLubWTefirlZc7lqsgnRp+PacLFByBbZ
 qa8dcRYjCfbJxGfWZwAHw8PMkULmo3AigYnTJ7ZGfr33e9qx3VdvUP1+TJ98b+wuzh
 EvOkrvNuSJkXNAyAQwPEh78WnXIjFKa4EXzE8pSRn7zN6pI5nazvOFNng5bdvByZle
 zHUHSEYMJRY69e+8nooTnDbHW/Nla6+FJY/M2NAbMLGwFtjTFctbVV7YAk1cFndAvp
 P4swyh21+FMlA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=uYM5mKBM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 03/12] idpf: split
 &idpf_queue into 4 strictly-typed queue structures
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
Cc: Mina Almasry <almasrymina@google.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 28, 2024 at 03:48:37PM +0200, Alexander Lobakin wrote:
> Currently, sizeof(struct idpf_queue) is 32 Kb.
> This is due to the 12-bit hashtable declaration at the end of the queue.
> This HT is needed only for Tx queues when the flow scheduling mode is
> enabled. But &idpf_queue is unified for all of the queue types,
> provoking excessive memory usage.
> The unified structure in general makes the code less effective via
> suboptimal fields placement. You can't avoid that unless you make unions
> each 2 fields. Even then, different field alignment etc., doesn't allow
> you to optimize things to the limit.
> Split &idpf_queue into 4 structures corresponding to the queue types:
> RQ (Rx queue), SQ (Tx queue), FQ (buffer queue), and CQ (completion
> queue). Place only needed fields there and shortcuts handy for hotpath.
> Allocate the abovementioned hashtable dynamically and only when needed,
> keeping &idpf_tx_queue relatively short (192 bytes, same as Rx). This HT
> is used only for OOO completions, which aren't really hotpath anyway.
> Note that this change must be done atomically, otherwise it's really
> easy to get lost and miss something.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c

...

> @@ -1158,20 +1325,22 @@ static void idpf_rxq_set_descids(struct idpf_vport *vport, struct idpf_queue *q)
>   */
>  static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
>  {
> -	bool flow_sch_en;
> -	int err, i;
> +	bool split, flow_sch_en;
> +	int i;
>  
>  	vport->txq_grps = kcalloc(vport->num_txq_grp,
>  				  sizeof(*vport->txq_grps), GFP_KERNEL);
>  	if (!vport->txq_grps)
>  		return -ENOMEM;
>  
> +	split = idpf_is_queue_model_split(vport->txq_model);
>  	flow_sch_en = !idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
>  				       VIRTCHNL2_CAP_SPLITQ_QSCHED);
>  
>  	for (i = 0; i < vport->num_txq_grp; i++) {
>  		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
>  		struct idpf_adapter *adapter = vport->adapter;
> +		struct idpf_txq_stash *stashes;
>  		int j;
>  
>  		tx_qgrp->vport = vport;
> @@ -1180,45 +1349,62 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
>  		for (j = 0; j < tx_qgrp->num_txq; j++) {
>  			tx_qgrp->txqs[j] = kzalloc(sizeof(*tx_qgrp->txqs[j]),
>  						   GFP_KERNEL);
> -			if (!tx_qgrp->txqs[j]) {
> -				err = -ENOMEM;
> +			if (!tx_qgrp->txqs[j])
>  				goto err_alloc;
> -			}
> +		}
> +
> +		if (split && flow_sch_en) {
> +			stashes = kcalloc(num_txq, sizeof(*stashes),
> +					  GFP_KERNEL);

Hi Alexander,

Here stashes is assigned a memory allocation and
then then assigned to tx_qgrp->stashes a few lines below...

> +			if (!stashes)
> +				goto err_alloc;
> +
> +			tx_qgrp->stashes = stashes;
>  		}
>  
>  		for (j = 0; j < tx_qgrp->num_txq; j++) {
> -			struct idpf_queue *q = tx_qgrp->txqs[j];
> +			struct idpf_tx_queue *q = tx_qgrp->txqs[j];
>  
>  			q->dev = &adapter->pdev->dev;
>  			q->desc_count = vport->txq_desc_count;
>  			q->tx_max_bufs = idpf_get_max_tx_bufs(adapter);
>  			q->tx_min_pkt_len = idpf_get_min_tx_pkt_len(adapter);
> -			q->vport = vport;
> +			q->netdev = vport->netdev;
>  			q->txq_grp = tx_qgrp;
> -			hash_init(q->sched_buf_hash);
>  
> -			if (flow_sch_en)
> -				set_bit(__IDPF_Q_FLOW_SCH_EN, q->flags);
> +			if (!split) {
> +				q->clean_budget = vport->compln_clean_budget;
> +				idpf_queue_assign(CRC_EN, q,
> +						  vport->crc_enable);
> +			}
> +
> +			if (!flow_sch_en)
> +				continue;
> +
> +			if (split) {

... but here elements of stashes seem to be assigned to q->stash
without stashes having being initialised.

Flagged by Smatch

> +				q->stash = &stashes[j];
> +				hash_init(q->stash->sched_buf_hash);
> +			}
> +
> +			idpf_queue_set(FLOW_SCH_EN, q);
>  		}
>  
> -		if (!idpf_is_queue_model_split(vport->txq_model))
> +		if (!split)
>  			continue;
>  
>  		tx_qgrp->complq = kcalloc(IDPF_COMPLQ_PER_GROUP,
>  					  sizeof(*tx_qgrp->complq),
>  					  GFP_KERNEL);
> -		if (!tx_qgrp->complq) {
> -			err = -ENOMEM;
> +		if (!tx_qgrp->complq)
>  			goto err_alloc;
> -		}
>  
> -		tx_qgrp->complq->dev = &adapter->pdev->dev;
>  		tx_qgrp->complq->desc_count = vport->complq_desc_count;
> -		tx_qgrp->complq->vport = vport;
>  		tx_qgrp->complq->txq_grp = tx_qgrp;
> +		tx_qgrp->complq->netdev = vport->netdev;
> +		tx_qgrp->complq->clean_budget = vport->compln_clean_budget;
>  
>  		if (flow_sch_en)
> -			__set_bit(__IDPF_Q_FLOW_SCH_EN, tx_qgrp->complq->flags);
> +			idpf_queue_set(FLOW_SCH_EN, tx_qgrp->complq);
>  	}
>  
>  	return 0;
> @@ -1226,7 +1412,7 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
>  err_alloc:
>  	idpf_txq_group_rel(vport);
>  
> -	return err;
> +	return -ENOMEM;
>  }
>  
>  /**

...
