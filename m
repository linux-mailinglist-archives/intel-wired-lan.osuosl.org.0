Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0C14B9341
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 22:38:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6F8960BE5;
	Wed, 16 Feb 2022 21:38:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Go0ORMEDmU_P; Wed, 16 Feb 2022 21:38:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C686160B6A;
	Wed, 16 Feb 2022 21:37:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 193541BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 21:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 67B8040270
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 21:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dGwI6t4kSVwB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 21:37:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E37440157
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 21:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645047465; x=1676583465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mSA4P5Zkur/XYT4yAWarJQBbojeVVT7J8Vb8s2Zhysg=;
 b=itDvrAiEm6k75BwxNeJ2iLfpSndqgo9uxyepAT4Kp3a/PWIqKVyuJKfq
 hbONH4VnQdBz0+CwsfamcInXJThN2YZJB+bb3mNMAsmjm1DAPWe6E6rLq
 EEdtlKkV6XhlJpecK1hJDf/3xrECBH7pwu6Z/KgCXjPacAw/kKr8c6GpF
 dJj7WPH9DJfZT5lh/6WnH+P4S3J9RHGkkCB40ekZXRwVZ2pB3RhQCcYaA
 TcCUrh2NsXSWTzjsYSVgdK/Bb97lhaJ6/woAklvM2t5ONBiFkiN4A0pTl
 yv4BFCOoMJvvaYNR1K//WSSQXm4Ra5dMie5bt/aC6Fj5pSttIawOWETn0 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="248328454"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="248328454"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 13:37:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="774249122"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 13:37:44 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 16 Feb 2022 13:37:27 -0800
Message-Id: <20220216213738.3826664-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 00/11] ice: convert VF storage
 to hash table
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

This series refactors the ice networking driver VF storage from a simple
static array to a hash table. It also introduces krefs and proper locking
and protection to prevent common use-after-free and concurrency issues.

There are two motivations for this work. First is to make the ice driver
more resilient by preventing a whole class of use-after-free bugs that can
occur around concurrent access to VF structures while removing VFs.

The second is to prepare the ice driver for future virtualization work to
support Scalable IOV, an alternative VF implementation compared to Single
Root IOV. The new VF implementation will allow for more dynamic VF creation
and removal, necessitating a more robust implementation for VF storage that
can't rely on the existing mechanisms to prevent concurrent access
violations.

The first few patches are cleanup and preparatory work needed to make the
conversion to the hash table safe. Following this preparatory work is a
patch to migrate the VF structures and variables to a new sub-structure for
code clarity. Next introduce new interface functions to abstract the VF
storage. Finally, the driver is actually converted to the hash table and
kref implementation.

Changes since v1:
* Add missing ice_put_vf in ice_vc_process_vf_msg, fixing memory leak of VF
* Fix a few checkpatch.pl complaints reported by NIPA


Jacob Keller (11):
  ice: refactor unwind cleanup in eswitch mode
  ice: store VF pointer instead of VF ID
  ice: pass num_vfs to ice_set_per_vf_res()
  ice: move clear_malvf call in ice_free_vfs
  ice: move VFLR acknowledge during ice_free_vfs
  ice: remove checks in ice_vc_send_msg_to_vf
  ice: use ice_for_each_vf for iteration during removal
  ice: convert ice_for_each_vf to include VF entry iterator
  ice: factor VF variables to separate structure
  ice: introduce VF accessor functions
  ice: convert VF storage to hash table with krefs and RCU

 drivers/net/ethernet/intel/ice/ice.h          |  13 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |   4 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 161 ++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  20 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 203 +++--
 drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  64 +-
 drivers/net/ethernet/intel/ice/ice_repr.c     |  70 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
 .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  |  19 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  13 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 784 +++++++++++-------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  83 +-
 13 files changed, 879 insertions(+), 560 deletions(-)


base-commit: 477606a501d0705cb1bb86fe7aa86f553861ae7f
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
