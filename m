Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5AE51CA2E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 22:09:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B59460ABA;
	Thu,  5 May 2022 20:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sNsBYQ_6v5LJ; Thu,  5 May 2022 20:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18B6460A89;
	Thu,  5 May 2022 20:09:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 33C7E1BF342
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 20:09:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E62860A89
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 20:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RChOB-bQymo0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 20:09:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [170.10.129.74])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E73460A84
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 20:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651781380;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=isyTAQOpnJ50Qci6kWwR+BCUDagaIaL4jDCJfOF/3QY=;
 b=H8hI/OhqQ9zCJxbANNemqDpevsEwHK7OI6XXor5imnPrZXj9wDC0YL4NWWaPZxjFmlMH47
 yf7tnvoyYMa2h8dQ8P5HILgrSYEdTXMAyNb5vfSWaDLjHkeVjIObD8snMB7h5Ktd4aWNV/
 z/3X8Ek5gvCRg+BmhWSuWXlGNrPkk7A=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-465-xS3CQwPIN86uZID50GLWyg-1; Thu, 05 May 2022 16:09:38 -0400
X-MC-Unique: xS3CQwPIN86uZID50GLWyg-1
Received: by mail-wm1-f70.google.com with SMTP id
 c125-20020a1c3583000000b0038e3f6e871aso2086679wma.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 May 2022 13:09:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=isyTAQOpnJ50Qci6kWwR+BCUDagaIaL4jDCJfOF/3QY=;
 b=1N7oGYZ2tvZBE7Yq5UumLaqYiFoOjoDEn1KBb9nonNyeCMYtVzeUFM8AUmqQi099OE
 0HCEE1zdN5dMsnidIOjI1+M1WT6FRcgA1LATdtY0FZSgWpT5yCA/7qcHix+cYeZGdibd
 qRUYFIm7CI0hdkuyDMyTQFMQLbzaEcE6vdOmyWvHcQnqjlivrlj690PQmJ2XHorLFVqH
 Prp5wg18CfxApx1+7SHoawSADnhQd4m+EzK4wOBTeqUGOH6IeF4ic5gs6jkju9Qlq/ky
 KSjHlzkPObPbpY0G2QNp/vRUfLvRpzG0oM5KS4kyKwR/KH9hmDabo4l2QwAUxSDE/R6U
 +saw==
X-Gm-Message-State: AOAM5336q76veqPUGF1SJZquAJCv6JSCajiuuuKHyn6TyioTgR4bZSt7
 tAYKBA5+RJu+xUAzo1gF18T3tqGY2t84Eo28veR3if3kS7krS7cGjGLg4fCgNIphS0Qz5XOgeuC
 wyfS2wRQ/Vw45VkKgl9IAlQfGfFCErg==
X-Received: by 2002:a7b:c081:0:b0:394:789b:915 with SMTP id
 r1-20020a7bc081000000b00394789b0915mr26298wmh.105.1651781377185; 
 Thu, 05 May 2022 13:09:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyNpu3Kq1OQpeGcBQJAWlDOeFgHLyIekOeIGdXroUkilc1GR7GLGJg7Y41bl+ujcpZFvSbDRA==
X-Received: by 2002:a7b:c081:0:b0:394:789b:915 with SMTP id
 r1-20020a7bc081000000b00394789b0915mr26267wmh.105.1651781376904; 
 Thu, 05 May 2022 13:09:36 -0700 (PDT)
Received: from localhost (net-93-71-56-156.cust.vodafonedsl.it. [93.71.56.156])
 by smtp.gmail.com with ESMTPSA id
 ay33-20020a05600c1e2100b003942a244ec8sm2157597wmb.13.2022.05.05.13.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 May 2022 13:09:36 -0700 (PDT)
Date: Thu, 5 May 2022 22:09:34 +0200
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <YnQu/iS7zXEzKWJ0@lore-desk>
References: <c4e15c421c5579da7bfc77512e8d40b6a76beae1.1651769002.git.lorenzo@kernel.org>
 <469d3c7f-fcd1-3e8b-b02d-4b6e1826fa67@molgen.mpg.de>
MIME-Version: 1.0
In-Reply-To: <469d3c7f-fcd1-3e8b-b02d-4b6e1826fa67@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: add xdp frags support
 to ndo_xdp_xmit
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
Cc: tirthendu.sarkar@intel.com, daniel@iogearbox.net, netdev@vger.kernel.org,
 toke@redhat.com, ast@kernel.org, jbrouer@redhat.com, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: multipart/mixed; boundary="===============3727536801856273677=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3727536801856273677==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lvbnpHdqnGK8xMVN"
Content-Disposition: inline


--lvbnpHdqnGK8xMVN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

>=20
>=20
> Am 05.05.22 um 18:48 schrieb Lorenzo Bianconi:
> > Add the capability to map non-linear xdp frames in XDP_TX and ndo_xdp_x=
mit
> > callback.
> >=20
> > Tested-by: Sarkar Tirthendu <tirthendu.sarkar@intel.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_txrx.c | 87 +++++++++++++++------
> >   1 file changed, 62 insertions(+), 25 deletions(-)
> >=20
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/=
ethernet/intel/i40e/i40e_txrx.c
> > index 7bc1174edf6b..b7967105a549 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > @@ -2509,6 +2509,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx=
_ring, int budget)
> >   			hard_start =3D page_address(rx_buffer->page) +
> >   				     rx_buffer->page_offset - offset;
> >   			xdp_prepare_buff(&xdp, hard_start, offset, size, true);
> > +			xdp_buff_clear_frags_flag(&xdp);
> >   #if (PAGE_SIZE > 4096)
> >   			/* At larger PAGE_SIZE, frame_sz depend on len size */
> >   			xdp.frame_sz =3D i40e_rx_frame_truesize(rx_ring, size);
> > @@ -3713,35 +3714,55 @@ u16 i40e_lan_select_queue(struct net_device *ne=
tdev,
> >   static int i40e_xmit_xdp_ring(struct xdp_frame *xdpf,
> >   			      struct i40e_ring *xdp_ring)
> >   {
> > -	u16 i =3D xdp_ring->next_to_use;
> > -	struct i40e_tx_buffer *tx_bi;
> > -	struct i40e_tx_desc *tx_desc;
> > +	struct skb_shared_info *sinfo =3D xdp_get_shared_info_from_frame(xdpf=
);
> > +	u8 nr_frags =3D unlikely(xdp_frame_has_frags(xdpf)) ? sinfo->nr_frags=
 : 0;
> > +	u16 i =3D 0, index =3D xdp_ring->next_to_use;
> > +	struct i40e_tx_buffer *tx_head =3D &xdp_ring->tx_bi[index];
> > +	struct i40e_tx_buffer *tx_bi =3D tx_head;
> > +	struct i40e_tx_desc *tx_desc =3D I40E_TX_DESC(xdp_ring, index);
> >   	void *data =3D xdpf->data;
> >   	u32 size =3D xdpf->len;
> > -	dma_addr_t dma;
> > -	if (!unlikely(I40E_DESC_UNUSED(xdp_ring))) {
> > +	if (unlikely(I40E_DESC_UNUSED(xdp_ring) < 1 + nr_frags)) {
> >   		xdp_ring->tx_stats.tx_busy++;
> >   		return I40E_XDP_CONSUMED;
> >   	}
> > -	dma =3D dma_map_single(xdp_ring->dev, data, size, DMA_TO_DEVICE);
> > -	if (dma_mapping_error(xdp_ring->dev, dma))
> > -		return I40E_XDP_CONSUMED;
> > -	tx_bi =3D &xdp_ring->tx_bi[i];
> > -	tx_bi->bytecount =3D size;
> > -	tx_bi->gso_segs =3D 1;
> > -	tx_bi->xdpf =3D xdpf;
> > +	tx_head->bytecount =3D xdp_get_frame_len(xdpf);
> > +	tx_head->gso_segs =3D 1;
> > +	tx_head->xdpf =3D xdpf;
> > -	/* record length, and DMA address */
> > -	dma_unmap_len_set(tx_bi, len, size);
> > -	dma_unmap_addr_set(tx_bi, dma, dma);
> > +	for (;;) {
> > +		dma_addr_t dma;
> > -	tx_desc =3D I40E_TX_DESC(xdp_ring, i);
> > -	tx_desc->buffer_addr =3D cpu_to_le64(dma);
> > -	tx_desc->cmd_type_offset_bsz =3D build_ctob(I40E_TX_DESC_CMD_ICRC
> > -						  | I40E_TXD_CMD,
> > -						  0, size, 0);
> > +		dma =3D dma_map_single(xdp_ring->dev, data, size, DMA_TO_DEVICE);
> > +		if (dma_mapping_error(xdp_ring->dev, dma))
> > +			goto unmap;
> > +
> > +		/* record length, and DMA address */
> > +		dma_unmap_len_set(tx_bi, len, size);
> > +		dma_unmap_addr_set(tx_bi, dma, dma);
> > +
> > +		tx_desc->buffer_addr =3D cpu_to_le64(dma);
> > +		tx_desc->cmd_type_offset_bsz =3D
> > +			build_ctob(I40E_TX_DESC_CMD_ICRC, 0, size, 0);
> > +
> > +		if (++index =3D=3D xdp_ring->count)
> > +			index =3D 0;
> > +
> > +		if (i =3D=3D nr_frags)
> > +			break;
> > +
> > +		tx_bi =3D &xdp_ring->tx_bi[index];
> > +		tx_desc =3D I40E_TX_DESC(xdp_ring, index);
> > +
> > +		data =3D skb_frag_address(&sinfo->frags[i]);
> > +		size =3D skb_frag_size(&sinfo->frags[i]);
> > +		i++;
> > +	}
> > +
> > +	tx_desc->cmd_type_offset_bsz |=3D
> > +		cpu_to_le64(I40E_TXD_CMD << I40E_TXD_QW1_CMD_SHIFT);
> >   	/* Make certain all of the status bits have been updated
> >   	 * before next_to_watch is written.
> > @@ -3749,14 +3770,30 @@ static int i40e_xmit_xdp_ring(struct xdp_frame =
*xdpf,
> >   	smp_wmb();
> >   	xdp_ring->xdp_tx_active++;
> > -	i++;
> > -	if (i =3D=3D xdp_ring->count)
> > -		i =3D 0;
> > -	tx_bi->next_to_watch =3D tx_desc;
> > -	xdp_ring->next_to_use =3D i;
> > +	tx_head->next_to_watch =3D tx_desc;
> > +	xdp_ring->next_to_use =3D index;
> >   	return I40E_XDP_TX;
> > +
> > +unmap:
> > +	for (;;) {
> > +		tx_bi =3D &xdp_ring->tx_bi[index];
> > +		if (dma_unmap_len(tx_bi, len))
> > +			dma_unmap_page(xdp_ring->dev,
> > +				       dma_unmap_addr(tx_bi, dma),
> > +				       dma_unmap_len(tx_bi, len),
> > +				       DMA_TO_DEVICE);
> > +		dma_unmap_len_set(tx_bi, len, 0);
> > +		if (tx_bi =3D=3D tx_head)
> > +			break;
> > +
> > +		if (!index)
> > +			index +=3D xdp_ring->count;
> > +		index--;
> > +	}
>=20
> Could
>=20
> ```
> do {
>         tx_bi =3D &xdp_ring->tx_bi[index];
>         if (dma_unmap_len(tx_bi, len))
>                 dma_unmap_page(xdp_ring->dev,
>                                dma_unmap_addr(tx_bi, dma),
>                                dma_unmap_len(tx_bi, len),
>                                DMA_TO_DEVICE);
>         dma_unmap_len_set(tx_bi, len, 0);
>=20
>         if (!index)
>                 index +=3D xdp_ring->count;
>         index--;
> } while (tx_bi !=3D tx_head);
> ```
>=20
> be used instead?

yes, it seems just a matter of test to me, doesn't it? :)

Regards,
Lorenzo

>=20
> > +
> > +	return I40E_XDP_CONSUMED;
> >   }
> >   /**
>=20
>=20
> Kind regards,
>=20
> Paul
>=20

--lvbnpHdqnGK8xMVN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCYnQu/gAKCRA6cBh0uS2t
rBQbAP40dlNi8MuEWZ6WyqSv98x5ThtQS08w7wyHrSC25YddgQEA14QUSfAVsXYM
hFkS/P5KbbElkPb3gA8vSJSNBtEWfQw=
=fGwN
-----END PGP SIGNATURE-----

--lvbnpHdqnGK8xMVN--


--===============3727536801856273677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3727536801856273677==--

