Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19696810683
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 01:34:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 766DB40111;
	Wed, 13 Dec 2023 00:33:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 766DB40111
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702427638;
	bh=tRgezXlK5//zIlMxE119aKm1REBvJbCW2zjsFyBfnS4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=hWnh3+TAml3tU1oQMraBxA4A02W/Tp4BE9F5C8VwNfOd1pNkpS3ZRHHnVxJLIEtDF
	 n6IWk/Q3DxchY5NoJFQeYFkDLjcsnOaD+iX1ouheIJbOMG+cyJnh6Lp5ysRMcf3/P3
	 ElVS90OjAjCV5SKcEBQJqNNdoKEPKXYdVaBt1C72/de6R1Iw52bw131fnNTgG4jfLs
	 ucv0U7pY/6vM9WnST4ARV3a0FFb0HSI5azxnPTTOLFyqnjlR0dOu7Ty4wY/MgEmM2d
	 FL6gi+s3LlWfQ3sf9ln5nkZUalTuxCukqHr9eaOUpHDirglJIb2w+Gfj0YR/DLKRFD
	 OfPk6Z2FxQN+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TWzTwwJ9uU94; Wed, 13 Dec 2023 00:33:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6528A40147;
	Wed, 13 Dec 2023 00:33:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6528A40147
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B6181BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 00:33:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 22A0A41B86
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 00:33:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22A0A41B86
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YnLPRA6VjllL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 00:33:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF96241B77
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 00:33:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF96241B77
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="394642155"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="394642155"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:33:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="891822445"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="891822445"
Received: from epologov-mobl2.ccr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.49.124])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:33:40 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 12 Dec 2023 17:33:13 -0700
Message-Id: <20231213003321.605376-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702427627; x=1733963627;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kPjmAVEA4GSIrj+bcnfr4uXPYdsm3+SD6Y/qRUs2T7E=;
 b=nPhHEsXeVH/oFZXMBwIH13iDtejaJuUoPwC6SSWErQCJBnKC1Myf3KFn
 hUohweiDYxavYxdkLfbwtmlP4tqMbvb5Wx31YIL/+6KbwwcZwzI8HrVu2
 GAx/dnhR6F4dFDbgdRfMaKNBHsShmMfIW8gK3DUNimSnYKm3glIXclfrs
 L3POw+EnGU4M+Q737q5+lpl6S5iuu8MPQoKtkdHtRjvM1UysG8jkz0ehW
 8Ivn5FhEi3ZQtpVEPZKh3UqUiAApePA/8rEsrvhjhWmZKrru+eD/A3XFh
 5BQFvkYdg6LGmPViNhagdaQ9JynQFMB6blQJmB6eZfVekcF3dzlNWRrcW
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nPhHEsXe
Subject: [Intel-wired-lan] [PATCH net-next v9 0/8] Support symmetric-xor RSS
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
 Ahmed Zaki <ahmed.zaki@intel.com>, ecree.xilinx@gmail.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Patches 1 and 2 modify the get/set_rxh ethtool API to take a pointer to 
struct of parameters instead of individual params. This will allow future
changes to the uAPI-shared struct ethtool_rxfh without changing the
drivers' API.

Patch 3 adds the support at the Kernel level, allowing the user to set a
symmetric-xor RSS hash for a netdevice via:

    # ethtool -X eth0 hfunc toeplitz symmetric-xor

and clears the flag via:

    # ethtool -X eth0 hfunc toeplitz

The "symmetric-xor" is set in a new "input_xfrm" field in struct
ethtool_rxfh. Support for the new "symmetric-xor" flag will be later sent
to the "ethtool" user-space tool.

Patch 4 fixes a long standing bug with the ice hash function register
values. The bug has been benign for now since only (asymmetric) Toeplitz
hash (Zero) has been used.

Patches 5 and 6 lay some groundwork refactoring. While the first is
mainly cosmetic, the second is needed since there is no more room in the
previous 64-bit RSS profile ID for the symmetric attribute introduced in 
the next patch.

Finally, patches 7 and 8 add the symmetric-xor support for the ice 
(E800 PFs) and the iAVF drivers.

---
v9: - Remove the underscores from ethtool_rxfh_params fields (__u32 -> u32)
    - Restore single kzalloc's in ethtool_get/set_rxfh() (patch 1/8)

v8: - Fix build failures on patchwork CI (make allmodconfig).
    - Move the new new struct ethtool_rxfh_params from include/uapi/linux/
      ethtool.h to include/linux/ethtool.h.
    - Add cap_rss_ctx_supported to ice.
    https://lore.kernel.org/netdev/20231206233642.447794-8-ahmed.zaki@intel.com/T/

v7: - Use new struct ethtool_rxfh_params to pass arguments to set/get_rxfh
    - Remove get/set_rxfh_context functions and use a new capability to 
      indicate RSS context support (cap_rss_ctx_supported).
    - Move the sanity checks on the rxnfc fields when symmetric-xor is set
      back to core.
    - Add a new capability (cap_rss_sym_xor_supported) to indicate
      symmetric-xor support. Core returns -ENOTSUPP if the driver does not
      support symmetric-xor.
    - Rename the new struct ethtool_rxfh field to "input_xfrm" and
      update "Documentation/networking/ethtool-netlink.rst" and 
      "Documentation/netlink/specs/ethtool.yaml".
    - Add a comment on potential vulnerability of symmetric-xor in
      include/uapi/linux/ethtool.h.
    https://lore.kernel.org/netdev/20231205230049.18872-4-ahmed.zaki@intel.com/T/

v6: switch user interface to "ethtool -X" (ethtool_rxfh) instead of
    "ethtool -N". Patch (1) is added to allow new params in the get/set_rxh
    ethtool API. Doc is updated in "Documentation/networking/scaling.rst"
    to specify how the "symmetric-xor" manipulates the input fields.
    https://lore.kernel.org/netdev/20231120205614.46350-2-ahmed.zaki@intel.com/T/

v5: move sanity checks from ethtool/ioctl.c to ice's and iavf's rxfnc
    drivers entries (patches 5 and 6).
    https://lore.kernel.org/netdev/20231018170635.65409-2-ahmed.zaki@intel.com/T/

v4: add a comment to "#define RXH_SYMMETRIC_XOR" (in uapi/linux/ethtool.h)
    https://lore.kernel.org/netdev/20231016154937.41224-1-ahmed.zaki@intel.com/T/

v3: rename "symmetric" to "symmetric-xor" and drop "Fixes" tag in patch 2.
v2: fixed a "Reviewed by" to "Reviewed-by", also need to cc maintainers.

Ahmed Zaki (6):
  net: ethtool: pass a pointer to parameters to get/set_rxfh ethtool ops
  net: ethtool: get rid of get/set_rxfh_context functions
  net: ethtool: add support for symmetric-xor RSS hash
  ice: fix ICE_AQ_VSI_Q_OPT_RSS_* register values
  ice: refactor the FD and RSS flow ID generation
  iavf: enable symmetric-xor RSS for Toeplitz hash function

Jeff Guo (1):
  ice: enable symmetric-xor RSS for Toeplitz hash function

Qi Zhang (1):
  ice: refactor RSS configuration

 Documentation/netlink/specs/ethtool.yaml      |   4 +
 Documentation/networking/ethtool-netlink.rst  |   6 +-
 Documentation/networking/scaling.rst          |  15 +
 drivers/net/ethernet/amazon/ena/ena_ethtool.c |  28 +-
 drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c  |  33 +-
 .../ethernet/aquantia/atlantic/aq_ethtool.c   |  31 +-
 .../ethernet/broadcom/bnx2x/bnx2x_ethtool.c   |  25 +-
 .../net/ethernet/broadcom/bnxt/bnxt_ethtool.c |  28 +-
 drivers/net/ethernet/broadcom/tg3.c           |  22 +-
 .../ethernet/cavium/thunder/nicvf_ethtool.c   |  31 +-
 .../ethernet/chelsio/cxgb4/cxgb4_ethtool.c    |  24 +-
 .../net/ethernet/cisco/enic/enic_ethtool.c    |  25 +-
 .../net/ethernet/emulex/benet/be_ethtool.c    |  28 +-
 .../ethernet/freescale/enetc/enetc_ethtool.c  |  31 +-
 .../ethernet/fungible/funeth/funeth_ethtool.c |  40 +-
 .../net/ethernet/hisilicon/hns/hns_ethtool.c  |  17 +-
 .../ethernet/hisilicon/hns3/hns3_ethtool.c    |  23 +-
 .../net/ethernet/huawei/hinic/hinic_ethtool.c |  40 +-
 .../net/ethernet/intel/fm10k/fm10k_ethtool.c  |  26 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  38 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |   5 +-
 .../net/ethernet/intel/iavf/iavf_adv_rss.c    |   8 +-
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |   3 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  74 ++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |   4 +
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  41 ++
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   8 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 106 ++--
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
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  40 +-
 drivers/net/ethernet/intel/igb/igb_ethtool.c  |  27 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c  |  27 +-
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  35 +-
 drivers/net/ethernet/intel/ixgbevf/ethtool.c  |  27 +-
 drivers/net/ethernet/marvell/mvneta.c         |  25 +-
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   |  79 +--
 .../marvell/octeontx2/nic/otx2_ethtool.c      |  80 ++-
 .../net/ethernet/mellanox/mlx4/en_ethtool.c   |  40 +-
 drivers/net/ethernet/mellanox/mlx5/core/en.h  |   6 +-
 .../ethernet/mellanox/mlx5/core/en_ethtool.c  |  43 +-
 .../net/ethernet/microchip/lan743x_ethtool.c  |  34 +-
 .../ethernet/microsoft/mana/mana_ethtool.c    |  33 +-
 .../ethernet/netronome/nfp/nfp_net_ethtool.c  |  38 +-
 .../ethernet/pensando/ionic/ionic_ethtool.c   |  26 +-
 .../net/ethernet/qlogic/qede/qede_ethtool.c   |  32 +-
 drivers/net/ethernet/sfc/ef100_ethtool.c      |   3 +-
 drivers/net/ethernet/sfc/ethtool.c            |   3 +-
 drivers/net/ethernet/sfc/ethtool_common.c     | 126 ++---
 drivers/net/ethernet/sfc/ethtool_common.h     |  13 +-
 drivers/net/ethernet/sfc/falcon/ethtool.c     |  26 +-
 drivers/net/ethernet/sfc/siena/ethtool.c      |   3 +-
 .../net/ethernet/sfc/siena/ethtool_common.c   | 126 ++---
 .../net/ethernet/sfc/siena/ethtool_common.h   |  13 +-
 .../ethernet/stmicro/stmmac/stmmac_ethtool.c  |  31 +-
 drivers/net/hyperv/netvsc_drv.c               |  32 +-
 drivers/net/virtio_net.c                      |  29 +-
 drivers/net/vmxnet3/vmxnet3_ethtool.c         |  22 +-
 include/linux/avf/virtchnl.h                  |  35 +-
 include/linux/ethtool.h                       |  60 ++-
 include/uapi/linux/ethtool.h                  |  13 +-
 include/uapi/linux/ethtool_netlink.h          |   1 +
 net/ethtool/common.c                          |  12 +-
 net/ethtool/ioctl.c                           | 171 ++++---
 net/ethtool/rss.c                             |  24 +-
 79 files changed, 1817 insertions(+), 1238 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
