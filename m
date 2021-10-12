Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 661FC429A7A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 02:41:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 555BD60A36;
	Tue, 12 Oct 2021 00:41:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YfW1N7aU04cq; Tue, 12 Oct 2021 00:41:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45717608FB;
	Tue, 12 Oct 2021 00:41:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DACB41BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:41:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C1F734019F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GcBZ4WKG_KnE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 00:41:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC28340109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:41:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="226961364"
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="226961364"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 17:41:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="524017490"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.138])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 17:41:45 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 11 Oct 2021 17:41:09 -0700
Message-Id: <20211012004113.1583133-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 0/4] ice: miscellaneous
 firmware features
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

Changes since v1:
* keep using ice_devlink_flash_update as the function entry point name,
  replacing ice_flash_pldm_image.
* fix the reload support to be less strict about when it will allow EMP
  reset. The previous behavior was overly strict and essentially did not
  allow reload in almost all cases.

Jacob Keller (4):
  ice: devlink: add shadow-ram region to snapshot Shadow RAM
  ice: move and rename ice_check_for_pending_update
  ice: move ice_devlink_flash_update and merge with ice_flash_pldm_image
  ice: support immediate firmware activation via devlink reload

 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   7 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  12 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 205 +++++++++---
 .../net/ethernet/intel/ice/ice_fw_update.c    | 311 +++++++++++++-----
 .../net/ethernet/intel/ice/ice_fw_update.h    |   9 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 7 files changed, 416 insertions(+), 134 deletions(-)


base-commit: 2d82122b64363fe17521f26b63a7c89b204d17eb
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
