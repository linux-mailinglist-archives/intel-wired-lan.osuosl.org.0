Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5BB9B7009
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 23:52:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B9DF401E4;
	Wed, 30 Oct 2024 22:52:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7VQvu0aE6ae5; Wed, 30 Oct 2024 22:52:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49375401D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730328761;
	bh=ClJTtWkeJwKitQ6pdAX1pMbydYPeJlKHZM3I5rlDbso=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Sif2pUASAmiEAUju1vlISiRD7I3vrFSfMCuD6Wn/VA8ApMD2LZztv/aC1xBajxpP6
	 TQF8EzfMaaEk+VmCjOpD0q9JLAHHc9T0M6N3ot11G7wTIHKJwtsonOgV5kkAiI1Ncm
	 TWTaaXVGwbqy9rhBnV2apesuVHna3MJxQD/qw58ZWWJ+Rc3QgC7B9svDx50wsi/H1m
	 AoiDtcQWM0yrkhttJIdz2T6mUV1vcSOKf2PJfjmaJxZvH3HWw+vPsneGHsNmUME1dB
	 8aFuWvLfT4NWzcPyxCxZqoSDjKCxCj6JjwPIM9/oWEL4JrHU/DABAl8NJVqq2X0fT5
	 Z29IGKs9oiZEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49375401D3;
	Wed, 30 Oct 2024 22:52:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 830A75E51
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 22:52:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 682E440002
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 22:52:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id srSVIIErHdcU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 22:52:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::835; helo=mail-qt1-x835.google.com;
 envelope-from=rosenp@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 97656400A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97656400A6
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 97656400A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 22:52:37 +0000 (UTC)
Received: by mail-qt1-x835.google.com with SMTP id
 d75a77b69052e-460ad98b043so2923381cf.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 15:52:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730328756; x=1730933556;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ClJTtWkeJwKitQ6pdAX1pMbydYPeJlKHZM3I5rlDbso=;
 b=H2y42l4mNHwITwgBWP+8Gm5gXSleLVZ5GUyFRSIB23pDh69mcXg07ER+9A3AmeqxAv
 AsGFHbjykrCNXzXj2fQlsFke9pMdPZQXtfkFs2fuEnMqqu9xkGPqDOBbjEqocq9Lgjw2
 Ki6rYMcIXffJtaytuqq2maRwIgNyvGG3h/qEVQCKVwFlSZWZWCCub9OaONvI2Ab2U5Qg
 3f4hgrtPvQEs7bXtkU4MyDsdLdUl/0J2TPyWf8icaxPftbIglI0p8/VUv0Qef/DOr1Lc
 LMe/wX18rsk9hg/ckVIxwmE4qt5lSkykEDRISU2zNyOFLLvY+YqSu6YFyjXKlp03cIOP
 gJIA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWkxMKFEdIyjwOEQdbi0jWiUZ63EHTtfTS/VJoR8r9y5r3T1WxEsFdWJ3DCw1VSSOffdh8EOb8qRObj6QIhOjY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxTqFSQA1ZSJTnvzwZVOQTKhSuWAxVCZ9Y+DvqwAxIAhzylkAaM
 xvpJjZKuwFCR8P5/CI1E3/PH1k3XbLeQ6+FaHUplAjLzw4tpd7ObnP4l1Tj/O0BEZBv+3Twr4t7
 winuKBZw8HRGdwvd1NJlblFi0sRE=
X-Google-Smtp-Source: AGHT+IEbv78b2yimnG8bZhK81qAUMPmaYeMwqnG34hK/n4ZCF7sg8xtDmFEjl3WSTj0xQjqAlptJclv9DgTeGSuR+EQ=
X-Received: by 2002:ac8:4295:0:b0:462:ad94:3552 with SMTP id
 d75a77b69052e-462ad94361emr4787111cf.9.1730328755813; Wed, 30 Oct 2024
 15:52:35 -0700 (PDT)
MIME-Version: 1.0
References: <20241025201713.286074-1-rosenp@gmail.com>
 <ca89f03e-6dc1-44fa-bfd1-aac95ede0cbe@intel.com>
In-Reply-To: <ca89f03e-6dc1-44fa-bfd1-aac95ede0cbe@intel.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 30 Oct 2024 15:52:24 -0700
Message-ID: <CAKxU2N9hhwfdZN28kTDf3qUT8GXuxLDPFsA04jBaJSWqPRaHqQ@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, 
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, 
 "open list:XDP (eXpress Data Path):Keyword:(?:b|_)xdp(?:b|_)"
 <bpf@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1730328756; x=1730933556; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ClJTtWkeJwKitQ6pdAX1pMbydYPeJlKHZM3I5rlDbso=;
 b=H99IeeXfQYOutmcGWlZxFtyneOmiTpgLlLuszDyeKJWQZfl3hYmkj0oCAtHkU7vGA1
 Gqg7fA3ZQWABRBpnhknrwJfmOD0YIDH3zXrIQx7rB0SY7lIY/FKYyMSiF9OFfIEpqoKY
 WIXweHx3WgpTNZ+eZCqgZmHxQKODcLDpRNDYQNGGi3cyGxbhvkJUwYri391gcLlHrzpm
 T5ToO8aTkTzqZJ9n7qlXx+guEaBwIbEOKBhKP4+Es+J2XP229IPffiAcRf2qO11jz5Ij
 PThs2mmVRiSWk3/4IXN814YoW5eNxi1aGtaNd2uMJQutSwZA4f9vY6KTNqM9mnD8VVJK
 qvkQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=H99IeeXf
Subject: Re: [Intel-wired-lan] [PATCHv2 net-next iwl-next] net: intel: use
 ethtool string helpers
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

On Mon, Oct 28, 2024 at 3:13=E2=80=AFAM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
>
> On 10/25/24 22:17, Rosen Penev wrote:
> > The latter is the preferred way to copy ethtool strings.
> >
> > Avoids manually incrementing the pointer. Cleans up the code quite well=
.
> >
> > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > ---
> >   v2: add iwl-next tag. use inline int in for loops.
> >   .../net/ethernet/intel/e1000/e1000_ethtool.c  | 10 ++---
> >   drivers/net/ethernet/intel/e1000e/ethtool.c   | 14 +++----
> >   .../net/ethernet/intel/fm10k/fm10k_ethtool.c  | 10 ++---
> >   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  6 +--
> >   drivers/net/ethernet/intel/ice/ice_ethtool.c  | 37 +++++++++++-------=
-
> >   drivers/net/ethernet/intel/igb/igb_ethtool.c  | 35 ++++++++++--------
> >   drivers/net/ethernet/intel/igbvf/ethtool.c    | 10 ++---
> >   drivers/net/ethernet/intel/igc/igc_ethtool.c  | 36 +++++++++---------
> >   .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 32 ++++++++--------
>
> for ice, igb, igc, and ixgbe the current code already uses ethtool
> string helpers, and in many places you are just changing variable name,
> "p" to "data", I would rather avoid that.
well, since I'm cleaning some of this code up, might as well get rid
of variables. That was suggested to me with other similar patches.
>
> sorry for not spotting that earlier, and apologies that we have so many
> drivers to fix up in the first place
>
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net=
/ethernet/intel/ice/ice_ethtool.c
> > index 2924ac61300d..62a152be8180 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > @@ -83,7 +83,7 @@ static const char ice_gstrings_test[][ETH_GSTRING_LEN=
] =3D {
> >       "Link test   (on/offline)",
> >   };
> >
> > -#define ICE_TEST_LEN (sizeof(ice_gstrings_test) / ETH_GSTRING_LEN)
> > +#define ICE_TEST_LEN ARRAY_SIZE(ice_gstrings_test)
> >
> >   /* These PF_STATs might look like duplicates of some NETDEV_STATs,
> >    * but they aren't. This device is capable of supporting multiple
> > @@ -1481,48 +1481,53 @@ static void
> >   __ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data,
> >                 struct ice_vsi *vsi)
> >   {
> > +     const char *str;
> >       unsigned int i;
> > -     u8 *p =3D data;
> >
> >       switch (stringset) {
> >       case ETH_SS_STATS:
> > -             for (i =3D 0; i < ICE_VSI_STATS_LEN; i++)
> > -                     ethtool_puts(&p, ice_gstrings_vsi_stats[i].stat_s=
tring);
> > +             for (i =3D 0; i < ICE_VSI_STATS_LEN; i++) {
> > +                     str =3D ice_gstrings_vsi_stats[i].stat_string;
> > +                     ethtool_puts(&data, str);
> > +             }
> >
> >               if (ice_is_port_repr_netdev(netdev))
> >                       return;
> >
> >               ice_for_each_alloc_txq(vsi, i) {
> > -                     ethtool_sprintf(&p, "tx_queue_%u_packets", i);
> > -                     ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
> > +                     ethtool_sprintf(&data, "tx_queue_%u_packets", i);
> > +                     ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
> >               }
> >
> >               ice_for_each_alloc_rxq(vsi, i) {
> > -                     ethtool_sprintf(&p, "rx_queue_%u_packets", i);
> > -                     ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
> > +                     ethtool_sprintf(&data, "rx_queue_%u_packets", i);
> > +                     ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
> >               }
> >
> >               if (vsi->type !=3D ICE_VSI_PF)
> >                       return;
> >
> > -             for (i =3D 0; i < ICE_PF_STATS_LEN; i++)
> > -                     ethtool_puts(&p, ice_gstrings_pf_stats[i].stat_st=
ring);
> > +             for (i =3D 0; i < ICE_PF_STATS_LEN; i++) {
> > +                     str =3D ice_gstrings_pf_stats[i].stat_string;
> > +                     ethtool_puts(&data, str);
> > +             }
> >
> >               for (i =3D 0; i < ICE_MAX_USER_PRIORITY; i++) {
> > -                     ethtool_sprintf(&p, "tx_priority_%u_xon.nic", i);
> > -                     ethtool_sprintf(&p, "tx_priority_%u_xoff.nic", i)=
;
> > +                     ethtool_sprintf(&data, "tx_priority_%u_xon.nic", =
i);
> > +                     ethtool_sprintf(&data, "tx_priority_%u_xoff.nic",=
 i);
> >               }
> >               for (i =3D 0; i < ICE_MAX_USER_PRIORITY; i++) {
> > -                     ethtool_sprintf(&p, "rx_priority_%u_xon.nic", i);
> > -                     ethtool_sprintf(&p, "rx_priority_%u_xoff.nic", i)=
;
> > +                     ethtool_sprintf(&data, "rx_priority_%u_xon.nic", =
i);
> > +                     ethtool_sprintf(&data, "rx_priority_%u_xoff.nic",=
 i);
> >               }
> >               break;
> >       case ETH_SS_TEST:
> > -             memcpy(data, ice_gstrings_test, ICE_TEST_LEN * ETH_GSTRIN=
G_LEN);
> > +             for (i =3D 0; i < ICE_TEST_LEN; i++)
> > +                     ethtool_puts(&data, ice_gstrings_test[i]);
> >               break;
> >       case ETH_SS_PRIV_FLAGS:
> >               for (i =3D 0; i < ICE_PRIV_FLAG_ARRAY_SIZE; i++)
> > -                     ethtool_puts(&p, ice_gstrings_priv_flags[i].name)=
;
> > +                     ethtool_puts(&data, ice_gstrings_priv_flags[i].na=
me);
> >               break;
> >       default:
> >               break;
>
> really no need to git-blame touch most of the code here>

Actually the function should be taking a double pointer here I think
in case something gets called after it in the main function.

> > diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net=
/ethernet/intel/igb/igb_ethtool.c
> > index ca6ccbc13954..c4a8712389af 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > @@ -123,7 +123,7 @@ static const char igb_gstrings_test[][ETH_GSTRING_L=
EN] =3D {
> >       [TEST_LOOP] =3D "Loopback test  (offline)",
> >       [TEST_LINK] =3D "Link test   (on/offline)"
> >   };
> > -#define IGB_TEST_LEN (sizeof(igb_gstrings_test) / ETH_GSTRING_LEN)
> > +#define IGB_TEST_LEN ARRAY_SIZE(igb_gstrings_test)
> >
> >   static const char igb_priv_flags_strings[][ETH_GSTRING_LEN] =3D {
> >   #define IGB_PRIV_FLAGS_LEGACY_RX    BIT(0)
> > @@ -2347,35 +2347,38 @@ static void igb_get_ethtool_stats(struct net_de=
vice *netdev,
> >   static void igb_get_strings(struct net_device *netdev, u32 stringset,=
 u8 *data)
> >   {
> >       struct igb_adapter *adapter =3D netdev_priv(netdev);
> > -     u8 *p =3D data;
> > +     const char *str;
> >       int i;
> >
> >       switch (stringset) {
> >       case ETH_SS_TEST:
> > -             memcpy(data, igb_gstrings_test, sizeof(igb_gstrings_test)=
);
> > +             for (i =3D 0; i < IGB_TEST_LEN; i++)
> > +                     ethtool_puts(&data, igb_gstrings_test[i]);
> >               break;
> >       case ETH_SS_STATS:
> >               for (i =3D 0; i < IGB_GLOBAL_STATS_LEN; i++)
> > -                     ethtool_puts(&p, igb_gstrings_stats[i].stat_strin=
g);
> > -             for (i =3D 0; i < IGB_NETDEV_STATS_LEN; i++)
> > -                     ethtool_puts(&p, igb_gstrings_net_stats[i].stat_s=
tring);
> > +                     ethtool_puts(&data, igb_gstrings_stats[i].stat_st=
ring);
> > +             for (i =3D 0; i < IGB_NETDEV_STATS_LEN; i++) {
> > +                     str =3D igb_gstrings_net_stats[i].stat_string;
> > +                     ethtool_puts(&data, str);
> > +             }
> >               for (i =3D 0; i < adapter->num_tx_queues; i++) {
> > -                     ethtool_sprintf(&p, "tx_queue_%u_packets", i);
> > -                     ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
> > -                     ethtool_sprintf(&p, "tx_queue_%u_restart", i);
> > +                     ethtool_sprintf(&data, "tx_queue_%u_packets", i);
> > +                     ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
> > +                     ethtool_sprintf(&data, "tx_queue_%u_restart", i);
> >               }
> >               for (i =3D 0; i < adapter->num_rx_queues; i++) {
> > -                     ethtool_sprintf(&p, "rx_queue_%u_packets", i);
> > -                     ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
> > -                     ethtool_sprintf(&p, "rx_queue_%u_drops", i);
> > -                     ethtool_sprintf(&p, "rx_queue_%u_csum_err", i);
> > -                     ethtool_sprintf(&p, "rx_queue_%u_alloc_failed", i=
);
> > +                     ethtool_sprintf(&data, "rx_queue_%u_packets", i);
> > +                     ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
> > +                     ethtool_sprintf(&data, "rx_queue_%u_drops", i);
> > +                     ethtool_sprintf(&data, "rx_queue_%u_csum_err", i)=
;
> > +                     ethtool_sprintf(&data, "rx_queue_%u_alloc_failed"=
, i);
> >               }
> >               /* BUG_ON(p - data !=3D IGB_STATS_LEN * ETH_GSTRING_LEN);=
 */
> >               break;
> >       case ETH_SS_PRIV_FLAGS:
> > -             memcpy(data, igb_priv_flags_strings,
> > -                    IGB_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
> > +             for (i =3D 0; i < IGB_PRIV_FLAGS_STR_LEN; i++)
> > +                     ethtool_puts(&data, igb_priv_flags_strings[i]);
> >               break;
> >       }
> >   }
>
> ditto
>
> > diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net=
/ethernet/intel/igc/igc_ethtool.c
> > index 5b0c6f433767..7b118fb7097b 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > @@ -104,7 +104,7 @@ static const char igc_gstrings_test[][ETH_GSTRING_L=
EN] =3D {
> >       [TEST_LINK] =3D "Link test   (on/offline)"
> >   };
> >
> > -#define IGC_TEST_LEN (sizeof(igc_gstrings_test) / ETH_GSTRING_LEN)
> > +#define IGC_TEST_LEN ARRAY_SIZE(igc_gstrings_test)
> >
> >   #define IGC_GLOBAL_STATS_LEN        \
> >       (sizeof(igc_gstrings_stats) / sizeof(struct igc_stats))
> > @@ -763,36 +763,38 @@ static void igc_ethtool_get_strings(struct net_de=
vice *netdev, u32 stringset,
> >                                   u8 *data)
> >   {
> >       struct igc_adapter *adapter =3D netdev_priv(netdev);
> > -     u8 *p =3D data;
> > +     const char *str;
> >       int i;
> >
> >       switch (stringset) {
> >       case ETH_SS_TEST:
> > -             memcpy(data, *igc_gstrings_test,
> > -                    IGC_TEST_LEN * ETH_GSTRING_LEN);
> > +             for (i =3D 0; i < IGC_TEST_LEN; i++)
> > +                     ethtool_puts(&data, igc_gstrings_test[i]);
> >               break;
> >       case ETH_SS_STATS:
> >               for (i =3D 0; i < IGC_GLOBAL_STATS_LEN; i++)
> > -                     ethtool_puts(&p, igc_gstrings_stats[i].stat_strin=
g);
> > -             for (i =3D 0; i < IGC_NETDEV_STATS_LEN; i++)
> > -                     ethtool_puts(&p, igc_gstrings_net_stats[i].stat_s=
tring);
> > +                     ethtool_puts(&data, igc_gstrings_stats[i].stat_st=
ring);
> > +             for (i =3D 0; i < IGC_NETDEV_STATS_LEN; i++) {
> > +                     str =3D igc_gstrings_net_stats[i].stat_string;
> > +                     ethtool_puts(&data, str);
> > +             }
> >               for (i =3D 0; i < adapter->num_tx_queues; i++) {
> > -                     ethtool_sprintf(&p, "tx_queue_%u_packets", i);
> > -                     ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
> > -                     ethtool_sprintf(&p, "tx_queue_%u_restart", i);
> > +                     ethtool_sprintf(&data, "tx_queue_%u_packets", i);
> > +                     ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
> > +                     ethtool_sprintf(&data, "tx_queue_%u_restart", i);
> >               }
> >               for (i =3D 0; i < adapter->num_rx_queues; i++) {
> > -                     ethtool_sprintf(&p, "rx_queue_%u_packets", i);
> > -                     ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
> > -                     ethtool_sprintf(&p, "rx_queue_%u_drops", i);
> > -                     ethtool_sprintf(&p, "rx_queue_%u_csum_err", i);
> > -                     ethtool_sprintf(&p, "rx_queue_%u_alloc_failed", i=
);
> > +                     ethtool_sprintf(&data, "rx_queue_%u_packets", i);
> > +                     ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
> > +                     ethtool_sprintf(&data, "rx_queue_%u_drops", i);
> > +                     ethtool_sprintf(&data, "rx_queue_%u_csum_err", i)=
;
> > +                     ethtool_sprintf(&data, "rx_queue_%u_alloc_failed"=
, i);
> >               }
> >               /* BUG_ON(p - data !=3D IGC_STATS_LEN * ETH_GSTRING_LEN);=
 */
> >               break;
> >       case ETH_SS_PRIV_FLAGS:
> > -             memcpy(data, igc_priv_flags_strings,
> > -                    IGC_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
> > +             for (i =3D 0; i < IGC_PRIV_FLAGS_STR_LEN; i++)
> > +                     ethtool_puts(&data, igc_priv_flags_strings[i]);
> >               break;
> >       }
> >   }
>
> ditto
>
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers=
/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> > index 9482e0cca8b7..b3b2e38c2ae6 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> > @@ -129,7 +129,7 @@ static const char ixgbe_gstrings_test[][ETH_GSTRING=
_LEN] =3D {
> >       "Interrupt test (offline)", "Loopback test  (offline)",
> >       "Link test   (on/offline)"
> >   };
> > -#define IXGBE_TEST_LEN sizeof(ixgbe_gstrings_test) / ETH_GSTRING_LEN
> > +#define IXGBE_TEST_LEN ARRAY_SIZE(ixgbe_gstrings_test)
> >
> >   static const char ixgbe_priv_flags_strings[][ETH_GSTRING_LEN] =3D {
> >   #define IXGBE_PRIV_FLAGS_LEGACY_RX  BIT(0)
> > @@ -1409,38 +1409,40 @@ static void ixgbe_get_ethtool_stats(struct net_=
device *netdev,
> >   static void ixgbe_get_strings(struct net_device *netdev, u32 stringse=
t,
> >                             u8 *data)
> >   {
> > +     const char *str;
> >       unsigned int i;
> > -     u8 *p =3D data;
> >
> >       switch (stringset) {
> >       case ETH_SS_TEST:
> >               for (i =3D 0; i < IXGBE_TEST_LEN; i++)
> > -                     ethtool_puts(&p, ixgbe_gstrings_test[i]);
> > +                     ethtool_puts(&data, ixgbe_gstrings_test[i]);
> >               break;
> >       case ETH_SS_STATS:
> > -             for (i =3D 0; i < IXGBE_GLOBAL_STATS_LEN; i++)
> > -                     ethtool_puts(&p, ixgbe_gstrings_stats[i].stat_str=
ing);
> > +             for (i =3D 0; i < IXGBE_GLOBAL_STATS_LEN; i++) {
> > +                     str =3D ixgbe_gstrings_stats[i].stat_string;
> > +                     ethtool_puts(&data, str);
> > +             }
> >               for (i =3D 0; i < netdev->num_tx_queues; i++) {
> > -                     ethtool_sprintf(&p, "tx_queue_%u_packets", i);
> > -                     ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
> > +                     ethtool_sprintf(&data, "tx_queue_%u_packets", i);
> > +                     ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
> >               }
> >               for (i =3D 0; i < IXGBE_NUM_RX_QUEUES; i++) {
> > -                     ethtool_sprintf(&p, "rx_queue_%u_packets", i);
> > -                     ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
> > +                     ethtool_sprintf(&data, "rx_queue_%u_packets", i);
> > +                     ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
> >               }
> >               for (i =3D 0; i < IXGBE_MAX_PACKET_BUFFERS; i++) {
> > -                     ethtool_sprintf(&p, "tx_pb_%u_pxon", i);
> > -                     ethtool_sprintf(&p, "tx_pb_%u_pxoff", i);
> > +                     ethtool_sprintf(&data, "tx_pb_%u_pxon", i);
> > +                     ethtool_sprintf(&data, "tx_pb_%u_pxoff", i);
> >               }
> >               for (i =3D 0; i < IXGBE_MAX_PACKET_BUFFERS; i++) {
> > -                     ethtool_sprintf(&p, "rx_pb_%u_pxon", i);
> > -                     ethtool_sprintf(&p, "rx_pb_%u_pxoff", i);
> > +                     ethtool_sprintf(&data, "rx_pb_%u_pxon", i);
> > +                     ethtool_sprintf(&data, "rx_pb_%u_pxoff", i);
> >               }
> >               /* BUG_ON(p - data !=3D IXGBE_STATS_LEN * ETH_GSTRING_LEN=
); */
> >               break;
> >       case ETH_SS_PRIV_FLAGS:
> > -             memcpy(data, ixgbe_priv_flags_strings,
> > -                    IXGBE_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
> > +             for (i =3D 0; i < IXGBE_PRIV_FLAGS_STR_LEN; i++)
> > +                     ethtool_puts(&data, ixgbe_priv_flags_strings[i]);
> >       }
> >   }
> >
>
> ditto here
