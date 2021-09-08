Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EC94041E6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 01:49:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE0D982C84;
	Wed,  8 Sep 2021 23:49:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pHhWsJS1gWur; Wed,  8 Sep 2021 23:49:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC34482C3E;
	Wed,  8 Sep 2021 23:49:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA27A1BF380
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BDF3F613F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bwD3DkxQ63IB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Sep 2021 23:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C1151605CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:49:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="306193162"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="306193162"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 16:49:34 -0700
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="693729494"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 16:49:33 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  8 Sep 2021 16:49:20 -0700
Message-Id: <20210908234924.3416592-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next 0/4] ice: miscellaneous firmware
 features
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

This series contains a few miscellaneous left over pieces of work related to
flash update that I've been meaning to submit for a while.

This includes the following:

 * a new shadow-ram region similar to NVM region but for the device shadow
   RAM contents. This is distinct from NVM region because shadow RAM is
   built up during device init and may be different from the raw NVM flash
   data. (As I found out while debugging some issues with flash update).
 * refactoring of the ice_flash_pldm_image to become the main flash update
   entry point. This is simpler than having both a ice_devlink_flash_update
   and an ice_flash_pldm_image. It will make additions like dry-run easier
   in the future
 * support for firmware activation via devlink reload, when possible.

The major new work is the reload support, which allows activating firmware
immediately without a reboot when possible.

As a note, I want to call out that the reload support here only supports
firmware activation. I really did try to see what it would take to get
proper driver reload support working. Unfortunately this task requires a
large amount of rewrite to the entire flow that the driver uses for both
probe/remove, as well as driver reset.

Jacob Keller (4):
  ice: devlink: add shadow-ram region to snapshot Shadow RAM
  ice: move and rename ice_check_for_pending_update
  ice: refactor ice_flash_pldm_image and combine with
    ice_devlink_flash_update
  ice: support immediate firmware activation via devlink reload

 drivers/net/ethernet/intel/ice/ice.h          |   9 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   7 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  12 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 218 ++++++++++---
 .../net/ethernet/intel/ice/ice_fw_update.c    | 291 ++++++++++++------
 .../net/ethernet/intel/ice/ice_fw_update.h    |   9 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 7 files changed, 412 insertions(+), 138 deletions(-)


base-commit: 8945c4bc5e8e03b2358974e602dcf8137b448ed9
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
