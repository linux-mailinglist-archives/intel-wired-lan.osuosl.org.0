Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BFC9510F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2019 00:45:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 923B4844C9;
	Mon, 19 Aug 2019 22:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GzymL-4kgmgX; Mon, 19 Aug 2019 22:45:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 00C5F8459B;
	Mon, 19 Aug 2019 22:45:01 +0000 (UTC)
X-Original-To: Intel-wired-lan@lists.osuosl.org
Delivered-To: Intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 771DF1BF2AB
 for <Intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 22:44:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 740B38642E
 for <Intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 22:44:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kBMd0wONmJy6 for <Intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2019 22:44:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9B7A486ACB
 for <Intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 22:44:57 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id w26so2044841pfq.12
 for <Intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 15:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=herbertland-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tY0XpZcG9OvKHWqqqRnl5/M9RfTjj9gWiVS3eQ4MmIs=;
 b=S8Z587l89XS9jG3XJdHDRdQnqy2//lb3IkVUSctudu1fCJUJHh7JplMy+sB8bU4j9E
 qDuMu3on2H1gVIDt5sme1br9dmV5TQsSjRbdYHZsshr0/MfQ7oD5NyqFdR0eX8Oio/fM
 FNyRgowWHxfxSr9IDZzcxe+u+8vaHySlcBeE3g8FWzKI25OadAPIe5htbsRsJP0UVXpl
 eGci0iuJmDWr/vsLCLfIH5/dL9NtQRng62ARFUAez3lXSu6VO+kVpjVd7XvpJ+/gAJIX
 h5mvIlTNTeiRWBVCfbYFgvVjUUyuSmq1Ci598jOF+xXnV/W2uh+jtAEM43EUR85yFdcH
 o9Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tY0XpZcG9OvKHWqqqRnl5/M9RfTjj9gWiVS3eQ4MmIs=;
 b=gd7Llco86YO/u6ZA7p3x6oHpyxEmf+S1Jf86DkEI3vJvyMfkYaOWJpKVQeMyby+ymt
 VhrXRQItLBKwQO/xlEuZPhnpZlFZvPZ/aaDrp0ouwXCDpSyblarplikmJqD30zBgaUDV
 BCp/b2/o6Oe9qZoC1tvgmCWvn6dm5xd0uyDTCsHCV9fhwJ5EnLvQkTG72FGmE7x2AzqS
 bcOEH1xRJzcrChq0S4IfOHThw6d2Es2wCPgAUVlZy7nVmFuGQ80DYXMOejrZ4MeKxjY1
 7VA28tgwv0Ji9ObzTKIa8JQ1ulQggRQ+JWbb+53qMdqt5IYHPqu5WgyH9a54P12NB/Fl
 X40g==
X-Gm-Message-State: APjAAAU6LylOcz/qZmT3ObsZnzVNp3eHXXduqf2JCilJAD1dRn+lww8m
 rVzOX+RWU+mE/GugtQrQbBucDwhS8CU=
X-Google-Smtp-Source: APXvYqwp61PCTUu1So8cSoKp+MGiqolYJVTY6hqB2zJc/yh+UklnuspJdz4QVqATRsaXSNvspfJRDw==
X-Received: by 2002:a65:5382:: with SMTP id x2mr22139194pgq.422.1566254696597; 
 Mon, 19 Aug 2019 15:44:56 -0700 (PDT)
Received: from localhost.localdomain (c-73-202-182-113.hsd1.ca.comcast.net.
 [73.202.182.113])
 by smtp.gmail.com with ESMTPSA id x10sm14676947pjo.4.2019.08.19.15.44.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 15:44:56 -0700 (PDT)
From: Tom Herbert <tom@herbertland.com>
To: Intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Aug 2019 15:44:24 -0700
Message-Id: <1566254665-5200-7-git-send-email-tom@herbertland.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566254665-5200-1-git-send-email-tom@herbertland.com>
References: <1566254665-5200-1-git-send-email-tom@herbertland.com>
Subject: [Intel-wired-lan] [PATCH v3 net-next 6/7] ip6tlvs: Add netlink
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
index de6d9d0..8474a43 100644
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
