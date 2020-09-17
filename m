Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9ECF26E683
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Sep 2020 22:19:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6FBF587731;
	Thu, 17 Sep 2020 20:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CYZt3jKBD4fL; Thu, 17 Sep 2020 20:19:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59D708774A;
	Thu, 17 Sep 2020 20:19:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60FAF1BF37B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5DDFD8720A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E9EICaIoLjN7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9091E87209
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
IronPort-SDR: ee9PBsYqWDQuevj2UGjH5XO9RAWNudIvTF6wjIfdxAuPuFG3voZ9IkCBx6MdJsOXsaNWZQr7Hw
 fvZjr2bzjzbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="147535891"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="147535891"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:19:14 -0700
IronPort-SDR: 6O8eFe8Vw7TuKR+m2AkJn/ySLsQ0eBgdrnDSqkHQ9FCSgnxwQ0LVGCl3CE3TmhNo0ds7iXPSO7
 kVqbuZX758pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="508574672"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 17 Sep 2020 13:19:12 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Sep 2020 13:13:33 -0700
Message-Id: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S53 01/15] virtchnl: Use pad byte in
 virtchnl_ether_addr to specify MAC type
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

From: Brett Creeley <brett.creeley@intel.com>

Currently, there is no way for a VF driver to specify that it wants to
change its device/primary unicast MAC address. This makes it
difficult/impossible for the PF driver to track the VF's device/primary
unicast MAC address, which is used for VM/VF reboot and displaying on
the host. Fix this by using 2 bits of a pad byte in the
virtchnl_ether_addr structure so the VF can specify what type of MAC
it's adding/deleting.

Below are the values that should be used by all VF drivers going
forward.

VIRTCHNL_ETHER_ADDR_LEGACY(0):
	- The type should only ever be 0 for legacy AVF drivers (i.e.
	  drivers that don't support the new type bits). The PF drivers
	  will track VF's device/primary unicast MAC, but this will only
	  be a best effort.

VIRTCHNL_ETHER_ADDR_PRIMARY(1):
	- This type should only be used when the VF is changing their
	  device/primary unicast MAC. It should be used for both delete
	  and add cases related to the device/primary unicast MAC.

VIRTCHNL_ETHER_ADDR_EXTRA(2):
	- This type should be used when the VF is adding and/or deleting
	  MAC addresses that are not the device/primary unicast MAC. For
	  example, extra unicast addresses and multicast addresses
	  assuming the PF supports "extra" addresses at all.

If a PF is parsing the type field of the virtchnl_ether_addr, then it
should use the VIRTCHNL_ETHER_ADDR_TYPE_MASK to mask the first two bits
of the type field since 0, 1, and 2 are the only valid values.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 include/linux/avf/virtchnl.h | 29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 40bad71865ea..e49a063d0f14 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -403,9 +403,36 @@ VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_queue_select);
  * PF removes the filters and returns status.
  */
 
+/* VIRTCHNL_ETHER_ADDR_LEGACY
+ * Prior to adding the @type member to virtchnl_ether_addr, there were 2 pad
+ * bytes. Moving forward all VF drivers should not set type to
+ * VIRTCHNL_ETHER_ADDR_LEGACY. This is only here to not break previous/legacy
+ * behavior. The control plane function (i.e. PF) can use a best effort method
+ * of tracking the primary/device unicast in this case, but there is no
+ * guarantee and functionality depends on the implementation of the PF.
+ */
+
+/* VIRTCHNL_ETHER_ADDR_PRIMARY
+ * All VF drivers should set @type to VIRTCHNL_ETHER_ADDR_PRIMARY for the
+ * primary/device unicast MAC address filter for VIRTCHNL_OP_ADD_ETH_ADDR and
+ * VIRTCHNL_OP_DEL_ETH_ADDR. This allows for the underlying control plane
+ * function (i.e. PF) to accurately track and use this MAC address for
+ * displaying on the host and for VM/function reset.
+ */
+
+/* VIRTCHNL_ETHER_ADDR_EXTRA
+ * All VF drivers should set @type to VIRTCHNL_ETHER_ADDR_EXTRA for any extra
+ * unicast and/or multicast filters that are being added/deleted via
+ * VIRTCHNL_OP_DEL_ETH_ADDR/VIRTCHNL_OP_ADD_ETH_ADDR respectively.
+ */
 struct virtchnl_ether_addr {
 	u8 addr[ETH_ALEN];
-	u8 pad[2];
+	u8 type;
+#define VIRTCHNL_ETHER_ADDR_LEGACY	0
+#define VIRTCHNL_ETHER_ADDR_PRIMARY	1
+#define VIRTCHNL_ETHER_ADDR_EXTRA	2
+#define VIRTCHNL_ETHER_ADDR_TYPE_MASK	3 /* first two bits of type are valid */
+	u8 pad;
 };
 
 VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_ether_addr);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
