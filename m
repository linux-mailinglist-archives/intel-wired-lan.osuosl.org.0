Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E59F1D52CD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 17:02:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1397489915;
	Fri, 15 May 2020 15:02:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3jFMdoZr2I8Q; Fri, 15 May 2020 15:02:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA8A589935;
	Fri, 15 May 2020 15:02:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB2921BF27C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 15:02:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A7CDA87D26
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 15:02:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ya0P-ufeJPPW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 15:01:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5302187D39
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 15:01:59 +0000 (UTC)
IronPort-SDR: e/C/yIIpAL4kN2Yi0I2Ww8ID2HmhVIGSYBKENIMx9Qy9IgkEOGjtFzvut7lbwozF268h7AZxPU
 ENwxUdTuIqsA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 08:01:58 -0700
IronPort-SDR: RVZHOoWjgpdpN7sBhCtNocuPI0vsJakJ57pKj2REEXKt38ELNEglNlcoRlYntoYadkfnrVkOQF
 G9vm++dvCBDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,395,1583222400"; d="scan'208";a="438339660"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by orsmga005.jf.intel.com with ESMTP; 15 May 2020 08:01:58 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Thu, 14 May 2020 23:34:46 -0700
Message-Id: <20200515063500.48301-1-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [iecm/idpf V1 00/14] iecm/idpf series cover letter
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series introduces both the Intel Ethernet Common
Module and the Intel Data Plane Function.  The patches
also incorporate extended features and functionality
added in the virtchnl.h file.

The format of the series flow is to add the data set,
then introduce function stubs, and then introduce pieces
in large cohesive subjects or functionality.  This is to
allow for more in depth understanding and review of the
bigger picture as the series is reviewed.

Patch 13 adds the common module to the kernel build system,
and patch 14 adds the idpf driver which utilizes the common
module.

Patches:
  idpf: Introduce idpf driver
  iecm: Add framework set of header files
  iecm: Add TX/RX header files
  iecm: Common module introduction and function stubs
  iecm: Add basic netdevice functionality
  iecm: Implement mailbox functionality
  iecm: Implement virtchnl commands
  iecm: Implement vector allocation
  iecm: Init and allocate vport
  iecm: Deinit vport
  iecm: Add splitq TX/RX
  iecm: Add singleq TX/RX
  iecm: Add ethtool
  iecm: Add iecm to the kernel build system

Work done by:
  Signed-off-by: Alice Michael <alice.michael@intel.com>
  Signed-off-by: Alan Brady <Alan.Brady@intel.com>
  Signed-off-by: Phani Burra <phani.r.burra@intel.com>
  Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
  Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
  Signed-off-by: Pavan Kumar Linga <Pavan.Kumar.Linga@intel.com>
  Reviewed-by: Donald Skidmore <donald.c.skidmore@intel.com>
  Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
  Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>

 .../networking/device_drivers/intel/idpf.rst  |   47 +
 .../networking/device_drivers/intel/iecm.rst  |   91 +
 MAINTAINERS                                   |    2 +
 drivers/net/ethernet/intel/Kconfig            |   15 +
 drivers/net/ethernet/intel/Makefile           |    2 +
 drivers/net/ethernet/intel/idpf/Makefile      |   14 +
 drivers/net/ethernet/intel/idpf/idpf_dev.h    |   18 +
 drivers/net/ethernet/intel/idpf/idpf_devids.h |   10 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  139 +
 drivers/net/ethernet/intel/idpf/idpf_reg.c    |  152 +
 drivers/net/ethernet/intel/iecm/Makefile      |   21 +
 .../net/ethernet/intel/iecm/iecm_controlq.c   |  673 +++
 .../ethernet/intel/iecm/iecm_controlq_setup.c |  177 +
 .../net/ethernet/intel/iecm/iecm_ethtool.c    | 1119 +++++
 drivers/net/ethernet/intel/iecm/iecm_lib.c    | 1092 +++++
 drivers/net/ethernet/intel/iecm/iecm_main.c   |   51 +
 drivers/net/ethernet/intel/iecm/iecm_osdep.c  |   28 +
 .../ethernet/intel/iecm/iecm_singleq_txrx.c   |  890 ++++
 drivers/net/ethernet/intel/iecm/iecm_txrx.c   | 3959 +++++++++++++++++
 .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 2231 ++++++++++
 drivers/net/ethernet/intel/include/iecm.h     |  432 ++
 .../net/ethernet/intel/include/iecm_alloc.h   |   29 +
 .../ethernet/intel/include/iecm_controlq.h    |   95 +
 .../intel/include/iecm_controlq_api.h         |  223 +
 .../ethernet/intel/include/iecm_lan_pf_regs.h |  114 +
 .../ethernet/intel/include/iecm_lan_txrx.h    |  636 +++
 .../net/ethernet/intel/include/iecm_osdep.h   |   29 +
 .../net/ethernet/intel/include/iecm_txrx.h    |  610 +++
 .../net/ethernet/intel/include/iecm_type.h    |   47 +
 29 files changed, 12946 insertions(+)
 create mode 100644 Documentation/networking/device_drivers/intel/idpf.rst
 create mode 100644 Documentation/networking/device_drivers/intel/iecm.rst
 create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_dev.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_devids.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_reg.c
 create mode 100644 drivers/net/ethernet/intel/iecm/Makefile
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_controlq.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_controlq_setup.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_ethtool.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_lib.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_main.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_osdep.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_singleq_txrx.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_txrx.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
 create mode 100644 drivers/net/ethernet/intel/include/iecm.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_alloc.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_controlq.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_controlq_api.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_lan_pf_regs.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_lan_txrx.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_osdep.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_txrx.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_type.h

-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
