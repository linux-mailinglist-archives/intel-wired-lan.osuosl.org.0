Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C834266A19
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 23:34:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F20218765F;
	Fri, 11 Sep 2020 21:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XQYqQNfjDHJL; Fri, 11 Sep 2020 21:34:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C3C0875F6;
	Fri, 11 Sep 2020 21:34:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0263B1BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 21:34:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EE6B4874BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 21:34:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oNPKZIJnYZTE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 21:34:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D81AB874AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 21:34:09 +0000 (UTC)
IronPort-SDR: nZGXgoIRqo8wYFF4B0V19GUqzYjMJLrw3SZEyPu/XbB2jhz2PbosFgFv+QtXSLvR3GKxoI9HPo
 807suc7Ws0Jw==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="156306082"
X-IronPort-AV: E=Sophos;i="5.76,417,1592895600"; d="scan'208";a="156306082"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 14:34:07 -0700
IronPort-SDR: e8FXOrcrTkIuyS72dqB6sdKM/KvMfp2AqBqUQ9K/8ftDjVOesN71p64Fh7PVlpGS5XRcjqh5ta
 E7KyCCpGMSAw==
X-IronPort-AV: E=Sophos;i="5.76,417,1592895600"; d="scan'208";a="450118909"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.209.99.126])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 14:34:07 -0700
Date: Fri, 11 Sep 2020 14:34:05 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20200911143405.00004085@intel.com>
In-Reply-To: <20200911131238.1069129c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911075515.6d81066b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20200911120005.00000178@intel.com>
 <20200911131238.1069129c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 00/11] make
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jakub Kicinski wrote:

> Yeah, maybe you need COMPILE_TEST? (full list of the warnings triggered
> by the last patch at the end of the email)

Ah, good idea, I checked and I have that set, however, I understand
what's going on now.
 
> > but I'd like to target the actual job you're running and use that as
> > the short-term goal.
> 
> If the code is of any use:
> 
> https://github.com/kuba-moo/nipa
> 
> But it expects to run against a patchwork instance.

Thanks! that's interesting on it's own!

> 
> > Also, if you have any comments about the removal of the lvalue from
> > some of the register read operations, I figure that is the riskiest
> > part of all this.
> 
> Nothing looked suspicious to me. Besides if the compiler is warning that
> the variable is unused I'm pretty sure it will optimize that variable
> out, anyway so machine code shouldn't change with this series.

Good point, I'll check that.
 
 
> ../drivers/net/ethernet/atheros/atlx/atl1.c:1999:26: warning: cast to restricted __le16
> ../drivers/net/ethernet/atheros/atlx/atl1.c:2060:33: warning: cast to restricted __le16
> ../drivers/net/ethernet/atheros/atlx/atl1.c:2125:45: warning: invalid assignment: |=
> ../drivers/net/ethernet/atheros/atlx/atl1.c:2125:45:    left side has type restricted __le32

<snip>

If I'm not mistaken *all* the warnings you had listed are from C=1
(sparse) which would be best fixed with a second set of patches. This
set of patches only aimed to get rid of the W=1 (gcc warnings and kdoc
warnings from scripts/kernel-doc)

If you run the commands separately you'll see what I mean.
make W=1 M=drivers/net/ethernet
make C=2 M=drivers/net/ethernet

C=2 will force the sparse check but unfortunately will also rebuild
everything again.

I see about 1188 unique sparse warnings in drivers/net/ethernet and
only 16 unique errors from sparse.  It's a lot but fixable. However my
experience with these warnings is that I could break something in
fixing them on drivers I can't test.

I just did some spelunking on the sparse warnings, there are only 82
different ones (many are repeated).  About half are context
imbalances where a lock maybe isn't released. I would bet a bunch are
undetected bugs.

TL;DR

Here is a list of driver files with sparse warnings from C=1, maybe we
can encourage some others to help me fix them?

drivers/net/ethernet/3com/3c509.c
drivers/net/ethernet/3com/3c574_cs.c
drivers/net/ethernet/3com/3c589_cs.c
drivers/net/ethernet/3com/3c59x.c
drivers/net/ethernet/3com/typhoon.c
drivers/net/ethernet/8390/axnet_cs.c
drivers/net/ethernet/8390/ne2k-pci.c
drivers/net/ethernet/8390/pcnet_cs.c
drivers/net/ethernet/adaptec/starfire.c
drivers/net/ethernet/alacritech/slicoss.c
drivers/net/ethernet/alteon/acenic.c
drivers/net/ethernet/amd/pcnet32.c
drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c
drivers/net/ethernet/arc/emac_main.c
drivers/net/ethernet/atheros/alx/main.c
drivers/net/ethernet/atheros/atl1c/atl1c_hw.c
drivers/net/ethernet/atheros/atl1c/atl1c_main.c
drivers/net/ethernet/atheros/atl1e/atl1e_main.c
drivers/net/ethernet/atheros/atlx/atl1.c
drivers/net/ethernet/broadcom/bnx2.c
drivers/net/ethernet/broadcom/bnx2x/bnx2x_link.c
drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c
drivers/net/ethernet/broadcom/cnic.c
drivers/net/ethernet/broadcom/tg3.c
drivers/net/ethernet/brocade/bna/bfa_cee.c
drivers/net/ethernet/brocade/bna/bfa_ioc.c
drivers/net/ethernet/brocade/bna/bfa_ioc.h
drivers/net/ethernet/brocade/bna/bfa_msgq.c
drivers/net/ethernet/brocade/bna/bnad.c
drivers/net/ethernet/brocade/bna/bna_enet.c
drivers/net/ethernet/brocade/bna/bna_tx_rx.c
drivers/net/ethernet/cadence/macb_main.c
drivers/net/ethernet/cavium/liquidio/cn23xx_pf_device.c
drivers/net/ethernet/cavium/liquidio/cn23xx_vf_device.c
drivers/net/ethernet/cavium/liquidio/lio_core.c
drivers/net/ethernet/cavium/liquidio/lio_main.c
drivers/net/ethernet/cavium/liquidio/lio_vf_main.c
drivers/net/ethernet/cavium/liquidio/lio_vf_rep.c
drivers/net/ethernet/cavium/liquidio/octeon_mailbox.c
drivers/net/ethernet/cavium/liquidio/request_manager.c
drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c
drivers/net/ethernet/chelsio/cxgb3/sge.c
drivers/net/ethernet/chelsio/cxgb3/t3_hw.c
drivers/net/ethernet/chelsio/cxgb4vf/sge.c
drivers/net/ethernet/chelsio/cxgb/sge.c
drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_cm.c
drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c
drivers/net/ethernet/cisco/enic/enic_ethtool.c
drivers/net/ethernet/cisco/enic/enic_main.c
drivers/net/ethernet/cisco/enic/enic_pp.c
drivers/net/ethernet/cisco/enic/vnic_vic.c
drivers/net/ethernet/dlink/dl2k.c
drivers/net/ethernet/dlink/sundance.c
drivers/net/ethernet/emulex/benet/be_cmds.c
drivers/net/ethernet/emulex/benet/be_main.c
drivers/net/ethernet/ethoc.c
drivers/net/ethernet/freescale/dpaa2/dpmac.c
drivers/net/ethernet/freescale/enetc/enetc_ethtool.c
drivers/net/ethernet/freescale/enetc/enetc_hw.h
drivers/net/ethernet/freescale/enetc/enetc_qos.c
drivers/net/ethernet/freescale/fsl_pq_mdio.c
drivers/net/ethernet/freescale/gianfar.c
drivers/net/ethernet/freescale/xgmac_mdio.c
drivers/net/ethernet/huawei/hinic/hinic_common.c
drivers/net/ethernet/huawei/hinic/hinic_hw_api_cmd.c
drivers/net/ethernet/huawei/hinic/hinic_hw_cmdq.c
drivers/net/ethernet/huawei/hinic/hinic_hw_eqs.c
drivers/net/ethernet/huawei/hinic/hinic_hw_io.c
drivers/net/ethernet/huawei/hinic/hinic_hw_mbox.c
drivers/net/ethernet/huawei/hinic/hinic_hw_qp.c
drivers/net/ethernet/huawei/hinic/hinic_hw_wq.c
drivers/net/ethernet/huawei/hinic/hinic_main.c
drivers/net/ethernet/huawei/hinic/hinic_port.c
drivers/net/ethernet/huawei/hinic/hinic_rx.c
drivers/net/ethernet/huawei/hinic/hinic_tx.c
drivers/net/ethernet/intel/e1000/e1000_ethtool.c
drivers/net/ethernet/intel/e100.c
drivers/net/ethernet/intel/fm10k/fm10k_pci.c
drivers/net/ethernet/intel/i40e/i40e_main.c
drivers/net/ethernet/intel/i40e/i40e_txrx.c
drivers/net/ethernet/intel/i40e/i40e_xsk.c
drivers/net/ethernet/intel/igb/igb_ethtool.c
drivers/net/ethernet/intel/igb/igb_main.c
drivers/net/ethernet/intel/igb/igb_ptp.c
drivers/net/ethernet/intel/igbvf/netdev.c
drivers/net/ethernet/intel/igc/igc_dump.c
drivers/net/ethernet/intel/igc/igc_ethtool.c
drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
drivers/net/ethernet/jme.c
drivers/net/ethernet/marvell/mv643xx_eth.c
drivers/net/ethernet/marvell/mvneta.c
drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
drivers/net/ethernet/marvell/octeontx2/af/rvu.c
drivers/net/ethernet/marvell/octeontx2/af/rvu_npc.c
drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.c
drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.h
drivers/net/ethernet/marvell/octeontx2/nic/otx2_pf.c
drivers/net/ethernet/marvell/octeontx2/nic/otx2_txrx.c
drivers/net/ethernet/marvell/skge.c
drivers/net/ethernet/marvell/sky2.c
drivers/net/ethernet/micrel/ks8851_par.c
drivers/net/ethernet/micrel/ksz884x.c
drivers/net/ethernet/myricom/myri10ge/myri10ge.c
drivers/net/ethernet/natsemi/ns83820.c
drivers/net/ethernet/neterion/s2io.c
drivers/net/ethernet/neterion/vxge/vxge-config.c
drivers/net/ethernet/neterion/vxge/vxge-main.c
drivers/net/ethernet/nvidia/forcedeth.c
drivers/net/ethernet/nxp/lpc_eth.c
drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c
drivers/net/ethernet/packetengines/hamachi.c
drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c
drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c
drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c
drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c
drivers/net/ethernet/qlogic/qed/qed_mcp.c
drivers/net/ethernet/qualcomm/emac/emac-mac.c
drivers/net/ethernet/qualcomm/qca_7k_common.c
drivers/net/ethernet/realtek/8139too.c
drivers/net/ethernet/renesas/sh_eth.c
drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
drivers/net/ethernet/stmicro/stmmac/dwmac-anarion.c
drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c
drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c
drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
drivers/net/ethernet/sun/cassini.c
drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c
drivers/net/ethernet/ti/tlan.c
drivers/net/ethernet/via/via-rhine.c
drivers/net/ethernet/via/via-velocity.c
drivers/net/ethernet/via/via-velocity.h
drivers/net/ethernet/xilinx/ll_temac_main.c
drivers/net/ethernet/xilinx/xilinx_axienet_main.c

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
