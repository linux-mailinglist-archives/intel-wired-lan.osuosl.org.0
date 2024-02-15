Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E47A1855CBF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 09:44:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87AF2819C8;
	Thu, 15 Feb 2024 08:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jaxzwhJ9DsAk; Thu, 15 Feb 2024 08:44:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8163681754
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707986680;
	bh=O5r7xNJzxDUVOsbXK9XgQNpV+8ENxUZtBQk8JzTa8JU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DF0aJ0VNxytDvtRzDQ3D+owJZLIWVGJFLdXgrQsZ44j4CGaLVoG46381BpkNgC6o/
	 NjN5tprHAxh7DO8iHdUk9NVBBYkpYdrKSwx5mZD8RpfA4g2Tjr5e914lm85UnpXG1o
	 9mnT/sCRgDdSrMnAprdeJ1xErqUzZLO5vCyd5Mz9U1BnUjbu+XRKO1B0krYBk3pyFz
	 sqZ6LUT9myrGVyY3YoFYstsstT83GKkb82TUe53gY0xg/jnTYIoujonE5qPQ3AAeAp
	 f79gnL7f34f6mz0Mj1BfHfjAGAgHzb1W1ywI3C2OkTbhJ14tJ07s5uj2Udu8jX+kL2
	 6UAU3BQSGeMOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8163681754;
	Thu, 15 Feb 2024 08:44:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 879B01BF34A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 08:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 806AA81570
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 08:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Si8AW2c64Mmp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Feb 2024 08:44:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b32; helo=mail-yb1-xb32.google.com;
 envelope-from=hayatake396@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 93FF3814B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93FF3814B5
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com
 [IPv6:2607:f8b0:4864:20::b32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 93FF3814B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 08:44:37 +0000 (UTC)
Received: by mail-yb1-xb32.google.com with SMTP id
 3f1490d57ef6-dc25e12cc63so1468267276.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 00:44:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707986676; x=1708591476;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=O5r7xNJzxDUVOsbXK9XgQNpV+8ENxUZtBQk8JzTa8JU=;
 b=f1eMKtJpy4oz0z/9uKgJWhTe+txXbJDstW87uPUvvLojMOZMCKtPzYAyY6QpNSpZ1L
 KClezIXFecLQoS8XxAu4sNeq5LgfLgSd+OOFgXWfcmqD/X9zfNKNvovGW4RT1HbyNm9/
 sQ88Y9UcQ2kkNMvfhn+Ec7r9YhNBCB52ZjwKZo2zlSy9Ika0s6sNSdxj7fRYzphJnpJh
 SU1mXO7ciK9ytbSrSutOZ0CSWbbPyqk3cn0mGDLmegxq5g5OI3oWT3Tdf3TyJgU1Azpz
 WBB0TWjV4b7CQMhdRaNoPZit6exhhOaR3mOk0Q8aEil0rN0H9H9AldBIVi1VwClVGgL2
 X01w==
X-Gm-Message-State: AOJu0YxAAA/t6+enUxJrgZ8d4u39rC+QMSoOYC5euVGzjTFvKMecVhvp
 tlB7s7TzwXel00ecvDtKycloOI9A7hllGZQiMYyTnXwgoRg8h6djKhl6MvuEEjWhTl2w/T4i+kT
 NZ3snZeM9ChIvSx+86l++afmKubo=
X-Google-Smtp-Source: AGHT+IEtm0sD8Sa0+addF9hJdQbBx2EE5vGepBc/VO3KXvtQBeHYOLXKqAZz27lWtICIkz3g/nrddVB2TlYbAM11kPk=
X-Received: by 2002:a25:2983:0:b0:dc6:d1a9:d858 with SMTP id
 p125-20020a252983000000b00dc6d1a9d858mr826027ybp.8.1707986676022; Thu, 15 Feb
 2024 00:44:36 -0800 (PST)
MIME-Version: 1.0
References: <20240212020403.1639030-1-hayatake396@gmail.com>
In-Reply-To: <20240212020403.1639030-1-hayatake396@gmail.com>
From: Takeru Hayasaka <hayatake396@gmail.com>
Date: Thu, 15 Feb 2024 17:44:25 +0900
Message-ID: <CADFiAcL+2vVUHWcWS_o3Oxk67tuZeNk8+8ygjGGKK3smop595A@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707986676; x=1708591476; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=O5r7xNJzxDUVOsbXK9XgQNpV+8ENxUZtBQk8JzTa8JU=;
 b=D93Uyti4gmKzQv2mr9HW/jt4bkuGg/f6BAHbIGZmuycr/I/h7RooSr/dlCC4zsTLiQ
 jb5g3QUsK9CLBj6bpw0ScwAZ4mEmxvSH14l4YjMznVG9J85rLwW3lEfGAJYTFT/TWhWP
 +a4I2eTtqt+NdJk8YPrtRuWuyHrQnd12rCOt2B4yM/Ge9WDdJalcfgHzoVq6wJY9IK4d
 eBgcHXCgfRALCaleQvbTG1+M+ooIDytgEnk1QioTAKDMzfIRPNu9vYg0A5M8rPW0+0+X
 wcLwrO7DpmQtrJcBNC2aFLtRw5HU9JuNcOSkilzXjSCFwNvjSfedvgJAyFjaTKnX0e6b
 DgRw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=D93Uyti4
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 1/2] ethtool: Add GTP RSS
 hash options to ethtool.h
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
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jakub-san

As previously advised, the patch has been divided.
I apologize for the inconvenience, but I would appreciate it if you
could take the time to review the patch.
I understand you may be busy, but your confirmation would be greatly
appreciated.

Thanks
Takeru

2024=E5=B9=B42=E6=9C=8812=E6=97=A5(=E6=9C=88) 11:04 Takeru Hayasaka <hayata=
ke396@gmail.com>:
>
> This is a patch that enables RSS functionality for GTP packets using etht=
ool.
>
> A user can include TEID and make RSS work for GTP-U over IPv4 by doing th=
e
> following:`ethtool -N ens3 rx-flow-hash gtpu4 sde`
>
> In addition to gtpu(4|6), we now support gtpc(4|6),gtpc(4|6)t,gtpu(4|6)e,
> gtpu(4|6)u, and gtpu(4|6)d.
>
> gtpc(4|6): Used for GTP-C in IPv4 and IPv6, where the GTP header format d=
oes
> not include a TEID.
> gtpc(4|6)t: Used for GTP-C in IPv4 and IPv6, with a GTP header format tha=
t
> includes a TEID.
> gtpu(4|6): Used for GTP-U in both IPv4 and IPv6 scenarios.
> gtpu(4|6)e: Used for GTP-U with extended headers in both IPv4 and IPv6.
> gtpu(4|6)u: Used when the PSC (PDU session container) in the GTP-U extend=
ed
> header includes Uplink, applicable to both IPv4 and IPv6.
> gtpu(4|6)d: Used when the PSC in the GTP-U extended header includes Downl=
ink,
> for both IPv4 and IPv6.
>
> GTP generates a flow that includes an ID called TEID to identify the tunn=
el.
> This tunnel is created for each UE (User Equipment).By performing RSS bas=
ed on
> this flow, it is possible to apply RSS for each communication unit from t=
he UE.
> Without this, RSS would only be effective within the range of IP addresse=
s. For
> instance, the PGW can only perform RSS within the IP range of the SGW.
> Problematic from a load distribution perspective, especially if there's a=
 bias
> in the terminals connected to a particular base station.This case can be
> solved by using this patch.
>
> Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v2->v3: Based on Harald-san's review, I added documentation and comments =
to
> ethtool.h and ice.rst.
> v3->v4: Based on Marcin-san's review, I added the missing code for GTPC a=
nd
> GTPC_TEID, and revised the documentation and comments.
> v4->v5: Based on Marcin-san's review, I fixed rename and wrong code regar=
ding
> GTPC
> v5->v6: Based on Marcin-san's review, Undoing the addition of unnecessary
> blank lines.Minor fixes.
> v6->v7 Based on Jakub-san's review, Split the patch.
> v7->v8: There are no code changes. I've resent the patch, including Marci=
n-san's
> patch, because PatchWork did not interpret the patch correctly.Simon-san =
told
> me. Thanks.
>  include/uapi/linux/ethtool.h | 48 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
>
> diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
> index 06ef6b78b7de..11fc18988bc2 100644
> --- a/include/uapi/linux/ethtool.h
> +++ b/include/uapi/linux/ethtool.h
> @@ -2023,6 +2023,53 @@ static inline int ethtool_validate_duplex(__u8 dup=
lex)
>  #define        IPV4_FLOW       0x10    /* hash only */
>  #define        IPV6_FLOW       0x11    /* hash only */
>  #define        ETHER_FLOW      0x12    /* spec only (ether_spec) */
> +
> +/* Used for GTP-U IPv4 and IPv6.
> + * The format of GTP packets only includes
> + * elements such as TEID and GTP version.
> + * It is primarily intended for data communication of the UE.
> + */
> +#define GTPU_V4_FLOW 0x13      /* hash only */
> +#define GTPU_V6_FLOW 0x14      /* hash only */
> +
> +/* Use for GTP-C IPv4 and v6.
> + * The format of these GTP packets does not include TEID.
> + * Primarily expected to be used for communication
> + * to create sessions for UE data communication,
> + * commonly referred to as CSR (Create Session Request).
> + */
> +#define GTPC_V4_FLOW 0x15      /* hash only */
> +#define GTPC_V6_FLOW 0x16      /* hash only */
> +
> +/* Use for GTP-C IPv4 and v6.
> + * Unlike GTPC_V4_FLOW, the format of these GTP packets includes TEID.
> + * After session creation, it becomes this packet.
> + * This is mainly used for requests to realize UE handover.
> + */
> +#define GTPC_TEID_V4_FLOW 0x17 /* hash only */
> +#define GTPC_TEID_V6_FLOW 0x18 /* hash only */
> +
> +/* Use for GTP-U and extended headers for the PSC (PDU Session Container=
).
> + * The format of these GTP packets includes TEID and QFI.
> + * In 5G communication using UPF (User Plane Function),
> + * data communication with this extended header is performed.
> + */
> +#define GTPU_EH_V4_FLOW 0x19   /* hash only */
> +#define GTPU_EH_V6_FLOW 0x1a   /* hash only */
> +
> +/* Use for GTP-U IPv4 and v6 PSC (PDU Session Container) extended header=
s.
> + * This differs from GTPU_EH_V(4|6)_FLOW in that it is distinguished by
> + * UL/DL included in the PSC.
> + * There are differences in the data included based on Downlink/Uplink,
> + * and can be used to distinguish packets.
> + * The functions described so far are useful when you want to
> + * handle communication from the mobile network in UPF, PGW, etc.
> + */
> +#define GTPU_UL_V4_FLOW 0x1b   /* hash only */
> +#define GTPU_UL_V6_FLOW 0x1c   /* hash only */
> +#define GTPU_DL_V4_FLOW 0x1d   /* hash only */
> +#define GTPU_DL_V6_FLOW 0x1e   /* hash only */
> +
>  /* Flag to enable additional fields in struct ethtool_rx_flow_spec */
>  #define        FLOW_EXT        0x80000000
>  #define        FLOW_MAC_EXT    0x40000000
> @@ -2037,6 +2084,7 @@ static inline int ethtool_validate_duplex(__u8 dupl=
ex)
>  #define        RXH_IP_DST      (1 << 5)
>  #define        RXH_L4_B_0_1    (1 << 6) /* src port in case of TCP/UDP/S=
CTP */
>  #define        RXH_L4_B_2_3    (1 << 7) /* dst port in case of TCP/UDP/S=
CTP */
> +#define        RXH_GTP_TEID    (1 << 8) /* teid in case of GTP */
>  #define        RXH_DISCARD     (1 << 31)
>
>  #define        RX_CLS_FLOW_DISC        0xffffffffffffffffULL
> --
> 2.34.1
>
