Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D8857D5B6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 23:15:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D044960BED;
	Thu, 21 Jul 2022 21:15:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D044960BED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658438150;
	bh=KsV/yiwE/PfgnYSoTeTDuvgjZKtSbPUP+/EHRd6O4JA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SqNkdb9W9F1R1YfhQDfofZI5M0hUxfWRvqrO9kOZIv3RRJ1RgoIV5iw42VjHB02yN
	 mm/Fktncj797rzrKhIug/hDgBIH44ljafOQjVCXCuK4DzrsOWmVUygQiJ59zSQpkpP
	 shAn/mWyxUD+5TR3t6v3Hqr6f7qfZ3lT1fSstX4b3iK8RI5Cpo8/oEbSF19wlHUT/w
	 6DP81ftE6esE/Byv1M5LzTfVDVZ+qTJS5rEYxIjx7vQ/zz9odDUiqpi3tioCF+9kpm
	 kxHNMzZbvyVJ0ol02EDf2XQT7+lZJiNK+/UG852UINUdyOwg6c8fSzqo4JjBmpNsHw
	 prjR9NEAP6muQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id umXMiO_gr_Un; Thu, 21 Jul 2022 21:15:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B416260BE9;
	Thu, 21 Jul 2022 21:15:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B416260BE9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DAD491BF375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:15:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B3DE3818CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3DE3818CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oAU51xmkRB7T for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 21:15:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3F02818C9
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3F02818C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:15:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="284729034"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="284729034"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:15:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="925816223"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:15:00 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 21 Jul 2022 14:14:50 -0700
Message-Id: <20220721211451.2475600-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
In-Reply-To: <20220721211451.2475600-1-jacob.e.keller@intel.com>
References: <20220721211451.2475600-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658438142; x=1689974142;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/DbLDxdU8oHRtgWd+kF8AfuKz6dLM/ogY++Th6kdzbU=;
 b=PW2vn7EJnZHYQcja44egvREkNVVP8Feqcqzh9eUPDEai4zrWnM7a+TRf
 dWj0SncAAwzh3MsSlT2Fb0L77N0L21MWLvSE1WNEHHxILCndejjt3Xloh
 oxdxCIi09uS5nZcO0vMa3vBE77VK/IcTbYqwpgWXsmHJZ5c2yAYDNT/bd
 9yoAGfC8Wurmz6cmWfToa0nyQCqbZYwLDGQTOkjm7YQYw40CrA2sfOrrG
 GwCDYHQC6XhFSrft/BXal3IezhhkLV/y7vFWGUs0VxoOwp3gTQYup7H21
 CUqBXWTDOXWzsiFfTp0pmPhjqJfkmHO08Iyieq+I+v1yW1BWrtpu4jaxF
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PW2vn7EJ
Subject: [Intel-wired-lan] [iproute2-next v2 2/3] mnlg: add function to get
 CTRL_ATTR_MAXATTR value
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
Cc: Jonathan Corbet <corbet@lwn.net>, intel-wired-lan@lists.osuosl.org,
 David Ahern <dsahern@kernel.org>, linux-doc@vger.kernel.org,
 Stephen Hemminger <stephen@networkplumber.org>,
 Eric Dumazet <edumazet@google.com>, Jiri Pirko <jiri@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a new function to extract the CTRL_ATTR_MAXATTR attribute of the
CTRL_CMD_GETFAMILY request. This will be used to allow reading the
maximum supported devlink attribute of the running kernel in an upcoming
change.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 devlink/mnlg.c | 56 ++++++++++++++++++++++++++++++++++++++++++++++++++
 devlink/mnlg.h |  1 +
 2 files changed, 57 insertions(+)

diff --git a/devlink/mnlg.c b/devlink/mnlg.c
index e6d92742c150..348c3ff5c959 100644
--- a/devlink/mnlg.c
+++ b/devlink/mnlg.c
@@ -41,6 +41,10 @@ struct group_info {
 	const char *name;
 };
 
+struct family_info {
+	uint32_t max_attr;
+};
+
 static int parse_mc_grps_cb(const struct nlattr *attr, void *data)
 {
 	const struct nlattr **tb = data;
@@ -149,6 +153,58 @@ int mnlg_socket_group_add(struct mnlu_gen_socket *nlg, const char *group_name)
 	return 0;
 }
 
+static int get_family_attr_cb(const struct nlattr *attr, void *data)
+{
+	const struct nlattr **tb = data;
+	int type = mnl_attr_get_type(attr);
+
+	if (mnl_attr_type_valid(attr, CTRL_ATTR_MAX) < 0)
+		return MNL_CB_ERROR;
+
+	tb[type] = attr;
+	return MNL_CB_OK;
+}
+
+static int get_family_cb(const struct nlmsghdr *nlh, void *data)
+{
+	struct family_info *family = data;
+	struct nlattr *tb[CTRL_ATTR_MAX + 1] = {};
+	struct genlmsghdr *genl = mnl_nlmsg_get_payload(nlh);
+
+	mnl_attr_parse(nlh, sizeof(*genl), get_family_attr_cb, tb);
+	if (!tb[CTRL_ATTR_MAXATTR])
+		return MNL_CB_ERROR;
+
+	family->max_attr = mnl_attr_get_u32(tb[CTRL_ATTR_MAXATTR]);
+
+	return MNL_CB_OK;
+}
+
+int mnlg_socket_get_max_attr(struct mnlu_gen_socket *nlg, uint32_t *max_attr)
+{
+	struct nlmsghdr *nlh;
+	struct family_info family;
+	int err;
+
+	nlh = _mnlu_gen_socket_cmd_prepare(nlg, CTRL_CMD_GETFAMILY,
+					   NLM_F_REQUEST | NLM_F_ACK,
+					   GENL_ID_CTRL, 1);
+
+	mnl_attr_put_u16(nlh, CTRL_ATTR_FAMILY_ID, nlg->family);
+
+	err = mnlg_socket_send(nlg, nlh);
+	if (err < 0)
+		return err;
+
+	err = mnlu_gen_socket_recv_run(nlg, get_family_cb, &family);
+	if (err < 0)
+		return err;
+
+	*max_attr = family.max_attr;
+
+	return 0;
+}
+
 int mnlg_socket_get_fd(struct mnlu_gen_socket *nlg)
 {
 	return mnl_socket_get_fd(nlg->nl);
diff --git a/devlink/mnlg.h b/devlink/mnlg.h
index 24aa17566a9b..6348ad45ed26 100644
--- a/devlink/mnlg.h
+++ b/devlink/mnlg.h
@@ -18,6 +18,7 @@ struct mnlu_gen_socket;
 
 int mnlg_socket_send(struct mnlu_gen_socket *nlg, const struct nlmsghdr *nlh);
 int mnlg_socket_group_add(struct mnlu_gen_socket *nlg, const char *group_name);
+int mnlg_socket_get_max_attr(struct mnlu_gen_socket *nlg, uint32_t *max_attr);
 int mnlg_socket_get_fd(struct mnlu_gen_socket *nlg);
 
 #endif /* _MNLG_H_ */
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
