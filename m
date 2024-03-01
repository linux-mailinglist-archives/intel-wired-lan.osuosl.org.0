Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 064CB86E7D0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 18:54:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B3C641C96;
	Fri,  1 Mar 2024 17:54:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MyoqL4_W7F6h; Fri,  1 Mar 2024 17:54:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4479941C84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709315681;
	bh=nTu8BntRycqg7yt21AHZn8UXSjkjplk0BJ11/qY4XBE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jx6Yuq+pq/ACo+svpd7cZoXZCRc288kmeGH+gZKasI42aH44wyZ9hu4ZhWjrLh/F0
	 9evbWQ9ITtiWiGlMSCYvGTkOEdkT/o1IuJlKk2SgfJIKx4jz76qPH9v8x6VvozSC4N
	 QLD9y7jPD4WIRvqDRhIUw1ZPSI4AMdoT73VZVQcdChFPTbYUENEXKCJ+R/bVOH5a3b
	 yIYMrGTde5ME34VtkMD8xi0CKlhoJkzxCDTyWIdzpKWVyitURctqKDRQgB6i2jSSFx
	 am25QifayWTm4maACwO2EPd6gjknIKF8DJfyCMUa5VnDw7FHTP0B2zsl1pn+NeVKKG
	 OqvyYDPyiwu+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4479941C84;
	Fri,  1 Mar 2024 17:54:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC6B71BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 17:54:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C72D641C6A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 17:54:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wuDN1J69zMf7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 17:54:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::633; helo=mail-pl1-x633.google.com;
 envelope-from=john.fastabend@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9846241C68
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9846241C68
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9846241C68
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 17:54:37 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-1db6e0996ceso19671655ad.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 01 Mar 2024 09:54:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709315677; x=1709920477;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=nTu8BntRycqg7yt21AHZn8UXSjkjplk0BJ11/qY4XBE=;
 b=Xx2TwTkfU6+O7z6dJLSsmJo8mGJDxtcBRsN7xSlfEnxesPbHZIiD7rf/l3bYi/UyxV
 LQbMr03LZI0fYvQGaEgLbRpBhtvZxYmHGCwT77CbZFdEGP7ka0xyi+KyQpWocnDHCfcQ
 Dno/vQOYLnlpu4p7ZyU4Ft4hz82kw0X0ng4lsZPinoBCzDO57lRw4yvGx18K+j2Zi5kS
 PHnJ9ZQvfi+xp4if0byiaJ3vzKGKsUUqbQ/YHzT80O28uhsI5zcVO3/CDkG0hncWAfk+
 YURheNegBi8VLj/DwbA/rAQVtCdFRwneFGSWRNHKI+Nu8Xf8bpyPZbMhO1c8lOMLlDcP
 cXPw==
X-Gm-Message-State: AOJu0Yxsx3PQoEhBSupSRHGeFEaZydqF1lfsijQuJ9SggAsjMFImWlAS
 X8iW+QKjk96iIRYoP5vEoJkj2xAAIIeNl27qk9aryms/VUXOHBO2
X-Google-Smtp-Source: AGHT+IE9csmqmhCHH7CB4+0CxfUKKrr/8xABmiG0iw4SYFgI5JFB+8TUoh0+dZcVBRLvK/L83PLtYQ==
X-Received: by 2002:a17:903:8c6:b0:1dc:d515:79ca with SMTP id
 lk6-20020a17090308c600b001dcd51579camr2747683plb.5.1709315676554; 
 Fri, 01 Mar 2024 09:54:36 -0800 (PST)
Received: from localhost ([98.97.43.160]) by smtp.gmail.com with ESMTPSA id
 e8-20020a170902784800b001da001aed18sm3800862pln.54.2024.03.01.09.54.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Mar 2024 09:54:35 -0800 (PST)
Date: Fri, 01 Mar 2024 09:54:34 -0800
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
 Florian Bezdeka <florian.bezdeka@siemens.com>, 
 Andrii Nakryiko <andrii@kernel.org>, 
 Eduard Zingerman <eddyz87@gmail.com>, Mykola Lysenko <mykolal@fb.com>, 
 Martin KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>, 
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, 
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, 
 Shuah Khan <shuah@kernel.org>
Message-ID: <65e2165a89ed0_5dcfe20823@john.notmuch>
In-Reply-To: <20240301162348.898619-3-yoong.siang.song@intel.com>
References: <20240301162348.898619-1-yoong.siang.song@intel.com>
 <20240301162348.898619-3-yoong.siang.song@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709315677; x=1709920477; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nTu8BntRycqg7yt21AHZn8UXSjkjplk0BJ11/qY4XBE=;
 b=VtDzG7oOYsEKMt1ee353+lv4Q7jLo8kP+vhgtqoPeOiDieSXnTuB5J1WUfiLTdnQxj
 HexlQHSbTRRWCycZlhvs0qolkiouWtZnq4j1XwBdHttYb7y+te7izPa0t63X1u0uhvpS
 CpE+iNIC30wUmAZ2+UafrfN3evy4xRBBHKgd9bB/h1uW2jI04vs8go25kdBEz7yBKdAL
 SrUpxzVQFhr1QUsg7irv+0+w7+iconpC/Izo57KYPvYargF8kkb/a5QIl0YGy+vpwrSS
 PEgOGRyXr5nyLqycQNy3cWr4r3wt2MjR7nlg1aD9Qa6mp4ilWZ833SzlVla8kFRVlPld
 znnQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=VtDzG7oO
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v2 2/2] igc: Add Tx hardware timestamp request for AF_XDP zero-copy
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
Cc: xdp-hints@xdp-project.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org, bpf@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Song Yoong Siang wrote:
> This patch adds support to per-packet Tx hardware timestamp request to
> AF_XDP zero-copy packet via XDP Tx metadata framework. Please note that
> user needs to enable Tx HW timestamp capability via igc_ioctl() with
> SIOCSHWTSTAMP cmd before sending xsk Tx hardware timestamp request.
> 
> Same as implementation in RX timestamp XDP hints kfunc metadata, Timer 0
> (adjustable clock) is used in xsk Tx hardware timestamp. i225/i226 have
> four sets of timestamping registers. Both *skb and *xsk_tx_buffer pointers
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
> Co-developed-by: Lai Peter Jun Ann <jun.ann.lai@intel.com>
> Signed-off-by: Lai Peter Jun Ann <jun.ann.lai@intel.com>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> ---

[...]

>  
> +static void igc_xsk_request_timestamp(void *_priv)
> +{
> +	struct igc_metadata_request *meta_req = _priv;
> +	struct igc_ring *tx_ring = meta_req->tx_ring;
> +	struct igc_tx_timestamp_request *tstamp;
> +	u32 tx_flags = IGC_TX_FLAGS_TSTAMP;
> +	struct igc_adapter *adapter;
> +	unsigned long lock_flags;
> +	bool found = false;
> +	int i;
> +
> +	if (test_bit(IGC_RING_FLAG_TX_HWTSTAMP, &tx_ring->flags)) {
> +		adapter = netdev_priv(tx_ring->netdev);
> +
> +		spin_lock_irqsave(&adapter->ptp_tx_lock, lock_flags);
> +
> +		/* Search for available tstamp regs */
> +		for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
> +			tstamp = &adapter->tx_tstamp[i];
> +
> +			if (tstamp->skb)
> +				continue;
> +
> +			found = true;
> +			break;

Not how I would have written this loop construct seems a bit odd
to default break but it works.

> +		}
> +
> +		/* Return if no available tstamp regs */
> +		if (!found) {
> +			adapter->tx_hwtstamp_skipped++;
> +			spin_unlock_irqrestore(&adapter->ptp_tx_lock,
> +					       lock_flags);
> +			return;
> +		}

[...]

>  
> +static void igc_ptp_free_tx_buffer(struct igc_adapter *adapter,
> +				   struct igc_tx_timestamp_request *tstamp)
> +{
> +	if (tstamp->buffer_type == IGC_TX_BUFFER_TYPE_XSK) {
> +		/* Release the transmit completion */
> +		tstamp->xsk_tx_buffer->xsk_pending_ts = false;
> +		tstamp->xsk_tx_buffer = NULL;
> +		tstamp->buffer_type = 0;
> +
> +		/* Trigger txrx interrupt for transmit completion */
> +		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);

Just curious because I didn't find it. Fairly sure I just need to look more,
but don't you want to still 'tstamp->skb = NULL' in this path somewhere?
It looks like triggering the tx interrupt again with buffer_type == 0 wouldn't
do the null.

I suspect I just missed it.
