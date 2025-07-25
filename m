Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E67FB11BC0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 12:09:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F95D41B9A;
	Fri, 25 Jul 2025 10:09:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kHNIp8-v9Qei; Fri, 25 Jul 2025 10:09:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 709E941B9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753438189;
	bh=qwcA7KaLuWYtPonBTfmTLOODFtpn/AAVVGlX14czsrM=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LXKPYp0s4ScvXP8WmegEUe+oGCfBJSXHAF4EGhO+P4TE//vmxNUd/ExqhTIr81qu+
	 tkPzvhymzU9gXGM/Wu9qRYf6FhdPxdw/oPaWzXTopgOLY5NNw5br9Kq5OGQlWxq6ZQ
	 ErxluFtoWacl5+EnZhPERrjwdA6tckIoV0xMIPUd38BYT8obN4lA/RaZJVQVufAa0q
	 QY6Ds3S3ebjp1O3MNAgjhWjWsShJFc8YJHkFfRxNNDFqG7mRHAhNPNiPJSkaeNR6a1
	 jJsr1jKOE6C+iO19iJajS+yuG5A2OP1ExPtltswNoj7vtrd9AEuRfsu/QJTi8fQyJp
	 +fBd0PPhlup7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 709E941B9E;
	Fri, 25 Jul 2025 10:09:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BA29C909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 10:09:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A86A6608CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 10:09:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WdhznzPudmio for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 10:09:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::12c; helo=mail-il1-x12c.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 06F06608BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06F06608BA
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com
 [IPv6:2607:f8b0:4864:20::12c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 06F06608BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 10:09:46 +0000 (UTC)
Received: by mail-il1-x12c.google.com with SMTP id
 e9e14a558f8ab-3e28be470f1so9086475ab.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 03:09:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753438186; x=1754042986;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qwcA7KaLuWYtPonBTfmTLOODFtpn/AAVVGlX14czsrM=;
 b=CW/bpM8o7/ROQfVK7NELxCCSSkjePkCXH12jOmZ7CFCC6kDT7PEbPkn48d21MD1FLE
 MssG4Hfx6eDzQv9s5ItDSGy22tgaBb253R1/YBFh5PWjIhiiOgl8rojSK0kP55ziNuBL
 LPlhkWO8Z1sMLTORytFq+JRiCKkinGgxnRVqaViXhiKMg91MO22Ooe592ejth3GvBglq
 lt9Rt+MhwZ2rxHpQy2zwsPkmVpoJBW9XKoEWhLoKWzHVFih5uQmKE9dcUgT9GAGNMA3+
 KPz+t30VyTgHIGFD7uYPgN+85ihO/zs3bH5eUuJX3iv2z1ECCF7IS3X6LE8TL4Wi0iZ1
 EwKA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVuHKURs3rSTU8fC5GrTTnvV3q4SSpy31gl5Oxlh/GNMFQl4fhKr9euveoVfYA5RDmg6Bog/xxzr+4v+d/rzyA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwBi7XjkZ+tjZ9LnzAXQQ9EMALzAi4aWAsx7/8/yoR9+ZL4hylf
 ZYs1EKjTdIwaixMzh6F3CwDhNKbFF2bDOSbUxnYBZPGQmVWNITNiClqZaOEImKy9G85Ag0git/V
 Hhz8Cc4ajJ7yXHsxlFS/3QE/XlSk0wQ4=
X-Gm-Gg: ASbGncu3YKWxlc2O5qdVM9SQO8Akm2qPt/WkJgK6sYO9qsykpW6pMinBs/gnFIBp8a6
 Fxy52UfpkhH12jnxXxjWjVnsix1Td9CbHVl1yZOHybyygWX3tJs0XNs9PN1Qo/d62TVx7vwL3rs
 ZFvOXZKKnE3vviOrFBaOzL+LFDjljtevY7fnDIk8zTfZK57Fk87oCP+kuea1sto7xV3zFYea8cS
 KTqWg==
X-Google-Smtp-Source: AGHT+IEO0oRKiqmhVxDLCyoaq6Ckc1LJb5SgD4c4cIiWyvJUUmxzm3g9+54zDbqRqx1SnUgOWUNKLXrgb4uvclj5GvY=
X-Received: by 2002:a05:6e02:268a:b0:3e2:c21d:ea12 with SMTP id
 e9e14a558f8ab-3e3c469e087mr21637465ab.7.1753438185698; Fri, 25 Jul 2025
 03:09:45 -0700 (PDT)
MIME-Version: 1.0
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
 <20250720091123.474-6-kerneljasonxing@gmail.com> <aINVrP8vrxIkxhZr@boxer>
In-Reply-To: <aINVrP8vrxIkxhZr@boxer>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Fri, 25 Jul 2025 18:09:09 +0800
X-Gm-Features: Ac12FXxgQxWQ7KsFDT7kDoQDgYCj29bZVUsJjFV_BB_qO-IFkjocCpGIJmW1Hvo
Message-ID: <CAL+tcoD0W2owb211ZAO7M3qWU=EFGx+S9O7GNKidj0+oowfpdw@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org, 
 magnus.karlsson@intel.com, jonathan.lemon@gmail.com, sdf@fomichev.me, 
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org, 
 john.fastabend@gmail.com, bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753438186; x=1754042986; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qwcA7KaLuWYtPonBTfmTLOODFtpn/AAVVGlX14czsrM=;
 b=CDLD2CykvGx90ML8MLcqPXxVXvtXoYZTNkYV+x/RDXuHQRTvMDjJRA1TeaEffkZpd9
 m7ycBWOhZjT1VUuF6c8N3sKjjwJe10pXVobWxSif7uge+ytSW+G16cbOtbr//qtuBVOs
 zExlq2oUzDqW/dTaLsxaynz2QR4JNuAGniJbR0TLXVS7r5NENJu6CdfOBXqKHUj8m9hZ
 bsbs0Fosil+BY7ZyLrzt2d7F8YFF0wf1uo0Q54qg7Ad1Bo55IoRbm8NptPEmLmIfrgbl
 /e/virGYX1paYPtaOYjPhdZC1IvG2MgiOzCSl0KSy8YNA0T/hKHKMBeGCNznLJKmIDaZ
 2KyA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=CDLD2Cyk
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/5] ixgbe: xsk: add TX
 multi-buffer support
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

Hi Maciej,

On Fri, Jul 25, 2025 at 6:00=E2=80=AFPM Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> On Sun, Jul 20, 2025 at 05:11:23PM +0800, Jason Xing wrote:
> > From: Jason Xing <kernelxing@tencent.com>
> >
> > Use the common interface to see if the desc is the end of packets. If
> > so, set IXGBE_TXD_CMD_EOP bit instead of setting for all preceding
> > descriptors. This is also how i40e driver did in commit a92b96c4ae10
> > ("i40e: xsk: add TX multi-buffer support").
> >
> > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++++
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 4 +++-
> >  2 files changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/ne=
t/ethernet/intel/ixgbe/ixgbe_main.c
> > index a59fd8f74b5e..c34737065f9e 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > @@ -52,6 +52,8 @@
> >  #include "ixgbe_txrx_common.h"
> >  #include "devlink/devlink.h"
> >
> > +#define IXGBE_MAX_BUFFER_TXD 4
> > +
> >  char ixgbe_driver_name[] =3D "ixgbe";
> >  static const char ixgbe_driver_string[] =3D
> >                             "Intel(R) 10 Gigabit PCI Express Network Dr=
iver";
> > @@ -11805,6 +11807,8 @@ static int ixgbe_probe(struct pci_dev *pdev, co=
nst struct pci_device_id *ent)
> >       netdev->xdp_features =3D NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_RE=
DIRECT |
> >                              NETDEV_XDP_ACT_XSK_ZEROCOPY;
> >
> > +     netdev->xdp_zc_max_segs =3D IXGBE_MAX_BUFFER_TXD;
>
> Hi Jason,
>
> nack to this as you would allow fragmented frames on Rx side which is not
> supported even with your patchset.

I'm not sure about this one, to be honest when I observed no
performance impact with this patch. How could we support the idea of
this patch, I wonder? Do we need to correspondingly adjust the
hardware? Sorry that I wasn't able to find such information in the
datasheet :(

>
> Generally ixgbe needs some love, i have several patches in my backlog plu=
s
> I think Larysa will be focusing on this driver.

Though ixgbe is an old driver, we still have thousands of machines
running with this driver. Looking forward to your patch then.

Thanks,
Jason

>
> please stick to enabling xsk batching on tx side.
>
> > +
> >       /* MTU range: 68 - 9710 */
> >       netdev->min_mtu =3D ETH_MIN_MTU;
> >       netdev->max_mtu =3D IXGBE_MAX_JUMBO_FRAME_SIZE - (ETH_HLEN + ETH_=
FCS_LEN);
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net=
/ethernet/intel/ixgbe/ixgbe_xsk.c
> > index 9fe2c4bf8bc5..3d9fa4f2403e 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > @@ -424,7 +424,9 @@ static void ixgbe_xmit_pkt(struct ixgbe_ring *xdp_r=
ing, struct xdp_desc *desc,
> >       cmd_type =3D IXGBE_ADVTXD_DTYP_DATA |
> >                  IXGBE_ADVTXD_DCMD_DEXT |
> >                  IXGBE_ADVTXD_DCMD_IFCS;
> > -     cmd_type |=3D desc[i].len | IXGBE_TXD_CMD_EOP;
> > +     cmd_type |=3D desc[i].len;
> > +     if (xsk_is_eop_desc(&desc[i]))
> > +             cmd_type |=3D IXGBE_TXD_CMD_EOP;
> >       tx_desc->read.cmd_type_len =3D cpu_to_le32(cmd_type);
> >       tx_desc->read.olinfo_status =3D
> >               cpu_to_le32(desc[i].len << IXGBE_ADVTXD_PAYLEN_SHIFT);
> > --
> > 2.41.3
> >
