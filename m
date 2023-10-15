Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBDE7C9CA2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 01:51:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D5DA414EA;
	Sun, 15 Oct 2023 23:51:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D5DA414EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697413877;
	bh=YKP3jJxjV9+hagGRuQf+iq++GQhi7aM7qeQ/1/0Ksjo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z2Q6QJgdAZfhpO/XJ9i8HaxDWi4Iuahp/eEeljmwJEa6/18ZwNmwU7596hc302AgN
	 UH51A8jMSPW6O+q9C2LZDFzSYnnnWxPrwLRqSKtZcqJ9A7+UeDIBc8369y5u5LQhf4
	 20mfxuJ/oI9liDQISsQ82/FiwWtmof3+LwfLtYoNTfH+lC/pAzHdPd+q1xTz36bHXY
	 cm+RqZfXJWIRvHdYICXd62eMIoiCLTxe7WFuh4rvoYKOOmWsoTLAe6r+XxbOcJuQem
	 q1OwoC3KME6Ah/iHD7sYU/LdmpA+KitMHMoFqsSQZbjY2wt4GMHSCyuepfB/vS1YN0
	 CDLd0qO/WPwPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f73tWu5AdryL; Sun, 15 Oct 2023 23:51:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0013740AA5;
	Sun, 15 Oct 2023 23:51:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0013740AA5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B8521BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 23:51:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E8BD060F69
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 23:51:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8BD060F69
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q2qVsh-lTwBx for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Oct 2023 23:51:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4A9F60F3A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 23:51:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4A9F60F3A
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="370496091"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="370496091"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2023 16:51:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="929159773"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="929159773"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.144])
 by orsmga005.jf.intel.com with ESMTP; 15 Oct 2023 16:51:06 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: netdev@vger.kernel.org
Date: Sun, 15 Oct 2023 19:43:02 -0400
Message-ID: <20231015234304.2633-2-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231015234304.2633-1-paul.greenwalt@intel.com>
References: <20231015234304.2633-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697413867; x=1728949867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MRP/8dO1Nhj1C2Twam6anFmo6pHcRJrAnBkWA1dtyDQ=;
 b=I3wxqs9l0X9op8qbTT8lKK9xR3SG24Jqm3AFErOLjrGB4Wcx/YjoPzbC
 3FWxFaGKzD/ev6IdiTLaud2nLRwFDGPc9nLaMmyXwdrpehAFPqf2K5yIy
 Tz9OLV+ucpaGIuSP6Jedr77LCvgNfkpaPCjsOY3ScamobC3q/uslqSdJ4
 yiQXDokBl/gAl/kuFNWPIIbSY0r3Ijfv7P7BJKWBb0Jc7tnNlXvJTO9Xe
 DvLjPbqe+VT/8SAT9G8D6eZw3y5X8qhlwW0PCSE5ZMnq75PkY0caoPqMO
 2wsi/gEjLZPn7IU/hwzzRWvayVNZj5nmch3HqjdM8WiLvddkXUWVhSTIT
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I3wxqs9l
Subject: [Intel-wired-lan] [PATCH net-next v5 1/3] ethtool: Add forced speed
 to supported link modes maps
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
Cc: jiri@resnulli.us, andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 vladimir.oltean@nxp.com, jdamato@fastly.com, pawel.chmielewski@intel.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 Paul Greenwalt <paul.greenwalt@intel.com>, horms@kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, kuba@kernel.org,
 d-tatianin@yandex-team.ru, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The need to map Ethtool forced speeds to Ethtool supported link modes is
common among drivers. To support this, add a common structure for forced
speed maps and a function to init them.  This is solution was originally
introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
maps on module init") for qede driver.

ethtool_forced_speed_maps_init() should be called during driver init
with an array of struct ethtool_forced_speed_map to populate the mapping.

Definitions for maps themselves are left in the driver code, as the sets
of supported link modes may vary between the devices.

Suggested-by: Andrew Lunn <andrew@lunn.ch>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 include/linux/ethtool.h  | 37 +++++++++++++++++++++++++++++++++++++
 include/linux/linkmode.h | 29 +++++++++++++++--------------
 2 files changed, 52 insertions(+), 14 deletions(-)

diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 62b61527bcc4..8e91e8b8a693 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -13,6 +13,7 @@
 #ifndef _LINUX_ETHTOOL_H
 #define _LINUX_ETHTOOL_H
 
+#include <linux/linkmode.h>
 #include <linux/bitmap.h>
 #include <linux/compat.h>
 #include <linux/if_ether.h>
@@ -1052,4 +1053,40 @@ static inline int ethtool_mm_frag_size_min_to_add(u32 val_min, u32 *val_add,
  * next string.
  */
 extern __printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...);
+
+/* Link mode to forced speed capabilities maps */
+struct ethtool_forced_speed_map {
+	u32		speed;
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
+
+	const u32	*cap_arr;
+	u32		arr_size;
+};
+
+#define ETHTOOL_FORCED_SPEED_MAP(prefix, value)				\
+{									\
+	.speed		= SPEED_##value,				\
+	.cap_arr	= prefix##_##value,				\
+	.arr_size	= ARRAY_SIZE(prefix##_##value),			\
+}
+
+/**
+ * ethtool_forced_speed_maps_init
+ * @maps: Pointer to an array of Ethtool forced speed map
+ * @size: Array size
+ *
+ * Initialize an array of Ethtool forced speed map to Ethtool link modes. This
+ * should be called during driver module init.
+ */
+static inline void
+ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps, u32 size)
+{
+	for (u32 i = 0; i < size; i++) {
+		struct ethtool_forced_speed_map *map = &maps[i];
+
+		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
+		map->cap_arr = NULL;
+		map->arr_size = 0;
+	}
+}
 #endif /* _LINUX_ETHTOOL_H */
diff --git a/include/linux/linkmode.h b/include/linux/linkmode.h
index 15e0e0209da4..cd38f89553e6 100644
--- a/include/linux/linkmode.h
+++ b/include/linux/linkmode.h
@@ -2,6 +2,21 @@
 #define __LINKMODE_H
 
 #include <linux/bitmap.h>
+
+static inline void linkmode_set_bit(int nr, volatile unsigned long *addr)
+{
+	__set_bit(nr, addr);
+}
+
+static inline void linkmode_set_bit_array(const int *array, int array_size,
+					  unsigned long *addr)
+{
+	int i;
+
+	for (i = 0; i < array_size; i++)
+		linkmode_set_bit(array[i], addr);
+}
+
 #include <linux/ethtool.h>
 #include <uapi/linux/ethtool.h>
 
@@ -38,20 +53,6 @@ static inline int linkmode_andnot(unsigned long *dst, const unsigned long *src1,
 	return bitmap_andnot(dst, src1, src2,  __ETHTOOL_LINK_MODE_MASK_NBITS);
 }
 
-static inline void linkmode_set_bit(int nr, volatile unsigned long *addr)
-{
-	__set_bit(nr, addr);
-}
-
-static inline void linkmode_set_bit_array(const int *array, int array_size,
-					  unsigned long *addr)
-{
-	int i;
-
-	for (i = 0; i < array_size; i++)
-		linkmode_set_bit(array[i], addr);
-}
-
 static inline void linkmode_clear_bit(int nr, volatile unsigned long *addr)
 {
 	__clear_bit(nr, addr);
-- 
2.40.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
