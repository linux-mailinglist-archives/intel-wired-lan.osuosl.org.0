Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3748A8A6AC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 20:23:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70DA861219;
	Tue, 15 Apr 2025 18:23:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D9j_dsjfDYyR; Tue, 15 Apr 2025 18:22:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEDBA61299
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744741379;
	bh=8TdCUECGYKiJw7Aut3Iuj/CAZTMNDZ4rfqltpkUM5mE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=69AgWwl1/xKC3mvhbmbVBc5Kxs4oVmC7Tn9RuJiYxvz1SMJ4exQesayLnD7+JfR39
	 /tGmxJsKEFSL+toRFcKWbsKJmdY7r0jd9c4kzgkAZrX2r9MsgCSvH0ecfisOfOdbGI
	 T6b4VOMUnU1408zOw4p1Nv5Vwk1XrwDESvn/pcBS8oCZSvrYHTmMQxjc6T42iY9uTg
	 R2QX9+Z2PAJ/UHrGUaAL9u8mb9dmJNpjclmQFIEE+saFpo5GoEoO/zxvqstO1sxco3
	 YP4h7C3Xs68uz5DA7WAXQxTWhue1L/QxKo2aowr/slA3N/xu8BnaAwavbNovwy0mQi
	 8eI9zmRYYz6Tg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEDBA61299;
	Tue, 15 Apr 2025 18:22:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 348E1200
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:22:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 25AB261AFE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:22:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5k6mKvgXsooQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 18:22:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 341DC61219
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 341DC61219
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 341DC61219
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:22:57 +0000 (UTC)
X-CSE-ConnectionGUID: ge7wXsfMTsmJR8dpHJYpNQ==
X-CSE-MsgGUID: MsiAX0wjRwugzmtGJ4ZXnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="45981303"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="45981303"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 11:22:57 -0700
X-CSE-ConnectionGUID: psC33qSaRauDJ0iaADWGxg==
X-CSE-MsgGUID: KTkz5kJzTz2KBW2GtoD92Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130513174"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa008.fm.intel.com with ESMTP; 15 Apr 2025 11:21:39 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, saeedm@nvidia.com,
 leon@kernel.org, tariqt@nvidia.com, jonathan.lemon@gmail.com,
 richardcochran@gmail.com, aleksandr.loktionov@intel.com,
 milena.olech@intel.com
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Tue, 15 Apr 2025 20:15:41 +0200
Message-Id: <20250415181543.1072342-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250415181543.1072342-1-arkadiusz.kubalewski@intel.com>
References: <20250415181543.1072342-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744741378; x=1776277378;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xq1R6htOaVZJTfBwDOYmPxnuEFF8tRh32EE04r+5rjk=;
 b=N9bT/EX4FVHDr8hKCel9in4aMVtdK0LqAnDFhmmPIL+97Q6LR+9xRRnZ
 kSH348q+sPGmLx7eKc/4Pt2jSdphNR4uK9pX9G3wSP+DZsPj4BUrlWSMh
 XDaWTlNtV/qAY7gnIUDR6q73KAn4AYXyoFywZCa81MQI7HNiXrHl1koqp
 Bw4gM0K8vEkDgHil0AJm+IBlBDV2EvM0voT1XfufjwA0EBR7o/3Df0cGQ
 SiuHLgImArWm7w0iunKBw/39ey/Gi3z/A4cWQH6hRnTNN0I2lzeFWX8Ye
 mGr8dn4D15kxDvzvn0qGrJWjsJPxwtbePDYwGgS86s98XBJTrsZsEYQmI
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N9bT/EX4
Subject: [Intel-wired-lan] [PATCH net-next v2 2/4] dpll: add features and
 capabilities to dpll device spec
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

Add infrastructure for adding simple control over dpll device level
features.
Add define for new dpll device level feature:
DPLL_FEATURES_ALL_INPUTS_PHASE_OFFSET_MONITOR - control over monitoring of
all input pins phase offsets.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v2:
- adapt changes and align wiht new dpll_device_info struct
---
 Documentation/netlink/specs/dpll.yaml | 25 +++++++++++++++++++++++++
 drivers/dpll/dpll_nl.c                |  5 +++--
 include/uapi/linux/dpll.h             | 13 +++++++++++++
 3 files changed, 41 insertions(+), 2 deletions(-)

diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
index 8feefeae5376..c9a3873e03f6 100644
--- a/Documentation/netlink/specs/dpll.yaml
+++ b/Documentation/netlink/specs/dpll.yaml
@@ -240,6 +240,18 @@ definitions:
       integer part of a measured phase offset value.
       Value of (DPLL_A_PHASE_OFFSET % DPLL_PHASE_OFFSET_DIVIDER) is a
       fractional part of a measured phase offset value.
+  -
+    type: flags
+    name: features
+    doc: |
+      Allow simple control (enable/disable) and status checking over features
+      available per single dpll device.
+    entries:
+      -
+        name: all-inputs-phase-offset-monitor
+        doc: |
+          select if phase offset values are measured and reported for
+          all the input pins available for given dpll device
 
 attribute-sets:
   -
@@ -293,6 +305,16 @@ attribute-sets:
           be put to message multiple times to indicate possible parallel
           quality levels (e.g. one specified by ITU option 1 and another
           one specified by option 2).
+      -
+        name: capabilities
+        type: u32
+        enum: features
+        doc: Features available for a dpll device.
+      -
+        name: features
+        type: u32
+        enum: features
+        doc: Features enabled for a dpll device.
   -
     name: pin
     enum-name: dpll_a_pin
@@ -483,6 +505,8 @@ operations:
             - temp
             - clock-id
             - type
+            - capabilities
+            - features
 
       dump:
         reply: *dev-attrs
@@ -499,6 +523,7 @@ operations:
         request:
           attributes:
             - id
+            - features
     -
       name: device-create-ntf
       doc: Notification about device appearing
diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
index fe9b6893d261..3712a693c458 100644
--- a/drivers/dpll/dpll_nl.c
+++ b/drivers/dpll/dpll_nl.c
@@ -37,8 +37,9 @@ static const struct nla_policy dpll_device_get_nl_policy[DPLL_A_ID + 1] = {
 };
 
 /* DPLL_CMD_DEVICE_SET - do */
-static const struct nla_policy dpll_device_set_nl_policy[DPLL_A_ID + 1] = {
+static const struct nla_policy dpll_device_set_nl_policy[DPLL_A_FEATURES + 1] = {
 	[DPLL_A_ID] = { .type = NLA_U32, },
+	[DPLL_A_FEATURES] = NLA_POLICY_MASK(NLA_U32, 0x1),
 };
 
 /* DPLL_CMD_PIN_ID_GET - do */
@@ -105,7 +106,7 @@ static const struct genl_split_ops dpll_nl_ops[] = {
 		.doit		= dpll_nl_device_set_doit,
 		.post_doit	= dpll_post_doit,
 		.policy		= dpll_device_set_nl_policy,
-		.maxattr	= DPLL_A_ID,
+		.maxattr	= DPLL_A_FEATURES,
 		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
 	},
 	{
diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
index bf97d4b6d51f..7c8e929831aa 100644
--- a/include/uapi/linux/dpll.h
+++ b/include/uapi/linux/dpll.h
@@ -192,6 +192,17 @@ enum dpll_pin_capabilities {
 
 #define DPLL_PHASE_OFFSET_DIVIDER	1000
 
+/**
+ * enum dpll_features - Allow simple control (enable/disable) and status
+ *   checking over features available per single dpll device.
+ * @DPLL_FEATURES_ALL_INPUTS_PHASE_OFFSET_MONITOR: select if phase offset
+ *   values are measured and reported for all the input pins available for
+ *   given dpll device
+ */
+enum dpll_features {
+	DPLL_FEATURES_ALL_INPUTS_PHASE_OFFSET_MONITOR = 1,
+};
+
 enum dpll_a {
 	DPLL_A_ID = 1,
 	DPLL_A_MODULE_NAME,
@@ -204,6 +215,8 @@ enum dpll_a {
 	DPLL_A_TYPE,
 	DPLL_A_LOCK_STATUS_ERROR,
 	DPLL_A_CLOCK_QUALITY_LEVEL,
+	DPLL_A_CAPABILITIES,
+	DPLL_A_FEATURES,
 
 	__DPLL_A_MAX,
 	DPLL_A_MAX = (__DPLL_A_MAX - 1)
-- 
2.38.1

