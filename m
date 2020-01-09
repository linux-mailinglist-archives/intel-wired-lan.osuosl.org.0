Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F7C1350DD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 02:09:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2E4587C91;
	Thu,  9 Jan 2020 01:09:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZZHvpS7idg7N; Thu,  9 Jan 2020 01:09:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 533FE87A72;
	Thu,  9 Jan 2020 01:09:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A34E1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 46071864F5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9PQp2t7VPhSV for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 01:09:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B1FBE86447
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:09:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 17:09:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,412,1571727600"; d="scan'208";a="223112619"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by orsmga006.jf.intel.com with ESMTP; 08 Jan 2020 17:09:34 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  8 Jan 2020 17:08:15 -0800
Message-Id: <20200109010818.1326575-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.25.0.rc1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 0/4] devlink region snapshot triggering
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
Cc: jiri@resnulli.us, valex@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series consists of patches to enable devlink to request a snapshot via
a new DEVLINK_CMD_REGION_TRIGGER_SNAPSHOT.

The netdevsim driver is modified to support the new trigger_snapshot
callback as an example of how this can be used.

There is also some fix ups for s/shapshot/snapshot/ in documentation
and the devlink_snapshot_id_get function.

Jacob Keller (3):
  devlink: correct misspelling of snapshot
  doc: fix typo of snapshot in documentation
  devlink: add support for triggering snapshots from userspace

The last patch is a patch to the iproute2 project to implement support for
the new command.

Jacob Keller (1):
  devlink: add support for DEVLINK_CMD_REGION_TRIGGER_SNAPSHOT

 Documentation/admin-guide/devices.txt       |  2 +-
 Documentation/media/v4l-drivers/meye.rst    |  2 +-
 drivers/net/ethernet/mellanox/mlx4/crdump.c |  6 +--
 drivers/net/netdevsim/dev.c                 | 37 +++++++++++-----
 include/net/devlink.h                       | 14 +++---
 include/uapi/linux/devlink.h                |  2 +
 net/core/devlink.c                          | 49 ++++++++++++++++++---
 7 files changed, 85 insertions(+), 27 deletions(-)

 devlink/devlink.c            | 20 ++++++++++++++++++++
 include/uapi/linux/devlink.h |  2 ++
 2 files changed, 22 insertions(+)

-- 
2.25.0.rc1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
