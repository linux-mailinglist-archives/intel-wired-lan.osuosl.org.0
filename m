Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EE44FC811
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 01:29:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EC88410B3;
	Mon, 11 Apr 2022 23:29:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VaMU7Fl1Rio9; Mon, 11 Apr 2022 23:29:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE0CB409F7;
	Mon, 11 Apr 2022 23:29:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 78CA91BF399
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D58E60E49
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mFyH7I2eSDzO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Apr 2022 23:29:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EC69560B9A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649719753; x=1681255753;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fdR/luzba7KMVbJv0dHM3unzkjm6nJUY2tSbBCXqIM8=;
 b=PQWB/56UQ4TsZIIVFskYDN6FvtfFiU747/7q6b30rh3qLNwy34tgGzlh
 MLBdK6yGykylvL8psgN+gXIl2PKJ8LA2JXrLLChRS6ChIL4LkU395qpDl
 HGj2YZp8ALQErhAIzRj8f7UyPNWwZ+dODgS3EqplJf94uzkw6LcPKaZyX
 GwITgPkWh7w8H290t+Sk+wJtunqzPelSEUbvIOxhum7myrAPumuQQO+nN
 ZVTxAZNIcn9VVB8jE9QDjcno8wMt1jpQfyT1l1W2xn3Bcd1VR4Vm3v5dT
 vRz0eAsBR1gvJbljgrW0Gzs7oARBPK0DC6OM4KlFQw8nGbu4hjZQFBoVu w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="244121030"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="244121030"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 16:29:13 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="660246404"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 16:29:13 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 11 Apr 2022 16:29:01 -0700
Message-Id: <20220411232907.1022602-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/6] minor cleanups for ice
 virtualization
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

This series contains a few minor fix ups for virtualization files. Mainly
this includes fixes for function header comments and minor wording changes.

The only larger change is a patch which adds NULL checks to ice_get_vf_vsi.
This was done in order to prevent static analysis tools from complaining
that a NULL value could be dereferenced. Flows where an error is not
feasible have a WARN_ON check added. This change enhances the robustness of
the driver by avoiding a panic in the event that a VF does not have a valid
VSI.

Jacob Keller (6):
  ice: add newline to dev_dbg in ice_vf_fdir_dump_info
  ice: always check VF VSI pointer values
  ice: remove return value comment for ice_reset_all_vfs
  ice: fix wording in comment for ice_reset_vf
  ice: add a function comment for ice_cfg_mac_antispoof
  ice: remove period on argument description in ice_for_each_vf

 drivers/net/ethernet/intel/ice/ice_devlink.c  |  5 ++-
 drivers/net/ethernet/intel/ice/ice_repr.c     |  7 ++-
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 32 ++++++++++++--
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 43 ++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  4 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  5 +++
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  9 +++-
 7 files changed, 91 insertions(+), 14 deletions(-)


base-commit: c3ac33fdeac6d1a23f2d28aafaee5520632c159f
-- 
2.35.1.456.ga9c7032d4631

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
