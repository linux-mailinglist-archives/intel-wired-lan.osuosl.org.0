Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A530DC0CB49
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 10:38:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2BEB840E1;
	Mon, 27 Oct 2025 09:37:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fCHfRftj0pqu; Mon, 27 Oct 2025 09:37:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B77AC840EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761557871;
	bh=4BuS3j43uQrydBIdacT3XexsTrszz65PbF+VTfn+XiE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PrYuYmkpDlHw8EVA1nh9AL8F5f6hxBvA/5m80dBS6yjonSStE/U3WY/7LMCultRr2
	 sjJ3sb/38YD2sL4WnXhwQZMb7UpXpT8t5djNTJNpbg9UwyLGCYEALqxNwn7n5swB8C
	 Fq3FF9TJ99a2PzI7F6nLYiddam8gHyHlzGf3p9ZjGt6Td8vMIK284J1Mmzjm833/+W
	 GmPZj8Ekf0B5aQbm9Vqd5uLLSkYdDQ6WNhGFblUfWQ5xUXdNvcCS4OC+WJNH+mLDeH
	 QwS+efG0XYTKkUhaHY8i94IMF/YZagG2RNUyYqwXiCcjXnw4s5wuk6uHrNflzlrbkB
	 lD5nzcGIclDPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B77AC840EB;
	Mon, 27 Oct 2025 09:37:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EBF7F43F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE90040DFC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:37:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FZ-uqdXty4SV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 09:37:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E1F5C40DB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E1F5C40DB3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E1F5C40DB3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:37:49 +0000 (UTC)
X-CSE-ConnectionGUID: VLx14kZQSWWDc8vOWlxkdQ==
X-CSE-MsgGUID: Cr3rgdUVSyiW5mZfHGERCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63670496"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="63670496"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 02:37:50 -0700
X-CSE-ConnectionGUID: sFMZCnJbQb6KsxeS+rznSQ==
X-CSE-MsgGUID: nkErmlg1RbqzNNtnpvxbZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="185349413"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa008.fm.intel.com with ESMTP; 27 Oct 2025 02:37:47 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Dan Nowlin <dan.nowlin@intel.com>, Qi Zhang <qi.z.zhang@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Mon, 27 Oct 2025 10:37:35 +0100
Message-ID: <20251027093736.3582567-6-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251027093736.3582567-1-aleksandr.loktionov@intel.com>
References: <20251027093736.3582567-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761557870; x=1793093870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HTg9QhjkoVKmQZduQnEhsCxpYzGKo02PCCSDeK7uETI=;
 b=oEHnsEWK4NvMD7G4RZp19ptjocKvjZa6AycMezQaXRbdi5EdEzFosx9J
 MSqqQJZ195uLy1X76LFolgvot6a5Qs+cZK0V/4Aji0a31hKUCrP30v8W7
 lO48gMBy2lNBA1TUjvbw1eKbJArpD8HIwj5TOWJc5OOMY8+gJnpi8mMqw
 C+QQN5bGbsuQ/lv4GSMPAmuIcrbfJ17bVkz9DNzUykOAVUjivUjc2t1aC
 glEy6MZ2YnvzuGtzAI+MijSk11klt5hg6FPQqjDVUi1cekqDtWdstpLc/
 dXnNjSP298z0UFQoukKtRLGR0ltMhrRIaC7J5yzSqnVXgSR6HUwHHsFVF
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oEHnsEWK
Subject: [Intel-wired-lan] [PATCH iwl-next v7 5/6] ice: Extend PTYPE bitmap
 coverage for GTP encapsulated flows
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

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Consolidate updates to the Protocol Type (PTYPE) bitmap definitions
across multiple flow types in the Intel ICE driver to support GTP
(GPRS Tunneling Protocol) encapsulated traffic.

Enable improved Receive Side Scaling (RSS) configuration for both user
and control plane GTP flows.

Cover a wide range of protocol and encapsulation scenarios, including:
 - MAC OFOS and IL
 - IPv4 and IPv6 (OFOS, IL, ALL, no-L4)
 - TCP, SCTP, ICMP
 - GRE OF
 - GTPC (control plane)

Expand the PTYPE bitmap entries to improve classification and
distribution of GTP traffic across multiple queues, enhancing
performance and scalability in mobile network environments.

--
 ice_flow.c |   54 +++++++++++++++++++++++++++---------------------------
 1 file changed, 26 insertions(+), 26 deletions(-)

Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Co-developed-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Co-developed-by: Jie Wang <jie1x.wang@intel.com>
Signed-off-by: Jie Wang <jie1x.wang@intel.com>
Co-developed-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c | 52 +++++++++++------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 54e259b..10b9203 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -219,9 +219,9 @@ struct ice_flow_field_info ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
  */
 static const u32 ice_ptypes_mac_ofos[] = {
 	0xFDC00846, 0xBFBF7F7E, 0xF70001DF, 0xFEFDFDFB,
-	0x0000077E, 0x00000000, 0x00000000, 0x00000000,
-	0x00400000, 0x03FFF000, 0x7FFFFFE0, 0x00000000,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x0000077E, 0x000003FF, 0x00000000, 0x00000000,
+	0x00400000, 0x03FFF000, 0xFFFFFFE0, 0x00000707,
+	0xFFFFF000, 0x000003FF, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -244,10 +244,10 @@ static const u32 ice_ptypes_macvlan_il[] = {
  * include IPv4 other PTYPEs
  */
 static const u32 ice_ptypes_ipv4_ofos[] = {
-	0x1DC00000, 0x04000800, 0x00000000, 0x00000000,
+	0x1D800000, 0xBFBF7800, 0x000001DF, 0x00000000,
 	0x00000000, 0x00000155, 0x00000000, 0x00000000,
-	0x00000000, 0x000FC000, 0x00000000, 0x00000000,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x000FC000, 0x000002A0, 0x00000000,
+	0x00015000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -258,10 +258,10 @@ static const u32 ice_ptypes_ipv4_ofos[] = {
  * IPv4 other PTYPEs
  */
 static const u32 ice_ptypes_ipv4_ofos_all[] = {
-	0x1DC00000, 0x04000800, 0x00000000, 0x00000000,
+	0x1D800000, 0x27BF7800, 0x00000000, 0x00000000,
 	0x00000000, 0x00000155, 0x00000000, 0x00000000,
-	0x00000000, 0x000FC000, 0x83E0F800, 0x00000101,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x000FC000, 0x83E0FAA0, 0x00000101,
+	0x3FFD5000, 0x00000000, 0x02FBEFBC, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -273,7 +273,7 @@ static const u32 ice_ptypes_ipv4_il[] = {
 	0xE0000000, 0xB807700E, 0x80000003, 0xE01DC03B,
 	0x0000000E, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x001FF800, 0x00000000,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0xC0FC0000, 0x0000000F, 0xBC0BC0BC, 0x00000BC0,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -284,10 +284,10 @@ static const u32 ice_ptypes_ipv4_il[] = {
  * include IPv6 other PTYPEs
  */
 static const u32 ice_ptypes_ipv6_ofos[] = {
-	0x00000000, 0x00000000, 0x77000000, 0x10002000,
+	0x00000000, 0x00000000, 0x76000000, 0x10002000,
 	0x00000000, 0x000002AA, 0x00000000, 0x00000000,
-	0x00000000, 0x03F00000, 0x00000000, 0x00000000,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x03F00000, 0x00000540, 0x00000000,
+	0x0002A000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -298,10 +298,10 @@ static const u32 ice_ptypes_ipv6_ofos[] = {
  * IPv6 other PTYPEs
  */
 static const u32 ice_ptypes_ipv6_ofos_all[] = {
-	0x00000000, 0x00000000, 0x77000000, 0x10002000,
-	0x00000000, 0x000002AA, 0x00000000, 0x00000000,
-	0x00080F00, 0x03F00000, 0x7C1F0000, 0x00000206,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x76000000, 0xFEFDE000,
+	0x0000077E, 0x000002AA, 0x00000000, 0x00000000,
+	0x00000000, 0x03F00000, 0x7C1F0540, 0x00000206,
+	0xC002A000, 0x000003FF, 0xBC000000, 0x0002FBEF,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -313,7 +313,7 @@ static const u32 ice_ptypes_ipv6_il[] = {
 	0x00000000, 0x03B80770, 0x000001DC, 0x0EE00000,
 	0x00000770, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x7FE00000, 0x00000000,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x3F000000, 0x000003F0, 0x02F02F00, 0x0002F02F,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -386,8 +386,8 @@ static const u32 ice_ptypes_ipv6_il_no_l4[] = {
 static const u32 ice_ptypes_udp_il[] = {
 	0x81000000, 0x20204040, 0x04000010, 0x80810102,
 	0x00000040, 0x00000000, 0x00000000, 0x00000000,
-	0x00000000, 0x00410000, 0x90842000, 0x00000007,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00410000, 0x908427E0, 0x00000007,
+	0x0413F000, 0x00000041, 0x10410410, 0x00004104,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -399,7 +399,7 @@ static const u32 ice_ptypes_tcp_il[] = {
 	0x04000000, 0x80810102, 0x10000040, 0x02040408,
 	0x00000102, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00820000, 0x21084000, 0x00000000,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x08200000, 0x00000082, 0x20820820, 0x00008208,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -411,7 +411,7 @@ static const u32 ice_ptypes_sctp_il[] = {
 	0x08000000, 0x01020204, 0x20000081, 0x04080810,
 	0x00000204, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x01040000, 0x00000000, 0x00000000,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x10400000, 0x00000104, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -435,7 +435,7 @@ static const u32 ice_ptypes_icmp_il[] = {
 	0x00000000, 0x02040408, 0x40000102, 0x08101020,
 	0x00000408, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x42108000, 0x00000000,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x20800000, 0x00000208, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -447,7 +447,7 @@ static const u32 ice_ptypes_gre_of[] = {
 	0x00000000, 0xBFBF7800, 0x000001DF, 0xFEFDE000,
 	0x0000017E, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0xBEFBEFBC, 0x0002FBEF,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -456,7 +456,7 @@ static const u32 ice_ptypes_gre_of[] = {
 
 /* Packet types for packets with an Innermost/Last MAC header */
 static const u32 ice_ptypes_mac_il[] = {
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x20000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -470,7 +470,7 @@ static const u32 ice_ptypes_mac_il[] = {
 static const u32 ice_ptypes_gtpc[] = {
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
-	0x00000000, 0x00000000, 0x00000180, 0x00000000,
+	0x00000000, 0x00000000, 0x000001E0, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
-- 
2.47.1

