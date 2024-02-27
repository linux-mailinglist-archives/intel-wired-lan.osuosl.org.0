Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C5B8684ED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 01:15:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DDD060A8D;
	Tue, 27 Feb 2024 00:15:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wYF2abhOS5lq; Tue, 27 Feb 2024 00:15:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CEC0605FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708992908;
	bh=1jl9fDlr25aGPD27F82eBlI+FE2ojsG/7vVHkTBaSy0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Zw0++39E/RKFCERnJrdjg879+wBeTHTTR4d1VbYV276W4wXIZDUxXw1KF4s14J+0t
	 xK/EMmvGHEPhw9T/73Bg8J/8zWWwnvCPyNRD7so8unUbp+KT950PUTDHJzrlJ9qxhp
	 i4UH5WDC39m03gjiqaBDbw1/kP5AUFHJY/rvLAPBULCVARz0cCS9E8eS43q4b9Easa
	 XSrnzcAd4d0M7nqdQCunQ1j9j1EorElMtyiAt6kGQ5aYWiMymbze26vwQQwQND/eyW
	 3ssOkzGjXw+o9NxT1M76vWoN4pt61nz6qGjey6AYADSIXpDlObOvxKkT9OF3ljscCc
	 O93JnPkp/ZTOA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CEC0605FB;
	Tue, 27 Feb 2024 00:15:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A6981BF35D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 00:15:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 55B2540A5A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 00:15:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eQY0-wpRLqb9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 00:15:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 12FE340AD6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12FE340AD6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12FE340AD6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 00:15:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="7128810"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="7128810"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 16:15:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6816125"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 16:15:00 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 26 Feb 2024 16:14:54 -0800
Message-ID: <20240227001456.3858886-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240227001456.3858886-1-jacob.e.keller@intel.com>
References: <20240227001456.3858886-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708992903; x=1740528903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I93n2qBCBh3rzDOWiarpC1Dl+OU5GQZA5lSg8f8AySE=;
 b=dCVGV0/CXECsJR5DXI6Bq5otWsxIp0ocj8RvR7NOQJFTy84SAMi079aU
 9Nus7cUM7a4TK8ld+3qqaHaserWOlyGHDn3HBcMA6xh+sq8d66P0BwCEw
 G6rELRv/kE73vw8jEGdxbwfKHMbQNrOOD98UZAs4hwcAX5mkUomn7co4q
 rcUAUBN+unQOH6yNPRZSBC0TFpsujbfXTgFsKWzK1yFIi7QSEVl/oYFov
 Wu+amvwvvuVyxxD+c5Led+SYEBUqzVV5evVsoh5n3u12t3zUWoQeqKs5x
 KrreJi1NCfwjCcHqWHUJ8CFNylgVvUPkJE5rQqjLFwiRU1RlZ8W0Dkiw+
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dCVGV0/C
Subject: [Intel-wired-lan] [PATCH iwl-next 1/3] ice: rename ice_write_*
 functions to ice_pack_ctx_*
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In ice_common.c there are 4 functions used for converting the unpacked
software Tx and Rx context structure data into the packed format used by
hardware. These functions have extremely generic names:

 * ice_write_byte
 * ice_write_word
 * ice_write_dword
 * ice_write_qword

When I saw these function names my first thought was "write what? to
where?". Understanding what these functions do requires looking at the
implementation details. The functions take bits from an unpacked structure
and copy them into the packed layout used by hardware.

As part of live migration, we will want functions which perform the inverse
operation of reading bits from the packed layout and copying them into the
unpacked format. Naming these as "ice_read_byte", etc would be very
confusing since they appear to write data.

In preparation for adding this new inverse operation, rename the existing
functions to use the prefix "ice_pack_ctx_". This makes it clear that they
perform the bit packing while copying from the unpacked software context
structure to the packed hardware context.

The inverse operations can then neatly be named ice_unpack_ctx_*, clearly
indicating they perform the bit unpacking while copying from the packed
hardware context to the unpacked software context structure.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 56 ++++++++++-----------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index ad28c771e1cf..d8bcc8bd91d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4356,13 +4356,13 @@ ice_aq_add_rdma_qsets(struct ice_hw *hw, u8 num_qset_grps,
 /* End of FW Admin Queue command wrappers */
 
 /**
- * ice_write_byte - write a byte to a packed context structure
- * @src_ctx:  the context structure to read from
- * @dest_ctx: the context to be written to
- * @ce_info:  a description of the struct to be filled
+ * ice_pack_ctx_byte - write a byte to a packed context structure
+ * @src_ctx: unpacked source context structure
+ * @dest_ctx: packed destination context data
+ * @ce_info: context element description
  */
-static void
-ice_write_byte(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
+static void ice_pack_ctx_byte(u8 *src_ctx, u8 *dest_ctx,
+			      const struct ice_ctx_ele *ce_info)
 {
 	u8 src_byte, dest_byte, mask;
 	u8 *from, *dest;
@@ -4395,13 +4395,13 @@ ice_write_byte(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
 }
 
 /**
- * ice_write_word - write a word to a packed context structure
- * @src_ctx:  the context structure to read from
- * @dest_ctx: the context to be written to
- * @ce_info:  a description of the struct to be filled
+ * ice_pack_ctx_word - write a word to a packed context structure
+ * @src_ctx: unpacked source context structure
+ * @dest_ctx: packed destination context data
+ * @ce_info: context element description
  */
-static void
-ice_write_word(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
+static void ice_pack_ctx_word(u8 *src_ctx, u8 *dest_ctx,
+			      const struct ice_ctx_ele *ce_info)
 {
 	u16 src_word, mask;
 	__le16 dest_word;
@@ -4438,13 +4438,13 @@ ice_write_word(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
 }
 
 /**
- * ice_write_dword - write a dword to a packed context structure
- * @src_ctx:  the context structure to read from
- * @dest_ctx: the context to be written to
- * @ce_info:  a description of the struct to be filled
+ * ice_pack_ctx_dword - write a dword to a packed context structure
+ * @src_ctx: unpacked source context structure
+ * @dest_ctx: packed destination context data
+ * @ce_info: context element description
  */
-static void
-ice_write_dword(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
+static void ice_pack_ctx_dword(u8 *src_ctx, u8 *dest_ctx,
+			       const struct ice_ctx_ele *ce_info)
 {
 	u32 src_dword, mask;
 	__le32 dest_dword;
@@ -4489,13 +4489,13 @@ ice_write_dword(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
 }
 
 /**
- * ice_write_qword - write a qword to a packed context structure
- * @src_ctx:  the context structure to read from
- * @dest_ctx: the context to be written to
- * @ce_info:  a description of the struct to be filled
+ * ice_pack_ctx_qword - write a qword to a packed context structure
+ * @src_ctx: unpacked source context structure
+ * @dest_ctx: packed destination context data
+ * @ce_info: context element description
  */
-static void
-ice_write_qword(u8 *src_ctx, u8 *dest_ctx, const struct ice_ctx_ele *ce_info)
+static void ice_pack_ctx_qword(u8 *src_ctx, u8 *dest_ctx,
+			       const struct ice_ctx_ele *ce_info)
 {
 	u64 src_qword, mask;
 	__le64 dest_qword;
@@ -4564,16 +4564,16 @@ ice_set_ctx(struct ice_hw *hw, u8 *src_ctx, u8 *dest_ctx,
 		}
 		switch (ce_info[f].size_of) {
 		case sizeof(u8):
-			ice_write_byte(src_ctx, dest_ctx, &ce_info[f]);
+			ice_pack_ctx_byte(src_ctx, dest_ctx, &ce_info[f]);
 			break;
 		case sizeof(u16):
-			ice_write_word(src_ctx, dest_ctx, &ce_info[f]);
+			ice_pack_ctx_word(src_ctx, dest_ctx, &ce_info[f]);
 			break;
 		case sizeof(u32):
-			ice_write_dword(src_ctx, dest_ctx, &ce_info[f]);
+			ice_pack_ctx_dword(src_ctx, dest_ctx, &ce_info[f]);
 			break;
 		case sizeof(u64):
-			ice_write_qword(src_ctx, dest_ctx, &ce_info[f]);
+			ice_pack_ctx_qword(src_ctx, dest_ctx, &ce_info[f]);
 			break;
 		default:
 			return -EINVAL;
-- 
2.41.0

