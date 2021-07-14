Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BF03C7D4D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 06:19:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE8EA4051F;
	Wed, 14 Jul 2021 04:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hAgJKCv4W0nn; Wed, 14 Jul 2021 04:19:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B85FB401F3;
	Wed, 14 Jul 2021 04:19:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E6CF91BF846
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 04:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFA10606F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 04:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MXYS0OfcmvON for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 04:19:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 501F9606E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 04:19:17 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 3524F40659
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 04:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1626236354;
 bh=5PEtQOiG2pwavHSstsclnvY/ZQMI7gfpVsfSDY7O4SI=;
 h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type;
 b=bZVO2Z6HxiaOXZMVaP665YyZFnPaE2a5/6mfVcTQpEtN2uktqW/N6bPwH+2Mde+P5
 EC9OOx8CsAAaXc4oVqXcndFm5UlLa8Cq5AiKUfmX8xmcbIqSo4TK4xu+EqK5yu7Dk+
 4WvJN7RYi/Ynd7Ngz2ebwcYdQoLJHp73MBQ5W4z+9CdP8Xt0MRDu++QksRRydCAcJr
 2zmNEMDUeEqCe+o1IBU2HRWMbGq1a9gYuGQp/ihciYcPE8Jc+tKK0L8vw0WPByR5HC
 ApSFJJu58/39ppkfsz7r/B9oGy8lntIjsoli986fhrvEI0YhYuengypCPyDeDc/0hq
 88RZDh9Jy0yWw==
Received: by mail-ej1-f72.google.com with SMTP id
 k1-20020a17090666c1b029041c273a883dso253416ejp.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 21:19:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5PEtQOiG2pwavHSstsclnvY/ZQMI7gfpVsfSDY7O4SI=;
 b=nCa4JdjK+Q4S/fWRACrAJQTiMSrBqe79JYgpWiIvNf0mqc0xX/TNo9iVZ+JW3DfC0j
 ePSFMBo5JWLEK5HlHZKjliT+W5ioVwGf8R/xVxT/QM3OQUuecaQPauwKT7SYRcCvo+Hx
 SHZucrZY96gsI7i0DcNx8lkEaXQQaX8SYS2TJPcoLEqenwUEKpLvLlQ+sw3mLkwBAUNJ
 wSs0QoIJxmf6rIB9Hxa9+83ycsL++T+ofKKaoGjW2Kva/VtnJFNu+5a5z9Fb7Olqjchi
 ie6KN5T0edY2P6OdDeG23o4jSulrIBpOkJgaO2SHwgPVnQPljwg3iG46kZl/1MJTQAuU
 Y0HQ==
X-Gm-Message-State: AOAM5315WRHB/Xe8dPQKXoFI5SqZhU+F7OoNHq39OtQ4kQ3Z/cygM61n
 a8RSNj9ADaLYpPgLNAUjoE5JyW85BhCT/ACW8gmOgLueigcZIUfeS1aIvV67+4W8CesLcL8+DoI
 1QQtKc4bERqlVTvCu9WkRaHeGKOhYNlB0p6GhjYj7vW3GG/Us7cKAP+lzDAlnw4I=
X-Received: by 2002:a17:907:724b:: with SMTP id
 ds11mr10290897ejc.192.1626236353840; 
 Tue, 13 Jul 2021 21:19:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy9iF3tigH6vILcTcBCopTqFYrQkarYwFyvGc+O4uxcUZ2xrWZXx+LXz5xx80QkB6010+HKT9MfuyABYvuHrQM=
X-Received: by 2002:a17:907:724b:: with SMTP id
 ds11mr10290865ejc.192.1626236353519; 
 Tue, 13 Jul 2021 21:19:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210712133500.1126371-1-kai.heng.feng@canonical.com>
 <d0bc9dbd-9b7a-5807-2ade-e710964a05a1@intel.com>
In-Reply-To: <d0bc9dbd-9b7a-5807-2ade-e710964a05a1@intel.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Wed, 14 Jul 2021 12:19:00 +0800
Message-ID: <CAAd53p5rKLNv9w4Z8YBSW=ztLAV68mc+BxUSyfOi11TLSuh6bg@mail.gmail.com>
To: Sasha Neftin <sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 1/3] e1000e: Separate TGP from SPT
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 AceLan Kao <acelan.kao@canonical.com>, Jakub Kicinski <kuba@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sasha,

On Wed, Jul 14, 2021 at 1:58 AM Sasha Neftin <sasha.neftin@intel.com> wrote:
>
> On 7/12/2021 16:34, Kai-Heng Feng wrote:
> > Separate TGP from SPT so we can apply specific quirks to TGP.
> >
> > Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > ---
> >   drivers/net/ethernet/intel/e1000e/e1000.h   |  4 +++-
> >   drivers/net/ethernet/intel/e1000e/ich8lan.c | 20 ++++++++++++++++++++
> >   drivers/net/ethernet/intel/e1000e/netdev.c  | 13 +++++++------
> >   3 files changed, 30 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
> > index 5b2143f4b1f8..3178efd98006 100644
> > --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> > +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> > @@ -113,7 +113,8 @@ enum e1000_boards {
> >       board_pch2lan,
> >       board_pch_lpt,
> >       board_pch_spt,
> > -     board_pch_cnp
> > +     board_pch_cnp,
> Hello Kai-Heng,
> I would agree with you here. I would suggest extending it also for other
> PCH (at least ADP and MTP).  The same controller on a different PCH.
> We will be able to differentiate between boards via MAC type and submit
> quirks if need.

Sure, will do in v2.

The issue patch [3/3] addresses may be fixed by [1], but I'll need to
dig the affected system out and do some testing.
Meanwhile, many users are affected by the RX issue patch [2/3]
addresses, so it'll be great if someone can review it.

[1] https://patchwork.ozlabs.org/project/intel-wired-lan/list/?series=250480

Kai-Heng

> > +     board_pch_tgp
> >   };
> >
> >   struct e1000_ps_page {
> > @@ -499,6 +500,7 @@ extern const struct e1000_info e1000_pch2_info;
> >   extern const struct e1000_info e1000_pch_lpt_info;
> >   extern const struct e1000_info e1000_pch_spt_info;
> >   extern const struct e1000_info e1000_pch_cnp_info;
> > +extern const struct e1000_info e1000_pch_tgp_info;
> >   extern const struct e1000_info e1000_es2_info;
> >
> >   void e1000e_ptp_init(struct e1000_adapter *adapter);
> > diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> > index cf7b3887da1d..654dbe798e55 100644
> > --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> > +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> > @@ -5967,3 +5967,23 @@ const struct e1000_info e1000_pch_cnp_info = {
> >       .phy_ops                = &ich8_phy_ops,
> >       .nvm_ops                = &spt_nvm_ops,
> >   };
> > +
> > +const struct e1000_info e1000_pch_tgp_info = {
> > +     .mac                    = e1000_pch_tgp,
> > +     .flags                  = FLAG_IS_ICH
> > +                               | FLAG_HAS_WOL
> > +                               | FLAG_HAS_HW_TIMESTAMP
> > +                               | FLAG_HAS_CTRLEXT_ON_LOAD
> > +                               | FLAG_HAS_AMT
> > +                               | FLAG_HAS_FLASH
> > +                               | FLAG_HAS_JUMBO_FRAMES
> > +                               | FLAG_APME_IN_WUC,
> > +     .flags2                 = FLAG2_HAS_PHY_STATS
> > +                               | FLAG2_HAS_EEE,
> > +     .pba                    = 26,
> > +     .max_hw_frame_size      = 9022,
> > +     .get_variants           = e1000_get_variants_ich8lan,
> > +     .mac_ops                = &ich8_mac_ops,
> > +     .phy_ops                = &ich8_phy_ops,
> > +     .nvm_ops                = &spt_nvm_ops,
> > +};
> > diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> > index d150dade06cf..5835d6cf2f51 100644
> > --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> > +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> > @@ -51,6 +51,7 @@ static const struct e1000_info *e1000_info_tbl[] = {
> >       [board_pch_lpt]         = &e1000_pch_lpt_info,
> >       [board_pch_spt]         = &e1000_pch_spt_info,
> >       [board_pch_cnp]         = &e1000_pch_cnp_info,
> > +     [board_pch_tgp]         = &e1000_pch_tgp_info,
> >   };
> >
> >   struct e1000_reg_info {
> > @@ -7843,12 +7844,12 @@ static const struct pci_device_id e1000_pci_tbl[] = {
> >       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_V11), board_pch_cnp },
> >       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_LM12), board_pch_spt },
> >       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_V12), board_pch_spt },
> > -     { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM13), board_pch_cnp },
> > -     { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V13), board_pch_cnp },
> > -     { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM14), board_pch_cnp },
> > -     { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V14), board_pch_cnp },
> > -     { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM15), board_pch_cnp },
> > -     { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V15), board_pch_cnp },
> > +     { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM13), board_pch_tgp },
> > +     { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V13), board_pch_tgp },
> > +     { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM14), board_pch_tgp },
> > +     { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V14), board_pch_tgp },
> > +     { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM15), board_pch_tgp },
> > +     { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V15), board_pch_tgp },
> >       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM16), board_pch_cnp },
> >       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V16), board_pch_cnp },
> >       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM17), board_pch_cnp },
> >
> Thanks,
> Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
