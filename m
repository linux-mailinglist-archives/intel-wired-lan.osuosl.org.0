Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE7E57D5B7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 23:15:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D13683F7E;
	Thu, 21 Jul 2022 21:15:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D13683F7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658438155;
	bh=BuIPyrftOLFAzvFlUMCmxYf7+kbXYo30IKLwZPx8lIs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H8SFhHnjViJ9ug1oLqVRRSLw9dnqfhCNuRMT+HyDdhQLll0AezcTvkhvqOyXwFkUs
	 N9Tflnq3S829GqisT9ds2shiD2NlhTCDUYNA4H2NoBjIKU826OPqW/hzt1g5aipT+j
	 PmRSGmSbDi19ylQBcow+H8BgSEqBOyavcC7Njn+IC18McJzzEyh29M/S3N9pFSiwEi
	 LWcFbl+sf8esaM2ueeig5aWuSv+I9/O1surVXsUSXEjT8V/Ih+G+e3uMd+fe1FHdBl
	 ZBsMN4rTa88lpDL2i6PXVis+c3L/Z1xR96XSXaHm2V5Hppo4kKxEldL76dhkbLNiOD
	 uQeUQyGeE7pJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BmHMKuGC5akL; Thu, 21 Jul 2022 21:15:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8351818CD;
	Thu, 21 Jul 2022 21:15:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8351818CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 345D81BF375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C2A0818C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C2A0818C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IHraVgypOHdc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 21:15:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5284084044
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5284084044
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:15:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="284729052"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="284729052"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:15:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="925816231"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:15:00 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 21 Jul 2022 14:14:51 -0700
Message-Id: <20220721211451.2475600-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
In-Reply-To: <20220721211451.2475600-1-jacob.e.keller@intel.com>
References: <20220721211451.2475600-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658438142; x=1689974142;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JTYY8pXomkr33uAzR8NUoGnMEQAn0y7xlGD+FEpwqEQ=;
 b=G8XpT71+3rjGjEzBQJQQPGF/oJNkiW8fh65q+XzjNvQTBk53yfpnteDS
 KCaDZiR4wf+UIH0s34BnE1mEvOVFjx9/O4PrPEkxuObOeuDhyFiWpty7K
 3U8mFTGCTUcSL+ffMFc2su+oV8RRjgxZkVIXFgl867727izkgBAQmjkpj
 sDDm+o7ihitRxy4zGPNxHbNjN+HiOzuFW7c9QBANc6zE1NvP8e4UqwuW6
 utzbDL8h5VJ4nvm6pB7FABsFLH47+iz+kTanP0YSQAsQMcdMsKqJmCMXt
 cZP0QEjvkEpSfVPMH4/sS4m+O87EC7E6oigYeFg73+Baksj2dFQKVsHUM
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G8XpT71+
Subject: [Intel-wired-lan] [iproute2-next v2 3/3] devlink: add dry run
 attribute support to devlink flash
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

Recent versions of the kernel support the DEVLINK_ATTR_DRY_RUN attribute
which allows requesting a dry run of a command. A dry run is simply
a request to validate that a command would work, without performing any
destructive changes.

The attribute is supported by the devlink flash update as a way to
validate an update, including potentially the binary image, without
modifying the device.

Add a "dry_run" option to the command line parsing which will enable
this attribute when requested.

To avoid potential issues, only allow the attribute to be added to
commands when the kernel recognizes it. This is important because some
commands do not perform strict validation. If we were to add the
attribute without this check, an old kernel may silently accept the
command and perform an update even when dry_run was requested.

Before adding the attribute, check the maximum attribute from the
CTRL_CMD_GETFAMILY and make sure that the kernel recognizes the
DEVLINK_ATTR_DRY_RUN attribute.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v1
* Make dl_kernel_supports_dry_run more generic by passing attribute

 devlink/devlink.c | 45 +++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 43 insertions(+), 2 deletions(-)

diff --git a/devlink/devlink.c b/devlink/devlink.c
index 1e2cfc3d4285..24f1a70a9656 100644
--- a/devlink/devlink.c
+++ b/devlink/devlink.c
@@ -296,6 +296,7 @@ static void ifname_map_free(struct ifname_map *ifname_map)
 #define DL_OPT_PORT_FN_RATE_PARENT	BIT(51)
 #define DL_OPT_LINECARD		BIT(52)
 #define DL_OPT_LINECARD_TYPE	BIT(53)
+#define DL_OPT_DRY_RUN			BIT(54)
 
 struct dl_opts {
 	uint64_t present; /* flags of present items */
@@ -372,6 +373,8 @@ struct dl {
 	bool verbose;
 	bool stats;
 	bool hex;
+	bool max_attr_valid;
+	uint32_t max_attr;
 	struct {
 		bool present;
 		char *bus_name;
@@ -701,6 +704,7 @@ static const enum mnl_attr_data_type devlink_policy[DEVLINK_ATTR_MAX + 1] = {
 	[DEVLINK_ATTR_LINECARD_STATE] = MNL_TYPE_U8,
 	[DEVLINK_ATTR_LINECARD_TYPE] = MNL_TYPE_STRING,
 	[DEVLINK_ATTR_LINECARD_SUPPORTED_TYPES] = MNL_TYPE_NESTED,
+	[DEVLINK_ATTR_DRY_RUN] = MNL_TYPE_FLAG,
 };
 
 static const enum mnl_attr_data_type
@@ -1522,6 +1526,30 @@ static int dl_args_finding_required_validate(uint64_t o_required,
 	return 0;
 }
 
+static void dl_get_max_attr(struct dl *dl)
+{
+	if (!dl->max_attr_valid) {
+		uint32_t max_attr;
+		int err;
+
+		err = mnlg_socket_get_max_attr(&dl->nlg, &max_attr);
+		if (err) {
+			pr_err("Unable to determine maximum supported devlink attribute\n");
+			return;
+		}
+
+		dl->max_attr = max_attr;
+		dl->max_attr_valid = true;
+	}
+}
+
+static bool dl_kernel_supports_attr(struct dl *dl, enum devlink_attr attr)
+{
+	dl_get_max_attr(dl);
+
+	return (dl->max_attr_valid && dl->max_attr >= attr);
+}
+
 static int dl_argv_parse(struct dl *dl, uint64_t o_required,
 			 uint64_t o_optional)
 {
@@ -2037,6 +2065,16 @@ static int dl_argv_parse(struct dl *dl, uint64_t o_required,
 			dl_arg_inc(dl);
 			opts->linecard_type = "";
 			o_found |= DL_OPT_LINECARD_TYPE;
+		} else if (dl_argv_match(dl, "dry_run") &&
+			   (o_all & DL_OPT_DRY_RUN)) {
+
+			if (!dl_kernel_supports_attr(dl, DEVLINK_ATTR_DRY_RUN)) {
+				pr_err("Kernel does not support dry_run attribute\n");
+				return -EOPNOTSUPP;
+			}
+
+			dl_arg_inc(dl);
+			o_found |= DL_OPT_DRY_RUN;
 		} else {
 			pr_err("Unknown option \"%s\"\n", dl_argv(dl));
 			return -EINVAL;
@@ -2115,6 +2153,8 @@ static void dl_opts_put(struct nlmsghdr *nlh, struct dl *dl)
 		mnl_attr_put_strz(nlh, DEVLINK_ATTR_RATE_NODE_NAME,
 				  opts->rate_node_name);
 	}
+	if (opts->present & DL_OPT_DRY_RUN)
+		mnl_attr_put(nlh, DEVLINK_ATTR_DRY_RUN, 0, NULL);
 	if (opts->present & DL_OPT_PORT_TYPE)
 		mnl_attr_put_u16(nlh, DEVLINK_ATTR_PORT_TYPE,
 				 opts->port_type);
@@ -2326,7 +2366,7 @@ static void cmd_dev_help(void)
 	pr_err("       devlink dev reload DEV [ netns { PID | NAME | ID } ]\n");
 	pr_err("                              [ action { driver_reinit | fw_activate } ] [ limit no_reset ]\n");
 	pr_err("       devlink dev info [ DEV ]\n");
-	pr_err("       devlink dev flash DEV file PATH [ component NAME ] [ overwrite SECTION ]\n");
+	pr_err("       devlink dev flash DEV file PATH [ component NAME ] [ overwrite SECTION ] [ dry_run ]\n");
 }
 
 static bool cmp_arr_last_handle(struct dl *dl, const char *bus_name,
@@ -3886,7 +3926,8 @@ static int cmd_dev_flash(struct dl *dl)
 			       NLM_F_REQUEST | NLM_F_ACK);
 
 	err = dl_argv_parse_put(nlh, dl, DL_OPT_HANDLE | DL_OPT_FLASH_FILE_NAME,
-				DL_OPT_FLASH_COMPONENT | DL_OPT_FLASH_OVERWRITE);
+				DL_OPT_FLASH_COMPONENT | DL_OPT_FLASH_OVERWRITE |
+				DL_OPT_DRY_RUN);
 	if (err)
 		return err;
 
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
