Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2872844FD6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 04:34:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BC64418A8;
	Thu,  1 Feb 2024 03:34:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BC64418A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706758490;
	bh=lj3hcJMzBxsadZ68tugN6RNorm8HYmDm8vjqNA4qLGo=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ob0aqSbiMSOEbasV2Y9AXaxC7ntV0GNSDzbhH62xNak5ZTAuqI/em3OtNPCA9dcMF
	 pmOlQ+pUNDzdRATCYpws3FYcCdYVcOZbWlOWhnlQWhEvk4j/gyzbmpntgp/yZnt9s5
	 yHdC+SlbC1WIS938C4maSziABDPUJc37gs8VlMBpvEEGuSTspHYNvBN2u+0rkM6CC8
	 D7wnyJbw3DgW3Wt/GaDA2Qow/YwkFaOMtAAkiPphpsuZ2niKpPmk4bekdLMrJiTcno
	 y3Z75gtex3qgfHSGjjX6B3eRCIohJtAo1k3Z4HXQaqZfAu2UTb6wNcDubhjtU4zDbc
	 vlk+wty1mMqMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Nvk1433aQDK; Thu,  1 Feb 2024 03:34:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A13C341991;
	Thu,  1 Feb 2024 03:34:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A13C341991
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 59C811BF951
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 03:34:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E4C0835F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 03:34:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E4C0835F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v3BBGV9W6nJl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 03:34:42 +0000 (UTC)
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E059283434
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 03:34:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E059283434
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-55783b7b47aso575947a12.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 19:34:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706758480; x=1707363280;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lj3hcJMzBxsadZ68tugN6RNorm8HYmDm8vjqNA4qLGo=;
 b=Exp/lPByohz1HGVqlHd/XVS2Puoc/4AFMyS9UruxfacM9zt/iK0lcT13FztFiel18x
 hO9+23pCWn56n0nAuGqizWNDmmAG3cnoHV7kFq+QyZQz6sC1LVXZhByTJf2D8ZaMqU5p
 OsW4Afyklui+OgUra/eNUviAkScVSCMjNWnxhp0jQw0AlRrVe5h8q8tm2ZNCHiEzozd7
 qQ8AJ/5uZ0udW+IYPvNYNuGYJ4A0t8EhajD0VXBETW8Q/g3TdFJIjuR6WJYdj4C+M/nB
 5UN3/L1fupKUyS4n3QUGbUruC2nvXPXIR74DGFdtlH985Xc3TWLT0X9S9di4X/Xv6pdB
 9Q1Q==
X-Gm-Message-State: AOJu0Yx5iA/bsta8zrE1hDjtifuHwvHUMLyrNLcKYcwokhg8JQ+evX4K
 mpzpvcg44+mVA+nTvjRWqK5ToEmn5wMTxFfC63vRe3R+nMrc/YCyEm91nQVmOiVtq7Bzhv7FFbt
 wcvV/3MenNPBpgZsN69W+dt7c1Pw=
X-Google-Smtp-Source: AGHT+IFcG+avvArp/EWf/JYpYXGBGOJnK39PQ4HIPWUPZpg2Jyk9snpNDms1CGUm/1/Ev56pYfTAg+RiOaOPdm2ZuaQ=
X-Received: by 2002:aa7:d391:0:b0:55f:217d:9651 with SMTP id
 x17-20020aa7d391000000b0055f217d9651mr2776816edq.22.1706758479335; Wed, 31
 Jan 2024 19:34:39 -0800 (PST)
MIME-Version: 1.0
References: <20240201033310.1028154-1-hayatake396@gmail.com>
 <20240201033310.1028154-2-hayatake396@gmail.com>
In-Reply-To: <20240201033310.1028154-2-hayatake396@gmail.com>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Thu, 1 Feb 2024 12:34:27 +0900
Message-ID: <CADFiAcLyFcYSczjbx5dnVh3sYLeniadpRHYjyMWiQZJUuhCgPw@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706758480; x=1707363280; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lj3hcJMzBxsadZ68tugN6RNorm8HYmDm8vjqNA4qLGo=;
 b=RMgZAR8Bwru99QOCMC7ps5SnK+7+vUzEcT2a9MZLZBuTgpbI6a3t8FIP28Qf8NfO+2
 PaAjzNiH93Fn9ZuaxLW6I8VRaQoRmBEOHV5QorqVnLJ6lr9wZ1mtOT7WCuzlx6omcd19
 w2HO61JAbWi2wudppj5BDDEEBo2/51MnuD7ZoupQ1if5jPcHe3YufWQU7IeQvdstdsxd
 8BD02bGmv/vdxGtv7SrjrGoicEC5djVndJBc4Kt1qLolWTsEzYaE7ksW1CudFc6lWCho
 YvbEyOFajgd0P4Rs4CJeIa0Nmlf4/BK48sDxI8jLVHi+txhplqrwaCnw2d8oMfD3Fk9J
 U81g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=RMgZAR8B
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 2/2] ice: Implement RSS
 settings for GTP using ethtool
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
Cc: linux-doc@vger.kernel.org, vladimir.oltean@nxp.com,
 linux-kernel@vger.kernel.org, laforge@gnumonks.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi reviews.
I made a mistake in sending the patch without increasing the version,
so I will send it again as v7.

Thanks
Takeru

2024=E5=B9=B42=E6=9C=881=E6=97=A5(=E6=9C=A8) 12:33 Takeru Hayasaka <hayatak=
e396@gmail.com>:
>
> Following the addition of new GTP RSS hash options to ethtool.h, this pat=
ch
> implements the corresponding RSS settings for GTP packets in the Intel ic=
e
> driver. It enables users to configure RSS for GTP-U and GTP-C traffic ove=
r IPv4
> and IPv6, utilizing the newly defined hash options.
>
> The implementation covers the handling of gtpu(4|6), gtpc(4|6), gtpc(4|6)=
t,
> gtpu(4|6)e, gtpu(4|6)u, and gtpu(4|6)d traffic, providing enhanced load
> distribution for GTP traffic across multiple processing units.
>
> Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
> ---
>  .../device_drivers/ethernet/intel/ice.rst     | 21 ++++-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 82 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_flow.h     | 31 +++++--
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 37 +++++++++
>  4 files changed, 162 insertions(+), 9 deletions(-)
>
> diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.r=
st b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> index 5038e54586af..934752f675ba 100644
> --- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> +++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> @@ -368,15 +368,28 @@ more options for Receive Side Scaling (RSS) hash by=
te configuration.
>    # ethtool -N <ethX> rx-flow-hash <type> <option>
>
>    Where <type> is:
> -    tcp4  signifying TCP over IPv4
> -    udp4  signifying UDP over IPv4
> -    tcp6  signifying TCP over IPv6
> -    udp6  signifying UDP over IPv6
> +    tcp4    signifying TCP over IPv4
> +    udp4    signifying UDP over IPv4
> +    gtpc4   signifying GTP-C over IPv4
> +    gtpc4t  signifying GTP-C (include TEID) over IPv4
> +    gtpu4   signifying GTP-U over IPV4
> +    gtpu4e  signifying GTP-U and Extension Header over IPV4
> +    gtpu4u  signifying GTP-U PSC Uplink over IPV4
> +    gtpu4d  signifying GTP-U PSC Downlink over IPV4
> +    tcp6    signifying TCP over IPv6
> +    udp6    signifying UDP over IPv6
> +    gtpc6   signifying GTP-C over IPv6
> +    gtpc6t  signifying GTP-C (include TEID) over IPv6
> +    gtpu6   signifying GTP-U over IPV6
> +    gtpu6e  signifying GTP-U and Extension Header over IPV6
> +    gtpu6u  signifying GTP-U PSC Uplink over IPV6
> +    gtpu6d  signifying GTP-U PSC Downlink over IPV6
>    And <option> is one or more of:
>      s     Hash on the IP source address of the Rx packet.
>      d     Hash on the IP destination address of the Rx packet.
>      f     Hash on bytes 0 and 1 of the Layer 4 header of the Rx packet.
>      n     Hash on bytes 2 and 3 of the Layer 4 header of the Rx packet.
> +    e     Hash on GTP Packet on TEID (4bytes) of the Rx packet.
>
>
>  Accelerated Receive Flow Steering (aRFS)
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/e=
thernet/intel/ice/ice_ethtool.c
> index a19b06f18e40..d0e05032f464 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -2486,6 +2486,24 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *nf=
c)
>         case SCTP_V4_FLOW:
>                 hdrs |=3D ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4;
>                 break;
> +       case GTPU_V4_FLOW:
> +               hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV=
4;
> +               break;
> +       case GTPC_V4_FLOW:
> +               hdrs |=3D ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV4;
> +               break;
> +       case GTPC_TEID_V4_FLOW:
> +               hdrs |=3D ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_I=
PV4;
> +               break;
> +       case GTPU_EH_V4_FLOW:
> +               hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV=
4;
> +               break;
> +       case GTPU_UL_V4_FLOW:
> +               hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV=
4;
> +               break;
> +       case GTPU_DL_V4_FLOW:
> +               hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IP=
V4;
> +               break;
>         case TCP_V6_FLOW:
>                 hdrs |=3D ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6;
>                 break;
> @@ -2495,6 +2513,24 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *nf=
c)
>         case SCTP_V6_FLOW:
>                 hdrs |=3D ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV6;
>                 break;
> +       case GTPU_V6_FLOW:
> +               hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV=
6;
> +               break;
> +       case GTPC_V6_FLOW:
> +               hdrs |=3D ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV6;
> +               break;
> +       case GTPC_TEID_V6_FLOW:
> +               hdrs |=3D ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_I=
PV6;
> +               break;
> +       case GTPU_EH_V6_FLOW:
> +               hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV=
6;
> +               break;
> +       case GTPU_UL_V6_FLOW:
> +               hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV=
6;
> +               break;
> +       case GTPU_DL_V6_FLOW:
> +               hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IP=
V6;
> +               break;
>         default:
>                 break;
>         }
> @@ -2518,6 +2554,12 @@ static u64 ice_parse_hash_flds(struct ethtool_rxnf=
c *nfc, bool symm)
>                 case TCP_V4_FLOW:
>                 case UDP_V4_FLOW:
>                 case SCTP_V4_FLOW:
> +               case GTPU_V4_FLOW:
> +               case GTPC_V4_FLOW:
> +               case GTPC_TEID_V4_FLOW:
> +               case GTPU_EH_V4_FLOW:
> +               case GTPU_UL_V4_FLOW:
> +               case GTPU_DL_V4_FLOW:
>                         if (nfc->data & RXH_IP_SRC)
>                                 hfld |=3D ICE_FLOW_HASH_FLD_IPV4_SA;
>                         if (nfc->data & RXH_IP_DST)
> @@ -2526,6 +2568,12 @@ static u64 ice_parse_hash_flds(struct ethtool_rxnf=
c *nfc, bool symm)
>                 case TCP_V6_FLOW:
>                 case UDP_V6_FLOW:
>                 case SCTP_V6_FLOW:
> +               case GTPU_V6_FLOW:
> +               case GTPC_V6_FLOW:
> +               case GTPC_TEID_V6_FLOW:
> +               case GTPU_EH_V6_FLOW:
> +               case GTPU_UL_V6_FLOW:
> +               case GTPU_DL_V6_FLOW:
>                         if (nfc->data & RXH_IP_SRC)
>                                 hfld |=3D ICE_FLOW_HASH_FLD_IPV6_SA;
>                         if (nfc->data & RXH_IP_DST)
> @@ -2564,6 +2612,33 @@ static u64 ice_parse_hash_flds(struct ethtool_rxnf=
c *nfc, bool symm)
>                 }
>         }
>
> +       if (nfc->data & RXH_GTP_TEID) {
> +               switch (nfc->flow_type) {
> +               case GTPC_TEID_V4_FLOW:
> +               case GTPC_TEID_V6_FLOW:
> +                       hfld |=3D ICE_FLOW_HASH_FLD_GTPC_TEID;
> +                       break;
> +               case GTPU_V4_FLOW:
> +               case GTPU_V6_FLOW:
> +                       hfld |=3D ICE_FLOW_HASH_FLD_GTPU_IP_TEID;
> +                       break;
> +               case GTPU_EH_V4_FLOW:
> +               case GTPU_EH_V6_FLOW:
> +                       hfld |=3D ICE_FLOW_HASH_FLD_GTPU_EH_TEID;
> +                       break;
> +               case GTPU_UL_V4_FLOW:
> +               case GTPU_UL_V6_FLOW:
> +                       hfld |=3D ICE_FLOW_HASH_FLD_GTPU_UP_TEID;
> +                       break;
> +               case GTPU_DL_V4_FLOW:
> +               case GTPU_DL_V6_FLOW:
> +                       hfld |=3D ICE_FLOW_HASH_FLD_GTPU_DWN_TEID;
> +                       break;
> +               default:
> +                       break;
> +               }
> +       }
> +
>         return hfld;
>  }
>
> @@ -2676,6 +2751,13 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct e=
thtool_rxnfc *nfc)
>             hash_flds & ICE_FLOW_HASH_FLD_UDP_DST_PORT ||
>             hash_flds & ICE_FLOW_HASH_FLD_SCTP_DST_PORT)
>                 nfc->data |=3D (u64)RXH_L4_B_2_3;
> +
> +       if (hash_flds & ICE_FLOW_HASH_FLD_GTPC_TEID ||
> +           hash_flds & ICE_FLOW_HASH_FLD_GTPU_IP_TEID ||
> +           hash_flds & ICE_FLOW_HASH_FLD_GTPU_EH_TEID ||
> +           hash_flds & ICE_FLOW_HASH_FLD_GTPU_UP_TEID ||
> +           hash_flds & ICE_FLOW_HASH_FLD_GTPU_DWN_TEID)
> +               nfc->data |=3D (u64)RXH_GTP_TEID;
>  }
>
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethe=
rnet/intel/ice/ice_flow.h
> index ff82915ab497..2fd2e0cb483d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flow.h
> +++ b/drivers/net/ethernet/intel/ice/ice_flow.h
> @@ -37,13 +37,13 @@
>  #define ICE_HASH_SCTP_IPV4     (ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_SCTP_=
PORT)
>  #define ICE_HASH_SCTP_IPV6     (ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_SCTP_=
PORT)
>
> -#define ICE_FLOW_HASH_GTP_TEID \
> +#define ICE_FLOW_HASH_GTP_C_TEID \
>         (BIT_ULL(ICE_FLOW_FIELD_IDX_GTPC_TEID))
>
> -#define ICE_FLOW_HASH_GTP_IPV4_TEID \
> -       (ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_TEID)
> -#define ICE_FLOW_HASH_GTP_IPV6_TEID \
> -       (ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_TEID)
> +#define ICE_FLOW_HASH_GTP_C_IPV4_TEID \
> +       (ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_C_TEID)
> +#define ICE_FLOW_HASH_GTP_C_IPV6_TEID \
> +       (ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_C_TEID)
>
>  #define ICE_FLOW_HASH_GTP_U_TEID \
>         (BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_IP_TEID))
> @@ -66,6 +66,20 @@
>         (ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_EH_TEID | \
>          ICE_FLOW_HASH_GTP_U_EH_QFI)
>
> +#define ICE_FLOW_HASH_GTP_U_UP \
> +       (BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_UP_TEID))
> +#define ICE_FLOW_HASH_GTP_U_DWN \
> +       (BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_DWN_TEID))
> +
> +#define ICE_FLOW_HASH_GTP_U_IPV4_UP \
> +       (ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_U_UP)
> +#define ICE_FLOW_HASH_GTP_U_IPV6_UP \
> +       (ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_UP)
> +#define ICE_FLOW_HASH_GTP_U_IPV4_DWN \
> +       (ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_U_DWN)
> +#define ICE_FLOW_HASH_GTP_U_IPV6_DWN \
> +       (ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_DWN)
> +
>  #define ICE_FLOW_HASH_PPPOE_SESS_ID \
>         (BIT_ULL(ICE_FLOW_FIELD_IDX_PPPOE_SESS_ID))
>
> @@ -242,6 +256,13 @@ enum ice_flow_field {
>  #define ICE_FLOW_HASH_FLD_SCTP_DST_PORT        \
>         BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT)
>
> +#define ICE_FLOW_HASH_FLD_GTPC_TEID    BIT_ULL(ICE_FLOW_FIELD_IDX_GTPC_T=
EID)
> +#define ICE_FLOW_HASH_FLD_GTPU_IP_TEID BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_I=
P_TEID)
> +#define ICE_FLOW_HASH_FLD_GTPU_EH_TEID BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_E=
H_TEID)
> +#define ICE_FLOW_HASH_FLD_GTPU_UP_TEID BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_U=
P_TEID)
> +#define ICE_FLOW_HASH_FLD_GTPU_DWN_TEID \
> +       BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_DWN_TEID)
> +
>  /* Flow headers and fields for AVF support */
>  enum ice_flow_avf_hdr_field {
>         /* Values 0 - 28 are reserved for future use */
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ether=
net/intel/ice/ice_lib.c
> index 9be724291ef8..3c4282019570 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -1618,6 +1618,25 @@ static const struct ice_rss_hash_cfg default_rss_c=
fgs[] =3D {
>          */
>         {ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4,
>                 ICE_HASH_SCTP_IPV4, ICE_RSS_OUTER_HEADERS, false},
> +       /* configure RSS for gtpc4 with input set IPv4 src/dst */
> +       {ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV4,
> +               ICE_FLOW_HASH_IPV4, ICE_RSS_OUTER_HEADERS, false},
> +       /* configure RSS for gtpc4t with input set IPv4 src/dst */
> +       {ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV4,
> +               ICE_FLOW_HASH_GTP_C_IPV4_TEID, ICE_RSS_OUTER_HEADERS, fal=
se},
> +       /* configure RSS for gtpu4 with input set IPv4 src/dst */
> +       {ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV4,
> +               ICE_FLOW_HASH_GTP_U_IPV4_TEID, ICE_RSS_OUTER_HEADERS, fal=
se},
> +       /* configure RSS for gtpu4e with input set IPv4 src/dst */
> +       {ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV4,
> +               ICE_FLOW_HASH_GTP_U_IPV4_EH, ICE_RSS_OUTER_HEADERS, false=
},
> +       /* configure RSS for gtpu4u with input set IPv4 src/dst */
> +       { ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV4,
> +               ICE_FLOW_HASH_GTP_U_IPV4_UP, ICE_RSS_OUTER_HEADERS, false=
},
> +       /* configure RSS for gtpu4d with input set IPv4 src/dst */
> +       {ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IPV4,
> +               ICE_FLOW_HASH_GTP_U_IPV4_DWN, ICE_RSS_OUTER_HEADERS, fals=
e},
> +
>         /* configure RSS for tcp6 with input set IPv6 src/dst, TCP src/ds=
t */
>         {ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6,
>                                 ICE_HASH_TCP_IPV6,  ICE_RSS_ANY_HEADERS, =
false},
> @@ -1632,6 +1651,24 @@ static const struct ice_rss_hash_cfg default_rss_c=
fgs[] =3D {
>         /* configure RSS for IPSEC ESP SPI with input set MAC_IPV4_SPI */
>         {ICE_FLOW_SEG_HDR_ESP,
>                 ICE_FLOW_HASH_ESP_SPI, ICE_RSS_OUTER_HEADERS, false},
> +       /* configure RSS for gtpc6 with input set IPv6 src/dst */
> +       {ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV6,
> +               ICE_FLOW_HASH_IPV6, ICE_RSS_OUTER_HEADERS, false},
> +       /* configure RSS for gtpc6t with input set IPv6 src/dst */
> +       {ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV6,
> +               ICE_FLOW_HASH_GTP_C_IPV6_TEID, ICE_RSS_OUTER_HEADERS, fal=
se},
> +       /* configure RSS for gtpu6 with input set IPv6 src/dst */
> +       {ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV6,
> +               ICE_FLOW_HASH_GTP_U_IPV6_TEID, ICE_RSS_OUTER_HEADERS, fal=
se},
> +       /* configure RSS for gtpu6e with input set IPv6 src/dst */
> +       {ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV6,
> +               ICE_FLOW_HASH_GTP_U_IPV6_EH, ICE_RSS_OUTER_HEADERS, false=
},
> +       /* configure RSS for gtpu6u with input set IPv6 src/dst */
> +       { ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV6,
> +               ICE_FLOW_HASH_GTP_U_IPV6_UP, ICE_RSS_OUTER_HEADERS, false=
},
> +       /* configure RSS for gtpu6d with input set IPv6 src/dst */
> +       {ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IPV6,
> +               ICE_FLOW_HASH_GTP_U_IPV6_DWN, ICE_RSS_OUTER_HEADERS, fals=
e},
>  };
>
>  /**
> --
> 2.34.1
>
