Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78934992DAD
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2024 15:48:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22DD380DD8;
	Mon,  7 Oct 2024 13:48:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HXa00Y9duz0M; Mon,  7 Oct 2024 13:48:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B19480DD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728308889;
	bh=/CMEPpVEE6fy3UEb+JX8XqWy4ReKkQZ2Nee5KJh8d/0=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z2EU48qJDlkL+0YeCyHUuvNGp9g08QbK/t+MSimM/sJtUY/bBUh9p2sTi5maDM6wk
	 wzb6E86d4yRqNGCJ5B2/oW/i83S78qWMgXGwovn0duObEvkg+rS9rptXTYaeJ2gtct
	 f5l/XB5B4udQ2gCORHVibJZlqi/k5Fg3TvLHRmmbTc09Pj6DF6Q0EDdPvjk3zm/9N3
	 Hc7EJlbTTmOGysAC9zHAc9JqWpg9xykYXwwGMhZ5ZHlx/u+DNLKRNNaQGMIiRscHBJ
	 NxuPj3dcUMu+SlU7YstT3U/TVAzEdmw9821eIL2K7L9TBDpLwONLk9UT+Mv9ltSrkn
	 LU0+hC8lvAMaw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B19480DD9;
	Mon,  7 Oct 2024 13:48:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C605C1BF955
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 13:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC95440320
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 13:48:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ef-_oUpnlmjH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2024 13:48:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 88BA140015
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88BA140015
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 88BA140015
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 13:48:05 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
In-Reply-To: <ZwPfARyIRE+MvqyK@boxer>
References: <20241007-b4-igb_zero_copy-v7-0-23556668adc6@linutronix.de>
 <20241007-b4-igb_zero_copy-v7-5-23556668adc6@linutronix.de>
 <ZwPfARyIRE+MvqyK@boxer>
Date: Mon, 07 Oct 2024 15:48:01 +0200
Message-ID: <87h69o3tym.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1728308883;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/CMEPpVEE6fy3UEb+JX8XqWy4ReKkQZ2Nee5KJh8d/0=;
 b=fcXenWxYppf4B3MgjuL064fGlAUEFe1lUp1CKZVXRONISZCaqx34CPlgsA9H3QSGAbYqEK
 cjNvhGMGB7TLtyzmvfQAGl7ci9uo6to4sfuK6miJHymST2UKXaUxiqlisyyufbDIejlAkX
 qxw9Z1hIxAelAYaLwwf32j2XFt/fhzwP1tnXr7O1pZU2ymcbgl/DlXFIWgc9VEAYmlTxsu
 Ph5ZXfjoLr0tv2kxhaZ58obNzONOPNYrxXqvcw0U65tm0yq3l+WqNNXgy64njzlXE5aTp/
 b5evre4s09feOeHeZCa5ju6yUw/NpHhylZAjHn3n3+6Wsawkk4tXTuIlKyFLNw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1728308883;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/CMEPpVEE6fy3UEb+JX8XqWy4ReKkQZ2Nee5KJh8d/0=;
 b=uycR1gYDgxQPnbwBcdIYakrl/MLcbeIXwkYNCh6hLRKdncJULrn57s71HsL7JlVFPJK8g4
 BVBnxR7dPoRnulAw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=fcXenWxY; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=uycR1gYD
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 5/5] igb: Add AF_XDP
 zero-copy Tx support
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

On Mon Oct 07 2024, Maciej Fijalkowski wrote:
>> +bool igb_xmit_zc(struct igb_ring *tx_ring)
>> +{
>> +	unsigned int budget = igb_desc_unused(tx_ring);
>> +	struct xsk_buff_pool *pool = tx_ring->xsk_pool;
>> +	u32 cmd_type, olinfo_status, nb_pkts, i = 0;
>> +	struct xdp_desc *descs = pool->tx_descs;
>> +	union e1000_adv_tx_desc *tx_desc = NULL;
>> +	struct igb_tx_buffer *tx_buffer_info;
>> +	unsigned int total_bytes = 0;
>> +	dma_addr_t dma;
>> +
>> +	if (!netif_carrier_ok(tx_ring->netdev))
>> +		return true;
>> +
>> +	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags))
>> +		return true;
>> +
>> +	nb_pkts = xsk_tx_peek_release_desc_batch(pool, budget);
>> +	if (!nb_pkts)
>> +		return true;
>> +
>> +	while (nb_pkts-- > 0) {
>> +		dma = xsk_buff_raw_get_dma(pool, descs[i].addr);
>> +		xsk_buff_raw_dma_sync_for_device(pool, dma, descs[i].len);
>> +
>> +		tx_buffer_info = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
>> +		tx_buffer_info->bytecount = descs[i].len;
>> +		tx_buffer_info->type = IGB_TYPE_XSK;
>> +		tx_buffer_info->xdpf = NULL;
>> +		tx_buffer_info->gso_segs = 1;
>> +		tx_buffer_info->time_stamp = jiffies;
>> +
>> +		tx_desc = IGB_TX_DESC(tx_ring, tx_ring->next_to_use);
>> +		tx_desc->read.buffer_addr = cpu_to_le64(dma);
>> +
>> +		/* put descriptor type bits */
>> +		cmd_type = E1000_ADVTXD_DTYP_DATA | E1000_ADVTXD_DCMD_DEXT |
>> +			   E1000_ADVTXD_DCMD_IFCS;
>> +		olinfo_status = descs[i].len << E1000_ADVTXD_PAYLEN_SHIFT;
>> +
>> +		cmd_type |= descs[i].len | IGB_TXD_DCMD;
>
> I forgot if we spoke about this but you still set RS bit for each produced
> desc. Probably we agreed that since cleaning side is shared with 'slow'
> path it would be too much of an effort to address that?

Yes, and i believe we agreed that this needs to be addressed later, also
for igc.

>
> Could you add a FIXME/TODO here so that we won't lose this from our
> radars?

Sure.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmcD5pETHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgsWdD/9yy16yaYLB4R5GpXSpQa/47OdSmlNU
38nE4hLd6bLrnhVvu5XEoglQyPn0jciYPw69b45JXi5y/Fe/Whegtw+jYC8/StB1
j3RPnd47yX5vvmwn6+413ybpiE+fk1yBKmhjhMj8VLjGb6ejFC7J6L65q0k4CvbZ
jx1XfF+0b58+ZTyjSLAi3KJhjkMFfsmdosVm6Rqqqeui5ZICTXTrjKWizj/8rDR0
nv4DLRFgPdhYpD+xbjtDT5D7eBnkXI3kwznQHdVreimI2Niv5TOqc9vHa8RIbqHw
rdFK3ihLAmcKm4vApDXdHnkAl3SQMdWQX5JNE+X4DL4Cd1DP2iMpsXYn9RNgtdw+
2Ogmn9joZiVrtXAzt0aijkXzQFO8S7fo36EjJ8Wkx9mMHcUjHth1WJn3i/tB/1+5
Y/m0HxSvGGreoQ1ApECJJkToYcaWZwmyd66C7u2mg0jQSEipqtTavFNWyaBIq7OR
REIlkZTfoRaa7mrcJXMEbNprJGFZwQ3VlXUii7ps02Yce35+QAZF5cB44IPue77O
5uWWIWKX2QGMyXdx2NTSWngo0iidI+VQfxBNKut5zIcBBEBxZDOjumJevWedPsrV
3SlQOW3uoopIdRbu18Cw3TZQoSR2/Nxn6zfWO3R+pyplWRH3gDWcrVW7Dewic+2v
PYzAZE+2VlG36w==
=b4js
-----END PGP SIGNATURE-----
--=-=-=--
