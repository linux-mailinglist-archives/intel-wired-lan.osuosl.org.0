Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4739C7863A2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 00:53:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C04E1612AA;
	Wed, 23 Aug 2023 22:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C04E1612AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692831213;
	bh=tajeX/z0MSwXW+TzXsCgqs0T8u9cVqzyxm/BlR+Lwmc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pvdjNtemsKv737Br/EfX5tcYjV/PANSvePumr3K4R2GB78owQ50Dh2ZnSwO1C2ocN
	 W6s6VSohnSGq3V/w9Sv7aNpP//vPzvvuzFXA/y26y94yfSWbuCCp36jizxmFbFBMzU
	 zfXUaKdqYnElCzzx83P8ts0nHoqeodyoBbXkRL8ksD+zZbnP35nyjt0ulow5RF++aC
	 BqLkw2ChpMT57Zli4EaDMrAolyr71kixVDQ65RJnzWPva87EoCfuw8y+KjN6Xkt5jo
	 WXeIBdLPnlyafXMiMOQHugyqDjGSUnAEvANAPAeVjr0/arfp0kglgVSQDiFb/IKLk/
	 bUcF+IaGZnRLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PXdZzPyE5IGJ; Wed, 23 Aug 2023 22:53:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7F56605A7;
	Wed, 23 Aug 2023 22:53:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7F56605A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F5161BF280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 22:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EBED860EAB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 22:53:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBED860EAB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6FyUL3vBSyrq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 22:53:17 +0000 (UTC)
Received: from out-50.mta0.migadu.com (out-50.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B562760C0E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 22:53:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B562760C0E
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>
Date: Wed, 23 Aug 2023 23:52:35 +0100
Message-Id: <20230823225242.817957-3-vadim.fedorenko@linux.dev>
In-Reply-To: <20230823225242.817957-1-vadim.fedorenko@linux.dev>
References: <20230823225242.817957-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1692831194;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yuay31yJ3j7F0zmms2/SM9uBIv3UAvCxzt2kQvolUJw=;
 b=XwJUrHlUdphbV4JQKvY899/uOUgQ4zwLZLMdN+4OPEZuMnwywdbwkxxB4sNyVHWyZ4kmV+
 BGK9Uf5BdLbMhLQE8cx8bdMT9JLQ8DT+3fvdR3gGdD7ZjFQIaAOhsPHJKDTwvKuWRc2+P3
 Pb8LaeLVFUEuW8NbYl9sOqDI95MNgQA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=XwJUrHlU
Subject: [Intel-wired-lan] [PATCH net-next v6 2/9] dpll: spec: Add Netlink
 spec in YAML
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Milena Olech <milena.olech@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a protocol spec for DPLL.
Add code generated from the spec.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Jiri Pirko <jiri@nvidia.com>
---
v5->v6:
- rename pin attr dpll-caps -> capabilities, and
  enum name DPLL_A_PIN_DPLL_CAPS -> DPLL_A_PIN_CAPABILITIES
- rename enum name and prefix of values: pin-caps -> pin-capabilities
  (DPLL_PIN_CAPS_* -> DPLL_PIN_CAPABILITIES_*)
v4->v5:
- split pin into separated attribute space
v3->v4:
- rebase on top of net-next
v2->v3:
- re-generated on top of the latest net-next
- tag from Jiri Pirko
v1->v2:
- rename FREERUN to DETACHED
- remove module-name from expected input attributes on device-get command

 Documentation/netlink/specs/dpll.yaml | 488 ++++++++++++++++++++++++++
 drivers/dpll/dpll_nl.c                | 162 +++++++++
 drivers/dpll/dpll_nl.h                |  51 +++
 include/uapi/linux/dpll.h             | 201 +++++++++++
 4 files changed, 902 insertions(+)
 create mode 100644 Documentation/netlink/specs/dpll.yaml
 create mode 100644 drivers/dpll/dpll_nl.c
 create mode 100644 drivers/dpll/dpll_nl.h
 create mode 100644 include/uapi/linux/dpll.h

diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
new file mode 100644
index 000000000000..8b86b28b47a6
--- /dev/null
+++ b/Documentation/netlink/specs/dpll.yaml
@@ -0,0 +1,488 @@
+# SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-Clause)
+
+name: dpll
+
+doc: DPLL subsystem.
+
+definitions:
+  -
+    type: enum
+    name: mode
+    doc: |
+      working modes a dpll can support, differentiates if and how dpll selects
+      one of its inputs to syntonize with it, valid values for DPLL_A_MODE
+      attribute
+    entries:
+      -
+        name: manual
+        doc: input can be only selected by sending a request to dpll
+        value: 1
+      -
+        name: automatic
+        doc: highest prio input pin auto selected by dpll
+    render-max: true
+  -
+    type: enum
+    name: lock-status
+    doc: |
+      provides information of dpll device lock status, valid values for
+      DPLL_A_LOCK_STATUS attribute
+    entries:
+      -
+        name: unlocked
+        doc: |
+          dpll was not yet locked to any valid input (or forced by setting
+          DPLL_A_MODE to DPLL_MODE_DETACHED)
+        value: 1
+      -
+        name: locked
+        doc: |
+          dpll is locked to a valid signal, but no holdover available
+      -
+        name: locked-ho-acq
+        doc: |
+          dpll is locked and holdover acquired
+      -
+        name: holdover
+        doc: |
+          dpll is in holdover state - lost a valid lock or was forced
+          by disconnecting all the pins (latter possible only
+          when dpll lock-state was already DPLL_LOCK_STATUS_LOCKED_HO_ACQ,
+          if dpll lock-state was not DPLL_LOCK_STATUS_LOCKED_HO_ACQ, the
+          dpll's lock-state shall remain DPLL_LOCK_STATUS_UNLOCKED)
+    render-max: true
+  -
+    type: const
+    name: temp-divider
+    value: 1000
+    doc: |
+      temperature divider allowing userspace to calculate the
+      temperature as float with three digit decimal precision.
+      Value of (DPLL_A_TEMP / DPLL_TEMP_DIVIDER) is integer part of
+      temperature value.
+      Value of (DPLL_A_TEMP % DPLL_TEMP_DIVIDER) is fractional part of
+      temperature value.
+  -
+    type: enum
+    name: type
+    doc: type of dpll, valid values for DPLL_A_TYPE attribute
+    entries:
+      -
+        name: pps
+        doc: dpll produces Pulse-Per-Second signal
+        value: 1
+      -
+        name: eec
+        doc: dpll drives the Ethernet Equipment Clock
+    render-max: true
+  -
+    type: enum
+    name: pin-type
+    doc: |
+      defines possible types of a pin, valid values for DPLL_A_PIN_TYPE
+      attribute
+    entries:
+      -
+        name: mux
+        doc: aggregates another layer of selectable pins
+        value: 1
+      -
+        name: ext
+        doc: external input
+      -
+        name: synce-eth-port
+        doc: ethernet port PHY's recovered clock
+      -
+        name: int-oscillator
+        doc: device internal oscillator
+      -
+        name: gnss
+        doc: GNSS recovered clock
+    render-max: true
+  -
+    type: enum
+    name: pin-direction
+    doc: |
+      defines possible direction of a pin, valid values for
+      DPLL_A_PIN_DIRECTION attribute
+    entries:
+      -
+        name: input
+        doc: pin used as a input of a signal
+        value: 1
+      -
+        name: output
+        doc: pin used to output the signal
+    render-max: true
+  -
+    type: const
+    name: pin-frequency-1-hz
+    value: 1
+  -
+    type: const
+    name: pin-frequency-10-khz
+    value: 10000
+  -
+    type: const
+    name: pin-frequency-77_5-khz
+    value: 77500
+  -
+    type: const
+    name: pin-frequency-10-mhz
+    value: 10000000
+  -
+    type: enum
+    name: pin-state
+    doc: |
+      defines possible states of a pin, valid values for
+      DPLL_A_PIN_STATE attribute
+    entries:
+      -
+        name: connected
+        doc: pin connected, active input of phase locked loop
+        value: 1
+      -
+        name: disconnected
+        doc: pin disconnected, not considered as a valid input
+      -
+        name: selectable
+        doc: pin enabled for automatic input selection
+    render-max: true
+  -
+    type: flags
+    name: pin-capabilities
+    doc: |
+      defines possible capabilities of a pin, valid flags on
+      DPLL_A_PIN_CAPABILITIES attribute
+    entries:
+      -
+        name: direction-can-change
+        doc: pin direction can be changed
+      -
+        name: priority-can-change
+        doc: pin priority can be changed
+      -
+        name: state-can-change
+        doc: pin state can be changed
+
+attribute-sets:
+  -
+    name: dpll
+    enum-name: dpll_a
+    attributes:
+      -
+        name: id
+        type: u32
+      -
+        name: module-name
+        type: string
+      -
+        name: pad
+        type: pad
+      -
+        name: clock-id
+        type: u64
+      -
+        name: mode
+        type: u32
+        enum: mode
+      -
+        name: mode-supported
+        type: u32
+        enum: mode
+        multi-attr: true
+      -
+        name: lock-status
+        type: u32
+        enum: lock-status
+      -
+        name: temp
+        type: s32
+      -
+        name: type
+        type: u32
+        enum: type
+  -
+    name: pin
+    enum-name: dpll_a_pin
+    attributes:
+      -
+        name: id
+        type: u32
+      -
+        name: parent-id
+        type: u32
+      -
+        name: module-name
+        type: string
+      -
+        name: pad
+        type: pad
+      -
+        name: clock-id
+        type: u64
+      -
+        name: board-label
+        type: string
+      -
+        name: panel-label
+        type: string
+      -
+        name: package-label
+        type: string
+      -
+        name: type
+        type: u32
+        enum: pin-type
+      -
+        name: direction
+        type: u32
+        enum: pin-direction
+      -
+        name: frequency
+        type: u64
+      -
+        name: frequency-supported
+        type: nest
+        multi-attr: true
+        nested-attributes: frequency-range
+      -
+        name: frequency-min
+        type: u64
+      -
+        name: frequency-max
+        type: u64
+      -
+        name: prio
+        type: u32
+      -
+        name: state
+        type: u32
+        enum: pin-state
+      -
+        name: capabilities
+        type: u32
+      -
+        name: parent-device
+        type: nest
+        multi-attr: true
+        nested-attributes: pin-parent-device
+      -
+        name: parent-pin
+        type: nest
+        multi-attr: true
+        nested-attributes: pin-parent-pin
+  -
+    name: pin-parent-device
+    subset-of: pin
+    attributes:
+      -
+        name: parent-id
+        type: u32
+      -
+        name: direction
+        type: u32
+      -
+        name: prio
+        type: u32
+      -
+        name: state
+        type: u32
+  -
+    name: pin-parent-pin
+    subset-of: pin
+    attributes:
+      -
+        name: parent-id
+        type: u32
+      -
+        name: state
+        type: u32
+  -
+    name: frequency-range
+    subset-of: pin
+    attributes:
+      -
+        name: frequency-min
+        type: u64
+      -
+        name: frequency-max
+        type: u64
+
+operations:
+  enum-name: dpll_cmd
+  list:
+    -
+      name: device-id-get
+      doc: |
+        Get id of dpll device that matches given attributes
+      attribute-set: dpll
+      flags: [ admin-perm ]
+
+      do:
+        pre: dpll-lock-doit
+        post: dpll-unlock-doit
+        request:
+          attributes:
+            - module-name
+            - clock-id
+            - type
+        reply:
+          attributes:
+            - id
+
+    -
+      name: device-get
+      doc: |
+        Get list of DPLL devices (dump) or attributes of a single dpll device
+      attribute-set: dpll
+      flags: [ admin-perm ]
+
+      do:
+        pre: dpll-pre-doit
+        post: dpll-post-doit
+        request:
+          attributes:
+            - id
+        reply: &dev-attrs
+          attributes:
+            - id
+            - module-name
+            - mode
+            - mode-supported
+            - lock-status
+            - temp
+            - clock-id
+            - type
+
+      dump:
+        pre: dpll-lock-dumpit
+        post: dpll-unlock-dumpit
+        reply: *dev-attrs
+
+    -
+      name: device-set
+      doc: Set attributes for a DPLL device
+      attribute-set: dpll
+      flags: [ admin-perm ]
+
+      do:
+        pre: dpll-pre-doit
+        post: dpll-post-doit
+        request:
+          attributes:
+            - id
+    -
+      name: device-create-ntf
+      doc: Notification about device appearing
+      notify: device-get
+      mcgrp: monitor
+    -
+      name: device-delete-ntf
+      doc: Notification about device disappearing
+      notify: device-get
+      mcgrp: monitor
+    -
+      name: device-change-ntf
+      doc: Notification about device configuration being changed
+      notify: device-get
+      mcgrp: monitor
+    -
+      name: pin-id-get
+      doc: |
+        Get id of a pin that matches given attributes
+      attribute-set: pin
+      flags: [ admin-perm ]
+
+      do:
+        pre: dpll-lock-doit
+        post: dpll-unlock-doit
+        request:
+          attributes:
+            - module-name
+            - clock-id
+            - board-label
+            - panel-label
+            - package-label
+            - type
+        reply:
+          attributes:
+            - id
+
+    -
+      name: pin-get
+      doc: |
+        Get list of pins and its attributes.
+        - dump request without any attributes given - list all the pins in the
+          system
+        - dump request with target dpll - list all the pins registered with
+          a given dpll device
+        - do request with target dpll and target pin - single pin attributes
+      attribute-set: pin
+      flags: [ admin-perm ]
+
+      do:
+        pre: dpll-pin-pre-doit
+        post: dpll-pin-post-doit
+        request:
+          attributes:
+            - id
+        reply: &pin-attrs
+          attributes:
+            - id
+            - board-label
+            - panel-label
+            - package-label
+            - type
+            - frequency
+            - frequency-supported
+            - capabilities
+            - parent-device
+            - parent-pin
+
+      dump:
+        pre: dpll-lock-dumpit
+        post: dpll-unlock-dumpit
+        request:
+          attributes:
+            - id
+        reply: *pin-attrs
+
+    -
+      name: pin-set
+      doc: Set attributes of a target pin
+      attribute-set: pin
+      flags: [ admin-perm ]
+
+      do:
+        pre: dpll-pin-pre-doit
+        post: dpll-pin-post-doit
+        request:
+          attributes:
+            - id
+            - frequency
+            - direction
+            - prio
+            - state
+            - parent-device
+            - parent-pin
+    -
+      name: pin-create-ntf
+      doc: Notification about pin appearing
+      notify: pin-get
+      mcgrp: monitor
+    -
+      name: pin-delete-ntf
+      doc: Notification about pin disappearing
+      notify: pin-get
+      mcgrp: monitor
+    -
+      name: pin-change-ntf
+      doc: Notification about pin configuration being changed
+      notify: pin-get
+      mcgrp: monitor
+
+mcast-groups:
+  list:
+    -
+      name: monitor
diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
new file mode 100644
index 000000000000..14064c8c783b
--- /dev/null
+++ b/drivers/dpll/dpll_nl.c
@@ -0,0 +1,162 @@
+// SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-Clause)
+/* Do not edit directly, auto-generated from: */
+/*	Documentation/netlink/specs/dpll.yaml */
+/* YNL-GEN kernel source */
+
+#include <net/netlink.h>
+#include <net/genetlink.h>
+
+#include "dpll_nl.h"
+
+#include <uapi/linux/dpll.h>
+
+/* Common nested types */
+const struct nla_policy dpll_pin_parent_device_nl_policy[DPLL_A_PIN_STATE + 1] = {
+	[DPLL_A_PIN_PARENT_ID] = { .type = NLA_U32, },
+	[DPLL_A_PIN_DIRECTION] = NLA_POLICY_RANGE(NLA_U32, 1, 2),
+	[DPLL_A_PIN_PRIO] = { .type = NLA_U32, },
+	[DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U32, 1, 3),
+};
+
+const struct nla_policy dpll_pin_parent_pin_nl_policy[DPLL_A_PIN_STATE + 1] = {
+	[DPLL_A_PIN_PARENT_ID] = { .type = NLA_U32, },
+	[DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U32, 1, 3),
+};
+
+/* DPLL_CMD_DEVICE_ID_GET - do */
+static const struct nla_policy dpll_device_id_get_nl_policy[DPLL_A_TYPE + 1] = {
+	[DPLL_A_MODULE_NAME] = { .type = NLA_NUL_STRING, },
+	[DPLL_A_CLOCK_ID] = { .type = NLA_U64, },
+	[DPLL_A_TYPE] = NLA_POLICY_RANGE(NLA_U32, 1, 2),
+};
+
+/* DPLL_CMD_DEVICE_GET - do */
+static const struct nla_policy dpll_device_get_nl_policy[DPLL_A_ID + 1] = {
+	[DPLL_A_ID] = { .type = NLA_U32, },
+};
+
+/* DPLL_CMD_DEVICE_SET - do */
+static const struct nla_policy dpll_device_set_nl_policy[DPLL_A_ID + 1] = {
+	[DPLL_A_ID] = { .type = NLA_U32, },
+};
+
+/* DPLL_CMD_PIN_ID_GET - do */
+static const struct nla_policy dpll_pin_id_get_nl_policy[DPLL_A_PIN_TYPE + 1] = {
+	[DPLL_A_PIN_MODULE_NAME] = { .type = NLA_NUL_STRING, },
+	[DPLL_A_PIN_CLOCK_ID] = { .type = NLA_U64, },
+	[DPLL_A_PIN_BOARD_LABEL] = { .type = NLA_NUL_STRING, },
+	[DPLL_A_PIN_PANEL_LABEL] = { .type = NLA_NUL_STRING, },
+	[DPLL_A_PIN_PACKAGE_LABEL] = { .type = NLA_NUL_STRING, },
+	[DPLL_A_PIN_TYPE] = NLA_POLICY_RANGE(NLA_U32, 1, 5),
+};
+
+/* DPLL_CMD_PIN_GET - do */
+static const struct nla_policy dpll_pin_get_do_nl_policy[DPLL_A_PIN_ID + 1] = {
+	[DPLL_A_PIN_ID] = { .type = NLA_U32, },
+};
+
+/* DPLL_CMD_PIN_GET - dump */
+static const struct nla_policy dpll_pin_get_dump_nl_policy[DPLL_A_PIN_ID + 1] = {
+	[DPLL_A_PIN_ID] = { .type = NLA_U32, },
+};
+
+/* DPLL_CMD_PIN_SET - do */
+static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_PARENT_PIN + 1] = {
+	[DPLL_A_PIN_ID] = { .type = NLA_U32, },
+	[DPLL_A_PIN_FREQUENCY] = { .type = NLA_U64, },
+	[DPLL_A_PIN_DIRECTION] = NLA_POLICY_RANGE(NLA_U32, 1, 2),
+	[DPLL_A_PIN_PRIO] = { .type = NLA_U32, },
+	[DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U32, 1, 3),
+	[DPLL_A_PIN_PARENT_DEVICE] = NLA_POLICY_NESTED(dpll_pin_parent_device_nl_policy),
+	[DPLL_A_PIN_PARENT_PIN] = NLA_POLICY_NESTED(dpll_pin_parent_pin_nl_policy),
+};
+
+/* Ops table for dpll */
+static const struct genl_split_ops dpll_nl_ops[] = {
+	{
+		.cmd		= DPLL_CMD_DEVICE_ID_GET,
+		.pre_doit	= dpll_lock_doit,
+		.doit		= dpll_nl_device_id_get_doit,
+		.post_doit	= dpll_unlock_doit,
+		.policy		= dpll_device_id_get_nl_policy,
+		.maxattr	= DPLL_A_TYPE,
+		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
+	},
+	{
+		.cmd		= DPLL_CMD_DEVICE_GET,
+		.pre_doit	= dpll_pre_doit,
+		.doit		= dpll_nl_device_get_doit,
+		.post_doit	= dpll_post_doit,
+		.policy		= dpll_device_get_nl_policy,
+		.maxattr	= DPLL_A_ID,
+		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
+	},
+	{
+		.cmd	= DPLL_CMD_DEVICE_GET,
+		.start	= dpll_lock_dumpit,
+		.dumpit	= dpll_nl_device_get_dumpit,
+		.done	= dpll_unlock_dumpit,
+		.flags	= GENL_ADMIN_PERM | GENL_CMD_CAP_DUMP,
+	},
+	{
+		.cmd		= DPLL_CMD_DEVICE_SET,
+		.pre_doit	= dpll_pre_doit,
+		.doit		= dpll_nl_device_set_doit,
+		.post_doit	= dpll_post_doit,
+		.policy		= dpll_device_set_nl_policy,
+		.maxattr	= DPLL_A_ID,
+		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
+	},
+	{
+		.cmd		= DPLL_CMD_PIN_ID_GET,
+		.pre_doit	= dpll_lock_doit,
+		.doit		= dpll_nl_pin_id_get_doit,
+		.post_doit	= dpll_unlock_doit,
+		.policy		= dpll_pin_id_get_nl_policy,
+		.maxattr	= DPLL_A_PIN_TYPE,
+		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
+	},
+	{
+		.cmd		= DPLL_CMD_PIN_GET,
+		.pre_doit	= dpll_pin_pre_doit,
+		.doit		= dpll_nl_pin_get_doit,
+		.post_doit	= dpll_pin_post_doit,
+		.policy		= dpll_pin_get_do_nl_policy,
+		.maxattr	= DPLL_A_PIN_ID,
+		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
+	},
+	{
+		.cmd		= DPLL_CMD_PIN_GET,
+		.start		= dpll_lock_dumpit,
+		.dumpit		= dpll_nl_pin_get_dumpit,
+		.done		= dpll_unlock_dumpit,
+		.policy		= dpll_pin_get_dump_nl_policy,
+		.maxattr	= DPLL_A_PIN_ID,
+		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DUMP,
+	},
+	{
+		.cmd		= DPLL_CMD_PIN_SET,
+		.pre_doit	= dpll_pin_pre_doit,
+		.doit		= dpll_nl_pin_set_doit,
+		.post_doit	= dpll_pin_post_doit,
+		.policy		= dpll_pin_set_nl_policy,
+		.maxattr	= DPLL_A_PIN_PARENT_PIN,
+		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
+	},
+};
+
+static const struct genl_multicast_group dpll_nl_mcgrps[] = {
+	[DPLL_NLGRP_MONITOR] = { "monitor", },
+};
+
+struct genl_family dpll_nl_family __ro_after_init = {
+	.name		= DPLL_FAMILY_NAME,
+	.version	= DPLL_FAMILY_VERSION,
+	.netnsok	= true,
+	.parallel_ops	= true,
+	.module		= THIS_MODULE,
+	.split_ops	= dpll_nl_ops,
+	.n_split_ops	= ARRAY_SIZE(dpll_nl_ops),
+	.mcgrps		= dpll_nl_mcgrps,
+	.n_mcgrps	= ARRAY_SIZE(dpll_nl_mcgrps),
+};
diff --git a/drivers/dpll/dpll_nl.h b/drivers/dpll/dpll_nl.h
new file mode 100644
index 000000000000..1f67aaed4742
--- /dev/null
+++ b/drivers/dpll/dpll_nl.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-Clause) */
+/* Do not edit directly, auto-generated from: */
+/*	Documentation/netlink/specs/dpll.yaml */
+/* YNL-GEN kernel header */
+
+#ifndef _LINUX_DPLL_GEN_H
+#define _LINUX_DPLL_GEN_H
+
+#include <net/netlink.h>
+#include <net/genetlink.h>
+
+#include <uapi/linux/dpll.h>
+
+/* Common nested types */
+extern const struct nla_policy dpll_pin_parent_device_nl_policy[DPLL_A_PIN_STATE + 1];
+extern const struct nla_policy dpll_pin_parent_pin_nl_policy[DPLL_A_PIN_STATE + 1];
+
+int dpll_lock_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
+		   struct genl_info *info);
+int dpll_pre_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
+		  struct genl_info *info);
+int dpll_pin_pre_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
+		      struct genl_info *info);
+void
+dpll_unlock_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
+		 struct genl_info *info);
+void
+dpll_post_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
+	       struct genl_info *info);
+void
+dpll_pin_post_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
+		   struct genl_info *info);
+int dpll_lock_dumpit(struct netlink_callback *cb);
+int dpll_unlock_dumpit(struct netlink_callback *cb);
+
+int dpll_nl_device_id_get_doit(struct sk_buff *skb, struct genl_info *info);
+int dpll_nl_device_get_doit(struct sk_buff *skb, struct genl_info *info);
+int dpll_nl_device_get_dumpit(struct sk_buff *skb, struct netlink_callback *cb);
+int dpll_nl_device_set_doit(struct sk_buff *skb, struct genl_info *info);
+int dpll_nl_pin_id_get_doit(struct sk_buff *skb, struct genl_info *info);
+int dpll_nl_pin_get_doit(struct sk_buff *skb, struct genl_info *info);
+int dpll_nl_pin_get_dumpit(struct sk_buff *skb, struct netlink_callback *cb);
+int dpll_nl_pin_set_doit(struct sk_buff *skb, struct genl_info *info);
+
+enum {
+	DPLL_NLGRP_MONITOR,
+};
+
+extern struct genl_family dpll_nl_family;
+
+#endif /* _LINUX_DPLL_GEN_H */
diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
new file mode 100644
index 000000000000..20ef0718f8dc
--- /dev/null
+++ b/include/uapi/linux/dpll.h
@@ -0,0 +1,201 @@
+/* SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-Clause) */
+/* Do not edit directly, auto-generated from: */
+/*	Documentation/netlink/specs/dpll.yaml */
+/* YNL-GEN uapi header */
+
+#ifndef _UAPI_LINUX_DPLL_H
+#define _UAPI_LINUX_DPLL_H
+
+#define DPLL_FAMILY_NAME	"dpll"
+#define DPLL_FAMILY_VERSION	1
+
+/**
+ * enum dpll_mode - working modes a dpll can support, differentiates if and how
+ *   dpll selects one of its inputs to syntonize with it, valid values for
+ *   DPLL_A_MODE attribute
+ * @DPLL_MODE_MANUAL: input can be only selected by sending a request to dpll
+ * @DPLL_MODE_AUTOMATIC: highest prio input pin auto selected by dpll
+ */
+enum dpll_mode {
+	DPLL_MODE_MANUAL = 1,
+	DPLL_MODE_AUTOMATIC,
+
+	/* private: */
+	__DPLL_MODE_MAX,
+	DPLL_MODE_MAX = (__DPLL_MODE_MAX - 1)
+};
+
+/**
+ * enum dpll_lock_status - provides information of dpll device lock status,
+ *   valid values for DPLL_A_LOCK_STATUS attribute
+ * @DPLL_LOCK_STATUS_UNLOCKED: dpll was not yet locked to any valid input (or
+ *   forced by setting DPLL_A_MODE to DPLL_MODE_DETACHED)
+ * @DPLL_LOCK_STATUS_LOCKED: dpll is locked to a valid signal, but no holdover
+ *   available
+ * @DPLL_LOCK_STATUS_LOCKED_HO_ACQ: dpll is locked and holdover acquired
+ * @DPLL_LOCK_STATUS_HOLDOVER: dpll is in holdover state - lost a valid lock or
+ *   was forced by disconnecting all the pins (latter possible only when dpll
+ *   lock-state was already DPLL_LOCK_STATUS_LOCKED_HO_ACQ, if dpll lock-state
+ *   was not DPLL_LOCK_STATUS_LOCKED_HO_ACQ, the dpll's lock-state shall remain
+ *   DPLL_LOCK_STATUS_UNLOCKED)
+ */
+enum dpll_lock_status {
+	DPLL_LOCK_STATUS_UNLOCKED = 1,
+	DPLL_LOCK_STATUS_LOCKED,
+	DPLL_LOCK_STATUS_LOCKED_HO_ACQ,
+	DPLL_LOCK_STATUS_HOLDOVER,
+
+	/* private: */
+	__DPLL_LOCK_STATUS_MAX,
+	DPLL_LOCK_STATUS_MAX = (__DPLL_LOCK_STATUS_MAX - 1)
+};
+
+#define DPLL_TEMP_DIVIDER	1000
+
+/**
+ * enum dpll_type - type of dpll, valid values for DPLL_A_TYPE attribute
+ * @DPLL_TYPE_PPS: dpll produces Pulse-Per-Second signal
+ * @DPLL_TYPE_EEC: dpll drives the Ethernet Equipment Clock
+ */
+enum dpll_type {
+	DPLL_TYPE_PPS = 1,
+	DPLL_TYPE_EEC,
+
+	/* private: */
+	__DPLL_TYPE_MAX,
+	DPLL_TYPE_MAX = (__DPLL_TYPE_MAX - 1)
+};
+
+/**
+ * enum dpll_pin_type - defines possible types of a pin, valid values for
+ *   DPLL_A_PIN_TYPE attribute
+ * @DPLL_PIN_TYPE_MUX: aggregates another layer of selectable pins
+ * @DPLL_PIN_TYPE_EXT: external input
+ * @DPLL_PIN_TYPE_SYNCE_ETH_PORT: ethernet port PHY's recovered clock
+ * @DPLL_PIN_TYPE_INT_OSCILLATOR: device internal oscillator
+ * @DPLL_PIN_TYPE_GNSS: GNSS recovered clock
+ */
+enum dpll_pin_type {
+	DPLL_PIN_TYPE_MUX = 1,
+	DPLL_PIN_TYPE_EXT,
+	DPLL_PIN_TYPE_SYNCE_ETH_PORT,
+	DPLL_PIN_TYPE_INT_OSCILLATOR,
+	DPLL_PIN_TYPE_GNSS,
+
+	/* private: */
+	__DPLL_PIN_TYPE_MAX,
+	DPLL_PIN_TYPE_MAX = (__DPLL_PIN_TYPE_MAX - 1)
+};
+
+/**
+ * enum dpll_pin_direction - defines possible direction of a pin, valid values
+ *   for DPLL_A_PIN_DIRECTION attribute
+ * @DPLL_PIN_DIRECTION_INPUT: pin used as a input of a signal
+ * @DPLL_PIN_DIRECTION_OUTPUT: pin used to output the signal
+ */
+enum dpll_pin_direction {
+	DPLL_PIN_DIRECTION_INPUT = 1,
+	DPLL_PIN_DIRECTION_OUTPUT,
+
+	/* private: */
+	__DPLL_PIN_DIRECTION_MAX,
+	DPLL_PIN_DIRECTION_MAX = (__DPLL_PIN_DIRECTION_MAX - 1)
+};
+
+#define DPLL_PIN_FREQUENCY_1_HZ		1
+#define DPLL_PIN_FREQUENCY_10_KHZ	10000
+#define DPLL_PIN_FREQUENCY_77_5_KHZ	77500
+#define DPLL_PIN_FREQUENCY_10_MHZ	10000000
+
+/**
+ * enum dpll_pin_state - defines possible states of a pin, valid values for
+ *   DPLL_A_PIN_STATE attribute
+ * @DPLL_PIN_STATE_CONNECTED: pin connected, active input of phase locked loop
+ * @DPLL_PIN_STATE_DISCONNECTED: pin disconnected, not considered as a valid
+ *   input
+ * @DPLL_PIN_STATE_SELECTABLE: pin enabled for automatic input selection
+ */
+enum dpll_pin_state {
+	DPLL_PIN_STATE_CONNECTED = 1,
+	DPLL_PIN_STATE_DISCONNECTED,
+	DPLL_PIN_STATE_SELECTABLE,
+
+	/* private: */
+	__DPLL_PIN_STATE_MAX,
+	DPLL_PIN_STATE_MAX = (__DPLL_PIN_STATE_MAX - 1)
+};
+
+/**
+ * enum dpll_pin_capabilities - defines possible capabilities of a pin, valid
+ *   flags on DPLL_A_PIN_CAPABILITIES attribute
+ * @DPLL_PIN_CAPABILITIES_DIRECTION_CAN_CHANGE: pin direction can be changed
+ * @DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE: pin priority can be changed
+ * @DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE: pin state can be changed
+ */
+enum dpll_pin_capabilities {
+	DPLL_PIN_CAPABILITIES_DIRECTION_CAN_CHANGE = 1,
+	DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE = 2,
+	DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE = 4,
+};
+
+enum dpll_a {
+	DPLL_A_ID = 1,
+	DPLL_A_MODULE_NAME,
+	DPLL_A_PAD,
+	DPLL_A_CLOCK_ID,
+	DPLL_A_MODE,
+	DPLL_A_MODE_SUPPORTED,
+	DPLL_A_LOCK_STATUS,
+	DPLL_A_TEMP,
+	DPLL_A_TYPE,
+
+	__DPLL_A_MAX,
+	DPLL_A_MAX = (__DPLL_A_MAX - 1)
+};
+
+enum dpll_a_pin {
+	DPLL_A_PIN_ID = 1,
+	DPLL_A_PIN_PARENT_ID,
+	DPLL_A_PIN_MODULE_NAME,
+	DPLL_A_PIN_PAD,
+	DPLL_A_PIN_CLOCK_ID,
+	DPLL_A_PIN_BOARD_LABEL,
+	DPLL_A_PIN_PANEL_LABEL,
+	DPLL_A_PIN_PACKAGE_LABEL,
+	DPLL_A_PIN_TYPE,
+	DPLL_A_PIN_DIRECTION,
+	DPLL_A_PIN_FREQUENCY,
+	DPLL_A_PIN_FREQUENCY_SUPPORTED,
+	DPLL_A_PIN_FREQUENCY_MIN,
+	DPLL_A_PIN_FREQUENCY_MAX,
+	DPLL_A_PIN_PRIO,
+	DPLL_A_PIN_STATE,
+	DPLL_A_PIN_CAPABILITIES,
+	DPLL_A_PIN_PARENT_DEVICE,
+	DPLL_A_PIN_PARENT_PIN,
+
+	__DPLL_A_PIN_MAX,
+	DPLL_A_PIN_MAX = (__DPLL_A_PIN_MAX - 1)
+};
+
+enum dpll_cmd {
+	DPLL_CMD_DEVICE_ID_GET = 1,
+	DPLL_CMD_DEVICE_GET,
+	DPLL_CMD_DEVICE_SET,
+	DPLL_CMD_DEVICE_CREATE_NTF,
+	DPLL_CMD_DEVICE_DELETE_NTF,
+	DPLL_CMD_DEVICE_CHANGE_NTF,
+	DPLL_CMD_PIN_ID_GET,
+	DPLL_CMD_PIN_GET,
+	DPLL_CMD_PIN_SET,
+	DPLL_CMD_PIN_CREATE_NTF,
+	DPLL_CMD_PIN_DELETE_NTF,
+	DPLL_CMD_PIN_CHANGE_NTF,
+
+	__DPLL_CMD_MAX,
+	DPLL_CMD_MAX = (__DPLL_CMD_MAX - 1)
+};
+
+#define DPLL_MCGRP_MONITOR	"monitor"
+
+#endif /* _UAPI_LINUX_DPLL_H */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
