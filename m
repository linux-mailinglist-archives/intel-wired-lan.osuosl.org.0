Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D00954164EA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Sep 2021 20:13:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69A2E415B9;
	Thu, 23 Sep 2021 18:13:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PDa_r_V70zje; Thu, 23 Sep 2021 18:13:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FEA641597;
	Thu, 23 Sep 2021 18:13:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 45EB51BF389
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3396640113
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6l-6ddBUepgm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Sep 2021 18:13:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 857B6401B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7D4FE61241;
 Thu, 23 Sep 2021 18:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632420789;
 bh=hhGo+2kBrCwffbr0G/1kKyCktxsPkO5rYb4FUUgdUp4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oy1rxmMV33ee4OBVTxYvez+g0iyaEVjoxxgkMYmqShbH1Yg6AJbh+rpPJ4tsG7xSm
 VaV/c7vi19v4xaesDvpYOtdstlr5lLncmKD2qLVsEFhrVQ862TN5jgKG+XAhjCsOPX
 Z8hj4I9DNjbqYIcU1P/vscwF+5aav4RoieYN/kQrSqXOE45i8d8xObnS2MrS54H0K3
 i3UCA9ztlOsDXACvak1skahIGft6DaeKxcQpGWt67uNZmO8wB3RqRfpk/IZ064zPqa
 9O6p9BjEfVa5+AqV+JVKJXgnYVUYUmHCZeWiMyhXXC4A03FRNGTzGyCl5K4qlDI2AL
 POAzrYuGIqQwg==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Thu, 23 Sep 2021 21:12:51 +0300
Message-Id: <a56f5eece50f146ea170571a9dde24079522937f.1632420431.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632420430.git.leonro@nvidia.com>
References: <cover.1632420430.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 4/6] devlink: Remove single line
 function obfuscations
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
Cc: Igor Russkikh <irusskikh@marvell.com>, Alexander Lobakin <alobakin@pm.me>,
 Javed Hasan <jhasan@marvell.com>,
 Michal Kalderon <michal.kalderon@marvell.com>,
 Leon Romanovsky <leonro@nvidia.com>, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, Ariel Elior <aelior@marvell.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Vasundhara Volam <vasundhara-v.volam@broadcom.com>,
 Sathya Perla <sathya.perla@broadcom.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Saurav Kashyap <skashyap@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, GR-QLogic-Storage-Upstream@marvell.com,
 GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

There is no need in extra one line functions to call relevant
functions only once.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 net/core/devlink.c | 89 ++++++++++++++++++----------------------------
 1 file changed, 34 insertions(+), 55 deletions(-)

diff --git a/net/core/devlink.c b/net/core/devlink.c
index 9c071f4e609f..3ea33c689790 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -10117,13 +10117,26 @@ void devlink_params_unpublish(struct devlink *devlink)
 }
 EXPORT_SYMBOL_GPL(devlink_params_unpublish);
 
-static int
-__devlink_param_driverinit_value_get(struct list_head *param_list, u32 param_id,
-				     union devlink_param_value *init_val)
+/**
+ *	devlink_param_driverinit_value_get - get configuration parameter
+ *					     value for driver initializing
+ *
+ *	@devlink: devlink
+ *	@param_id: parameter ID
+ *	@init_val: value of parameter in driverinit configuration mode
+ *
+ *	This function should be used by the driver to get driverinit
+ *	configuration for initialization after reload command.
+ */
+int devlink_param_driverinit_value_get(struct devlink *devlink, u32 param_id,
+				       union devlink_param_value *init_val)
 {
 	struct devlink_param_item *param_item;
 
-	param_item = devlink_param_find_by_id(param_list, param_id);
+	if (!devlink_reload_supported(devlink->ops))
+		return -EOPNOTSUPP;
+
+	param_item = devlink_param_find_by_id(&devlink->param_list, param_id);
 	if (!param_item)
 		return -EINVAL;
 
@@ -10139,17 +10152,26 @@ __devlink_param_driverinit_value_get(struct list_head *param_list, u32 param_id,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(devlink_param_driverinit_value_get);
 
-static int
-__devlink_param_driverinit_value_set(struct devlink *devlink,
-				     unsigned int port_index,
-				     struct list_head *param_list, u32 param_id,
-				     union devlink_param_value init_val,
-				     enum devlink_command cmd)
+/**
+ *	devlink_param_driverinit_value_set - set value of configuration
+ *					     parameter for driverinit
+ *					     configuration mode
+ *
+ *	@devlink: devlink
+ *	@param_id: parameter ID
+ *	@init_val: value of parameter to set for driverinit configuration mode
+ *
+ *	This function should be used by the driver to set driverinit
+ *	configuration mode default value.
+ */
+int devlink_param_driverinit_value_set(struct devlink *devlink, u32 param_id,
+				       union devlink_param_value init_val)
 {
 	struct devlink_param_item *param_item;
 
-	param_item = devlink_param_find_by_id(param_list, param_id);
+	param_item = devlink_param_find_by_id(&devlink->param_list, param_id);
 	if (!param_item)
 		return -EINVAL;
 
@@ -10163,52 +10185,9 @@ __devlink_param_driverinit_value_set(struct devlink *devlink,
 		param_item->driverinit_value = init_val;
 	param_item->driverinit_value_valid = true;
 
-	devlink_param_notify(devlink, port_index, param_item, cmd);
+	devlink_param_notify(devlink, 0, param_item, DEVLINK_CMD_PARAM_NEW);
 	return 0;
 }
-
-/**
- *	devlink_param_driverinit_value_get - get configuration parameter
- *					     value for driver initializing
- *
- *	@devlink: devlink
- *	@param_id: parameter ID
- *	@init_val: value of parameter in driverinit configuration mode
- *
- *	This function should be used by the driver to get driverinit
- *	configuration for initialization after reload command.
- */
-int devlink_param_driverinit_value_get(struct devlink *devlink, u32 param_id,
-				       union devlink_param_value *init_val)
-{
-	if (!devlink_reload_supported(devlink->ops))
-		return -EOPNOTSUPP;
-
-	return __devlink_param_driverinit_value_get(&devlink->param_list,
-						    param_id, init_val);
-}
-EXPORT_SYMBOL_GPL(devlink_param_driverinit_value_get);
-
-/**
- *	devlink_param_driverinit_value_set - set value of configuration
- *					     parameter for driverinit
- *					     configuration mode
- *
- *	@devlink: devlink
- *	@param_id: parameter ID
- *	@init_val: value of parameter to set for driverinit configuration mode
- *
- *	This function should be used by the driver to set driverinit
- *	configuration mode default value.
- */
-int devlink_param_driverinit_value_set(struct devlink *devlink, u32 param_id,
-				       union devlink_param_value init_val)
-{
-	return __devlink_param_driverinit_value_set(devlink, 0,
-						    &devlink->param_list,
-						    param_id, init_val,
-						    DEVLINK_CMD_PARAM_NEW);
-}
 EXPORT_SYMBOL_GPL(devlink_param_driverinit_value_set);
 
 /**
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
