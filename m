Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C25332B3FDB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 10:35:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BA5E8713A;
	Mon, 16 Nov 2020 09:35:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hhCrTxmC5+mJ; Mon, 16 Nov 2020 09:35:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D836C87147;
	Mon, 16 Nov 2020 09:35:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F1C31BF981
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 09:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EB15220449
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 09:35:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LicccU8Sc7An for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 09:35:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by silver.osuosl.org (Postfix) with ESMTPS id AC45C20450
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 09:35:21 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id z21so24174160lfe.12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 01:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RcbO3/lWIjvlWcNYZu05m5zf0LbEgxCjEtnDLqiifRA=;
 b=Qs8RZt0v2t0cp7tKPg9Amk9trihavEMbblGJk916z4gTGEVir4aFJRMEaNeZdEkboJ
 bRVkiuTUxC/swzwXb6i0dP3BBfCU/ZPYVFiSCa+VDG2Ki6WrdY6k1W3OytvVjMDAxJcD
 p1XRLYja3UdbZMfM/VOaIr1MbnlrD9oHHPT8nh8HP7w5YfraTULjggaPUa0paktioWYQ
 1W2zomKKo5+5djtOwQFHQLA8cJOigSzgidwOlZlQlxsTxcJ1Brf/hDmVXdxab46cGztJ
 gKvM4xL+1lg3sIcJ2IYpuWPOEwZLQam7aXld60i+rdWz0Jyr59C7Oy+1umSvhzHA+UDz
 gowQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RcbO3/lWIjvlWcNYZu05m5zf0LbEgxCjEtnDLqiifRA=;
 b=kOOmla08oLqt7FcN0kmGCW4ZFk1S0zmQgX7ns4XJdVHV/hE032VjqU7MDgjWjKdU+M
 DUzdgbEZi/kVUsTLSuYLsROpeHgGI/1cUSXXmXNpQdd8Sw0gJfUEcGfFiacg/uZLBuor
 z5693gz+mde1NMPLhdS4xmajIWAVg5Z6Iue4k/acqF/OmZI3GslElxBs5+VYaZ3zvg6g
 pzUo8o0DKE/KNwj8pnHBqNppk+XzMo9/CUGaI/53HpxxwBxMjb8zOE1U7ND+tE6kOLk2
 dfnR5qurvm+TysiwSFtVjp62LAqJRQuS3BQhdVdojcgWIEybQdWvfQZIrbqIFx5iseJt
 qjig==
X-Gm-Message-State: AOAM531Z2+/uAsEq4C8/satlhQdy8/vnhLE0NbMETx13wwh9uqUw5b2r
 qQjLnTM5WIdVH0nYMKUE3X0aM3KiukePaQ==
X-Google-Smtp-Source: ABdhPJzD7HQSE7/yYyBUAO/dgvDkVrfSHyhaBleS0YPYrSNi6wj+CNL/GFKEU1yOE2YA0vWK0U/UJQ==
X-Received: by 2002:a05:6512:20cd:: with SMTP id
 u13mr5139352lfr.373.1605519319990; 
 Mon, 16 Nov 2020 01:35:19 -0800 (PST)
Received: from localhost.localdomain (87-205-71-93.adsl.inetia.pl.
 [87.205.71.93])
 by smtp.gmail.com with ESMTPSA id t26sm2667986lfp.296.2020.11.16.01.35.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 01:35:19 -0800 (PST)
From: alardam@gmail.com
X-Google-Original-From: marekx.majtyka@intel.com
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 andrii.nakryiko@gmail.com, kuba@kernel.org, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, davem@davemloft.net,
 john.fastabend@gmail.com, hawk@kernel.org, toke@redhat.com
Date: Mon, 16 Nov 2020 10:34:49 +0100
Message-Id: <20201116093452.7541-6-marekx.majtyka@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201116093452.7541-1-marekx.majtyka@intel.com>
References: <20201116093452.7541-1-marekx.majtyka@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 5/8] libbpf: extend netlink attribute API
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
Cc: maciejromanfijalkowski@gmail.com, Marek Majtyka <marekx.majtyka@intel.com>,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marek Majtyka <marekx.majtyka@intel.com>

Extend netlink attribute API to put a different attribute into
the netlink message (nest{start, end}, string, u32, flag, etc).
Add new API to parse attribute array.

Signed-off-by: Marek Majtyka <marekx.majtyka@intel.com>
---
 tools/lib/bpf/nlattr.c | 105 +++++++++++++++++++++++++++++++++++++++++
 tools/lib/bpf/nlattr.h |  22 +++++++++
 2 files changed, 127 insertions(+)

diff --git a/tools/lib/bpf/nlattr.c b/tools/lib/bpf/nlattr.c
index b607fa9852b1..b37b4d266832 100644
--- a/tools/lib/bpf/nlattr.c
+++ b/tools/lib/bpf/nlattr.c
@@ -83,6 +83,52 @@ static inline int nlmsg_len(const struct nlmsghdr *nlh)
 	return nlh->nlmsg_len - NLMSG_HDRLEN;
 }
 
+/**
+ * Create attribute index table based on a stream of attributes.
+ * @arg tb		Index array to be filled (indexed from 0 to elem-1).
+ * @arg elem		Number of attributes in the table.
+ * @arg maxtype		Maximum attribute type expected and accepted.
+ * @arg head		Head of attribute stream.
+ * @arg policy		Attribute validation policy.
+ *
+ * Iterates over the stream of attributes and stores a pointer to each
+ * attribute in the index array using incremented counter as index to
+ * the array. Attribute with a index greater than or equal to the elem value
+ * specified will be ignored and function terminates with error. If a policy
+ * is not NULL, the attribute will be validated using the specified policy.
+ *
+ * @see nla_validate
+ * @return 0 on success or a negative error code.
+ */
+int libbpf_nla_parse_table(struct nlattr *tb[], int elem, struct nlattr *head,
+			   int maxtype, struct libbpf_nla_policy *policy)
+{
+	struct nlattr *nla;
+	int rem, err = 0;
+	int idx = 0;
+
+	memset(tb, 0, sizeof(struct nlattr *) * elem);
+
+	libbpf_nla_for_each_attr(nla, libbpf_nla_data(head), libbpf_nla_len(head), rem) {
+		if (idx >= elem) {
+			err = -EMSGSIZE;
+			goto errout;
+		}
+
+		if (policy) {
+			err = validate_nla(nla, maxtype, policy);
+			if (err < 0)
+				goto errout;
+		}
+
+		tb[idx] = nla;
+		idx++;
+	}
+
+errout:
+	return err;
+}
+
 /**
  * Create attribute index based on a stream of attributes.
  * @arg tb		Index array to be filled (maxtype+1 elements).
@@ -193,3 +239,62 @@ int libbpf_nla_dump_errormsg(struct nlmsghdr *nlh)
 
 	return 0;
 }
+
+struct nlattr *libbpf_nla_next(struct nlattr *current)
+{
+	return current + NLA_ALIGN(current->nla_len) / sizeof(struct nlattr);
+}
+
+struct nlattr *libbpf_nla_nest_start(struct nlattr *start, int attrtype)
+{
+	start->nla_len = NLA_HDRLEN;
+	start->nla_type = attrtype | NLA_F_NESTED;
+	return start + 1;
+}
+
+int libbpf_nla_nest_end(struct nlattr *start, struct nlattr *next)
+{
+	start->nla_len += (unsigned char *)next  - (unsigned char *)start - NLA_HDRLEN;
+	return start->nla_len;
+}
+
+struct nlattr *libbpf_nla_put_u32(struct nlattr *start, int attrtype, uint32_t val)
+{
+	struct nlattr *next = start + 1;
+
+	start->nla_type = attrtype;
+	start->nla_len = NLA_HDRLEN + NLA_ALIGN(sizeof(uint32_t));
+	memcpy((char *)next, &val, sizeof(uint32_t));
+
+	return next + 1;
+}
+
+struct nlattr *libbpf_nla_put_str(struct nlattr *start, int attrtype,
+				  const char *string, int max_len)
+{
+	struct nlattr *next = start + 1;
+	size_t len = max_len > 0 ? strnlen(string, max_len - 1) : 0;
+	char *ptr = ((char *)next) + len;
+
+	start->nla_type = attrtype;
+	start->nla_len = NLA_HDRLEN + NLA_ALIGN(len + 1);
+	strncpy((char *)next, string, len);
+
+	for (size_t idx = len; idx < start->nla_len; ++idx, ptr++)
+		*ptr = '\0';
+
+	return libbpf_nla_next(start);
+}
+
+struct nlattr *libbpf_nla_put_flag(struct nlattr *start, int attrtype)
+{
+	start->nla_type = attrtype;
+	start->nla_len = NLA_HDRLEN;
+
+	return start + 1;
+}
+
+int libbpf_nla_attrs_length(struct nlattr *start, struct nlattr *next)
+{
+	return ((unsigned char *)next  - (unsigned char *)start);
+}
diff --git a/tools/lib/bpf/nlattr.h b/tools/lib/bpf/nlattr.h
index 6cc3ac91690f..93e18accfce5 100644
--- a/tools/lib/bpf/nlattr.h
+++ b/tools/lib/bpf/nlattr.h
@@ -76,6 +76,11 @@ static inline uint8_t libbpf_nla_getattr_u8(const struct nlattr *nla)
 	return *(uint8_t *)libbpf_nla_data(nla);
 }
 
+static inline uint16_t libbpf_nla_getattr_u16(const struct nlattr *nla)
+{
+	return *(uint16_t *)libbpf_nla_data(nla);
+}
+
 static inline uint32_t libbpf_nla_getattr_u32(const struct nlattr *nla)
 {
 	return *(uint32_t *)libbpf_nla_data(nla);
@@ -100,7 +105,24 @@ int libbpf_nla_parse(struct nlattr *tb[], int maxtype, struct nlattr *head,
 int libbpf_nla_parse_nested(struct nlattr *tb[], int maxtype,
 			    struct nlattr *nla,
 			    struct libbpf_nla_policy *policy);
+int libbpf_nla_parse_table(struct nlattr *tb[], int elem, struct nlattr *head,
+			   int type, struct libbpf_nla_policy *policy);
 
 int libbpf_nla_dump_errormsg(struct nlmsghdr *nlh);
 
+struct nlattr *libbpf_nla_next(struct nlattr *current);
+
+struct nlattr *libbpf_nla_nest_start(struct nlattr *start, int attrtype);
+
+int libbpf_nla_nest_end(struct nlattr *start, struct nlattr *next);
+
+struct nlattr *libbpf_nla_put_u32(struct nlattr *start, int attrtype, uint32_t val);
+
+struct nlattr *libbpf_nla_put_str(struct nlattr *start, int attrtype,
+				  const char *string, int max_len);
+
+struct nlattr *libbpf_nla_put_flag(struct nlattr *start, int attrtype);
+
+int libbpf_nla_attrs_length(struct nlattr *start, struct nlattr *next);
+
 #endif /* __LIBBPF_NLATTR_H */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
