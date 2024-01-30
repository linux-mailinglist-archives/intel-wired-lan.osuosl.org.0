Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A332841C0A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 07:40:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18B8060F5D;
	Tue, 30 Jan 2024 06:40:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18B8060F5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706596814;
	bh=2TiSgQVYl+6WeHdWJpsOrkNIjafm2UeYrW+RuoFAKWI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E2sKJ8hhxki0zuIScZdMSIzfFCF37gbzWMwoIyKQg0UcWEShWAUAsTyxYJIS6sEk0
	 AREGYLF7OHjCjeFFwmhIOrJPyQBiyk+eg9bioyUsaa+c0c1Zdu5rHZzaSvg0rA9mJ6
	 sb5Mia7XoYABXvXDkZoETQc1tV6GTsPZ6gUzTho159hzU+yBwvy5k+eGLPJsoUV5hA
	 Lm0TkI/675+fPE1RsI5QhQoKQAvARvukUJ6FQRl5syCjMq1IHnoFwnTPk3Mmrl/BsO
	 4kVFfqH2QSBzamyjZF/q+TpfD2FT8pNH95e2Zby4D7/S1A2m5OceE3X9Gv7sdnHIj8
	 ikl+RUmiLcrrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tehl7FWkHYO1; Tue, 30 Jan 2024 06:40:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09B3160F1F;
	Tue, 30 Jan 2024 06:40:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09B3160F1F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 155411BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 06:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E788C41827
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 06:40:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E788C41827
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jcGretCVO3ux for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 06:40:05 +0000 (UTC)
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com
 [IPv6:2607:f8b0:4864:20::b2f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09DDD41817
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 06:40:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09DDD41817
Received: by mail-yb1-xb2f.google.com with SMTP id
 3f1490d57ef6-dc6a299fa87so182929276.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 22:40:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706596803; x=1707201603;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2TiSgQVYl+6WeHdWJpsOrkNIjafm2UeYrW+RuoFAKWI=;
 b=M/p8AisB4DkwBYKHZiyXC8HbYJf8Xk9gu9NTxUju2J5/vm/UZIEpIQhG2IBVtyTFah
 879x1vpz8g2BsaFAE8t3MknikHX+5ywpXGb6U7ZHm7FXuw8JO4hCV54TVdka2ENL4/vU
 V4gQQQHmUDytfQyIqnagVuxCTv51yAm82aFn4mMKc2a0x2h3FEDpstZ1PtJfdz23pmPx
 54KeUj0YUfCs9OyP7ItdOscPPj6+XCclDFI4pDKqHTmXOeIan2kGqyToy7z4izNjk8S+
 f0+JhUYLJTD+/Xqs5QFIKUhdM456dB1do2vOozQ0Z/MCSiUGRTT390YLU3Z353nj8FxV
 N8GQ==
X-Gm-Message-State: AOJu0YzqbEu7tcKbkSVBlirMB3J7fK3vWgkUf2BHVcojKt2yoSD+65nG
 pofNcMBmjGBqELU/wDU7rnl+l1NYlmwj/XcljXRt406ZUw11PQXhBkKr3c3F+i5Fc2Ziv/JXLHD
 0vxHR7ZlRmXWBpxeDApSu9YOOgaw=
X-Google-Smtp-Source: AGHT+IEVcY1bCYTaq7+cH14tX1P+pfYMIg/1xISU6SDKr7XpLFutk/qNcYcYORcWOMzNZ2KdvM8sHV9oQKrP/ZFfZFQ=
X-Received: by 2002:a25:e301:0:b0:dc2:53b0:6353 with SMTP id
 z1-20020a25e301000000b00dc253b06353mr3375393ybd.38.1706596803254; Mon, 29 Jan
 2024 22:40:03 -0800 (PST)
MIME-Version: 1.0
References: <20240127140747.905552-1-hayatake396@gmail.com>
 <154f979e-a335-461b-b72e-5e9c54fe940c@linux.intel.com>
In-Reply-To: <154f979e-a335-461b-b72e-5e9c54fe940c@linux.intel.com>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Tue, 30 Jan 2024 15:39:52 +0900
Message-ID: <CADFiAcJShbgBLXdVgs1vK1jqDFopkRcw-se4b4h0V3Yd60xLVw@mail.gmail.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706596803; x=1707201603; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2TiSgQVYl+6WeHdWJpsOrkNIjafm2UeYrW+RuoFAKWI=;
 b=XxBqjyNHS3B+YcX6aw1xTq/WzIT4mFbMpUi1cfG6gEQTrzDEnwrAk3bSaQMAlWUGmz
 70Ti+9y6mLGsfejDySvo2K1pAMxME4qnlABPqsSof242z8tOFoZeRERrEZNxXUF+d2dE
 RVWS5vSlIhYOCy9XNkmP6ghkXIa9U7hVL2waYic9CpmqRJzRVNdIXubCQmYqYjfP0RZN
 j1vlCU/UizL9ZIly4tVZhD6dTa6gGx4211PPrUgre7+YuYVJbeZLGpTOzw0+grfWdRi8
 ShaSO7A+TadCsYUPtHClQNC2d4KV7Wl+/uIRqoqUFtDOmEXoNIaXiGJb8QAuMw/QCkgN
 +Fcg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=XxBqjyNH
Subject: Re: [Intel-wired-lan] [PATCH net-next RESENT v3] ethtool: ice:
 Support for RSS settings to GTP from ethtool
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
Cc: Jonathan Corbet <corbet@lwn.net>, vladimir.oltean@nxp.com,
 linux-doc@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 laforge@gnumonks.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Marcin-san
Thanks for your review!

> Do I understand correctly that all gtpu* include TEID? Maybe write it her=
e.
Yes, that's correct.

> It would be nice to see a link to the patch that added GTP and 'e' flag s=
upport
to ethtool itself ("ethtool: add support for rx-flow-hash gtp").
I will send you the link.
The one I sent earlier was outdated, so I've updated it to match this patch=
.
https://lore.kernel.org/netdev/20240130053742.946517-1-hayatake396@gmail.co=
m/

> gtpc(4|6) doesn't include TEID, so what is its purpose?
In GTPC communication, there is no TEID in the CSR (Create Session Request)=
.
Therefore, there are cases of GTPC that do not include TEID.

> s/TEID(4byte)/TEID (4bytes)/
> Also, I think two newlines should remain here.
I will correct the TEID notation in the next patch!

> I'm a bit confused... I thought GTPC_V4_FLOW doesn't have TEID, and
> GTPC_TEID_V4_FLOW does. So why do we set ICE_FLOW_SEG_HDR_GTPC_TEID here,=
 and
> why is GTPC_TEID_V4_FLOW missing from this switch case? It also seems to =
be
> missing from ice_parse_hash_flds().
Oh, sorry about that! It seems I accidentally included the wrong thing
during the rebase process.
I will correct it in the next patch.

> What do you mean by "from before"? The GTP* defines above?
I apologize for the unclear writing.
By "the difference from before," I specifically meant the difference
from GTPU_EH_V(4|6)_FLOW.
The PSC included in the Extension Header distinguishes between UL/DL.
By using this option, it becomes possible to process including UL/DL.

Marcin-san, thank you very much for your feedback! I will reflect your
comments in the next patch.

Takeru

2024=E5=B9=B41=E6=9C=8829=E6=97=A5(=E6=9C=88) 23:23 Marcin Szycik <marcin.s=
zycik@linux.intel.com>:

>
>
>
> On 27.01.2024 15:07, Takeru Hayasaka wrote:
> > This is a patch that enables RSS functionality for GTP packets using et=
htool.
> >
> > A user can include her TEID and make RSS work for GTP-U over IPv4 by do=
ing the following:
> > `ethtool -N ens3 rx-flow-hash gtpu4 sde`
> >
> > In addition to gtpu(4|6), we now support gtpc(4|6),gtpc(4|6)t,gtpu(4|6)=
e,gtpu(4|6)u, and gtpu(4|6)d.
> >
> > gtpc(4|6): Used for GTP-C in IPv4 and IPv6, where the GTP header format=
 does not include a TEID.
> > gtpc(4|6)t: Used for GTP-C in IPv4 and IPv6, with a GTP header format t=
hat includes a TEID.
> > gtpu(4|6): Used for GTP-U in both IPv4 and IPv6 scenarios.
> > gtpu(4|6)e: Used for GTP-U with extended headers in both IPv4 and IPv6.
> > gtpu(4|6)u: Used when the PSC (PDU session container) in the GTP-U exte=
nded header includes Uplink, applicable to both IPv4 and IPv6.
> > gtpu(4|6)d: Used when the PSC in the GTP-U extended header includes Dow=
nlink, for both IPv4 and IPv6.
>
> Do I understand correctly that all gtpu* include TEID? Maybe write it her=
e.
>
> > GTP generates a flow that includes an ID called TEID to identify the tu=
nnel. This tunnel is created for each UE (User Equipment).By performing RSS=
 based on this flow, it is possible to apply RSS for each communication uni=
t from the UE.Without this, RSS would only be effective within the range of=
 IP addresses.
> > For instance, the PGW can only perform RSS within the IP range of the S=
GW.Problematic from a load distribution perspective, especially if there's =
a bias in the terminals connected to a particular base station.This case ca=
n be solved by using this patch.
>
> It would be nice to see a link to the patch that added GTP and 'e' flag s=
upport
> to ethtool itself ("ethtool: add support for rx-flow-hash gtp").
>
> > Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
> > ---
> > (I have resent the submission after making revisions based on Paul's ad=
vice.)
> > Sorry for the delay.
> > I've been swamped with other work and fell behind.
> > Since Harald has been supportive of the basic structure in the previous=
 patch review, I've kept it largely unchanged but added some comments and d=
ocumentation.
> > I would appreciate it if you could review it again.
>
> Please wrap all text to 80 columns and add missing spaces after ',' and '=
.'.
>
> >  .../device_drivers/ethernet/intel/ice.rst     | 23 ++++--
> >  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 74 +++++++++++++++++++
> >  drivers/net/ethernet/intel/ice/ice_flow.h     | 22 ++++++
> >  drivers/net/ethernet/intel/ice/ice_lib.c      | 37 ++++++++++
> >  include/uapi/linux/ethtool.h                  | 41 ++++++++++
> >  5 files changed, 192 insertions(+), 5 deletions(-)
> >
> > diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice=
.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> > index 5038e54586af..6bc1c6f10617 100644
> > --- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> > +++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> > @@ -368,16 +368,29 @@ more options for Receive Side Scaling (RSS) hash =
byte configuration.
> >    # ethtool -N <ethX> rx-flow-hash <type> <option>
> >
> >    Where <type> is:
> > -    tcp4  signifying TCP over IPv4
> > -    udp4  signifying UDP over IPv4
> > -    tcp6  signifying TCP over IPv6
> > -    udp6  signifying UDP over IPv6
> > +    tcp4    signifying TCP over IPv4
> > +    udp4    signifying UDP over IPv4
> > +    gtpc4   signifying GTP-C over IPv4
> > +    gtpc4t  signifying GTP-C (include TEID) over IPv4
> > +    gtpu4   signifying GTP-U over IPV4
> > +    gtpu4e  signifying GTP-U and Extension Header over IPV4
> > +    gtpu4u  signifying GTP-U PSC Uplink over IPV4
> > +    gtpu4d  signifying GTP-U PSC Downlink over IPV4
> > +    tcp6    signifying TCP over IPv6
> > +    udp6    signifying UDP over IPv6
> > +    gtpc6   signifying GTP-C over IPv6
> > +    gtpc6t  signifying GTP-C (include TEID) over IPv6
> > +    gtpu6   signifying GTP-U over IPV6
> > +    gtpu6e  signifying GTP-U and Extension Header over IPV6
> > +    gtpu6u  signifying GTP-U PSC Uplink over IPV6
> > +    gtpu6d  signifying GTP-U PSC Downlink over IPV6
> > +
> >    And <option> is one or more of:
> >      s     Hash on the IP source address of the Rx packet.
> >      d     Hash on the IP destination address of the Rx packet.
> >      f     Hash on bytes 0 and 1 of the Layer 4 header of the Rx packet=
.
> >      n     Hash on bytes 2 and 3 of the Layer 4 header of the Rx packet=
.
> > -
> > +    e     Hash on GTP Packet on TEID(4byte) of the Rx packet.
>
> gtpc(4|6) doesn't include TEID, so what is its purpose?
> s/TEID(4byte)/TEID (4bytes)/
> Also, I think two newlines should remain here.
>
> >  Accelerated Receive Flow Steering (aRFS)
> >  ----------------------------------------
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net=
/ethernet/intel/ice/ice_ethtool.c
> > index a19b06f18e40..eb5f490c6127 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > @@ -2486,6 +2486,21 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *=
nfc)
> >       case SCTP_V4_FLOW:
> >               hdrs |=3D ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4;
> >               break;
> > +     case GTPU_V4_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV=
4;
> > +             break;
> > +     case GTPC_V4_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_I=
PV4;
>
> I'm a bit confused... I thought GTPC_V4_FLOW doesn't have TEID, and
> GTPC_TEID_V4_FLOW does. So why do we set ICE_FLOW_SEG_HDR_GTPC_TEID here,=
 and
> why is GTPC_TEID_V4_FLOW missing from this switch case? It also seems to =
be
> missing from ice_parse_hash_flds().
>
> > +             break;
> > +     case GTPU_EH_V4_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV=
4;
> > +             break;
> > +     case GTPU_UL_V4_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV=
4;
> > +             break;
> > +     case GTPU_DL_V4_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IP=
V4;
> > +             break;
> >       case TCP_V6_FLOW:
> >               hdrs |=3D ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6;
> >               break;
> > @@ -2495,6 +2510,21 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *=
nfc)
> >       case SCTP_V6_FLOW:
> >               hdrs |=3D ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV6;
> >               break;
> > +     case GTPU_V6_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV=
6;
> > +             break;
> > +     case GTPC_V6_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_I=
PV6;
>
> (same question for v6)
>
> > +             break;
> > +     case GTPU_EH_V6_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV=
6;
> > +             break;
> > +     case GTPU_UL_V6_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV=
6;
> > +             break;
> > +     case GTPU_DL_V6_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IP=
V6;
> > +             break;
> >       default:
> >               break;
> >       }
> > @@ -2518,6 +2548,11 @@ static u64 ice_parse_hash_flds(struct ethtool_rx=
nfc *nfc, bool symm)
> >               case TCP_V4_FLOW:
> >               case UDP_V4_FLOW:
> >               case SCTP_V4_FLOW:
> > +             case GTPU_V4_FLOW:
> > +             case GTPC_V4_FLOW:
> > +             case GTPU_EH_V4_FLOW:
> > +             case GTPU_UL_V4_FLOW:
> > +             case GTPU_DL_V4_FLOW:
> >                       if (nfc->data & RXH_IP_SRC)
> >                               hfld |=3D ICE_FLOW_HASH_FLD_IPV4_SA;
> >                       if (nfc->data & RXH_IP_DST)
> > @@ -2526,6 +2561,11 @@ static u64 ice_parse_hash_flds(struct ethtool_rx=
nfc *nfc, bool symm)
> >               case TCP_V6_FLOW:
> >               case UDP_V6_FLOW:
> >               case SCTP_V6_FLOW:
> > +             case GTPU_V6_FLOW:
> > +             case GTPC_V6_FLOW:
> > +             case GTPU_EH_V6_FLOW:
> > +             case GTPU_UL_V6_FLOW:
> > +             case GTPU_DL_V6_FLOW:
> >                       if (nfc->data & RXH_IP_SRC)
> >                               hfld |=3D ICE_FLOW_HASH_FLD_IPV6_SA;
> >                       if (nfc->data & RXH_IP_DST)
> > @@ -2564,6 +2604,33 @@ static u64 ice_parse_hash_flds(struct ethtool_rx=
nfc *nfc, bool symm)
> >               }
> >       }
> >
> > +     if (nfc->data & RXH_GTP_TEID) {
> > +             switch (nfc->flow_type) {
> > +             case GTPC_TEID_V4_FLOW:
> > +             case GTPC_TEID_V6_FLOW:
> > +                     hfld |=3D ICE_FLOW_HASH_FLD_GTPC_TEID;
> > +                     break;
> > +             case GTPU_V4_FLOW:
> > +             case GTPU_V6_FLOW:
> > +                     hfld |=3D ICE_FLOW_HASH_FLD_GTPU_IP_TEID;
> > +                     break;
> > +             case GTPU_EH_V4_FLOW:
> > +             case GTPU_EH_V6_FLOW:
> > +                     hfld |=3D ICE_FLOW_HASH_FLD_GTPU_EH_TEID;
> > +                     break;
> > +             case GTPU_UL_V4_FLOW:
> > +             case GTPU_UL_V6_FLOW:
> > +                     hfld |=3D ICE_FLOW_HASH_FLD_GTPU_UP_TEID;
> > +                     break;
> > +             case GTPU_DL_V4_FLOW:
> > +             case GTPU_DL_V6_FLOW:
> > +                     hfld |=3D ICE_FLOW_HASH_FLD_GTPU_DWN_TEID;
> > +                     break;
> > +             default:
> > +                     break;
> > +             }
> > +     }
> > +
> >       return hfld;
> >  }
> >
> > @@ -2676,6 +2743,13 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct=
 ethtool_rxnfc *nfc)
> >           hash_flds & ICE_FLOW_HASH_FLD_UDP_DST_PORT ||
> >           hash_flds & ICE_FLOW_HASH_FLD_SCTP_DST_PORT)
> >               nfc->data |=3D (u64)RXH_L4_B_2_3;
> > +
> > +     if (hash_flds & ICE_FLOW_HASH_FLD_GTPC_TEID ||
> > +         hash_flds & ICE_FLOW_HASH_FLD_GTPU_IP_TEID ||
> > +         hash_flds & ICE_FLOW_HASH_FLD_GTPU_EH_TEID ||
> > +         hash_flds & ICE_FLOW_HASH_FLD_GTPU_UP_TEID ||
> > +         hash_flds & ICE_FLOW_HASH_FLD_GTPU_DWN_TEID)
> > +             nfc->data |=3D (u64)RXH_GTP_TEID;
> >  }
> >
> >  /**
> > diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/et=
hernet/intel/ice/ice_flow.h
> > index ff82915ab497..9d6803d68a45 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_flow.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_flow.h
> > @@ -66,6 +66,20 @@
> >       (ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_EH_TEID | \
> >        ICE_FLOW_HASH_GTP_U_EH_QFI)
> >
> > +#define ICE_FLOW_HASH_GTP_U_UP \
> > +     (BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_UP_TEID))
> > +#define ICE_FLOW_HASH_GTP_U_DWN \
> > +     (BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_DWN_TEID))
> > +
> > +#define ICE_FLOW_HASH_GTP_U_IPV4_UP \
> > +     (ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_U_UP)
> > +#define ICE_FLOW_HASH_GTP_U_IPV6_UP \
> > +     (ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_UP)
> > +#define ICE_FLOW_HASH_GTP_U_IPV4_DWN \
> > +     (ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_U_DWN)
> > +#define ICE_FLOW_HASH_GTP_U_IPV6_DWN \
> > +     (ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_DWN)
> > +
> >  #define ICE_FLOW_HASH_PPPOE_SESS_ID \
> >       (BIT_ULL(ICE_FLOW_FIELD_IDX_PPPOE_SESS_ID))
> >
> > @@ -242,6 +256,14 @@ enum ice_flow_field {
> >  #define ICE_FLOW_HASH_FLD_SCTP_DST_PORT      \
> >       BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT)
> >
> > +#define ICE_FLOW_HASH_FLD_GTPC_TEID  BIT_ULL(ICE_FLOW_FIELD_IDX_GTPC_T=
EID)
> > +#define ICE_FLOW_HASH_FLD_GTPU_IP_TEID BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU=
_IP_TEID)
> > +#define ICE_FLOW_HASH_FLD_GTPU_EH_TEID BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU=
_EH_TEID)
> > +#define ICE_FLOW_HASH_FLD_GTPU_EH_QFI BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_=
EH_QFI)
> > +#define ICE_FLOW_HASH_FLD_GTPU_UP_TEID BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU=
_UP_TEID)
> > +#define ICE_FLOW_HASH_FLD_GTPU_DWN_TEID \
> > +     BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_DWN_TEID)
> > +
> >  /* Flow headers and fields for AVF support */
> >  enum ice_flow_avf_hdr_field {
> >       /* Values 0 - 28 are reserved for future use */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/eth=
ernet/intel/ice/ice_lib.c
> > index 9be724291ef8..72f737c6c9ba 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -1618,6 +1618,25 @@ static const struct ice_rss_hash_cfg default_rss=
_cfgs[] =3D {
> >        */
> >       {ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4,
> >               ICE_HASH_SCTP_IPV4, ICE_RSS_OUTER_HEADERS, false},
> > +     /* configure RSS for gtpc4 with input set IPv4 src/dst */
> > +     {ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV4,
> > +             ICE_FLOW_HASH_IPV4, ICE_RSS_OUTER_HEADERS, false},
> > +     /* configure RSS for gtpc4t with input set IPv4 src/dst */
> > +     {ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV4,
> > +             ICE_FLOW_HASH_GTP_U_IPV4_TEID, ICE_RSS_OUTER_HEADERS, fal=
se},
> > +     /* configure RSS for gtpu4 with input set IPv4 src/dst */
> > +     {ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV4,
> > +             ICE_FLOW_HASH_GTP_IPV4_TEID, ICE_RSS_OUTER_HEADERS, false=
},
> > +     /* configure RSS for gtpu4e with input set IPv4 src/dst */
> > +     {ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV4,
> > +             ICE_FLOW_HASH_GTP_U_IPV4_EH, ICE_RSS_OUTER_HEADERS, false=
},
> > +     /* configure RSS for gtpu4u with input set IPv4 src/dst */
> > +     { ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV4,
> > +             ICE_FLOW_HASH_GTP_U_IPV4_UP, ICE_RSS_OUTER_HEADERS, false=
},
> > +     /* configure RSS for gtpu4d with input set IPv4 src/dst */
> > +     {ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IPV4,
> > +             ICE_FLOW_HASH_GTP_U_IPV4_DWN, ICE_RSS_OUTER_HEADERS, fals=
e},
> > +
> >       /* configure RSS for tcp6 with input set IPv6 src/dst, TCP src/ds=
t */
> >       {ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6,
> >                               ICE_HASH_TCP_IPV6,  ICE_RSS_ANY_HEADERS, =
false},
> > @@ -1632,6 +1651,24 @@ static const struct ice_rss_hash_cfg default_rss=
_cfgs[] =3D {
> >       /* configure RSS for IPSEC ESP SPI with input set MAC_IPV4_SPI */
> >       {ICE_FLOW_SEG_HDR_ESP,
> >               ICE_FLOW_HASH_ESP_SPI, ICE_RSS_OUTER_HEADERS, false},
> > +     /* configure RSS for gtpc6 with input set IPv6 src/dst */
> > +     {ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV6,
> > +             ICE_FLOW_HASH_IPV6, ICE_RSS_OUTER_HEADERS, false},
> > +     /* configure RSS for gtpc6t with input set IPv6 src/dst */
> > +     {ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV6,
> > +             ICE_FLOW_HASH_GTP_U_IPV6_TEID, ICE_RSS_OUTER_HEADERS, fal=
se},
> > +     /* configure RSS for gtpu6 with input set IPv6 src/dst */
> > +     {ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV6,
> > +             ICE_FLOW_HASH_GTP_IPV6_TEID, ICE_RSS_OUTER_HEADERS, false=
},
> > +     /* configure RSS for gtpu6e with input set IPv6 src/dst */
> > +     {ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV6,
> > +             ICE_FLOW_HASH_GTP_U_IPV6_EH, ICE_RSS_OUTER_HEADERS, false=
},
> > +     /* configure RSS for gtpu6u with input set IPv6 src/dst */
> > +     { ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV6,
> > +             ICE_FLOW_HASH_GTP_U_IPV6_UP, ICE_RSS_OUTER_HEADERS, false=
},
> > +     /* configure RSS for gtpu6d with input set IPv6 src/dst */
> > +     {ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IPV6,
> > +             ICE_FLOW_HASH_GTP_U_IPV6_DWN, ICE_RSS_OUTER_HEADERS, fals=
e},
> >  };
> >
> >  /**
> > diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.=
h
> > index 06ef6b78b7de..b3d67f3aa948 100644
> > --- a/include/uapi/linux/ethtool.h
> > +++ b/include/uapi/linux/ethtool.h
> > @@ -2023,6 +2023,46 @@ static inline int ethtool_validate_duplex(__u8 d=
uplex)
> >  #define      IPV4_FLOW       0x10    /* hash only */
> >  #define      IPV6_FLOW       0x11    /* hash only */
> >  #define      ETHER_FLOW      0x12    /* spec only (ether_spec) */
> > +/* Used for GTP-U IPv4 and IPv6.
> > + * The format of GTP packets only includes
> > + * elements such as TEID and GTP version.
> > + * It is primarily intended for data communication of the UE.
> > + */
>
> Maybe add newlines before these comment blocks for better readability.
>
> > +#define GTPU_V4_FLOW 0x13    /* hash only */
> > +#define GTPU_V6_FLOW 0x14    /* hash only */
> > +/* Use for GTP-C IPv4 and v6.
> > + * The format of these GTP packets does not include TEID.
> > + * Primarily expected to be used for communication
> > + * to create sessions for UE data communication,
> > + * commonly referred to as CSR (Create Session Request).
> > + */
> > +#define GTPC_V4_FLOW 0x15    /* hash only */
> > +#define GTPC_V6_FLOW 0x16    /* hash only */
> > +/* Use for GTP-C IPv4 and v6.
> > + * Unlike GTPC_V4_FLOW, the format of these GTP packets includes TEID.
> > + * After session creation, it becomes this packet.
> > + * This is mainly used for requests to realize UE handover.
> > + */
> > +#define GTPC_TEID_V4_FLOW 0x17       /* hash only */
> > +#define GTPC_TEID_V6_FLOW 0x18       /* hash only */
> > +/* Use for GTP-U and extended headers for the PDU session container(PS=
C).
>
> Missing space before (
>
> > + * The format of these GTP packets includes TEID and QFI.
> > + * In 5G communication using UPF (User Plane Function),
> > + * data communication with this extended header is performed.
> > + */
> > +#define GTPU_EH_V4_FLOW 0x19 /* hash only */
> > +#define GTPU_EH_V6_FLOW 0x1a /* hash only */
> > +/* Use for GTP-U IPv4 and v6 PDU session container(PSC) extended heade=
rs.
>
> Missing space before (
>
> > + * The difference from before is distinguishing based on the PSC.
>
> What do you mean by "from before"? The GTP* defines above?
>
> > + * There are differences in the data included based on Downlink/Uplink=
,
> > + * and can be used to distinguish packets.
> > + * The functions described so far are useful when you want to
> > + * handle communication from the mobile network in UPF, PGW, etc.
> > + */
> > +#define GTPU_UL_V4_FLOW 0x1b /* hash only */
> > +#define GTPU_UL_V6_FLOW 0x1c /* hash only */
> > +#define GTPU_DL_V4_FLOW 0x1d /* hash only */
> > +#define GTPU_DL_V6_FLOW 0x1e /* hash only */
> >  /* Flag to enable additional fields in struct ethtool_rx_flow_spec */
> >  #define      FLOW_EXT        0x80000000
> >  #define      FLOW_MAC_EXT    0x40000000
> > @@ -2037,6 +2077,7 @@ static inline int ethtool_validate_duplex(__u8 du=
plex)
> >  #define      RXH_IP_DST      (1 << 5)
> >  #define      RXH_L4_B_0_1    (1 << 6) /* src port in case of TCP/UDP/S=
CTP */
> >  #define      RXH_L4_B_2_3    (1 << 7) /* dst port in case of TCP/UDP/S=
CTP */
> > +#define      RXH_GTP_TEID    (1 << 8) /* teid in case of GTP */
> >  #define      RXH_DISCARD     (1 << 31)
> >
> >  #define      RX_CLS_FLOW_DISC        0xffffffffffffffffULL
>
> Thanks,
> Marcin
