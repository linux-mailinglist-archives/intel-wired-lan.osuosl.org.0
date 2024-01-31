Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46597843280
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 02:07:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3741942F0D;
	Wed, 31 Jan 2024 01:07:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3741942F0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706663248;
	bh=Tz2fWLh6zVAbCqdzH0ABsW/ogaOhBDVfOcexAdGVIQ4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wzVIvkfukE+xx9TZhUXoMhflZxgmISKOaWr45E2jaGefMHFT2mkZkwBEhHf9b7bcB
	 AYd9wzlg6Vz8FDSQMuzWvun7zyrjplU4XQdMocCQ1toe+fwMVCFPGDsNAr6cDdrs4q
	 4UzE6RumwlO21lMJONM+SOSDz408snf/lQ0r4fh3O4Of3UBk6TPNxUyWPGSS4JFacg
	 9fm0McLPeTc9plHgdT0+vtgIUUOmgjhBitnrEs9J5v5MSFax8+F4phJYGV9ENHJleQ
	 cfYDexqTEADTDeU9y6NGb53mKh1Vkh2LA2Rov5KKc6cJ8lymUcVSGf8pFOHBkOJJwc
	 j8dfYXC/KdpaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CUmFlJvefP6Q; Wed, 31 Jan 2024 01:07:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 23B6F40A8F;
	Wed, 31 Jan 2024 01:07:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23B6F40A8F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 680791BF397
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 01:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C73341E9E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 01:07:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C73341E9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3njp1xK4sSIG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 01:07:18 +0000 (UTC)
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 01F0041E9C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 01:07:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01F0041E9C
Received: by mail-yb1-xb29.google.com with SMTP id
 3f1490d57ef6-dc6431e6cc5so3523075276.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 17:07:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706663237; x=1707268037;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Tz2fWLh6zVAbCqdzH0ABsW/ogaOhBDVfOcexAdGVIQ4=;
 b=tkivCu+oIdVCdgixfnl/HkrRQdzf4lu58L+pXHSse9cmsIa/zDxAGnjIn79VSRr2a4
 1DOE9D14seJDhvDI7+FW58od6y1tFzlcKdaScweeCM4EA5tw6N8brDT2wpS2GW2So7pY
 taDT1pD1XdU8T/vUpbzHSRLq7fO0r83XNEE0Ohq7ddiYyvaxgCgO/e6TwaCkPjIgziYD
 BONYSjkPFxyxoYgAA0xbyUBHDs78c9FDRGVJRO2fuXxVQHPXxjIgIcWWaN59vPrCkRCS
 lHE6e8pN4Drh5MCBqeoz3vWHJAj5JGvH/ifkcg92LKHhmo8iC0E22qOV9hlwvHhXtsx6
 6tMg==
X-Gm-Message-State: AOJu0YxJOVAiJd10MlV9Ig9P8F6fNt8X3DTHr7w0MMuS0SpBtqreCGn4
 eA9Fw9iUhDylRDiOaX1nsbOS/enlI27fpc/M4R+mwr4I/H6y2lh8kshelxT2h+gzSDDcpeH1Vfo
 Qj7LZr/91BbRTsyQm0mJnlWphMF4=
X-Google-Smtp-Source: AGHT+IGUZhB5C5g0+Bo7TNjmdb3eAibiE2/MgtsMVbjmBmrOtaFSMR4lEls4pu1UVvBOcQFhsA3UJ61QtphTESozjC4=
X-Received: by 2002:a25:7c05:0:b0:dc6:aebb:168e with SMTP id
 x5-20020a257c05000000b00dc6aebb168emr306638ybc.26.1706663236605; Tue, 30 Jan
 2024 17:07:16 -0800 (PST)
MIME-Version: 1.0
References: <20240130095307.951049-1-hayatake396@gmail.com>
 <c94f5f8d-7d88-4b60-b92f-e7f6697c08fa@linux.intel.com>
In-Reply-To: <c94f5f8d-7d88-4b60-b92f-e7f6697c08fa@linux.intel.com>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Wed, 31 Jan 2024 10:07:05 +0900
Message-ID: <CADFiAc+YU5sgyZGYkUTMsXcycT0JWsk8DVDyug0TPt+VQbtwjQ@mail.gmail.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706663237; x=1707268037; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Tz2fWLh6zVAbCqdzH0ABsW/ogaOhBDVfOcexAdGVIQ4=;
 b=Xvokm2FUiSjfsq4ka4U/pMKf9QsiCiv92YnIuhbDMUEKXu5v67UFjPBFNtaIZqk8ZR
 vs6TXSECW/CtyDf/+xxODoYf3OOSHSPTNb0aCUMELmA9iLKZsa6Wg2TFucvqolMTHrgP
 nFbu+jV0o6TwczsA/ec4blDlUrVA8QhXEQYYq6DOIykZ0ngrHxiXnAzGhiN3Ic+IaCT6
 P+m5HdInKE4ofLItaW1RMfeUIcDp1qydipumX0Kw3AuJflSaBciN2vD55cSmw5KP/xUo
 WBbZgZX/0OTwkCVS3rFPQ2mjcVKCIZeja/nVnFNoOfOM4KUZdOp9G7bRoTkxL/ha761S
 bkeg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Xvokm2FU
Subject: Re: [Intel-wired-lan] [PATCH net-next v4] ethtool: ice: Support for
 RSS settings to GTP
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

Thank you for your review :)

> Remove "her" (sorry for missing it last time).

Understood :) I will correct it in the next patch.

> This doesn't seem to be used anywhere.

The parameter definition was something I included where I was
enumerating. Indeed, it's not being used anywhere, so I will remove
it.

> All headers have two blank lines before them, so don't remove this newlin=
e.

Got it.

> Two braces above: looks like ICE_FLOW_HASH_GTP_U_IPV4_TEID and > ICE_FLOW=
_HASH_GTP_IPV4_TEID should be swapped? > Ditto, ICE_FLOW_HASH_GTP_U_IPV6_TE=
ID and ICE_FLOW_HASH_GTP_IPV6_TEID seem > to be incorrectly placed.

That's a good point!Thank you.
This was a mistake on my part.
It should be:
ICE_FLOW_HASH_GTP_U_IPV(4|6)_TEID -> ICE_FLOW_HASH_GTP_C_IPV(4|6)_TEID
(At the same time, I will change ICE_FLOW_HASH_GTP_TEID to
ICE_FLOW_HASH_GTP_C_TEID, which is clearer.)
ICE_FLOW_HASH_GTP_IPV(4|6)_TEID -> ICE_FLOW_HASH_GTP_U_IPV(4|6)_TEID

> Again, missing space before (

Sorry, I forgot to fix that. I will make sure it's corrected in the next on=
e.

Thanks,
Takeru
2024=E5=B9=B41=E6=9C=8830=E6=97=A5(=E7=81=AB) 23:41 Marcin Szycik <marcin.s=
zycik@linux.intel.com>:

>
>
>
> On 30.01.2024 10:53, Takeru Hayasaka wrote:
> > This is a patch that enables RSS functionality for GTP packets using et=
htool.
> >
> > A user can include her TEID and make RSS work for GTP-U over IPv4 by do=
ing the
>
> Remove "her" (sorry for missing it last time).
>
> > following:`ethtool -N ens3 rx-flow-hash gtpu4 sde`
> >
> > In addition to gtpu(4|6), we now support gtpc(4|6),gtpc(4|6)t,gtpu(4|6)=
e,
> > gtpu(4|6)u, and gtpu(4|6)d.
> >
> > gtpc(4|6): Used for GTP-C in IPv4 and IPv6, where the GTP header format=
 does
> > not include a TEID.
> > gtpc(4|6)t: Used for GTP-C in IPv4 and IPv6, with a GTP header format t=
hat
> > includes a TEID.
> > gtpu(4|6): Used for GTP-U in both IPv4 and IPv6 scenarios.
> > gtpu(4|6)e: Used for GTP-U with extended headers in both IPv4 and IPv6.
> > gtpu(4|6)u: Used when the PSC (PDU session container) in the GTP-U exte=
nded
> > header includes Uplink, applicable to both IPv4 and IPv6.
> > gtpu(4|6)d: Used when the PSC in the GTP-U extended header includes Dow=
nlink,
> > for both IPv4 and IPv6.
>
> I'd still add a short note here that all gtpu have TEID.
>
> > GTP generates a flow that includes an ID called TEID to identify the tu=
nnel.
> > This tunnel is created for each UE (User Equipment).By performing RSS b=
ased on
> > this flow, it is possible to apply RSS for each communication unit from=
 the UE.
> > Without this, RSS would only be effective within the range of IP addres=
ses. For
> > instance, the PGW can only perform RSS within the IP range of the SGW.
> > Problematic from a load distribution perspective, especially if there's=
 a bias
> > in the terminals connected to a particular base station.This case can b=
e
> > solved by using this patch.
> >
> > Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
> > ---
> >
> > v2->v3: Based on Harald-san's review, I added documentation and comment=
s to
> > ethtool.h and ice.rst.
> > v3->v4: Based on Marcin-san's review, I added the missing code for GTPC=
 and
> > GTPC_TEID, and revised the documentation and comments.
> >
> >
> >  .../device_drivers/ethernet/intel/ice.rst     | 23 ++++--
> >  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 82 +++++++++++++++++++
> >  drivers/net/ethernet/intel/ice/ice_flow.h     | 22 +++++
> >  drivers/net/ethernet/intel/ice/ice_lib.c      | 37 +++++++++
> >  include/uapi/linux/ethtool.h                  | 48 +++++++++++
> >  5 files changed, 207 insertions(+), 5 deletions(-)
> >
> > diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice=
.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> > index 5038e54586af..6f48688940c4 100644
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
>
> All headers have two blank lines before them, so don't remove this newlin=
e.
>
> > +    e     Hash on GTP Packet on TEID (4bytes) of the Rx packet.
> >
> >  Accelerated Receive Flow Steering (aRFS)
> >  ----------------------------------------
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net=
/ethernet/intel/ice/ice_ethtool.c
> > index a19b06f18e40..d0e05032f464 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > @@ -2486,6 +2486,24 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *=
nfc)
> >       case SCTP_V4_FLOW:
> >               hdrs |=3D ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4;
> >               break;
> > +     case GTPU_V4_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV=
4;
> > +             break;
> > +     case GTPC_V4_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV4;
> > +             break;
> > +     case GTPC_TEID_V4_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_I=
PV4;
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
> > @@ -2495,6 +2513,24 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *=
nfc)
> >       case SCTP_V6_FLOW:
> >               hdrs |=3D ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV6;
> >               break;
> > +     case GTPU_V6_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV=
6;
> > +             break;
> > +     case GTPC_V6_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV6;
> > +             break;
> > +     case GTPC_TEID_V6_FLOW:
> > +             hdrs |=3D ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_I=
PV6;
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
> > @@ -2518,6 +2554,12 @@ static u64 ice_parse_hash_flds(struct ethtool_rx=
nfc *nfc, bool symm)
> >               case TCP_V4_FLOW:
> >               case UDP_V4_FLOW:
> >               case SCTP_V4_FLOW:
> > +             case GTPU_V4_FLOW:
> > +             case GTPC_V4_FLOW:
> > +             case GTPC_TEID_V4_FLOW:
> > +             case GTPU_EH_V4_FLOW:
> > +             case GTPU_UL_V4_FLOW:
> > +             case GTPU_DL_V4_FLOW:
> >                       if (nfc->data & RXH_IP_SRC)
> >                               hfld |=3D ICE_FLOW_HASH_FLD_IPV4_SA;
> >                       if (nfc->data & RXH_IP_DST)
> > @@ -2526,6 +2568,12 @@ static u64 ice_parse_hash_flds(struct ethtool_rx=
nfc *nfc, bool symm)
> >               case TCP_V6_FLOW:
> >               case UDP_V6_FLOW:
> >               case SCTP_V6_FLOW:
> > +             case GTPU_V6_FLOW:
> > +             case GTPC_V6_FLOW:
> > +             case GTPC_TEID_V6_FLOW:
> > +             case GTPU_EH_V6_FLOW:
> > +             case GTPU_UL_V6_FLOW:
> > +             case GTPU_DL_V6_FLOW:
> >                       if (nfc->data & RXH_IP_SRC)
> >                               hfld |=3D ICE_FLOW_HASH_FLD_IPV6_SA;
> >                       if (nfc->data & RXH_IP_DST)
> > @@ -2564,6 +2612,33 @@ static u64 ice_parse_hash_flds(struct ethtool_rx=
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
> > @@ -2676,6 +2751,13 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct=
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
>
> This doesn't seem to be used anywhere.
>
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
>
> Two braces above: looks like ICE_FLOW_HASH_GTP_U_IPV4_TEID and
> ICE_FLOW_HASH_GTP_IPV4_TEID should be swapped?
>
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
>
> Ditto, ICE_FLOW_HASH_GTP_U_IPV6_TEID and ICE_FLOW_HASH_GTP_IPV6_TEID seem
> to be incorrectly placed.
>
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
> > index 06ef6b78b7de..cdc3fa7fc944 100644
> > --- a/include/uapi/linux/ethtool.h
> > +++ b/include/uapi/linux/ethtool.h
> > @@ -2023,6 +2023,53 @@ static inline int ethtool_validate_duplex(__u8 d=
uplex)
> >  #define      IPV4_FLOW       0x10    /* hash only */
> >  #define      IPV6_FLOW       0x11    /* hash only */
> >  #define      ETHER_FLOW      0x12    /* spec only (ether_spec) */
> > +
> > +/* Used for GTP-U IPv4 and IPv6.
> > + * The format of GTP packets only includes
> > + * elements such as TEID and GTP version.
> > + * It is primarily intended for data communication of the UE.
> > + */
> > +#define GTPU_V4_FLOW 0x13    /* hash only */
> > +#define GTPU_V6_FLOW 0x14    /* hash only */
> > +
> > +/* Use for GTP-C IPv4 and v6.
> > + * The format of these GTP packets does not include TEID.
> > + * Primarily expected to be used for communication
> > + * to create sessions for UE data communication,
> > + * commonly referred to as CSR (Create Session Request).
> > + */
> > +#define GTPC_V4_FLOW 0x15    /* hash only */
> > +#define GTPC_V6_FLOW 0x16    /* hash only */
> > +
> > +/* Use for GTP-C IPv4 and v6.
> > + * Unlike GTPC_V4_FLOW, the format of these GTP packets includes TEID.
> > + * After session creation, it becomes this packet.
> > + * This is mainly used for requests to realize UE handover.
> > + */
> > +#define GTPC_TEID_V4_FLOW 0x17       /* hash only */
> > +#define GTPC_TEID_V6_FLOW 0x18       /* hash only */
> > +
> > +/* Use for GTP-U and extended headers for the PDU session container(PS=
C).
>
> Again, missing space before (
>
> > + * The format of these GTP packets includes TEID and QFI.
> > + * In 5G communication using UPF (User Plane Function),
> > + * data communication with this extended header is performed.
> > + */
> > +#define GTPU_EH_V4_FLOW 0x19 /* hash only */
> > +#define GTPU_EH_V6_FLOW 0x1a /* hash only */
> > +
> > +/* Use for GTP-U IPv4 and v6 PDU session container(PSC) extended heade=
rs.
>
> Again, missing space before (
>
> > + * This differs from GTPU_EH_V(4|6)_FLOW in that it is distinguished b=
y
> > + * UL/DL included in the PSC.
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
> > +
> >  /* Flag to enable additional fields in struct ethtool_rx_flow_spec */
> >  #define      FLOW_EXT        0x80000000
> >  #define      FLOW_MAC_EXT    0x40000000
> > @@ -2037,6 +2084,7 @@ static inline int ethtool_validate_duplex(__u8 du=
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
