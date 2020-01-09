Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 620201350DF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 02:09:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0B2DD8698E;
	Thu,  9 Jan 2020 01:09:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pPPOiWUe9XEH; Thu,  9 Jan 2020 01:09:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF11A864F5;
	Thu,  9 Jan 2020 01:09:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C441F1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C13D586503
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W2dvNwSpSfzi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 01:09:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 20202864DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:09:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 17:09:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,412,1571727600"; d="scan'208";a="223112622"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by orsmga006.jf.intel.com with ESMTP; 08 Jan 2020 17:09:34 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  8 Jan 2020 17:08:17 -0800
Message-Id: <20200109010818.1326575-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200109010818.1326575-1-jacob.e.keller@intel.com>
References: <20200109010818.1326575-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/4] doc: fix typo of snapshot in
 documentation
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

A couple of locations accidentally misspelled snapshot as shapshot.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 Documentation/admin-guide/devices.txt    | 2 +-
 Documentation/media/v4l-drivers/meye.rst | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/admin-guide/devices.txt b/Documentation/admin-guide/devices.txt
index 1c5d2281efc9..2a97aaec8b12 100644
--- a/Documentation/admin-guide/devices.txt
+++ b/Documentation/admin-guide/devices.txt
@@ -319,7 +319,7 @@
 		182 = /dev/perfctr	Performance-monitoring counters
 		183 = /dev/hwrng	Generic random number generator
 		184 = /dev/cpu/microcode CPU microcode update interface
-		186 = /dev/atomicps	Atomic shapshot of process state data
+		186 = /dev/atomicps	Atomic snapshot of process state data
 		187 = /dev/irnet	IrNET device
 		188 = /dev/smbusbios	SMBus BIOS
 		189 = /dev/ussp_ctl	User space serial port control
diff --git a/Documentation/media/v4l-drivers/meye.rst b/Documentation/media/v4l-drivers/meye.rst
index a572996cdbf6..dc57a6a91b43 100644
--- a/Documentation/media/v4l-drivers/meye.rst
+++ b/Documentation/media/v4l-drivers/meye.rst
@@ -95,7 +95,7 @@ so all video4linux tools (like xawtv) should work with this driver.
 
 Besides the video4linux interface, the driver has a private interface
 for accessing the Motion Eye extended parameters (camera sharpness,
-agc, video framerate), the shapshot and the MJPEG capture facilities.
+agc, video framerate), the snapshot and the MJPEG capture facilities.
 
 This interface consists of several ioctls (prototypes and structures
 can be found in include/linux/meye.h):
-- 
2.25.0.rc1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
