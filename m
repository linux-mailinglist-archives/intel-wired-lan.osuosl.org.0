Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FFB6AEF0C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 19:20:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 583A540B70;
	Tue,  7 Mar 2023 18:20:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 583A540B70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678213204;
	bh=kWXTKfUbroMHBqBV0ZJWudvNrKPfiOFSvGgRI1ENi1U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7MoVApi/A7XKMSKH4TlExn3lCHrF9gGI1ax+YalG3qfX3wMVHEGjZEwcEHMMMhUOl
	 kZgKRAk8O2BcVLct7SBKhhz/gaRN//fB4zeHv99tUnh7vpYcsUwSKNuy6ALQYkJ34F
	 J/oYdAT9J+sG2H1fsBDvufqWhng8XkaDFlThUvax+rLwvmhuNBy/qnXb1HGQYdQ4xx
	 9j/MJbQY1Xc3T9NCm9zLqU60pJzmyrbn+71aQSs0kDONeWvZu8zg9CRxFDkF3xI5/4
	 WEMBormNPUs+sP4EGexJ2hshk6zVPvQg0TALf69OldeEuHgT2iZEyvZCMMGBDluUGM
	 hru3hUNRhZN6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jx4dGokABqbt; Tue,  7 Mar 2023 18:20:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4067E40B53;
	Tue,  7 Mar 2023 18:20:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4067E40B53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6362F1BF59F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 18:19:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4459C81425
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 18:19:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4459C81425
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p1A-T5-FdJ5V for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 18:19:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AF4581424
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2AF4581424
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 18:19:57 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 4E4F6B8184E;
 Tue,  7 Mar 2023 18:19:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B55D5C4339B;
 Tue,  7 Mar 2023 18:19:52 +0000 (UTC)
From: Bjorn Helgaas <helgaas@kernel.org>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue,  7 Mar 2023 12:19:11 -0600
Message-Id: <20230307181940.868828-1-helgaas@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1678213193;
 bh=BcUGeMLEm0LPA6u+zuE2Qt4EJaLi1EQErnMdvMFu038=;
 h=From:To:Cc:Subject:Date:From;
 b=Whku19nSoWJzSWst16iQ++EOjtE1aPFEt2JszLF1tFs63JeCm4VO4EsXwgvo6/KR3
 59Jlp8PnNNm/2y/NbTduduRcI8Ji6M2ya5sAwq2K59DL+Gau83IZj9jdT+TXroDumo
 JlNPIuMeaiggrYss3rnwhkZhB9SW9xD+867XomDVbhR//JWWjZgCjaWmMMwRCkHKeM
 VRzo+s6KaJPuaDTWFR5t9yA29CfB6xFUP6mDo2lDnMBEiV1QGXYHTYuhlv/DgzYCGi
 olyNFfyuxE1EY6VOUxsgwxmdDTvzhRZLwlO8wwmyD5AMQ+taDMuIFKJCQHrtWpYu07
 S72s7z6mrqPKw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Whku19nS
Subject: [Intel-wired-lan] [PATCH 00/28] PCI/AER: Remove redundant Device
 Control Error Reporting Enable
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
Cc: Ajit Khaparde <ajit.khaparde@broadcom.com>,
 Chris Snook <chris.snook@gmail.com>,
 Somnath Kotur <somnath.kotur@broadcom.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Manish Chopra <manishc@marvell.com>,
 Rahul Verma <rahulv@marvell.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, intel-wired-lan@lists.osuosl.org,
 Veerasenareddy Burru <vburru@marvell.com>,
 Martin Habets <habetsm.xilinx@gmail.com>,
 Mengyuan Lou <mengyuanlou@net-swift.com>,
 Abhijit Ayarekar <aayarekar@marvell.com>, Shahed Shaikh <shshaikh@marvell.com>,
 Ariel Elior <aelior@marvell.com>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Michael Chan <michael.chan@broadcom.com>,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
 Rasesh Mody <rmody@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Edward Cree <ecree.xilinx@gmail.com>,
 Raju Rangoju <rajur@chelsio.com>, Dimitris Michailidis <dmichail@fungible.com>,
 Sudarsana Kalluru <skalluru@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bjorn Helgaas <bhelgaas@google.com>

Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is native"),
which appeared in v6.0, the PCI core has enabled PCIe error reporting for
all devices during enumeration.

Remove driver code to do this and remove unnecessary includes of
<linux/aer.h> from several other drivers.

Intel folks, sorry that I missed removing the <linux/aer.h> includes in the
first series.


Bjorn Helgaas (28):
  alx: Drop redundant pci_enable_pcie_error_reporting()
  be2net: Drop redundant pci_enable_pcie_error_reporting()
  bnx2: Drop redundant pci_enable_pcie_error_reporting()
  bnx2x: Drop redundant pci_enable_pcie_error_reporting()
  bnxt: Drop redundant pci_enable_pcie_error_reporting()
  cxgb4: Drop redundant pci_enable_pcie_error_reporting()
  net/fungible: Drop redundant pci_enable_pcie_error_reporting()
  net: hns3: remove unnecessary aer.h include
  netxen_nic: Drop redundant pci_enable_pcie_error_reporting()
  octeon_ep: Drop redundant pci_enable_pcie_error_reporting()
  qed: Drop redundant pci_enable_pcie_error_reporting()
  net: qede: Remove unnecessary aer.h include
  qlcnic: Drop redundant pci_enable_pcie_error_reporting()
  qlcnic: Remove unnecessary aer.h include
  sfc: Drop redundant pci_enable_pcie_error_reporting()
  sfc: falcon: Drop redundant pci_enable_pcie_error_reporting()
  sfc/siena: Drop redundant pci_enable_pcie_error_reporting()
  sfc_ef100: Drop redundant pci_disable_pcie_error_reporting()
  net: ngbe: Drop redundant pci_enable_pcie_error_reporting()
  net: txgbe: Drop redundant pci_enable_pcie_error_reporting()
  e1000e: Remove unnecessary aer.h include
  fm10k: Remove unnecessary aer.h include
  i40e: Remove unnecessary aer.h include
  iavf: Remove unnecessary aer.h include
  ice: Remove unnecessary aer.h include
  igb: Remove unnecessary aer.h include
  igc: Remove unnecessary aer.h include
  ixgbe: Remove unnecessary aer.h include

 drivers/net/ethernet/atheros/alx/main.c       |  4 ----
 drivers/net/ethernet/broadcom/bnx2.c          | 21 -------------------
 drivers/net/ethernet/broadcom/bnx2.h          |  1 -
 drivers/net/ethernet/broadcom/bnx2x/bnx2x.h   |  1 -
 .../net/ethernet/broadcom/bnx2x/bnx2x_main.c  | 19 -----------------
 drivers/net/ethernet/broadcom/bnxt/bnxt.c     |  4 ----
 .../net/ethernet/chelsio/cxgb4/cxgb4_main.c   |  4 ----
 drivers/net/ethernet/emulex/benet/be_main.c   |  8 -------
 .../net/ethernet/fungible/funcore/fun_dev.c   |  5 -----
 .../net/ethernet/hisilicon/hns3/hns3_enet.c   |  1 -
 drivers/net/ethernet/intel/e1000e/netdev.c    |  1 -
 drivers/net/ethernet/intel/fm10k/fm10k_pci.c  |  1 -
 drivers/net/ethernet/intel/i40e/i40e.h        |  1 -
 drivers/net/ethernet/intel/iavf/iavf.h        |  1 -
 drivers/net/ethernet/intel/ice/ice.h          |  1 -
 drivers/net/ethernet/intel/igb/igb_main.c     |  1 -
 drivers/net/ethernet/intel/igc/igc_main.c     |  1 -
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 -
 .../ethernet/marvell/octeon_ep/octep_main.c   |  4 ----
 .../ethernet/qlogic/netxen/netxen_nic_main.c  | 10 +--------
 drivers/net/ethernet/qlogic/qed/qed_main.c    |  9 --------
 drivers/net/ethernet/qlogic/qede/qede_main.c  |  1 -
 .../ethernet/qlogic/qlcnic/qlcnic_83xx_hw.c   |  1 -
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  4 ----
 .../net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c |  1 -
 drivers/net/ethernet/sfc/ef100.c              |  3 ---
 drivers/net/ethernet/sfc/efx.c                |  5 -----
 drivers/net/ethernet/sfc/falcon/efx.c         |  9 --------
 drivers/net/ethernet/sfc/siena/efx.c          |  5 -----
 drivers/net/ethernet/wangxun/ngbe/ngbe_main.c |  4 ----
 .../net/ethernet/wangxun/txgbe/txgbe_main.c   |  5 -----
 31 files changed, 1 insertion(+), 136 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
