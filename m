Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 850EA27D995
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:03:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35B5485FC9;
	Tue, 29 Sep 2020 21:03:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XeYNdZmziDfI; Tue, 29 Sep 2020 21:03:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C31B85FAD;
	Tue, 29 Sep 2020 21:03:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4917C1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 40FCC8683A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NgV6DVFt6gJa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:35:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 25AE586806
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:42 +0000 (UTC)
Message-Id: <20200929202509.673358734@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411738;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=A9VmTcwkFTXzbdbbw121qWEfo2p4m5jmwhJ1CmJQMec=;
 b=dEktkI17Grpony7lZDKecnFEOdfjaxY0ryQd1B5sA+JU4DH7ltvZM5y90/S5ZbQN7kor0p
 nLbgJyFkDdibeBt0Ws0AFUWAwfpK6RKbtbq32hFBmipn16rznFFbSlROeQFlp+ycGanNWP
 QRMD1DrNO0zkyj7xOFwIs6S016IM/aeJPP/9HiWrKgxBMq9Sp/2CemfdS7b/xDowDOdaxh
 oUQcMLQPDEHoUThhcs+bMPyOJgTUxDiH6L6XKP3eajz21AjfzkSNNqe1W42cLHSqj4tk8o
 0aWkLxpZPgyBQNI6QCrDgY/PPpvKnuff2Aj0OUVYn/NAyfr2M4CjSm3+dt2zUw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411738;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=A9VmTcwkFTXzbdbbw121qWEfo2p4m5jmwhJ1CmJQMec=;
 b=pmrmwnMCbZFXDvPzt7v5jtJqkDoyPinCfkEKPf5sb51+5GYnhW1aOS8+hkZk3HEdGnrxXP
 lrF/CHb/+X9mNiBw==
Date: Tue, 29 Sep 2020 22:25:09 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 00/36] net: in_interrupt() cleanup and
 fixes
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Christian Benvenuti <benve@cisco.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list@cypress.com, brcm80211-dev-list.pdl@broadcom.com,
 Ping-Ke Shih <pkshih@realtek.com>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Martin Habets <mhabets@solarflare.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Jay Cliburn <jcliburn@gmail.com>, Paul McKenney <paulmck@kernel.org>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Jouni Malinen <j@w1.fi>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>, Amitkumar Karwar <amitkarwar@gmail.com>,
 Wright Feng <wright.feng@cypress.com>, Daniel Drake <dsd@gentoo.org>,
 Pensando Drivers <drivers@pensando.io>, Kalle Valo <kvalo@codeaurora.org>,
 Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>, Dave Miller <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Folks,

in the discussion about preempt count consistency accross kernel configurations:

  https://lore.kernel.org/r/20200914204209.256266093@linutronix.de/

Linus clearly requested that code in drivers and libraries which changes
behaviour based on execution context should either be split up so that
e.g. task context invocations and BH invocations have different interfaces
or if that's not possible the context information has to be provided by the
caller which knows in which context it is executing.

This includes conditional locking, allocation mode (GFP_*) decisions and
avoidance of code paths which might sleep.

In the long run, usage of 'preemptible, in_*irq etc.' should be banned from
driver code completely.

This is the second version of the first batch of related changes. V1 can be
found here:

     https://lore.kernel.org/r/20200927194846.045411263@linutronix.de

Changes vs. V1:

  - Rebased to net-next

  - Fixed the half done rename sillyness in the ENIC patch.

  - Fixed the IONIC driver fallout.

  - Picked up the SFC fix from Edward and adjusted the GFP_KERNEL change
    accordingly.

  - Addressed the review comments vs. BCRFMAC.

  - Collected Reviewed/Acked-by tags as appropriate.

The pile is also available from:

    git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git net/cleanup

Thanks,

	tglx
---
 Documentation/networking/caif/spi_porting.rst                   |  229 --
 b/Documentation/networking/caif/index.rst                       |    1 
 b/drivers/net/caif/Kconfig                                      |   19 
 b/drivers/net/caif/Makefile                                     |    4 
 b/drivers/net/caif/caif_hsi.c                                   |   19 
 b/drivers/net/ethernet/amd/sun3lance.c                          |   11 
 b/drivers/net/ethernet/atheros/atl1c/atl1c_main.c               |    1 
 b/drivers/net/ethernet/atheros/atl1e/atl1e_main.c               |    2 
 b/drivers/net/ethernet/atheros/atlx/atl2.c                      |    1 
 b/drivers/net/ethernet/chelsio/cxgb3/adapter.h                  |    1 
 b/drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c               |    2 
 b/drivers/net/ethernet/chelsio/cxgb3/sge.c                      |   44 
 b/drivers/net/ethernet/chelsio/cxgb4/sge.c                      |    3 
 b/drivers/net/ethernet/cisco/enic/enic.h                        |    1 
 b/drivers/net/ethernet/cisco/enic/enic_api.c                    |    6 
 b/drivers/net/ethernet/cisco/enic/enic_main.c                   |   27 
 b/drivers/net/ethernet/freescale/fec_mpc52xx.c                  |   10 
 b/drivers/net/ethernet/intel/e100.c                             |    4 
 b/drivers/net/ethernet/intel/e1000/e1000_main.c                 |    1 
 b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c                  |    2 
 b/drivers/net/ethernet/intel/i40e/i40e_main.c                   |    4 
 b/drivers/net/ethernet/intel/ice/ice_main.c                     |    1 
 b/drivers/net/ethernet/intel/igb/igb_main.c                     |    1 
 b/drivers/net/ethernet/intel/igc/igc_main.c                     |    1 
 b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c                 |    1 
 b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c             |    2 
 b/drivers/net/ethernet/natsemi/sonic.c                          |   24 
 b/drivers/net/ethernet/natsemi/sonic.h                          |    2 
 b/drivers/net/ethernet/neterion/vxge/vxge-config.c              |    9 
 b/drivers/net/ethernet/neterion/vxge/vxge-config.h              |    7 
 b/drivers/net/ethernet/pensando/ionic/ionic_dev.c               |    2 
 b/drivers/net/ethernet/pensando/ionic/ionic_lif.c               |   64 
 b/drivers/net/ethernet/pensando/ionic/ionic_lif.h               |    2 
 b/drivers/net/ethernet/pensando/ionic/ionic_main.c              |    4 
 b/drivers/net/ethernet/sfc/ef10.c                               |   24 
 b/drivers/net/ethernet/sfc/efx_common.c                         |    2 
 b/drivers/net/ethernet/sfc/net_driver.h                         |    5 
 b/drivers/net/ethernet/sfc/nic_common.h                         |    7 
 b/drivers/net/ethernet/sun/sunbmac.c                            |   18 
 b/drivers/net/phy/mdio_bus.c                                    |   15 
 b/drivers/net/usb/kaweth.c                                      |  261 --
 b/drivers/net/usb/net1080.c                                     |    1 
 b/drivers/net/wan/lmc/lmc_debug.c                               |   18 
 b/drivers/net/wan/lmc/lmc_debug.h                               |    1 
 b/drivers/net/wan/lmc/lmc_main.c                                |  105 -
 b/drivers/net/wan/lmc/lmc_media.c                               |    4 
 b/drivers/net/wan/lmc/lmc_proto.c                               |   16 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c       |    4 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c     |    4 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bus.h        |    3 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c       |   26 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.h       |    2 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c       |    8 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.h       |    7 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c   |   10 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.h   |    2 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c     |    7 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.h      |    6 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c       |    8 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.h       |    2 
 b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c        |    2 
 b/drivers/net/wireless/intel/ipw2x00/ipw2100.c                  |    3 
 b/drivers/net/wireless/intel/ipw2x00/ipw2200.h                  |    6 
 b/drivers/net/wireless/intel/ipw2x00/libipw.h                   |    3 
 b/drivers/net/wireless/intel/iwlegacy/common.h                  |    4 
 b/drivers/net/wireless/intel/iwlwifi/iwl-debug.c                |    5 
 b/drivers/net/wireless/intel/iwlwifi/iwl-devtrace-msg.h         |    6 
 b/drivers/net/wireless/intersil/hostap/hostap_hw.c              |   12 
 b/drivers/net/wireless/marvell/libertas/defs.h                  |    3 
 b/drivers/net/wireless/marvell/libertas/rx.c                    |   11 
 b/drivers/net/wireless/marvell/libertas_tf/deb_defs.h           |    3 
 b/drivers/net/wireless/marvell/mwifiex/uap_txrx.c               |    6 
 b/drivers/net/wireless/marvell/mwifiex/util.c                   |    6 
 b/drivers/net/wireless/realtek/rtlwifi/base.c                   |   47 
 b/drivers/net/wireless/realtek/rtlwifi/base.h                   |    3 
 b/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c |   12 
 b/drivers/net/wireless/realtek/rtlwifi/core.c                   |    6 
 b/drivers/net/wireless/realtek/rtlwifi/debug.c                  |   20 
 b/drivers/net/wireless/realtek/rtlwifi/debug.h                  |    8 
 b/drivers/net/wireless/realtek/rtlwifi/pci.c                    |    4 
 b/drivers/net/wireless/realtek/rtlwifi/ps.c                     |   27 
 b/drivers/net/wireless/realtek/rtlwifi/ps.h                     |   10 
 b/drivers/net/wireless/realtek/rtlwifi/wifi.h                   |    3 
 b/drivers/net/wireless/zydas/zd1211rw/zd_usb.c                  |    1 
 b/include/linux/netdevice.h                                     |    1 
 b/net/core/dev.c                                                |   15 
 drivers/net/caif/caif_spi.c                                     |  874 ----------
 drivers/net/caif/caif_spi_slave.c                               |  254 --
 include/net/caif/caif_spi.h                                     |  155 -
 89 files changed, 354 insertions(+), 2234 deletions(-)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
