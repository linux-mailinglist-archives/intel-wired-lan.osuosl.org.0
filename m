Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 919F5A10C3D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 17:26:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2946560FEC;
	Tue, 14 Jan 2025 16:26:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MTX4r8rYuwVj; Tue, 14 Jan 2025 16:26:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5659760FE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736872017;
	bh=FEuiFQoE0byhI+i3CKyjvZXHMZqvFwyU1uC8v3SQtWQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JG1fbNCiJjTEMCRIfQZico297G2qleZf5+0kbKvr6FzNOlbfriaajSOlrRLFgB1CE
	 wdJ56t8NHRsqUmSqjwWk/a4sOCZ9F4K6BWblZb40t0tl5DswZX6IB7WJ2ZyO0GDS94
	 99y8nYPDNjh9P/5qJpBr5XbjIZn7wM9bnpyGHlJ1J/lmVUA0cGs05bnrB5sFo9DIpk
	 O3sgpzU+79aXgAlC8ZpG5Lg/7UAgOXWtYK3iLd6VG4t5SkyVfxaiGdJIiJljkhsFqQ
	 sGO1CNE3dU91lSuqKoQ2qCxmtPmNCZy5PQR8sq0kO+5nCawyt8OgkULS84Nj82KRT/
	 JUyRTwRKZhzqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5659760FE8;
	Tue, 14 Jan 2025 16:26:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id F1D9394B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 16:26:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D30B340FB5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 16:26:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4VNAfuwr6YOT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 16:26:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DBF7440FAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBF7440FAB
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DBF7440FAB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 16:26:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 407675C4708;
 Tue, 14 Jan 2025 16:26:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7491AC4CEDD;
 Tue, 14 Jan 2025 16:26:50 +0000 (UTC)
Date: Tue, 14 Jan 2025 16:26:48 +0000
From: Simon Horman <horms@kernel.org>
To: Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Josh Hay <joshua.a.hay@intel.com>
Message-ID: <20250114162648.GK5497@kernel.org>
References: <20250114121103.605288-1-milena.olech@intel.com>
 <20250114121103.605288-9-milena.olech@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250114121103.605288-9-milena.olech@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736872011;
 bh=M4Cn+eL+x9zWWIRpPVhnct7ZMf79YYvSQa9ze2RWOZk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L8rGYhk5UcrthKy07+U6QbtWuVwTvNjdAFVAgigadI1Orhw52/3oQYSKX+qgxh5+b
 u2hNSV2Vecd2kcx6Mn0JdZ6zqBMGe/GOnFbCm4HDiT8yfh2P54UC6457M+xl5/UWOn
 plqfWvQPYL7MKou4FPItIF9TczetMchsAgHKZH4PgZ+lcgQ7PYXmqLiskGe+okcPdt
 uCWWTofON2LW4i1Ihe3AuPwrDEYVVVu2cc/0u72Vrmn0M7Dq4zwJIuWoEpBh7fd29Q
 Ezp3W9MqYO3NKbeeJzhJWvohJFYviWYAl8LngsWcmC1uGG5aium58X5SjX4IqHr+PI
 NEQY5quLslm4g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=L8rGYhk5
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 08/10] idpf: add Tx
 timestamp flows
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

On Tue, Jan 14, 2025 at 01:11:13PM +0100, Milena Olech wrote:
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
> Signed-off-by: Milena Olech <milena.olech@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c

...

> +/**
> + * idpf_ptp_request_ts - Request an available Tx timestamp index
> + * @tx_q: Transmit queue on which the Tx timestamp is requested
> + * @skb: The SKB to associate with this timestamp request
> + * @idx: Index of the Tx timestamp latch
> + *
> + * Request tx timestamp index negotiated during PTP init that will be set into
> + * Tx descriptor.
> + *
> + * Return: 0 and the index that can be provided to Tx descriptor on success,
> + * -errno otherwise.
> + */
> +int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
> +			u32 *idx)
> +{
> +	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
> +	struct list_head *head;
> +
> +	/* Get the index from the free latches list */
> +	spin_lock_bh(&tx_q->cached_tstamp_caps->lock_free);
> +
> +	head = &tx_q->cached_tstamp_caps->latches_free;
> +	if (list_empty(head)) {
> +		spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_in_use);

Hi Milena and Josh,

Should the line above be:

		spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_free);
		                                          ^^^^^^^^^

Flagged by Smatch.

> +		return -ENOBUFS;
> +	}
> +
> +	ptp_tx_tstamp = list_first_entry(head, struct idpf_ptp_tx_tstamp,
> +					 list_member);
> +	list_del(&ptp_tx_tstamp->list_member);
> +	spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_free);
> +
> +	ptp_tx_tstamp->skb = skb_get(skb);
> +	skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
> +
> +	/* Move the element to the used latches list */
> +	spin_lock_bh(&tx_q->cached_tstamp_caps->lock_in_use);
> +	list_add(&ptp_tx_tstamp->list_member,
> +		 &tx_q->cached_tstamp_caps->latches_in_use);
> +	spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_in_use);
> +
> +	*idx = ptp_tx_tstamp->idx;
> +
> +	return 0;
> +}

...
