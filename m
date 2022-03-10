Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BD64D44DA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 11:41:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B54040B43;
	Thu, 10 Mar 2022 10:41:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lbf_vOIHc8bf; Thu, 10 Mar 2022 10:41:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9D5540B3E;
	Thu, 10 Mar 2022 10:41:43 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D6B61BF293
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 10:41:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E77684375
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 10:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DYXazziEEPN4 for <intel-wired-lan@osuosl.org>;
 Thu, 10 Mar 2022 10:41:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA5228431C
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 10:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646908894; x=1678444894;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nVm/75lvB8HixhCAwyRx2qzKrk6O1TWidP8pD9CRPsg=;
 b=a1eH06Oc73iYRZ3iMcGMRAX5JKqUzrksuj89YX2G06QKRF9wUvzg5I2h
 w0dyuXSHKwnECwnXD57xvMVlFkpuRtpn1JKfDBQaklz7JTh1fvhwSN18f
 J04NylilCVrQk0q0ihEVY0VbiI0yt9ftYQOn94wZHpFebtgby0TIBoxFX
 8fPwtGRwJKEugqiVVXlo3kjuWsVoR4bHDTtIUqpMtW713qGO7EFXESEkI
 OWiEsxPAMT4KlxzKqk7lGgJC4DwHuj1sV7yUpw/iENelf90yVhVg4GI37
 u96MDSnHgy1k5J4eNOs0Nx8rmDI+nM5oRYzIp5JGW6vPn8RxFEsm7awRd w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="315936275"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="315936275"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 02:41:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="632948044"
Received: from msu-dell.jf.intel.com ([10.166.233.5])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Mar 2022 02:41:33 -0800
From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 10 Mar 2022 02:39:58 -0800
Message-Id: <20220310103959.369773-2-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220310103959.369773-1-sudheer.mogilappagari@intel.com>
References: <20220310103959.369773-1-sudheer.mogilappagari@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v4 1/2] devlink: Allow parameter
 registration/unregistration during runtime
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sridhar Samudrala <sridhar.samudrala@intel.com>

commit 7a690ad499e7 ("devlink: Clean not-executed param notifications")
added ASSERTs and removed notifications when devlink parameters are
registered by the drivers after the associated devlink instance is
already registered.
The next patch in this series adds a feature in 'ice' driver that is
only enabled when ADQ queue groups are created and introduces a
devlink parameter to configure this feature per queue group.

To allow dynamic parameter registration/unregistration during runtime,
revert the changes added by the above commit.

Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
---
 net/core/devlink.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/net/core/devlink.c b/net/core/devlink.c
index fcd9f6d85cf1..d09f2aa4f48f 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -4724,7 +4724,6 @@ static void devlink_param_notify(struct devlink *devlink,
 	WARN_ON(cmd != DEVLINK_CMD_PARAM_NEW && cmd != DEVLINK_CMD_PARAM_DEL &&
 		cmd != DEVLINK_CMD_PORT_PARAM_NEW &&
 		cmd != DEVLINK_CMD_PORT_PARAM_DEL);
-	ASSERT_DEVLINK_REGISTERED(devlink);
 
 	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 	if (!msg)
@@ -10120,8 +10119,6 @@ int devlink_params_register(struct devlink *devlink,
 	const struct devlink_param *param = params;
 	int i, err;
 
-	ASSERT_DEVLINK_NOT_REGISTERED(devlink);
-
 	for (i = 0; i < params_count; i++, param++) {
 		err = devlink_param_register(devlink, param);
 		if (err)
@@ -10152,8 +10149,6 @@ void devlink_params_unregister(struct devlink *devlink,
 	const struct devlink_param *param = params;
 	int i;
 
-	ASSERT_DEVLINK_NOT_REGISTERED(devlink);
-
 	for (i = 0; i < params_count; i++, param++)
 		devlink_param_unregister(devlink, param);
 }
@@ -10173,8 +10168,6 @@ int devlink_param_register(struct devlink *devlink,
 {
 	struct devlink_param_item *param_item;
 
-	ASSERT_DEVLINK_NOT_REGISTERED(devlink);
-
 	WARN_ON(devlink_param_verify(param));
 	WARN_ON(devlink_param_find_by_name(&devlink->param_list, param->name));
 
@@ -10190,6 +10183,7 @@ int devlink_param_register(struct devlink *devlink,
 	param_item->param = param;
 
 	list_add_tail(&param_item->list, &devlink->param_list);
+	devlink_param_notify(devlink, 0, param_item, DEVLINK_CMD_PARAM_NEW);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(devlink_param_register);
@@ -10204,11 +10198,10 @@ void devlink_param_unregister(struct devlink *devlink,
 {
 	struct devlink_param_item *param_item;
 
-	ASSERT_DEVLINK_NOT_REGISTERED(devlink);
-
 	param_item =
 		devlink_param_find_by_name(&devlink->param_list, param->name);
 	WARN_ON(!param_item);
+	devlink_param_notify(devlink, 0, param_item, DEVLINK_CMD_PARAM_DEL);
 	list_del(&param_item->list);
 	kfree(param_item);
 }
@@ -10268,8 +10261,6 @@ int devlink_param_driverinit_value_set(struct devlink *devlink, u32 param_id,
 {
 	struct devlink_param_item *param_item;
 
-	ASSERT_DEVLINK_NOT_REGISTERED(devlink);
-
 	param_item = devlink_param_find_by_id(&devlink->param_list, param_id);
 	if (!param_item)
 		return -EINVAL;
@@ -10283,6 +10274,7 @@ int devlink_param_driverinit_value_set(struct devlink *devlink, u32 param_id,
 	else
 		param_item->driverinit_value = init_val;
 	param_item->driverinit_value_valid = true;
+	devlink_param_notify(devlink, 0, param_item, DEVLINK_CMD_PARAM_NEW);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(devlink_param_driverinit_value_set);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
