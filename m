Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DD48AC48
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2019 02:54:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 19B472266F;
	Tue, 13 Aug 2019 00:54:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RFvURnQW4Cl3; Tue, 13 Aug 2019 00:54:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 619DA22654;
	Tue, 13 Aug 2019 00:54:51 +0000 (UTC)
X-Original-To: Intel-wired-lan@lists.osuosl.org
Delivered-To: Intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AECB91BF989
 for <Intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 00:54:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AA7CB84465
 for <Intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 00:54:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kISn1OeqWiQ4 for <Intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2019 00:54:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6333E842E9
 for <Intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 00:54:48 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id m9so48380209pls.8
 for <Intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 17:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=herbertland-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/0xar3guqiUxzkMFpxzEUC/GRPHvu0hLKBf9XEXt4AU=;
 b=iqoNoV868XAO9CDNfl9K9oMDTrIPlj2FFLVxfwcTJbdN0eRbZg1UBMUo/fQmD15nIf
 sjsMDFDpmxcUnaI5j7kkLtNlK+Oh4McQQp7gaLPPQ3IaJoWHvfy93j2xuWUerOUlsfkP
 l/KGV7qVL6yJsqrz8tG8kRfJBrPl+NA+2gwSpLqYdXhGo4PT/ZPjBsIOdS3YM+yCtetB
 AKCVaZ4vm1TtrskxO5QXOehoQKhkMyKewF37OYyMpKXfS4JhlbSQiu0GZf/woEOm44h/
 2t6UDRTQV2YUbPrNACAYJ3hWmrj+237bPSHyHaXZiV6Pl7IdPYpHbic1u/mYcVzUPyVj
 v/Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/0xar3guqiUxzkMFpxzEUC/GRPHvu0hLKBf9XEXt4AU=;
 b=kLzgDY5L8tlOV9QJ6/atEk5Pg0kMIvwKhdAwXzZgkwhGtBVkcL93Aix4ZU7ILN4pDb
 4YWv+4q0V4jBHDsxuNG2tclMhDy/bRAXkmZPu0zQ6JY4KdzRSPp7lYKEpNme76KJvKSw
 DxvciIZ0x6vdA3q+5l1R0xB+ekJ8RYxWJ+o7uPOLo3KfodssZPaoVH67L1x8I0ZzLrf4
 xIe/3H2RK+3PNYj3wC2CflP8Lm9RnuX0HytA7hOd5SkcVHavi403PkNCY/RtTbwkj0hx
 0ls9C5p/5cRscHCReYa9PXuEk3trC7roeKUdlUMDiHTLqzPhLq4feZ7XRPayHs5Aemx7
 JsaA==
X-Gm-Message-State: APjAAAXqsNUiRkKHFlUdlFJXBkC/J5fFYFdVaDEl3f0J3bo4DLcd7htN
 VTY9Q8ziJ2yqPYwgL8E46zlaOCt+V2w=
X-Google-Smtp-Source: APXvYqzm9f/HzpoDYKuLmzRFtA8QqeccchRZrDJvyVttzLwTIWlJ/uSjzGQpzAX/ej508/CkkeQiZQ==
X-Received: by 2002:a17:902:d90a:: with SMTP id
 c10mr34315786plz.208.1565657288805; 
 Mon, 12 Aug 2019 17:48:08 -0700 (PDT)
Received: from localhost.localdomain (c-73-202-182-113.hsd1.ca.comcast.net.
 [73.202.182.113])
 by smtp.gmail.com with ESMTPSA id 14sm105671426pfy.40.2019.08.12.17.48.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 12 Aug 2019 17:48:08 -0700 (PDT)
From: Tom Herbert <tom@herbertland.com>
X-Google-Original-From: Tom Herbert <tom@quantonium.net>
To: Intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Aug 2019 17:47:38 -0700
Message-Id: <1565657261-15979-5-git-send-email-tom@quantonium.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565657261-15979-1-git-send-email-tom@quantonium.net>
References: <1565657261-15979-1-git-send-email-tom@quantonium.net>
Subject: [Intel-wired-lan] [PATCH net-next 4/7] ip6tlvs: Registration of TLV
 handlers and parameters
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
Cc: Tom Herbert <tom@quantonium.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Create a single TLV parameter table that holds meta information for IPv6
Hop-by-Hop and Destination TLVs. The data structure is composed of a 256
element array of u8's (one entry for each TLV type to allow O(1)
lookup). Each entry provides an offset into an array of TLV proc data
structures which follows the array of u8s. The TLV proc data structure
contains parameters and handler functions for receiving and transmitting
TLVs. The zeroth element in the TLV proc array provides default
parameters for TLVs.

A class attribute indicates the type of extension header in which the
TLV may be used (e.g. Hop-by-Hop options, Destination options, or
Destination options before the routing header).

Functions are defined to manipulate entries in the TLV parameter table.

* tlv_{set|unset}_proc set a TLV proc entry (ops and parameters)
* tlv_{set|unset}_params set parameters only

Receive TLV lookup and processing is modified to be a lookup in the TLV
parameter table. An init table containing parameters for TLVs supported
by the kernel is used to initialize the TLV table.

Signed-off-by: Tom Herbert <tom@quantonium.net>
---
 include/net/ipeh.h         | 107 ++++++++++++++++--
 include/net/ipv6.h         |   3 +
 include/uapi/linux/ipeh.h  |  16 +++
 net/ipv6/exthdrs.c         |  14 ++-
 net/ipv6/exthdrs_common.c  | 271 +++++++++++++++++++++++++++++++++++++++++----
 net/ipv6/exthdrs_options.c |  63 +++++++----
 6 files changed, 421 insertions(+), 53 deletions(-)
 create mode 100644 include/uapi/linux/ipeh.h

diff --git a/include/net/ipeh.h b/include/net/ipeh.h
index 8f97b4d..816fe36 100644
--- a/include/net/ipeh.h
+++ b/include/net/ipeh.h
@@ -9,13 +9,105 @@
  *     and false, if it failed.
  *     It MUST NOT touch skb->h.
  */
-struct tlvtype_proc {
-	int	type;
-	bool	(*func)(struct sk_buff *skb, int offset);
+struct tlv_ops {
+	bool	(*func)(unsigned int class, struct sk_buff *skb, int offset);
 };
 
-extern const struct tlvtype_proc tlvprocdestopt_lst[];
-extern const struct tlvtype_proc tlvprochopopt_lst[];
+struct tlv_rx_params {
+	unsigned char class : 4;
+};
+
+struct tlv_tx_params {
+};
+
+struct tlv_params {
+	struct tlv_rx_params r;
+	struct tlv_tx_params t;
+};
+
+struct tlv_proc {
+	struct tlv_ops ops;
+	struct tlv_params params;
+};
+
+struct tlv_type {
+	struct tlv_proc proc;
+};
+
+struct tlv_proc_init {
+	int type;
+	struct tlv_proc proc;
+};
+
+struct tlv_param_table_data {
+	unsigned char entries[256];
+	unsigned char count;
+	struct rcu_head rcu;
+	struct tlv_type types[0];
+};
+
+struct tlv_param_table {
+	struct tlv_param_table_data __rcu *data;
+};
+
+extern struct tlv_param_table ipv6_tlv_param_table;
+
+int __ipeh_tlv_set(struct tlv_param_table *tlv_param_table,
+		   unsigned char type, const struct tlv_params *params,
+		   const struct tlv_ops *ops);
+
+static inline int ipeh_tlv_set_params(struct tlv_param_table *tlv_param_table,
+				      unsigned char type,
+				      const struct tlv_params *params)
+{
+	return __ipeh_tlv_set(tlv_param_table, type, params, NULL);
+}
+
+static inline int ipeh_tlv_set_proc(struct tlv_param_table *tlv_param_table,
+			       unsigned char type,
+			       const struct tlv_proc *proc)
+{
+	return __ipeh_tlv_set(tlv_param_table, type,
+			      &proc->params, &proc->ops);
+}
+
+int __ipeh_tlv_unset(struct tlv_param_table *tlv_param_table,
+		     unsigned char type, bool params_only);
+
+static inline int ipeh_tlv_unset_params(struct tlv_param_table *tlv_param_table,
+					unsigned char type)
+{
+	return __ipeh_tlv_unset(tlv_param_table, type, true);
+}
+
+static inline int ipeh_tlv_unset_proc(struct tlv_param_table *tlv_param_table,
+				      unsigned char type)
+{
+	return __ipeh_tlv_unset(tlv_param_table, type, false);
+}
+
+/* ipeh_tlv_get_proc_by_type assumes rcu_read_lock is held */
+static inline struct tlv_proc *ipeh_tlv_get_proc_by_type(
+		struct tlv_param_table *tlv_param_table, unsigned char type)
+{
+	struct tlv_param_table_data *tpt =
+				rcu_dereference(tlv_param_table->data);
+
+	return &tpt->types[tpt->entries[type]].proc;
+}
+
+/* ipeh_tlv_get_proc assumes rcu_read_lock is held */
+static inline struct tlv_proc *ipeh_tlv_get_proc(
+		struct tlv_param_table *tlv_param_table,
+		const __u8 *tlv)
+{
+	return ipeh_tlv_get_proc_by_type(tlv_param_table, tlv[0]);
+}
+
+int ipeh_exthdrs_init(struct tlv_param_table *tlv_param_table,
+		      const struct tlv_proc_init *init_params,
+		      int num_init_params);
+void ipeh_exthdrs_fini(struct tlv_param_table *tlv_param_table);
 
 struct ipv6_txoptions *ipeh_dup_options(struct sock *sk,
 					struct ipv6_txoptions *opt);
@@ -46,8 +138,9 @@ enum ipeh_parse_errors {
 #define IPEH_TLV_PAD1	0
 #define IPEH_TLV_PADN	1
 
-bool ipeh_parse_tlv(const struct tlvtype_proc *procs, struct sk_buff *skb,
-		    int max_count, int off, int len,
+bool ipeh_parse_tlv(unsigned int class,
+		    struct tlv_param_table *tlv_param_table,
+		    struct sk_buff *skb, int max_count, int off, int len,
 		    bool (*parse_error)(struct sk_buff *skb,
 					int off, enum ipeh_parse_errors error));
 
diff --git a/include/net/ipv6.h b/include/net/ipv6.h
index 1c6878b..07bafad 100644
--- a/include/net/ipv6.h
+++ b/include/net/ipv6.h
@@ -429,6 +429,9 @@ int ip6_ra_control(struct sock *sk, int sel);
 
 int ipv6_parse_hopopts(struct sk_buff *skb);
 
+int ipv6_exthdrs_options_init(void);
+void ipv6_exthdrs_options_exit(void);
+
 bool ipv6_opt_accepted(const struct sock *sk, const struct sk_buff *skb,
 		       const struct inet6_skb_parm *opt);
 struct ipv6_txoptions *ipv6_update_options(struct sock *sk,
diff --git a/include/uapi/linux/ipeh.h b/include/uapi/linux/ipeh.h
new file mode 100644
index 0000000..c4302b7
--- /dev/null
+++ b/include/uapi/linux/ipeh.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+/* ipeh.h - IP extension header TLV management */
+
+#ifndef _UAPI_LINUX_IPEH_H
+#define _UAPI_LINUX_IPEH_H
+
+/* Flags for EH type that can use a TLV option */
+#define IPEH_TLV_CLASS_FLAG_HOPOPT	BIT(0)
+#define IPEH_TLV_CLASS_FLAG_RTRDSTOPT	BIT(1)
+#define IPEH_TLV_CLASS_FLAG_DSTOPT	BIT(2)
+
+#define IPEH_TLV_CLASS_FLAG_MASK (IPEH_TLV_CLASS_FLAG_HOPOPT |		\
+				  IPEH_TLV_CLASS_FLAG_RTRDSTOPT |	\
+				  IPEH_TLV_CLASS_FLAG_DSTOPT)
+
+#endif /* _UAPI_LINUX_IPEH_H */
diff --git a/net/ipv6/exthdrs.c b/net/ipv6/exthdrs.c
index 939d27c..0847d49 100644
--- a/net/ipv6/exthdrs.c
+++ b/net/ipv6/exthdrs.c
@@ -47,6 +47,7 @@
 #ifdef CONFIG_IPV6_SEG6_HMAC
 #include <net/seg6_hmac.h>
 #endif
+#include <uapi/linux/ipeh.h>
 
 #include <linux/uaccess.h>
 
@@ -131,7 +132,8 @@ static int ipv6_destopt_rcv(struct sk_buff *skb)
 	dstbuf = opt->dst1;
 #endif
 
-	if (ipeh_parse_tlv(tlvprocdestopt_lst, skb,
+	if (ipeh_parse_tlv(IPEH_TLV_CLASS_FLAG_DSTOPT,
+			   &ipv6_tlv_param_table, skb,
 			   init_net.ipv6.sysctl.max_dst_opts_cnt,
 			   2, extlen - 2, ipv6_parse_error)) {
 		skb->transport_header += extlen;
@@ -514,8 +516,13 @@ int __init ipv6_exthdrs_init(void)
 	if (ret)
 		goto out_destopt;
 
+	ret = ipv6_exthdrs_options_init();
+	if (ret)
+		goto out_nodata;
 out:
 	return ret;
+out_nodata:
+	inet6_del_protocol(&nodata_protocol, IPPROTO_NONE);
 out_destopt:
 	inet6_del_protocol(&destopt_protocol, IPPROTO_DSTOPTS);
 out_rthdr:
@@ -525,6 +532,7 @@ int __init ipv6_exthdrs_init(void)
 
 void ipv6_exthdrs_exit(void)
 {
+	ipv6_exthdrs_options_exit();
 	inet6_del_protocol(&nodata_protocol, IPPROTO_NONE);
 	inet6_del_protocol(&destopt_protocol, IPPROTO_DSTOPTS);
 	inet6_del_protocol(&rthdr_protocol, IPPROTO_ROUTING);
@@ -555,8 +563,8 @@ int ipv6_parse_hopopts(struct sk_buff *skb)
 		goto fail_and_free;
 
 	opt->flags |= IP6SKB_HOPBYHOP;
-	if (ipeh_parse_tlv(tlvprochopopt_lst, skb,
-			   init_net.ipv6.sysctl.max_hbh_opts_cnt,
+	if (ipeh_parse_tlv(IPEH_TLV_CLASS_FLAG_HOPOPT, &ipv6_tlv_param_table,
+			   skb, init_net.ipv6.sysctl.max_hbh_opts_cnt,
 			   2, extlen - 2, ipv6_parse_error)) {
 		skb->transport_header += extlen;
 		opt = IP6CB(skb);
diff --git a/net/ipv6/exthdrs_common.c b/net/ipv6/exthdrs_common.c
index 99a0911..cc8db9e 100644
--- a/net/ipv6/exthdrs_common.c
+++ b/net/ipv6/exthdrs_common.c
@@ -150,13 +150,14 @@ EXPORT_SYMBOL_GPL(ipeh_fixup_options);
  *   - off is offset from skb_transport_header where first TLV is
  *   - len is length of TLV block
  */
-bool ipeh_parse_tlv(const struct tlvtype_proc *procs, struct sk_buff *skb,
-		    int max_count, int off, int len,
+bool ipeh_parse_tlv(unsigned int class,
+		    struct tlv_param_table *tlv_param_table,
+		    struct sk_buff *skb, int max_count, int off, int len,
 		    bool (*parse_error)(struct sk_buff *skb,
 					int off, enum ipeh_parse_errors error))
 {
 	const unsigned char *nh = skb_network_header(skb);
-	const struct tlvtype_proc *curr;
+	const struct tlv_proc *curr;
 	bool disallow_unknowns = false;
 	int tlv_count = 0;
 	int padlen = 0;
@@ -168,8 +169,10 @@ bool ipeh_parse_tlv(const struct tlvtype_proc *procs, struct sk_buff *skb,
 
 	if (skb_transport_offset(skb) + off + len > skb_headlen(skb)) {
 		if (!parse_error(skb, skb_transport_offset(skb),
-				 IPEH_PARSE_ERR_EH_TOOBIG))
-			goto bad;
+				 IPEH_PARSE_ERR_EH_TOOBIG)) {
+			kfree_skb(skb);
+			return false;
+		}
 
 		len = skb_headlen(skb) - skb_transport_offset(skb) - off;
 	}
@@ -177,6 +180,8 @@ bool ipeh_parse_tlv(const struct tlvtype_proc *procs, struct sk_buff *skb,
 	/* ops function based offset on network header */
 	off += skb_network_header_len(skb);
 
+	rcu_read_lock();
+
 	while (len > 0) {
 		int optlen = nh[off + 1] + 2;
 		int i;
@@ -221,26 +226,22 @@ bool ipeh_parse_tlv(const struct tlvtype_proc *procs, struct sk_buff *skb,
 
 			tlv_count++;
 			if (tlv_count > max_count &&
-			    parse_error(skb, off, IPEH_PARSE_ERR_OPT_TOOMANY))
+			    !parse_error(skb, off, IPEH_PARSE_ERR_OPT_TOOMANY))
 				goto bad;
 
-			for (curr = procs; curr->type >= 0; curr++) {
-				if (curr->type == nh[off]) {
-					/* type specific length/alignment
-					 * checks will be performed in the
-					 * func().
-					 */
-					if (curr->func(skb, off) == false)
-						return false;
-					break;
-				}
-			}
-			if (curr->type < 0 &&
-			    !parse_error(skb, off,
+			curr = ipeh_tlv_get_proc(tlv_param_table, &nh[off]);
+			if ((curr->params.r.class & class) && curr->ops.func) {
+				/* Handler will apply additional checks to
+				 * the TLV
+				 */
+				if (!curr->ops.func(class, skb, off))
+					return false;
+			} else if (!parse_error(skb, off,
 					 disallow_unknowns ?
 						IPEH_PARSE_ERR_OPT_UNK_DISALW :
-						IPEH_PARSE_ERR_OPT_UNK))
+						IPEH_PARSE_ERR_OPT_UNK)) {
 				goto bad;
+			}
 
 			padlen = 0;
 			break;
@@ -249,10 +250,238 @@ bool ipeh_parse_tlv(const struct tlvtype_proc *procs, struct sk_buff *skb,
 		len -= optlen;
 	}
 
-	if (len == 0)
+	if (len == 0) {
+		rcu_read_unlock();
 		return true;
+	}
 bad:
+	rcu_read_unlock();
 	kfree_skb(skb);
 	return false;
 }
 EXPORT_SYMBOL(ipeh_parse_tlv);
+
+/* TLV parameter table functions and structures */
+
+/* Default (unset) values for TLV parameters */
+static const struct tlv_proc tlv_default_proc = {
+};
+
+static DEFINE_MUTEX(tlv_mutex);
+
+static size_t tlv_param_table_size(unsigned char count)
+{
+	return sizeof(struct tlv_param_table_data) +
+	    (count * sizeof(struct tlv_type));
+}
+
+static void tlv_param_table_release(struct rcu_head *rcu)
+{
+	struct tlv_param_table_data *tpt =
+	    container_of(rcu, struct tlv_param_table_data, rcu);
+
+	kvfree(tpt);
+}
+
+/* mutex held */
+static int __tlv_set_one(struct tlv_param_table *tlv_param_table,
+			 unsigned char type, const struct tlv_params *params,
+			 const struct tlv_ops *ops)
+{
+	struct tlv_param_table_data *tpt, *told;
+	struct tlv_type *ttype;
+
+	told = rcu_dereference_protected(tlv_param_table->data,
+					 lockdep_is_held(&tlv_mutex));
+
+	/* Create new TLV table. If there is no exsiting entry then we are
+	 * adding a new one to the table, else we're modifying an entry.
+	 */
+	tpt = kvmalloc(tlv_param_table_size(told->count + !told->entries[type]),
+		       GFP_KERNEL);
+	if (!tpt)
+		return -ENOMEM;
+
+	memcpy(tpt, told, tlv_param_table_size(told->count));
+
+	if (!told->entries[type]) {
+		memset(&tpt->types[told->count], 0, sizeof(struct tlv_type));
+		tpt->entries[type] = told->count;
+		tpt->count = told->count + 1;
+	}
+
+	ttype = &tpt->types[tpt->entries[type]];
+
+	ttype->proc.params = *params;
+	ttype->proc.ops = ops ? *ops : tlv_default_proc.ops;
+
+	rcu_assign_pointer(tlv_param_table->data, tpt);
+	call_rcu(&told->rcu, tlv_param_table_release);
+
+	return 0;
+}
+
+int __ipeh_tlv_set(struct tlv_param_table *tlv_param_table, unsigned char type,
+		   const struct tlv_params *params, const struct tlv_ops *ops)
+{
+	int retv;
+
+	if (type < 2)
+		return -EINVAL;
+
+	mutex_lock(&tlv_mutex);
+	retv = __tlv_set_one(tlv_param_table, type, params, ops);
+	mutex_unlock(&tlv_mutex);
+
+	return retv;
+}
+EXPORT_SYMBOL(__ipeh_tlv_set);
+
+/* mutex held */
+static int __tlv_unset_one(struct tlv_param_table *tlv_param_table,
+			   unsigned char type)
+{
+	struct tlv_param_table_data *tpt, *told;
+	unsigned int i, pos;
+
+	told = rcu_dereference_protected(tlv_param_table->data,
+					 lockdep_is_held(&tlv_mutex));
+
+	if (!told->entries[type])
+		return 0;
+
+	tpt = kvmalloc(tlv_param_table_size(told->count - 1),
+		       GFP_KERNEL);
+	if (!tpt)
+		return -ENOMEM;
+
+	pos = told->entries[type];
+
+	memcpy(tpt->types, told->types, pos * sizeof(struct tlv_type));
+	memcpy(&tpt->types[pos], &told->types[pos + 1],
+	       (told->count - pos - 1) * sizeof(struct tlv_type));
+
+	for (i = 0; i < 256; i++) {
+		if (told->entries[i] > pos)
+			tpt->entries[i] = told->entries[i] - 1;
+		else
+			tpt->entries[i] = told->entries[i];
+	}
+
+	/* Clear entry for type being unset (point to default params) */
+	tpt->entries[type] = 0;
+
+	tpt->count = told->count - 1;
+
+	rcu_assign_pointer(tlv_param_table->data, tpt);
+	call_rcu(&told->rcu, tlv_param_table_release);
+
+	return 0;
+}
+
+/* tlv_internal_proc_type is used to check it the TLV proc was set
+ * internally. This is deduced by checking if any operations are defined.
+ */
+static bool tlv_internal_proc_type(struct tlv_proc *proc)
+{
+	return !!proc->ops.func;
+}
+
+int __ipeh_tlv_unset(struct tlv_param_table *tlv_param_table,
+		     unsigned char type, bool params_only)
+{
+	struct tlv_proc *tproc;
+	int retv;
+
+	if (type < 2)
+		return -EINVAL;
+
+	mutex_lock(&tlv_mutex);
+
+	tproc = ipeh_tlv_get_proc_by_type(tlv_param_table, type);
+
+	if (params_only && tlv_internal_proc_type(tproc)) {
+		/* TLV was set by internal source, so maintain the
+		 * non-parameter fields (i.e. the operations).
+		 */
+		retv = __tlv_set_one(tlv_param_table, type,
+				     &tlv_default_proc.params,
+				     &tproc->ops);
+	} else {
+		retv = __tlv_unset_one(tlv_param_table, type);
+	}
+
+	mutex_unlock(&tlv_mutex);
+
+	return retv;
+}
+EXPORT_SYMBOL(__ipeh_tlv_unset);
+
+int ipeh_exthdrs_init(struct tlv_param_table *tlv_param_table,
+		      const struct tlv_proc_init *tlv_init_params,
+		      int num_init_params)
+{
+	struct tlv_param_table_data *tpt;
+	int pos = 0, i;
+	size_t tsize;
+
+	tsize = tlv_param_table_size(num_init_params + 1);
+
+	tpt = kvmalloc(tsize, GFP_KERNEL);
+	if (!tpt)
+		return -ENOMEM;
+
+	memset(tpt, 0, tsize);
+
+	/* Zeroth TLV proc entry is default */
+	tpt->types[pos++].proc = tlv_default_proc;
+
+	for (i = 0; i < num_init_params; i++, pos++) {
+		const struct tlv_proc_init *tpi = &tlv_init_params[i];
+
+		if (WARN_ON(tpi->type < 2)) {
+			 /* Padding TLV initialized? */
+			goto err_inval;
+		}
+		if (WARN_ON(tpt->entries[tpi->type])) {
+			/* TLV type already set */
+			goto err_inval;
+		}
+
+		tpt->types[pos].proc = tpi->proc;
+		tpt->entries[tpi->type] = pos;
+	}
+
+	tpt->count = pos;
+
+	RCU_INIT_POINTER(tlv_param_table->data, tpt);
+
+	return 0;
+
+err_inval:
+	kvfree(tpt);
+	return -EINVAL;
+}
+EXPORT_SYMBOL(ipeh_exthdrs_init);
+
+static void tlv_destroy_param_table(struct tlv_param_table *tlv_param_table)
+{
+	struct tlv_param_table_data *tpt;
+
+	mutex_lock(&tlv_mutex);
+
+	tpt = rcu_dereference_protected(tlv_param_table->data,
+					lockdep_is_held(&tlv_mutex));
+	if (tpt) {
+		rcu_assign_pointer(tlv_param_table->data, NULL);
+		call_rcu(&tpt->rcu, tlv_param_table_release);
+	}
+
+	mutex_unlock(&tlv_mutex);
+}
+
+void ipeh_exthdrs_fini(struct tlv_param_table *tlv_param_table)
+{
+	tlv_destroy_param_table(tlv_param_table);
+}
+EXPORT_SYMBOL(ipeh_exthdrs_fini);
diff --git a/net/ipv6/exthdrs_options.c b/net/ipv6/exthdrs_options.c
index 032e072..d4b373e 100644
--- a/net/ipv6/exthdrs_options.c
+++ b/net/ipv6/exthdrs_options.c
@@ -11,11 +11,12 @@
 #if IS_ENABLED(CONFIG_IPV6_MIP6)
 #include <net/xfrm.h>
 #endif
+#include <uapi/linux/ipeh.h>
 
 /* Destination options header */
 
 #if IS_ENABLED(CONFIG_IPV6_MIP6)
-static bool ipv6_dest_hao(struct sk_buff *skb, int optoff)
+static bool ipv6_dest_hao(unsigned int class, struct sk_buff *skb, int optoff)
 {
 	struct ipv6_destopt_hao *hao;
 	struct inet6_skb_parm *opt = IP6CB(skb);
@@ -74,16 +75,6 @@ static bool ipv6_dest_hao(struct sk_buff *skb, int optoff)
 }
 #endif
 
-const struct tlvtype_proc tlvprocdestopt_lst[] = {
-#if IS_ENABLED(CONFIG_IPV6_MIP6)
-	{
-		.type	= IPV6_TLV_HAO,
-		.func	= ipv6_dest_hao,
-	},
-#endif
-	{-1,			NULL}
-};
-
 /* Hop-by-hop options */
 
 /* Note: we cannot rely on skb_dst(skb) before we assign it in
@@ -102,7 +93,7 @@ static inline struct net *ipv6_skb_net(struct sk_buff *skb)
 
 /* Router Alert as of RFC 2711 */
 
-static bool ipv6_hop_ra(struct sk_buff *skb, int optoff)
+static bool ipv6_hop_ra(unsigned int class, struct sk_buff *skb, int optoff)
 {
 	const unsigned char *nh = skb_network_header(skb);
 
@@ -120,7 +111,7 @@ static bool ipv6_hop_ra(struct sk_buff *skb, int optoff)
 
 /* Jumbo payload */
 
-static bool ipv6_hop_jumbo(struct sk_buff *skb, int optoff)
+static bool ipv6_hop_jumbo(unsigned int class, struct sk_buff *skb, int optoff)
 {
 	const unsigned char *nh = skb_network_header(skb);
 	struct inet6_dev *idev = __in6_dev_get_safely(skb->dev);
@@ -164,7 +155,8 @@ static bool ipv6_hop_jumbo(struct sk_buff *skb, int optoff)
 
 /* CALIPSO RFC 5570 */
 
-static bool ipv6_hop_calipso(struct sk_buff *skb, int optoff)
+static bool ipv6_hop_calipso(unsigned int class, struct sk_buff *skb,
+			     int optoff)
 {
 	const unsigned char *nh = skb_network_header(skb);
 
@@ -184,18 +176,45 @@ static bool ipv6_hop_calipso(struct sk_buff *skb, int optoff)
 	return false;
 }
 
-const struct tlvtype_proc tlvprochopopt_lst[] = {
+static const struct tlv_proc_init tlv_ipv6_init_params[] __initconst = {
+#if IS_ENABLED(CONFIG_IPV6_MIP6)
 	{
-		.type	= IPV6_TLV_ROUTERALERT,
-		.func	= ipv6_hop_ra,
+		.type = IPV6_TLV_HAO,
+
+		.proc.ops.func = ipv6_dest_hao,
+		.proc.params.r.class = IPEH_TLV_CLASS_FLAG_DSTOPT,
 	},
+#endif
 	{
-		.type	= IPV6_TLV_JUMBO,
-		.func	= ipv6_hop_jumbo,
+		.type = IPV6_TLV_ROUTERALERT,
+
+		.proc.ops.func = ipv6_hop_ra,
+		.proc.params.r.class = IPEH_TLV_CLASS_FLAG_HOPOPT,
 	},
 	{
-		.type	= IPV6_TLV_CALIPSO,
-		.func	= ipv6_hop_calipso,
+		.type = IPV6_TLV_JUMBO,
+
+		.proc.ops.func	= ipv6_hop_jumbo,
+		.proc.params.r.class = IPEH_TLV_CLASS_FLAG_HOPOPT,
+	},
+	{
+		.type = IPV6_TLV_CALIPSO,
+
+		.proc.ops.func = ipv6_hop_calipso,
+		.proc.params.r.class = IPEH_TLV_CLASS_FLAG_HOPOPT,
 	},
-	{ -1, }
 };
+
+struct tlv_param_table __rcu ipv6_tlv_param_table;
+EXPORT_SYMBOL(ipv6_tlv_param_table);
+
+int __init ipv6_exthdrs_options_init(void)
+{
+	return ipeh_exthdrs_init(&ipv6_tlv_param_table, tlv_ipv6_init_params,
+				 ARRAY_SIZE(tlv_ipv6_init_params));
+}
+
+void ipv6_exthdrs_options_exit(void)
+{
+	ipeh_exthdrs_fini(&ipv6_tlv_param_table);
+}
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
