Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F6DAA9D0A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 May 2025 22:14:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45B144083E;
	Mon,  5 May 2025 20:14:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sLO2XvLmRy5P; Mon,  5 May 2025 20:14:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05293405FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746476085;
	bh=5isQEEFWwhzIRRcmRS2LDP/UUOtGP91pDHHspg8C8KQ=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6Ct9wAbCGzDWp15+wIi4RBeNf0VRz/wZfRJb4ZsyZnxCvJothgKJLj0S/f1tU8k2t
	 E9pJqfNtt+aocEcX9zLyMwW6qqY/Prtgfg7jKPiB86FAh0PJPLanjk1ON7/jpxTqZb
	 gzQdaHEc8xvcby+VaSAfnwZ2nGHiVY/VGlHtmWKXoRks+1Cjn7LgahDMtq24oiExtY
	 HK40uP5UFef9VDSv/aKPwTFzKRXbLC91hy1ep471JUnA6IKiXkVtqlKheM94T9z/9b
	 3rBw3dpIViW502s86A2IbXHBIM8NVkZWhwWyrEzqdE0EBA9lOdcdVeoMDr2wDN85gV
	 17F0r1Vzyy/GQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05293405FD;
	Mon,  5 May 2025 20:14:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3119212E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 20:14:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD7CA405FD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 20:14:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QupLAq0nlXop for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 May 2025 20:14:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6785840804
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6785840804
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6785840804
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 20:14:40 +0000 (UTC)
X-CSE-ConnectionGUID: 4gIyl17sSe6wODPjkj3Xvg==
X-CSE-MsgGUID: Ft4J/CnkSBKpn7TXAAP46Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="65635331"
X-IronPort-AV: E=Sophos;i="6.15,264,1739865600"; d="scan'208";a="65635331"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 13:14:40 -0700
X-CSE-ConnectionGUID: cqCMKHlFRoiMD9tlAXePLw==
X-CSE-MsgGUID: +WDDwDa+RLmElVQJE3kDXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,264,1739865600"; d="scan'208";a="158593559"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 13:14:39 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 05 May 2025 13:14:23 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250505-jk-hash-ena-refactor-v2-2-c1f62aee1ffe@intel.com>
References: <20250505-jk-hash-ena-refactor-v2-0-c1f62aee1ffe@intel.com>
In-Reply-To: <20250505-jk-hash-ena-refactor-v2-0-c1f62aee1ffe@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Simon Horman <horms@kernel.org>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746476081; x=1778012081;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=Xv8Km6f8TSEWNVVoXMKNMDozMFFpLnmbLRvOL8U1F84=;
 b=Q41saL5/QqSaW8fm4de19alD3Uq3MlV2KzBKqwi5lv5aSXyO/JLuq4KZ
 JZOvDnbkcsdqumL5vC+6DM95Us8sjBXFcf8W1W0/oq80VXcDj2pREVK29
 JNxUEzuI7xtj/GmSWEBmeOmVN9rA3ZfCSNbVK+vvYpwHq5bSO4OucWiTX
 u0cTR2ABPPRRsBI8ubs2+zrYUeKDCrefRzhpSs7UXUCec+X+kAVmSQVuZ
 OvpLOwq9FsKIrjjBpgh16xYKLRw8uzJhkqg+4ObJfrNNXymTvKDYmLKhu
 soLEMBPUQmwLtz3UHGOqakf1kddt6HQjwfAZy0GT7Pif3ao0FjYyQQPnL
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q41saL5/
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/2] net: intel: move RSS
 packet classifier types to libie
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The Intel i40e, iavf, and ice drivers all include a definition of the
packet classifier filter types used to program RSS hash enable bits. For
i40e, these bits are used for both the PF and VF to configure the PFQF_HENA
and VFQF_HENA registers.

For ice and iAVF, these bits are used to communicate the desired hash
enable filter over virtchnl via its struct virtchnl_rss_hashena. The
virtchnl.h header makes no mention of where the bit definitions reside.

Maintaining a separate copy of these bits across three drivers is
cumbersome. Move the definition to libie as a new pctype.h header file.
Each driver can include this, and drop its own definition.

The ice implementation also defined a ICE_AVF_FLOW_FIELD_INVALID, intending
to use this to indicate when there were no hash enable bits set. This is
confusing, since the enumeration is using bit positions. A value of 0
*should* indicate the first bit. Instead, rewrite the code that uses
ICE_AVF_FLOW_FIELD_INVALID to just check if the avf_hash is zero. From
context this should be clear that we're checking if none of the bits are
set.

The values are kept as bit positions instead of encoding the BIT_ULL
directly into their value. While most users will simply use BIT_ULL
immediately, i40e uses the macros both with BIT_ULL and test_bit/set_bit
calls.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.h    | 35 +++++------
 drivers/net/ethernet/intel/i40e/i40e_type.h    | 32 ----------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h    | 36 ++++++------
 drivers/net/ethernet/intel/iavf/iavf_type.h    | 32 ----------
 drivers/net/ethernet/intel/ice/ice_flow.h      | 64 ++++++--------------
 include/linux/avf/virtchnl.h                   |  1 +
 include/linux/net/intel/libie/pctype.h         | 41 +++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 81 +++++++++++++-------------
 drivers/net/ethernet/intel/i40e/i40e_main.c    | 23 ++++----
 drivers/net/ethernet/intel/i40e/i40e_txrx.c    | 25 ++++----
 drivers/net/ethernet/intel/ice/ice_flow.c      | 45 +++++++-------
 11 files changed, 185 insertions(+), 230 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index b007a84268a7ba0378bb6a99012be2cb2beb7e1e..1e5fd63d47f47c10e5e669259dd0d7af1194f451 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -4,6 +4,7 @@
 #ifndef _I40E_TXRX_H_
 #define _I40E_TXRX_H_
 
+#include <linux/net/intel/libie/pctype.h>
 #include <net/xdp.h>
 #include "i40e_type.h"
 
@@ -72,25 +73,25 @@ enum i40e_dyn_idx {
 
 /* Supported RSS offloads */
 #define I40E_DEFAULT_RSS_HASHCFG ( \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV4_UDP) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV4_SCTP) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV4_TCP) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV4_OTHER) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_FRAG_IPV4) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV6_UDP) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV6_TCP) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV6_SCTP) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV6_OTHER) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_FRAG_IPV6) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_L2_PAYLOAD))
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_SCTP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV4) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_SCTP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV6) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_L2_PAYLOAD))
 
 #define I40E_DEFAULT_RSS_HASHCFG_EXPANDED (I40E_DEFAULT_RSS_HASHCFG | \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP) | \
-	BIT_ULL(I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP))
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP))
 
 #define i40e_pf_get_default_rss_hashcfg(pf) \
 	(test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE, (pf)->hw.caps) ? \
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 28568e126850e143d194f76c0fec69fcb724419b..a09ed83835ffef72d84fedb2600ef2fcbb0b251b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -929,38 +929,6 @@ struct i40e_filter_program_desc {
 #define I40E_TXD_FLTR_QW0_PCTYPE_MASK	(0x3FUL << \
 					 I40E_TXD_FLTR_QW0_PCTYPE_SHIFT)
 
-/* Packet Classifier Types for filters */
-enum i40e_filter_pctype {
-	/* Note: Values 0-28 are reserved for future use.
-	 * Value 29, 30, 32 are not supported on XL710 and X710.
-	 */
-	I40E_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP	= 29,
-	I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP	= 30,
-	I40E_FILTER_PCTYPE_NONF_IPV4_UDP		= 31,
-	I40E_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK	= 32,
-	I40E_FILTER_PCTYPE_NONF_IPV4_TCP		= 33,
-	I40E_FILTER_PCTYPE_NONF_IPV4_SCTP		= 34,
-	I40E_FILTER_PCTYPE_NONF_IPV4_OTHER		= 35,
-	I40E_FILTER_PCTYPE_FRAG_IPV4			= 36,
-	/* Note: Values 37-38 are reserved for future use.
-	 * Value 39, 40, 42 are not supported on XL710 and X710.
-	 */
-	I40E_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP	= 39,
-	I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP	= 40,
-	I40E_FILTER_PCTYPE_NONF_IPV6_UDP		= 41,
-	I40E_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK	= 42,
-	I40E_FILTER_PCTYPE_NONF_IPV6_TCP		= 43,
-	I40E_FILTER_PCTYPE_NONF_IPV6_SCTP		= 44,
-	I40E_FILTER_PCTYPE_NONF_IPV6_OTHER		= 45,
-	I40E_FILTER_PCTYPE_FRAG_IPV6			= 46,
-	/* Note: Value 47 is reserved for future use */
-	I40E_FILTER_PCTYPE_FCOE_OX			= 48,
-	I40E_FILTER_PCTYPE_FCOE_RX			= 49,
-	I40E_FILTER_PCTYPE_FCOE_OTHER			= 50,
-	/* Note: Values 51-62 are reserved for future use */
-	I40E_FILTER_PCTYPE_L2_PAYLOAD			= 63,
-};
-
 enum i40e_filter_program_desc_dest {
 	I40E_FILTER_PROGRAM_DESC_DEST_DROP_PACKET		= 0x0,
 	I40E_FILTER_PROGRAM_DESC_DEST_DIRECT_PACKET_QINDEX	= 0x1,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 94b324f212bd9c909e3bc1c9d9f68c6e8f0ee994..df49b0b1d54a881a53fe0d895d8ce4df8fc69d19 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -4,6 +4,8 @@
 #ifndef _IAVF_TXRX_H_
 #define _IAVF_TXRX_H_
 
+#include <linux/net/intel/libie/pctype.h>
+
 /* Interrupt Throttling and Rate Limiting Goodies */
 #define IAVF_DEFAULT_IRQ_WORK      256
 
@@ -60,25 +62,25 @@ enum iavf_dyn_idx_t {
 
 /* Supported RSS offloads */
 #define IAVF_DEFAULT_RSS_HASHCFG ( \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV4_UDP) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV4_SCTP) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV4_TCP) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV4_OTHER) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_FRAG_IPV4) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV6_UDP) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV6_TCP) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV6_SCTP) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV6_OTHER) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_FRAG_IPV6) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_L2_PAYLOAD))
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_SCTP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV4) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_SCTP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV6) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_L2_PAYLOAD))
 
 #define IAVF_DEFAULT_RSS_HASHCFG_EXPANDED (IAVF_DEFAULT_RSS_HASHCFG | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP) | \
-	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP))
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP))
 
 /* How many Rx Buffers do we bundle into one write to the hardware ? */
 #define IAVF_RX_INCREMENT(r, i) \
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index f9e1319620f451ac09ac64d90d2f970f3c8af2bb..cb12e86ba4a6b10a49182d21903395a64e46e02b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -463,38 +463,6 @@ enum iavf_tx_ctx_desc_cmd_bits {
 	IAVF_TX_CTX_DESC_SWPE		= 0x40
 };
 
-/* Packet Classifier Types for filters */
-enum iavf_filter_pctype {
-	/* Note: Values 0-28 are reserved for future use.
-	 * Value 29, 30, 32 are not supported on XL710 and X710.
-	 */
-	IAVF_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP	= 29,
-	IAVF_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP	= 30,
-	IAVF_FILTER_PCTYPE_NONF_IPV4_UDP		= 31,
-	IAVF_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK	= 32,
-	IAVF_FILTER_PCTYPE_NONF_IPV4_TCP		= 33,
-	IAVF_FILTER_PCTYPE_NONF_IPV4_SCTP		= 34,
-	IAVF_FILTER_PCTYPE_NONF_IPV4_OTHER		= 35,
-	IAVF_FILTER_PCTYPE_FRAG_IPV4			= 36,
-	/* Note: Values 37-38 are reserved for future use.
-	 * Value 39, 40, 42 are not supported on XL710 and X710.
-	 */
-	IAVF_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP	= 39,
-	IAVF_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP	= 40,
-	IAVF_FILTER_PCTYPE_NONF_IPV6_UDP		= 41,
-	IAVF_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK	= 42,
-	IAVF_FILTER_PCTYPE_NONF_IPV6_TCP		= 43,
-	IAVF_FILTER_PCTYPE_NONF_IPV6_SCTP		= 44,
-	IAVF_FILTER_PCTYPE_NONF_IPV6_OTHER		= 45,
-	IAVF_FILTER_PCTYPE_FRAG_IPV6			= 46,
-	/* Note: Value 47 is reserved for future use */
-	IAVF_FILTER_PCTYPE_FCOE_OX			= 48,
-	IAVF_FILTER_PCTYPE_FCOE_RX			= 49,
-	IAVF_FILTER_PCTYPE_FCOE_OTHER			= 50,
-	/* Note: Values 51-62 are reserved for future use */
-	IAVF_FILTER_PCTYPE_L2_PAYLOAD			= 63,
-};
-
 #define IAVF_TXD_CTX_QW1_TSO_LEN_SHIFT	30
 #define IAVF_TXD_CTX_QW1_TSO_LEN_MASK	(0x3FFFFULL << \
 					 IAVF_TXD_CTX_QW1_TSO_LEN_SHIFT)
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index b1313fb61677f0bbfedfb937a5ce3f87d4adc9e1..52f906d89eca1de0ba23c2061a6ee43a941c22f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -4,6 +4,8 @@
 #ifndef _ICE_FLOW_H_
 #define _ICE_FLOW_H_
 
+#include <linux/net/intel/libie/pctype.h>
+
 #include "ice_flex_type.h"
 #include "ice_parser.h"
 
@@ -264,57 +266,27 @@ enum ice_flow_field {
 #define ICE_FLOW_HASH_FLD_GTPU_DWN_TEID \
 	BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_DWN_TEID)
 
-/* Flow headers and fields for AVF support */
-enum ice_flow_avf_hdr_field {
-	/* Values 0 - 28 are reserved for future use */
-	ICE_AVF_FLOW_FIELD_INVALID		= 0,
-	ICE_AVF_FLOW_FIELD_UNICAST_IPV4_UDP	= 29,
-	ICE_AVF_FLOW_FIELD_MULTICAST_IPV4_UDP,
-	ICE_AVF_FLOW_FIELD_IPV4_UDP,
-	ICE_AVF_FLOW_FIELD_IPV4_TCP_SYN_NO_ACK,
-	ICE_AVF_FLOW_FIELD_IPV4_TCP,
-	ICE_AVF_FLOW_FIELD_IPV4_SCTP,
-	ICE_AVF_FLOW_FIELD_IPV4_OTHER,
-	ICE_AVF_FLOW_FIELD_FRAG_IPV4,
-	/* Values 37-38 are reserved */
-	ICE_AVF_FLOW_FIELD_UNICAST_IPV6_UDP	= 39,
-	ICE_AVF_FLOW_FIELD_MULTICAST_IPV6_UDP,
-	ICE_AVF_FLOW_FIELD_IPV6_UDP,
-	ICE_AVF_FLOW_FIELD_IPV6_TCP_SYN_NO_ACK,
-	ICE_AVF_FLOW_FIELD_IPV6_TCP,
-	ICE_AVF_FLOW_FIELD_IPV6_SCTP,
-	ICE_AVF_FLOW_FIELD_IPV6_OTHER,
-	ICE_AVF_FLOW_FIELD_FRAG_IPV6,
-	ICE_AVF_FLOW_FIELD_RSVD47,
-	ICE_AVF_FLOW_FIELD_FCOE_OX,
-	ICE_AVF_FLOW_FIELD_FCOE_RX,
-	ICE_AVF_FLOW_FIELD_FCOE_OTHER,
-	/* Values 51-62 are reserved */
-	ICE_AVF_FLOW_FIELD_L2_PAYLOAD		= 63,
-	ICE_AVF_FLOW_FIELD_MAX
-};
-
 /* Supported RSS offloads  This macro is defined to support
  * VIRTCHNL_OP_GET_RSS_HASHCFG_CAPS ops. PF driver sends the RSS hardware
  * capabilities to the caller of this ops.
  */
 #define ICE_DEFAULT_RSS_HASHCFG ( \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_UDP) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_SCTP) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_TCP) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_OTHER) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_FRAG_IPV4) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_IPV6_UDP) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_IPV6_TCP) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_IPV6_SCTP) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_IPV6_OTHER) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_FRAG_IPV6) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_TCP_SYN_NO_ACK) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_UNICAST_IPV4_UDP) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_MULTICAST_IPV4_UDP) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_IPV6_TCP_SYN_NO_ACK) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_UNICAST_IPV6_UDP) | \
-	BIT_ULL(ICE_AVF_FLOW_FIELD_MULTICAST_IPV6_UDP))
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_SCTP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV4) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_SCTP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV6) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP) | \
+	BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP))
 
 enum ice_rss_cfg_hdr_type {
 	ICE_RSS_OUTER_HEADERS, /* take outer headers as inputset. */
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 362d1cdc8cd8adc99467ebb1f7e6e28b1817f7cb..5be1881abbb66a1c1298d99a78840a43d09671d8 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -982,6 +982,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(4, virtchnl_rss_lut);
  * traffic types that are hashed by the hardware.
  */
 struct virtchnl_rss_hashcfg {
+	/* Bits defined by enum libie_filter_pctype */
 	u64 hashcfg;
 };
 
diff --git a/include/linux/net/intel/libie/pctype.h b/include/linux/net/intel/libie/pctype.h
new file mode 100644
index 0000000000000000000000000000000000000000..d783417fbf36c2be58c295e5eb1254f44d69d60d
--- /dev/null
+++ b/include/linux/net/intel/libie/pctype.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2025 Intel Corporation */
+
+#ifndef __LIBIE_PCTYPE_H
+#define __LIBIE_PCTYPE_H
+
+/* Packet Classifier Type indexes, used to set the xxQF_HENA registers. Also
+ * communicated over the virtchnl API as part of struct virtchnl_rss_hashena.
+ */
+enum libie_filter_pctype {
+	/* Note: Values 0-28 are reserved for future use.
+	 * Value 29, 30, 32 are not supported on XL710 and X710.
+	 */
+	LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP	= 29,
+	LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP	= 30,
+	LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP		= 31,
+	LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK	= 32,
+	LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP		= 33,
+	LIBIE_FILTER_PCTYPE_NONF_IPV4_SCTP		= 34,
+	LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER		= 35,
+	LIBIE_FILTER_PCTYPE_FRAG_IPV4			= 36,
+	/* Note: Values 37-38 are reserved for future use.
+	 * Value 39, 40, 42 are not supported on XL710 and X710.
+	 */
+	LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP	= 39,
+	LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP	= 40,
+	LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP		= 41,
+	LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK	= 42,
+	LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP		= 43,
+	LIBIE_FILTER_PCTYPE_NONF_IPV6_SCTP		= 44,
+	LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER		= 45,
+	LIBIE_FILTER_PCTYPE_FRAG_IPV6			= 46,
+	/* Note: Value 47 is reserved for future use */
+	LIBIE_FILTER_PCTYPE_FCOE_OX			= 48,
+	LIBIE_FILTER_PCTYPE_FCOE_RX			= 49,
+	LIBIE_FILTER_PCTYPE_FCOE_OTHER			= 50,
+	/* Note: Values 51-62 are reserved for future use */
+	LIBIE_FILTER_PCTYPE_L2_PAYLOAD			= 63
+};
+
+#endif /* __LIBIE_PCTYPE_H */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 8a7a83f83ee510a791cdafb75ac65bf302b30104..814e20325feb70d7aff894962ce3432df8c77ffe 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -3,6 +3,7 @@
 
 /* ethtool support for i40e */
 
+#include <linux/net/intel/libie/pctype.h>
 #include "i40e_devids.h"
 #include "i40e_diag.h"
 #include "i40e_txrx_common.h"
@@ -3146,16 +3147,16 @@ static int i40e_get_rss_hash_opts(struct i40e_pf *pf, struct ethtool_rxnfc *cmd)
 
 	switch (cmd->flow_type) {
 	case TCP_V4_FLOW:
-		flow_pctype = I40E_FILTER_PCTYPE_NONF_IPV4_TCP;
+		flow_pctype = LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP;
 		break;
 	case UDP_V4_FLOW:
-		flow_pctype = I40E_FILTER_PCTYPE_NONF_IPV4_UDP;
+		flow_pctype = LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP;
 		break;
 	case TCP_V6_FLOW:
-		flow_pctype = I40E_FILTER_PCTYPE_NONF_IPV6_TCP;
+		flow_pctype = LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP;
 		break;
 	case UDP_V6_FLOW:
-		flow_pctype = I40E_FILTER_PCTYPE_NONF_IPV6_UDP;
+		flow_pctype = LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP;
 		break;
 	case SCTP_V4_FLOW:
 	case AH_ESP_V4_FLOW:
@@ -3412,28 +3413,28 @@ static int i40e_get_ethtool_fdir_entry(struct i40e_pf *pf,
 
 	switch (rule->flow_type) {
 	case SCTP_V4_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV4_SCTP;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV4_SCTP;
 		break;
 	case TCP_V4_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV4_TCP;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP;
 		break;
 	case UDP_V4_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV4_UDP;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP;
 		break;
 	case SCTP_V6_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV6_SCTP;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV6_SCTP;
 		break;
 	case TCP_V6_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV6_TCP;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP;
 		break;
 	case UDP_V6_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV6_UDP;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP;
 		break;
 	case IP_USER_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV4_OTHER;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER;
 		break;
 	case IPV6_USER_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV6_OTHER;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER;
 		break;
 	default:
 		/* If we have stored a filter with a flow type not listed here
@@ -3643,40 +3644,40 @@ static int i40e_set_rss_hash_opt(struct i40e_pf *pf, struct ethtool_rxnfc *nfc)
 
 	switch (nfc->flow_type) {
 	case TCP_V4_FLOW:
-		set_bit(I40E_FILTER_PCTYPE_NONF_IPV4_TCP, flow_pctypes);
+		set_bit(LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP, flow_pctypes);
 		if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE,
 			     pf->hw.caps))
-			set_bit(I40E_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK,
+			set_bit(LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK,
 				flow_pctypes);
 		break;
 	case TCP_V6_FLOW:
-		set_bit(I40E_FILTER_PCTYPE_NONF_IPV6_TCP, flow_pctypes);
+		set_bit(LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP, flow_pctypes);
 		if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE,
 			     pf->hw.caps))
-			set_bit(I40E_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK,
+			set_bit(LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK,
 				flow_pctypes);
 		break;
 	case UDP_V4_FLOW:
-		set_bit(I40E_FILTER_PCTYPE_NONF_IPV4_UDP, flow_pctypes);
+		set_bit(LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP, flow_pctypes);
 		if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE,
 			     pf->hw.caps)) {
-			set_bit(I40E_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP,
+			set_bit(LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP,
 				flow_pctypes);
-			set_bit(I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP,
+			set_bit(LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP,
 				flow_pctypes);
 		}
-		hena |= BIT_ULL(I40E_FILTER_PCTYPE_FRAG_IPV4);
+		hena |= BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV4);
 		break;
 	case UDP_V6_FLOW:
-		set_bit(I40E_FILTER_PCTYPE_NONF_IPV6_UDP, flow_pctypes);
+		set_bit(LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP, flow_pctypes);
 		if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE,
 			     pf->hw.caps)) {
-			set_bit(I40E_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP,
+			set_bit(LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP,
 				flow_pctypes);
-			set_bit(I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP,
+			set_bit(LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP,
 				flow_pctypes);
 		}
-		hena |= BIT_ULL(I40E_FILTER_PCTYPE_FRAG_IPV6);
+		hena |= BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV6);
 		break;
 	case AH_ESP_V4_FLOW:
 	case AH_V4_FLOW:
@@ -3685,7 +3686,7 @@ static int i40e_set_rss_hash_opt(struct i40e_pf *pf, struct ethtool_rxnfc *nfc)
 		if ((nfc->data & RXH_L4_B_0_1) ||
 		    (nfc->data & RXH_L4_B_2_3))
 			return -EINVAL;
-		hena |= BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV4_OTHER);
+		hena |= BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER);
 		break;
 	case AH_ESP_V6_FLOW:
 	case AH_V6_FLOW:
@@ -3694,15 +3695,15 @@ static int i40e_set_rss_hash_opt(struct i40e_pf *pf, struct ethtool_rxnfc *nfc)
 		if ((nfc->data & RXH_L4_B_0_1) ||
 		    (nfc->data & RXH_L4_B_2_3))
 			return -EINVAL;
-		hena |= BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV6_OTHER);
+		hena |= BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER);
 		break;
 	case IPV4_FLOW:
-		hena |= BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV4_OTHER) |
-			BIT_ULL(I40E_FILTER_PCTYPE_FRAG_IPV4);
+		hena |= BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER) |
+			BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV4);
 		break;
 	case IPV6_FLOW:
-		hena |= BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV6_OTHER) |
-			BIT_ULL(I40E_FILTER_PCTYPE_FRAG_IPV6);
+		hena |= BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER) |
+			BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV6);
 		break;
 	default:
 		return -EINVAL;
@@ -4312,36 +4313,36 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
 
 	switch (fsp->flow_type & ~FLOW_EXT) {
 	case SCTP_V4_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV4_SCTP;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV4_SCTP;
 		fdir_filter_count = &pf->fd_sctp4_filter_cnt;
 		break;
 	case TCP_V4_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV4_TCP;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP;
 		fdir_filter_count = &pf->fd_tcp4_filter_cnt;
 		break;
 	case UDP_V4_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV4_UDP;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP;
 		fdir_filter_count = &pf->fd_udp4_filter_cnt;
 		break;
 	case SCTP_V6_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV6_SCTP;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV6_SCTP;
 		fdir_filter_count = &pf->fd_sctp6_filter_cnt;
 		break;
 	case TCP_V6_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV6_TCP;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP;
 		fdir_filter_count = &pf->fd_tcp6_filter_cnt;
 		break;
 	case UDP_V6_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV6_UDP;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP;
 		fdir_filter_count = &pf->fd_udp6_filter_cnt;
 		break;
 	case IP_USER_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV4_OTHER;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER;
 		fdir_filter_count = &pf->fd_ip4_filter_cnt;
 		flex_l3 = true;
 		break;
 	case IPV6_USER_FLOW:
-		index = I40E_FILTER_PCTYPE_NONF_IPV6_OTHER;
+		index = LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER;
 		fdir_filter_count = &pf->fd_ip6_filter_cnt;
 		flex_l3 = true;
 		break;
@@ -4677,8 +4678,8 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
 	 * separate support, we'll always assume and enforce that the two flow
 	 * types must have matching input sets.
 	 */
-	if (index == I40E_FILTER_PCTYPE_NONF_IPV4_OTHER)
-		i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_FRAG_IPV4,
+	if (index == LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER)
+		i40e_write_fd_input_set(pf, LIBIE_FILTER_PCTYPE_FRAG_IPV4,
 					new_mask);
 
 	/* Add the new offset and update table, if necessary */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 516e07b58161de8acf4c742c246fcf94d1e22c02..67faf5a8dcbfedf547ed340b98d16eac854c673d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3,6 +3,7 @@
 
 #include <generated/utsrelease.h>
 #include <linux/crash_dump.h>
+#include <linux/net/intel/libie/pctype.h>
 #include <linux/if_bridge.h>
 #include <linux/if_macvlan.h>
 #include <linux/module.h>
@@ -9188,47 +9189,47 @@ static void i40e_fdir_filter_exit(struct i40e_pf *pf)
 	i40e_reset_fdir_filter_cnt(pf);
 
 	/* Reprogram the default input set for TCP/IPv4 */
-	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV4_TCP,
+	i40e_write_fd_input_set(pf, LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP,
 				I40E_L3_SRC_MASK | I40E_L3_DST_MASK |
 				I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
 
 	/* Reprogram the default input set for TCP/IPv6 */
-	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV6_TCP,
+	i40e_write_fd_input_set(pf, LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP,
 				I40E_L3_V6_SRC_MASK | I40E_L3_V6_DST_MASK |
 				I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
 
 	/* Reprogram the default input set for UDP/IPv4 */
-	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV4_UDP,
+	i40e_write_fd_input_set(pf, LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP,
 				I40E_L3_SRC_MASK | I40E_L3_DST_MASK |
 				I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
 
 	/* Reprogram the default input set for UDP/IPv6 */
-	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV6_UDP,
+	i40e_write_fd_input_set(pf, LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP,
 				I40E_L3_V6_SRC_MASK | I40E_L3_V6_DST_MASK |
 				I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
 
 	/* Reprogram the default input set for SCTP/IPv4 */
-	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV4_SCTP,
+	i40e_write_fd_input_set(pf, LIBIE_FILTER_PCTYPE_NONF_IPV4_SCTP,
 				I40E_L3_SRC_MASK | I40E_L3_DST_MASK |
 				I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
 
 	/* Reprogram the default input set for SCTP/IPv6 */
-	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV6_SCTP,
+	i40e_write_fd_input_set(pf, LIBIE_FILTER_PCTYPE_NONF_IPV6_SCTP,
 				I40E_L3_V6_SRC_MASK | I40E_L3_V6_DST_MASK |
 				I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
 
 	/* Reprogram the default input set for Other/IPv4 */
-	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV4_OTHER,
+	i40e_write_fd_input_set(pf, LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER,
 				I40E_L3_SRC_MASK | I40E_L3_DST_MASK);
 
-	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_FRAG_IPV4,
+	i40e_write_fd_input_set(pf, LIBIE_FILTER_PCTYPE_FRAG_IPV4,
 				I40E_L3_SRC_MASK | I40E_L3_DST_MASK);
 
 	/* Reprogram the default input set for Other/IPv6 */
-	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV6_OTHER,
+	i40e_write_fd_input_set(pf, LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER,
 				I40E_L3_SRC_MASK | I40E_L3_DST_MASK);
 
-	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_FRAG_IPV6,
+	i40e_write_fd_input_set(pf, LIBIE_FILTER_PCTYPE_FRAG_IPV6,
 				I40E_L3_SRC_MASK | I40E_L3_DST_MASK);
 }
 
@@ -9656,7 +9657,7 @@ static void i40e_reenable_fdir_atr(struct i40e_pf *pf)
 		 * settings. It is safe to restore the default input set
 		 * because there are no active TCPv4 filter rules.
 		 */
-		i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV4_TCP,
+		i40e_write_fd_input_set(pf, LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP,
 					I40E_L3_SRC_MASK | I40E_L3_DST_MASK |
 					I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index c006f716a3bdbeddeb4bc79c713859a7d09acd89..048c3303913094f0a7b97e8f36ea0dd640f0dc69 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2,6 +2,7 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include <linux/bpf_trace.h>
+#include <linux/net/intel/libie/pctype.h>
 #include <linux/net/intel/libie/rx.h>
 #include <linux/prefetch.h>
 #include <linux/sctp.h>
@@ -397,12 +398,12 @@ static int i40e_add_del_fdir_udp(struct i40e_vsi *vsi,
 		ret = i40e_prepare_fdir_filter
 			(pf, fd_data, add, raw_packet,
 			 I40E_UDPIP_DUMMY_PACKET_LEN,
-			 I40E_FILTER_PCTYPE_NONF_IPV4_UDP);
+			 LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP);
 	else
 		ret = i40e_prepare_fdir_filter
 			(pf, fd_data, add, raw_packet,
 			 I40E_UDPIP6_DUMMY_PACKET_LEN,
-			 I40E_FILTER_PCTYPE_NONF_IPV6_UDP);
+			 LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP);
 
 	if (ret) {
 		kfree(raw_packet);
@@ -444,12 +445,12 @@ static int i40e_add_del_fdir_tcp(struct i40e_vsi *vsi,
 		ret = i40e_prepare_fdir_filter
 			(pf, fd_data, add, raw_packet,
 			 I40E_TCPIP_DUMMY_PACKET_LEN,
-			 I40E_FILTER_PCTYPE_NONF_IPV4_TCP);
+			 LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP);
 	else
 		ret = i40e_prepare_fdir_filter
 			(pf, fd_data, add, raw_packet,
 			 I40E_TCPIP6_DUMMY_PACKET_LEN,
-			 I40E_FILTER_PCTYPE_NONF_IPV6_TCP);
+			 LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP);
 
 	if (ret) {
 		kfree(raw_packet);
@@ -499,12 +500,12 @@ static int i40e_add_del_fdir_sctp(struct i40e_vsi *vsi,
 		ret = i40e_prepare_fdir_filter
 			(pf, fd_data, add, raw_packet,
 			 I40E_SCTPIP_DUMMY_PACKET_LEN,
-			 I40E_FILTER_PCTYPE_NONF_IPV4_SCTP);
+			 LIBIE_FILTER_PCTYPE_NONF_IPV4_SCTP);
 	else
 		ret = i40e_prepare_fdir_filter
 			(pf, fd_data, add, raw_packet,
 			 I40E_SCTPIP6_DUMMY_PACKET_LEN,
-			 I40E_FILTER_PCTYPE_NONF_IPV6_SCTP);
+			 LIBIE_FILTER_PCTYPE_NONF_IPV6_SCTP);
 
 	if (ret) {
 		kfree(raw_packet);
@@ -543,11 +544,11 @@ static int i40e_add_del_fdir_ip(struct i40e_vsi *vsi,
 	int i;
 
 	if (ipv4) {
-		iter_start = I40E_FILTER_PCTYPE_NONF_IPV4_OTHER;
-		iter_end = I40E_FILTER_PCTYPE_FRAG_IPV4;
+		iter_start = LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER;
+		iter_end = LIBIE_FILTER_PCTYPE_FRAG_IPV4;
 	} else {
-		iter_start = I40E_FILTER_PCTYPE_NONF_IPV6_OTHER;
-		iter_end = I40E_FILTER_PCTYPE_FRAG_IPV6;
+		iter_start = LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER;
+		iter_end = LIBIE_FILTER_PCTYPE_FRAG_IPV6;
 	}
 
 	for (i = iter_start; i <= iter_end; i++) {
@@ -2948,9 +2949,9 @@ static void i40e_atr(struct i40e_ring *tx_ring, struct sk_buff *skb,
 	flex_ptype = FIELD_PREP(I40E_TXD_FLTR_QW0_QINDEX_MASK,
 				tx_ring->queue_index);
 	flex_ptype |= (tx_flags & I40E_TX_FLAGS_IPV4) ?
-		      (I40E_FILTER_PCTYPE_NONF_IPV4_TCP <<
+		      (LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP <<
 		       I40E_TXD_FLTR_QW0_PCTYPE_SHIFT) :
-		      (I40E_FILTER_PCTYPE_NONF_IPV6_TCP <<
+		      (LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP <<
 		       I40E_TXD_FLTR_QW0_PCTYPE_SHIFT);
 
 	flex_ptype |= tx_ring->vsi->id << I40E_TXD_FLTR_QW0_DEST_VSI_SHIFT;
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index d97b751052f221e7225fe996c50d472521bb807a..278e576862740e150c49c8b0d0897fd1f777b62d 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -2573,38 +2573,38 @@ ice_rem_rss_cfg(struct ice_hw *hw, u16 vsi_handle,
  * convert its values to their appropriate flow L3, L4 values.
  */
 #define ICE_FLOW_AVF_RSS_IPV4_MASKS \
-	(BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_OTHER) | \
-	 BIT_ULL(ICE_AVF_FLOW_FIELD_FRAG_IPV4))
+	(BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER) | \
+	 BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV4))
 #define ICE_FLOW_AVF_RSS_TCP_IPV4_MASKS \
-	(BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_TCP_SYN_NO_ACK) | \
-	 BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_TCP))
+	(BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK) | \
+	 BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP))
 #define ICE_FLOW_AVF_RSS_UDP_IPV4_MASKS \
-	(BIT_ULL(ICE_AVF_FLOW_FIELD_UNICAST_IPV4_UDP) | \
-	 BIT_ULL(ICE_AVF_FLOW_FIELD_MULTICAST_IPV4_UDP) | \
-	 BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_UDP))
+	(BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP) | \
+	 BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP) | \
+	 BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP))
 #define ICE_FLOW_AVF_RSS_ALL_IPV4_MASKS \
 	(ICE_FLOW_AVF_RSS_TCP_IPV4_MASKS | ICE_FLOW_AVF_RSS_UDP_IPV4_MASKS | \
-	 ICE_FLOW_AVF_RSS_IPV4_MASKS | BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_SCTP))
+	 ICE_FLOW_AVF_RSS_IPV4_MASKS | BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_SCTP))
 
 #define ICE_FLOW_AVF_RSS_IPV6_MASKS \
-	(BIT_ULL(ICE_AVF_FLOW_FIELD_IPV6_OTHER) | \
-	 BIT_ULL(ICE_AVF_FLOW_FIELD_FRAG_IPV6))
+	(BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER) | \
+	 BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV6))
 #define ICE_FLOW_AVF_RSS_UDP_IPV6_MASKS \
-	(BIT_ULL(ICE_AVF_FLOW_FIELD_UNICAST_IPV6_UDP) | \
-	 BIT_ULL(ICE_AVF_FLOW_FIELD_MULTICAST_IPV6_UDP) | \
-	 BIT_ULL(ICE_AVF_FLOW_FIELD_IPV6_UDP))
+	(BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP) | \
+	 BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP) | \
+	 BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP))
 #define ICE_FLOW_AVF_RSS_TCP_IPV6_MASKS \
-	(BIT_ULL(ICE_AVF_FLOW_FIELD_IPV6_TCP_SYN_NO_ACK) | \
-	 BIT_ULL(ICE_AVF_FLOW_FIELD_IPV6_TCP))
+	(BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK) | \
+	 BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP))
 #define ICE_FLOW_AVF_RSS_ALL_IPV6_MASKS \
 	(ICE_FLOW_AVF_RSS_TCP_IPV6_MASKS | ICE_FLOW_AVF_RSS_UDP_IPV6_MASKS | \
-	 ICE_FLOW_AVF_RSS_IPV6_MASKS | BIT_ULL(ICE_AVF_FLOW_FIELD_IPV6_SCTP))
+	 ICE_FLOW_AVF_RSS_IPV6_MASKS | BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_SCTP))
 
 /**
  * ice_add_avf_rss_cfg - add an RSS configuration for AVF driver
  * @hw: pointer to the hardware structure
  * @vsi: VF's VSI
- * @avf_hash: hash bit fields (ICE_AVF_FLOW_FIELD_*) to configure
+ * @avf_hash: hash bit fields (LIBIE_FILTER_PCTYPE_*) to configure
  *
  * This function will take the hash bitmap provided by the AVF driver via a
  * message, convert it to ICE-compatible values, and configure RSS flow
@@ -2621,8 +2621,7 @@ int ice_add_avf_rss_cfg(struct ice_hw *hw, struct ice_vsi *vsi, u64 avf_hash)
 		return -EINVAL;
 
 	vsi_handle = vsi->idx;
-	if (avf_hash == ICE_AVF_FLOW_FIELD_INVALID ||
-	    !ice_is_vsi_valid(hw, vsi_handle))
+	if (!avf_hash || !ice_is_vsi_valid(hw, vsi_handle))
 		return -EINVAL;
 
 	/* Make sure no unsupported bits are specified */
@@ -2658,11 +2657,11 @@ int ice_add_avf_rss_cfg(struct ice_hw *hw, struct ice_vsi *vsi, u64 avf_hash)
 					ICE_FLOW_HASH_UDP_PORT;
 				hash_flds &= ~ICE_FLOW_AVF_RSS_UDP_IPV4_MASKS;
 			} else if (hash_flds &
-				   BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_SCTP)) {
+				   BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_SCTP)) {
 				rss_hash = ICE_FLOW_HASH_IPV4 |
 					ICE_FLOW_HASH_SCTP_PORT;
 				hash_flds &=
-					~BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_SCTP);
+					~BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_SCTP);
 			}
 		} else if (hash_flds & ICE_FLOW_AVF_RSS_ALL_IPV6_MASKS) {
 			if (hash_flds & ICE_FLOW_AVF_RSS_IPV6_MASKS) {
@@ -2679,11 +2678,11 @@ int ice_add_avf_rss_cfg(struct ice_hw *hw, struct ice_vsi *vsi, u64 avf_hash)
 					ICE_FLOW_HASH_UDP_PORT;
 				hash_flds &= ~ICE_FLOW_AVF_RSS_UDP_IPV6_MASKS;
 			} else if (hash_flds &
-				   BIT_ULL(ICE_AVF_FLOW_FIELD_IPV6_SCTP)) {
+				   BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_SCTP)) {
 				rss_hash = ICE_FLOW_HASH_IPV6 |
 					ICE_FLOW_HASH_SCTP_PORT;
 				hash_flds &=
-					~BIT_ULL(ICE_AVF_FLOW_FIELD_IPV6_SCTP);
+					~BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_SCTP);
 			}
 		}
 

-- 
2.48.1.397.gec9d649cc640

