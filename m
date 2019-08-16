Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C0A90A82
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2019 23:54:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8AF2F87E0A;
	Fri, 16 Aug 2019 21:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eT+jvTblwpk8; Fri, 16 Aug 2019 21:54:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EB30F87E90;
	Fri, 16 Aug 2019 21:54:28 +0000 (UTC)
X-Original-To: Intel-wired-lan@lists.osuosl.org
Delivered-To: Intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A3D11BF35B
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 21:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 740ED20519
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 21:54:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id npXdnnYzAK1i for <Intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2019 21:54:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 795012050A
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 21:54:14 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id k3so3559108pgb.10
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 14:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=herbertland-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=v+25zy1wniXhdmRWd6bQA7ZhvLVkwWNspuwwe8dTHfc=;
 b=MtFuWvGMWmKloCtq/h+BRedoweZSgZELKEw43sSesa7WSV7a2nVu7OrODpi+euipmc
 fJLXKnb+RdfMhJd9G6reBhkpMCoyRuvgrU8GIv4HE79FZVascMmWpPvRkDD83OMdps9c
 W1nfeCzWQCSlcvwdK2c79Zgm5y2JWK8qtcMIxcfIg1GZK5Z+oLkQVpfDQxiV9EGEhi35
 jSxyqK3w2+a+N2FfdnB08DwhE+2f9EGgvm/gUhm5oFH/6aJju6i+XxA4HquP6Z/X1zSb
 LhmBgpUEwxQSpWUea5Q88D0sse2SKGNVeYvUvfCa9+FrLJR1Y+jPokHLMPeXBQ7dDVex
 MDkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=v+25zy1wniXhdmRWd6bQA7ZhvLVkwWNspuwwe8dTHfc=;
 b=QJkFelyZtFCWPaHmVYpkt1JZYRWKBbBaVfxRcWaMmElink2Ci3lg0qFNxuzADQedFK
 YANiOfsmPIQ7iotpqsdd2JiMcIxJRL/KtMXC0HdLx8lNbKZWmQagq6H0RpgubX0G+Rzm
 aJIYyP4vsRCCfWHym3tYsYhaZsXZqqeB4G41FaWzlScH0v1tII3pyafSRoI0HDGzfOpW
 MIgNPGgv5YTLkhaZ7ODQwUExp6Ud24nnvLpXCRTZXxsVb8BD3aWfYNcm9nh1UAnYs1CV
 ORWDGSH+XHur9lWm3bvKoH7ckfrsa1/6z8vu6Ut4IoTNFYEkovcjo3Xg1heiBd2obxpa
 n1cA==
X-Gm-Message-State: APjAAAUeP2FCsVwBIMZ1SNWoncfu88O5g1myVQMLsNWteyt+FcnA9yD5
 zjkH2uaKDmM7krseNGOFs8BvqtRuTkE=
X-Google-Smtp-Source: APXvYqxO9LeHXn00h/X6z3Mltj5lJ9qOCVz964xZ5HgONjUPcZEQFIEwf6enzPqjFKmKSSd+lUw0aA==
X-Received: by 2002:a62:8688:: with SMTP id
 x130mr13438545pfd.162.1565992453617; 
 Fri, 16 Aug 2019 14:54:13 -0700 (PDT)
Received: from localhost.localdomain (c-73-202-182-113.hsd1.ca.comcast.net.
 [73.202.182.113])
 by smtp.gmail.com with ESMTPSA id r12sm7151355pgb.73.2019.08.16.14.54.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 16 Aug 2019 14:54:12 -0700 (PDT)
From: Tom Herbert <tom@herbertland.com>
To: Intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Aug 2019 14:53:42 -0700
Message-Id: <1565992424-22379-6-git-send-email-tom@herbertland.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565992424-22379-1-git-send-email-tom@herbertland.com>
References: <1565992424-22379-1-git-send-email-tom@herbertland.com>
Subject: [Intel-wired-lan] [PATCH v2 net-next 5/7] ip6tlvs: Add TX parameters
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

Define a number of transmit parameters for TLV Parameter table
definitions. These will be used for validating TLVs that are set
on a socket.

Signed-off-by: Tom Herbert <tom@quantonium.net>
Signed-off-by: Tom Herbert <tom@herbertland.com>
---
 include/net/ipeh.h         | 18 ++++++++++++++++
 include/uapi/linux/ipeh.h  |  8 +++++++
 net/ipv6/exthdrs_common.c  | 53 +++++++++++++++++++++++++++++++++++++++++++++-
 net/ipv6/exthdrs_options.c | 45 +++++++++++++++++++++++++++++++++++++++
 4 files changed, 123 insertions(+), 1 deletion(-)

diff --git a/include/net/ipeh.h b/include/net/ipeh.h
index b915b4b..2fc0882 100644
--- a/include/net/ipeh.h
+++ b/include/net/ipeh.h
@@ -20,6 +20,17 @@ struct tlv_rx_params {
 };
 
 struct tlv_tx_params {
+	unsigned char admin_perm : 2;
+	unsigned char user_perm : 2;
+	unsigned char class : 3;
+	unsigned char rsvd : 1;
+	unsigned char align_mult : 4;
+	unsigned char align_off : 4;
+	unsigned char data_len_mult : 4;
+	unsigned char data_len_off : 4;
+	unsigned char min_data_len;
+	unsigned char max_data_len;
+	unsigned short preferred_order;
 };
 
 struct tlv_params {
@@ -54,6 +65,13 @@ struct tlv_param_table {
 
 extern struct tlv_param_table ipv6_tlv_param_table;
 
+/* Preferred TLV ordering for HBH and Dest options (placed by increasing order)
+ */
+#define IPEH_TLV_PREF_ORDER_HAO			10
+#define IPEH_TLV_PREF_ORDER_ROUTERALERT		20
+#define IPEH_TLV_PREF_ORDER_JUMBO		30
+#define IPEH_TLV_PREF_ORDER_CALIPSO		40
+
 int __ipeh_tlv_set(struct tlv_param_table *tlv_param_table,
 		   unsigned char type, const struct tlv_params *params,
 		   const struct tlv_ops *ops);
diff --git a/include/uapi/linux/ipeh.h b/include/uapi/linux/ipeh.h
index c4302b7..dbf0728 100644
--- a/include/uapi/linux/ipeh.h
+++ b/include/uapi/linux/ipeh.h
@@ -13,4 +13,12 @@
 				  IPEH_TLV_CLASS_FLAG_RTRDSTOPT |	\
 				  IPEH_TLV_CLASS_FLAG_DSTOPT)
 
+/* TLV permissions values */
+enum {
+	IPEH_TLV_PERM_NONE,
+	IPEH_TLV_PERM_WITH_CHECK,
+	IPEH_TLV_PERM_NO_CHECK,
+	IPEH_TLV_PERM_MAX = IPEH_TLV_PERM_NO_CHECK
+};
+
 #endif /* _UAPI_LINUX_IPEH_H */
diff --git a/net/ipv6/exthdrs_common.c b/net/ipv6/exthdrs_common.c
index cc8db9e..791f6e4 100644
--- a/net/ipv6/exthdrs_common.c
+++ b/net/ipv6/exthdrs_common.c
@@ -3,6 +3,7 @@
 /* Extension header and TLV library code that is not specific to IPv6. */
 #include <linux/export.h>
 #include <net/ipv6.h>
+#include <uapi/linux/ipeh.h>
 
 struct ipv6_txoptions *
 ipeh_dup_options(struct sock *sk, struct ipv6_txoptions *opt)
@@ -265,6 +266,13 @@ EXPORT_SYMBOL(ipeh_parse_tlv);
 
 /* Default (unset) values for TLV parameters */
 static const struct tlv_proc tlv_default_proc = {
+	.params.t = {
+		.admin_perm = IPEH_TLV_PERM_NO_CHECK,
+		.user_perm = IPEH_TLV_PERM_NONE,
+		.align_mult = (4 - 1), /* Default alignment: 4n + 2 */
+		.align_off = 2,
+		.max_data_len = 255,
+	},
 };
 
 static DEFINE_MUTEX(tlv_mutex);
@@ -284,16 +292,45 @@ static void tlv_param_table_release(struct rcu_head *rcu)
 }
 
 /* mutex held */
+static int check_order(struct tlv_param_table_data *tpt, unsigned char type,
+		       unsigned short order)
+{
+	int i;
+
+	if (!order)
+		return -EINVAL;
+
+	for (i = 2; i < 256; i++) {
+		struct tlv_type *ttype = &tpt->types[tpt->entries[i]];
+
+		if (!tpt->entries[i])
+			continue;
+
+		if (order == ttype->proc.params.t.preferred_order &&
+		    i != type)
+			return -EALREADY;
+	}
+
+	return 0;
+}
+
+/* mutex held */
 static int __tlv_set_one(struct tlv_param_table *tlv_param_table,
 			 unsigned char type, const struct tlv_params *params,
 			 const struct tlv_ops *ops)
 {
 	struct tlv_param_table_data *tpt, *told;
 	struct tlv_type *ttype;
+	int retv;
 
 	told = rcu_dereference_protected(tlv_param_table->data,
 					 lockdep_is_held(&tlv_mutex));
 
+	/* Check preferred order */
+	retv = check_order(told, type, params->t.preferred_order);
+	if (retv)
+		return retv;
+
 	/* Create new TLV table. If there is no exsiting entry then we are
 	 * adding a new one to the table, else we're modifying an entry.
 	 */
@@ -422,7 +459,7 @@ int ipeh_exthdrs_init(struct tlv_param_table *tlv_param_table,
 		      int num_init_params)
 {
 	struct tlv_param_table_data *tpt;
-	int pos = 0, i;
+	int pos = 0, i, j;
 	size_t tsize;
 
 	tsize = tlv_param_table_size(num_init_params + 1);
@@ -448,6 +485,20 @@ int ipeh_exthdrs_init(struct tlv_param_table *tlv_param_table,
 			goto err_inval;
 		}
 
+		if (WARN_ON(!tpi->proc.params.t.preferred_order)) {
+			/* Preferred order must be non-zero */
+			goto err_inval;
+		}
+
+		for (j = 0; j < i; j++) {
+			const struct tlv_proc_init *tpix = &tlv_init_params[j];
+
+			if (WARN_ON(tpi->proc.params.t.preferred_order ==
+				    tpix->proc.params.t.preferred_order)) {
+				/* Preferred order must be unique */
+				goto err_inval;
+			}
+		}
 		tpt->types[pos].proc = tpi->proc;
 		tpt->entries[tpi->type] = pos;
 	}
diff --git a/net/ipv6/exthdrs_options.c b/net/ipv6/exthdrs_options.c
index d4b373e..3b50b58 100644
--- a/net/ipv6/exthdrs_options.c
+++ b/net/ipv6/exthdrs_options.c
@@ -183,6 +183,17 @@ static const struct tlv_proc_init tlv_ipv6_init_params[] __initconst = {
 
 		.proc.ops.func = ipv6_dest_hao,
 		.proc.params.r.class = IPEH_TLV_CLASS_FLAG_DSTOPT,
+
+		.proc.params.t = {
+			.preferred_order = IPEH_TLV_PREF_ORDER_HAO,
+			.admin_perm = IPEH_TLV_PERM_NO_CHECK,
+			.user_perm = IPEH_TLV_PERM_NONE,
+			.class = IPEH_TLV_CLASS_FLAG_DSTOPT,
+			.align_mult = (8 - 1), /* Align to 8n + 6 */
+			.align_off = 6,
+			.min_data_len = 16,
+			.max_data_len = 16,
+		},
 	},
 #endif
 	{
@@ -190,18 +201,52 @@ static const struct tlv_proc_init tlv_ipv6_init_params[] __initconst = {
 
 		.proc.ops.func = ipv6_hop_ra,
 		.proc.params.r.class = IPEH_TLV_CLASS_FLAG_HOPOPT,
+
+		.proc.params.t = {
+			.preferred_order = IPEH_TLV_PREF_ORDER_ROUTERALERT,
+			.admin_perm = IPEH_TLV_PERM_NO_CHECK,
+			.user_perm = IPEH_TLV_PERM_NONE,
+			.class = IPEH_TLV_CLASS_FLAG_HOPOPT,
+			.align_mult = (2 - 1), /* Align to 2n */
+			.min_data_len = 2,
+			.max_data_len = 2,
+		},
 	},
 	{
 		.type = IPV6_TLV_JUMBO,
 
 		.proc.ops.func	= ipv6_hop_jumbo,
 		.proc.params.r.class = IPEH_TLV_CLASS_FLAG_HOPOPT,
+
+		.proc.params.t = {
+			.preferred_order = IPEH_TLV_PREF_ORDER_JUMBO,
+			.admin_perm = IPEH_TLV_PERM_NO_CHECK,
+			.user_perm = IPEH_TLV_PERM_NONE,
+			.class = IPEH_TLV_CLASS_FLAG_HOPOPT,
+			.align_mult = (4 - 1), /* Align to 4n + 2 */
+			.align_off = 2,
+			.min_data_len = 4,
+			.max_data_len = 4,
+		},
 	},
 	{
 		.type = IPV6_TLV_CALIPSO,
 
 		.proc.ops.func = ipv6_hop_calipso,
 		.proc.params.r.class = IPEH_TLV_CLASS_FLAG_HOPOPT,
+
+		.proc.params.t = {
+			.preferred_order = IPEH_TLV_PREF_ORDER_CALIPSO,
+			.admin_perm = IPEH_TLV_PERM_NO_CHECK,
+			.user_perm = IPEH_TLV_PERM_NONE,
+			.class = IPEH_TLV_CLASS_FLAG_HOPOPT,
+			.align_mult = (4 - 1), /* Align to 4n + 2 */
+			.align_off = 2,
+			.min_data_len = 8,
+			.max_data_len = 252,
+			.data_len_mult = (4 - 1),
+					/* Length is multiple of 4 */
+		},
 	},
 };
 
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
