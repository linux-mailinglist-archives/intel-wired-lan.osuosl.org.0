Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 063083C7E88
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 08:28:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70B8E40331;
	Wed, 14 Jul 2021 06:28:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12K1c39oxrA3; Wed, 14 Jul 2021 06:28:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E67840285;
	Wed, 14 Jul 2021 06:28:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CDE91BF94B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 06:28:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1741A40285
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 06:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oss068QSkrDg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 06:28:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E05B04022D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 06:28:18 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id DE1E940656
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 06:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1626244095;
 bh=ifAKi/8NC0EOibZ4i+5eRwicNltCDFNtD419Xm7JbbU=;
 h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type;
 b=u3Dr4RRtR+dXZ80PvpHgV028rCHu+ayargtP+OXzzAPrQGCp/cIcZhBvP8UW3hQeL
 8yY2j8hc708R+WmkBeGbNWRKpvmEyT2vgnytEzaUeVqn6qJGl4SJb8YTQctom8uomj
 7DV7YAW7A8pPf/j0Qvm4tz7dnP6Wv6iN+dbK8O8Jxw9gzFmxjIKIoxpmTz/plFBQ9V
 au5XaI0JJ3hC8fBXeDZlH+4W0WzyUp5lOSApVcUS8/8zR+lsMINfD8/POjv1KDs0fv
 D4jceeGalucYeazXbArMgrbFrNEU3zxwG7QhtAwv8+8Csi9Aztiz/ZkoQ/vGy7+j8X
 ZutKyzDzKb1oQ==
Received: by mail-ej1-f71.google.com with SMTP id
 t8-20020a1709063e48b0290501cd965554so339719eji.8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 23:28:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ifAKi/8NC0EOibZ4i+5eRwicNltCDFNtD419Xm7JbbU=;
 b=pTxsrUqG2M7w8pnaXWRQYuGBMMDLkIFGzadfoDM6OIhbTHy2FA7qPr2DvBaruIWX7U
 aHjnOCD+JLPiblnutETvY8DLHW9gJDJMLS7znlYPng8+8QIXs4qEbjMVTzPQhB+0mpfs
 MjXINWuoxPYmfkZvTDFTiLrM1MDCqAW16ZBYZlxZQbUd/Ts+SLtt6oZELRKjCt3k2q6R
 g7mb63rUCfkObYP/fGp8ziKIIIN5d7UoDzNu2JaSDJ6OMaokg1YU0kuRiHGfvk9Xo0sR
 ++sk6WQfR0owEXIMjhETKV8VgGeUEp2JKhyGKL2zS+PJ2y5YiTn8LcXaLAOt1+HoC2I0
 n6XA==
X-Gm-Message-State: AOAM532x2k1Uy2T7KM7f6g74EhJUvJiXivQ8DYzqtvJyyeP8dsnBVOhP
 F70GQ7K+nfU+8JEN/qXVC0tfuKh2ohFWJa+G2e9efTDLYpwqjRN+dTBePhqkNhQlDx4cvqweMyt
 ub+LYUv93Qi5wC7/VVe4w1XDN7w1eFjLjIaRk1bHpVN+ywpnYmCxmz6BBZ95NMBs=
X-Received: by 2002:a17:907:724b:: with SMTP id
 ds11mr10892545ejc.192.1626244095514; 
 Tue, 13 Jul 2021 23:28:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw3w8m7rtpG6oHyvf3utp6yndL+zmE52W2nspCRV/NYU9TmybG/CY6KQGvNk27u7N3Zfg/SOzh8s5fSCAGMCaw=
X-Received: by 2002:a17:907:724b:: with SMTP id
 ds11mr10892512ejc.192.1626244095137; 
 Tue, 13 Jul 2021 23:28:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210712133500.1126371-1-kai.heng.feng@canonical.com>
 <20210712133500.1126371-2-kai.heng.feng@canonical.com>
 <3947d70a-58d0-df93-24f1-1899fd567534@intel.com>
In-Reply-To: <3947d70a-58d0-df93-24f1-1899fd567534@intel.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Wed, 14 Jul 2021 14:28:03 +0800
Message-ID: <CAAd53p79BwxPGRECYGrpCQbSJz8NY2WrG+AJCuaj89XNqCy59Q@mail.gmail.com>
To: Sasha Neftin <sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 2/3] e1000e: Make mei_me active when
 e1000e is in use
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
Cc: devora.fuxbrumer@intel.com, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 alexander.usyskin@intel.com, open list <linux-kernel@vger.kernel.org>,
 AceLan Kao <acelan.kao@canonical.com>, Jakub Kicinski <kuba@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sasha,

On Wed, Jul 14, 2021 at 1:39 PM Sasha Neftin <sasha.neftin@intel.com> wrote:
>
> On 7/12/2021 16:34, Kai-Heng Feng wrote:
> > Many users report rather sluggish RX speed on TGP I219. Since
> > "intel_idle.max_cstate=1" doesn't help, so it's not caused by deeper
> > package C-state.
> >
> > A workaround that always works is to make sure mei_me is runtime active
> > when e1000e is in use.
> >
> > The root cause is still unknown, but since many users are affected by
> > the issue, implment the quirk in the driver as a temporary workaround.
> Hello Kai-Heng,
> First - thanks for the investigation of this problem. As I know CSME/AMT
> not POR on Linux and not supported. Recently we started add support for
> CSME/AMT none provisioned version (handshake with CSME in s0ix flow -
> only CSME with s0ix will support). It is not related to rx bandwidth
> problem.

I am aware that ME is not POR under Linux, so the commit message
states clearly that the patch is just a "temporary workaround".
Not every laptop can disable ME/AMT, and I don't think asking user to
fiddle with BIOS is a good thing, hence the patch.

> I do not know how MEI driver affect 1Gbe driver - so, I would suggest to
> involve our CSME engineer (alexander.usyskin@intel.com) and try to
> investigate this problem.
> Does this problem observed on Dell systems? As I heard no reproduction
> on Intel's RVP platform.
> Another question: does disable mei_me runpm solve your problem?

Yes, disabling runpm on mei_me can workaround the issue, and that's
essentially what this patch does by adding DL_FLAG_PM_RUNTIME |
DL_FLAG_RPM_ACTIVE flag.

Kai-Heng

> >
> > Also adds mei_me as soft dependency to ensure the device link can be
> > created if e1000e is in initramfs.
> >
> > BugLink: https://bugs.launchpad.net/bugs/1927925
> > Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=213377
> > Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=213651
> > Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > ---
> >   drivers/net/ethernet/intel/e1000e/netdev.c | 26 ++++++++++++++++++++++
> >   1 file changed, 26 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> > index 5835d6cf2f51..e63445a8ce12 100644
> > --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> > +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> > @@ -7317,6 +7317,27 @@ static const struct net_device_ops e1000e_netdev_ops = {
> >       .ndo_features_check     = passthru_features_check,
> >   };
> >
> > +static void e1000e_create_device_links(struct pci_dev *pdev)
> > +{
> > +     struct pci_dev *tgp_mei_me;
> > +
> > +     /* Find TGP mei_me devices and make e1000e power depend on mei_me */
> > +     tgp_mei_me = pci_get_device(PCI_VENDOR_ID_INTEL, 0xa0e0, NULL);
> > +     if (!tgp_mei_me) {
> > +             tgp_mei_me = pci_get_device(PCI_VENDOR_ID_INTEL, 0x43e0, NULL);
> > +             if (!tgp_mei_me)
> > +                     return;
> > +     }
> > +
> > +     if (device_link_add(&pdev->dev, &tgp_mei_me->dev,
> > +                         DL_FLAG_PM_RUNTIME | DL_FLAG_RPM_ACTIVE |
> > +                         DL_FLAG_AUTOREMOVE_CONSUMER))
> > +             pci_info(pdev, "System and runtime PM depends on %s\n",
> > +                      pci_name(tgp_mei_me));
> > +
> > +     pci_dev_put(tgp_mei_me);
> > +}
> > +
> >   /**
> >    * e1000_probe - Device Initialization Routine
> >    * @pdev: PCI device information struct
> > @@ -7645,6 +7666,9 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >       if (pci_dev_run_wake(pdev) && hw->mac.type != e1000_pch_cnp)
> >               pm_runtime_put_noidle(&pdev->dev);
> >
> > +     if (hw->mac.type == e1000_pch_tgp)
> > +             e1000e_create_device_links(pdev);
> > +
> >       return 0;
> >
> >   err_register:
> > @@ -7917,6 +7941,8 @@ static void __exit e1000_exit_module(void)
> >   }
> >   module_exit(e1000_exit_module);
> >
> > +/* Ensure device link can be created if e1000e is in the initramfs. */
> > +MODULE_SOFTDEP("pre: mei_me");
> >   MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
> >   MODULE_DESCRIPTION("Intel(R) PRO/1000 Network Driver");
> >   MODULE_LICENSE("GPL v2");
> >
> Thanks,Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
