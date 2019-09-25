Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DAABE8F3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Sep 2019 01:33:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9EC762041E;
	Wed, 25 Sep 2019 23:33:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9VHMZAY-OKqh; Wed, 25 Sep 2019 23:33:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7C8722049E;
	Wed, 25 Sep 2019 23:33:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E71FA1BF280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2019 23:33:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E32FD87B8E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2019 23:33:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wLpf7dKMexpU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2019 23:33:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2ED9787B81
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2019 23:33:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 16:33:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; d="scan'208";a="201419359"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by orsmga002.jf.intel.com with ESMTP; 25 Sep 2019 16:33:26 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 25 Sep 2019 16:33:11 -0700
Message-Id: <20190925233312.13977-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.23.0.245.gf157bbb9169d
In-Reply-To: <20190925233312.13977-1-jacob.e.keller@intel.com>
References: <20190925233312.13977-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next 1/2] ptp: correctly disable flags on
 old ioctls
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
Cc: Christopher Hall <christopher.s.hall@intel.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 415606588c61 ("PTP: introduce new versions of IOCTLs",
2019-09-13) introduced new versions of the PTP ioctls which actually
validate that the flags are acceptable values.

As part of this, it cleared the flags value using a bitwise
and+negation, in an attempt to prevent the old ioctl from accidentally
enabling new features.

This is incorrect for a couple of reasons. First, it results in
accidentally preventing previously working flags on the request ioctl.
By clearing the "valid" flags, we now no longer allow setting the
enable, rising edge, or falling edge flags.

Second, if we add new additional flags in the future, they must not be
set by the old ioctl. (Since the flag wasn't checked before, we could
potentially break userspace programs which sent garbage flag data.

The correct way to resolve this is to check for and clear all but the
originally valid flags.

Create defines indicating which flags are correctly checked and
interpreted by the original ioctls. Use these to clear any bits which
will not be correctly interpreted by the original ioctls.

In the future, new flags must be added to the VALID_FLAGS macros, but
*not* to the V1_VALID_FLAGS macros. In this way, new features may be
exposed over the v2 ioctls, but without breaking previous userspace
which happened to not clear the flags value properly. The old ioctl will
continue to behave the same way, while the new ioctl gains the benefit
of using the flags fields.

Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Felipe Balbi <felipe.balbi@linux.intel.com>
Cc: David S. Miller <davem@davemloft.net>
Cc: Christopher Hall <christopher.s.hall@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/ptp/ptp_chardev.c      |  4 ++--
 include/uapi/linux/ptp_clock.h | 22 ++++++++++++++++++++++
 2 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/ptp/ptp_chardev.c b/drivers/ptp/ptp_chardev.c
index 9c18476d8d10..67d0199840fd 100644
--- a/drivers/ptp/ptp_chardev.c
+++ b/drivers/ptp/ptp_chardev.c
@@ -155,7 +155,7 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
 			err = -EINVAL;
 			break;
 		} else if (cmd == PTP_EXTTS_REQUEST) {
-			req.extts.flags &= ~PTP_EXTTS_VALID_FLAGS;
+			req.extts.flags &= PTP_EXTTS_V1_VALID_FLAGS;
 			req.extts.rsv[0] = 0;
 			req.extts.rsv[1] = 0;
 		}
@@ -184,7 +184,7 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
 			err = -EINVAL;
 			break;
 		} else if (cmd == PTP_PEROUT_REQUEST) {
-			req.perout.flags &= ~PTP_PEROUT_VALID_FLAGS;
+			req.perout.flags &= PTP_PEROUT_V1_VALID_FLAGS;
 			req.perout.rsv[0] = 0;
 			req.perout.rsv[1] = 0;
 			req.perout.rsv[2] = 0;
diff --git a/include/uapi/linux/ptp_clock.h b/include/uapi/linux/ptp_clock.h
index f16301015949..59e89a1bc3bb 100644
--- a/include/uapi/linux/ptp_clock.h
+++ b/include/uapi/linux/ptp_clock.h
@@ -31,15 +31,37 @@
 #define PTP_ENABLE_FEATURE (1<<0)
 #define PTP_RISING_EDGE    (1<<1)
 #define PTP_FALLING_EDGE   (1<<2)
+
+/*
+ * flag fields valid for the new PTP_EXTTS_REQUEST2 ioctl.
+ */
 #define PTP_EXTTS_VALID_FLAGS	(PTP_ENABLE_FEATURE |	\
 				 PTP_RISING_EDGE |	\
 				 PTP_FALLING_EDGE)
 
+/*
+ * flag fields valid for the original PTP_EXTTS_REQUEST ioctl.
+ * DO NOT ADD NEW FLAGS HERE.
+ */
+#define PTP_EXTTS_V1_VALID_FLAGS	(PTP_ENABLE_FEATURE |	\
+					 PTP_RISING_EDGE |	\
+					 PTP_FALLING_EDGE)
+
 /*
  * Bits of the ptp_perout_request.flags field:
  */
 #define PTP_PEROUT_ONE_SHOT (1<<0)
+
+/*
+ * flag fields valid for the new PTP_PEROUT_REQUEST2 ioctl.
+ */
 #define PTP_PEROUT_VALID_FLAGS	(PTP_PEROUT_ONE_SHOT)
+
+/*
+ * No flags are valid for the original PTP_PEROUT_REQUEST ioctl
+ */
+#define PTP_PEROUT_V1_VALID_FLAGS	(0)
+
 /*
  * struct ptp_clock_time - represents a time value
  *
-- 
2.23.0.245.gf157bbb9169d

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
