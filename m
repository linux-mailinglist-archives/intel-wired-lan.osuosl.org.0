Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 555BB98A63A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 15:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05D4F4028E;
	Mon, 30 Sep 2024 13:55:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YGpCc3ebrELE; Mon, 30 Sep 2024 13:55:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBE734026F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727704539;
	bh=NC4nmJbiEhnOnENe7dLHsytQMAjEFH1I/WVX2y0l2vY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UvvYT77jZ+QRTr6N8xifM0v/8Isj08ug9Y9Whr5tyEkXw57tAg8YAQZLa04P2c3vi
	 pWKBuIAFuU4IRb3QDocP7htapwk2HtMjVmLETX57C7XQpupzhTE4VP+V1tj2J7s13q
	 UV92elCNAFimkC3LSZvjJMd7BImyygM8EPRZCI5tI7b3NncUgioeYY1Jra0LVONfN4
	 aqXVeoKkYNQRPSXk7R7pM+QgCaZP5j9k8TZiAPCIx3kvStq8wXSgfAXkDi3QPNmf4u
	 esnQKE33Axi4Ob4KEBSeXbkZ1KTmjiF1QzArmBgxqMLZ7F+opG9tupSvjrSm1KRMG8
	 SqRB4SepgAlJQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBE734026F;
	Mon, 30 Sep 2024 13:55:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6C61BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:55:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4AB3840144
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:55:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XazXdtTQ2pbY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 13:55:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0F85B40118
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F85B40118
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F85B40118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:55:35 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-263-okVxKxniPWiylw2Nqt4Y_w-1; Mon,
 30 Sep 2024 09:55:33 -0400
X-MC-Unique: okVxKxniPWiylw2Nqt4Y_w-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (unknown
 [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 041A3195C270; Mon, 30 Sep 2024 13:55:31 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.210])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 12A811954B0F; Mon, 30 Sep 2024 13:55:25 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 30 Sep 2024 15:53:57 +0200
Message-ID: <1727cd97cd6173ffec9d4282ec80312c96f64762.1727704215.git.pabeni@redhat.com>
In-Reply-To: <cover.1727704215.git.pabeni@redhat.com>
References: <cover.1727704215.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727704535;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NC4nmJbiEhnOnENe7dLHsytQMAjEFH1I/WVX2y0l2vY=;
 b=GCwEKwZTIpweatlJiBipD/zobTsuIMO+CmF4T0V8p3AWVYiosqArAaUG+EsutV7RrCnWvb
 pqlqNb8CiawAV+VJMSx+9X1G9LFXmyQV0T/SPGJyisTjtvsaPlwwlyJjIDrZ1jHxnE/o/H
 6+3ZQMUpZQgoOiSVlvsEAf5eogODLQs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GCwEKwZT
Subject: [Intel-wired-lan] [PATCH v8 net-next 10/15] net-shapers: implement
 cap validation in the core
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

Use the device capabilities to reject invalid attribute values before
pushing them to the H/W.

Note that validating the metric explicitly avoids NL_SET_BAD_ATTR()
usage, to provide unambiguous error messages to the user.

Validating the nesting requires the knowledge of the new parent for
the given shaper; as such is a chicken-egg problem: to validate the
leaf nesting we need to know the node scope, to validate the node
nesting we need to know the leafs parent scope.

To break the circular dependency, place the leafs nesting validation
after the parsing.

Suggested-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v6 -> v7:
  - validate the queue id vs real_num_tx_queues
  - some mangling upon rebase, as 'node' is now always not NULL
    in net_shaper_parse_leaf()
---
 net/shaper/shaper.c | 101 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 101 insertions(+)

diff --git a/net/shaper/shaper.c b/net/shaper/shaper.c
index f9399984165a..15463062fe7b 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -439,6 +439,74 @@ static int net_shaper_parse_handle(const struct nlattr *attr,
 	return 0;
 }
 
+static int net_shaper_validate_caps(struct net_shaper_binding *binding,
+				    struct nlattr **tb,
+				    const struct genl_info *info,
+				    struct net_shaper *shaper)
+{
+	const struct net_shaper_ops *ops = net_shaper_ops(binding);
+	struct nlattr *bad = NULL;
+	unsigned long caps = 0;
+
+	ops->capabilities(binding, shaper->handle.scope, &caps);
+
+	if (tb[NET_SHAPER_A_PRIORITY] &&
+	    !(caps & BIT(NET_SHAPER_A_CAPS_SUPPORT_PRIORITY)))
+		bad = tb[NET_SHAPER_A_PRIORITY];
+	if (tb[NET_SHAPER_A_WEIGHT] &&
+	    !(caps & BIT(NET_SHAPER_A_CAPS_SUPPORT_WEIGHT)))
+		bad = tb[NET_SHAPER_A_WEIGHT];
+	if (tb[NET_SHAPER_A_BW_MIN] &&
+	    !(caps & BIT(NET_SHAPER_A_CAPS_SUPPORT_BW_MIN)))
+		bad = tb[NET_SHAPER_A_BW_MIN];
+	if (tb[NET_SHAPER_A_BW_MAX] &&
+	    !(caps & BIT(NET_SHAPER_A_CAPS_SUPPORT_BW_MAX)))
+		bad = tb[NET_SHAPER_A_BW_MAX];
+	if (tb[NET_SHAPER_A_BURST] &&
+	    !(caps & BIT(NET_SHAPER_A_CAPS_SUPPORT_BURST)))
+		bad = tb[NET_SHAPER_A_BURST];
+
+	if (!caps)
+		bad = tb[NET_SHAPER_A_HANDLE];
+
+	if (bad) {
+		NL_SET_BAD_ATTR(info->extack, bad);
+		return -EOPNOTSUPP;
+	}
+
+	if (shaper->handle.scope == NET_SHAPER_SCOPE_QUEUE &&
+	    binding->type == NET_SHAPER_BINDING_TYPE_NETDEV &&
+	    shaper->handle.id >= binding->netdev->real_num_tx_queues) {
+		NL_SET_ERR_MSG_FMT(info->extack,
+				   "Not existing queue id %d max %d",
+				   shaper->handle.id,
+				   binding->netdev->real_num_tx_queues);
+		return -ENOENT;
+	}
+
+	/* The metric is really used only if there is *any* rate-related
+	 * setting, either in current attributes set or in pre-existing
+	 * values.
+	 */
+	if (shaper->burst || shaper->bw_min || shaper->bw_max) {
+		u32 metric_cap = NET_SHAPER_A_CAPS_SUPPORT_METRIC_BPS +
+				 shaper->metric;
+
+		/* The metric test can fail even when the user did not
+		 * specify the METRIC attribute. Pointing to rate related
+		 * attribute will be confusing, as the attribute itself
+		 * could be indeed supported, with a different metric.
+		 * Be more specific.
+		 */
+		if (!(caps & BIT(metric_cap))) {
+			NL_SET_ERR_MSG_FMT(info->extack, "Bad metric %d",
+					   shaper->metric);
+			return -EOPNOTSUPP;
+		}
+	}
+	return 0;
+}
+
 static int net_shaper_parse_info(struct net_shaper_binding *binding,
 				 struct nlattr **tb,
 				 const struct genl_info *info,
@@ -487,6 +555,28 @@ static int net_shaper_parse_info(struct net_shaper_binding *binding,
 
 	if (tb[NET_SHAPER_A_WEIGHT])
 		shaper->weight = nla_get_u32(tb[NET_SHAPER_A_WEIGHT]);
+
+	ret = net_shaper_validate_caps(binding, tb, info, shaper);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int net_shaper_validate_nesting(struct net_shaper_binding *binding,
+				       const struct net_shaper *shaper,
+				       struct netlink_ext_ack *extack)
+{
+	const struct net_shaper_ops *ops = net_shaper_ops(binding);
+	unsigned long caps = 0;
+
+	ops->capabilities(binding, shaper->handle.scope, &caps);
+	if (!(caps & BIT(NET_SHAPER_A_CAPS_SUPPORT_NESTING))) {
+		NL_SET_ERR_MSG_FMT(extack,
+				   "Nesting not supported for scope %d",
+				   shaper->handle.scope);
+		return -EOPNOTSUPP;
+	}
 	return 0;
 }
 
@@ -517,6 +607,13 @@ static int net_shaper_parse_leaf(struct net_shaper_binding *binding,
 		return -EINVAL;
 	}
 
+	if (node->handle.scope == NET_SHAPER_SCOPE_NODE) {
+		ret = net_shaper_validate_nesting(binding, shaper,
+						  info->extack);
+		if (ret < 0)
+			return ret;
+	}
+
 	if (!exists)
 		net_shaper_default_parent(&shaper->handle, &shaper->parent);
 	return 0;
@@ -858,6 +955,10 @@ static int __net_shaper_group(struct net_shaper_binding *binding,
 					   node->parent.scope, node->parent.id);
 			return -ENOENT;
 		}
+
+		ret = net_shaper_validate_nesting(binding, node, extack);
+		if (ret < 0)
+			return ret;
 	}
 
 	if (update_node) {
-- 
2.45.2

