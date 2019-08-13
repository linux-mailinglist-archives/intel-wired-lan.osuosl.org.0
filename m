Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 281478AC4F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2019 02:56:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD0A986092;
	Tue, 13 Aug 2019 00:56:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2TZBGKrY3Fkt; Tue, 13 Aug 2019 00:56:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE97F860B2;
	Tue, 13 Aug 2019 00:56:35 +0000 (UTC)
X-Original-To: Intel-wired-lan@lists.osuosl.org
Delivered-To: Intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CAF31BF989
 for <Intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 00:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0886585F5D
 for <Intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 00:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oims2bMa2QzW for <Intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2019 00:56:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B8A8885F5B
 for <Intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 00:56:33 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id m12so9931805plt.5
 for <Intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 17:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=herbertland-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zDq/nofwzfQovJKwEJNxV0IMl/WMAg/NC5dMyWEGYO0=;
 b=xJYzgIs8SpCeMN224EK90jxR0KLTFUdVdoRI2OiSTTeGZg502Ah4dSYszKBACsJUkr
 50Yt2bHXxfOH7RfpHOVBTudTM52Vikla8gJnJMmrz8dQlMnyMQ5n8xdHnhhelmuSxz9z
 PyxSuOKMOxA/G7wyr3vzY8eqtxOjCM1CnsuFoMAYzYWnTsXmyclsjmD6KXzcXFFKOBjY
 L/qIF41O08keEDzUpLGjW70mOv+Rj1tH1kWYc+up+dfNjh5UYhA3FEi2UwNmWdsJ2JE5
 HvlkJzLKP16jigLIXm3+omwWNmZlBsPYTeY0wRIM003Su8AluPxmrvScFhC7zgh0jeRg
 2Jig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zDq/nofwzfQovJKwEJNxV0IMl/WMAg/NC5dMyWEGYO0=;
 b=duCfPHfSBXuA5cs4YbFfvVcvjbeYy19qEiAhGVjkjBMWwiwWlCiNZKBzy0rVHV69S8
 yexCd8vLTcltErddnSHuKxM8XElO9bFvQq3Md8OGCmAie/D2cLUDGgD9diyvZiDfwNbP
 VX431tffYHkQ5GCJn3eMru4FRw/ZHdciPGKDvmvtf1/OVJBg8Db+AGmfjzX+srA11VuA
 pi9VILvRVXOA51zWe1fcyQ2NXujS3qBcqoD90PA6CGcCfz/VEs0NprJMmmAKUQbq9jpO
 epTnImvAwwvSz+1ih/478iGiDD6Blv5EhlQz+eVQYb8quKRHlbVBg4Ov5o7fg3dmEpir
 u0pA==
X-Gm-Message-State: APjAAAURpa2QYYx2m+eJkH5ImNI/qRl+gSUMIuHbiXQj5vCCvKYqzUEA
 4V8VY42lSaU1fahy5Fl9EUlahxZWQz8=
X-Google-Smtp-Source: APXvYqxBYeO2jvsmYTpmTDl1nac8cWs9Frq+GXxOslrmvR9nSN36YRCONTvW2cYNtVMrRrZMoF5hRg==
X-Received: by 2002:a17:902:441:: with SMTP id
 59mr27317498ple.62.1565657293837; 
 Mon, 12 Aug 2019 17:48:13 -0700 (PDT)
Received: from localhost.localdomain (c-73-202-182-113.hsd1.ca.comcast.net.
 [73.202.182.113])
 by smtp.gmail.com with ESMTPSA id 14sm105671426pfy.40.2019.08.12.17.48.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 12 Aug 2019 17:48:13 -0700 (PDT)
From: Tom Herbert <tom@herbertland.com>
X-Google-Original-From: Tom Herbert <tom@quantonium.net>
To: Intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Aug 2019 17:47:41 -0700
Message-Id: <1565657261-15979-8-git-send-email-tom@quantonium.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565657261-15979-1-git-send-email-tom@quantonium.net>
References: <1565657261-15979-1-git-send-email-tom@quantonium.net>
Subject: [Intel-wired-lan] [PATCH net-next 7/7] ip6tlvs: Validation of TX
 Destination and Hop-by-Hop options
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

Validate Destination and Hop-by-Hop options. This uses the information
in the TLV parameters table to validate various aspects of both
individual TLVs as well as a list of TLVs in an extension header.

There are two levels of validation that can be performed: simple checks
and deep checks. Simple checks validate only the most basic properties
such as that the TLV list fits into the EH. Deep checks do a fine
grained validation that includes perferred ordering, length limits,
and length alignment.

With proper permissions set in the TLV parameter table, this patch
allows non-privileged users to send TLVs. Given that TLVs are open
ended and potentially a source of DOS attack, deep checks are
performed to limit the format that a non-privileged user can send.
If deep checks are enabled, a canonical format for sending TLVs is
enforced (in adherence with the robustness principle). A TLV must
be well ordered with respect to the preferred order for the TLV.
Each TLV must be aligned as described in the parameter table. Minimal
padding (one padding TLV) is used to align TLVs. The length of the
extension header as well as the count of non-padding TLVs is checked
against max_*_opts_len and max_*_opts_cnt. For individual TLVs, length
limits and length alignment is checked.

Signed-off-by: Tom Herbert <tom@quantonium.net>
---
 include/net/ipeh.h        |  22 +++
 net/ipv6/datagram.c       |  51 +++++--
 net/ipv6/exthdrs_common.c | 382 ++++++++++++++++++++++++++++++++++++++++++++++
 net/ipv6/ipv6_sockglue.c  |  39 ++---
 4 files changed, 455 insertions(+), 39 deletions(-)

diff --git a/include/net/ipeh.h b/include/net/ipeh.h
index cee76fe..67e5bb9 100644
--- a/include/net/ipeh.h
+++ b/include/net/ipeh.h
@@ -151,6 +151,28 @@ struct ipv6_txoptions *ipeh_renew_options(struct sock *sk,
 struct ipv6_txoptions *ipeh_fixup_options(struct ipv6_txoptions *opt_space,
 					  struct ipv6_txoptions *opt);
 
+int ipeh_opt_validate_tlvs(struct net *net,
+			   struct tlv_param_table *tlv_param_table,
+			   struct ipv6_opt_hdr *opt,
+			   unsigned int optname, bool admin,
+			   unsigned int max_len, unsigned int max_cnt);
+int ipeh_opt_validate_single_tlv(struct net *net,
+				 struct tlv_param_table *tlv_param_table,
+				 unsigned int optname, const __u8 *tlv,
+				 size_t len, bool deleting, bool admin);
+int ipeh_opt_check_perm(struct net *net,
+			struct tlv_param_table *tlv_param_table,
+			struct ipv6_txoptions *txopt, int optname, bool admin);
+
+struct ipv6_txoptions *ipeh_txopt_from_opt(struct sock *sk,
+					   struct tlv_param_table
+						*tlv_param_table,
+					   struct ipv6_txoptions *opt,
+					   int optname, char __user *optval,
+					   unsigned int optlen,
+					   unsigned int max_len,
+					   unsigned int max_cnt);
+
 /* Generic extension header TLV parser */
 
 enum ipeh_parse_errors {
diff --git a/net/ipv6/datagram.c b/net/ipv6/datagram.c
index 9ab897d..4b87773 100644
--- a/net/ipv6/datagram.c
+++ b/net/ipv6/datagram.c
@@ -837,7 +837,10 @@ int ip6_datagram_send_ctl(struct net *net, struct sock *sk,
 			break;
 
 		case IPV6_2292HOPOPTS:
-		case IPV6_HOPOPTS:
+		case IPV6_HOPOPTS: {
+			int max_len = net->ipv6.sysctl.max_hbh_opts_len;
+			int max_cnt = net->ipv6.sysctl.max_hbh_opts_cnt;
+
 			if (opt->hopopt || cmsg->cmsg_len < CMSG_LEN(sizeof(struct ipv6_opt_hdr))) {
 				err = -EINVAL;
 				goto exit_f;
@@ -849,15 +852,24 @@ int ip6_datagram_send_ctl(struct net *net, struct sock *sk,
 				err = -EINVAL;
 				goto exit_f;
 			}
-			if (!ns_capable(net->user_ns, CAP_NET_RAW)) {
-				err = -EPERM;
+
+			err = ipeh_opt_validate_tlvs(net, &ipv6_tlv_param_table,
+						     hdr, IPV6_HOPOPTS,
+						     ns_capable(net->user_ns,
+								CAP_NET_RAW),
+						     max_len, max_cnt);
+			if (err < 0)
 				goto exit_f;
-			}
+
 			opt->opt_nflen += len;
 			opt->hopopt = hdr;
 			break;
+		}
+
+		case IPV6_2292DSTOPTS: {
+			int max_len = net->ipv6.sysctl.max_dst_opts_len;
+			int max_cnt = net->ipv6.sysctl.max_dst_opts_cnt;
 
-		case IPV6_2292DSTOPTS:
 			if (cmsg->cmsg_len < CMSG_LEN(sizeof(struct ipv6_opt_hdr))) {
 				err = -EINVAL;
 				goto exit_f;
@@ -869,10 +881,14 @@ int ip6_datagram_send_ctl(struct net *net, struct sock *sk,
 				err = -EINVAL;
 				goto exit_f;
 			}
-			if (!ns_capable(net->user_ns, CAP_NET_RAW)) {
-				err = -EPERM;
+			err = ipeh_opt_validate_tlvs(net, &ipv6_tlv_param_table,
+						     hdr, IPV6_DSTOPTS,
+						     ns_capable(net->user_ns,
+								CAP_NET_RAW),
+						     max_len, max_cnt);
+			if (err < 0)
 				goto exit_f;
-			}
+
 			if (opt->dst1opt) {
 				err = -EINVAL;
 				goto exit_f;
@@ -880,9 +896,13 @@ int ip6_datagram_send_ctl(struct net *net, struct sock *sk,
 			opt->opt_flen += len;
 			opt->dst1opt = hdr;
 			break;
+		}
 
 		case IPV6_DSTOPTS:
-		case IPV6_RTHDRDSTOPTS:
+		case IPV6_RTHDRDSTOPTS: {
+			int max_len = net->ipv6.sysctl.max_dst_opts_len;
+			int max_cnt = net->ipv6.sysctl.max_dst_opts_cnt;
+
 			if (cmsg->cmsg_len < CMSG_LEN(sizeof(struct ipv6_opt_hdr))) {
 				err = -EINVAL;
 				goto exit_f;
@@ -894,10 +914,15 @@ int ip6_datagram_send_ctl(struct net *net, struct sock *sk,
 				err = -EINVAL;
 				goto exit_f;
 			}
-			if (!ns_capable(net->user_ns, CAP_NET_RAW)) {
-				err = -EPERM;
+
+			err = ipeh_opt_validate_tlvs(net, &ipv6_tlv_param_table,
+						     hdr, IPV6_DSTOPTS,
+						     ns_capable(net->user_ns,
+								CAP_NET_RAW),
+						     max_len, max_cnt);
+			if (err < 0)
 				goto exit_f;
-			}
+
 			if (cmsg->cmsg_type == IPV6_DSTOPTS) {
 				opt->opt_flen += len;
 				opt->dst1opt = hdr;
@@ -906,7 +931,7 @@ int ip6_datagram_send_ctl(struct net *net, struct sock *sk,
 				opt->dst0opt = hdr;
 			}
 			break;
-
+		}
 		case IPV6_2292RTHDR:
 		case IPV6_RTHDR:
 			if (cmsg->cmsg_len < CMSG_LEN(sizeof(struct ipv6_rt_hdr))) {
diff --git a/net/ipv6/exthdrs_common.c b/net/ipv6/exthdrs_common.c
index b44c6fd..5df55bd 100644
--- a/net/ipv6/exthdrs_common.c
+++ b/net/ipv6/exthdrs_common.c
@@ -262,6 +262,318 @@ bool ipeh_parse_tlv(unsigned int class,
 }
 EXPORT_SYMBOL(ipeh_parse_tlv);
 
+/* TLV validation functions */
+
+/* Validate a single non-padding TLV */
+static int __ipeh_opt_validate_single_tlv(struct net *net, const __u8 *tlv,
+					  struct tlv_proc *tproc,
+					  unsigned int class, bool *deep_check,
+					  bool deleting, bool admin)
+{
+	struct tlv_tx_params *tptx = &tproc->params.t;
+
+	if (tlv[0] < 2) /* Must be non-padding */
+		return -EINVAL;
+
+	/* Check permissions */
+	switch (admin ? tptx->admin_perm : tptx->user_perm) {
+	case IPEH_TLV_PERM_NO_CHECK:
+		/* Allowed with no deep checks */
+		*deep_check = false;
+		return 0;
+	case IPEH_TLV_PERM_WITH_CHECK:
+		/* Allowed with deep checks */
+		*deep_check = true;
+		break;
+	default:
+		/* No permission */
+		return -EPERM;
+	}
+
+	/* Perform deep checks on the TLV */
+
+	/* Check class */
+	if ((tptx->class & class) != class)
+		return -EINVAL;
+
+	/* Don't bother checking lengths when deleting, the TLV is only
+	 * needed here for lookup
+	 */
+	if (deleting) {
+		/* Don't bother with deep checks when deleting */
+		*deep_check = false;
+	} else {
+		/* Check length */
+		if (tlv[1] < tptx->min_data_len || tlv[1] > tptx->max_data_len)
+			return -EINVAL;
+
+		/* Check length alignment */
+		if ((tlv[1] % (tptx->data_len_mult + 1)) != tptx->data_len_off)
+			return -EINVAL;
+	}
+
+	return 0;
+}
+
+static unsigned int optname_to_tlv_class(int optname)
+{
+	switch (optname) {
+	case IPV6_HOPOPTS:
+		return IPEH_TLV_CLASS_FLAG_HOPOPT;
+	case IPV6_RTHDRDSTOPTS:
+		return IPEH_TLV_CLASS_FLAG_RTRDSTOPT;
+	case IPV6_DSTOPTS:
+		return IPEH_TLV_CLASS_FLAG_DSTOPT;
+	default:
+		return -1U;
+	}
+}
+
+static int __ipeh_opt_validate_tlvs(struct net *net,
+				    struct tlv_param_table *tlv_param_table,
+				    struct ipv6_opt_hdr *opt,
+				    unsigned int optname, bool deleting,
+				    bool admin, unsigned int max_len,
+				    unsigned int max_cnt)
+{
+	bool deep_check = !admin, did_deep_check = false;
+	unsigned int opt_len, tlv_len, offset;
+	unsigned int padding = 0, numpad = 0;
+	unsigned short prev_tlv_order = 0;
+	unsigned int class, cnt = 0;
+	struct tlv_tx_params *tptx;
+	int retc, ret = -EINVAL;
+	__u8 *tlv = (__u8 *)opt;
+	struct tlv_proc *tproc;
+
+	opt_len = ipv6_optlen(opt);
+	offset = sizeof(*opt);
+
+	class = optname_to_tlv_class(optname);
+
+	rcu_read_lock();
+
+	while (offset < opt_len) {
+		switch (tlv[offset]) {
+		case IPV6_TLV_PAD1:
+			tlv_len = 1;
+			padding++;
+			numpad++;
+			break;
+		case IPV6_TLV_PADN:
+			if (offset + 1 >= opt_len)
+				goto out;
+
+			tlv_len = tlv[offset + 1] + 2;
+
+			if (offset + tlv_len > opt_len)
+				goto out;
+
+			padding += tlv_len;
+			numpad++;
+			break;
+		default:
+			if (offset + 1 >= opt_len)
+				goto out;
+
+			tlv_len = tlv[offset + 1] + 2;
+
+			if (offset + tlv_len > opt_len)
+				goto out;
+
+			tproc = ipeh_tlv_get_proc(tlv_param_table,
+						  &tlv[offset]);
+			tptx = &tproc->params.t;
+
+			retc = __ipeh_opt_validate_single_tlv(net, &tlv[offset],
+							      tproc, class,
+							      &deep_check,
+							      deleting, admin);
+			if (retc < 0) {
+				ret = retc;
+				goto out;
+			}
+
+			if (deep_check) {
+				/* Check for too many options */
+				if (++cnt > max_cnt) {
+					ret = -E2BIG;
+					goto out;
+				}
+
+				/* Check order */
+				if (tptx->preferred_order < prev_tlv_order)
+					goto out;
+
+				/* Check alignment */
+				if ((offset % (tptx->align_mult + 1)) !=
+				    tptx->align_off)
+					goto out;
+
+				/* Check for right amount of padding */
+				if (numpad > 1 || padding > tptx->align_mult)
+					goto out;
+
+				prev_tlv_order = tptx->preferred_order;
+
+				did_deep_check = true;
+			}
+			padding = 0;
+			numpad = 0;
+		}
+		offset += tlv_len;
+	}
+
+	/* Check trailing padding. Note this covers the case option list
+	 * only contains padding.
+	 */
+	if (deep_check && (numpad > 1 || padding > 7))
+		goto out;
+
+	/* If we did at least one deep check apply length limit */
+	if (did_deep_check && opt_len > max_len) {
+		ret = -EMSGSIZE;
+		goto out;
+	}
+
+	/* All good */
+	ret = 0;
+out:
+	rcu_read_unlock();
+
+	return ret;
+}
+
+/**
+ * ipeh_opt_validate_tlvs - Validate TLVs.
+ * @net: Current net
+ * @tlv_param_table: TLV parameter table
+ * @opt: The option header
+ * @optname: IPV6_HOPOPTS, IPV6_RTHDRDSTOPTS, or IPV6_DSTOPTS
+ * @admin: Set for privileged user
+ * @max_len: Maximum length for TLV
+ * @max_cnt: Maximum number of non-padding TLVs
+ *
+ * Description:
+ * Walks the TLVs in a list to verify that the TLV lengths and other
+ * parameters are in bounds for a Destination or Hop-by-Hop option.
+ * Return -EINVAL is there is a problem, zero otherwise.
+ */
+int ipeh_opt_validate_tlvs(struct net *net,
+			   struct tlv_param_table *tlv_param_table,
+			   struct ipv6_opt_hdr *opt, unsigned int optname,
+			   bool admin, unsigned int max_len,
+			   unsigned int max_cnt)
+{
+	return __ipeh_opt_validate_tlvs(net, tlv_param_table, opt, optname,
+					false, admin, max_len, max_cnt);
+}
+EXPORT_SYMBOL(ipeh_opt_validate_tlvs);
+
+/**
+ * ipeh_opt_validate_single_tlv - Check that a single TLV is valid.
+ * @net: Current net
+ * @tlv_param_table: TLV parameter table
+ * @optname: IPV6_HOPOPTS, IPV6_RTHDRDSTOPTS, or IPV6_DSTOPTS
+ * @tlv: The TLV as array of bytes
+ * @len: Length of buffer holding TLV
+ * @deleting: TLV is being deleted
+ * @admin: Set for privileged user
+ *
+ * Description:
+ * Validates a single TLV. The TLV must be non-padding type. The length
+ * of the TLV (as determined by the second byte that gives length of the
+ * option data) must match @len.
+ */
+int ipeh_opt_validate_single_tlv(struct net *net,
+				 struct tlv_param_table *tlv_param_table,
+				 unsigned int optname, const __u8 *tlv,
+				 size_t len, bool deleting, bool admin)
+{
+	struct tlv_proc *tproc;
+	unsigned int class;
+	bool deep_check;
+	int ret = 0;
+
+	class = optname_to_tlv_class(optname);
+
+	if (tlv[0] < 2)
+		return -EINVAL;
+
+	if (len < 2)
+		return -EINVAL;
+
+	if (tlv[1] + 2 != len)
+		return -EINVAL;
+
+	rcu_read_lock();
+
+	tproc = ipeh_tlv_get_proc(tlv_param_table, tlv);
+
+	ret = __ipeh_opt_validate_single_tlv(net, tlv, tproc, class,
+					     &deep_check, deleting, admin);
+
+	rcu_read_unlock();
+
+	return ret;
+}
+EXPORT_SYMBOL(ipeh_opt_validate_single_tlv);
+
+/**
+ * ipeh_opt_check_perm - Check that current capabilities allows modifying
+ * txopts.
+ * @net: Current net
+ * @tlv_param_table: TLV parameter table
+ * @txopts: TX options from the socket
+ * @optname: IPV6_HOPOPTS, IPV6_RTHDRDSTOPTS, or IPV6_DSTOPTS
+ * @admin: Set for privileged user
+ *
+ * Description:
+ *
+ * Checks whether the permissions of TLV that are set on a socket permit
+ * modificationr.
+ *
+ */
+int ipeh_opt_check_perm(struct net *net,
+			struct tlv_param_table *tlv_param_table,
+			struct ipv6_txoptions *txopt, int optname, bool admin)
+{
+	struct ipv6_opt_hdr *opt;
+	int retv = -EPERM;
+
+	if (!txopt)
+		return 0;
+
+	switch (optname) {
+	case IPV6_HOPOPTS:
+		opt = txopt->hopopt;
+		break;
+	case IPV6_RTHDRDSTOPTS:
+		opt = txopt->dst0opt;
+		break;
+	case IPV6_DSTOPTS:
+		opt = txopt->dst1opt;
+		break;
+	default:
+		goto out;
+	}
+
+	if (!opt) {
+		retv = 0;
+		goto out;
+	}
+
+	/* Just call the validate function on the options as being
+	 * deleted.
+	 */
+	retv = __ipeh_opt_validate_tlvs(net, tlv_param_table, opt, optname,
+					true, admin, -1U, -1U);
+
+out:
+	return retv;
+}
+EXPORT_SYMBOL(ipeh_opt_check_perm);
+
 /* TLV parameter table functions and structures */
 
 /* Default (unset) values for TLV parameters */
@@ -454,6 +766,76 @@ int __ipeh_tlv_unset(struct tlv_param_table *tlv_param_table,
 }
 EXPORT_SYMBOL(__ipeh_tlv_unset);
 
+/* Utility function tp create TX options from a setsockopt that is setting
+ * options on a socket.
+ */
+struct ipv6_txoptions *ipeh_txopt_from_opt(struct sock *sk,
+					   struct tlv_param_table
+							*tlv_param_table,
+					   struct ipv6_txoptions *opt,
+					   int optname, char __user *optval,
+					   unsigned int optlen,
+					   unsigned int max_len,
+					   unsigned int max_cnt)
+{
+	struct ipv6_opt_hdr *new = NULL;
+	struct net *net = sock_net(sk);
+	int retv;
+
+	/* remove any sticky options header with a zero option
+	 * length, per RFC3542.
+	 */
+	if (optlen == 0) {
+		optval = NULL;
+	} else if (!optval) {
+		return ERR_PTR(-EINVAL);
+	} else if (optlen < sizeof(struct ipv6_opt_hdr) ||
+		 optlen & 0x7 || optlen > 8 * 255) {
+		return ERR_PTR(-EINVAL);
+	} else {
+		new = memdup_user(optval, optlen);
+		if (IS_ERR(new))
+			return (struct ipv6_txoptions *)new;
+		if (unlikely(ipv6_optlen(new) > optlen)) {
+			kfree(new);
+			return ERR_PTR(-EINVAL);
+		}
+	}
+
+	if (optname != IPV6_RTHDR) {
+		bool cap = ns_capable(net->user_ns, CAP_NET_RAW);
+
+		/* First check if we have permission to delete
+		 * the existing options on the socket.
+		 */
+		retv = ipeh_opt_check_perm(net, tlv_param_table,
+					   opt, optname, cap);
+		if (retv < 0) {
+			kfree(new);
+			return ERR_PTR(retv);
+		}
+
+		/* Check permissions and other validations on new
+		 * TLVs
+		 */
+		if (new) {
+			retv = ipeh_opt_validate_tlvs(net, tlv_param_table,
+						      new, optname, cap,
+						      max_len, max_cnt);
+			if (retv < 0) {
+				kfree(new);
+				return ERR_PTR(retv);
+			}
+		}
+	}
+
+	opt = ipeh_renew_options(sk, opt, optname, new);
+	kfree(new);
+
+	return opt;
+}
+EXPORT_SYMBOL(ipeh_txopt_from_opt);
+
 const struct nla_policy ipeh_tlv_nl_policy[IPEH_TLV_ATTR_MAX + 1] = {
 	[IPEH_TLV_ATTR_TYPE] =		{ .type = NLA_U8, },
 	[IPEH_TLV_ATTR_ORDER] =		{ .type = NLA_U16, },
diff --git a/net/ipv6/ipv6_sockglue.c b/net/ipv6/ipv6_sockglue.c
index 8755ecc..b8e007ca 100644
--- a/net/ipv6/ipv6_sockglue.c
+++ b/net/ipv6/ipv6_sockglue.c
@@ -395,40 +395,27 @@ static int do_ipv6_setsockopt(struct sock *sk, int level, int optname,
 	case IPV6_RTHDR:
 	case IPV6_DSTOPTS:
 	{
+		unsigned int max_len = -1U, max_cnt = -1U;
 		struct ipv6_txoptions *opt;
-		struct ipv6_opt_hdr *new = NULL;
 
-		/* hop-by-hop / destination options are privileged option */
-		retv = -EPERM;
-		if (optname != IPV6_RTHDR && !ns_capable(net->user_ns, CAP_NET_RAW))
+		switch (optname) {
+		case IPV6_HOPOPTS:
+			max_len = net->ipv6.sysctl.max_hbh_opts_len;
+			max_cnt = net->ipv6.sysctl.max_hbh_opts_cnt;
 			break;
-
-		/* remove any sticky options header with a zero option
-		 * length, per RFC3542.
-		 */
-		if (optlen == 0)
-			optval = NULL;
-		else if (!optval)
-			goto e_inval;
-		else if (optlen < sizeof(struct ipv6_opt_hdr) ||
-			 optlen & 0x7 || optlen > 8 * 255)
-			goto e_inval;
-		else {
-			new = memdup_user(optval, optlen);
-			if (IS_ERR(new)) {
-				retv = PTR_ERR(new);
+		case IPV6_RTHDRDSTOPTS:
+		case IPV6_DSTOPTS:
+			max_len = net->ipv6.sysctl.max_dst_opts_len;
+			max_cnt = net->ipv6.sysctl.max_dst_opts_cnt;
 				break;
-			}
-			if (unlikely(ipv6_optlen(new) > optlen)) {
-				kfree(new);
-				goto e_inval;
-			}
 		}
 
 		opt = rcu_dereference_protected(np->opt,
 						lockdep_sock_is_held(sk));
-		opt = ipeh_renew_options(sk, opt, optname, new);
-		kfree(new);
+		opt = ipeh_txopt_from_opt(sk, &ipv6_tlv_param_table, opt,
+					  optname, optval, optlen, max_len,
+					  max_cnt);
+
 		if (IS_ERR(opt)) {
 			retv = PTR_ERR(opt);
 			break;
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
