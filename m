Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9D67F1E53
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Nov 2023 21:56:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74C2E81D5F;
	Mon, 20 Nov 2023 20:56:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74C2E81D5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700513798;
	bh=IFBxkPe2DJAwnRVdPzv+eJ2k3v+MfLLNMg+dXYBss7M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jwq53Lgze5+mdWHqKbVASr1lev/wyaBCaNmuQ3LhJkSS8XLoXLdd5j0/W13bLVFtO
	 Cx+XRxzZw1D4FudJc/K3+RpMM87NrhaAyovWwr+bx9XubwJIGy4Tvy6qpcw+GQYZaO
	 ax9IuGiFSwm4l4rWnMvyRSXM5hKUDTnUvWdeWTRcvJDlfRGN+JqRPvqQLVztKdV37V
	 ndjVUOmu8B/gYNIvSpbl8WKYNXfqUIEi5QnvpqAXB0fBhBHKc7nUs0Iz7LhbXh3Iu4
	 +Dnr3PSz5CSFkGjomNbypRS82ip7/phYXKxhvfvfm2AxoTBOI8k2ZK7Ql17C91VDGx
	 zrYCN0vdJIv1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N7DCKK_YPGiM; Mon, 20 Nov 2023 20:56:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBDFD81D5C;
	Mon, 20 Nov 2023 20:56:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBDFD81D5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E44D1BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 20:56:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41ECA60F7E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 20:56:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41ECA60F7E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GEtpUrgRJ-XM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Nov 2023 20:56:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4148860F71
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 20:56:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4148860F71
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="391484216"
X-IronPort-AV: E=Sophos;i="6.04,214,1695711600"; d="scan'208";a="391484216"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 12:56:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="857106100"
X-IronPort-AV: E=Sophos;i="6.04,214,1695711600"; d="scan'208";a="857106100"
Received: from cchircul-mobl2.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.46.122])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 12:56:22 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 20 Nov 2023 13:56:07 -0700
Message-Id: <20231120205614.46350-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700513789; x=1732049789;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wGwsgnA/t7SrzMu/qCHumWhoQ9pMGfMRuWcha0iwNfg=;
 b=WMuNUeqgUb38JDyEykGdESnaxUyhKSpQPMgyv26AarIdSjnr3glTQ+oC
 oyu0MceDrDmoOUuPhnXY/roie7JPgeL1FHWaW/awMaktKVmQnb4t9mcpK
 EfM/7lxNe9Rmbwda5vU6NHAUzULgBBW15N4zDedCPyUZYhhJglVIDvsq1
 GPSNwL0S4seXpcvwTzAlK0ikLSSYZYshGchkj+dJEE+ssgnxeetrBfpqs
 jmpePsS2vxupBD7O0oSL1hvASwb1Mij/lDatGG6Tfi3BGd0eLmrJL81Bh
 5lPbXe9FXartIIlx4MBknA473PqNk3XVnA3nnzT3b1YRFOr8wt7znf6T7
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WMuNUeqg
Subject: [Intel-wired-lan] [PATCH net-next v6 0/7] Support symmetric-xor RSS
 hash
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 corbet@lwn.net, vladimir.oltean@nxp.com, gal@nvidia.com,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Patch 1 modifies the set_rxh ethtool API to take a pointer to struct
ethtool_rxfh instead of individual params. This will allow future 
changes to the struct without changing the API.

Patch 2 adds the support at the Kernel level, allowing the user to set a
symmetric-xor RSS hash for a netdevice via:

    # ethtool -X eth0 hfunc toeplitz symmetric-xor

and clears the flag via:

    # ethtool -X eth0 hfunc toeplitz

The "symmetric-xor" is set in a new "data" field in struct ethtool_rxfh.
Support for the new "symmetric-xor" flag will be later sent to the
"ethtool" user-space tool.

Patch 3 fixes a long standing bug with the ice hash function register
values. The bug has been benign for now since only (asymmetric) Toeplitz
hash (Zero) has been used.

Patches 4 and 5 lay some groundwork refactoring. While the first is
mainly cosmetic, the second is needed since there is no more room in the
previous 64-bit RSS profile ID for the symmetric attribute introduced in 
the next patch.

Finally, patches 6 and 7 add the symmetric-xor support for the ice 
(E800 PFs) and the iAVF drivers.

---
v6: switch user interface to "ethtool -X" (ethtool_rxfh) instead of
    "ethtool -N". Patch (1) is added to allow new params in the get/set_rxh
    ethtool API. Doc is updated in "Documentation/networking/scaling.rst"
    to specify how the "symmetric-xor" manipulates the input fields.

v5: move sanity checks from ethtool/ioctl.c to ice's and iavf's rxfnc
    drivers entries (patches 5 and 6).
    https://lore.kernel.org/netdev/20231018170635.65409-2-ahmed.zaki@intel.com/T/

v4: add a comment to "#define RXH_SYMMETRIC_XOR" (in uapi/linux/ethtool.h)
    https://lore.kernel.org/netdev/20231016154937.41224-1-ahmed.zaki@intel.com/T/

v3: rename "symmetric" to "symmetric-xor" and drop "Fixes" tag in patch 2.
v2: fixed a "Reviewed by" to "Reviewed-by", also need to cc maintainers.

Ahmed Zaki (5):
  net: ethtool: pass ethtool_rxfh to get/set_rxfh ethtool ops
  net: ethtool: add support for symmetric-xor RSS hash
  ice: fix ICE_AQ_VSI_Q_OPT_RSS_* register values
  ice: refactor the FD and RSS flow ID generation
  iavf: enable symmetric-xor RSS for Toeplitz hash function

Jeff Guo (1):
  ice: enable symmetric-xor RSS for Toeplitz hash function

Qi Zhang (1):
  ice: refactor RSS configuration

 Documentation/networking/scaling.rst          |  15 +
 drivers/net/ethernet/amazon/ena/ena_ethtool.c |  13 +-
 drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c  |  15 +-
 .../ethernet/aquantia/atlantic/aq_ethtool.c   |  17 +-
 .../ethernet/broadcom/bnx2x/bnx2x_ethtool.c   |  15 +-
 .../net/ethernet/broadcom/bnxt/bnxt_ethtool.c |  14 +-
 drivers/net/ethernet/broadcom/tg3.c           |  14 +-
 .../ethernet/cavium/thunder/nicvf_ethtool.c   |  15 +-
 .../ethernet/chelsio/cxgb4/cxgb4_ethtool.c    |  14 +-
 .../net/ethernet/cisco/enic/enic_ethtool.c    |  15 +-
 .../net/ethernet/emulex/benet/be_ethtool.c    |  15 +-
 .../ethernet/freescale/enetc/enetc_ethtool.c  |  12 +-
 .../ethernet/fungible/funeth/funeth_ethtool.c |  18 +-
 .../net/ethernet/hisilicon/hns/hns_ethtool.c  |  15 +-
 .../ethernet/hisilicon/hns3/hns3_ethtool.c    |  19 +-
 .../net/ethernet/huawei/hinic/hinic_ethtool.c |  20 +-
 .../net/ethernet/intel/fm10k/fm10k_ethtool.c  |  15 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  19 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |   5 +-
 .../net/ethernet/intel/iavf/iavf_adv_rss.c    |   8 +-
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |   3 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  60 ++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |   4 +
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  41 ++
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   8 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  74 ++-
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  35 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  44 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   4 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   7 +
 drivers/net/ethernet/intel/ice/ice_flow.c     | 482 +++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_flow.h     |  60 ++-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   4 +
 drivers/net/ethernet/intel/ice/ice_lib.c      | 116 ++---
 drivers/net/ethernet/intel/ice/ice_main.c     |  58 ++-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 105 +++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   1 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   1 +
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  35 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  19 +-
 drivers/net/ethernet/intel/igb/igb_ethtool.c  |  15 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c  |  16 +-
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  15 +-
 drivers/net/ethernet/intel/ixgbevf/ethtool.c  |   9 +-
 drivers/net/ethernet/marvell/mvneta.c         |  17 +-
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   |  17 +-
 .../marvell/octeontx2/nic/otx2_ethtool.c      |  14 +-
 .../net/ethernet/mellanox/mlx4/en_ethtool.c   |  20 +-
 drivers/net/ethernet/mellanox/mlx5/core/en.h  |   7 +-
 .../ethernet/mellanox/mlx5/core/en_ethtool.c  |  12 +-
 .../net/ethernet/microchip/lan743x_ethtool.c  |  14 +-
 .../ethernet/microsoft/mana/mana_ethtool.c    |  15 +-
 .../ethernet/netronome/nfp/nfp_net_ethtool.c  |  21 +-
 .../ethernet/pensando/ionic/ionic_ethtool.c   |  15 +-
 .../net/ethernet/qlogic/qede/qede_ethtool.c   |  14 +-
 drivers/net/ethernet/sfc/ethtool_common.c     |  15 +-
 drivers/net/ethernet/sfc/ethtool_common.h     |   8 +-
 drivers/net/ethernet/sfc/falcon/ethtool.c     |  17 +-
 .../net/ethernet/sfc/siena/ethtool_common.c   |  17 +-
 .../net/ethernet/sfc/siena/ethtool_common.h   |   7 +-
 .../ethernet/stmicro/stmmac/stmmac_ethtool.c  |  15 +-
 drivers/net/hyperv/netvsc_drv.c               |  15 +-
 drivers/net/virtio_net.c                      |  13 +-
 drivers/net/vmxnet3/vmxnet3_ethtool.c         |  14 +-
 include/linux/avf/virtchnl.h                  |  35 +-
 include/linux/ethtool.h                       |   8 +-
 include/uapi/linux/ethtool.h                  |  12 +-
 include/uapi/linux/ethtool_netlink.h          |   1 +
 net/ethtool/common.c                          |   2 +-
 net/ethtool/ioctl.c                           |  28 +-
 net/ethtool/rss.c                             |  14 +-
 74 files changed, 1263 insertions(+), 637 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
