Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E17C7269B78
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 03:45:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 19D3020435;
	Tue, 15 Sep 2020 01:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A3uAN7cUSJTO; Tue, 15 Sep 2020 01:45:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6EBB82043E;
	Tue, 15 Sep 2020 01:45:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A14BF1BF301
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 01:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9D8848708C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 01:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7kDpmGDUy8uo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 01:45:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A260B87085
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 01:45:10 +0000 (UTC)
IronPort-SDR: cna29fJtwEmF6MTWQ9kUt92IpP9q/QaHqCpTUV8O6XkLFC7+QXBenIz/pOu2eYEmVvMdLAZiTc
 nUP8ITEkHioA==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="159233043"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="159233043"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 18:45:09 -0700
IronPort-SDR: d8uW30wqO56Y9Lrik9SSOyFOybodytI/OYBu4KxUwykJ1QrfbsHffGJDSZ01qqiZkOl3oOlFFz
 pFYc8EOGvmTQ==
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="482571935"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 18:45:09 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 14 Sep 2020 18:44:45 -0700
Message-Id: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 00/10] make
 drivers/net/ethernet W=1 clean
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After applying the patches below, the drivers/net/ethernet
directory can be built as modules with W=1 with no warnings (so
far on x64_64 arch only!).
As Jakub pointed out, there is much more work to do to clean up
C=1, but that will be another series of changes.

This series removes 1,283 warnings and hopefully allows the
ethernet directory to move forward from here without more
warnings being added. There is only one objtool warning now.

Some of these patches are already sent to Intel Wired Lan, but
the rest of the series titled drivers/net/ethernet affects other
drivers. The changes are all pretty straightforward.

As part of testing this series I realized that I have ~1,500 more
kdoc warnings to fix due to being in other arch or not compiled
with my x86_64 .config. Feel free to run
$ 'git ls-files *.[ch] | grep drivers/net/ethernet | xargs
scripts/kernel-doc -none'
to see the remaining issues.

---

Q: Maybe I can fix the remaining warnings in a followup patch? If
I try to put it on this series it will make it much larger
(double).

changes in v2:
	- non-rfc
	- addressed list comments from Edward Cree, Jacob Keller and
	  Vinicius Costa Gomes
	- re-split the Intel patches into functional and kdoc only
	- split out the sfc changes that generated discussion to
	  a single patch.

Jesse Brandeburg (10):
  i40e: prepare flash string in a simpler way
  intel-ethernet: clean up W=1 warnings in kdoc
  intel: handle unused assignments
  drivers/net/ethernet: clean up unused assignments
  drivers/net/ethernet: rid ethernet of no-prototype warnings
  drivers/net/ethernet: handle one warning explicitly
  drivers/net/ethernet: add some basic kdoc tags
  drivers/net/ethernet: remove incorrectly formatted doc
  sfc: fix kdoc warning
  drivers/net/ethernet: clean up mis-targeted comments

 drivers/net/ethernet/amazon/ena/ena_com.c     |   2 +-
 .../aquantia/atlantic/hw_atl/hw_atl_b0.c      |   2 +-
 drivers/net/ethernet/arc/emac_arc.c           |   2 +-
 .../net/ethernet/atheros/atl1c/atl1c_main.c   |   6 +-
 .../net/ethernet/atheros/atl1e/atl1e_main.c   |   7 +-
 drivers/net/ethernet/atheros/atlx/atl1.c      |   2 +-
 drivers/net/ethernet/atheros/atlx/atl2.c      |   6 +-
 .../net/ethernet/broadcom/bnx2x/bnx2x_cmn.c   |   2 +
 .../ethernet/broadcom/bnx2x/bnx2x_ethtool.c   |   6 +-
 .../net/ethernet/broadcom/bnx2x/bnx2x_main.c  |  12 +-
 .../net/ethernet/broadcom/bnx2x/bnx2x_sp.c    |  98 ++---
 drivers/net/ethernet/brocade/bna/bfa_cee.c    |  20 +-
 drivers/net/ethernet/brocade/bna/bfa_ioc.c    |   8 +-
 drivers/net/ethernet/brocade/bna/bnad.c       |   7 +-
 drivers/net/ethernet/cadence/macb_main.c      |   6 +-
 drivers/net/ethernet/cadence/macb_pci.c       |   2 +-
 drivers/net/ethernet/calxeda/xgmac.c          |   2 +
 .../ethernet/cavium/liquidio/cn68xx_device.c  |   1 +
 .../net/ethernet/cavium/liquidio/lio_core.c   |  92 ++---
 .../net/ethernet/cavium/liquidio/lio_main.c   | 351 +++++++++---------
 .../ethernet/cavium/liquidio/lio_vf_main.c    | 158 ++++----
 .../ethernet/cavium/liquidio/octeon_console.c |  12 +-
 .../ethernet/cavium/liquidio/octeon_device.c  |  13 +-
 .../ethernet/cavium/liquidio/octeon_droq.c    |   2 +-
 .../ethernet/cavium/liquidio/octeon_mailbox.c |   5 +-
 .../ethernet/cavium/liquidio/octeon_mem_ops.c |   1 +
 .../net/ethernet/chelsio/cxgb3/cxgb3_main.c   |   8 +-
 drivers/net/ethernet/chelsio/cxgb3/sge.c      |  28 +-
 drivers/net/ethernet/chelsio/cxgb3/t3_hw.c    |   5 +-
 drivers/net/ethernet/cisco/enic/enic_api.c    |   2 +-
 .../net/ethernet/cisco/enic/enic_ethtool.c    |   2 +-
 drivers/net/ethernet/cortina/gemini.c         |   8 +-
 drivers/net/ethernet/dec/tulip/de4x5.c        |   4 +-
 drivers/net/ethernet/dec/tulip/media.c        |   5 -
 drivers/net/ethernet/dnet.c                   |   8 +-
 drivers/net/ethernet/ethoc.c                  |   6 +-
 .../net/ethernet/freescale/dpaa2/dpaa2-eth.c  |   2 +-
 drivers/net/ethernet/freescale/fec_ptp.c      |   8 +-
 drivers/net/ethernet/freescale/fman/fman.c    |  14 +-
 .../net/ethernet/freescale/fman/fman_muram.c  |   6 +-
 .../net/ethernet/freescale/fman/fman_port.c   |  23 +-
 drivers/net/ethernet/freescale/fman/mac.c     |   4 +-
 drivers/net/ethernet/hisilicon/hns/hnae.c     |   2 +-
 .../net/ethernet/hisilicon/hns/hns_dsaf_mac.c |  34 +-
 .../ethernet/hisilicon/hns/hns_dsaf_main.c    | 148 ++++----
 .../ethernet/hisilicon/hns/hns_dsaf_misc.c    |   7 +-
 .../net/ethernet/hisilicon/hns/hns_dsaf_ppe.c |  17 +-
 .../net/ethernet/hisilicon/hns/hns_dsaf_rcb.c |   7 +-
 .../ethernet/hisilicon/hns/hns_dsaf_xgmac.c   |   3 +-
 drivers/net/ethernet/hisilicon/hns/hns_enet.c |   4 +-
 .../net/ethernet/hisilicon/hns/hns_ethtool.c  |  48 +--
 .../hisilicon/hns3/hns3pf/hclge_dcb.c         |   1 +
 drivers/net/ethernet/hisilicon/hns_mdio.c     |   3 +-
 .../net/ethernet/huawei/hinic/hinic_hw_cmdq.c |   2 +-
 .../net/ethernet/huawei/hinic/hinic_hw_dev.c  |   6 +-
 .../net/ethernet/huawei/hinic/hinic_hw_eqs.c  |   1 +
 .../net/ethernet/huawei/hinic/hinic_hw_if.c   |   1 +
 .../net/ethernet/huawei/hinic/hinic_hw_mgmt.c |   1 +
 .../net/ethernet/huawei/hinic/hinic_main.c    |   2 +-
 drivers/net/ethernet/intel/e100.c             |   8 +-
 drivers/net/ethernet/intel/e1000/e1000_hw.c   | 147 ++++----
 drivers/net/ethernet/intel/e1000/e1000_main.c |  39 +-
 .../net/ethernet/intel/e1000e/80003es2lan.c   |   1 -
 drivers/net/ethernet/intel/e1000e/ich8lan.c   |  16 +-
 drivers/net/ethernet/intel/e1000e/netdev.c    |  50 ++-
 drivers/net/ethernet/intel/e1000e/phy.c       |   3 +
 drivers/net/ethernet/intel/e1000e/ptp.c       |   2 +-
 drivers/net/ethernet/intel/i40e/i40e_client.c |   2 -
 drivers/net/ethernet/intel/i40e/i40e_common.c |   4 +-
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   8 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  17 +-
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   1 -
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |   7 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |   9 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  20 +-
 drivers/net/ethernet/intel/igb/e1000_82575.c  |   6 +-
 drivers/net/ethernet/intel/igb/e1000_i210.c   |   5 +-
 drivers/net/ethernet/intel/igb/e1000_mac.c    |   1 +
 drivers/net/ethernet/intel/igb/e1000_mbx.c    |   1 +
 drivers/net/ethernet/intel/igb/igb_main.c     |  28 +-
 drivers/net/ethernet/intel/igb/igb_ptp.c      |   8 +-
 drivers/net/ethernet/intel/igbvf/netdev.c     |  17 +-
 drivers/net/ethernet/intel/igc/igc_main.c     |   2 +-
 drivers/net/ethernet/intel/igc/igc_ptp.c      |   4 +-
 drivers/net/ethernet/intel/ixgb/ixgb_hw.c     | 135 ++++---
 drivers/net/ethernet/intel/ixgb/ixgb_main.c   |  17 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |   8 +-
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |   3 +-
 drivers/net/ethernet/marvell/mvneta.c         |   7 +-
 drivers/net/ethernet/marvell/pxa168_eth.c     |   3 +-
 drivers/net/ethernet/mellanox/mlx4/en_tx.c    |   2 +-
 drivers/net/ethernet/micrel/ksz884x.c         |  59 +--
 .../ethernet/microchip/encx24j600-regmap.c    |   2 +-
 drivers/net/ethernet/microchip/lan743x_main.c |   9 +-
 drivers/net/ethernet/natsemi/ns83820.c        |   6 +-
 drivers/net/ethernet/neterion/s2io.c          |  91 ++---
 .../net/ethernet/neterion/vxge/vxge-config.c  |   5 +-
 .../net/ethernet/neterion/vxge/vxge-ethtool.c |   2 +-
 .../net/ethernet/neterion/vxge/vxge-main.c    |  10 +-
 .../net/ethernet/neterion/vxge/vxge-traffic.c |  72 ++--
 .../oki-semi/pch_gbe/pch_gbe_ethtool.c        |   4 +-
 .../ethernet/oki-semi/pch_gbe/pch_gbe_main.c  |   5 +-
 .../ethernet/oki-semi/pch_gbe/pch_gbe_param.c |  14 +-
 .../net/ethernet/packetengines/yellowfin.c    |   2 +-
 .../net/ethernet/qlogic/netxen/netxen_nic.h   |   3 -
 .../qlogic/netxen/netxen_nic_ethtool.c        |   3 +
 .../ethernet/qlogic/qlcnic/qlcnic_83xx_hw.c   |   3 +-
 drivers/net/ethernet/qualcomm/emac/emac.c     |   1 +
 drivers/net/ethernet/realtek/8139cp.c         |   2 +
 drivers/net/ethernet/renesas/sh_eth.c         |  10 +
 .../net/ethernet/samsung/sxgbe/sxgbe_main.c   |  17 +-
 drivers/net/ethernet/sfc/falcon/farch.c       |  29 +-
 drivers/net/ethernet/sfc/falcon/rx.c          |   2 +
 drivers/net/ethernet/sfc/falcon/selftest.c    |   2 +-
 drivers/net/ethernet/sfc/mcdi.h               |   1 +
 drivers/net/ethernet/sfc/net_driver.h         |   2 +-
 drivers/net/ethernet/sfc/ptp.c                |   7 +-
 drivers/net/ethernet/sis/sis900.c             |   8 +-
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    |   2 +-
 .../net/ethernet/stmicro/stmmac/stmmac_main.c |  18 +-
 .../ethernet/stmicro/stmmac/stmmac_platform.c |   3 +-
 drivers/net/ethernet/sun/cassini.c            |   4 +-
 .../net/ethernet/synopsys/dwc-xlgmac-common.c |   2 +-
 drivers/net/ethernet/tehuti/tehuti.c          |  17 +-
 drivers/net/ethernet/ti/cpsw_new.c            |   2 -
 drivers/net/ethernet/ti/davinci_cpdma.c       |   2 +-
 drivers/net/ethernet/ti/davinci_emac.c        |  10 +-
 drivers/net/ethernet/ti/tlan.c                |   4 +-
 drivers/net/ethernet/via/via-rhine.c          |   2 +-
 drivers/net/ethernet/via/via-velocity.c       |  40 +-
 drivers/net/ethernet/xilinx/ll_temac_main.c   |  26 +-
 132 files changed, 1222 insertions(+), 1110 deletions(-)


base-commit: b55353e2cc1415c1ece3ae34a856309b40bb0b4b
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
