Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E03098A1D2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 14:16:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F3E16066A;
	Mon, 30 Sep 2024 12:16:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jHpfLaG_si_c; Mon, 30 Sep 2024 12:16:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 960AA6065C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727698578;
	bh=Yjx7PgghZMAxVk+ERsXj8uO6mcGPv+0uAbV/0k0Odic=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sbrLavNEhR5taCveelKIDSgqb6Mtj+Q7OSdn6ObryktkuJxcmsXZ16Ewy9KszNABw
	 5YpCJ6ijvSxHdjvr/8yMIL5DhEXI1YEDcQmMON1FNzSkzdPpfTciMgRU+H1TLixLcT
	 SKryY+lm4+M0+bN2vJuZTH/gU+RYbTHppuZCdVi5viNBjW2v03UjIFwUZlUkd2gEoD
	 wanwIyFUfvCOVsXNv/b07KmZZqVRsjmJmfR7Ldpg+0XrrSO2IJMTE6IxL94S3QBSz8
	 cYNXPqPUlu8DbD7v9kOP4RMtsfDlFRiQGtII32eQlH//LqfJEhr6NbFU7tFrUcSAPQ
	 9cr8N6qm/5ylQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 960AA6065C;
	Mon, 30 Sep 2024 12:16:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 28F941BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:16:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16AFF40231
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:16:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 41zwtsCxynqn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 12:16:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 181F0401E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 181F0401E2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 181F0401E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:16:14 +0000 (UTC)
X-CSE-ConnectionGUID: Z75HEFZ0TFOK8wf1pdoWpw==
X-CSE-MsgGUID: 9ryGDRO5TjqC1zN7dS8/5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26666754"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26666754"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:16:15 -0700
X-CSE-ConnectionGUID: DwiH+0tiRCCEwhLXNr0P3w==
X-CSE-MsgGUID: A30vNuTqQEen5Jp0DwEpjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="73592727"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa010.fm.intel.com with ESMTP; 30 Sep 2024 05:16:13 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Sep 2024 14:12:37 +0200
Message-ID: <20240930121610.679430-9-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727698575; x=1759234575;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DTt47dpPGDffgJ3IfOdmw0KPNMFVGWGjZt99zsrS5qo=;
 b=SqFMTgF8vxRJ5htEQ0nfOlv7J0gqvW8qmU8OGdvVeKFt3YlBZNfU9RS8
 s4oJuqAWwd7USaZa/rgDcXfrRNGkptewLmr7QGaxTqSqfJCGQkq46EcC7
 jfN0zZzPaGi5TpwRDeQrQZ09VHDb5a8VnwcthewqjL4Xo3os/2nSBuBnU
 ASnt0N24ekjMvPgyuZeFy9NYFUWzdYq0BfFBKLvT5gBXkAyRB6YA9DuMy
 uPpTJ1lHdRQrzEN27fMWWDxDOMgdh7CSQQmtzZYIATIl2dneghgb5sLhh
 P3TRwG8V8EeQUVwzy5zJqc/zORX57740TLEAVcz6pHeMvwhVWTxCJJQKg
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SqFMTgF8
Subject: [Intel-wired-lan] [PATCH v12 iwl-next 0/7] ice: Implement PTP
 support for E830 devices
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add specific functions and definitions for E830 devices to enable
PTP support.

Refactor processing of timestamping interrupt, cross timestamping, and
remove usage of ice_is_e8xx() functions to avoid code redundancy.

Refactor GNSS presence check to be able to remove ice_is_e8xx()
functions.

Jacob Keller (1):
  ice: Add unified ice_capture_crosststamp

Karol Kolacinski (5):
  ice: Don't check device type when checking GNSS presence
  ice: Remove unncecessary ice_is_e8xx() functions
  ice: Use FIELD_PREP for timestamp values
  ice: Process TSYN IRQ in a separate function
  ice: Refactor ice_ptp_init_tx_*

Michal Michalik (1):
  ice: Implement PTP support for E830 devices

 drivers/net/ethernet/intel/Kconfig            |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |   5 -
 drivers/net/ethernet/intel/ice/ice_common.c   | 210 ++++----
 drivers/net/ethernet/intel/ice/ice_common.h   |   7 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c     |  29 +-
 drivers/net/ethernet/intel/ice/ice_gnss.h     |   4 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  12 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  27 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 509 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 407 ++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  42 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   9 -
 15 files changed, 735 insertions(+), 543 deletions(-)

V11 -> V12: Fixed missing E830 case in ice_get_base_incval() in "ice: Implement
            PTP support for E830 devices"
V10 -> V11: Fixed adjustments not working on E830 in "ice: Implement PTP support
            for E830 devices"
V9 -> V10: Fixed E825C MAC condition in caps and and enabled
           ICE_FLAG_PTP_SUPPORTED for E830
V8 -> V9: Fixed compilation issue introduced after rebase in "ice: Remove
          unncecessary ice_is_e8xx()"
V7 -> V8: - reordered patches to have all E830 changes in "ice: Implement PTP
            support for E830 devices"
          - added "ice: Don't check device type when checking GNSS presence",
            which removes GNSS related changes from "ice: Remove unncecessary
            ice_is_e8xx() functions"
          - reworded commit messages
V6 -> V7: Fixed timestamp acquisition in "ice: Implement PTP support for
          E830 devices"
V5 -> V6: Fixed minor compilation issue in "ice: Use FIELD_PREP for timestamp
          values"
V4 -> V5: Added 2 patches: "ice: Remove unncecessary ice_is_e8xx()
          functions" and "ice: Use FIELD_PREP for timestamp values".
          Edited return values "ice: Implement PTP support for E830
          devices".
V3 -> V4: Further kdoc fixes in "ice: Implement PTP support for
          E830 devices"
V2 -> V3: Rebased and fixed kdoc in "ice: Implement PTP support for
          E830 devices"
V1 -> V2: Fixed compilation issue in "ice: Implement PTP support for
          E830 devices"

base-commit: 252daba137fd8c5a841f7120fdafa6f2ad67e88a
-- 
2.46.1

