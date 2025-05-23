Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E990AC26BF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 17:48:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03F2F61472;
	Fri, 23 May 2025 15:48:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ll1X2zSs9uww; Fri, 23 May 2025 15:48:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47CA261498
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748015329;
	bh=LTlBeK8Eof76TIQ4haA4y2+vVEg6n6af8BBBO6kWPOM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hfQ1ESkkCAKQVgns8XGzsk4P/8xEGeUgVZn757j++M1qEdH6NmKMT+izlF2lr7WjG
	 fO5b8bM/7AtSj9ZPLtZojHGoaKfzwaDyf1VQH/G0TvD9NjWxXYCKOZqVSEST71XiqL
	 memY7ZkZ/xl6LfiM8nPT5/Tzz/GvgtM4GPh4y1GypPhO9W7yCYIP3wg4cLlBDrM+EA
	 RZXKJ6FCGoVcq35OFdzlDxGV7LWMB2U0xJE6p7iKP6SzbtZwaVZyH7Ht7WDGDUF16l
	 +cbRFs+tuwNbe4PmWk59pDxwX1Ah8prOTQ3B/nrBD/g2IQYrqCHoV6EX0NDKYDKVIx
	 HkAdRSj3AbGVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47CA261498;
	Fri, 23 May 2025 15:48:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D7216CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 15:48:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD1D440FED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 15:48:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WoJH6XJp0P1i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 15:48:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 162E541039
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 162E541039
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 162E541039
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 15:48:47 +0000 (UTC)
X-CSE-ConnectionGUID: kkZTitc4Ryei/m5LCuzftA==
X-CSE-MsgGUID: 2lplLsIRQ/6iTpAzwjSBbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="49958839"
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="49958839"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 08:48:47 -0700
X-CSE-ConnectionGUID: jdG2+c7YTxWBCCBAzPmbFQ==
X-CSE-MsgGUID: Cx8OQWcDSmqs9J2iwIsDwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="141036218"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa009.jf.intel.com with ESMTP; 23 May 2025 08:48:43 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, milena.olech@intel.com, corbet@lwn.net
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Fri, 23 May 2025 17:42:22 +0200
Message-Id: <20250523154224.1510987-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250523154224.1510987-1-arkadiusz.kubalewski@intel.com>
References: <20250523154224.1510987-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748015327; x=1779551327;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=frKvdifoR8joAoRhEAm9+ERzOQYNHs098NDKjveRRxM=;
 b=FuZCDraRiCNaFF3oLHs/pjNE9Rl52pwJBWNJbkZt6Un/SlddGuF7bAlt
 u0QdIIfGXeB7+8mAP2anKp4Nngul7pHv+3DzoAt0NntN32FgE8hwjwlZr
 DyA849/35+fvuW8C5Pv0MomrsfdFBcC4lg5CugYNrzEfYKDMsiPFfDc1s
 IThfINKutLRHoub4HnlxVmk/0hG8oPjpODDiqlqvS67ojFg4JVsyV6bL0
 7+9GUM68QRWLnJPv6Rir6QZNlBpubGsVCz0JF3ep+aNmoFNE//zFTR/6/
 dmMowhtlw7jGRAKYQf5Seik3bqJOAvUh8ydEVsnJg+FcGsNs5VBAbyq59
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FuZCDraR
Subject: [Intel-wired-lan] [PATCH net-next v4 1/3] dpll: add
 phase-offset-monitor feature to netlink spec
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

Add enum dpll_feature_state for control over features.

Add dpll device level attribute:
DPLL_A_PHASE_OFFSET_MONITOR - to allow control over a phase offset monitor
feature. Attribute is present and shall return current state of a feature
(enum dpll_feature_state), if the device driver provides such capability,
otherwie attribute shall not be present.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v4:
- update --to= and --cc= with current maintainers.
---
 Documentation/driver-api/dpll.rst     | 16 ++++++++++++++++
 Documentation/netlink/specs/dpll.yaml | 24 ++++++++++++++++++++++++
 drivers/dpll/dpll_nl.c                |  5 +++--
 include/uapi/linux/dpll.h             | 12 ++++++++++++
 4 files changed, 55 insertions(+), 2 deletions(-)

diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-api/dpll.rst
index e6855cd37e85..04efb425b411 100644
--- a/Documentation/driver-api/dpll.rst
+++ b/Documentation/driver-api/dpll.rst
@@ -214,6 +214,22 @@ offset values are fractional with 3-digit decimal places and shell be
 divided with ``DPLL_PIN_PHASE_OFFSET_DIVIDER`` to get integer part and
 modulo divided to get fractional part.
 
+Phase offset monitor
+====================
+
+Phase offset measurement is typically performed against the current active
+source. However, some DPLL (Digital Phase-Locked Loop) devices may offer
+the capability to monitor phase offsets across all available inputs.
+The attribute and current feature state shall be included in the response
+message of the ``DPLL_CMD_DEVICE_GET`` command for supported DPLL devices.
+In such cases, users can also control the feature using the
+``DPLL_CMD_DEVICE_SET`` command by setting the ``enum dpll_feature_state``
+values for the attribute.
+
+  =============================== ========================
+  ``DPLL_A_PHASE_OFFSET_MONITOR`` attr state of a feature
+  =============================== ========================
+
 Embedded SYNC
 =============
 
diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
index 8feefeae5376..e9774678b3f3 100644
--- a/Documentation/netlink/specs/dpll.yaml
+++ b/Documentation/netlink/specs/dpll.yaml
@@ -240,6 +240,20 @@ definitions:
       integer part of a measured phase offset value.
       Value of (DPLL_A_PHASE_OFFSET % DPLL_PHASE_OFFSET_DIVIDER) is a
       fractional part of a measured phase offset value.
+  -
+    type: enum
+    name: feature-state
+    doc: |
+      Allow control (enable/disable) and status checking over features.
+    entries:
+      -
+        name: disable
+        doc: |
+          feature shall be disabled
+      -
+        name: enable
+        doc: |
+          feature shall be enabled
 
 attribute-sets:
   -
@@ -293,6 +307,14 @@ attribute-sets:
           be put to message multiple times to indicate possible parallel
           quality levels (e.g. one specified by ITU option 1 and another
           one specified by option 2).
+      -
+        name: phase-offset-monitor
+        type: u32
+        enum: feature-state
+        doc: Receive or request state of phase offset monitor feature.
+          If enabled, dpll device shall monitor and notify all currently
+          available inputs for changes of their phase offset against the
+          dpll device.
   -
     name: pin
     enum-name: dpll_a_pin
@@ -483,6 +505,7 @@ operations:
             - temp
             - clock-id
             - type
+            - phase-offset-monitor
 
       dump:
         reply: *dev-attrs
@@ -499,6 +522,7 @@ operations:
         request:
           attributes:
             - id
+            - phase-offset-monitor
     -
       name: device-create-ntf
       doc: Notification about device appearing
diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
index fe9b6893d261..8de90310c3be 100644
--- a/drivers/dpll/dpll_nl.c
+++ b/drivers/dpll/dpll_nl.c
@@ -37,8 +37,9 @@ static const struct nla_policy dpll_device_get_nl_policy[DPLL_A_ID + 1] = {
 };
 
 /* DPLL_CMD_DEVICE_SET - do */
-static const struct nla_policy dpll_device_set_nl_policy[DPLL_A_ID + 1] = {
+static const struct nla_policy dpll_device_set_nl_policy[DPLL_A_PHASE_OFFSET_MONITOR + 1] = {
 	[DPLL_A_ID] = { .type = NLA_U32, },
+	[DPLL_A_PHASE_OFFSET_MONITOR] = NLA_POLICY_MAX(NLA_U32, 1),
 };
 
 /* DPLL_CMD_PIN_ID_GET - do */
@@ -105,7 +106,7 @@ static const struct genl_split_ops dpll_nl_ops[] = {
 		.doit		= dpll_nl_device_set_doit,
 		.post_doit	= dpll_post_doit,
 		.policy		= dpll_device_set_nl_policy,
-		.maxattr	= DPLL_A_ID,
+		.maxattr	= DPLL_A_PHASE_OFFSET_MONITOR,
 		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
 	},
 	{
diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
index bf97d4b6d51f..349e1b3ca1ae 100644
--- a/include/uapi/linux/dpll.h
+++ b/include/uapi/linux/dpll.h
@@ -192,6 +192,17 @@ enum dpll_pin_capabilities {
 
 #define DPLL_PHASE_OFFSET_DIVIDER	1000
 
+/**
+ * enum dpll_feature_state - Allow control (enable/disable) and status checking
+ *   over features.
+ * @DPLL_FEATURE_STATE_DISABLE: feature shall be disabled
+ * @DPLL_FEATURE_STATE_ENABLE: feature shall be enabled
+ */
+enum dpll_feature_state {
+	DPLL_FEATURE_STATE_DISABLE,
+	DPLL_FEATURE_STATE_ENABLE,
+};
+
 enum dpll_a {
 	DPLL_A_ID = 1,
 	DPLL_A_MODULE_NAME,
@@ -204,6 +215,7 @@ enum dpll_a {
 	DPLL_A_TYPE,
 	DPLL_A_LOCK_STATUS_ERROR,
 	DPLL_A_CLOCK_QUALITY_LEVEL,
+	DPLL_A_PHASE_OFFSET_MONITOR,
 
 	__DPLL_A_MAX,
 	DPLL_A_MAX = (__DPLL_A_MAX - 1)
-- 
2.38.1

