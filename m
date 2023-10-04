Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8307B7B38
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 11:08:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CA8741922;
	Wed,  4 Oct 2023 09:08:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CA8741922
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696410532;
	bh=2KpJzf3P2RZrYdDfplBwSjNQ/d1vbZyDA8o5XdWg7QY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Smaf1GJYRJTNPkvy+xw2if898IMuai1s3WYXMBbNwocVwygLn/ppFD3ssy2WhCM92
	 a4xk/bpkK8o/EQhFVZKDvE0/b/r4MHcKe1rQw8Jtae870RepRA/SgC6NU6WT2eh0Re
	 YgRjKe06dqHNVTXXvuIK60FAkL/AlVwIvEIogfqCU2Q812ZEi3KJq/ygqkNbpeN2cJ
	 yn/wMvyVv2xD7fOKDq19vxg8aNNW9vXQ3BfCoJMvyHPSwyKTWhY5YO2Kbk6iJTVcVv
	 QCq8p5ifi+DVMoOgWcSzF6tnk3fYvEcXDijTb1mqJFo98Vzo2TqqxQ1o1Pf3dBA6ME
	 DW4iXhvuw60cA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4b5lSpQKkbnb; Wed,  4 Oct 2023 09:08:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB318405F1;
	Wed,  4 Oct 2023 09:08:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB318405F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C4B9C1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 09:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 99A8A4206B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 09:08:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99A8A4206B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9kZiSgy3vmKa for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 09:08:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 893FB4206A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 09:08:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 893FB4206A
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="373448507"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="373448507"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 02:08:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="780668472"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="780668472"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orsmga008.jf.intel.com with ESMTP; 04 Oct 2023 02:08:34 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Wed,  4 Oct 2023 11:05:44 +0200
Message-Id: <20231004090547.1597844-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20231004090547.1597844-1-arkadiusz.kubalewski@intel.com>
References: <20231004090547.1597844-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696410517; x=1727946517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hc4JW8JICLwG/GnGOazeCrnRdo3FqnON36pXWH/pBug=;
 b=LypPfHciwQ6Hqv41BiWMeXjka2dRxCjmRvkBLNJvU6fJMDyJa4B5oTbB
 eljnso7XfjJh0/S9SC6B2lwWHq9kfhni2pPL1IB+Dvy2Qtp7Y7yD/3est
 N2cP/vDup8MmxlJDKC+UStrCjAd4lWrOp7yN0D5XUMMt4U80/muy4/Fc5
 ZhrbGbq7lw2qmK4b6gQg+fiIGzY1P+63nriyKsWSne2T9rN1gqbmmZsHi
 6Z3ioAb7oJAVNudiTmwrP2NPM6eq/9tlMmJEiD17il56Oqtd7PmSn4eUU
 TCAV+lBgfbCb1IdKALqy6jiaMVrY3dIUaHaiDyCxTFA6MdzxyXin847nT
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LypPfHci
Subject: [Intel-wired-lan] [PATCH net-next v2 2/5] dpll: spec: add support
 for pin-dpll signal phase offset/adjust
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
Cc: jiri@resnulli.us, corbet@lwn.net, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add attributes for providing the user with:
- measurement of signals phase offset between pin and dpll
- ability to adjust the phase of pin signal

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 Documentation/netlink/specs/dpll.yaml | 33 ++++++++++++++++++++++++++-
 drivers/dpll/dpll_nl.c                |  8 ++++---
 drivers/dpll/dpll_nl.h                |  2 +-
 include/uapi/linux/dpll.h             |  8 ++++++-
 4 files changed, 45 insertions(+), 6 deletions(-)

diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
index 8b86b28b47a6..dc057494101f 100644
--- a/Documentation/netlink/specs/dpll.yaml
+++ b/Documentation/netlink/specs/dpll.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-Clause)
 
 name: dpll
-
+version: 2
 doc: DPLL subsystem.
 
 definitions:
@@ -164,6 +164,18 @@ definitions:
       -
         name: state-can-change
         doc: pin state can be changed
+  -
+    type: const
+    name: phase-offset-divider
+    value: 1000
+    doc: |
+      phase offset divider allows userspace to calculate a value of
+      measured signal phase difference between a pin and dpll device
+      as a fractional value with three digit decimal precision.
+      Value of (DPLL_A_PHASE_OFFSET / DPLL_PHASE_OFFSET_DIVIDER) is an
+      integer part of a measured phase offest value.
+      Value of (DPLL_A_PHASE_OFFSET % DPLL_PHASE_OFFSET_DIVIDER) is a
+      fractional part of a measured phase offest value.
 
 attribute-sets:
   -
@@ -272,6 +284,18 @@ attribute-sets:
         type: nest
         multi-attr: true
         nested-attributes: pin-parent-pin
+      -
+        name: phase-adjust-min
+        type: s32
+      -
+        name: phase-adjust-max
+        type: s32
+      -
+        name: phase-adjust
+        type: s32
+      -
+        name: phase-offset
+        type: s64
   -
     name: pin-parent-device
     subset-of: pin
@@ -288,6 +312,9 @@ attribute-sets:
       -
         name: state
         type: u32
+      -
+        name: phase-offset
+        type: s64
   -
     name: pin-parent-pin
     subset-of: pin
@@ -439,6 +466,9 @@ operations:
             - capabilities
             - parent-device
             - parent-pin
+            - phase-adjust-min
+            - phase-adjust-max
+            - phase-adjust
 
       dump:
         pre: dpll-lock-dumpit
@@ -466,6 +496,7 @@ operations:
             - state
             - parent-device
             - parent-pin
+            - phase-adjust
     -
       name: pin-create-ntf
       doc: Notification about pin appearing
diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
index 14064c8c783b..eaee5be7aa64 100644
--- a/drivers/dpll/dpll_nl.c
+++ b/drivers/dpll/dpll_nl.c
@@ -11,11 +11,12 @@
 #include <uapi/linux/dpll.h>
 
 /* Common nested types */
-const struct nla_policy dpll_pin_parent_device_nl_policy[DPLL_A_PIN_STATE + 1] = {
+const struct nla_policy dpll_pin_parent_device_nl_policy[DPLL_A_PIN_PHASE_OFFSET + 1] = {
 	[DPLL_A_PIN_PARENT_ID] = { .type = NLA_U32, },
 	[DPLL_A_PIN_DIRECTION] = NLA_POLICY_RANGE(NLA_U32, 1, 2),
 	[DPLL_A_PIN_PRIO] = { .type = NLA_U32, },
 	[DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U32, 1, 3),
+	[DPLL_A_PIN_PHASE_OFFSET] = { .type = NLA_S64, },
 };
 
 const struct nla_policy dpll_pin_parent_pin_nl_policy[DPLL_A_PIN_STATE + 1] = {
@@ -61,7 +62,7 @@ static const struct nla_policy dpll_pin_get_dump_nl_policy[DPLL_A_PIN_ID + 1] =
 };
 
 /* DPLL_CMD_PIN_SET - do */
-static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_PARENT_PIN + 1] = {
+static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_PHASE_ADJUST + 1] = {
 	[DPLL_A_PIN_ID] = { .type = NLA_U32, },
 	[DPLL_A_PIN_FREQUENCY] = { .type = NLA_U64, },
 	[DPLL_A_PIN_DIRECTION] = NLA_POLICY_RANGE(NLA_U32, 1, 2),
@@ -69,6 +70,7 @@ static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_PARENT_PIN + 1]
 	[DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U32, 1, 3),
 	[DPLL_A_PIN_PARENT_DEVICE] = NLA_POLICY_NESTED(dpll_pin_parent_device_nl_policy),
 	[DPLL_A_PIN_PARENT_PIN] = NLA_POLICY_NESTED(dpll_pin_parent_pin_nl_policy),
+	[DPLL_A_PIN_PHASE_ADJUST] = { .type = NLA_S32, },
 };
 
 /* Ops table for dpll */
@@ -140,7 +142,7 @@ static const struct genl_split_ops dpll_nl_ops[] = {
 		.doit		= dpll_nl_pin_set_doit,
 		.post_doit	= dpll_pin_post_doit,
 		.policy		= dpll_pin_set_nl_policy,
-		.maxattr	= DPLL_A_PIN_PARENT_PIN,
+		.maxattr	= DPLL_A_PIN_PHASE_ADJUST,
 		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
 	},
 };
diff --git a/drivers/dpll/dpll_nl.h b/drivers/dpll/dpll_nl.h
index 1f67aaed4742..92d4c9c4f788 100644
--- a/drivers/dpll/dpll_nl.h
+++ b/drivers/dpll/dpll_nl.h
@@ -12,7 +12,7 @@
 #include <uapi/linux/dpll.h>
 
 /* Common nested types */
-extern const struct nla_policy dpll_pin_parent_device_nl_policy[DPLL_A_PIN_STATE + 1];
+extern const struct nla_policy dpll_pin_parent_device_nl_policy[DPLL_A_PIN_PHASE_OFFSET + 1];
 extern const struct nla_policy dpll_pin_parent_pin_nl_policy[DPLL_A_PIN_STATE + 1];
 
 int dpll_lock_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
index 20ef0718f8dc..050f51b48ef8 100644
--- a/include/uapi/linux/dpll.h
+++ b/include/uapi/linux/dpll.h
@@ -7,7 +7,7 @@
 #define _UAPI_LINUX_DPLL_H
 
 #define DPLL_FAMILY_NAME	"dpll"
-#define DPLL_FAMILY_VERSION	1
+#define DPLL_FAMILY_VERSION	2
 
 /**
  * enum dpll_mode - working modes a dpll can support, differentiates if and how
@@ -138,6 +138,8 @@ enum dpll_pin_capabilities {
 	DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE = 4,
 };
 
+#define DPLL_PHASE_OFFSET_DIVIDER	1000
+
 enum dpll_a {
 	DPLL_A_ID = 1,
 	DPLL_A_MODULE_NAME,
@@ -173,6 +175,10 @@ enum dpll_a_pin {
 	DPLL_A_PIN_CAPABILITIES,
 	DPLL_A_PIN_PARENT_DEVICE,
 	DPLL_A_PIN_PARENT_PIN,
+	DPLL_A_PIN_PHASE_ADJUST_MIN,
+	DPLL_A_PIN_PHASE_ADJUST_MAX,
+	DPLL_A_PIN_PHASE_ADJUST,
+	DPLL_A_PIN_PHASE_OFFSET,
 
 	__DPLL_A_PIN_MAX,
 	DPLL_A_PIN_MAX = (__DPLL_A_PIN_MAX - 1)
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
