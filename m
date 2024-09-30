Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9954E98A62B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 15:55:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D4C94025F;
	Mon, 30 Sep 2024 13:55:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7dt9nmc3d1I5; Mon, 30 Sep 2024 13:55:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E36D84025A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727704499;
	bh=i0vnor8p6D3gWPrbjZJjFrm1SDR563fdIzXVr307cG4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Cf4xuK64+C2pGzSB+XCIsdZQc/4DfpudtBDJJdga9PzoiCkAoWEW+gdv4Hu+coR41
	 69voi7mrEZV/0Fny8iClKvDrayAlDeaQLvr+bVyUX3a5TleeJSIqTRStkvG5WaZ7yZ
	 w7G0IKN5AcJNeZznSOM7guaewjS+LKDaJ+ptM+dpDs8JVA0LcOEuLGa5VF32nx3HMR
	 kyP0dRllBB8a280P8V99AmV9jxo+tWUI+fIijJuWnYPqqLwFJkF11ZmQr9B4wCL/t2
	 ZaSymb2iiqCGVRPpsU18h/y1+m50sJ9EJbQ1t+vaBTZxEsp3ZoCqhjWpiBchkG4sW5
	 eflZuAXfa5L2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E36D84025A;
	Mon, 30 Sep 2024 13:54:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E3BE91BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:54:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DEA5E40144
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:54:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BhuTdEhMsnFX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 13:54:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 95DAE40118
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95DAE40118
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 95DAE40118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:54:55 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-98-okYzTFZAO06bV9SCt5ttQg-1; Mon,
 30 Sep 2024 09:54:48 -0400
X-MC-Unique: okYzTFZAO06bV9SCt5ttQg-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (unknown
 [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 86CF919367B7; Mon, 30 Sep 2024 13:54:46 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.210])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 1EDC919541A6; Mon, 30 Sep 2024 13:54:40 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 30 Sep 2024 15:53:49 +0200
Message-ID: <72241d8f846c67b7201f0293956ef6db6bbbf176.1727704215.git.pabeni@redhat.com>
In-Reply-To: <cover.1727704215.git.pabeni@redhat.com>
References: <cover.1727704215.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727704494;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=i0vnor8p6D3gWPrbjZJjFrm1SDR563fdIzXVr307cG4=;
 b=P6AsOY2aZ/AmGLYKiO6BekjnRbSr2osPrJCub8QFxMOvZe2WDLY/LnmKQT2mrZz5hECZua
 GkneScheoAiPZ2Nh40pkZBXAAHHGCbhLSaJnUzXbBXMY/yKvYOkkOTugTuFQu13fI6zzbu
 FH5B/5IOpyUNzC/RWg/rqvanxY72/rE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=P6AsOY2a
Subject: [Intel-wired-lan] [PATCH v8 net-next 02/15] netlink: spec: add
 shaper YAML spec
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Stanislav Fomichev <stfomichev@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Define the user-space visible interface to query, configure and delete
network shapers via yaml definition.

Add dummy implementations for the relevant NL callbacks.

set() and delete() operations touch a single shaper creating/updating or
deleting it.
The group() operation creates a shaper's group, nesting multiple input
shapers under the specified output shaper.

Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v7 -> v8:
 - an handle -> a handle
 - missing '.' at the end of the period.
 - Queue's implicit node -> The queue’s implicit node

v6 -> v7:
 - s/Minimum g/G/
 - shaper attributes for set() op are not nested anymore
 - node attributes for group() op are not nested anymore

v5 -> v6:
 - moved back ifindex out of binding attr, drop the latter
 - restrict leaves attributes to scheduling-related ones

v4 -> v5:
 - moved ifindex under the binding attr
 - moved id, scope to new attr set
 - rename 'root' as 'node'
 - deleted unused 'info' subset
 - a lot of doc update and fixup
 - removed empty black line at MAKEFILE eof

v3 -> v4:
 - spec file rename
 - always use '@' for references
 - detached scope -> node scope
 - inputs/output -> leaves/root
 - deduplicate leaves/root policy
 - get/dump/group return ifindex, too
 - added some general introduction to the doc

RFC v1 -> RFC v2:
 - u64 -> uint
 - net_shapers -> net-shapers
 - documented all the attributes
 - dropped [ admin-perm ] for get() op
 - group op
 - set/delete touch a single shaper
---
 Documentation/netlink/specs/net_shaper.yaml | 275 ++++++++++++++++++++
 MAINTAINERS                                 |   1 +
 include/uapi/linux/net_shaper.h             |  78 ++++++
 net/Kconfig                                 |   3 +
 net/Makefile                                |   1 +
 net/shaper/Makefile                         |   8 +
 net/shaper/shaper.c                         |  55 ++++
 net/shaper/shaper_nl_gen.c                  | 125 +++++++++
 net/shaper/shaper_nl_gen.h                  |  34 +++
 9 files changed, 580 insertions(+)
 create mode 100644 Documentation/netlink/specs/net_shaper.yaml
 create mode 100644 include/uapi/linux/net_shaper.h
 create mode 100644 net/shaper/Makefile
 create mode 100644 net/shaper/shaper.c
 create mode 100644 net/shaper/shaper_nl_gen.c
 create mode 100644 net/shaper/shaper_nl_gen.h

diff --git a/Documentation/netlink/specs/net_shaper.yaml b/Documentation/netlink/specs/net_shaper.yaml
new file mode 100644
index 000000000000..bbea2a91aa09
--- /dev/null
+++ b/Documentation/netlink/specs/net_shaper.yaml
@@ -0,0 +1,275 @@
+# SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-Clause)
+name: net-shaper
+
+doc: |
+  Networking HW rate limiting configuration.
+
+  This API allows configuring HW shapers available on the network
+  devices at different levels (queues, network device) and allows
+  arbitrary manipulation of the scheduling tree of the involved
+  shapers.
+
+  Each @shaper is identified within the given device, by a @handle,
+  comprising both a @scope and an @id.
+
+  Depending on the @scope value, the shapers are attached to specific
+  HW objects (queues, devices) or, for @node scope, represent a
+  scheduling group, that can be placed in an arbitrary location of
+  the scheduling tree.
+
+  Shapers can be created with two different operations: the @set
+  operation, to create and update a single "attached" shaper, and
+  the @group operation, to create and update a scheduling
+  group. Only the @group operation can create @node scope shapers.
+
+  Existing shapers can be deleted/reset via the @delete operation.
+
+  The user can query the running configuration via the @get operation.
+
+definitions:
+  -
+    type: enum
+    name: scope
+    doc: Defines the shaper @id interpretation.
+    render-max: true
+    entries:
+      - name: unspec
+        doc: The scope is not specified.
+      -
+        name: netdev
+        doc: The main shaper for the given network device.
+      -
+        name: queue
+        doc: |
+            The shaper is attached to the given device queue,
+            the @id represents the queue number.
+      -
+        name: node
+        doc: |
+             The shaper allows grouping of queues or other
+             node shapers; can be nested in either @netdev
+             shapers or other @node shapers, allowing placement
+             in any location of the scheduling tree, except
+             leaves and root.
+  -
+    type: enum
+    name: metric
+    doc: Different metric supported by the shaper.
+    entries:
+      -
+        name: bps
+        doc: Shaper operates on a bits per second basis.
+      -
+        name: pps
+        doc: Shaper operates on a packets per second basis.
+
+attribute-sets:
+  -
+    name: net-shaper
+    attributes:
+      -
+        name: handle
+        type: nest
+        nested-attributes: handle
+        doc: Unique identifier for the given shaper inside the owning device.
+      -
+        name: metric
+        type: u32
+        enum: metric
+        doc: Metric used by the given shaper for bw-min, bw-max and burst.
+      -
+        name: bw-min
+        type: uint
+        doc: Guaranteed bandwidth for the given shaper.
+      -
+        name: bw-max
+        type: uint
+        doc: Maximum bandwidth for the given shaper or 0 when unlimited.
+      -
+        name: burst
+        type: uint
+        doc: |
+          Maximum burst-size for shaping. Should not be interpreted
+          as a quantum.
+      -
+        name: priority
+        type: u32
+        doc: |
+          Scheduling priority for the given shaper. The priority
+          scheduling is applied to sibling shapers.
+      -
+        name: weight
+        type: u32
+        doc: |
+          Relative weight for round robin scheduling of the
+          given shaper.
+          The scheduling is applied to all sibling shapers
+          with the same priority.
+      -
+        name: ifindex
+        type: u32
+        doc: Interface index owning the specified shaper.
+      -
+        name: parent
+        type: nest
+        nested-attributes: handle
+        doc: |
+          Identifier for the parent of the affected shaper.
+          Only needed for @group operation.
+      -
+        name: leaves
+        type: nest
+        multi-attr: true
+        nested-attributes: leaf-info
+        doc: |
+           Describes a set of leaves shapers for a @group operation.
+  -
+    name: handle
+    attributes:
+      -
+        name: scope
+        type: u32
+        enum: scope
+        doc: Defines the shaper @id interpretation.
+      -
+        name: id
+        type: u32
+        doc: |
+          Numeric identifier of a shaper. The id semantic depends on
+          the scope. For @queue scope it's the queue id and for @node
+          scope it's the node identifier.
+  -
+    name: leaf-info
+    subset-of: net-shaper
+    attributes:
+      -
+        name: handle
+      -
+        name: priority
+      -
+        name: weight
+
+operations:
+  list:
+    -
+      name: get
+      doc: |
+        Get information about a shaper for a given device.
+      attribute-set: net-shaper
+
+      do:
+        pre: net-shaper-nl-pre-doit
+        post: net-shaper-nl-post-doit
+        request:
+          attributes: &ns-binding
+            - ifindex
+            - handle
+        reply:
+          attributes: &ns-attrs
+            - ifindex
+            - parent
+            - handle
+            - metric
+            - bw-min
+            - bw-max
+            - burst
+            - priority
+            - weight
+
+      dump:
+        pre: net-shaper-nl-pre-dumpit
+        post: net-shaper-nl-post-dumpit
+        request:
+          attributes:
+            - ifindex
+        reply:
+          attributes: *ns-attrs
+    -
+      name: set
+      doc: |
+        Create or update the specified shaper.
+        The set operation can't be used to create a @node scope shaper,
+        use the @group operation instead.
+      attribute-set: net-shaper
+      flags: [ admin-perm ]
+
+      do:
+        pre: net-shaper-nl-pre-doit
+        post: net-shaper-nl-post-doit
+        request:
+          attributes:
+            - ifindex
+            - handle
+            - metric
+            - bw-min
+            - bw-max
+            - burst
+            - priority
+            - weight
+
+    -
+      name: delete
+      doc: |
+        Clear (remove) the specified shaper. When deleting
+        a @node shaper, reattach all the node's leaves to the
+        deleted node's parent.
+        If, after the removal, the parent shaper has no more
+        leaves and the parent shaper scope is @node, the parent
+        node is deleted, recursively.
+        When deleting a @queue shaper or a @netdev shaper,
+        the shaper disappears from the hierarchy, but the
+        queue/device can still send traffic: it has an implicit
+        node with infinite bandwidth. The queue's implicit node
+        feeds an implicit RR node at the root of the hierarchy.
+      attribute-set: net-shaper
+      flags: [ admin-perm ]
+
+      do:
+        pre: net-shaper-nl-pre-doit
+        post: net-shaper-nl-post-doit
+        request:
+          attributes: *ns-binding
+
+    -
+      name: group
+      doc: |
+        Create or update a scheduling group, attaching the specified
+        @leaves shapers under the specified node identified by @handle,
+        creating the latter, if needed.
+        The @leaves shapers scope must be @queue and the node shaper
+        scope must be either @node or @netdev.
+        When the node shaper has @node scope, if the @handle @id is not
+        specified, a new shaper of such scope is created, otherwise the
+        specified node must already exist.
+        The @parent handle for the node shaper is optional in most cases.
+        For newly created node scope shaper, the node parent is set by
+        default to the parent linked to the @leaves before the @group
+        operation. If, prior to the grouping operation, the @leaves
+        have different parents, the node shaper @parent must be explicitly
+        set.
+        The user can optionally provide shaping attributes for the node
+        shaper.
+        The operation is atomic, on failure no change is applied to
+        the device shaping configuration, otherwise the @node shaper
+        full identifier, comprising @binding and @handle, is provided
+        as the reply.
+      attribute-set: net-shaper
+      flags: [ admin-perm ]
+
+      do:
+        pre: net-shaper-nl-pre-doit
+        post: net-shaper-nl-post-doit
+        request:
+          attributes:
+            - ifindex
+            - parent
+            - handle
+            - metric
+            - bw-min
+            - bw-max
+            - burst
+            - priority
+            - weight
+            - leaves
+        reply:
+          attributes: *ns-binding
diff --git a/MAINTAINERS b/MAINTAINERS
index e71d066dc919..4ceb0e3a2595 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16113,6 +16113,7 @@ F:	include/linux/platform_data/wiznet.h
 F:	include/uapi/linux/cn_proc.h
 F:	include/uapi/linux/ethtool_netlink.h
 F:	include/uapi/linux/if_*
+F:	include/uapi/linux/net_shaper.h
 F:	include/uapi/linux/netdev*
 F:	tools/testing/selftests/drivers/net/
 X:	Documentation/devicetree/bindings/net/bluetooth/
diff --git a/include/uapi/linux/net_shaper.h b/include/uapi/linux/net_shaper.h
new file mode 100644
index 000000000000..9e3fa63618ee
--- /dev/null
+++ b/include/uapi/linux/net_shaper.h
@@ -0,0 +1,78 @@
+/* SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-Clause) */
+/* Do not edit directly, auto-generated from: */
+/*	Documentation/netlink/specs/net_shaper.yaml */
+/* YNL-GEN uapi header */
+
+#ifndef _UAPI_LINUX_NET_SHAPER_H
+#define _UAPI_LINUX_NET_SHAPER_H
+
+#define NET_SHAPER_FAMILY_NAME		"net-shaper"
+#define NET_SHAPER_FAMILY_VERSION	1
+
+/**
+ * enum net_shaper_scope - Defines the shaper @id interpretation.
+ * @NET_SHAPER_SCOPE_UNSPEC: The scope is not specified.
+ * @NET_SHAPER_SCOPE_NETDEV: The main shaper for the given network device.
+ * @NET_SHAPER_SCOPE_QUEUE: The shaper is attached to the given device queue,
+ *   the @id represents the queue number.
+ * @NET_SHAPER_SCOPE_NODE: The shaper allows grouping of queues or other node
+ *   shapers; can be nested in either @netdev shapers or other @node shapers,
+ *   allowing placement in any location of the scheduling tree, except leaves
+ *   and root.
+ */
+enum net_shaper_scope {
+	NET_SHAPER_SCOPE_UNSPEC,
+	NET_SHAPER_SCOPE_NETDEV,
+	NET_SHAPER_SCOPE_QUEUE,
+	NET_SHAPER_SCOPE_NODE,
+
+	/* private: */
+	__NET_SHAPER_SCOPE_MAX,
+	NET_SHAPER_SCOPE_MAX = (__NET_SHAPER_SCOPE_MAX - 1)
+};
+
+/**
+ * enum net_shaper_metric - Different metric supported by the shaper.
+ * @NET_SHAPER_METRIC_BPS: Shaper operates on a bits per second basis.
+ * @NET_SHAPER_METRIC_PPS: Shaper operates on a packets per second basis.
+ */
+enum net_shaper_metric {
+	NET_SHAPER_METRIC_BPS,
+	NET_SHAPER_METRIC_PPS,
+};
+
+enum {
+	NET_SHAPER_A_HANDLE = 1,
+	NET_SHAPER_A_METRIC,
+	NET_SHAPER_A_BW_MIN,
+	NET_SHAPER_A_BW_MAX,
+	NET_SHAPER_A_BURST,
+	NET_SHAPER_A_PRIORITY,
+	NET_SHAPER_A_WEIGHT,
+	NET_SHAPER_A_IFINDEX,
+	NET_SHAPER_A_PARENT,
+	NET_SHAPER_A_LEAVES,
+
+	__NET_SHAPER_A_MAX,
+	NET_SHAPER_A_MAX = (__NET_SHAPER_A_MAX - 1)
+};
+
+enum {
+	NET_SHAPER_A_HANDLE_SCOPE = 1,
+	NET_SHAPER_A_HANDLE_ID,
+
+	__NET_SHAPER_A_HANDLE_MAX,
+	NET_SHAPER_A_HANDLE_MAX = (__NET_SHAPER_A_HANDLE_MAX - 1)
+};
+
+enum {
+	NET_SHAPER_CMD_GET = 1,
+	NET_SHAPER_CMD_SET,
+	NET_SHAPER_CMD_DELETE,
+	NET_SHAPER_CMD_GROUP,
+
+	__NET_SHAPER_CMD_MAX,
+	NET_SHAPER_CMD_MAX = (__NET_SHAPER_CMD_MAX - 1)
+};
+
+#endif /* _UAPI_LINUX_NET_SHAPER_H */
diff --git a/net/Kconfig b/net/Kconfig
index a629f92dc86b..c3fca69a7c83 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -72,6 +72,9 @@ config NET_DEVMEM
 	depends on GENERIC_ALLOCATOR
 	depends on PAGE_POOL
 
+config NET_SHAPER
+	bool
+
 menu "Networking options"
 
 source "net/packet/Kconfig"
diff --git a/net/Makefile b/net/Makefile
index 65bb8c72a35e..60ed5190eda8 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -79,3 +79,4 @@ obj-$(CONFIG_XDP_SOCKETS)	+= xdp/
 obj-$(CONFIG_MPTCP)		+= mptcp/
 obj-$(CONFIG_MCTP)		+= mctp/
 obj-$(CONFIG_NET_HANDSHAKE)	+= handshake/
+obj-$(CONFIG_NET_SHAPER)	+= shaper/
diff --git a/net/shaper/Makefile b/net/shaper/Makefile
new file mode 100644
index 000000000000..54af7169a331
--- /dev/null
+++ b/net/shaper/Makefile
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Makefile for the net shaper infrastructure.
+#
+# Copyright (c) 2024, Red Hat, Inc.
+#
+
+obj-y += shaper.o shaper_nl_gen.o
diff --git a/net/shaper/shaper.c b/net/shaper/shaper.c
new file mode 100644
index 000000000000..a1b20888f502
--- /dev/null
+++ b/net/shaper/shaper.c
@@ -0,0 +1,55 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <linux/kernel.h>
+#include <linux/skbuff.h>
+
+#include "shaper_nl_gen.h"
+
+int net_shaper_nl_pre_doit(const struct genl_split_ops *ops,
+			   struct sk_buff *skb, struct genl_info *info)
+{
+	return -EOPNOTSUPP;
+}
+
+void net_shaper_nl_post_doit(const struct genl_split_ops *ops,
+			     struct sk_buff *skb, struct genl_info *info)
+{
+}
+
+int net_shaper_nl_get_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	return -EOPNOTSUPP;
+}
+
+int net_shaper_nl_get_dumpit(struct sk_buff *skb,
+			     struct netlink_callback *cb)
+{
+	return -EOPNOTSUPP;
+}
+
+int net_shaper_nl_set_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	return -EOPNOTSUPP;
+}
+
+int net_shaper_nl_delete_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	return -EOPNOTSUPP;
+}
+
+int net_shaper_nl_pre_dumpit(struct netlink_callback *cb)
+{
+	return -EOPNOTSUPP;
+}
+
+int net_shaper_nl_post_dumpit(struct netlink_callback *cb)
+{
+	return -EOPNOTSUPP;
+}
+
+static int __init shaper_init(void)
+{
+	return genl_register_family(&net_shaper_nl_family);
+}
+
+subsys_initcall(shaper_init);
diff --git a/net/shaper/shaper_nl_gen.c b/net/shaper/shaper_nl_gen.c
new file mode 100644
index 000000000000..34185c5989e6
--- /dev/null
+++ b/net/shaper/shaper_nl_gen.c
@@ -0,0 +1,125 @@
+// SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-Clause)
+/* Do not edit directly, auto-generated from: */
+/*	Documentation/netlink/specs/net_shaper.yaml */
+/* YNL-GEN kernel source */
+
+#include <net/netlink.h>
+#include <net/genetlink.h>
+
+#include "shaper_nl_gen.h"
+
+#include <uapi/linux/net_shaper.h>
+
+/* Common nested types */
+const struct nla_policy net_shaper_handle_nl_policy[NET_SHAPER_A_HANDLE_ID + 1] = {
+	[NET_SHAPER_A_HANDLE_SCOPE] = NLA_POLICY_MAX(NLA_U32, 3),
+	[NET_SHAPER_A_HANDLE_ID] = { .type = NLA_U32, },
+};
+
+const struct nla_policy net_shaper_leaf_info_nl_policy[NET_SHAPER_A_WEIGHT + 1] = {
+	[NET_SHAPER_A_HANDLE] = NLA_POLICY_NESTED(net_shaper_handle_nl_policy),
+	[NET_SHAPER_A_PRIORITY] = { .type = NLA_U32, },
+	[NET_SHAPER_A_WEIGHT] = { .type = NLA_U32, },
+};
+
+/* NET_SHAPER_CMD_GET - do */
+static const struct nla_policy net_shaper_get_do_nl_policy[NET_SHAPER_A_IFINDEX + 1] = {
+	[NET_SHAPER_A_IFINDEX] = { .type = NLA_U32, },
+	[NET_SHAPER_A_HANDLE] = NLA_POLICY_NESTED(net_shaper_handle_nl_policy),
+};
+
+/* NET_SHAPER_CMD_GET - dump */
+static const struct nla_policy net_shaper_get_dump_nl_policy[NET_SHAPER_A_IFINDEX + 1] = {
+	[NET_SHAPER_A_IFINDEX] = { .type = NLA_U32, },
+};
+
+/* NET_SHAPER_CMD_SET - do */
+static const struct nla_policy net_shaper_set_nl_policy[NET_SHAPER_A_IFINDEX + 1] = {
+	[NET_SHAPER_A_IFINDEX] = { .type = NLA_U32, },
+	[NET_SHAPER_A_HANDLE] = NLA_POLICY_NESTED(net_shaper_handle_nl_policy),
+	[NET_SHAPER_A_METRIC] = NLA_POLICY_MAX(NLA_U32, 1),
+	[NET_SHAPER_A_BW_MIN] = { .type = NLA_UINT, },
+	[NET_SHAPER_A_BW_MAX] = { .type = NLA_UINT, },
+	[NET_SHAPER_A_BURST] = { .type = NLA_UINT, },
+	[NET_SHAPER_A_PRIORITY] = { .type = NLA_U32, },
+	[NET_SHAPER_A_WEIGHT] = { .type = NLA_U32, },
+};
+
+/* NET_SHAPER_CMD_DELETE - do */
+static const struct nla_policy net_shaper_delete_nl_policy[NET_SHAPER_A_IFINDEX + 1] = {
+	[NET_SHAPER_A_IFINDEX] = { .type = NLA_U32, },
+	[NET_SHAPER_A_HANDLE] = NLA_POLICY_NESTED(net_shaper_handle_nl_policy),
+};
+
+/* NET_SHAPER_CMD_GROUP - do */
+static const struct nla_policy net_shaper_group_nl_policy[NET_SHAPER_A_LEAVES + 1] = {
+	[NET_SHAPER_A_IFINDEX] = { .type = NLA_U32, },
+	[NET_SHAPER_A_PARENT] = NLA_POLICY_NESTED(net_shaper_handle_nl_policy),
+	[NET_SHAPER_A_HANDLE] = NLA_POLICY_NESTED(net_shaper_handle_nl_policy),
+	[NET_SHAPER_A_METRIC] = NLA_POLICY_MAX(NLA_U32, 1),
+	[NET_SHAPER_A_BW_MIN] = { .type = NLA_UINT, },
+	[NET_SHAPER_A_BW_MAX] = { .type = NLA_UINT, },
+	[NET_SHAPER_A_BURST] = { .type = NLA_UINT, },
+	[NET_SHAPER_A_PRIORITY] = { .type = NLA_U32, },
+	[NET_SHAPER_A_WEIGHT] = { .type = NLA_U32, },
+	[NET_SHAPER_A_LEAVES] = NLA_POLICY_NESTED(net_shaper_leaf_info_nl_policy),
+};
+
+/* Ops table for net_shaper */
+static const struct genl_split_ops net_shaper_nl_ops[] = {
+	{
+		.cmd		= NET_SHAPER_CMD_GET,
+		.pre_doit	= net_shaper_nl_pre_doit,
+		.doit		= net_shaper_nl_get_doit,
+		.post_doit	= net_shaper_nl_post_doit,
+		.policy		= net_shaper_get_do_nl_policy,
+		.maxattr	= NET_SHAPER_A_IFINDEX,
+		.flags		= GENL_CMD_CAP_DO,
+	},
+	{
+		.cmd		= NET_SHAPER_CMD_GET,
+		.start		= net_shaper_nl_pre_dumpit,
+		.dumpit		= net_shaper_nl_get_dumpit,
+		.done		= net_shaper_nl_post_dumpit,
+		.policy		= net_shaper_get_dump_nl_policy,
+		.maxattr	= NET_SHAPER_A_IFINDEX,
+		.flags		= GENL_CMD_CAP_DUMP,
+	},
+	{
+		.cmd		= NET_SHAPER_CMD_SET,
+		.pre_doit	= net_shaper_nl_pre_doit,
+		.doit		= net_shaper_nl_set_doit,
+		.post_doit	= net_shaper_nl_post_doit,
+		.policy		= net_shaper_set_nl_policy,
+		.maxattr	= NET_SHAPER_A_IFINDEX,
+		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
+	},
+	{
+		.cmd		= NET_SHAPER_CMD_DELETE,
+		.pre_doit	= net_shaper_nl_pre_doit,
+		.doit		= net_shaper_nl_delete_doit,
+		.post_doit	= net_shaper_nl_post_doit,
+		.policy		= net_shaper_delete_nl_policy,
+		.maxattr	= NET_SHAPER_A_IFINDEX,
+		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
+	},
+	{
+		.cmd		= NET_SHAPER_CMD_GROUP,
+		.pre_doit	= net_shaper_nl_pre_doit,
+		.doit		= net_shaper_nl_group_doit,
+		.post_doit	= net_shaper_nl_post_doit,
+		.policy		= net_shaper_group_nl_policy,
+		.maxattr	= NET_SHAPER_A_LEAVES,
+		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
+	},
+};
+
+struct genl_family net_shaper_nl_family __ro_after_init = {
+	.name		= NET_SHAPER_FAMILY_NAME,
+	.version	= NET_SHAPER_FAMILY_VERSION,
+	.netnsok	= true,
+	.parallel_ops	= true,
+	.module		= THIS_MODULE,
+	.split_ops	= net_shaper_nl_ops,
+	.n_split_ops	= ARRAY_SIZE(net_shaper_nl_ops),
+};
diff --git a/net/shaper/shaper_nl_gen.h b/net/shaper/shaper_nl_gen.h
new file mode 100644
index 000000000000..016cb6f3187b
--- /dev/null
+++ b/net/shaper/shaper_nl_gen.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-Clause) */
+/* Do not edit directly, auto-generated from: */
+/*	Documentation/netlink/specs/net_shaper.yaml */
+/* YNL-GEN kernel header */
+
+#ifndef _LINUX_NET_SHAPER_GEN_H
+#define _LINUX_NET_SHAPER_GEN_H
+
+#include <net/netlink.h>
+#include <net/genetlink.h>
+
+#include <uapi/linux/net_shaper.h>
+
+/* Common nested types */
+extern const struct nla_policy net_shaper_handle_nl_policy[NET_SHAPER_A_HANDLE_ID + 1];
+extern const struct nla_policy net_shaper_leaf_info_nl_policy[NET_SHAPER_A_WEIGHT + 1];
+
+int net_shaper_nl_pre_doit(const struct genl_split_ops *ops,
+			   struct sk_buff *skb, struct genl_info *info);
+void
+net_shaper_nl_post_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
+			struct genl_info *info);
+int net_shaper_nl_pre_dumpit(struct netlink_callback *cb);
+int net_shaper_nl_post_dumpit(struct netlink_callback *cb);
+
+int net_shaper_nl_get_doit(struct sk_buff *skb, struct genl_info *info);
+int net_shaper_nl_get_dumpit(struct sk_buff *skb, struct netlink_callback *cb);
+int net_shaper_nl_set_doit(struct sk_buff *skb, struct genl_info *info);
+int net_shaper_nl_delete_doit(struct sk_buff *skb, struct genl_info *info);
+int net_shaper_nl_group_doit(struct sk_buff *skb, struct genl_info *info);
+
+extern struct genl_family net_shaper_nl_family;
+
+#endif /* _LINUX_NET_SHAPER_GEN_H */
-- 
2.45.2

