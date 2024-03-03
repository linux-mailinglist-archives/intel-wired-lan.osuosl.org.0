Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB4886F34C
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Mar 2024 02:59:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83D8B8291A;
	Sun,  3 Mar 2024 01:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxVUf9dFdBPQ; Sun,  3 Mar 2024 01:59:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B3F3826C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709431148;
	bh=WrThd3AbGp2L2TbdibjncZIHTv9jShOpMlQ84CCLklk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RfunInQ6SGd4WhsNY5hFkaUTeGPiOHdZsib5PEVNHzsYFnJ5ICCsc/u7qfBAlnPCW
	 KMRnxk27oFgsvHVvAufnX2iOJ7zVsbCf9u9SLjI4O+HRmhVJ8ifWUlmYstyBd972p7
	 2JVmFEooJQwZmUQnOIp1Fw/Q/5X6Len1ldtxdKos3GemLU4chmYZOmPCTQvouiUmuG
	 9VEAM9reMWASgtOgkicIGAISSUwRHZex5Ny6zkBjb80k0apGv/AtkPu536MW5sUC3N
	 opTYT6qllqeIxQguWpQL4CSjSXf+j/S8iTaLByaljRc+RQBmPCh7TR/QUld8Uc4MUF
	 NpN3UH4yowKGw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B3F3826C2;
	Sun,  3 Mar 2024 01:59:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 412D41BF20F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Mar 2024 01:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36BB241554
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Mar 2024 01:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b_52vDDAYCnw for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Mar 2024 01:59:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=john.fastabend@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5D743414CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D743414CD
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5D743414CD
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Mar 2024 01:59:05 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-1dc3b4b9b62so29742775ad.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 02 Mar 2024 17:59:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709431144; x=1710035944;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=WrThd3AbGp2L2TbdibjncZIHTv9jShOpMlQ84CCLklk=;
 b=wScibtLAG9c1hiMiiIQ/ZSFwgIbN/wUTb/S+En+NpJSnZRnNmusKICHwiZUAl/2FS+
 vXldDUPY0yq2F2fSaGF6TIcCFZKWLoHLM79N9I5VR3Q8W8NhtCAblMZfXrne6Akumtz0
 qcBQ2NTWNszBKjiXdAeiOJ0ZkfvNYwdDzL9JTMGxNtxC2bkBaXTPpdX4NTbbGtK+dLIN
 6HXhDGrRQuwS2yhJrf82CEGiZfwh5JlobRBF0+nUXZevddCA3HAyPr0+qhpzdqLeVWle
 xqn99dfOQ64uIhN0lnE6a5ETbneOiydh/v6J5kp2nJKI97xPJGOD/pWtXVWsoc6/Hnl/
 PA9w==
X-Gm-Message-State: AOJu0YxCdQBUzctEOaZ1X8H2P4ubB3OsBRjn5FfAkG7bF5fMhjvF8ceh
 DDA3OQU8+K0GxK6UHzlQpD9qGzroQxwSww2P2fEwlmA+8q/g5u5c
X-Google-Smtp-Source: AGHT+IEpcJ1ppLdYI3v6PLpHlNkGd8s29BlMzJkoxyiUaoL1N4wuBSlJRKARDn+uAIHWuZ2lCr5vRA==
X-Received: by 2002:a17:902:a513:b0:1dc:b77e:1978 with SMTP id
 s19-20020a170902a51300b001dcb77e1978mr10346412plq.28.1709431144407; 
 Sat, 02 Mar 2024 17:59:04 -0800 (PST)
Received: from localhost (071-084-162-223.res.spectrum.com. [71.84.162.223])
 by smtp.gmail.com with ESMTPSA id
 l5-20020a170903120500b001dc3ef7aa2bsm5827341plh.49.2024.03.02.17.59.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Mar 2024 17:59:03 -0800 (PST)
Date: Sat, 02 Mar 2024 17:58:59 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>, 
 John Fastabend <john.fastabend@gmail.com>, 
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "David S . Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 Stanislav Fomichev <sdf@google.com>, 
 "Gomes, Vinicius" <vinicius.gomes@intel.com>, 
 "Bezdeka, Florian" <florian.bezdeka@siemens.com>, 
 Andrii Nakryiko <andrii@kernel.org>, 
 Eduard Zingerman <eddyz87@gmail.com>, Mykola Lysenko <mykolal@fb.com>, 
 Martin KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>, 
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, 
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, 
 Shuah Khan <shuah@kernel.org>
Message-ID: <65e3d963c6dc0_8ee3b20879@john.notmuch>
In-Reply-To: <PH0PR11MB58305CA6B9ECA2005DC315CCD85D2@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20240301162348.898619-1-yoong.siang.song@intel.com>
 <20240301162348.898619-3-yoong.siang.song@intel.com>
 <65e2165a89ed0_5dcfe20823@john.notmuch>
 <PH0PR11MB58305CA6B9ECA2005DC315CCD85D2@PH0PR11MB5830.namprd11.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709431144; x=1710035944; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WrThd3AbGp2L2TbdibjncZIHTv9jShOpMlQ84CCLklk=;
 b=mFiagDTPcU1c1otZ6rGgVez/SwXeXt1P3Dnj8NDMUj6OiFbzjk3YfdvzYlmUrAq07j
 y8ebc/yLnH4FCR4LaVSAv4pM91+JWFNxvI4fn8I4uFJTTxgqmbL8lKWyGaluW5n2da/1
 zm/ERmrOEszKyEtCSMV4bxioCHXgFQmdplwG32debjD1ZkuCgD39YqIC6VjHHP8v2Igs
 fAIbgZzI/phxPnNUyK5aDzswL1DEWzl3TO2AQNXGsbVpMrcifP0AH49e2fHUNnbzcLJ9
 aWld6uaThqqQLYiu/Nsl5RTftwuGCG/OCKBZi8ddvjU0tcETcZzEMDBP+QBV08EkUxxX
 GtOw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=mFiagDTP
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Song, Yoong Siang wrote:
> On Saturday, March 2, 2024 1:55 AM, John Fastabend <john.fastabend@gmail.com> wrote:
> >Song Yoong Siang wrote:
> >> This patch adds support to per-packet Tx hardware timestamp request to
> >> AF_XDP zero-copy packet via XDP Tx metadata framework. Please note that
> >> user needs to enable Tx HW timestamp capability via igc_ioctl() with
> >> SIOCSHWTSTAMP cmd before sending xsk Tx hardware timestamp request.
> >>
> >> Same as implementation in RX timestamp XDP hints kfunc metadata, Timer 0
> >> (adjustable clock) is used in xsk Tx hardware timestamp. i225/i226 have
> >> four sets of timestamping registers. Both *skb and *xsk_tx_buffer pointers
> >> are used to indicate whether the timestamping register is already occupied.
> >>
> >> Furthermore, a boolean variable named xsk_pending_ts is used to hold the
> >> transmit completion until the tx hardware timestamp is ready. This is
> >> because, for i225/i226, the timestamp notification event comes some time
> >> after the transmit completion event. The driver will retrigger hardware irq
> >> to clean the packet after retrieve the tx hardware timestamp.
> >>
> >> Besides, xsk_meta is added into struct igc_tx_timestamp_request as a hook
> >> to the metadata location of the transmit packet. When the Tx timestamp
> >> interrupt is fired, the interrupt handler will copy the value of Tx hwts
> >> into metadata location via xsk_tx_metadata_complete().
> >>
> >> Co-developed-by: Lai Peter Jun Ann <jun.ann.lai@intel.com>
> >> Signed-off-by: Lai Peter Jun Ann <jun.ann.lai@intel.com>
> >> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> >> ---
> >
> >[...]
> >
> >>
> >> +static void igc_xsk_request_timestamp(void *_priv)
> >> +{
> >> +	struct igc_metadata_request *meta_req = _priv;
> >> +	struct igc_ring *tx_ring = meta_req->tx_ring;
> >> +	struct igc_tx_timestamp_request *tstamp;
> >> +	u32 tx_flags = IGC_TX_FLAGS_TSTAMP;
> >> +	struct igc_adapter *adapter;
> >> +	unsigned long lock_flags;
> >> +	bool found = false;
> >> +	int i;
> >> +
> >> +	if (test_bit(IGC_RING_FLAG_TX_HWTSTAMP, &tx_ring->flags)) {
> >> +		adapter = netdev_priv(tx_ring->netdev);
> >> +
> >> +		spin_lock_irqsave(&adapter->ptp_tx_lock, lock_flags);
> >> +
> >> +		/* Search for available tstamp regs */
> >> +		for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
> >> +			tstamp = &adapter->tx_tstamp[i];
> >> +
> >> +			if (tstamp->skb)
> >> +				continue;
> >> +
> >> +			found = true;
> >> +			break;
> >
> >Not how I would have written this loop construct seems a bit odd
> >to default break but it works.
> 
> Hi John,
> First of all, thank you for reviewing the patch.
> I agree that we can make the loop better. 
> How about I change the loop to below:

That is more natural to me, but whatever reads best for you
is probably ok.

> 
> for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
> 	tstamp = &adapter->tx_tstamp[i];
> 
> 	if (!tstamp->skb) {
> 		found = true;
> 		break;
> 	}
> }
> 
> >
> >> +		}
> >> +
> >> +		/* Return if no available tstamp regs */
> >> +		if (!found) {
> >> +			adapter->tx_hwtstamp_skipped++;
> >> +			spin_unlock_irqrestore(&adapter->ptp_tx_lock,
> >> +					       lock_flags);
> >> +			return;
> >> +		}
> >
> >[...]
> >
> >>
> >> +static void igc_ptp_free_tx_buffer(struct igc_adapter *adapter,
> >> +				   struct igc_tx_timestamp_request *tstamp)
> >> +{
> >> +	if (tstamp->buffer_type == IGC_TX_BUFFER_TYPE_XSK) {
> >> +		/* Release the transmit completion */
> >> +		tstamp->xsk_tx_buffer->xsk_pending_ts = false;
> >> +		tstamp->xsk_tx_buffer = NULL;
> >> +		tstamp->buffer_type = 0;
> >> +
> >> +		/* Trigger txrx interrupt for transmit completion */
> >> +		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
> >
> >Just curious because I didn't find it. Fairly sure I just need to look more,
> >but don't you want to still 'tstamp->skb = NULL' in this path somewhere?
> >It looks like triggering the tx interrupt again with buffer_type == 0 wouldn't
> >do the null.
> >
> >I suspect I just missed it.
> 
> Since the timestamp register will only be used by either skb or xsk,
> So we make tstamp->xsk_tx_buffer and tstamp->skb as union,
> Then based on tstamp->buffer_type to decide whether
> tstamp->xsk_tx_buffer or tstamp->skb should be used.
> 
> My thought is, by setting tstamp->xsk_tx_buffer=NULL,
> tstamp->skb will become NULL as well, and vice versa.

Seems good to me. Maybe a comment though? Otherwise I suspect next
person to read the code will have to spend the extra time to track
it down as well.

> 
> Thanks & Regards
> Siang

Also feel free to carry my ack into the v2 if you make the couple
small nitpick changes.

Acked-by: John Fastabend <john.fastabend@gmail.com>

