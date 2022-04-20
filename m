Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D77D5089A5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 15:46:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B629240C07;
	Wed, 20 Apr 2022 13:46:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w94ckcfC-NPe; Wed, 20 Apr 2022 13:46:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90E874021C;
	Wed, 20 Apr 2022 13:46:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 53C0D1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 13:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40A28400C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 13:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12E6iJ7Ik3TF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 13:09:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A21D400BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 13:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650460161;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=H5WElo14BBY5Cz/PaPpg1Na6JGReOhJoOldP3NeoOX8=;
 b=h0Nph4sypKFpcGtP80zXDEYmJWjv4Qb9H2AwYfouX0iMHy5QuI6RBwCUvSvjfs0d45YwyB
 WhpJsEnaTfoP2EWyPYMMSmpCmFsD8V+3BhtAtOrkoRer7XZ6l4WJ2e9QC9Y8F04V8hcwck
 ICRsTLc1Zmo9MNEjjojs2NA+07xbdJw=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-212-l6y8hfQsMRSQWDNAFEA29w-1; Wed, 20 Apr 2022 09:09:20 -0400
X-MC-Unique: l6y8hfQsMRSQWDNAFEA29w-1
Received: by mail-qt1-f200.google.com with SMTP id
 t20-20020a05622a01d400b002f1f4b6d6d0so862398qtw.21
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 06:09:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=H5WElo14BBY5Cz/PaPpg1Na6JGReOhJoOldP3NeoOX8=;
 b=TBdkbYpIls15FQYFScoGWQzCtC/4mZ7ijYirfxaJa2FzuLhhpcRz4eX8B2DGjBEwhf
 5WDhuuYYsgx0r1QbQJqQ5cIVXdOiEegT9atyG7I+7xtXVXnCHFqe4XOR7K1q3/QiMMgo
 7JzaorOJWP+AmEZmLyA9RVwAYSRh5Cl6bq/bXF9Z+HDVX5Tp0ApXMKgNgwthAs/l9g5h
 4BDrZw2n0o1HoHLR2YFI5YZvWMh9FeSXr/LeJvYZjuiavvI4mb3Xa+HPszxkBiOKjpog
 1tozsVj7XVoRNq/PkKnoDnPA7Pn+3M/XA+T3wP90uhrQHYkuudYwkQMvgwO8lfhRsz52
 Gt7Q==
X-Gm-Message-State: AOAM5337HMc9Wv3patYdTUysrwX9fXA9/yNiZiyZm3eM2kUeiGP+Hdu/
 kPGC0KIgrL9nGpQKQTDT3qcQCU3cFq82fAG8fvItB093NCrw9HsWSZmCs1LxT2TPfBhZ4FUKNbS
 gHmvA2DDPgCxtAm8EuGe3YOnQnaJscw==
X-Received: by 2002:a05:6214:2462:b0:449:998a:8c09 with SMTP id
 im2-20020a056214246200b00449998a8c09mr2207947qvb.34.1650460159548; 
 Wed, 20 Apr 2022 06:09:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJynjmYOO8LNpuPc3DFNKKwI7gtP6MXM6nmFVA7TGJhkHdGOcq/xSHXBOnMPtHjXtdebu4//zA==
X-Received: by 2002:a05:6214:2462:b0:449:998a:8c09 with SMTP id
 im2-20020a056214246200b00449998a8c09mr2207908qvb.34.1650460159254; 
 Wed, 20 Apr 2022 06:09:19 -0700 (PDT)
Received: from localhost (net-93-71-56-156.cust.vodafonedsl.it. [93.71.56.156])
 by smtp.gmail.com with ESMTPSA id
 b2-20020a37b202000000b0069c7ad47221sm1462092qkf.38.2022.04.20.06.09.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Apr 2022 06:09:18 -0700 (PDT)
Date: Wed, 20 Apr 2022 15:09:15 +0200
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To: anthony.l.nguyen@intel.com
Message-ID: <YmAF+wBcluzOGXgJ@lore-desk>
References: <6de1d7547b60677ad0b0f7ebcbc7ebc76a31dcf7.1649180962.git.lorenzo@kernel.org>
MIME-Version: 1.0
In-Reply-To: <6de1d7547b60677ad0b0f7ebcbc7ebc76a31dcf7.1649180962.git.lorenzo@kernel.org>
X-Mailman-Approved-At: Wed, 20 Apr 2022 13:46:02 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: add xdp frags support
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, toke@redhat.com,
 ast@kernel.org, jbrouer@redhat.com, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: multipart/mixed; boundary="===============6708324283759061170=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============6708324283759061170==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Q0eCcL3TwOvk179G"
Content-Disposition: inline


--Q0eCcL3TwOvk179G
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Add the capability to map non-linear xdp frames in XDP_TX and ndo_xdp_xmit
> callback.

Hi Tony,

do you have any feedbacks about this patch?

Regards,
Lorenzo

>=20
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 99 ++++++++++++-------
>  1 file changed, 63 insertions(+), 36 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/=
ethernet/intel/ixgbe/ixgbe_main.c
> index c4a4954aa317..8b84c9b2eecc 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -2344,6 +2344,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector=
 *q_vector,
>  			hard_start =3D page_address(rx_buffer->page) +
>  				     rx_buffer->page_offset - offset;
>  			xdp_prepare_buff(&xdp, hard_start, offset, size, true);
> +			xdp_buff_clear_frags_flag(&xdp);
>  #if (PAGE_SIZE > 4096)
>  			/* At larger PAGE_SIZE, frame_sz depend on len size */
>  			xdp.frame_sz =3D ixgbe_rx_frame_truesize(rx_ring, size);
> @@ -8571,57 +8572,83 @@ static u16 ixgbe_select_queue(struct net_device *=
dev, struct sk_buff *skb,
>  int ixgbe_xmit_xdp_ring(struct ixgbe_ring *ring,
>  			struct xdp_frame *xdpf)
>  {
> -	struct ixgbe_tx_buffer *tx_buffer;
> -	union ixgbe_adv_tx_desc *tx_desc;
> -	u32 len, cmd_type;
> -	dma_addr_t dma;
> -	u16 i;
> -
> -	len =3D xdpf->len;
> +	struct skb_shared_info *sinfo =3D xdp_get_shared_info_from_frame(xdpf);
> +	u8 nr_frags =3D unlikely(xdp_frame_has_frags(xdpf)) ? sinfo->nr_frags :=
 0;
> +	u16 i =3D 0, index =3D ring->next_to_use;
> +	struct ixgbe_tx_buffer *tx_head =3D &ring->tx_buffer_info[index];
> +	struct ixgbe_tx_buffer *tx_buff =3D tx_head;
> +	union ixgbe_adv_tx_desc *tx_desc =3D IXGBE_TX_DESC(ring, index);
> +	u32 cmd_type, len =3D xdpf->len;
> +	void *data =3D xdpf->data;
> =20
> -	if (unlikely(!ixgbe_desc_unused(ring)))
> +	if (unlikely(ixgbe_desc_unused(ring) < 1 + nr_frags))
>  		return IXGBE_XDP_CONSUMED;
> =20
> -	dma =3D dma_map_single(ring->dev, xdpf->data, len, DMA_TO_DEVICE);
> -	if (dma_mapping_error(ring->dev, dma))
> -		return IXGBE_XDP_CONSUMED;
> +	tx_head->bytecount =3D xdp_get_frame_len(xdpf);
> +	tx_head->gso_segs =3D 1;
> +	tx_head->xdpf =3D xdpf;
> =20
> -	/* record the location of the first descriptor for this packet */
> -	tx_buffer =3D &ring->tx_buffer_info[ring->next_to_use];
> -	tx_buffer->bytecount =3D len;
> -	tx_buffer->gso_segs =3D 1;
> -	tx_buffer->protocol =3D 0;
> +	tx_desc->read.olinfo_status =3D
> +		cpu_to_le32(tx_head->bytecount << IXGBE_ADVTXD_PAYLEN_SHIFT);
> =20
> -	i =3D ring->next_to_use;
> -	tx_desc =3D IXGBE_TX_DESC(ring, i);
> +	for (;;) {
> +		dma_addr_t dma;
> =20
> -	dma_unmap_len_set(tx_buffer, len, len);
> -	dma_unmap_addr_set(tx_buffer, dma, dma);
> -	tx_buffer->xdpf =3D xdpf;
> +		dma =3D dma_map_single(ring->dev, data, len, DMA_TO_DEVICE);
> +		if (dma_mapping_error(ring->dev, dma))
> +			goto unmap;
> =20
> -	tx_desc->read.buffer_addr =3D cpu_to_le64(dma);
> +		dma_unmap_len_set(tx_buff, len, len);
> +		dma_unmap_addr_set(tx_buff, dma, dma);
> +
> +		cmd_type =3D IXGBE_ADVTXD_DTYP_DATA | IXGBE_ADVTXD_DCMD_DEXT |
> +			   IXGBE_ADVTXD_DCMD_IFCS | len;
> +		tx_desc->read.cmd_type_len =3D cpu_to_le32(cmd_type);
> +		tx_desc->read.buffer_addr =3D cpu_to_le64(dma);
> +		tx_buff->protocol =3D 0;
> +
> +		if (++index =3D=3D ring->count)
> +			index =3D 0;
> +
> +		if (i =3D=3D nr_frags)
> +			break;
> +
> +		tx_buff =3D &ring->tx_buffer_info[index];
> +		tx_desc =3D IXGBE_TX_DESC(ring, index);
> +		tx_desc->read.olinfo_status =3D 0;
> =20
> +		data =3D skb_frag_address(&sinfo->frags[i]);
> +		len =3D skb_frag_size(&sinfo->frags[i]);
> +		i++;
> +	}
>  	/* put descriptor type bits */
> -	cmd_type =3D IXGBE_ADVTXD_DTYP_DATA |
> -		   IXGBE_ADVTXD_DCMD_DEXT |
> -		   IXGBE_ADVTXD_DCMD_IFCS;
> -	cmd_type |=3D len | IXGBE_TXD_CMD;
> -	tx_desc->read.cmd_type_len =3D cpu_to_le32(cmd_type);
> -	tx_desc->read.olinfo_status =3D
> -		cpu_to_le32(len << IXGBE_ADVTXD_PAYLEN_SHIFT);
> +	tx_desc->read.cmd_type_len |=3D cpu_to_le32(IXGBE_TXD_CMD);
> =20
>  	/* Avoid any potential race with xdp_xmit and cleanup */
>  	smp_wmb();
> =20
> -	/* set next_to_watch value indicating a packet is present */
> -	i++;
> -	if (i =3D=3D ring->count)
> -		i =3D 0;
> -
> -	tx_buffer->next_to_watch =3D tx_desc;
> -	ring->next_to_use =3D i;
> +	tx_head->next_to_watch =3D tx_desc;
> +	ring->next_to_use =3D index;
> =20
>  	return IXGBE_XDP_TX;
> +
> +unmap:
> +	for (;;) {
> +		tx_buff =3D &ring->tx_buffer_info[index];
> +		if (dma_unmap_len(tx_buff, len))
> +			dma_unmap_page(ring->dev, dma_unmap_addr(tx_buff, dma),
> +				       dma_unmap_len(tx_buff, len),
> +				       DMA_TO_DEVICE);
> +		dma_unmap_len_set(tx_buff, len, 0);
> +		if (tx_buff =3D=3D tx_head)
> +			break;
> +
> +		if (!index)
> +			index +=3D ring->count;
> +		index--;
> +	}
> +
> +	return IXGBE_XDP_CONSUMED;
>  }
> =20
>  netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff *skb,
> --=20
> 2.35.1
>=20

--Q0eCcL3TwOvk179G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCYmAF+wAKCRA6cBh0uS2t
rAfGAP9cIfjFAM7/1E2LcJTfpS5ojEfBGTkaEhugBmbje2aS9gEAukiztxX5QZF7
miBBhHtTQOmeXY1giKmesLsJBhlxuAk=
=HySC
-----END PGP SIGNATURE-----

--Q0eCcL3TwOvk179G--


--===============6708324283759061170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6708324283759061170==--

