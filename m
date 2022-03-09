Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9EC4D3B0E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Mar 2022 21:27:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6516A8431C;
	Wed,  9 Mar 2022 20:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xt0K-qE-8uHE; Wed,  9 Mar 2022 20:27:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C4A08430E;
	Wed,  9 Mar 2022 20:27:27 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9262B1BF403
 for <intel-wired-lan@osuosl.org>; Wed,  9 Mar 2022 20:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 62C7960F18
 for <intel-wired-lan@osuosl.org>; Wed,  9 Mar 2022 20:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 17F4-g4usol1 for <intel-wired-lan@osuosl.org>;
 Wed,  9 Mar 2022 20:27:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B1AA960F8C
 for <intel-wired-lan@osuosl.org>; Wed,  9 Mar 2022 20:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646857637; x=1678393637;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nVm/75lvB8HixhCAwyRx2qzKrk6O1TWidP8pD9CRPsg=;
 b=HsN2wz02WWzslwGPoZoOgqb78IgybYj+PWWYCPdJSkfq5T9pMGHcYrVc
 e62rR28bi5ouGenHU1JbTAEbdcLboJSDqnRblzJW6uZvlauABoV/Jyk4V
 B2lhCY9w4lEygF41l2bp2+fOILbOyKOow1JVg81UCd7Ebeg0iHKFFYLBX
 1AExhe95G6jRKu4W6RuXuGchT2bUTiRJhfkHIfmgdsEsaPUJ+TwOIy0nN
 1le+zHncqQ6On8kiPhMQSM0bB0wbvT44Tr5AQHrw+AaGjFJPiUFdUiy7k
 Ji4UTeVXdncPBrcymzVQNi+PBoMpxUrzwXDfE8OpIpuHqpQ40v8z0uxut A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="315802041"
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="315802041"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 12:27:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="554281933"
Received: from msu-dell.jf.intel.com ([10.166.233.5])
 by orsmga008.jf.intel.com with ESMTP; 09 Mar 2022 12:27:16 -0800
From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed,  9 Mar 2022 12:25:45 -0800
Message-Id: <20220309202546.2332118-2-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220309202546.2332118-1-sudheer.mogilappagari@intel.com>
References: <20220309202546.2332118-1-sudheer.mogilappagari@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 1/2] devlink: Allow parameter
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
