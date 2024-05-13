Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4088C4994
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 00:22:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB5E941578;
	Mon, 13 May 2024 22:22:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aynKSo--b6Kj; Mon, 13 May 2024 22:22:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7002A4159D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715638961;
	bh=+KhNswbuwHRomYE8LIHmAoeOfU7mGgC8T5oHmt7Iqbs=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8bzBDxDo9fqkz0AUoya3q/4GhHzMI6X1Xs3WIDotlOomzGLW5CEN+63xaap+C019H
	 qiiLZgcvxz4RYfQgvQggDgt4qrzJV0BPqw38EPc7iaF2HhSGCfdxmcTHeJYGkW+n1c
	 pwJj6RzgURex584/rHmCMAb8qmNLt5r/2XwgaPjdUwzGcDDSrOQtr7au1FzHdbmleb
	 170H9PW1dFTrGL97Af/Y8y+3FHpInrNzL8sojcZ7ttzubanHsQfrM8veJ+BfOK7gdr
	 fA6uO7lhGVfMwYJvYubnGzVGyDhs5gvi9h5E43yHOvPzmBnmZFU/Nw52mmobQxRXTj
	 4+xhEHYNVf4Tg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7002A4159D;
	Mon, 13 May 2024 22:22:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 400791BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 22:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2AEB94081D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 22:22:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R9KYu2fxXxtO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 22:22:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CD4D84081C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD4D84081C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD4D84081C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 22:22:37 +0000 (UTC)
X-CSE-ConnectionGUID: kV5Lv+NESv6GyQagmyc0Dw==
X-CSE-MsgGUID: zgXaqr7USMCHnGpEINJqww==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="22196048"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="22196048"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 15:22:36 -0700
X-CSE-ConnectionGUID: qMcNT5F2QG+qjo178kZ+hQ==
X-CSE-MsgGUID: rQqK7PJ5RqKzcBUDNhN0wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="35221048"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 15:22:36 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 13 May 2024 15:22:26 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240513-mirrors-iwl-v2-1-3f6464fb8f17@intel.com>
X-B4-Tracking: v=1; b=H4sIAKGSQmYC/1WNzQ6CMBCEX4Xs2RraLD964j0MB9Musgm0ZksQQ
 3h3az15nHwz3+wQSZgiXIsdhFaOHHwK5lSAHe/+QYpdymBKgyXqWs0sEiQqfk2qpYoIW2ywriA
 tnkIDb9l2g2/B07ZAn8jIcQnyzjerzvxnNP/GVSutTItWu2Zw9oId+4Wmsw0z9MdxfADnJb5Cs
 AAAAA==
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.13.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715638958; x=1747174958;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=C0IqWp/IpwuyYb6U94t+Cc69VOt7ECoC4qu2sczFRUE=;
 b=Jm7fjxGFZMj3OY+jSBbOL7SFxdQdyydIq+QDx2PbgODgqcefRdlD/lX9
 19rIrGoybzKGDOxbTdf9yRN/2dk/fo0wmhbx5vV6TR9Y5ZYL/VSBMfm3L
 qzL1IurQO4t0hlLtrZafZyppJiLOE+NjBELoNUiBGJ3nXqj3VCh4SXZ4l
 bp7wmPmFuHYde+onECPm2/+5oOYxTVhV45kxNuM5ziZhSPjXI93psU/0D
 yVBLm6INsmhSTGM/eOvXWVJ0+yQiVzARUX6pDcKt873nZgvlwpnG8P53M
 4amZGRVnSPIWLYDobkTFfR+z2uc5dekF2oMnzZN0K3ez3I6iW8Z/wLxnt
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jm7fjxGF
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: add and use roundup_u64
 instead of open coding equivalent
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
Cc: Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In ice_ptp_cfg_clkout(), the ice driver needs to calculate the nearest next
second of a current time value specified in nanoseconds. It implements this
using div64_u64, because the time value is a u64. It could use div_u64
since NSEC_PER_SEC is smaller than 32-bits.

Ideally this would be implemented directly with roundup(), but that can't
work on all platforms due to a division which requires using the specific
macros and functions due to platform restrictions, and to ensure that the
most appropriate and fast instructions are used.

The kernel doesn't currently provide any 64-bit equivalents for doing
roundup. Attempting to use roundup() on a 32-bit platform will result in a
link failure due to not having a direct 64-bit division.

The closest equivalent for this is DIV64_U64_ROUND_UP, which does a
division always rounding up. However, this only computes the division, and
forces use of the div64_u64 in cases where the divisor is a 32bit value and
could make use of div_u64.

Introduce DIV_U64_ROUND_UP based on div_u64, and then use it to implement
roundup_u64 which takes a u64 input value and a u32 rounding value.

The name roundup_u64 matches the naming scheme of div_u64, and future
patches could implement roundup64_u64 if they need to round by a multiple
that is greater than 32-bits.

Replace the logic in ice_ptp.c which does this equivalent with the newly
added roundup_u64.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v1:
* add DIV_U64_ROUND_UP and use it for clarity
---
Changes in v2:
- Fix duplicate @y kdoc warning
- Fix missing Return kdoc warning
- Link to v1: https://lore.kernel.org/r/20240426-mirrors-iwl-v1-1-284c1d7fdc94@intel.com
---
 drivers/net/ethernet/intel/ice/ice_ptp.c |  3 +--
 include/linux/math64.h                   | 28 ++++++++++++++++++++++++++++
 2 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0f17fc1181d2..a95af8d638a0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1714,8 +1714,7 @@ static int ice_ptp_cfg_clkout(struct ice_pf *pf, unsigned int chan,
 	 * maintaining phase
 	 */
 	if (start_time < current_time)
-		start_time = div64_u64(current_time + NSEC_PER_SEC - 1,
-				       NSEC_PER_SEC) * NSEC_PER_SEC + phase;
+		start_time = roundup_u64(current_time, NSEC_PER_SEC) + phase;
 
 	if (ice_is_e810(hw))
 		start_time -= E810_OUT_PROP_DELAY_NS;
diff --git a/include/linux/math64.h b/include/linux/math64.h
index bf74478926d4..6b63e05a7e07 100644
--- a/include/linux/math64.h
+++ b/include/linux/math64.h
@@ -301,6 +301,19 @@ u64 mul_u64_u64_div_u64(u64 a, u64 mul, u64 div);
 #define DIV64_U64_ROUND_UP(ll, d)	\
 	({ u64 _tmp = (d); div64_u64((ll) + _tmp - 1, _tmp); })
 
+/**
+ * DIV_U64_ROUND_UP - unsigned 64bit divide with 32bit divisor rounded up
+ * @ll: unsigned 64bit dividend
+ * @d: unsigned 32bit divisor
+ *
+ * Divide unsigned 64bit dividend by unsigned 32bit divisor
+ * and round up.
+ *
+ * Return: dividend / divisor rounded up
+ */
+#define DIV_U64_ROUND_UP(ll, d)		\
+	({ u32 _tmp = (d); div_u64((ll) + _tmp - 1, _tmp); })
+
 /**
  * DIV64_U64_ROUND_CLOSEST - unsigned 64bit divide with 64bit divisor rounded to nearest integer
  * @dividend: unsigned 64bit dividend
@@ -346,4 +359,19 @@ u64 mul_u64_u64_div_u64(u64 a, u64 mul, u64 div);
 		div_s64((__x - (__d / 2)), __d);	\
 }							\
 )
+
+/**
+ * roundup_u64 - Round up a 64bit value to the next specified 32bit multiple
+ * @x: the value to up
+ * @y: 32bit multiple to round up to
+ *
+ * Rounds @x to the next multiple of @y. For 32bit @x values, see roundup and
+ * the faster round_up() for powers of 2.
+ *
+ * Return: rounded up value.
+ */
+static inline u64 roundup_u64(u64 x, u32 y)
+{
+	return DIV_U64_ROUND_UP(x, y) * y;
+}
 #endif /* _LINUX_MATH64_H */

---
base-commit: c084ebd77a00b1a16d9daa57b6ecdfdf1f43c78a
change-id: 20240416-mirrors-iwl-8e5ee4847465

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

