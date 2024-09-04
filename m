Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2947996BF45
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 15:57:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D592480E6F;
	Wed,  4 Sep 2024 13:57:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qE-eUy3haIM1; Wed,  4 Sep 2024 13:57:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16FF080E5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725458255;
	bh=lJ48yosRnd4X2sWZRVITgdKAUA5lk5UHcqwEokjovCM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J9hm2aq+Md6xguApD5l56DzjLgH6h4W+3pz8ChUjkkLs4+jn3LnPEnrUiMQJNCYtW
	 lGB5Fu32FChg0i8Uhr//uGQcDRH8beLRrWa887JpE3KU3yfVGhOlTKdYpl+Cr9rQZJ
	 icNjy0SPPPEF7uzwdrawA2rl9WQ0fNmRbm4wPv3Fa1pXqU6fv1JLAQ6qbVpDxAvLli
	 rw9eT0kQOmC3BAzh+HY2YQJ8hr6d1cmb3DhD8P3/JuEnju8Qg3Z7d0hnl6K56WnzVt
	 0UPoUya4Ss9jF5BXaF+s449Ivfs/n7fpHK2bqu2H8hg+P94R25MJCZs2DKhyjI/ZU5
	 czFpM1Neoxtbg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16FF080E5F;
	Wed,  4 Sep 2024 13:57:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C331A1BF479
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:57:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFD7060896
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:57:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LgIuW4s-0jZs for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 13:57:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ACA10605AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACA10605AA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ACA10605AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:57:32 +0000 (UTC)
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-550-8gWq1N0gMiKMMtKNxYcr4Q-1; Wed,
 04 Sep 2024 09:57:27 -0400
X-MC-Unique: 8gWq1N0gMiKMMtKNxYcr4Q-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 351B91955BC1; Wed,  4 Sep 2024 13:57:24 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.225.58])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 8139E1955EA9; Wed,  4 Sep 2024 13:57:19 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  4 Sep 2024 15:53:40 +0200
Message-ID: <1d1e5e7c29da39fe366a4572d22fc17dc9637b42.1725457317.git.pabeni@redhat.com>
In-Reply-To: <cover.1725457317.git.pabeni@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725458251;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lJ48yosRnd4X2sWZRVITgdKAUA5lk5UHcqwEokjovCM=;
 b=bRxAwOaiJIzS9ORWbVaB+Ue7AF/AwExcyPB1aZkRHlSAxU9iiw1JnlIY7PbeXcjCYOAZUZ
 a1YiDiPIYz0gE30CpnXoJ5inn8jTi4OpDW283KXujah8QKvwm/b7alKY0NTdkrjR2YN68C
 JivDkUsK81f5VrL6gQWIQHOpis4ZfRw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=bRxAwOai
Subject: [Intel-wired-lan] [PATCH v6 net-next 08/15] netlink: spec: add
 shaper introspection support
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
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow the user-space to fine-grain query the shaping features
supported by the NIC on each domain.

Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v5 -> v6:
 - shorter cap-related names

v4 -> v5:
 - added pre/post helpers for dump op
---
 Documentation/netlink/specs/net_shaper.yaml | 88 +++++++++++++++++++++
 include/uapi/linux/net_shaper.h             | 17 ++++
 net/shaper/shaper.c                         | 32 ++++++++
 net/shaper/shaper_nl_gen.c                  | 29 +++++++
 net/shaper/shaper_nl_gen.h                  | 10 +++
 5 files changed, 176 insertions(+)

diff --git a/Documentation/netlink/specs/net_shaper.yaml b/Documentation/netlink/specs/net_shaper.yaml
index 1820578743c1..b93cf1fa3928 100644
--- a/Documentation/netlink/specs/net_shaper.yaml
+++ b/Documentation/netlink/specs/net_shaper.yaml
@@ -27,6 +27,11 @@ doc: |
 
   The user can query the running configuration via the @get operation.
 
+  Different devices can provide different feature sets, e.g. with no
+  support for complex scheduling hierarchy, or for some shaping
+  parameters. The user can introspect the HW capabilities via the
+  @cap-get operation.
+
 definitions:
   -
     type: enum
@@ -201,6 +206,53 @@ attribute-sets:
         name: priority
       -
         name: weight
+  -
+    name: caps
+    attributes:
+      -
+        name: ifindex
+        type: u32
+        doc: Interface index queried for shapers capabilities.
+      -
+        name: scope
+        type: u32
+        enum: scope
+        doc: The scope to which the queried capabilities apply.
+      -
+        name: support-metric-bps
+        type: flag
+        doc: The device accepts 'bps' metric for bw-min, bw-max and burst.
+      -
+        name: support-metric-pps
+        type: flag
+        doc: The device accepts 'pps' metric for bw-min, bw-max and burst.
+      -
+        name: support-nesting
+        type: flag
+        doc: |
+          The device supports nesting shaper belonging to this scope
+          below 'node' scoped shapers. Only 'queue' and 'node'
+          scope can have flag 'support-nesting'.
+      -
+        name: support-bw-min
+        type: flag
+        doc: The device supports a minimum guaranteed B/W.
+      -
+        name: support-bw-max
+        type: flag
+        doc: The device supports maximum B/W shaping.
+      -
+        name: support-burst
+        type: flag
+        doc: The device supports a maximum burst size.
+      -
+        name: support-priority
+        type: flag
+        doc: The device supports priority scheduling.
+      -
+        name: support-weight
+        type: flag
+        doc: The device supports weighted round robin scheduling.
 
 operations:
   list:
@@ -311,3 +363,39 @@ operations:
             - node
         reply:
           attributes: *ns-binding
+
+    -
+      name: cap-get
+      doc: |
+        Get the shaper capabilities supported by the given device
+        for the specified scope.
+      attribute-set: caps
+
+      do:
+        pre: net-shaper-nl-cap-pre-doit
+        post: net-shaper-nl-cap-post-doit
+        request:
+          attributes:
+            - ifindex
+            - scope
+        reply:
+          attributes: &cap-attrs
+            - ifindex
+            - scope
+            - support-metric-bps
+            - support-metric-pps
+            - support-nesting
+            - support-bw-min
+            - support-bw-max
+            - support-burst
+            - support-priority
+            - support-weight
+
+      dump:
+        pre: net-shaper-nl-cap-pre-dumpit
+        post: net-shaper-nl-cap-post-dumpit
+        request:
+          attributes:
+            - ifindex
+        reply:
+          attributes: *cap-attrs
diff --git a/include/uapi/linux/net_shaper.h b/include/uapi/linux/net_shaper.h
index 03c774a2bec1..ff82c00bc305 100644
--- a/include/uapi/linux/net_shaper.h
+++ b/include/uapi/linux/net_shaper.h
@@ -67,11 +67,28 @@ enum {
 	NET_SHAPER_A_HANDLE_MAX = (__NET_SHAPER_A_HANDLE_MAX - 1)
 };
 
+enum {
+	NET_SHAPER_A_CAPS_IFINDEX = 1,
+	NET_SHAPER_A_CAPS_SCOPE,
+	NET_SHAPER_A_CAPS_SUPPORT_METRIC_BPS,
+	NET_SHAPER_A_CAPS_SUPPORT_METRIC_PPS,
+	NET_SHAPER_A_CAPS_SUPPORT_NESTING,
+	NET_SHAPER_A_CAPS_SUPPORT_BW_MIN,
+	NET_SHAPER_A_CAPS_SUPPORT_BW_MAX,
+	NET_SHAPER_A_CAPS_SUPPORT_BURST,
+	NET_SHAPER_A_CAPS_SUPPORT_PRIORITY,
+	NET_SHAPER_A_CAPS_SUPPORT_WEIGHT,
+
+	__NET_SHAPER_A_CAPS_MAX,
+	NET_SHAPER_A_CAPS_MAX = (__NET_SHAPER_A_CAPS_MAX - 1)
+};
+
 enum {
 	NET_SHAPER_CMD_GET = 1,
 	NET_SHAPER_CMD_SET,
 	NET_SHAPER_CMD_DELETE,
 	NET_SHAPER_CMD_GROUP,
+	NET_SHAPER_CMD_CAP_GET,
 
 	__NET_SHAPER_CMD_MAX,
 	NET_SHAPER_CMD_MAX = (__NET_SHAPER_CMD_MAX - 1)
diff --git a/net/shaper/shaper.c b/net/shaper/shaper.c
index f6f5712d7b3c..67d38b691bb8 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -614,6 +614,27 @@ int net_shaper_nl_post_dumpit(struct netlink_callback *cb)
 	return 0;
 }
 
+int net_shaper_nl_cap_pre_doit(const struct genl_split_ops *ops,
+			       struct sk_buff *skb, struct genl_info *info)
+{
+	return -EOPNOTSUPP;
+}
+
+void net_shaper_nl_cap_post_doit(const struct genl_split_ops *ops,
+				 struct sk_buff *skb, struct genl_info *info)
+{
+}
+
+int net_shaper_nl_cap_pre_dumpit(struct netlink_callback *cb)
+{
+	return -EOPNOTSUPP;
+}
+
+int net_shaper_nl_cap_post_dumpit(struct netlink_callback *cb)
+{
+	return -EOPNOTSUPP;
+}
+
 int net_shaper_nl_get_doit(struct sk_buff *skb, struct genl_info *info)
 {
 	struct net_shaper_binding *binding;
@@ -1170,6 +1191,17 @@ int net_shaper_nl_group_doit(struct sk_buff *skb, struct genl_info *info)
 	goto free_shapers;
 }
 
+int net_shaper_nl_cap_get_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	return 0;
+}
+
+int net_shaper_nl_cap_get_dumpit(struct sk_buff *skb,
+				 struct netlink_callback *cb)
+{
+	return 0;
+}
+
 static void net_shaper_flush(struct net_shaper_binding *binding)
 {
 	struct net_shaper_hierarchy *hierarchy = net_shaper_hierarchy(binding);
diff --git a/net/shaper/shaper_nl_gen.c b/net/shaper/shaper_nl_gen.c
index 76289f6df9aa..4393c9370cef 100644
--- a/net/shaper/shaper_nl_gen.c
+++ b/net/shaper/shaper_nl_gen.c
@@ -73,6 +73,17 @@ static const struct nla_policy net_shaper_group_nl_policy[NET_SHAPER_A_NODE + 1]
 	[NET_SHAPER_A_NODE] = NLA_POLICY_NESTED(net_shaper_node_info_nl_policy),
 };
 
+/* NET_SHAPER_CMD_CAP_GET - do */
+static const struct nla_policy net_shaper_cap_get_do_nl_policy[NET_SHAPER_A_CAPS_SCOPE + 1] = {
+	[NET_SHAPER_A_CAPS_IFINDEX] = { .type = NLA_U32, },
+	[NET_SHAPER_A_CAPS_SCOPE] = NLA_POLICY_MAX(NLA_U32, 3),
+};
+
+/* NET_SHAPER_CMD_CAP_GET - dump */
+static const struct nla_policy net_shaper_cap_get_dump_nl_policy[NET_SHAPER_A_CAPS_IFINDEX + 1] = {
+	[NET_SHAPER_A_CAPS_IFINDEX] = { .type = NLA_U32, },
+};
+
 /* Ops table for net_shaper */
 static const struct genl_split_ops net_shaper_nl_ops[] = {
 	{
@@ -120,6 +131,24 @@ static const struct genl_split_ops net_shaper_nl_ops[] = {
 		.maxattr	= NET_SHAPER_A_NODE,
 		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
 	},
+	{
+		.cmd		= NET_SHAPER_CMD_CAP_GET,
+		.pre_doit	= net_shaper_nl_cap_pre_doit,
+		.doit		= net_shaper_nl_cap_get_doit,
+		.post_doit	= net_shaper_nl_cap_post_doit,
+		.policy		= net_shaper_cap_get_do_nl_policy,
+		.maxattr	= NET_SHAPER_A_CAPS_SCOPE,
+		.flags		= GENL_CMD_CAP_DO,
+	},
+	{
+		.cmd		= NET_SHAPER_CMD_CAP_GET,
+		.start		= net_shaper_nl_cap_pre_dumpit,
+		.dumpit		= net_shaper_nl_cap_get_dumpit,
+		.done		= net_shaper_nl_cap_post_dumpit,
+		.policy		= net_shaper_cap_get_dump_nl_policy,
+		.maxattr	= NET_SHAPER_A_CAPS_IFINDEX,
+		.flags		= GENL_CMD_CAP_DUMP,
+	},
 };
 
 struct genl_family net_shaper_nl_family __ro_after_init = {
diff --git a/net/shaper/shaper_nl_gen.h b/net/shaper/shaper_nl_gen.h
index fea70e94af48..3affdb21061f 100644
--- a/net/shaper/shaper_nl_gen.h
+++ b/net/shaper/shaper_nl_gen.h
@@ -19,17 +19,27 @@ extern const struct nla_policy net_shaper_node_info_nl_policy[NET_SHAPER_A_PAREN
 
 int net_shaper_nl_pre_doit(const struct genl_split_ops *ops,
 			   struct sk_buff *skb, struct genl_info *info);
+int net_shaper_nl_cap_pre_doit(const struct genl_split_ops *ops,
+			       struct sk_buff *skb, struct genl_info *info);
 void
 net_shaper_nl_post_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
 			struct genl_info *info);
+void
+net_shaper_nl_cap_post_doit(const struct genl_split_ops *ops,
+			    struct sk_buff *skb, struct genl_info *info);
 int net_shaper_nl_pre_dumpit(struct netlink_callback *cb);
+int net_shaper_nl_cap_pre_dumpit(struct netlink_callback *cb);
 int net_shaper_nl_post_dumpit(struct netlink_callback *cb);
+int net_shaper_nl_cap_post_dumpit(struct netlink_callback *cb);
 
 int net_shaper_nl_get_doit(struct sk_buff *skb, struct genl_info *info);
 int net_shaper_nl_get_dumpit(struct sk_buff *skb, struct netlink_callback *cb);
 int net_shaper_nl_set_doit(struct sk_buff *skb, struct genl_info *info);
 int net_shaper_nl_delete_doit(struct sk_buff *skb, struct genl_info *info);
 int net_shaper_nl_group_doit(struct sk_buff *skb, struct genl_info *info);
+int net_shaper_nl_cap_get_doit(struct sk_buff *skb, struct genl_info *info);
+int net_shaper_nl_cap_get_dumpit(struct sk_buff *skb,
+				 struct netlink_callback *cb);
 
 extern struct genl_family net_shaper_nl_family;
 
-- 
2.45.2

