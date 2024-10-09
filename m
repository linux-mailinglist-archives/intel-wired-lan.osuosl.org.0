Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B387996205
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 10:12:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E895D40B6E;
	Wed,  9 Oct 2024 08:12:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lv-1avzVyiik; Wed,  9 Oct 2024 08:12:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8367140B47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728461526;
	bh=arYabJS2b08VAFqLYvYGfQv/2kUP7TL8F8t8Zd7WP6w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Be6lMdrByuHcAyBbQzZVJ9tH8wJFvguj8RaG1IUamGqu4tXYz/+4QIUgu6ZzP0DDj
	 vf+0jqrE9T1AH7A58olupuCwg/2gjWDMTHHCFSglgYCzAegfTYQhAt3o7yjnori2AW
	 aCnps9z4APcw7O64Kz4tQo5vFXnU5Ue+UgDDr7B6/HmU3NO4fIy0cP4AAgcYdQWxk9
	 c/e/oQT7y3/goyMmPUBGLJHC0NSGnI4JEAsMXPxMSiNVV5i7aq7nmMlxBm3A6VXPFh
	 FytYDEjZKE1h/lao0snWyTDHu49c9bnqIPxjx3RH8V9rgV8azDZycyj7e/V2EiraP1
	 98eivolYupWMg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8367140B47;
	Wed,  9 Oct 2024 08:12:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 104561BF406
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:12:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BD9D40B32
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:12:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mnYb7F89iYJa for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 08:12:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3568A40B23
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3568A40B23
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3568A40B23
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:12:01 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-633-YnKIPyAVOH-34AfcVLrfHQ-1; Wed,
 09 Oct 2024 04:11:55 -0400
X-MC-Unique: YnKIPyAVOH-34AfcVLrfHQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 07700193617F; Wed,  9 Oct 2024 08:10:51 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.225.249])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 9B66819560B2; Wed,  9 Oct 2024 08:10:45 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  9 Oct 2024 10:09:52 +0200
Message-ID: <763d484b5b69e365acccfd8031b183c647a367a4.1728460186.git.pabeni@redhat.com>
In-Reply-To: <cover.1728460186.git.pabeni@redhat.com>
References: <cover.1728460186.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1728461521;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=arYabJS2b08VAFqLYvYGfQv/2kUP7TL8F8t8Zd7WP6w=;
 b=DWmyBZCLsFvHrTiNgvFIirXkAmIIfqCGRCurF0dXYDNFUc+bj+r4QaE8TV2bZxjVOdUlaC
 /oaBGxlhvs7t6XELSxcfoe/ocSdoz0FcbAIS8zJrCET29KBY7aUNqfK920+67kD4Cy/46F
 srYgukVAOMHI8dtZSl/8/u5zvoDt1W4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DWmyBZCL
Subject: [Intel-wired-lan] [PATCH v9 net-next 06/15] net-shapers: implement
 delete support for NODE scope shaper
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

Leverage the previously introduced group operation to implement
the removal of NODE scope shaper, re-linking its leaves under the
the parent node before actually deleting the specified NODE scope
shaper.

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v4 -> v5:
 - replace net_device* with binding* in most helpers
---
 net/shaper/shaper.c | 86 ++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 74 insertions(+), 12 deletions(-)

diff --git a/net/shaper/shaper.c b/net/shaper/shaper.c
index c23ac611850d..ddd1999b3f27 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -785,7 +785,8 @@ static int net_shaper_parent_from_leaves(int leaves_count,
 }
 
 static int __net_shaper_group(struct net_shaper_binding *binding,
-			      int leaves_count, struct net_shaper *leaves,
+			      bool update_node, int leaves_count,
+			      struct net_shaper *leaves,
 			      struct net_shaper *node,
 			      struct netlink_ext_ack *extack)
 {
@@ -831,12 +832,14 @@ static int __net_shaper_group(struct net_shaper_binding *binding,
 		}
 	}
 
-	/* For newly created node scope shaper, the following will update
-	 * the handle, due to id allocation.
-	 */
-	ret = net_shaper_pre_insert(binding, &node->handle, extack);
-	if (ret)
-		return ret;
+	if (update_node) {
+		/* For newly created node scope shaper, the following will
+		 * update the handle, due to id allocation.
+		 */
+		ret = net_shaper_pre_insert(binding, &node->handle, extack);
+		if (ret)
+			return ret;
+	}
 
 	for (i = 0; i < leaves_count; ++i) {
 		leaf_handle = leaves[i].handle;
@@ -864,7 +867,8 @@ static int __net_shaper_group(struct net_shaper_binding *binding,
 	 */
 	if (new_node && parent)
 		parent->leaves++;
-	net_shaper_commit(binding, 1, node);
+	if (update_node)
+		net_shaper_commit(binding, 1, node);
 	net_shaper_commit(binding, leaves_count, leaves);
 	return 0;
 
@@ -873,6 +877,64 @@ static int __net_shaper_group(struct net_shaper_binding *binding,
 	return ret;
 }
 
+static int net_shaper_pre_del_node(struct net_shaper_binding *binding,
+				   const struct net_shaper *shaper,
+				   struct netlink_ext_ack *extack)
+{
+	struct net_shaper_hierarchy *hierarchy = net_shaper_hierarchy(binding);
+	struct net_shaper *cur, *leaves, node = {};
+	int ret, leaves_count = 0;
+	unsigned long index;
+	bool update_node;
+
+	if (!shaper->leaves)
+		return 0;
+
+	/* Fetch the new node information. */
+	node.handle = shaper->parent;
+	cur = net_shaper_lookup(binding, &node.handle);
+	if (cur) {
+		node = *cur;
+	} else {
+		/* A scope NODE shaper can be nested only to the NETDEV scope
+		 * shaper without creating the latter, this check may fail only
+		 * if the data is in inconsistent status.
+		 */
+		if (WARN_ON_ONCE(node.handle.scope != NET_SHAPER_SCOPE_NETDEV))
+			return -EINVAL;
+	}
+
+	leaves = kcalloc(shaper->leaves, sizeof(struct net_shaper),
+			 GFP_KERNEL);
+	if (!leaves)
+		return -ENOMEM;
+
+	/* Build the leaves arrays. */
+	xa_for_each(&hierarchy->shapers, index, cur) {
+		if (net_shaper_handle_cmp(&cur->parent, &shaper->handle))
+			continue;
+
+		if (WARN_ON_ONCE(leaves_count == shaper->leaves)) {
+			ret = -EINVAL;
+			goto free;
+		}
+
+		leaves[leaves_count++] = *cur;
+	}
+
+	/* When re-linking to the netdev shaper, avoid the eventual, implicit,
+	 * creation of the new node, would be surprising since the user is
+	 * doing a delete operation.
+	 */
+	update_node = node.handle.scope != NET_SHAPER_SCOPE_NETDEV;
+	ret = __net_shaper_group(binding, update_node, leaves_count,
+				 leaves, &node, extack);
+
+free:
+	kfree(leaves);
+	return ret;
+}
+
 int net_shaper_nl_delete_doit(struct sk_buff *skb, struct genl_info *info)
 {
 	struct net_shaper_hierarchy *hierarchy;
@@ -905,9 +967,9 @@ int net_shaper_nl_delete_doit(struct sk_buff *skb, struct genl_info *info)
 	}
 
 	if (handle.scope == NET_SHAPER_SCOPE_NODE) {
-		/* TODO: implement support for scope NODE delete. */
-		ret = -EINVAL;
-		goto unlock;
+		ret = net_shaper_pre_del_node(binding, shaper, info->extack);
+		if (ret)
+			goto unlock;
 	}
 
 	ret = __net_shaper_delete(binding, shaper, info->extack);
@@ -1027,7 +1089,7 @@ int net_shaper_nl_group_doit(struct sk_buff *skb, struct genl_info *info)
 		}
 	}
 
-	ret = __net_shaper_group(binding, leaves_count, leaves, &node,
+	ret = __net_shaper_group(binding, true, leaves_count, leaves, &node,
 				 info->extack);
 	if (ret)
 		goto free_msg;
-- 
2.45.2

