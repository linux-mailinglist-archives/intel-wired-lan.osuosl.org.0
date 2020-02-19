Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 714E016383B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2020 01:11:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1FA5E203F0;
	Wed, 19 Feb 2020 00:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UUKxIUY8ghyZ; Wed, 19 Feb 2020 00:11:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 39193204C9;
	Wed, 19 Feb 2020 00:11:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 67E281BF280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 00:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 63FBE8641F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 00:11:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H6faS3--5FmW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2020 00:11:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4960585039
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 00:11:11 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id g12so18997477ild.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 16:11:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bGlhbQrg5FUHqkwA+9SBQzgwOXaqri+7vb0xTORTrj8=;
 b=Wx38fmlSI7XpPFO9agStBtL2iXFPqs1BTERYdf13Pae9/+BVr/dBU55xsTvDyN8FlE
 aHxwHRH81/pH3+kWLqqaOgvWePSZIIo9bsbKABrTJEpP7FgqaOiV3XCAeB3ymAeWOH5N
 2KLBbcZM9AXfb04Hhto00rl0sxrIqliR9U8ho/eKZcxSkl3pktTjxttR1YCyPRmX9pxF
 7rFBxM0GTqOwRBDnPZFxo9vxaDg0riF65XZqNpAw2vO7Ngssr+2n+pHkCmhjZ8xft9QP
 SFy5+hyTKfc3jWJLjMu3yL0xorsRYfrsvlSSevK/EJ27mQYKnciLoNW9s4Nx55lZ70Y3
 gqhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bGlhbQrg5FUHqkwA+9SBQzgwOXaqri+7vb0xTORTrj8=;
 b=U62KdCPAx4mUN+JpI+d4+Zb+OaYEGvbgBx34DPl31oc4ym2CQ73jYXfDYKDqo+161i
 YmCDdPuIQguyhAMfXq+JIZqaxgNLUZdeYd9yPjy6GEUz7P9lOpbai5fQFcsSkZ3yXGaH
 CSIlSZekXjNVXBeYUy8mW+nB14XNFarew/c44TTYlVSepEUsIsEVNdYes2y6EBgeZDt1
 bQQkgvWXYGnfkxTALgnFzC3XFoYLkt1VY+bl7BhUzxnZDLq7Iu7cylplUP+EdYsq4TWX
 Q+S2i2v/40+Wn0TtuvDV3fmvi0PkVrdjY6HTZGOZUNaA23Ek6LOF+lSzP0DtdWKRdjdh
 OcvQ==
X-Gm-Message-State: APjAAAVr/uCutQzTJsXY9WcoW0tNKBtKjavj2Sae51PI+FKUfYDBqk4Z
 7C8APtWq/ggOnBQgmqGKWDaxvLiOllu26hvk7g0=
X-Google-Smtp-Source: APXvYqxjlcaAtTki7Y0njuMYkH5ep24tlIXzIQrUDf0Earcl1wzT8m16cM7gJlhLOjSzi8hmceRAWZHdm98QpxcuIDI=
X-Received: by 2002:a92:dac3:: with SMTP id o3mr22520927ilq.237.1582071070408; 
 Tue, 18 Feb 2020 16:11:10 -0800 (PST)
MIME-Version: 1.0
References: <20200218214148.1127641-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200218214148.1127641-1-jeffrey.t.kirsher@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 18 Feb 2020 16:10:59 -0800
Message-ID: <CAKgT0Ucyv5bYGpjTJuXLZhdDi-t47XXTgtEiHER7p=6b1xqc4g@mail.gmail.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Subject: Re: [Intel-wired-lan] [next-queue v3] igc: Complete to commit Add
 support for TSO
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 18, 2020 at 1:42 PM Jeff Kirsher
<jeffrey.t.kirsher@intel.com> wrote:
>
> From: Sasha Neftin <sasha.neftin@intel.com>
>
> commit f38b782dccab ("igc: Add support for TSO")
> Add option to setting transmit command (TUCMD) of the context
> descriptor based on skb_shinfo gso_type and SKB_GSO_UDP_L4 flag.
>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>

The title and description should be redone. This patch is adding
support for UDP segmentation offload. It should mention that in the
title and explain that in the commit message.

> ---
> v2: add SKB_GSO_UDP_L4 to features check and probe
> v3: patch did not apply cleanly to next-queue tree, due to other igc
>     patches that had been applied, so fixed up the patch to apply cleanly
>
>  drivers/net/ethernet/intel/igc/igc_defines.h | 1 +
>  drivers/net/ethernet/intel/igc/igc_main.c    | 6 +++++-
>  2 files changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 1b0fd2ffd08d..0746fa42ff3f 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -522,6 +522,7 @@
>  #define IGC_VLAPQF_QUEUE_MASK  0x03
>
>  #define IGC_ADVTXD_MACLEN_SHIFT                9  /* Adv ctxt desc mac len shift */
> +#define IGC_ADVTXD_TUCMD_L4T_UDP       0x00000000  /* L4 Packet TYPE of UDP */
>  #define IGC_ADVTXD_TUCMD_IPV4          0x00000400  /* IP Packet Type:1=IPv4 */
>  #define IGC_ADVTXD_TUCMD_L4T_TCP       0x00000800  /* L4 Packet Type of TCP */
>  #define IGC_ADVTXD_TUCMD_L4T_SCTP      0x00001000 /* L4 packet TYPE of SCTP */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 972c833a552b..d406aaea24af 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1232,7 +1232,8 @@ static int igc_tso(struct igc_ring *tx_ring,
>         l4.hdr = skb_checksum_start(skb);
>
>         /* ADV DTYP TUCMD MKRLOC/ISCSIHEDLEN */
> -       type_tucmd = IGC_ADVTXD_TUCMD_L4T_TCP;
> +       type_tucmd = (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_L4) ?
> +                     IGC_ADVTXD_TUCMD_L4T_UDP : IGC_ADVTXD_TUCMD_L4T_TCP;
>
>         /* initialize outer IP header fields */
>         if (ip.v4->version == 4) {
> @@ -3693,6 +3694,7 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
>         if (unlikely(mac_hdr_len > IGC_MAX_MAC_HDR_LEN))
>                 return features & ~(NETIF_F_HW_CSUM |
>                                     NETIF_F_SCTP_CRC |
> +                                   NETIF_F_GSO_UDP_L4 |
>                                     NETIF_F_HW_VLAN_CTAG_TX |
>                                     NETIF_F_TSO |
>                                     NETIF_F_TSO6);
> @@ -3701,6 +3703,7 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
>         if (unlikely(network_hdr_len >  IGC_MAX_NETWORK_HDR_LEN))
>                 return features & ~(NETIF_F_HW_CSUM |
>                                     NETIF_F_SCTP_CRC |
> +                                   NETIF_F_GSO_UDP_L4 |
>                                     NETIF_F_TSO |
>                                     NETIF_F_TSO6);
>
> @@ -4903,6 +4906,7 @@ static int igc_probe(struct pci_dev *pdev,
>         netdev->features |= NETIF_F_RXCSUM;
>         netdev->features |= NETIF_F_HW_CSUM;
>         netdev->features |= NETIF_F_SCTP_CRC;
> +       netdev->features |= NETIF_F_GSO_UDP_L4;
>
>  #define IGC_GSO_PARTIAL_FEATURES (NETIF_F_GSO_GRE | \
>                                   NETIF_F_GSO_GRE_CSUM | \
> --
> 2.24.1
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
