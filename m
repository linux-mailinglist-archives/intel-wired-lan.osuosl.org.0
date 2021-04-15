Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF02360BA2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Apr 2021 16:17:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49DBE414FA;
	Thu, 15 Apr 2021 14:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id apRdFWNIY_aG; Thu, 15 Apr 2021 14:17:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8194414FB;
	Thu, 15 Apr 2021 14:17:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38E7C1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 11:24:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 331BC40F85
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 11:24:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1alsRqRlLm0l for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Apr 2021 11:24:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7810740F5D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 11:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618485895;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Mz4gkeAb8IMJunJVKzeJG4b07bg5EW+D4jRMaZED9tk=;
 b=XlSSgAO/MEl2ZbFXmiFueGCqt8A7EdpTEx1y3bMUUCv8lNR3dS4ftzXbXhQLekKqiCJULL
 JWlyDRSTIHJvShkW1r4lkmu8l0aPdDSIN+CoRCM+tICzHC3Pop5qlakPMNu1ooKocQs+p/
 TNwcg8f9PVTaOVZgZHpjduQbN0ApDZs=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-145-1qh85yHpNpOXKXZc-yFQsw-1; Thu, 15 Apr 2021 07:24:50 -0400
X-MC-Unique: 1qh85yHpNpOXKXZc-yFQsw-1
Received: by mail-ej1-f71.google.com with SMTP id
 k5-20020a1709061c05b029037cb8a99e03so807360ejg.16
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 04:24:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qtyli+TcTqBo1+AtKSSB53e78WK+2Xfl6H+IvpWkujk=;
 b=Z/WhrPtHzIeNNC+6Ku12QuaR9/m81a3nJKonLIzX5xosKbwq2EnMwEVNGebudsyGkP
 PAAWOR0tGUhDLTxscDAvz2OKGLPDi+Ozg594Rm1t28RqnklUgSVPQxq5D3aS96wr2caY
 hqgv1V7pchsprtf+wXLYgDKcMWJSblC4h2a3ddtxXlA3GMSdbzvP4N934Hdl4ZNyi36Z
 O01AL5DnjeuxS3Lh2vsgZ0cduRYKtGuuTwDMjCbOKyvoiFJF7vILIAUsJUst81Hzy7cR
 uy5t/LqvJUmynEhvWDjQl4oGm5zygWcl67sVdo5/VjZsoHehWtEi8tWEG1W6US6ckuBu
 MNRA==
X-Gm-Message-State: AOAM533/ZnBxJIu3jiMSo/5ZHZosmPR3opKJjsSMjvwm2flnrFWWo2iZ
 43lm1+nCQVaaPEMGw5c020zpDBkBSwzQ1wdy+2NzUg/lIFWypRccUeYql7Aa4AuMT59BHVsUBcX
 NVS2yr0dT4osYll4xOMNxHD9Kgz4puA==
X-Received: by 2002:a05:6402:350b:: with SMTP id
 b11mr3472145edd.288.1618485889799; 
 Thu, 15 Apr 2021 04:24:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJytyOBJFIQYM0UbnPL9QUE+YYP0KWgVfB4dwFgVRmRiT0kz9PNM2cSazNbOQLO6e0ZEe5lwiw==
X-Received: by 2002:a05:6402:350b:: with SMTP id
 b11mr3472107edd.288.1618485889539; 
 Thu, 15 Apr 2021 04:24:49 -0700 (PDT)
Received: from localhost ([151.66.38.94])
 by smtp.gmail.com with ESMTPSA id jw7sm1717368ejc.4.2021.04.15.04.24.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Apr 2021 04:24:48 -0700 (PDT)
Date: Thu, 15 Apr 2021 13:24:45 +0200
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <YHgiffS6A0sDzLGW@lore-desk>
References: <20210415092145.27322-1-kurt@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20210415092145.27322-1-kurt@linutronix.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lorenzo.bianconi@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Thu, 15 Apr 2021 14:16:57 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Fix XDP with PTP enabled
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Alexei Starovoitov <ast@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Lorenzo Bianconi <lorenzo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============3981152681172940494=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3981152681172940494==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BSw18Pe0ja94wJ00"
Content-Disposition: inline

--BSw18Pe0ja94wJ00
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[...]
> @@ -8683,7 +8676,10 @@ static int igb_clean_rx_irq(struct igb_q_vector *q=
_vector, const int budget)
>  =09while (likely(total_packets < budget)) {
>  =09=09union e1000_adv_rx_desc *rx_desc;
>  =09=09struct igb_rx_buffer *rx_buffer;
> +=09=09ktime_t timestamp =3D 0;
> +=09=09int pkt_offset =3D 0;
>  =09=09unsigned int size;
> +=09=09void *pktbuf;
> =20
>  =09=09/* return some buffers to hardware, one at a time is too slow */
>  =09=09if (cleaned_count >=3D IGB_RX_BUFFER_WRITE) {
> @@ -8703,15 +8699,22 @@ static int igb_clean_rx_irq(struct igb_q_vector *=
q_vector, const int budget)
>  =09=09dma_rmb();
> =20
>  =09=09rx_buffer =3D igb_get_rx_buffer(rx_ring, size, &rx_buf_pgcnt);
> +=09=09pktbuf =3D page_address(rx_buffer->page) + rx_buffer->page_offset;
> +
> +=09=09/* pull rx packet timestamp if available */
> +=09=09if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
> +=09=09=09timestamp =3D igb_ptp_rx_pktstamp(rx_ring->q_vector,
> +=09=09=09=09=09=09=09pktbuf);
> +=09=09=09pkt_offset +=3D IGB_TS_HDR_LEN;
> +=09=09=09size -=3D IGB_TS_HDR_LEN;
> +=09=09}
> =20
>  =09=09/* retrieve a buffer from the ring */
>  =09=09if (!skb) {
> -=09=09=09unsigned int offset =3D igb_rx_offset(rx_ring);
> -=09=09=09unsigned char *hard_start;
> -
> -=09=09=09hard_start =3D page_address(rx_buffer->page) +
> -=09=09=09=09     rx_buffer->page_offset - offset;
> -=09=09=09xdp_prepare_buff(&xdp, hard_start, offset, size, true);
> +=09=09=09xdp.data =3D pktbuf + pkt_offset;
> +=09=09=09xdp.data_end =3D xdp.data + size;
> +=09=09=09xdp.data_meta =3D xdp.data;
> +=09=09=09xdp.data_hard_start =3D pktbuf - igb_rx_offset(rx_ring);

in order to keep it aligned with other xdp drivers, I guess you can do some=
thing like:

=09=09=09unsigned char *hard_start =3D pktbuf - igb_rx_offset(rx_ring);
=09=09=09unsigned int offset =3D pkt_offset + igb_rx_offset(rx_ring);

=09=09=09xdp_prepare_buff(&xdp, hard_start, offset, size, true);

Probably the compiler will optimize it.

Regards,
Lorenzo

> When using native XDP with the igb driver, the XDP frame data doesn't poi=
nt to
> the beginning of the packet. It's off by 16 bytes. Everything works as ex=
pected
> with XDP skb mode.
>=20
> Actually these 16 bytes are used to store the packet timestamps. Therefor=
e, pull
> the timestamp before executing any XDP operations and adjust all other co=
de
> accordingly. The igc driver does it like that as well.
>=20
> Tested with Intel i210 card and AF_XDP sockets.
>=20
> Fixes: 9cbc948b5a20 ("igb: add XDP support")
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>=20
> Changes since RFC:
>=20
>  * Removed unused return value definitions
>=20
> Previous versions:
>=20
>  * https://lkml.kernel.org/netdev/20210412101713.15161-1-kurt@linutronix.=
de/
>=20
> drivers/net/ethernet/intel/igb/igb.h      |  3 +-
>  drivers/net/ethernet/intel/igb/igb_main.c | 46 ++++++++++++-----------
>  drivers/net/ethernet/intel/igb/igb_ptp.c  | 21 ++++-------
>  3 files changed, 33 insertions(+), 37 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/=
intel/igb/igb.h
> index 7bda8c5edea5..72cf967c1a00 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -748,8 +748,7 @@ void igb_ptp_suspend(struct igb_adapter *adapter);
>  void igb_ptp_rx_hang(struct igb_adapter *adapter);
>  void igb_ptp_tx_hang(struct igb_adapter *adapter);
>  void igb_ptp_rx_rgtstamp(struct igb_q_vector *q_vector, struct sk_buff *=
skb);
> -int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
> -=09=09=09struct sk_buff *skb);
> +ktime_t igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va);
>  int igb_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
>  int igb_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
>  void igb_set_flag_queue_pairs(struct igb_adapter *, const u32);
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethe=
rnet/intel/igb/igb_main.c
> index a45cd2b416c8..4677b08d3270 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -8281,7 +8281,7 @@ static void igb_add_rx_frag(struct igb_ring *rx_rin=
g,
>  static struct sk_buff *igb_construct_skb(struct igb_ring *rx_ring,
>  =09=09=09=09=09 struct igb_rx_buffer *rx_buffer,
>  =09=09=09=09=09 struct xdp_buff *xdp,
> -=09=09=09=09=09 union e1000_adv_rx_desc *rx_desc)
> +=09=09=09=09=09 ktime_t timestamp)
>  {
>  #if (PAGE_SIZE < 8192)
>  =09unsigned int truesize =3D igb_rx_pg_size(rx_ring) / 2;
> @@ -8301,12 +8301,8 @@ static struct sk_buff *igb_construct_skb(struct ig=
b_ring *rx_ring,
>  =09if (unlikely(!skb))
>  =09=09return NULL;
> =20
> -=09if (unlikely(igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP))) {
> -=09=09if (!igb_ptp_rx_pktstamp(rx_ring->q_vector, xdp->data, skb)) {
> -=09=09=09xdp->data +=3D IGB_TS_HDR_LEN;
> -=09=09=09size -=3D IGB_TS_HDR_LEN;
> -=09=09}
> -=09}
> +=09if (timestamp)
> +=09=09skb_hwtstamps(skb)->hwtstamp =3D timestamp;
> =20
>  =09/* Determine available headroom for copy */
>  =09headlen =3D size;
> @@ -8337,7 +8333,7 @@ static struct sk_buff *igb_construct_skb(struct igb=
_ring *rx_ring,
>  static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
>  =09=09=09=09     struct igb_rx_buffer *rx_buffer,
>  =09=09=09=09     struct xdp_buff *xdp,
> -=09=09=09=09     union e1000_adv_rx_desc *rx_desc)
> +=09=09=09=09     ktime_t timestamp)
>  {
>  #if (PAGE_SIZE < 8192)
>  =09unsigned int truesize =3D igb_rx_pg_size(rx_ring) / 2;
> @@ -8364,11 +8360,8 @@ static struct sk_buff *igb_build_skb(struct igb_ri=
ng *rx_ring,
>  =09if (metasize)
>  =09=09skb_metadata_set(skb, metasize);
> =20
> -=09/* pull timestamp out of packet data */
> -=09if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
> -=09=09if (!igb_ptp_rx_pktstamp(rx_ring->q_vector, skb->data, skb))
> -=09=09=09__skb_pull(skb, IGB_TS_HDR_LEN);
> -=09}
> +=09if (timestamp)
> +=09=09skb_hwtstamps(skb)->hwtstamp =3D timestamp;
> =20
>  =09/* update buffer offset */
>  #if (PAGE_SIZE < 8192)

>  #if (PAGE_SIZE > 4096)
>  =09=09=09/* At larger PAGE_SIZE, frame_sz depend on len size */
>  =09=09=09xdp.frame_sz =3D igb_rx_frame_truesize(rx_ring, size);
> @@ -8733,10 +8736,11 @@ static int igb_clean_rx_irq(struct igb_q_vector *=
q_vector, const int budget)
>  =09=09} else if (skb)
>  =09=09=09igb_add_rx_frag(rx_ring, rx_buffer, skb, size);
>  =09=09else if (ring_uses_build_skb(rx_ring))
> -=09=09=09skb =3D igb_build_skb(rx_ring, rx_buffer, &xdp, rx_desc);
> +=09=09=09skb =3D igb_build_skb(rx_ring, rx_buffer, &xdp,
> +=09=09=09=09=09    timestamp);
>  =09=09else
>  =09=09=09skb =3D igb_construct_skb(rx_ring, rx_buffer,
> -=09=09=09=09=09=09&xdp, rx_desc);
> +=09=09=09=09=09=09&xdp, timestamp);
> =20
>  =09=09/* exit if we failed to retrieve a buffer */
>  =09=09if (!skb) {
> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ether=
net/intel/igb/igb_ptp.c
> index 86a576201f5f..8e23df7da641 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
> @@ -856,30 +856,26 @@ static void igb_ptp_tx_hwtstamp(struct igb_adapter =
*adapter)
>  =09dev_kfree_skb_any(skb);
>  }
> =20
> -#define IGB_RET_PTP_DISABLED 1
> -#define IGB_RET_PTP_INVALID 2
> -
>  /**
>   * igb_ptp_rx_pktstamp - retrieve Rx per packet timestamp
>   * @q_vector: Pointer to interrupt specific structure
>   * @va: Pointer to address containing Rx buffer
> - * @skb: Buffer containing timestamp and packet
>   *
>   * This function is meant to retrieve a timestamp from the first buffer =
of an
>   * incoming frame.  The value is stored in little endian format starting=
 on
>   * byte 8
>   *
> - * Returns: 0 if success, nonzero if failure
> + * Returns: 0 on failure, timestamp on success
>   **/
> -int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
> -=09=09=09struct sk_buff *skb)
> +ktime_t igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va)
>  {
>  =09struct igb_adapter *adapter =3D q_vector->adapter;
> +=09struct skb_shared_hwtstamps ts;
>  =09__le64 *regval =3D (__le64 *)va;
>  =09int adjust =3D 0;
> =20
>  =09if (!(adapter->ptp_flags & IGB_PTP_ENABLED))
> -=09=09return IGB_RET_PTP_DISABLED;
> +=09=09return 0;
> =20
>  =09/* The timestamp is recorded in little endian format.
>  =09 * DWORD: 0        1        2        3
> @@ -888,10 +884,9 @@ int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vecto=
r, void *va,
> =20
>  =09/* check reserved dwords are zero, be/le doesn't matter for zero */
>  =09if (regval[0])
> -=09=09return IGB_RET_PTP_INVALID;
> +=09=09return 0;
> =20
> -=09igb_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb),
> -=09=09=09=09   le64_to_cpu(regval[1]));
> +=09igb_ptp_systim_to_hwtstamp(adapter, &ts, le64_to_cpu(regval[1]));
> =20
>  =09/* adjust timestamp for the RX latency based on link speed */
>  =09if (adapter->hw.mac.type =3D=3D e1000_i210) {
> @@ -907,10 +902,8 @@ int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vecto=
r, void *va,
>  =09=09=09break;
>  =09=09}
>  =09}
> -=09skb_hwtstamps(skb)->hwtstamp =3D
> -=09=09ktime_sub_ns(skb_hwtstamps(skb)->hwtstamp, adjust);
> =20
> -=09return 0;
> +=09return ktime_sub_ns(ts.hwtstamp, adjust);
>  }
> =20
>  /**
> --=20
> 2.20.1
>=20

--BSw18Pe0ja94wJ00
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCYHgiewAKCRA6cBh0uS2t
rGifAP41u3eYsesX4Vq3u4Y+ivd77mrhucZi5zn9gWM/uAlQcwD/TY6g3U062vJm
qHYmvOK3bm7d88EC/XsxM7oibFouYgY=
=DTze
-----END PGP SIGNATURE-----

--BSw18Pe0ja94wJ00--


--===============3981152681172940494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3981152681172940494==--

