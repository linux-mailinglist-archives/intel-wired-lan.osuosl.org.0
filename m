Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 989C049EFC6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 01:34:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39C7C41BD7;
	Fri, 28 Jan 2022 00:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OSikvu3JsFD3; Fri, 28 Jan 2022 00:34:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2218241826;
	Fri, 28 Jan 2022 00:34:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 777F21C113E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 642C840493
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l70rDJX7PIzF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 00:34:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A57A400E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643330077; x=1674866077;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UlXNwzXsjLFHJ406H8zmgKfyR5Xnd+gHvrsE1NfhQYY=;
 b=FxjzZ/MXOSeuacqVfvkQh3bbH76hREE9cBfxnolsdcbYedyluYiSEgeD
 xut2cFF00xSVAOKZY7m5GjBx37xTd0ndIgxK2XSFeKMDRu9UKGBnvv70H
 HNu8bMejnncN4Emk8q/BLaF1E66J7qloBZKHkjMZBRVpaKfBhixuiX+Yy
 5/WsBTLQuegjrCsGV5fQ2pgqA1pgX2YdMAIhKYsTruisURbo8h4Os7l4l
 Dsk3+cS98+K1p3hWC4v2+07/J/z1EHZYs3uVbacc3w6c7zzWg2F3NzmeL
 YMIzrT83CSyAHxdGIUEdBBdPozZN+U+DutZqbREiM07aY0cviceDpgkq3 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="234380416"
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="234380416"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 16:34:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="563999689"
Received: from dev1-atbrady.jf.intel.com ([10.166.244.128])
 by orsmga001.jf.intel.com with ESMTP; 27 Jan 2022 16:34:25 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jan 2022 16:09:50 -0800
Message-Id: <20220128001009.721392-1-alan.brady@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 00/19] Add iecm and idpf
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

This series introduces both the Intel Ethernet Common Module and the
Intel Data Plane Function.  This also adds extended features and
functionality to virtchnl with virtchnl_2.h.
 
The format of the series generally follows the flow of driver init to
interface open. We go from probe into a hard reset followed by an init
task. From there the rest of the netdev_ops and data path are added.
Then lastly advanced features and idpf are introduced.

Currently this common layer (iecm) is initially only being used by only
the idpf driver (PF driver for SmartNIC).  However, the plan is to
eventually switch our iavf driver along with future drivers to use this
common module.  The hope is to better enable code sharing going forward
as well as support other developers writing drivers for our hardware

Alan Brady (17):
  virtchnl: Add new virtchnl2 ops
  iecm: add basic module init and documentation
  iecm: add probe and remove
  iecm: add api_init and controlq init
  iecm: add vport alloc and virtchnl messages
  iecm: add virtchnl messages for queues
  iecm: finish virtchnl messages
  iecm: add interrupts and configure netdev
  iecm: alloc vport TX resources
  iecm: alloc vport RX resources
  iecm: add start_xmit and set_rx_mode
  iecm: finish netdev_ops
  iecm: implement splitq napi_poll
  iecm: implement singleq napi_poll
  iecm: implement ethtool callbacks
  iecm: implement cloud filters
  idpf: introduce idpf driver

Haiyue Wang (2):
  iecm: implement flow director
  iecm: add advanced rss

 .../device_drivers/ethernet/intel/idpf.rst    |   47 +
 .../device_drivers/ethernet/intel/iecm.rst    |   93 +
 MAINTAINERS                                   |    1 +
 drivers/net/ethernet/intel/Kconfig            |   31 +
 drivers/net/ethernet/intel/Makefile           |    2 +
 drivers/net/ethernet/intel/idpf/Makefile      |   15 +
 drivers/net/ethernet/intel/idpf/idpf_dev.h    |   17 +
 drivers/net/ethernet/intel/idpf/idpf_devids.h |   10 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  140 +
 drivers/net/ethernet/intel/idpf/idpf_reg.c    |  130 +
 drivers/net/ethernet/intel/iecm/Makefile      |   21 +
 .../net/ethernet/intel/iecm/iecm_controlq.c   |  649 ++
 .../ethernet/intel/iecm/iecm_controlq_setup.c |  175 +
 .../net/ethernet/intel/iecm/iecm_ethtool.c    | 1332 ++++
 drivers/net/ethernet/intel/iecm/iecm_lib.c    | 5717 +++++++++++++++++
 drivers/net/ethernet/intel/iecm/iecm_main.c   |   40 +
 .../ethernet/intel/iecm/iecm_singleq_txrx.c   | 1229 ++++
 drivers/net/ethernet/intel/iecm/iecm_txrx.c   | 4577 +++++++++++++
 .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 4240 ++++++++++++
 drivers/net/ethernet/intel/include/iecm.h     |  973 +++
 .../ethernet/intel/include/iecm_controlq.h    |  117 +
 .../intel/include/iecm_controlq_api.h         |  185 +
 .../ethernet/intel/include/iecm_lan_pf_regs.h |  131 +
 .../ethernet/intel/include/iecm_lan_txrx.h    |  394 ++
 drivers/net/ethernet/intel/include/iecm_mem.h |   20 +
 .../net/ethernet/intel/include/iecm_txrx.h    |  733 +++
 include/linux/avf/virtchnl.h                  | 1507 ++++-
 include/linux/avf/virtchnl_2.h                | 1243 ++++
 include/linux/avf/virtchnl_lan_desc.h         |  603 ++
 29 files changed, 24255 insertions(+), 117 deletions(-)
 create mode 100644 Documentation/networking/device_drivers/ethernet/intel/idpf.rst
 create mode 100644 Documentation/networking/device_drivers/ethernet/intel/iecm.rst
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
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_singleq_txrx.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_txrx.c
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
 create mode 100644 drivers/net/ethernet/intel/include/iecm.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_controlq.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_controlq_api.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_lan_pf_regs.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_lan_txrx.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_mem.h
 create mode 100644 drivers/net/ethernet/intel/include/iecm_txrx.h
 create mode 100644 include/linux/avf/virtchnl_2.h
 create mode 100644 include/linux/avf/virtchnl_lan_desc.h

-- 
2.33.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
