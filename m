Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0746D77EE07
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 02:01:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 895BB41789;
	Thu, 17 Aug 2023 00:01:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 895BB41789
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692230484;
	bh=fbxxNWgshbJMriynTyZpcOCxYDKk/ohB2sjYteoadOs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TmyWHfm+fkMivCKPx8dqSbj1VI8b5CbuV8QtQ2LH88qjtMadGL6lbPuAVRnl5MLMt
	 UvIPKC9flykYoghvedOP9w83dgZWBPAC4/XDXIGbsL72EJYUup1QQ6CH3XdTLLleps
	 a8ED2l8mWr/0XvGu3Fbr15e2Abdfb9etFIM8zliSfDO1qT/gMmshzTIvDXlzeQAkRS
	 xetztnjLsGAgThii5YPfhr+iAoCGGsr1NOYCKxmD8onu8Q2z9Bw9G0uKFvoO6ODFlY
	 Sa9W77M0lthvs0UmEVLOtg+b2ZFXOUkgKYebSO4t/PbEs8+FJoF4rxMeFAKuLCZH2W
	 SeF5Nt+dOm+Gw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GLBkdEFJc6to; Thu, 17 Aug 2023 00:01:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F74441774;
	Thu, 17 Aug 2023 00:01:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F74441774
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9CD011BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D95BE83B72
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D95BE83B72
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ci00D7H-LF1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 00:01:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99E8B83B5E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99E8B83B5E
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="403649705"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="403649705"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:01:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="799805035"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="799805035"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:01:03 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 16 Aug 2023 17:00:53 -0700
Message-ID: <20230817000058.2433236-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692230465; x=1723766465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=suQi24uNIhmmHw0o+gRm/nHEAIDt4+f4vYX3FXHaANI=;
 b=hC2pIYtaP1bOa0d5VWNxV3Bq44nDytN10eAUwdYB07J2zGscS9sDKp16
 jJ+J5GOFk825lc5fZ1IdH6nMTUNHLvecjoIJmzAOi/jNNe6psNs8y7oLl
 QO+OzguYr/RO7iS4VIm8MBnSYi8zLY6GHv55kP5mnzcADXlK5cf2L5F/N
 NwfH9d/P+tIeey/y8ejZ0b815LpMsLAWyzTbO7pZBzosYry/CqCRPQ9PY
 G3VMp4y2+KctHtTY+Cmj51G+h9+tGhAW+MMmoQ4C6p7qZs1RuCCk+82o+
 b1652D+hATq3J4o8TB3vNvXi5RPAVV18rzIv3Zff1FQ00nX0FvWDt/81P
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hC2pIYta
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: refactor PTP feature
 flags
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series refactors and extends the feature flag detection for a couple of
PTP feature flags. This includes ICE_F_GNSS and ICE_F_SMA_CTRL. Instead of
blindly assuming the feature is enabled on all E810-T devices, check the
netlist to confirm that the feature is supported on that device and
platform.

For SMA control, this allows the driver to fallback to the fixed pin
configuration that is supported by default E810 configurations when the SMA
control is not accessible.

For GNSS, this ensures that we do not attempt to read the GNSS portion of
the device if its not present, avoiding some unnecessary warning messages.

For ICE_F_SMA_CTRL this could be seen as a fix, but given the scope of the
code I decided that its next material. I think of it more as extending the
feature capability to support pins on more platforms.

Changes since v1:
* add a patch to fix E810-T pin counts when SMA is disabled
* use FIELD_PREP in ice_find_netlist_node
* reduce scope of variables in ice_find_netlist_node
* remove unnecessary local variable in ice_find_netlist_node
* rename "present" functions to use "in_netlist" terminology, and move
  them into ice_common.c
* call ice_is_gps_in_netlist_e810t() from ice_gnss_is_gps_present()

Jacob Keller (5):
  ice: remove ICE_F_PTP_EXTTS feature flag
  ice: fix pin assignment for E810-T without SMA control
  ice: don't enable PTP related capabilities on non-owner PFs
  ice: check the netlist before enabling ICE_F_SMA_CTRL
  ice: check netlist before enabling ICE_F_GNSS

 drivers/net/ethernet/intel/ice/ice.h          |  1 -
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  8 +-
 drivers/net/ethernet/intel/ice/ice_common.c   | 77 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_gnss.c     |  3 +
 drivers/net/ethernet/intel/ice/ice_lib.c      | 11 +--
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 12 +--
 7 files changed, 101 insertions(+), 13 deletions(-)


base-commit: 361b86237e1afbf2c3be7cb604b6aac6f8b8c38c
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
