Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29470AAF9DD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 14:27:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 528D760F56;
	Thu,  8 May 2025 12:27:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QYQc_WgKxkS6; Thu,  8 May 2025 12:27:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 860C060F7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746707252;
	bh=MuXVcHXFOQMy+v+vnogzQLHW8jfR6MoaFd7Ch41s9wc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D1pMYxS9RIBuW662o5JxzfCHhGS4bnpG7iBIEfJbDnRpi/XoAOXNJ95Ti5AbedPDh
	 X3Q5jKikcHP+DYnYQpg2KhywwenIEx1+DXLPJxUiMyDa/+hIjirT/b119nM20Vp4f9
	 wFsr5Bipnoy2WtjgBdjxM/LubCKLfCgSYP883SmczfbgXSLki9DoqTAqg9q64P9u0T
	 pwichdtsxeCypnGglHtGxVJoKQ4zorEDD4krL8DkIWnHDRzKBme4B62u557X0Vp3gD
	 gvwZ7Jfe9htx8+89CF2DOZXgQOnP8I5oDAlfDittfLxTmVQ3acQ897IAToO2zkFyNm
	 j5x3nb/Pas9cA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 860C060F7C;
	Thu,  8 May 2025 12:27:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CE8D415A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 12:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CB3C640D81
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 12:27:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PDvyg1ToVKQW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 12:27:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C1E474026F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1E474026F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C1E474026F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 12:27:29 +0000 (UTC)
X-CSE-ConnectionGUID: 9U0HZFwgS1eW1Ko1ZfJwDg==
X-CSE-MsgGUID: CXIsnauiTCel64gaIbEdvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="36115123"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="36115123"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 05:27:30 -0700
X-CSE-ConnectionGUID: qrBt83uRS8uBULUxx6LZGw==
X-CSE-MsgGUID: MhwjLBJDTK+xXGQlFrq7ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="136772857"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa010.fm.intel.com with ESMTP; 08 May 2025 05:27:25 -0700
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
Date: Thu,  8 May 2025 14:21:26 +0200
Message-Id: <20250508122128.1216231-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250508122128.1216231-1-arkadiusz.kubalewski@intel.com>
References: <20250508122128.1216231-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746707250; x=1778243250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KaJyWY9o7KT1LtfUBQe5B6THOx9ebRzyhdQpLC6rhmY=;
 b=g1yhE/p9plE5P+/vwvBl95PwZtfCC2TTxHRM9EbZQeZtoWJTcbYggUgp
 nJjVkPtLatZgakx+aJIOmobnsSNhrI2gS0v2mbcntClobyhw68LiXMIc5
 WXky3pvDOajbH7E6/Fv4zrSixca9BPuyvNLgoawhIF3HeOAZphKDZAgdH
 xanrUOoEQ8t7wlzwzvg7OYdHB+WG5oQ3elFVuD2ZObIM59SrbcPfWLMwU
 N1HcSSFq+GM+7fcBXdS/oB7XqYNsO6bsSn962wcZNS5EMhM7IL57DeNfo
 hXRYKcv+840P6Yqj/PX08l8oPGpSlTMaNqtByoSRWwK9q47zWGtwfZqvv
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g1yhE/p9
Subject: [Intel-wired-lan] [PATCH net-next v3 1/3] dpll: add
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
v3:
- replace feature flags and capabilities with per feature attribute
  approach,
- add dpll documentation for phase-offset-monitor feature.
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

