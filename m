Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 129D37F3814
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 22:20:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 984338133C;
	Tue, 21 Nov 2023 21:20:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 984338133C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700601616;
	bh=kEkGTwwtsUNNw4s7Klm5BlUFIwbWBK3VwAbqD+2ET3s=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Zugsizw6WSz5wTOKql0EGSs1F3iJtJvJ80+jJaKVwgdmlaHDBybSd66MgJ8qRyfSN
	 3Wt9aJvQptPSQg9M3aSBWtYTjUA4X+py2A2MZv3iH0OVjBAlf7YFRYnT/zRdWkx3Ty
	 qVUmlL8cqjOuf2dzspCjiRNDkwRHGqUhBqStsBn+AhQtt0dIxW+aREzHYJx6o/ppsI
	 VsqPqhsc6LkaErqlffVgfFAltCxpd+WL5Pi5GGfWMLOD4xzHreK5uOsIYhB16K50Me
	 UE9MpjzSm/qLxdujHwQpjtRDyP1bx98qAlyCTuNVCE9JcoOxrJJi4dB7tE8upYaQIa
	 CbN5RgRQrnbyQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kFz9haqlp-Gv; Tue, 21 Nov 2023 21:20:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3780880BEE;
	Tue, 21 Nov 2023 21:20:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3780880BEE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB6321BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 61D0E40E46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61D0E40E46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9x0J5lZsqjXy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 21:19:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B995F4087F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B995F4087F
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="423022063"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="423022063"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="716630528"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="716630528"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:37 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 13:19:08 -0800
Message-Id: <20231121211921.19834-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700601580; x=1732137580;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7Qft3Kif2jDd7FcxoyFTaYULEq5BlIfAq0P2rkH/uL0=;
 b=me0iUh3dXMuRK+X8Nba9wgEe96ty4iU1UZ13Mb4Euv4EeZAFduuSlhuZ
 t7hwspCbmxzJJjMOeIbTfjT9CJoRrGkgaQw4eoC9AU/9EGVtMAmoY/98G
 +1UF8Vt4ZxcnnZcCIYb1ZRi9W3yxHurIY2reNOsWWWtudsZiAYP4cl0f2
 p4Q+KfJTdwMEyaaH8cO93UXkCAUO8/pX/8DO7qcWA2OW1DTBgLhfVGqAT
 3d6wmyhEFPzjVVbfVtMWDcJ7PCR2xcSxtuTKisR2q1+Aq8jH4vPYnW+GU
 fc5ASzXJSOgXuEBNXe5iQCsH4N2lWwBzjs7fNuaN2ITgFcNxGrqX5xLKx
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=me0iUh3d
Subject: [Intel-wired-lan] [PATCH iwl-next v1 00/13] intel: use FIELD_PREP
 and FIELD_GET
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After repeatedly getting review comments on new patches, and sporadic
patches to fix parts of our drivers, we should just convert the Intel code
to use FIELD_PREP() and FIELD_GET().  It's then "common" in the code and
hopefully future change-sets will see the context and do-the-right-thing.

This conversion was done with a coccinelle script which is mentioned in the
commit messages. Generally there were only a couple conversions that were
"undone" after the automatic changes because they tried to convert a
non-contiguous mask.

Patch 1 is required at the beginning of this series to fix a "forever"
issue in the e1000e driver that fails the compilation test after conversion
because the shift / mask was out of range.

The second patch just adds all the new #includes in one go.

The patch titled: "ice: fix pre-shifted bit usage" is needed to allow the
use of the FIELD_* macros and fix up the unexpected "shifts included"
defines found while creating this series.

The rest are the conversion to use FIELD_PREP()/FIELD_GET().

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Jesse Brandeburg (13):
  e1000e: make lost bits explicit
  intel: add bit macro includes where needed
  intel: legacy: field prep conversion
  i40e: field prep conversion
  iavf: field prep conversion
  ice: field prep conversion
  ice: fix pre-shifted bit usage
  igc: field prep conversion
  intel: legacy: field get conversion
  igc: field get conversion
  i40e: field get conversion
  iavf: field get conversion
  ice: field get conversion

 drivers/net/ethernet/intel/e1000/e1000_hw.c   |  46 ++-
 .../net/ethernet/intel/e1000e/80003es2lan.c   |  23 +-
 drivers/net/ethernet/intel/e1000e/82571.c     |   3 +-
 drivers/net/ethernet/intel/e1000e/ethtool.c   |   7 +-
 drivers/net/ethernet/intel/e1000e/ich8lan.c   |  18 +-
 drivers/net/ethernet/intel/e1000e/mac.c       |   8 +-
 drivers/net/ethernet/intel/e1000e/netdev.c    |  11 +-
 drivers/net/ethernet/intel/e1000e/phy.c       |  24 +-
 drivers/net/ethernet/intel/fm10k/fm10k_pf.c   |   7 +-
 drivers/net/ethernet/intel/fm10k/fm10k_vf.c   |  10 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 140 ++++-----
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    | 276 +++++++-----------
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   3 +-
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   4 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |   7 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  85 +++---
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  14 +-
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   4 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  70 ++---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  27 +-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    |   3 +-
 drivers/net/ethernet/intel/iavf/iavf_common.c |  34 +--
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |   8 +-
 drivers/net/ethernet/intel/iavf/iavf_fdir.c   |   3 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |  21 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  18 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |  32 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  38 ++-
 drivers/net/ethernet/intel/ice/ice_dcb.c      |  77 ++---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c   |   2 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   4 +-
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |   3 +-
 drivers/net/ethernet/intel/ice/ice_fdir.c     |  69 ++---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   8 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  64 ++--
 drivers/net/ethernet/intel/ice/ice_main.c     |  48 ++-
 drivers/net/ethernet/intel/ice/ice_nvm.c      |  15 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  13 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    |   3 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  41 +--
 drivers/net/ethernet/intel/ice/ice_switch.c   |  61 ++--
 drivers/net/ethernet/intel/ice/ice_txrx.c     |   6 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  14 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  15 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |  35 +--
 drivers/net/ethernet/intel/igb/e1000_82575.c  |  29 +-
 drivers/net/ethernet/intel/igb/e1000_i210.c   |  19 +-
 drivers/net/ethernet/intel/igb/e1000_mac.c    |   7 +-
 drivers/net/ethernet/intel/igb/e1000_nvm.c    |  18 +-
 drivers/net/ethernet/intel/igb/e1000_phy.c    |  17 +-
 drivers/net/ethernet/intel/igb/igb_ethtool.c  |  11 +-
 drivers/net/ethernet/intel/igb/igb_main.c     |  13 +-
 drivers/net/ethernet/intel/igbvf/mbx.c        |   1 +
 drivers/net/ethernet/intel/igbvf/netdev.c     |  33 +--
 drivers/net/ethernet/intel/igc/igc_base.c     |   6 +-
 drivers/net/ethernet/intel/igc/igc_i225.c     |   6 +-
 drivers/net/ethernet/intel/igc/igc_main.c     |  10 +-
 drivers/net/ethernet/intel/igc/igc_phy.c      |   5 +-
 .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |   2 +-
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   |  30 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c |   4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |   8 +-
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |   8 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |   8 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |  19 +-
 include/linux/avf/virtchnl.h                  |   1 +
 69 files changed, 705 insertions(+), 978 deletions(-)

-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
