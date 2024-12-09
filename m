Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E65F9E9638
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Dec 2024 14:15:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8901260813;
	Mon,  9 Dec 2024 13:15:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZMW3_e4-VVC1; Mon,  9 Dec 2024 13:15:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B21F760775
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733750150;
	bh=v3/ZpohfjQU2d+BXYBF2zMim3CaBzCzIIwk78cCTeE4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b5Tccrtgik8BmJYp0Z/shy6MM7oWBLSq4SlM2s2e/FEcBj2/F/VX9j7SWGT24GIyE
	 GQt8kk77CePzggiT3o8qdshW8cEc5Fh1iA7faIYhMY2hx5MTb2g/e7MmyVy1rbdUh4
	 +1NIxGYNZvW6XvGtdYjxuGRIYU87FG8EGz0g/3o+2a4cCdgDM26G9kU4WT1x9eHf6+
	 HUMdgwBi7jHWZstgURTwBOH/wCgJpT+CBjOsHrVz9L1dV6I1NubYF9XScso5ncGk3S
	 5ubc/d9T6VcN9daRELacqffa99f4OU8dBDfJNkALZN1v4MzyEOx/tnFHgP4OJ2/rQ+
	 xK3WIYF0Tebhw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B21F760775;
	Mon,  9 Dec 2024 13:15:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A7038ED2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 13:15:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 56CB940025
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 13:15:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oWo1PNt0v9HR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Dec 2024 13:15:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5167440481
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5167440481
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5167440481
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 13:15:46 +0000 (UTC)
X-CSE-ConnectionGUID: gHL07LMOTQ2st+aZb6bxSw==
X-CSE-MsgGUID: dQGKrGO0QES+lVWgrSuWnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="33387394"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="33387394"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 05:15:41 -0800
X-CSE-ConnectionGUID: UKfRcj1bRry421aJgA28cw==
X-CSE-MsgGUID: IcJA3SvdRdqnR91lDfBr9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="94934936"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa009.jf.intel.com with ESMTP; 09 Dec 2024 05:15:38 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: netdev@vger.kernel.org, andrew+netdev@lunn.ch, horms@kernel.org,
 jiri@resnulli.us, stephen@networkplumber.org
Cc: anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Mon,  9 Dec 2024 14:14:52 +0100
Message-ID: <20241209131450.137317-4-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241209131450.137317-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20241209131450.137317-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733750146; x=1765286146;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o57EDAoNco0z5xP4oDUg/FTLA9YTPNTs5M4lwaRDGnM=;
 b=Hr0QLRTRROfihF0geLi6NqMqN2cULwlmoTFM4Ft5pMiPQ30cBytlgt3y
 XD7CDZF/5tc1ZueA55eBCTCtY3nzcUkydW6rqzLO9nvQpjKjsvZ+EUH1y
 9MiulyR/vM3X/at2XAyDOc+Nt0zhs4j8NWPkSySDNXB+pK3A92PMcMIPf
 NQ2xVL2wKbZbUJFT+2dHoIvwpH5HZ+jjUxomLaq5XwZUuByGvAtv7aqRB
 w/ZBoTVn+tj6u9qryL0Ge4HB7g04/E39aMHT1gJB8TOnd9wK8LVA9KK7f
 yxIPSfQVkiZRI//xNWFy3gZt2U0Ce8jNQ37ZWfOo7pv/XIN1C3D7eePi6
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hr0QLRTR
Subject: [Intel-wired-lan] [RFC 1/1] devlink: add new devlink lock-firmware
 command
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce a new lock-firmware command to the devlink API,
providing a mechanism to enforce secure firmware versions at the user's request.
The lock-firmware command invokes a driver-implemented callback,
allowing hardware vendors to implement a mechanism for the specific
hardware to block undesirable firmware downgrades possibilities.
This ensures that firmware downgrades, which could expose devices
to known vulnerabilities, are prevented in security-sensitive deployments.

Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
Note: This is only RFC draft. As expected, the code that should be
automatically generated will eventually not be manually entered here.
Documentation will be added.
---
 include/net/devlink.h        |  2 ++
 include/uapi/linux/devlink.h |  2 ++
 net/devlink/dev.c            | 13 +++++++++++++
 net/devlink/netlink_gen.c    | 18 +++++++++++++++++-
 net/devlink/netlink_gen.h    |  4 +++-
 5 files changed, 37 insertions(+), 2 deletions(-)

diff --git a/include/net/devlink.h b/include/net/devlink.h
index d5da362ea321..1b19f7c4550b 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -1354,6 +1354,8 @@ struct devlink_ops {
 	int (*flash_update)(struct devlink *devlink,
 			    struct devlink_flash_update_params *params,
 			    struct netlink_ext_ack *extack);
+	int (*lock_firmware)(struct devlink *devlink,
+				   struct netlink_ext_ack *extack);
 	/**
 	 * @trap_init: Trap initialization function.
 	 *
diff --git a/include/uapi/linux/devlink.h b/include/uapi/linux/devlink.h
index 9401aa343673..8f37cef858e2 100644
--- a/include/uapi/linux/devlink.h
+++ b/include/uapi/linux/devlink.h
@@ -141,6 +141,8 @@ enum devlink_command {
 
 	DEVLINK_CMD_NOTIFY_FILTER_SET,
 
+	DEVLINK_CMD_LOCK_FIRMWARE,
+
 	/* add new commands above here */
 	__DEVLINK_CMD_MAX,
 	DEVLINK_CMD_MAX = __DEVLINK_CMD_MAX - 1
diff --git a/net/devlink/dev.c b/net/devlink/dev.c
index d6e3db300acb..7bb7617a8080 100644
--- a/net/devlink/dev.c
+++ b/net/devlink/dev.c
@@ -1440,3 +1440,16 @@ int devlink_nl_selftests_run_doit(struct sk_buff *skb, struct genl_info *info)
 	nlmsg_free(msg);
 	return err;
 }
+
+int devlink_nl_lock_firmware_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	struct devlink *devlink = info->user_ptr[0];
+	int ret;
+
+	if (!devlink->ops->lock_firmware)
+		return -EOPNOTSUPP;
+
+	ret = devlink->ops->lock_firmware(devlink, info->extack);
+
+	return ret;
+}
diff --git a/net/devlink/netlink_gen.c b/net/devlink/netlink_gen.c
index f9786d51f68f..2d12fb09ad48 100644
--- a/net/devlink/netlink_gen.c
+++ b/net/devlink/netlink_gen.c
@@ -567,8 +567,14 @@ static const struct nla_policy devlink_notify_filter_set_nl_policy[DEVLINK_ATTR_
 	[DEVLINK_ATTR_PORT_INDEX] = { .type = NLA_U32, },
 };
 
+/* DEVLINK_CMD_LOCK_FIRMWARE - do */
+static const struct nla_policy devlink_lock_firmware_nl_policy[DEVLINK_ATTR_DEV_NAME + 1] = {
+	[DEVLINK_ATTR_BUS_NAME] = { .type = NLA_NUL_STRING, },
+	[DEVLINK_ATTR_DEV_NAME] = { .type = NLA_NUL_STRING, },
+};
+
 /* Ops table for devlink */
-const struct genl_split_ops devlink_nl_ops[74] = {
+const struct genl_split_ops devlink_nl_ops[75] = {
 	{
 		.cmd		= DEVLINK_CMD_GET,
 		.validate	= GENL_DONT_VALIDATE_STRICT,
@@ -1247,4 +1253,14 @@ const struct genl_split_ops devlink_nl_ops[74] = {
 		.maxattr	= DEVLINK_ATTR_PORT_INDEX,
 		.flags		= GENL_CMD_CAP_DO,
 	},
+	{
+		.cmd		= DEVLINK_CMD_LOCK_FIRMWARE,
+		.validate	= GENL_DONT_VALIDATE_STRICT,
+		.pre_doit	= devlink_nl_pre_doit,
+		.doit		= devlink_nl_lock_firmware_doit,
+		.post_doit	= devlink_nl_post_doit,
+		.policy		= devlink_lock_firmware_nl_policy,
+		.maxattr	= DEVLINK_ATTR_DEV_NAME,
+		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
+	},
 };
diff --git a/net/devlink/netlink_gen.h b/net/devlink/netlink_gen.h
index 8f2bd50ddf5e..f0129da6a81b 100644
--- a/net/devlink/netlink_gen.h
+++ b/net/devlink/netlink_gen.h
@@ -16,7 +16,7 @@ extern const struct nla_policy devlink_dl_port_function_nl_policy[DEVLINK_PORT_F
 extern const struct nla_policy devlink_dl_selftest_id_nl_policy[DEVLINK_ATTR_SELFTEST_ID_FLASH + 1];
 
 /* Ops table for devlink */
-extern const struct genl_split_ops devlink_nl_ops[74];
+extern const struct genl_split_ops devlink_nl_ops[75];
 
 int devlink_nl_pre_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
 			struct genl_info *info);
@@ -144,5 +144,7 @@ int devlink_nl_selftests_get_dumpit(struct sk_buff *skb,
 int devlink_nl_selftests_run_doit(struct sk_buff *skb, struct genl_info *info);
 int devlink_nl_notify_filter_set_doit(struct sk_buff *skb,
 				      struct genl_info *info);
+int devlink_nl_lock_firmware_doit(struct sk_buff *skb,
+				  struct genl_info *info);
 
 #endif /* _LINUX_DEVLINK_GEN_H */
-- 
2.47.0

