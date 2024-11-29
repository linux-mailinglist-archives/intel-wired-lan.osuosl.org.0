Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7860D9DE9EF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Nov 2024 16:46:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D35786083B;
	Fri, 29 Nov 2024 15:46:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FA1rhz1I48d3; Fri, 29 Nov 2024 15:46:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06C6560838
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732895185;
	bh=rcN/VjQsWEr8cckNhEae5YA0C7hq6vEXjZlBRJIXtGM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hWtVuG78ll77QhkTpyF1zEveL6Hmpz4aF8T9p6MXoO4zhPhdKgKxaygfTyPULazZy
	 q3tghkSEfHLYtXiJ7pzrcc/ek6faHPpfFRIK6J57e3m80t062w8H4obLbf6w2LBXdY
	 kSy1isuLwKzmpeY/3b4w+hYgd4elinud1eo9CJ7ZoRR2gI13a9sw00NESy+GTzhS8c
	 FfYQIPOO3yb06L8TDWg3mj52fj2ZJnclatt3wLC2yw/ncbfnOTggrOZ8OBpBfHZ+7J
	 R7WwWk8SqYldrDulVcV5em/Z73lNnXhz9Ikk4xcf51sF0bPt7tvZVAcd8lm2nxo+To
	 PFIZlm3uvB0Zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06C6560838;
	Fri, 29 Nov 2024 15:46:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6993771F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 15:46:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A4CA40971
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 15:46:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oWtsdn6k76_h for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Nov 2024 15:46:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::72b; helo=mail-qk1-x72b.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1A4B040978
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A4B040978
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A4B040978
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 15:46:21 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id
 af79cd13be357-7b6662bc408so151876485a.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 07:46:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732895180; x=1733499980;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=rcN/VjQsWEr8cckNhEae5YA0C7hq6vEXjZlBRJIXtGM=;
 b=BLa4vzEwyg4ofc377IbnfwRdVVjDFzdqLFlO9W4zPScufAUPQZqLwKjh2DdLkzBm+H
 axu11GKEqL6UdapwgGpPU7k3VK++wsPZaVU3R9oHsW90lKz/EsvLINETiyvfvRyWL/Iu
 OsrxWCfVN4Wv1zH0IkxctSOESS/WK+zKlzOypcS7Wkoj3I2EO9u8vSxH/Q1bTOP6G35w
 fVVbmXv066zHDzeT3tCvByRg4/vyAvKVuc7r8j/t+3a5sj0jJ64HMSQ9oqiDWy3+AQG/
 QXuYmuYm5kSFX7J5DTiAJu9Oxwqh90G7Iux5N7fCckSbCS2hZrhoMZOBX3ZEnuUXLTQK
 zEbw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVVxNdtkPvdubhi8/vlj0R99K98lm7sjTu0bfCCWvtgmTg7w+f4hBBd6awyJO+bGCIcE7cgzPkSspewmYPM5ag=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxHxpkflznROQdWfFPd0ESP0DqS5udmkUyjrXEGrN6fzNkD1bHT
 O65QNEzZ3rcjpWziCELS1wjcS9BMMApejXrw2hBpgGVXwMpVZYep
X-Gm-Gg: ASbGnctfANxjWBGA3ZkV1PsIYJPis7n9VMIJuq+Wa8eqTRkS9Sg2E3YMJMNs6WsQDeL
 rcWZRRfYAOs9vk7dzLJalJD7u5y7bKrVL60/KQQdXOSKyrqYspiQUmxB/hoAEYPlKNyi8Vk4lkE
 96bVvjhy66int2U+D4ftQ4CChoLwo+doi1vYx8MKtTHIyv6gwWxdHFTxjcP1iiZM690XA1A8ip4
 DnkQuYUPjmhAqhRQl6tcCh7se9EphQ6eRCG/IHLivGfCt/2WR2Ze+43tGRIy7VwOUOzvY/9GV2z
 e0XvvK2DKFjWWRljU9MKOw==
X-Google-Smtp-Source: AGHT+IHYyrbyrklERwq9PyaRMbk3QF4tKiBra/sb4wYtb1bzFFpjwstgScktKEVHHZIRccgHBQEnBg==
X-Received: by 2002:a05:620a:6086:b0:7b6:6701:7a48 with SMTP id
 af79cd13be357-7b67c4a0ea8mr1987376985a.61.1732895180542; 
 Fri, 29 Nov 2024 07:46:20 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7b684946dc0sm150709585a.57.2024.11.29.07.46.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2024 07:46:20 -0800 (PST)
Date: Fri, 29 Nov 2024 10:46:19 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Josh Hay <joshua.a.hay@intel.com>
Message-ID: <6749e1cb95bed_23772a2944b@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241126035849.6441-9-milena.olech@intel.com>
References: <20241126035849.6441-1-milena.olech@intel.com>
 <20241126035849.6441-9-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1732895180; x=1733499980; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rcN/VjQsWEr8cckNhEae5YA0C7hq6vEXjZlBRJIXtGM=;
 b=bk6WoZzHAL4VKaxKTPjmBeUfmAYw0P3XK4mrwljrNPncHb7nVlGPRbjp68Wye7oFa8
 cLkuq5DN3T+zWOU4cLX6LBF8oe78IF6Rho0cUdYttOAN2ijY3kwx9uWyJRE2V6LNpkML
 PzwNLMg5UXiqDlPlEWRwXL8w03KmgSyg9u/jw4wCl0XIteifBYlWC5iAQ7tbH8BlOr4s
 ySGrJtcMTwuPTeJJxZA0L3mpcBtGYub3Xv1KKDJ8FiCPoGZb9L4gtcAe2vnRz3+ujC7I
 4AgQgNWJX/hleUoVIzR9J8N2NKay8XB71+zohcGsk8Jqtr2hd4ly0JE/gY7z/1gNdjcQ
 LWpQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=bk6WoZzH
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 08/10] idpf: add Tx
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
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> v1 -> v2: add timestamping stats, use ndo_hwtamp_get/ndo_hwstamp_set

> +/**
> + * idpf_set_timestamp_filters - Set the supported timestamping mode
> + * @vport: Virtual port structure
> + * @info: ethtool timestamping info structure
> + *
> + * Set the Tx/Rx timestamp filters.
> + */
> +static void idpf_set_timestamp_filters(const struct idpf_vport *vport,
> +				       struct kernel_ethtool_ts_info *info)

This is not really a setter. It modifies no vport state.

idpf_get_timestamp_filters? Or just merge into the below caller.

> +{
> +	if (!vport->tx_tstamp_caps ||
> +	    vport->adapter->ptp->tx_tstamp_access == IDPF_PTP_NONE)
> +		return;
> +
> +	info->so_timestamping = SOF_TIMESTAMPING_TX_SOFTWARE |
> +				SOF_TIMESTAMPING_TX_HARDWARE |
> +				SOF_TIMESTAMPING_RX_HARDWARE |
> +				SOF_TIMESTAMPING_RAW_HARDWARE;
> +
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
> +	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
> +	struct idpf_vport *vport;
> +	int err = 0;
> +
> +	idpf_vport_cfg_lock(adapter);
> +	vport = idpf_netdev_to_vport(netdev);
> +
> +	if (!vport->adapter->ptp) {
> +		err = -EOPNOTSUPP;
> +		goto unlock;
> +	}
> +
> +	idpf_set_timestamp_filters(vport, info);

Probably move this in the below if, als it gets entirely overwritten
if the else is taken.
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
> +	idpf_vport_cfg_unlock(adapter);
> +
> +	return err;
> +}

> +/**
> + * idpf_ptp_extend_ts - Convert a 40b timestamp to 64b nanoseconds
> + * @vport: Virtual port structure
> + * @in_tstamp: Ingress/egress timestamp value
> + *
> + * It is assumed that the caller verifies the timestamp is valid prior to
> + * calling this function.
> + *
> + * Extract the 32bit nominal nanoseconds and extend them. Use the cached PHC
> + * time stored in the device private PTP structure as the basis for timestamp
> + * extension.
> + *
> + * Return: Tx timestamp value extended to 64 bits.
> + */
> +u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp)
> +{
> +	struct idpf_ptp *ptp = vport->adapter->ptp;
> +	unsigned long discard_time;
> +
> +	discard_time = ptp->cached_phc_jiffies + 2 * HZ;
> +
> +	if (time_is_before_jiffies(discard_time)) {
> +		vport->tstamp_stats.tx_hwtstamp_discarded++;
> +		return 0;
> +	}
> +
> +	return idpf_ptp_tstamp_extend_32b_to_64b(ptp->cached_phc_time,
> +						 lower_32_bits(in_tstamp));
> +}

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
> +	/* only timestamp the outbound packet if the user has requested it */
> +	if (likely(!(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)))
> +		return -1;
> +
> +	if (!idpf_ptp_get_txq_tstamp_capability(tx_q))
> +		return -1;
> +
> +	/* Tx timestamps cannot be sampled when doing TSO */
> +	if (off->tx_flags & IDPF_TX_FLAGS_TSO)
> +		return -1;
> +
> +	/* Grab an open timestamp slot */
> +	err = idpf_ptp_request_ts(tx_q, skb, &idx);
> +	if (err) {
> +		tx_q->txq_grp->vport->tstamp_stats.tx_hwtstamp_skipped++;

What is the mutual exclusion on these stats fields?

In ndo_start_xmit the txq lock is held, but no vport wide lock?

> +		return -1;
> +	}
> +
> +	off->tx_flags |= IDPF_TX_FLAGS_TSYN;
> +
> +	return idx;
> +}
