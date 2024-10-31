Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B68B09B810E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 18:20:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C6DC408F8;
	Thu, 31 Oct 2024 17:20:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Bz4tx7kVINd; Thu, 31 Oct 2024 17:20:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10089408BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730395212;
	bh=SKkFDkzIEBItD3yNbuSEm7Az14lr6rR23lccwnGeVnE=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lDFb2EAXcpCPFRdvurQPbQbLVFLUtkFIDpEhzOoSZC6Gcpha59VzR/Y/WD0csclge
	 VyzF5keOB/h+Z1Up9RsOkwYVRIYIt93qYzGFs79B6PP1pFSaB5qIzp+7PvZroNmsGI
	 BMyLmMDqI1FIdfxB84BM8OEHCZvs96V1UaxxASBYnwU3CuTH8QhbtT9JWCBZfXd/Wx
	 ARAIcqrAQgMA/FBPHdeNSzHWVth0nFh2cpgrefVW8jF8UvVttCuObETHafutxiCEIS
	 dvZOIPVfSEA5yc1Bcsce5mS3jFdcB6Tf1zXS+WtEFiY7LylNApcY4+EQIijeu+xpSo
	 IGUA9aJ8hq6oA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10089408BA;
	Thu, 31 Oct 2024 17:20:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8F91D5E50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 17:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7195C81815
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 17:20:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J9Qrv294MCq8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 17:20:08 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102b; helo=mail-pj1-x102b.google.com;
 envelope-from=csander@purestorage.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 561A98183D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 561A98183D
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 561A98183D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 17:20:07 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 98e67ed59e1d1-2e2b4110341so132597a91.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 10:20:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730395206; x=1731000006;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SKkFDkzIEBItD3yNbuSEm7Az14lr6rR23lccwnGeVnE=;
 b=n/QmTh0HNZV5TIA8l5UyTYlGN00Ry8ITEtGfZ/W7rWsBC9aQFpjGhtu3NZFXrCCYAG
 uTvPPu97uSL7tUxVJrZ38OSaeGMH3fU33RtAwdifQS+u+0hQEV5zPDloxQBtHn0Rcqik
 OWLeHSz756ki8RQFaUCN4wing2MIbtgudyUe+SnmK6sUbbPRymdz+MuacS6ualzGqN9J
 4U+eakPEM8TGQbahyF3RCEB+FLIBr0s60aNO1G+wcEwr98eu5XoPQ8qvVQjbsZXijWzQ
 COwXiAamI/CwOTabTOP461q+41Ji0giMB9jsy3u4g38XgY+CZjmoBXjrQst3C8ffigYh
 fKFA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUeThMGOcbeUjSf5nGpbCRUaBDsWrcGsKf0GyvTF8ptdNPpaXJCK5zy6S8NuiUnU4fxbvzuWGJYrm6TnIgEDm4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz105F6B1YyNBjK1aljwwZM7OW1I6WLV36Qn/tGGXV3c3iZ7zBJ
 Vq7A8Eudc7wYdSQviFr8crI0zEkQaqA2TQ8Se7qC441EAjz493iXdeEl4QYYWCMAVSGsO0+P/Bi
 9hT32QJRlcQoPkfmN5fboiWf7FVMCDW2JUJtmkA==
X-Google-Smtp-Source: AGHT+IH6t05mbCPluyw/Zm7bZ8Y86vIuSvJgupQimK2c7oAZcHqEQQGqxSncMtgAi8PvmdylJnQUlmy+Sc53Mt/5SYg=
X-Received: by 2002:a17:90b:3003:b0:2e2:b45d:bbb9 with SMTP id
 98e67ed59e1d1-2e8f11bfd7bmr9879885a91.6.1730395206352; Thu, 31 Oct 2024
 10:20:06 -0700 (PDT)
MIME-Version: 1.0
References: <20241031002326.3426181-1-csander@purestorage.com>
 <20241031002326.3426181-2-csander@purestorage.com>
 <ZyN8xpq5C36Tg9rz@LouisNoVo>
In-Reply-To: <ZyN8xpq5C36Tg9rz@LouisNoVo>
From: Caleb Sander <csander@purestorage.com>
Date: Thu, 31 Oct 2024 10:19:55 -0700
Message-ID: <CADUfDZoba9hNOBU7TT+0K6BYiYzVkZ_awt751g6HBm+-cCZf8w@mail.gmail.com>
To: Louis Peens <louis.peens@corigine.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Arthur Kiyanovski <akiyano@amazon.com>, Brett Creeley <brett.creeley@amd.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, 
 David Arinzon <darinzon@amazon.com>, "David S. Miller" <davem@davemloft.net>, 
 Doug Berger <opendmb@gmail.com>, Eric Dumazet <edumazet@google.com>, 
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>, 
 Felix Fietkau <nbd@nbd.name>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Geetha sowjanya <gakula@marvell.com>, hariprasad <hkelam@marvell.com>, 
 Jakub Kicinski <kuba@kernel.org>, Jason Wang <jasowang@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>, 
 Leon Romanovsky <leon@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>, 
 Mark Lee <Mark-MC.Lee@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Chan <michael.chan@broadcom.com>, "Michael S. Tsirkin" <mst@redhat.com>,
 Noam Dagan <ndagan@amazon.com>, Paolo Abeni <pabeni@redhat.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Roy Pledge <Roy.Pledge@nxp.com>,
 Saeed Bishara <saeedb@amazon.com>, Saeed Mahameed <saeedm@nvidia.com>, 
 Sean Wang <sean.wang@mediatek.com>, Shannon Nelson <shannon.nelson@amd.com>, 
 Shay Agroskin <shayagr@amazon.com>, Simon Horman <horms@kernel.org>, 
 Subbaraya Sundeep <sbhatta@marvell.com>, Sunil Goutham <sgoutham@marvell.com>, 
 Tal Gilboa <talgi@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, 
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>, intel-wired-lan@lists.osuosl.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linuxppc-dev@lists.ozlabs.org, linux-rdma@vger.kernel.org, 
 netdev@vger.kernel.org, oss-drivers@corigine.com, 
 virtualization@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022; t=1730395206; x=1731000006;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SKkFDkzIEBItD3yNbuSEm7Az14lr6rR23lccwnGeVnE=;
 b=WgcHiKlrNOg6kA9SeT6/8GbE+wlyTeFg3wzWU8RRf5us81VvCP1YXhd9ijmMJhSP8r
 NIrgJEd0SbLs3kyhPNgYIObS0d/gBsN3dOCfBj36XFnY1xAw5XI8boUIW+K0XBzhuQ1n
 PbTj/6UnfX8Q6IM0txSD2gX1TrjakQ4k3ix0j0+PuCc6vXES5loWWf+8qGukkFR/p1x6
 Dz0CzN1CLaSCT8Z3MOLmPOrwPjCbVceH8TQoDxVYk8Q/MH3sDvgwgCLu4KuxSNrTN+nM
 /RbtZrQ11yqoxno/btEmLI9lp9hmX/hUtpwuA8VqJrnNwVyO47TAv9pBQmX/oPPWRxk8
 uLZg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=purestorage.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=WgcHiKlr
Subject: Re: [Intel-wired-lan] [resend PATCH 2/2] dim: pass dim_sample to
 net_dim() by reference
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

On Thu, Oct 31, 2024 at 5:49=E2=80=AFAM Louis Peens <louis.peens@corigine.c=
om> wrote:
>
> On Wed, Oct 30, 2024 at 06:23:26PM -0600, Caleb Sander Mateos wrote:
> > net_dim() is currently passed a struct dim_sample argument by value.
> > struct dim_sample is 24 bytes. Since this is greater 16 bytes, x86-64
> > passes it on the stack. All callers have already initialized dim_sample
> > on the stack, so passing it by value requires pushing a duplicated copy
> > to the stack. Either witing to the stack and immediately reading it, or
> > perhaps dereferencing addresses relative to the stack pointer in a chai=
n
> > of push instructions, seems to perform quite poorly.
> >
> > In a heavy TCP workload, mlx5e_handle_rx_dim() consumes 3% of CPU time,
> > 94% of which is attributed to the first push instruction to copy
> > dim_sample on the stack for the call to net_dim():
> > // Call ktime_get()
> >   0.26 |4ead2:   call   4ead7 <mlx5e_handle_rx_dim+0x47>
> > // Pass the address of struct dim in %rdi
> >        |4ead7:   lea    0x3d0(%rbx),%rdi
> > // Set dim_sample.pkt_ctr
> >        |4eade:   mov    %r13d,0x8(%rsp)
> > // Set dim_sample.byte_ctr
> >        |4eae3:   mov    %r12d,0xc(%rsp)
> > // Set dim_sample.event_ctr
> >   0.15 |4eae8:   mov    %bp,0x10(%rsp)
> > // Duplicate dim_sample on the stack
> >  94.16 |4eaed:   push   0x10(%rsp)
> >   2.79 |4eaf1:   push   0x10(%rsp)
> >   0.07 |4eaf5:   push   %rax
> > // Call net_dim()
> >   0.21 |4eaf6:   call   4eafb <mlx5e_handle_rx_dim+0x6b>
> >
> > To allow the caller to reuse the struct dim_sample already on the stack=
,
> > pass the struct dim_sample by reference to net_dim().
> >
> > Signed-off-by: Caleb Sander Mateos <csander@purestorage.com>
> > ---
> >  Documentation/networking/net_dim.rst                   |  2 +-
> >  drivers/net/ethernet/amazon/ena/ena_netdev.c           |  2 +-
> >  drivers/net/ethernet/broadcom/bcmsysport.c             |  2 +-
> >  drivers/net/ethernet/broadcom/bnxt/bnxt.c              |  4 ++--
> >  drivers/net/ethernet/broadcom/genet/bcmgenet.c         |  2 +-
> >  drivers/net/ethernet/freescale/enetc/enetc.c           |  2 +-
> >  drivers/net/ethernet/hisilicon/hns3/hns3_enet.c        |  4 ++--
> >  drivers/net/ethernet/intel/ice/ice_txrx.c              |  4 ++--
> >  drivers/net/ethernet/intel/idpf/idpf_txrx.c            |  4 ++--
> >  drivers/net/ethernet/marvell/octeontx2/nic/otx2_txrx.c |  2 +-
> >  drivers/net/ethernet/mediatek/mtk_eth_soc.c            |  4 ++--
> >  drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c      |  4 ++--
> >  drivers/net/ethernet/netronome/nfp/nfd3/dp.c           |  4 ++--
> >  drivers/net/ethernet/netronome/nfp/nfdk/dp.c           |  4 ++--
> >  drivers/net/ethernet/pensando/ionic/ionic_txrx.c       |  2 +-
> >  drivers/net/virtio_net.c                               |  2 +-
> >  drivers/soc/fsl/dpio/dpio-service.c                    |  2 +-
> >  include/linux/dim.h                                    |  2 +-
> >  lib/dim/net_dim.c                                      | 10 +++++-----
> >  19 files changed, 31 insertions(+), 31 deletions(-)
> >
> --- snip --
>
> > diff --git a/drivers/net/ethernet/netronome/nfp/nfd3/dp.c b/drivers/net=
/ethernet/netronome/nfp/nfd3/dp.c
> > index d215efc6cad0..f1c6c47564b1 100644
> > --- a/drivers/net/ethernet/netronome/nfp/nfd3/dp.c
> > +++ b/drivers/net/ethernet/netronome/nfp/nfd3/dp.c
> > @@ -1177,11 +1177,11 @@ int nfp_nfd3_poll(struct napi_struct *napi, int=
 budget)
> >                       pkts =3D r_vec->rx_pkts;
> >                       bytes =3D r_vec->rx_bytes;
> >               } while (u64_stats_fetch_retry(&r_vec->rx_sync, start));
> >
> >               dim_update_sample(r_vec->event_ctr, pkts, bytes, &dim_sam=
ple);
> > -             net_dim(&r_vec->rx_dim, dim_sample);
> > +             net_dim(&r_vec->rx_dim, &dim_sample);
> >       }
> >
> >       if (r_vec->nfp_net->tx_coalesce_adapt_on && r_vec->tx_ring) {
> >               struct dim_sample dim_sample =3D {};
> >               unsigned int start;
> > @@ -1192,11 +1192,11 @@ int nfp_nfd3_poll(struct napi_struct *napi, int=
 budget)
> >                       pkts =3D r_vec->tx_pkts;
> >                       bytes =3D r_vec->tx_bytes;
> >               } while (u64_stats_fetch_retry(&r_vec->tx_sync, start));
> >
> >               dim_update_sample(r_vec->event_ctr, pkts, bytes, &dim_sam=
ple);
> > -             net_dim(&r_vec->tx_dim, dim_sample);
> > +             net_dim(&r_vec->tx_dim, &dim_sample);
> >       }
> >
> >       return pkts_polled;
> >  }
> >
> > diff --git a/drivers/net/ethernet/netronome/nfp/nfdk/dp.c b/drivers/net=
/ethernet/netronome/nfp/nfdk/dp.c
> > index dae5af7d1845..ebeb6ab4465c 100644
> > --- a/drivers/net/ethernet/netronome/nfp/nfdk/dp.c
> > +++ b/drivers/net/ethernet/netronome/nfp/nfdk/dp.c
> > @@ -1287,11 +1287,11 @@ int nfp_nfdk_poll(struct napi_struct *napi, int=
 budget)
> >                       pkts =3D r_vec->rx_pkts;
> >                       bytes =3D r_vec->rx_bytes;
> >               } while (u64_stats_fetch_retry(&r_vec->rx_sync, start));
> >
> >               dim_update_sample(r_vec->event_ctr, pkts, bytes, &dim_sam=
ple);
> > -             net_dim(&r_vec->rx_dim, dim_sample);
> > +             net_dim(&r_vec->rx_dim, &dim_sample);
> >       }
> >
> >       if (r_vec->nfp_net->tx_coalesce_adapt_on && r_vec->tx_ring) {
> >               struct dim_sample dim_sample =3D {};
> >               unsigned int start;
> > @@ -1302,11 +1302,11 @@ int nfp_nfdk_poll(struct napi_struct *napi, int=
 budget)
> >                       pkts =3D r_vec->tx_pkts;
> >                       bytes =3D r_vec->tx_bytes;
> >               } while (u64_stats_fetch_retry(&r_vec->tx_sync, start));
> >
> >               dim_update_sample(r_vec->event_ctr, pkts, bytes, &dim_sam=
ple);
> > -             net_dim(&r_vec->tx_dim, dim_sample);
> > +             net_dim(&r_vec->tx_dim, &dim_sample);
> >       }
> >
> >       return pkts_polled;
> >  }
> --- snip ---
>
> Hi Caleb. Looks like a fair enough update to me in general, but I am not =
an
> expert on 'dim'. For the corresponding nfp driver changes feel free to ad=
d:
>
> Signed-off-by: Louis Peens <louis.peens@corigine.com>

Hi Louis,
Thanks for the review. Did you mean "Reviewed-by"? If there was a
change you were suggesting, I missed it.

Best,
Caleb
