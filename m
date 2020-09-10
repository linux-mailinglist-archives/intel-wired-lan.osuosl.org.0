Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D2D2653BA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 23:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F2FE020426;
	Thu, 10 Sep 2020 21:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7H2pRZNGgLZF; Thu, 10 Sep 2020 21:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0BC6D20780;
	Thu, 10 Sep 2020 21:39:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A02E1BF40A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 09:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4481C86EDB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 09:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2gVH4UQ7ZYuq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Sep 2020 09:24:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 81FC986EA2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 09:24:37 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id u126so6270160iod.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 02:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UyqGiyvWtrvEPIbfLtgakvWHIPcO7f2wwjJnMPORWG0=;
 b=BoSxMiljYiAjMP/XBn/hYGNVKL/oHxnqnEUJ7qSdwoJLG0pxR2qK3V4/fkUTSaV51s
 3pvr292/IyS8ps68VC6dxn72XHdiWpnrMVrw8xogJTOMYamirEZ059PvshX7H4Z5GWuh
 Vr7j8283bIhfaNsK7sxUGLf6s0Z2Efi6Yl4vefoBSqVlIDK265aYxjjSjS69bDYpqbGV
 /GSb5UhzJJFq63scKHt5GhqSRkybY6g2zuA571aN2zohyHumpin0aZgpFfaeOPy0WbSg
 Mpw6iHtgik0cTA/OjEeiGwKuBqjHR2p7i1mxyZ7WrSW4CGvjjQTt8jjc//sWyeGDOFMK
 9KBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UyqGiyvWtrvEPIbfLtgakvWHIPcO7f2wwjJnMPORWG0=;
 b=O3+HgKwuedNq/75EcYby2IC2ZnkUmGR65kojDTszJa6HGM6D6oN0qbPvFLg7V7ZN0Z
 CgymlYgHLYSDQS6p6zHFATvzs0Fx6+XEsUaqkLWPqfhiEgBVwJmqV3iK3qZGG2lf6ycR
 EPBp//CD1axM5yt4YgLiLdzas5djpp7nIaebvvQN7r6V9OnoG2KrH5aFqHloH+LArxtg
 DbLzujEB3wjX0MnS38CBebXQ9jH9APYyQxxc1nF7/GQY0rZOIw81vLTFwV7H4N2+Sruq
 pQYm0G0+eyL6roO4jUeppo5ej7KSdsa18Qhqx53xOTons0RcM6fm5koHWTM177ekjghj
 f7BA==
X-Gm-Message-State: AOAM532dPVueFQ/oR73VJcXmoZFFNN7BSBuqCy5k7R3xlOESIvdRM6FT
 OAOQ/vUqxwUURRCo3nmcAJV3Nn5Lr6+U6b7biXQ=
X-Google-Smtp-Source: ABdhPJzJ/LFpexv9kLm1kjwc0/B+7GHCOB8WQagf03Hz+gzhVFwgLWrpkGefOcCCEeSFlcKtCwndocR5oDNlZlvNymM=
X-Received: by 2002:a5d:8846:: with SMTP id t6mr7056972ios.123.1599729876856; 
 Thu, 10 Sep 2020 02:24:36 -0700 (PDT)
MIME-Version: 1.0
References: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
In-Reply-To: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
From: Ilya Dryomov <idryomov@gmail.com>
Date: Thu, 10 Sep 2020 11:24:26 +0200
Message-ID: <CAOi1vP-v77pj3G5Ez94CDYVs2jSO828c4uV_wzNi6sRKp=Yvyg@mail.gmail.com>
To: Joe Perches <joe@perches.com>
X-Mailman-Approved-At: Thu, 10 Sep 2020 21:39:54 +0000
Subject: Re: [Intel-wired-lan] [trivial PATCH] treewide: Convert switch/case
 fallthrough; to break; 
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
Cc: linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
 oss-drivers@netronome.com, nouveau@lists.freedesktop.org,
 alsa-devel <alsa-devel@alsa-project.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, linux-ide@vger.kernel.org, dm-devel@redhat.com,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 sparclinux@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-rtc@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, dccp@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-afs@lists.infradead.org,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 linux-mmc@vger.kernel.org, Kees Cook <kees.cook@canonical.com>,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-sctp@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-nvme@lists.infradead.org,
 storagedev@microchip.com, Ceph Development <ceph-devel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 Jiri Kosina <trivial@kernel.org>, linux-parisc@vger.kernel.org,
 netdev <netdev@vger.kernel.org>, linux-usb@vger.kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, iommu@lists.linux-foundation.org,
 netfilter-devel@vger.kernel.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 9, 2020 at 10:10 PM Joe Perches <joe@perches.com> wrote:
>
> fallthrough to a separate case/default label break; isn't very readable.
>
> Convert pseudo-keyword fallthrough; statements to a simple break; when
> the next label is case or default and the only statement in the next
> label block is break;
>
> Found using:
>
> $ grep-2.5.4 -rP --include=*.[ch] -n "fallthrough;(\s*(case\s+\w+|default)\s*:\s*){1,7}break;" *
>
> Miscellanea:
>
> o Move or coalesce a couple label blocks above a default: block.
>
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>
> Compiled allyesconfig x86-64 only.
> A few files for other arches were not compiled.
>
>  arch/arm/mach-mmp/pm-pxa910.c                             |  2 +-
>  arch/arm64/kvm/handle_exit.c                              |  2 +-
>  arch/mips/kernel/cpu-probe.c                              |  2 +-
>  arch/mips/math-emu/cp1emu.c                               |  2 +-
>  arch/s390/pci/pci.c                                       |  2 +-
>  crypto/tcrypt.c                                           |  4 ++--
>  drivers/ata/sata_mv.c                                     |  2 +-
>  drivers/atm/lanai.c                                       |  2 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c               |  2 +-
>  drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmi.c           |  2 +-
>  drivers/hid/wacom_wac.c                                   |  2 +-
>  drivers/i2c/busses/i2c-i801.c                             |  2 +-
>  drivers/infiniband/ulp/rtrs/rtrs-clt.c                    | 14 +++++++-------
>  drivers/infiniband/ulp/rtrs/rtrs-srv.c                    |  6 +++---
>  drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c               |  2 +-
>  drivers/irqchip/irq-vic.c                                 |  4 ++--
>  drivers/md/dm.c                                           |  2 +-
>  drivers/media/dvb-frontends/drxd_hard.c                   |  2 +-
>  drivers/media/i2c/ov5640.c                                |  2 +-
>  drivers/media/i2c/ov6650.c                                |  5 ++---
>  drivers/media/i2c/smiapp/smiapp-core.c                    |  2 +-
>  drivers/media/i2c/tvp5150.c                               |  2 +-
>  drivers/media/pci/ddbridge/ddbridge-core.c                |  2 +-
>  drivers/media/usb/cpia2/cpia2_core.c                      |  2 +-
>  drivers/mfd/iqs62x.c                                      |  3 +--
>  drivers/mmc/host/atmel-mci.c                              |  2 +-
>  drivers/mtd/nand/raw/nandsim.c                            |  2 +-
>  drivers/net/ethernet/intel/e1000e/phy.c                   |  2 +-
>  drivers/net/ethernet/intel/fm10k/fm10k_pf.c               |  2 +-
>  drivers/net/ethernet/intel/i40e/i40e_adminq.c             |  2 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c               |  2 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c               |  2 +-
>  drivers/net/ethernet/intel/igb/e1000_phy.c                |  2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c            |  2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c             |  2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c            |  2 +-
>  drivers/net/ethernet/intel/ixgbevf/vf.c                   |  2 +-
>  drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c |  2 +-
>  drivers/net/ethernet/qlogic/qed/qed_mcp.c                 |  2 +-
>  drivers/net/ethernet/sfc/falcon/farch.c                   |  2 +-
>  drivers/net/ethernet/sfc/farch.c                          |  2 +-
>  drivers/net/phy/adin.c                                    |  3 +--
>  drivers/net/usb/pegasus.c                                 |  4 ++--
>  drivers/net/usb/usbnet.c                                  |  2 +-
>  drivers/net/wireless/ath/ath5k/eeprom.c                   |  2 +-
>  drivers/net/wireless/mediatek/mt7601u/dma.c               |  8 ++++----
>  drivers/nvme/host/core.c                                  | 12 ++++++------
>  drivers/pcmcia/db1xxx_ss.c                                |  4 ++--
>  drivers/power/supply/abx500_chargalg.c                    |  2 +-
>  drivers/power/supply/charger-manager.c                    |  2 +-
>  drivers/rtc/rtc-pcf85063.c                                |  2 +-
>  drivers/s390/scsi/zfcp_fsf.c                              |  2 +-
>  drivers/scsi/aic7xxx/aic79xx_core.c                       |  4 ++--
>  drivers/scsi/aic94xx/aic94xx_tmf.c                        |  2 +-
>  drivers/scsi/lpfc/lpfc_sli.c                              |  2 +-
>  drivers/scsi/smartpqi/smartpqi_init.c                     |  2 +-
>  drivers/scsi/sr.c                                         |  2 +-
>  drivers/tty/serial/sunsu.c                                |  2 +-
>  drivers/tty/serial/sunzilog.c                             |  2 +-
>  drivers/tty/vt/vt_ioctl.c                                 |  2 +-
>  drivers/usb/dwc3/core.c                                   |  2 +-
>  drivers/usb/gadget/legacy/inode.c                         |  2 +-
>  drivers/usb/gadget/udc/pxa25x_udc.c                       |  4 ++--
>  drivers/usb/host/ohci-hcd.c                               |  2 +-
>  drivers/usb/isp1760/isp1760-hcd.c                         |  2 +-
>  drivers/usb/musb/cppi_dma.c                               |  2 +-
>  drivers/usb/phy/phy-fsl-usb.c                             |  2 +-
>  drivers/video/fbdev/stifb.c                               |  2 +-
>  fs/afs/yfsclient.c                                        |  8 ++++----
>  fs/ceph/dir.c                                             |  2 +-

For ceph:

Acked-by: Ilya Dryomov <idryomov@gmail.com>

Thanks,

                Ilya
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
