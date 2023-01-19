Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C8C672DF0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 02:17:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 805318218D;
	Thu, 19 Jan 2023 01:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 805318218D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674091040;
	bh=8cpJ4zWXYnP03MuUcmGKpzBaDxr+nicOVJAv7FcLc/I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xJq5iCmcb3j3S/8/ZxGMrnRQIs2bR3BWH7BCAY2tSrV8LLOnI5zTb/7ZUg9ThU0Ok
	 oFqzE2S4JwTbN7BLNeD9Em16NgSIIF77UnRqbDXYBMHnx5aE/fJCr4EIZ7oVJaMveo
	 OPqy6R0z4eRNIiQjfoaf48D/QvQwwo4OdNZTWuEM3qUosNgPtQMH8VoEibXedqqcIW
	 lCyDdL9iXIDNIER4aHs5cxbsaDUIHmrktdSTFOkNEJOIpiVv35SXr23bhwGn3dIWTJ
	 elhBIrsm6TcHPCdH1pSpJ2me/fKOfXCL1bifm7Z0itcDZdnROkQJWWriK9fDEw/zgm
	 YiAQXowVRzaow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wvmuhWIDTh_0; Thu, 19 Jan 2023 01:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6282D821BE;
	Thu, 19 Jan 2023 01:17:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6282D821BE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 189311BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 11C5341929
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11C5341929
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mm5_N3yoHK6r for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 01:17:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74BC84191B
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 74BC84191B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="304840720"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304840720"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="783881854"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="783881854"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 18 Jan 2023 17:16:40 -0800
Message-Id: <20230119011653.311675-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674091024; x=1705627024;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=d9nvFzHSbzIwDT5PKzYCelc++QA1mcyU6vO1PTbz6bM=;
 b=S2FlK5CyumxwsfdsLSgt0jFKlPgomOyiz6p2003LrtWi8eDFJnyA0IQg
 AUb5qWVq25V+WxuUebJ1eNxdjm4at0+87JvCgHbw0qtxsg8NZXqN0UHQr
 KuZT2Cnv0WlPhxI0SLSoUXHYOo4X0KeniGJi+yFVqHY9VG89SUpQ6Hruf
 uO4Hg6tPIEQocZWoiuXS2oM3Ofal0o6J0ArD7KYBoCCVbZgfTny17jAUQ
 zkyUeOp7u2Yf4n7CfXr1r/JC3GfWuCgzG+JAIq5GaWubbYXFoboDpS2WZ
 ygkMVV/gv9BTXlAWxL3eH3b4Nn680BPunZprOIImQEbilVL+nBKI3HukQ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S2FlK5Cy
Subject: [Intel-wired-lan] [PATCH net-next v2 00/13] ice: various
 virtualization cleanups
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series contains a variety of refactors and cleanups in the VF code for
the ice driver. Its primary focus is to cleanup a few areas of the driver
before we begin implementing Scalable IOV.

This includes some cleanup and simplification of the VF operations and
addition of a few new operations that will be required by Scalable IOV, as
well as some other refactors needed for the handling of VF subfunctions.

It also contains a patch for changing the way we handle the mapping of the
PCI BAR 0 registers to allow sparse maps. This is done to enable iRDMA to
map the RDMA registers with write combining. Today, the iRDMA driver tries
this, but since the ice driver already mapped them as uncachable, the write
combining does not take effect. This results in additional latency as the
write combining can't be used.

This is fixed by modifying the driver to perform its own iomaps to map the
region before the RDMA space and the region after the space separately. We
can't just reduce the size of the map because Scalable IOV will need the
registers in the region beyond the RDMA area.

Changes since v1
* drop "ice: add helper function for checking VSI VF requirements"
* add new patch "ice: refactor VSI setup to use parameter structure"
* Fix iRDMA use of hw_addr
* Fix printk format in WARN_ON
* Add Co-developed-by tag for "ice: add a function to initialize vf entry"
* Cleanup use of ice_set_vf_state_qs_dis
* Fix build failures reported by robot

Jacob Keller (13):
  ice: fix function comment referring to ice_vsi_alloc
  ice: drop unnecessary VF parameter from several VSI functions
  ice: refactor VSI setup to use parameter structure
  ice: move vsi_type assignment from ice_vsi_alloc to ice_vsi_cfg
  ice: Fix RDMA latency issue by allowing write-combining
  ice: move ice_vf_vsi_release into ice_vf_lib.c
  ice: Pull common tasks into ice_vf_post_vsi_rebuild
  ice: add a function to initialize vf entry
  ice: introduce ice_vf_init_host_cfg function
  ice: convert vf_ops .vsi_rebuild to .create_vsi
  ice: introduce clear_reset_state operation
  ice: introduce .irq_close VF operation
  ice: remove unnecessary virtchnl_ether_addr struct use

 drivers/infiniband/hw/irdma/main.c            |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |   4 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |   5 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |  26 ++-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   3 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 138 ++++++-----
 drivers/net/ethernet/intel/ice/ice_lib.h      |  52 ++++-
 drivers/net/ethernet/intel/ice/ice_main.c     | 219 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_osdep.h    |  48 +++-
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 133 ++++-------
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   2 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 181 ++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  12 +-
 .../ethernet/intel/ice/ice_vf_lib_private.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  24 +-
 16 files changed, 621 insertions(+), 233 deletions(-)


base-commit: dd2bcc3ced4c47bead56ad9b728d7d5c3941cae2
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
