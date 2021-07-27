Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3663D6FBC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jul 2021 08:53:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83073607EC;
	Tue, 27 Jul 2021 06:53:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QxgPhP_oxAIz; Tue, 27 Jul 2021 06:53:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 861B2605C0;
	Tue, 27 Jul 2021 06:53:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 46F421BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 06:53:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 34F7440359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 06:53:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JjGnoxMuipQx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jul 2021 06:53:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 023174030C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 06:53:39 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 68AFA3F375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 06:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1627368817;
 bh=qN8OJFf6Po6PVFEhUmeuvpneJoBvci7+fruSnaLegCQ=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=F+x1uhk8/nK5d2FZ6QzarA6QXWJUw4IZamJk8vbyyPDOCqGNnRakCsTtp8D5PNyqH
 LwjUZHwDbczofMoUf3Ly4D249pBT+haqt3tpJtSgNz6V/uPlsdVZK7buVDTmDqgTmo
 az3+RbLnyY7GF/el27U/zTmrH+f2PYVAs2MPWVRlpZZowZ3ojoq8Lkn88P8ow7Cj3p
 cnEyvJ4X3WakflehWVyQMJR+47N6Pz+t8tZKNsM3ZiDxxCbqHWhsU5ZtFSj5eVved7
 fb1KoTslM84CHEbJXSU5/RRlenMuugxy9Ahw4iJ+Xa1UmQdo0Rb8087x6eWS0PSRbx
 /M1Ec+dBHpQXQ==
Received: by mail-ej1-f72.google.com with SMTP id
 hb18-20020a1709071612b029052883e9de3eso2732318ejc.19
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jul 2021 23:53:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qN8OJFf6Po6PVFEhUmeuvpneJoBvci7+fruSnaLegCQ=;
 b=auu7qydI8st1TkcAESfuh3sXQusWPN/uhb6/T/0jies08+613cbC+wtdv1aDkLv5J5
 zzd/86axu+dg9iKOTRycYEQ2aSOH17OPgoBQSlJCgob/CS2CuB5bCVSl4GcaYzqpeaqV
 Mcguvvvk8t0UKa3J6OV2Q6gvKt1bWpvKlpruMjP0NYWACqPk6Qp8dgsupFfOMHISca+i
 pkFtz83btjMsFqhs0UHeUSvj2R1iodKcuX2dwW93crCQqPCHTSHoeI2nBcunvnj0IM7C
 W5mb7NT2KlrtDwupphy50vQq9JMQ38m9/euEBrU3nGhyML2czd83NIVYAbsPyfB97gv1
 Wf7w==
X-Gm-Message-State: AOAM533xEZ7gUeTrBo3uhaf4Hte1yB+s4REPZ7LQGPjaEVF1XDy9ZIyW
 juHdrFh0O2/31X4q2ONnlJUTrXiR0FhOgID+Rn+AFdvKVVf7mkALA8Lr6len/4N+oYloKwZsLze
 thrKWzQ93lPRifnhgwTb56G008otnCkJiEMaOkeitnBddptv8OgzFwRT8AIz1LnI=
X-Received: by 2002:a05:6402:1846:: with SMTP id
 v6mr8052324edy.198.1627368816996; 
 Mon, 26 Jul 2021 23:53:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzYdD2hDnkETruFxQmylsUBZw88ismuEmU2WP6U9HAo2K2rEXtDKURDvsFgfMewoRu4uhjd2VcTqS0lweEkMF8=
X-Received: by 2002:a05:6402:1846:: with SMTP id
 v6mr8052290edy.198.1627368816680; 
 Mon, 26 Jul 2021 23:53:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210712133500.1126371-1-kai.heng.feng@canonical.com>
 <20210712133500.1126371-3-kai.heng.feng@canonical.com>
In-Reply-To: <20210712133500.1126371-3-kai.heng.feng@canonical.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Tue, 27 Jul 2021 14:53:23 +0800
Message-ID: <CAAd53p5B5f5U_J1L+SpjZ46AFEr1kMqwgqnF2dYKvDwY2x3GzA@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 3/3] e1000e: Serialize TGP e1000e PM
 ops
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

On Mon, Jul 12, 2021 at 9:35 PM Kai-Heng Feng
<kai.heng.feng@canonical.com> wrote:
>
> On TGL systems, PCI_COMMAND may randomly flip to 0 on system resume.
> This is devastating to drivers that use pci_set_master(), like NVMe and
> xHCI, to enable DMA in their resume routine, as pci_set_master() can
> inadvertently disable PCI_COMMAND_IO and PCI_COMMAND_MEMORY, making
> resources inaccessible.
>
> The issue is reproducible on all kernel releases, but the situation is
> exacerbated by commit 6cecf02e77ab ("Revert "e1000e: disable s0ix entry
> and exit flows for ME systems"").
>
> Seems like ME can do many things to other PCI devices until it's finally out of
> ULP polling. So ensure e1000e PM ops are serialized by enforcing suspend/resume
> order to workaround the issue.
>
> Of course this will make system suspend and resume a bit slower, but we
> probably need to settle on this workaround until ME is fully supported.
>
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=212039
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>

Series "e1000e: Add handshake with the CSME to support s0ix" doesn't
fix the issue, so this patch is still needed.

Kai-Heng

> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index e63445a8ce12..0244d3dd90a3 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -7319,7 +7319,8 @@ static const struct net_device_ops e1000e_netdev_ops = {
>
>  static void e1000e_create_device_links(struct pci_dev *pdev)
>  {
> -       struct pci_dev *tgp_mei_me;
> +       struct pci_bus *bus = pdev->bus;
> +       struct pci_dev *tgp_mei_me, *p;
>
>         /* Find TGP mei_me devices and make e1000e power depend on mei_me */
>         tgp_mei_me = pci_get_device(PCI_VENDOR_ID_INTEL, 0xa0e0, NULL);
> @@ -7335,6 +7336,17 @@ static void e1000e_create_device_links(struct pci_dev *pdev)
>                 pci_info(pdev, "System and runtime PM depends on %s\n",
>                          pci_name(tgp_mei_me));
>
> +       /* Find other devices in the SoC and make them depend on e1000e */
> +       list_for_each_entry(p, &bus->devices, bus_list) {
> +               if (&p->dev == &pdev->dev || &p->dev == &tgp_mei_me->dev)
> +                       continue;
> +
> +               if (device_link_add(&p->dev, &pdev->dev,
> +                                   DL_FLAG_AUTOREMOVE_SUPPLIER))
> +                       pci_info(p, "System PM depends on %s\n",
> +                                pci_name(pdev));
> +       }
> +
>         pci_dev_put(tgp_mei_me);
>  }
>
> --
> 2.31.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
