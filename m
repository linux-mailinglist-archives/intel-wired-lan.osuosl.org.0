Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FADA8C2905
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 19:01:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E56C2424E4;
	Fri, 10 May 2024 17:01:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zd8lecrjouQh; Fri, 10 May 2024 17:01:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6207D424EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715360494;
	bh=8HsOPUxHaBpYmZlNT890ywYtohgsUb5QMIi2B10Vcd8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kf59tqSqzaWLMz33aSQRVCTmYAdnd/ZNwD4mwY0WNyP8eojDPUyI+IZsTLkqn6SVX
	 D2iDtHQHu/yptuZBk4UvDaV3/LdLYfwFXWvPWjqd3VfbLk4xGBOQueE6x+xeCq2vg7
	 6QtFUzeD9S1MuugmvE/mynYgoKIQFjvIp+96bUaekRdTSsWBMYAyLa/tsRvQWL+fCD
	 rwnba6/NeEc8ZfWbycaFkst7/g0T4CfOsH8n/ciUao7l6gHwg+GJT/vs1DVznMFOsG
	 g9xUeo7kMjtivIr8hJop1Y8aZyB4mJtImMNIlpM3KF9wzLJ2+B5bPBEAN+JecSG9kG
	 Z8ZB2UMSCJGMg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6207D424EF;
	Fri, 10 May 2024 17:01:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3180D1BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 16:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A15161657
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 16:22:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A9NjAb3Z8eAN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 16:22:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12c; helo=mail-lf1-x12c.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 984D261652
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 984D261652
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 984D261652
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 16:22:22 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id
 2adb3069b0e04-51f4d2676d1so2366365e87.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 09:22:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715358140; x=1715962940;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8HsOPUxHaBpYmZlNT890ywYtohgsUb5QMIi2B10Vcd8=;
 b=fDeQUqqDTmR2PsYDt69DNF9JS/rGGIIxF5B+1roLrpO+6+TI8j85OtgvQTQjTUa7TI
 3Ypzs05CiTd8uTj1A/jImlD+KzQhn+09nSyGZsNwtL0J3vb8ozoSUzvOudv60CP/0mYC
 3RkC0+nMwRhAi+LapwjGZmm6cjiSfPeZmYUQCUVGDBpL+9by3VRM0+OdtGJf53RMBeAm
 c/sa9a/gJe4cc1b6Qs/LoPnmX1BL0sNhko8CNQdBUJ+uM3SLnqgaWjKhriIVAB9ifwsW
 9sRX5yqlRowY1+IcreBiALgGxmtHHDuw3WRussujRhm7CBzgznNb/iGqulfRL+oHSJH1
 /RAA==
X-Gm-Message-State: AOJu0YxgASFiAwEchuAMKOeD5M+IiXFXVWZpexotJLPjqjw+BY3+hfqt
 UB/D6CKBq1CEFBNRJXaEBLrwUSuFJaNfZFtowTFTdHRmL0P4JcmFTc5UCR0RghaQyK9IiTCUFfe
 Mk8BgclY6L5qoP0u6/lNTdKm2HFhWwKB05TE4
X-Google-Smtp-Source: AGHT+IH2KIcF78KlQb7EAGESCG2yw9jrYqThZThtmmFt4FRjxZ1BqwNQiQVQTwLloGlhLb4SduhLkIqqRmVTvsHCz2M=
X-Received: by 2002:a05:6512:388f:b0:51d:5f0b:816f with SMTP id
 2adb3069b0e04-5220fc7950dmr1953400e87.15.1715358139674; Fri, 10 May 2024
 09:22:19 -0700 (PDT)
MIME-Version: 1.0
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
 <20240510152620.2227312-9-aleksander.lobakin@intel.com>
In-Reply-To: <20240510152620.2227312-9-aleksander.lobakin@intel.com>
From: Mina Almasry <almasrymina@google.com>
Date: Fri, 10 May 2024 09:22:05 -0700
Message-ID: <CAHS8izO7agxQ6nbc=BoK5KuYd_jgVLgJTbZbmEUqarfVn300Tw@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 10 May 2024 17:01:29 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1715358140; x=1715962940; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8HsOPUxHaBpYmZlNT890ywYtohgsUb5QMIi2B10Vcd8=;
 b=1G/q38mPBt/RKJq2Luh97ZPeCBHtP3m5i25Ygg8ZNsMNtOv78+hL8OxlikXI2A7+uu
 8rbMznHDPMsel8i5QOwFs8E0t1SAQKJ3x5tV7U/XNCJflJDqgkuFII7+6VT17VsCrkA2
 FJ7sJukIOnx1+PzKW1m2oisMSgAhgZalvqWB5tzmt88AkBJgbVxtTbWwjjrFkmwICGka
 ezd1l6u8zkSvcN3KjWW4RbM7QpZ0aURkIDm/KtDZR2pNZMA57VOGsL1ZDVAaemGg6RVf
 Zn6TKJZhirAZAOIu1jKShHdxxgGECvYGlfi/HNHFCL9tkfWVrpxXonvoco6ijyfXQlQr
 bpAw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=1G/q38mP
Subject: Re: [Intel-wired-lan] [PATCH RFC iwl-next 08/12] idpf: reuse
 libeth's definitions of parsed ptype structures
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
Cc: nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 10, 2024 at 8:30=E2=80=AFAM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> idpf's in-kernel parsed ptype structure is almost identical to the one
> used in the previous Intel drivers, which means it can be converted to
> use libeth's definitions and even helpers. The only difference is that
> it doesn't use a constant table (libie), rather than one obtained from
> the device.
> Remove the driver counterpart and use libeth's helpers for hashes and
> checksums. This slightly optimizes skb fields processing due to faster
> checks. Also don't define big static array of ptypes in &idpf_vport --
> allocate them dynamically. The pointer to it is anyway cached in
> &idpf_rx_queue.
>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/Kconfig       |   1 +
>  drivers/net/ethernet/intel/idpf/idpf.h        |   2 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  88 +-----------
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   3 +
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |   1 +
>  .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 113 +++++++---------
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 125 +++++++-----------
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  69 ++++++----
>  8 files changed, 151 insertions(+), 251 deletions(-)
>
...
>   * idpf_send_get_rx_ptype_msg - Send virtchnl for ptype info
>   * @vport: virtual port data structure
> @@ -2526,7 +2541,7 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *v=
port)
>  {
>         struct virtchnl2_get_ptype_info *get_ptype_info __free(kfree) =3D=
 NULL;
>         struct virtchnl2_get_ptype_info *ptype_info __free(kfree) =3D NUL=
L;
> -       struct idpf_rx_ptype_decoded *ptype_lkup =3D vport->rx_ptype_lkup=
;
> +       struct libeth_rx_pt *ptype_lkup __free(kfree) =3D NULL;
>         int max_ptype, ptypes_recvd =3D 0, ptype_offset;
>         struct idpf_adapter *adapter =3D vport->adapter;
>         struct idpf_vc_xn_params xn_params =3D {};
> @@ -2534,12 +2549,17 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport =
*vport)
>         ssize_t reply_sz;
>         int i, j, k;
>
> +       if (vport->rx_ptype_lkup)
> +               return 0;
> +
>         if (idpf_is_queue_model_split(vport->rxq_model))
>                 max_ptype =3D IDPF_RX_MAX_PTYPE;
>         else
>                 max_ptype =3D IDPF_RX_MAX_BASE_PTYPE;
>
> -       memset(vport->rx_ptype_lkup, 0, sizeof(vport->rx_ptype_lkup));
> +       ptype_lkup =3D kcalloc(max_ptype, sizeof(*ptype_lkup), GFP_KERNEL=
);
> +       if (!ptype_lkup)
> +               return -ENOMEM;
>
>         get_ptype_info =3D kzalloc(sizeof(*get_ptype_info), GFP_KERNEL);
>         if (!get_ptype_info)
> @@ -2604,9 +2624,6 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *v=
port)
>                         else
>                                 k =3D ptype->ptype_id_8;
>
> -                       if (ptype->proto_id_count)
> -                               ptype_lkup[k].known =3D 1;
> -
>                         for (j =3D 0; j < ptype->proto_id_count; j++) {
>                                 id =3D le16_to_cpu(ptype->proto_id[j]);
>                                 switch (id) {
> @@ -2614,18 +2631,18 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport =
*vport)
>                                         if (pstate.tunnel_state =3D=3D
>                                                         IDPF_PTYPE_TUNNEL=
_IP) {
>                                                 ptype_lkup[k].tunnel_type=
 =3D
> -                                               IDPF_RX_PTYPE_TUNNEL_IP_G=
RENAT;
> +                                               LIBETH_RX_PT_TUNNEL_IP_GR=
ENAT;
>                                                 pstate.tunnel_state |=3D
>                                                 IDPF_PTYPE_TUNNEL_IP_GREN=
AT;
>                                         }
>                                         break;
>                                 case VIRTCHNL2_PROTO_HDR_MAC:
>                                         ptype_lkup[k].outer_ip =3D
> -                                               IDPF_RX_PTYPE_OUTER_L2;
> +                                               LIBETH_RX_PT_OUTER_L2;
>                                         if (pstate.tunnel_state =3D=3D
>                                                         IDPF_TUN_IP_GRE) =
{
>                                                 ptype_lkup[k].tunnel_type=
 =3D
> -                                               IDPF_RX_PTYPE_TUNNEL_IP_G=
RENAT_MAC;
> +                                               LIBETH_RX_PT_TUNNEL_IP_GR=
ENAT_MAC;
>                                                 pstate.tunnel_state |=3D
>                                                 IDPF_PTYPE_TUNNEL_IP_GREN=
AT_MAC;
>                                         }
> @@ -2652,23 +2669,23 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport =
*vport)
>                                         break;
>                                 case VIRTCHNL2_PROTO_HDR_UDP:
>                                         ptype_lkup[k].inner_prot =3D
> -                                       IDPF_RX_PTYPE_INNER_PROT_UDP;
> +                                       LIBETH_RX_PT_INNER_UDP;
>                                         break;
>                                 case VIRTCHNL2_PROTO_HDR_TCP:
>                                         ptype_lkup[k].inner_prot =3D
> -                                       IDPF_RX_PTYPE_INNER_PROT_TCP;
> +                                       LIBETH_RX_PT_INNER_TCP;
>                                         break;
>                                 case VIRTCHNL2_PROTO_HDR_SCTP:
>                                         ptype_lkup[k].inner_prot =3D
> -                                       IDPF_RX_PTYPE_INNER_PROT_SCTP;
> +                                       LIBETH_RX_PT_INNER_SCTP;
>                                         break;
>                                 case VIRTCHNL2_PROTO_HDR_ICMP:
>                                         ptype_lkup[k].inner_prot =3D
> -                                       IDPF_RX_PTYPE_INNER_PROT_ICMP;
> +                                       LIBETH_RX_PT_INNER_ICMP;
>                                         break;
>                                 case VIRTCHNL2_PROTO_HDR_PAY:
>                                         ptype_lkup[k].payload_layer =3D
> -                                               IDPF_RX_PTYPE_PAYLOAD_LAY=
ER_PAY2;
> +                                               LIBETH_RX_PT_PAYLOAD_L2;
>                                         break;
>                                 case VIRTCHNL2_PROTO_HDR_ICMPV6:
>                                 case VIRTCHNL2_PROTO_HDR_IPV6_EH:
> @@ -2722,9 +2739,13 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *=
vport)
>                                         break;
>                                 }
>                         }
> +
> +                       idpf_finalize_ptype_lookup(&ptype_lkup[k]);
>                 }
>         }
>
> +       vport->rx_ptype_lkup =3D no_free_ptr(ptype_lkup);
> +

Hi Olek,

I think you need to also patch up the early return from
idpf_send_get_rx_ptype_msg, otherwise vport->rx_ptype_lkup is not set
and I run into a later crash. Something like:

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index a0aaa849df24..80d9c09ff407 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2629,7 +2629,7 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vpo=
rt)
                        /* 0xFFFF indicates end of ptypes */
                        if (le16_to_cpu(ptype->ptype_id_10) =3D=3D
                                                        IDPF_INVALID_PTYPE_=
ID)
-                               return 0;
+                               goto done;

                        if (idpf_is_queue_model_split(vport->rxq_model))
                                k =3D le16_to_cpu(ptype->ptype_id_10);
@@ -2756,6 +2756,7 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vpo=
rt)
                }
        }

+done:
        vport->rx_ptype_lkup =3D no_free_ptr(ptype_lkup);

        return 0;

--=20
Thanks,
Mina
