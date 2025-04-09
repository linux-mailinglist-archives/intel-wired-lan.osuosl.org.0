Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B30C0A82A66
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 17:32:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAC128378A;
	Wed,  9 Apr 2025 15:32:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z1U7nYE_31fT; Wed,  9 Apr 2025 15:32:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 097D8820B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744212721;
	bh=PQQdnJI5IEaD8dLd6nqkUq0EV++2eFdETL+z6I1HWOI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rhp4SCzGu02crAw2k6/Y+2zDkkE/f5wzCRLqYyYrxdfoKC4gwVq0th40vWLqKIUhm
	 UYPT/yboYsF1U9HHbgFWbkN8VIIU5kC9p5HKySQduVnZ7WtehRSGcm1j+rBsNG4nuw
	 W1kW9Lxoow8XZn6RIZU6ehymNR9ShOltdoIdxjjcWjfaD5p4Xh1aEdRkCUwDMOlmJY
	 AOSx/weUQDsGHlCjWVCG+crwiHuBmrRRvr8JxjC4kK/8+hbt6dGJrOzvi1Ecj8gkVL
	 OO2HprjscWR8OLPcq/COsUwxC45U1i2w0f5Us/4RG2EbVEej6ZLdshG+kSnJ90Czjj
	 d1CFXud32e60g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 097D8820B3;
	Wed,  9 Apr 2025 15:32:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B0A6ED6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:31:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A1C5E60A3A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:31:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OP4C_IwM3yFt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 15:31:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E476A600C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E476A600C6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E476A600C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:31:57 +0000 (UTC)
X-CSE-ConnectionGUID: 0X6yfDOrQYe2KAj4RQJ4fQ==
X-CSE-MsgGUID: 7z5vZG42Qmi/tyryDN6wSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="71072112"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="71072112"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 08:31:58 -0700
X-CSE-ConnectionGUID: g5Sf1TxlQVK/7cnYG7wrsg==
X-CSE-MsgGUID: 48FCyNpqRrimuuYORwuApw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="151796005"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa002.fm.intel.com with ESMTP; 09 Apr 2025 08:31:54 -0700
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
Date: Wed,  9 Apr 2025 17:25:55 +0200
Message-Id: <20250409152558.1007335-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250409152558.1007335-1-arkadiusz.kubalewski@intel.com>
References: <20250409152558.1007335-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744212718; x=1775748718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5/FmNp8Wq+cSIaU7ijr39JuoFFGclk2AkfFlNuIlLMQ=;
 b=TM+YA+CxRboU0R2C2kI1HlKrE1czrOhIGyT8CntQKL4USAGMxYD2E191
 9lE4Da26H0Jyil+UtPotORZw8CklM3z4tI3r3SgSqQHrIt0HY++1NOxW3
 gE74k8gmQP0ChPUf/v+oGiOD752zmOwLTDd8QpNz0LvNeBrvVwWy2CbWU
 rcqCrewvE8D5yLCwhvULJMJ0/A/N0gTrxJE0AWJ84kVLQst/Y1c6iyK8T
 mfsaVGU65k4fTIYbGm3CQFLsulC/1p5sWuyj/xNYYBopNGVL5MojLElFl
 LiSqOwoROo1GgO8/4UrrKY1ndSzk1RxJSG2AWyE5tm4SVbP2uRkyXaRTG
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TM+YA+Cx
Subject: [Intel-wired-lan] [PATCH net-next v1 1/4] dpll: add features and
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

