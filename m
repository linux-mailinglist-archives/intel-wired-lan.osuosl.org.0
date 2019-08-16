Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C5F90A86
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2019 23:54:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 46C3920798;
	Fri, 16 Aug 2019 21:54:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0sGR4Wv6ohcA; Fri, 16 Aug 2019 21:54:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A26AD207A8;
	Fri, 16 Aug 2019 21:54:31 +0000 (UTC)
X-Original-To: Intel-wired-lan@lists.osuosl.org
Delivered-To: Intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4150A1BF35B
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 21:54:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3ECD720788
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 21:54:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xxdjOtNtJGjP for <Intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2019 21:54:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 757A520519
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 21:54:16 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id v12so3768640pfn.10
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 14:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=herbertland-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KB5F4U4YDN+T744WnfjcQ1mltQsuOOQnY9z2zcTdc70=;
 b=sNbV9gdwMmAgSt0Rgk+WU/YRR7JnBAoeFAOoD7WHowCfNDBrDo0AbeExq2oOqBCbWU
 VCLRr3+dgrFdEbZ16Zj7V0DetTCXhlF9NAyxaWI2gBhs7Dh3SHjjrDwtY3ttCXtikavt
 k+iXU5X2XCaKiqEb5f2pSEdodbQ03JOjElVvRVn0zCSKv86jt+bmXyujo8VGWuSWQAlW
 O533uqjd9ivF7jNjO6/S7ABDH2e2kq9nLc8HCydCvdcysou0D8caL6QRheAlzVujGXXx
 pQJN28aeOBkap0EWHwUYaksSOS+csCurgMrKcw5OjWt2DUMv7B/CI+Makc0xbzE63eQh
 eF5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KB5F4U4YDN+T744WnfjcQ1mltQsuOOQnY9z2zcTdc70=;
 b=CiSiJLqrHs7ujDgQbunPyIbjumCifRSLpyVzMoqrk5fbXS8S/Op67m34g+7OiAwvev
 d/5CrlnUQHxySglDqs+aIjnCLNw7dLAUCE1HY0KL1fDyaOOOW/laNg/xnIofN8pU4MRi
 8eqrl+RCyc2GI2J4v9ADqmqzo6HCoKdL4JjUJ3deGUOUFQ6UIeVYxisvhE8p9WeiIo4X
 m9dBCHTM8q/4XyeSDcIt1PFAaPgzx9RX/WKSkNwepsDD9jXG3DzTQvUwz3L/6dy5yeUy
 Shxw3juX+Y/6zQOrdUNULI5XwQiZcYJg0TnwuG/iRL9Qh6YGBsxwJLMEkuqJ5RyDXjGD
 Jr9A==
X-Gm-Message-State: APjAAAVRwWsU+D5Whbk1Bgg5dpa0aZT7wNFo75380uz0CjyJVjYCQH0C
 S8pqqKoITqq2Z9gKtVmPU87vubgN51c=
X-Google-Smtp-Source: APXvYqwW1sGAPf6OLoitJMzg3IyuRElEGsW8EoecjG/eAi7eZuZdcIKqdzUN6LYvPDX6RfKu5fj86g==
X-Received: by 2002:aa7:96ec:: with SMTP id i12mr12892147pfq.125.1565992455542; 
 Fri, 16 Aug 2019 14:54:15 -0700 (PDT)
Received: from localhost.localdomain (c-73-202-182-113.hsd1.ca.comcast.net.
 [73.202.182.113])
 by smtp.gmail.com with ESMTPSA id r12sm7151355pgb.73.2019.08.16.14.54.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 16 Aug 2019 14:54:14 -0700 (PDT)
From: Tom Herbert <tom@herbertland.com>
To: Intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Aug 2019 14:53:43 -0700
Message-Id: <1565992424-22379-7-git-send-email-tom@herbertland.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565992424-22379-1-git-send-email-tom@herbertland.com>
References: <1565992424-22379-1-git-send-email-tom@herbertland.com>
Subject: [Intel-wired-lan] [PATCH v2 net-next 6/7] ip6tlvs: Add netlink
 interface
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
Cc: Tom Herbert <tom@herbertland.com>, Tom Herbert <tom@quantonium.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tom Herbert <tom@quantonium.net>

Add a netlink interface to manage the TX TLV parameters. Managed
parameters include those for validating and sending TLVs being sent
such as alignment, TLV ordering, length limits, etc.

Signed-off-by: Tom Herbert <tom@quantonium.net>
Signed-off-by: Tom Herbert <tom@herbertland.com>
---
 include/net/ipeh.h         |  16 +++
 include/net/ipv6.h         |   1 +
 include/uapi/linux/in6.h   |   6 ++
 include/uapi/linux/ipeh.h  |  29 ++++++
 net/ipv6/exthdrs_common.c  | 238 +++++++++++++++++++++++++++++++++++++++++++++
 net/ipv6/exthdrs_options.c |  81 ++++++++++++++-
 6 files changed, 369 insertions(+), 2 deletions(-)

diff --git a/include/net/ipeh.h b/include/net/ipeh.h
index 2fc0882..7358ed9 100644
--- a/include/net/ipeh.h
+++ b/include/net/ipeh.h
@@ -3,6 +3,7 @@
 #define _NET_IPEH_H
 
 #include <linux/skbuff.h>
+#include <net/genetlink.h>
 
 /*
  *     Parsing tlv encoded headers.
@@ -106,6 +107,21 @@ static inline int ipeh_tlv_unset_proc(struct tlv_param_table *tlv_param_table,
 	return __ipeh_tlv_unset(tlv_param_table, type, false);
 }
 
+extern const struct nla_policy ipeh_tlv_nl_policy[];
+
+int ipeh_tlv_nl_cmd_set(struct tlv_param_table *tlv_param_table,
+			struct genl_family *tlv_nl_family,
+			struct sk_buff *skb, struct genl_info *info);
+int ipeh_tlv_nl_cmd_unset(struct tlv_param_table *tlv_param_table,
+			  struct genl_family *tlv_nl_family,
+			  struct sk_buff *skb, struct genl_info *info);
+int ipeh_tlv_nl_cmd_get(struct tlv_param_table *tlv_param_table,
+			struct genl_family *tlv_nl_family,
+			struct sk_buff *skb, struct genl_info *info);
+int ipeh_tlv_nl_dump(struct tlv_param_table *tlv_param_table,
+		     struct genl_family *tlv_nl_family,
+		     struct sk_buff *skb, struct netlink_callback *cb);
+
 /* ipeh_tlv_get_proc_by_type assumes rcu_read_lock is held */
 static inline struct tlv_proc *ipeh_tlv_get_proc_by_type(
 		struct tlv_param_table *tlv_param_table, unsigned char type)
diff --git a/include/net/ipv6.h b/include/net/ipv6.h
index 07bafad..51517a1 100644
--- a/include/net/ipv6.h
+++ b/include/net/ipv6.h
@@ -14,6 +14,7 @@
 #include <linux/jhash.h>
 #include <linux/refcount.h>
 #include <linux/jump_label_ratelimit.h>
+#include <net/genetlink.h>
 #include <net/if_inet6.h>
 #include <net/ndisc.h>
 #include <net/flow.h>
diff --git a/include/uapi/linux/in6.h b/include/uapi/linux/in6.h
index 9f2273a..d5fe3d9 100644
--- a/include/uapi/linux/in6.h
+++ b/include/uapi/linux/in6.h
@@ -297,4 +297,10 @@ struct in6_flowlabel_req {
  * ...
  * MRT6_MAX
  */
+
+ /* NETLINK_GENERIC related info for IPv6 TLVs */
+
+#define IPV6_TLV_GENL_NAME		"ipv6-tlv"
+#define IPV6_TLV_GENL_VERSION		0x1
+
 #endif /* _UAPI_LINUX_IN6_H */
diff --git a/include/uapi/linux/ipeh.h b/include/uapi/linux/ipeh.h
index dbf0728..bac36a7 100644
--- a/include/uapi/linux/ipeh.h
+++ b/include/uapi/linux/ipeh.h
@@ -21,4 +21,33 @@ enum {
 	IPEH_TLV_PERM_MAX = IPEH_TLV_PERM_NO_CHECK
 };
 
+/* NETLINK_GENERIC related info for IP TLVs */
+
+enum {
+	IPEH_TLV_ATTR_UNSPEC,
+	IPEH_TLV_ATTR_TYPE,			/* u8, > 1 */
+	IPEH_TLV_ATTR_ORDER,			/* u16 */
+	IPEH_TLV_ATTR_ADMIN_PERM,		/* u8, perm value */
+	IPEH_TLV_ATTR_USER_PERM,		/* u8, perm value */
+	IPEH_TLV_ATTR_CLASS,			/* u8, 3 bit flags */
+	IPEH_TLV_ATTR_ALIGN_MULT,		/* u8, 1 to 16 */
+	IPEH_TLV_ATTR_ALIGN_OFF,		/* u8, 0 to 15 */
+	IPEH_TLV_ATTR_MIN_DATA_LEN,		/* u8 (option data length) */
+	IPEH_TLV_ATTR_MAX_DATA_LEN,		/* u8 (option data length) */
+	IPEH_TLV_ATTR_DATA_LEN_MULT,		/* u8, 1 to 16 */
+	IPEH_TLV_ATTR_DATA_LEN_OFF,		/* u8, 0 to 15 */
+
+	__IPEH_TLV_ATTR_MAX,
+};
+
+#define IPEH_TLV_ATTR_MAX              (__IPEH_TLV_ATTR_MAX - 1)
+
+enum {
+	IPEH_TLV_CMD_SET,
+	IPEH_TLV_CMD_UNSET,
+	IPEH_TLV_CMD_GET,
+
+	__IPEH_TLV_CMD_MAX,
+};
+
 #endif /* _UAPI_LINUX_IPEH_H */
diff --git a/net/ipv6/exthdrs_common.c b/net/ipv6/exthdrs_common.c
index 791f6e4..b44c6fd 100644
--- a/net/ipv6/exthdrs_common.c
+++ b/net/ipv6/exthdrs_common.c
@@ -454,6 +454,244 @@ int __ipeh_tlv_unset(struct tlv_param_table *tlv_param_table,
 }
 EXPORT_SYMBOL(__ipeh_tlv_unset);
 
+const struct nla_policy ipeh_tlv_nl_policy[IPEH_TLV_ATTR_MAX + 1] = {
+	[IPEH_TLV_ATTR_TYPE] =		{ .type = NLA_U8, },
+	[IPEH_TLV_ATTR_ORDER] =		{ .type = NLA_U16, },
+	[IPEH_TLV_ATTR_ADMIN_PERM] =	{ .type = NLA_U8, },
+	[IPEH_TLV_ATTR_USER_PERM] =	{ .type = NLA_U8, },
+	[IPEH_TLV_ATTR_CLASS] =		{ .type = NLA_U8, },
+	[IPEH_TLV_ATTR_ALIGN_MULT] =	{ .type = NLA_U8, },
+	[IPEH_TLV_ATTR_ALIGN_OFF] =	{ .type = NLA_U8, },
+	[IPEH_TLV_ATTR_MIN_DATA_LEN] =	{ .type = NLA_U8, },
+	[IPEH_TLV_ATTR_MAX_DATA_LEN] =	{ .type = NLA_U8, },
+	[IPEH_TLV_ATTR_DATA_LEN_OFF] =	{ .type = NLA_U8, },
+	[IPEH_TLV_ATTR_DATA_LEN_MULT] =	{ .type = NLA_U8, },
+};
+EXPORT_SYMBOL(ipeh_tlv_nl_policy);
+
+int ipeh_tlv_nl_cmd_set(struct tlv_param_table *tlv_param_table,
+			struct genl_family *tlv_nl_family,
+			struct sk_buff *skb, struct genl_info *info)
+{
+	struct tlv_params new_params;
+	struct tlv_proc *tproc;
+	unsigned char type;
+	unsigned int v;
+	int retv = -EINVAL;
+
+	if (!info->attrs[IPEH_TLV_ATTR_TYPE])
+		return -EINVAL;
+
+	type = nla_get_u8(info->attrs[IPEH_TLV_ATTR_TYPE]);
+	if (type < 2)
+		return -EINVAL;
+
+	rcu_read_lock();
+
+	/* Base new parameters on existing ones */
+	tproc = ipeh_tlv_get_proc_by_type(tlv_param_table, type);
+	new_params = tproc->params;
+
+	if (info->attrs[IPEH_TLV_ATTR_ORDER]) {
+		v = nla_get_u16(info->attrs[IPEH_TLV_ATTR_ORDER]);
+		new_params.t.preferred_order = v;
+	}
+
+	if (info->attrs[IPEH_TLV_ATTR_ADMIN_PERM]) {
+		v = nla_get_u8(info->attrs[IPEH_TLV_ATTR_ADMIN_PERM]);
+		if (v > IPEH_TLV_PERM_MAX)
+			goto out;
+		new_params.t.admin_perm = v;
+	}
+
+	if (info->attrs[IPEH_TLV_ATTR_USER_PERM]) {
+		v = nla_get_u8(info->attrs[IPEH_TLV_ATTR_USER_PERM]);
+		if (v > IPEH_TLV_PERM_MAX)
+			goto out;
+		new_params.t.user_perm = v;
+	}
+
+	if (info->attrs[IPEH_TLV_ATTR_CLASS]) {
+		v = nla_get_u8(info->attrs[IPEH_TLV_ATTR_CLASS]);
+		if (!v || (v & ~IPEH_TLV_CLASS_FLAG_MASK))
+			goto out;
+		new_params.t.class = v;
+	}
+
+	if (info->attrs[IPEH_TLV_ATTR_ALIGN_MULT]) {
+		v = nla_get_u8(info->attrs[IPEH_TLV_ATTR_ALIGN_MULT]);
+		if (v > 16 || v < 1)
+			goto out;
+		new_params.t.align_mult = v - 1;
+	}
+
+	if (info->attrs[IPEH_TLV_ATTR_ALIGN_OFF]) {
+		v = nla_get_u8(info->attrs[IPEH_TLV_ATTR_ALIGN_OFF]);
+		if (v > 15)
+			goto out;
+		new_params.t.align_off = v;
+	}
+
+	if (info->attrs[IPEH_TLV_ATTR_MAX_DATA_LEN])
+		new_params.t.max_data_len =
+		    nla_get_u8(info->attrs[IPEH_TLV_ATTR_MAX_DATA_LEN]);
+
+	if (info->attrs[IPEH_TLV_ATTR_MIN_DATA_LEN])
+		new_params.t.min_data_len =
+		    nla_get_u8(info->attrs[IPEH_TLV_ATTR_MIN_DATA_LEN]);
+
+	if (info->attrs[IPEH_TLV_ATTR_DATA_LEN_MULT]) {
+		v = nla_get_u8(info->attrs[IPEH_TLV_ATTR_DATA_LEN_MULT]);
+		if (v > 16 || v < 1)
+			goto out;
+		new_params.t.data_len_mult = v - 1;
+	}
+
+	if (info->attrs[IPEH_TLV_ATTR_DATA_LEN_OFF]) {
+		v = nla_get_u8(info->attrs[IPEH_TLV_ATTR_DATA_LEN_OFF]);
+		if (v > 15)
+			goto out;
+		new_params.t.data_len_off = v;
+	}
+
+	retv = ipeh_tlv_set_params(tlv_param_table, type, &new_params);
+
+out:
+	rcu_read_unlock();
+	return retv;
+}
+EXPORT_SYMBOL(ipeh_tlv_nl_cmd_set);
+
+int ipeh_tlv_nl_cmd_unset(struct tlv_param_table *tlv_param_table,
+			  struct genl_family *tlv_nl_family,
+			  struct sk_buff *skb, struct genl_info *info)
+{
+	unsigned char type;
+
+	if (!info->attrs[IPEH_TLV_ATTR_TYPE])
+		return -EINVAL;
+
+	type = nla_get_u8(info->attrs[IPEH_TLV_ATTR_TYPE]);
+	if (type < 2)
+		return -EINVAL;
+
+	return ipeh_tlv_unset_params(tlv_param_table, type);
+}
+EXPORT_SYMBOL(ipeh_tlv_nl_cmd_unset);
+
+static int tlv_fill_info(struct tlv_proc *tproc, unsigned char type,
+			 struct sk_buff *msg, bool admin)
+{
+	struct tlv_params *tp = &tproc->params;
+	int ret = 0;
+
+	if (nla_put_u8(msg, IPEH_TLV_ATTR_TYPE, type) ||
+	    nla_put_u16(msg, IPEH_TLV_ATTR_ORDER, tp->t.preferred_order) ||
+	    nla_put_u8(msg, IPEH_TLV_ATTR_USER_PERM, tp->t.user_perm) ||
+	    (admin && nla_put_u8(msg, IPEH_TLV_ATTR_ADMIN_PERM,
+				 tp->t.admin_perm)) ||
+	    nla_put_u8(msg, IPEH_TLV_ATTR_CLASS, tp->t.class) ||
+	    nla_put_u8(msg, IPEH_TLV_ATTR_ALIGN_MULT, tp->t.align_mult + 1) ||
+	    nla_put_u8(msg, IPEH_TLV_ATTR_ALIGN_OFF, tp->t.align_off) ||
+	    nla_put_u8(msg, IPEH_TLV_ATTR_MIN_DATA_LEN, tp->t.min_data_len) ||
+	    nla_put_u8(msg, IPEH_TLV_ATTR_MAX_DATA_LEN, tp->t.max_data_len) ||
+	    nla_put_u8(msg, IPEH_TLV_ATTR_DATA_LEN_MULT,
+		       tp->t.data_len_mult + 1) ||
+	    nla_put_u8(msg, IPEH_TLV_ATTR_DATA_LEN_OFF, tp->t.data_len_off))
+		ret = -1;
+
+	return ret;
+}
+
+static int tlv_dump_info(struct tlv_proc *tproc, unsigned char type,
+			 struct genl_family *tlv_nl_family, u32 portid,
+			 u32 seq, u32 flags, struct sk_buff *skb, u8 cmd,
+			 bool admin)
+{
+	void *hdr;
+
+	hdr = genlmsg_put(skb, portid, seq, tlv_nl_family, flags, cmd);
+	if (!hdr)
+		return -ENOMEM;
+
+	if (tlv_fill_info(tproc, type, skb, admin) < 0) {
+		genlmsg_cancel(skb, hdr);
+		return -EMSGSIZE;
+	}
+
+	genlmsg_end(skb, hdr);
+
+	return 0;
+}
+
+int ipeh_tlv_nl_cmd_get(struct tlv_param_table *tlv_param_table,
+			struct genl_family *tlv_nl_family,
+			struct sk_buff *skb, struct genl_info *info)
+{
+	struct tlv_proc *tproc;
+	struct sk_buff *msg;
+	unsigned char type;
+	int ret;
+
+	if (!info->attrs[IPEH_TLV_ATTR_TYPE])
+		return -EINVAL;
+
+	type = nla_get_u8(info->attrs[IPEH_TLV_ATTR_TYPE]);
+	if (type < 2)
+		return -EINVAL;
+
+	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
+	if (!msg)
+		return -ENOMEM;
+
+	rcu_read_lock();
+
+	tproc = ipeh_tlv_get_proc_by_type(tlv_param_table, type);
+	ret = tlv_dump_info(tproc, type, tlv_nl_family, info->snd_portid,
+			    info->snd_seq, 0, msg, info->genlhdr->cmd,
+			    netlink_capable(skb, CAP_NET_ADMIN));
+
+	rcu_read_unlock();
+
+	if (ret < 0) {
+		nlmsg_free(msg);
+		return ret;
+	}
+
+	return genlmsg_reply(msg, info);
+}
+EXPORT_SYMBOL(ipeh_tlv_nl_cmd_get);
+
+int ipeh_tlv_nl_dump(struct tlv_param_table *tlv_param_table,
+		     struct genl_family *tlv_nl_family,
+		     struct sk_buff *skb, struct netlink_callback *cb)
+{
+	struct tlv_proc *tproc;
+	int idx = 0, ret, i;
+
+	rcu_read_lock();
+
+	for (i = 2; i < 256; i++) {
+		if (idx++ < cb->args[0])
+			continue;
+
+		tproc = ipeh_tlv_get_proc_by_type(tlv_param_table, i);
+		ret = tlv_dump_info(tproc, i, tlv_nl_family,
+				    NETLINK_CB(cb->skb).portid,
+				    cb->nlh->nlmsg_seq, NLM_F_MULTI,
+				    skb, IPEH_TLV_CMD_GET,
+				    netlink_capable(cb->skb, CAP_NET_ADMIN));
+		if (ret)
+			break;
+	}
+
+	rcu_read_unlock();
+
+	cb->args[0] = idx;
+	return skb->len;
+}
+EXPORT_SYMBOL(ipeh_tlv_nl_dump);
+
 int ipeh_exthdrs_init(struct tlv_param_table *tlv_param_table,
 		      const struct tlv_proc_init *tlv_init_params,
 		      int num_init_params)
diff --git a/net/ipv6/exthdrs_options.c b/net/ipv6/exthdrs_options.c
index 3b50b58..c1889f6 100644
--- a/net/ipv6/exthdrs_options.c
+++ b/net/ipv6/exthdrs_options.c
@@ -6,6 +6,7 @@
 #include <linux/socket.h>
 #include <linux/types.h>
 #include <net/calipso.h>
+#include <net/genetlink.h>
 #include <net/ipv6.h>
 #include <net/ip6_route.h>
 #if IS_ENABLED(CONFIG_IPV6_MIP6)
@@ -253,13 +254,89 @@ static const struct tlv_proc_init tlv_ipv6_init_params[] __initconst = {
 struct tlv_param_table __rcu ipv6_tlv_param_table;
 EXPORT_SYMBOL(ipv6_tlv_param_table);
 
+static int ipv6_tlv_nl_cmd_set(struct sk_buff *skb, struct genl_info *info);
+static int ipv6_tlv_nl_cmd_unset(struct sk_buff *skb, struct genl_info *info);
+static int ipv6_tlv_nl_cmd_get(struct sk_buff *skb, struct genl_info *info);
+static int ipv6_tlv_nl_dump(struct sk_buff *skb, struct netlink_callback *cb);
+
+static const struct genl_ops ipv6_tlv_nl_ops[] = {
+{
+	.cmd = IPEH_TLV_CMD_SET,
+	.doit = ipv6_tlv_nl_cmd_set,
+	.flags = GENL_ADMIN_PERM,
+},
+{
+	.cmd = IPEH_TLV_CMD_UNSET,
+	.doit = ipv6_tlv_nl_cmd_unset,
+	.flags = GENL_ADMIN_PERM,
+},
+{
+	.cmd = IPEH_TLV_CMD_GET,
+	.doit = ipv6_tlv_nl_cmd_get,
+	.dumpit = ipv6_tlv_nl_dump,
+},
+};
+
+struct genl_family ipv6_tlv_nl_family __ro_after_init = {
+	.hdrsize	= 0,
+	.name		= IPV6_TLV_GENL_NAME,
+	.version	= IPV6_TLV_GENL_VERSION,
+	.maxattr	= IPEH_TLV_ATTR_MAX,
+	.policy		= ipeh_tlv_nl_policy,
+	.netnsok	= true,
+	.parallel_ops	= true,
+	.ops		= ipv6_tlv_nl_ops,
+	.n_ops		= ARRAY_SIZE(ipv6_tlv_nl_ops),
+	.module		= THIS_MODULE,
+};
+
+static int ipv6_tlv_nl_cmd_set(struct sk_buff *skb, struct genl_info *info)
+{
+	return ipeh_tlv_nl_cmd_set(&ipv6_tlv_param_table, &ipv6_tlv_nl_family,
+				   skb, info);
+}
+
+static int ipv6_tlv_nl_cmd_unset(struct sk_buff *skb, struct genl_info *info)
+{
+	return ipeh_tlv_nl_cmd_unset(&ipv6_tlv_param_table, &ipv6_tlv_nl_family,
+				     skb, info);
+}
+
+static int ipv6_tlv_nl_cmd_get(struct sk_buff *skb, struct genl_info *info)
+{
+	return ipeh_tlv_nl_cmd_get(&ipv6_tlv_param_table, &ipv6_tlv_nl_family,
+				   skb, info);
+}
+
+static int ipv6_tlv_nl_dump(struct sk_buff *skb, struct netlink_callback *cb)
+{
+	return ipeh_tlv_nl_dump(&ipv6_tlv_param_table, &ipv6_tlv_nl_family,
+				skb, cb);
+}
+
 int __init ipv6_exthdrs_options_init(void)
 {
-	return ipeh_exthdrs_init(&ipv6_tlv_param_table, tlv_ipv6_init_params,
-				 ARRAY_SIZE(tlv_ipv6_init_params));
+	int err;
+
+	err = genl_register_family(&ipv6_tlv_nl_family);
+	if (err)
+		goto genl_fail;
+
+	ipeh_exthdrs_init(&ipv6_tlv_param_table, tlv_ipv6_init_params,
+			  ARRAY_SIZE(tlv_ipv6_init_params));
+	if (err)
+		goto ipv6_fail;
+
+	return 0;
+
+ipv6_fail:
+	genl_unregister_family(&ipv6_tlv_nl_family);
+genl_fail:
+	return err;
 }
 
 void ipv6_exthdrs_options_exit(void)
 {
 	ipeh_exthdrs_fini(&ipv6_tlv_param_table);
+	genl_unregister_family(&ipv6_tlv_nl_family);
 }
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
