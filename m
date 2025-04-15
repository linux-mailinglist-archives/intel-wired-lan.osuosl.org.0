Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4B0A8A61D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 19:57:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51C9241421;
	Tue, 15 Apr 2025 17:57:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8CQG81Pp65KS; Tue, 15 Apr 2025 17:57:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98E8F4141A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744739839;
	bh=/YuvNgHeS/WKwX8zpJz8BN8j2/VQ4gahWHduUA6olYQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w4Y6EDC+7sNXFh0pHBoxpvlHXxGJjjtWpANZSLYeH0OIkbMHMec5V1m8TJSYO5wOQ
	 zywezDPypdSBgc3R/2aQgjz6TW4vDRfw+/NFYIXPoxPxQJvJTl3qk9LJ6a8XNiKhq2
	 OQ3cywFTHb4Hpcm/ZoMHBW1H2/1NXX9HaXykLvE7n1B1o5hiuQg6IPE290zpsFKX2U
	 9m0kSCyNSJiacHcPB+336uSL0vWORUVJFqpUuGa0Dj8yzCgBvEiSU8OU2zTQG9EZQ2
	 Njmy6I7QZKxgQt6w4txYNJRupU2W2ZsbxRCWwyfGEEodj2C/MMziHzXHynblvmzMXi
	 qXhb6ufVMoZkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98E8F4141A;
	Tue, 15 Apr 2025 17:57:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8DEDC200
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 73E5361296
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:57:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ran4_S6qhoxw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 17:57:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BDF1A61266
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDF1A61266
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BDF1A61266
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:57:16 +0000 (UTC)
X-CSE-ConnectionGUID: IFEWtpy+SmiSl8tuUfgTTg==
X-CSE-MsgGUID: IQ+slMlfTEqhK1bswzsdTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="57650431"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="57650431"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 10:57:16 -0700
X-CSE-ConnectionGUID: 1paBYhYjQUCMwOECNWnWAQ==
X-CSE-MsgGUID: 052QC8zvStWULQUhjqUnaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="167364089"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa001.jf.intel.com with ESMTP; 15 Apr 2025 10:57:12 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Date: Tue, 15 Apr 2025 19:51:13 +0200
Message-Id: <20250415175115.1066641-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250415175115.1066641-1-arkadiusz.kubalewski@intel.com>
References: <20250415175115.1066641-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744739837; x=1776275837;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ADm87zp4oj22kclvsUXxO5Xj2GRPDd9DwVbR0PrmVKs=;
 b=fHHUmF0hGz7bkma8WwAykhK1E/DKeLkhXrbCWK5edkl13TfzO5Du4aK1
 wW5+2deqmvIbTE4pLVBOz2b+2udqzLyfKGOjrT4oUPQS5J7YkCB4M+U3p
 ko8zuRMPYGWqsKEP5e3QBKnFb66Hy1x7CnPA+imxa7rOXWa9dcL2ik6tD
 mFGMe4UYzISwslmZrSG16BpXwJw6Ay2+BWnraxmjRK9rt8wMLGmZk1mSo
 w1hA9YCDwvgKOGJ6EBuUENjx7nOY4R0RgdVMDx2MH320nEc450627zywE
 gnqMuGQPwbNolk+14vPDyN1M6Ty/pBR9VRofZ3IHUAxcdOrWnI1MdEJza
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fHHUmF0h
Subject: [Intel-wired-lan] [PATCH net-next v1 1/3] dpll: add reference-sync
 netlink attribute
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

Add new netlink attribute to allow user space configuration of reference
sync pin pairs, where both pins are used to provide one clock signal
consisting of both: base frequency and sync signal.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 Documentation/netlink/specs/dpll.yaml | 19 +++++++++++++++++++
 drivers/dpll/dpll_nl.c                | 10 ++++++++--
 drivers/dpll/dpll_nl.h                |  1 +
 include/uapi/linux/dpll.h             |  1 +
 4 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
index 8feefeae5376..333b4596b36f 100644
--- a/Documentation/netlink/specs/dpll.yaml
+++ b/Documentation/netlink/specs/dpll.yaml
@@ -406,6 +406,15 @@ attribute-sets:
         doc: |
           A ratio of high to low state of a SYNC signal pulse embedded
           into base clock frequency. Value is in percents.
+      -
+        name: reference-sync
+        type: nest
+        multi-attr: true
+        nested-attributes: reference-sync
+        doc: |
+          Capable pin provides list of pins that can be bound to create a
+          reference-sync pin pair.
+
   -
     name: pin-parent-device
     subset-of: pin
@@ -436,6 +445,14 @@ attribute-sets:
         name: frequency-min
       -
         name: frequency-max
+  -
+    name: reference-sync
+    subset-of: pin
+    attributes:
+      -
+        name: id
+      -
+        name: state
 
 operations:
   enum-name: dpll_cmd
@@ -574,6 +591,7 @@ operations:
             - esync-frequency
             - esync-frequency-supported
             - esync-pulse
+            - reference-sync
 
       dump:
         request:
@@ -601,6 +619,7 @@ operations:
             - parent-pin
             - phase-adjust
             - esync-frequency
+            - reference-sync
     -
       name: pin-create-ntf
       doc: Notification about pin appearing
diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
index fe9b6893d261..d709a8dc304f 100644
--- a/drivers/dpll/dpll_nl.c
+++ b/drivers/dpll/dpll_nl.c
@@ -24,6 +24,11 @@ const struct nla_policy dpll_pin_parent_pin_nl_policy[DPLL_A_PIN_STATE + 1] = {
 	[DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U32, 1, 3),
 };
 
+const struct nla_policy dpll_reference_sync_nl_policy[DPLL_A_PIN_STATE + 1] = {
+	[DPLL_A_PIN_ID] = { .type = NLA_U32, },
+	[DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U32, 1, 3),
+};
+
 /* DPLL_CMD_DEVICE_ID_GET - do */
 static const struct nla_policy dpll_device_id_get_nl_policy[DPLL_A_TYPE + 1] = {
 	[DPLL_A_MODULE_NAME] = { .type = NLA_NUL_STRING, },
@@ -62,7 +67,7 @@ static const struct nla_policy dpll_pin_get_dump_nl_policy[DPLL_A_PIN_ID + 1] =
 };
 
 /* DPLL_CMD_PIN_SET - do */
-static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_ESYNC_FREQUENCY + 1] = {
+static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_REFERENCE_SYNC + 1] = {
 	[DPLL_A_PIN_ID] = { .type = NLA_U32, },
 	[DPLL_A_PIN_FREQUENCY] = { .type = NLA_U64, },
 	[DPLL_A_PIN_DIRECTION] = NLA_POLICY_RANGE(NLA_U32, 1, 2),
@@ -72,6 +77,7 @@ static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_ESYNC_FREQUENCY
 	[DPLL_A_PIN_PARENT_PIN] = NLA_POLICY_NESTED(dpll_pin_parent_pin_nl_policy),
 	[DPLL_A_PIN_PHASE_ADJUST] = { .type = NLA_S32, },
 	[DPLL_A_PIN_ESYNC_FREQUENCY] = { .type = NLA_U64, },
+	[DPLL_A_PIN_REFERENCE_SYNC] = NLA_POLICY_NESTED(dpll_reference_sync_nl_policy),
 };
 
 /* Ops table for dpll */
@@ -139,7 +145,7 @@ static const struct genl_split_ops dpll_nl_ops[] = {
 		.doit		= dpll_nl_pin_set_doit,
 		.post_doit	= dpll_pin_post_doit,
 		.policy		= dpll_pin_set_nl_policy,
-		.maxattr	= DPLL_A_PIN_ESYNC_FREQUENCY,
+		.maxattr	= DPLL_A_PIN_REFERENCE_SYNC,
 		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
 	},
 };
diff --git a/drivers/dpll/dpll_nl.h b/drivers/dpll/dpll_nl.h
index f491262bee4f..3da10cfe9a6e 100644
--- a/drivers/dpll/dpll_nl.h
+++ b/drivers/dpll/dpll_nl.h
@@ -14,6 +14,7 @@
 /* Common nested types */
 extern const struct nla_policy dpll_pin_parent_device_nl_policy[DPLL_A_PIN_PHASE_OFFSET + 1];
 extern const struct nla_policy dpll_pin_parent_pin_nl_policy[DPLL_A_PIN_STATE + 1];
+extern const struct nla_policy dpll_reference_sync_nl_policy[DPLL_A_PIN_STATE + 1];
 
 int dpll_lock_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
 		   struct genl_info *info);
diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
index bf97d4b6d51f..f6cb6209566c 100644
--- a/include/uapi/linux/dpll.h
+++ b/include/uapi/linux/dpll.h
@@ -237,6 +237,7 @@ enum dpll_a_pin {
 	DPLL_A_PIN_ESYNC_FREQUENCY,
 	DPLL_A_PIN_ESYNC_FREQUENCY_SUPPORTED,
 	DPLL_A_PIN_ESYNC_PULSE,
+	DPLL_A_PIN_REFERENCE_SYNC,
 
 	__DPLL_A_PIN_MAX,
 	DPLL_A_PIN_MAX = (__DPLL_A_PIN_MAX - 1)
-- 
2.38.1

