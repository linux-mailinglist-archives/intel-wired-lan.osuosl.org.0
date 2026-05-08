Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qF7pN0ne/Wn0jwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 14:59:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5CB4F6ACD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 14:59:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD3E640F8C;
	Fri,  8 May 2026 12:59:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E3UpLcL757IW; Fri,  8 May 2026 12:59:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D136B40F5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778245188;
	bh=F5FnkXHSPZ/YAL8xpK6mkTE8WKR4BG1hdPs6xRFgCYU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B6qXyC7jvua78m15lBuWcJfQ4/xjSYoai8kOgmlhFlg2CoNgWOlp0dof9DLVJHm10
	 rI4ikAk7aUuh8gqCaE5wvfQnAlYrt0xtohtb84+ijPEMNzxNmcA1YX6vfpY8P7Gac0
	 ixMLLstASWVQqcW0jB9L5reEhgeBqWR928r6e8Ae6mwjU/FTOC7PvH2WXOPd9AZmb2
	 CX4TdlZwcuCiJANUwSINxkM9Wo/QdaN6h9X+H6bmovOWgDuB4yMCfItG/ayfV8aWvl
	 salx1OEcW7N4cKuXBa1iIzUdhjZRpClb1UjEH3CI0ZQ4UMrsySRy7qG6u/jziKxj6Y
	 4ce8mW689HU7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D136B40F5D;
	Fri,  8 May 2026 12:59:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 227A8317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C377640E37
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lwqxn286oC4B for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 12:59:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C766F40E67
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C766F40E67
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C766F40E67
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:43 +0000 (UTC)
X-CSE-ConnectionGUID: JemHlPfEQluLXq36qf6OvQ==
X-CSE-MsgGUID: Ryv0zTDBSFG1O8iqQ65v6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79199861"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79199861"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:59:43 -0700
X-CSE-ConnectionGUID: gacRS5sDToWF1t7ZyymUoQ==
X-CSE-MsgGUID: sGDyEB+NS9yAvETiJTNZ9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241730093"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2026 05:59:38 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 01B0628798;
 Fri,  8 May 2026 13:59:35 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Michal Schmidt <mschmidt@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 bruce.richardson@intel.com,
 Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 padraig.j.connolly@intel.com, ananth.s@intel.com,
 timothy.miskell@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri,  8 May 2026 14:41:54 +0200
Message-Id: <20260508124208.11622-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778245184; x=1809781184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cIgqFDuYpmAQ9O9mjXlj0JybX6yCopnWD3DhBhD2jzA=;
 b=XDc7Y4dgy0ChQ9nWSqg/Z1+WpkNO9CloPCPG3kIvA5AygGL8B2lto1Ze
 MA+6XPThW/QMyoF8h7Gd0GLLVLuSzgsfKJbgU7z2dB0Y+pyaszS+uHvnT
 ZKqgDo2Nykayi8+e+JeKmgdpGQNOpPz5UN9VOpetaPYN+0viXeczQKS+p
 IF5Ghh5MTboRIEngiwA5N3DfrRLrTZPZBt/RQrOYmpTBMwKc2WFmybvi7
 QjoodVr9jkU0pA3HLxdpiVIr3s7peShxy4WUo03QdTVN+ycmGoG+r240Q
 A3VvdljNLwYoWKKT3VU4Is3Sjkhe6nTA13PDgwOkJOw5m6NgLxrMeupNU
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XDc7Y4dg
Subject: [Intel-wired-lan] [PATCH iwl-next v1 01/15] devlink,
 mlx5: add init/fini ops for shared devlink
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
X-Rspamd-Queue-Id: 5E5CB4F6ACD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.969];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Add .shd_init() and .shd_fini() ops, that will be called for the first
devlink_shd_get() (to initialize driver' priv data) and on the last
devlink_shd_put() (to allow for the cleanup). Both ops are optional.

.shd_init() could return an error, which will stop creation of shd
instance. The initializer also gets an additional, optional param,
that driver could use for any needs.

If any of the callbacks will need to get devlink instance, it could
be accessed by shd_priv_to_devlink().

Both callbacks are called with devl_lock held and devlink registered.

Next commit will make use of the callbacks, another one will make use also
of the non-null additional param (outside of this series).

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
(v0) first discussed at:
https://lore.kernel.org/netdev/20260325063143.261806-3-przemyslaw.kitszel@intel.com

v1: remove redundant added blank line (Jiri)
---
 include/net/devlink.h                         | 26 +++++++++++++
 .../ethernet/mellanox/mlx5/core/sh_devlink.c  |  2 +-
 net/devlink/sh_dev.c                          | 38 ++++++++++++++++++-
 3 files changed, 63 insertions(+), 3 deletions(-)

diff --git a/include/net/devlink.h b/include/net/devlink.h
index bcd31de1f890..5d3a1337bfa1 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -1586,6 +1586,30 @@ struct devlink_ops {
 				    struct devlink_rate *parent,
 				    void *priv_child, void *priv_parent,
 				    struct netlink_ext_ack *extack);
+
+	/**
+	 * shd_init: Shared devlink instance initializer
+	 * @priv: shd_devlink' priv
+	 * @init_param: additional param to pass to driver callback
+	 *
+	 * Called once when the shared instance is first created (by the first
+	 * devlink_shd_get() call).
+	 * Should initialize the driver's private data embedded in the shared
+	 * devlink. May be NULL.
+	 *
+	 * Return: 0 on success, negative to prevent shared instance usage.
+	 */
+	int (*shd_init)(void *priv, void *init_param);
+	/**
+	 * shd_fini: Shared devlink instance finalizer
+	 * @priv: shd_devlink' priv
+	 *
+	 * Called once when the last reference is dropped and the shared
+	 * instance is destroyed. Should clean up the driver's private data.
+	 * May be NULL.
+	 */
+	void (*shd_fini)(void *priv);
+
 	/**
 	 * selftests_check() - queries if selftest is supported
 	 * @devlink: devlink instance
@@ -1651,9 +1675,11 @@ void devlink_free(struct devlink *devlink);
 struct devlink *devlink_shd_get(const char *id,
 				const struct devlink_ops *ops,
 				size_t priv_size,
+				void *init_param,
 				const struct device_driver *driver);
 void devlink_shd_put(struct devlink *devlink);
 void *devlink_shd_get_priv(struct devlink *devlink);
+struct devlink *shd_priv_to_devlink(void *priv);
 
 /**
  * struct devlink_port_ops - Port operations
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/sh_devlink.c b/drivers/net/ethernet/mellanox/mlx5/core/sh_devlink.c
index b925364765ac..1b8b1ce7e72d 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/sh_devlink.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/sh_devlink.c
@@ -43,7 +43,7 @@ int mlx5_shd_init(struct mlx5_core_dev *dev)
 	*end = '\0';
 
 	/* Get or create shared devlink instance */
-	devlink = devlink_shd_get(sn, &mlx5_shd_ops, 0, pdev->dev.driver);
+	devlink = devlink_shd_get(sn, &mlx5_shd_ops, 0, NULL, pdev->dev.driver);
 	kfree(sn);
 	if (!devlink)
 		return -ENOMEM;
diff --git a/net/devlink/sh_dev.c b/net/devlink/sh_dev.c
index 85acce97e788..7b9520d3f946 100644
--- a/net/devlink/sh_dev.c
+++ b/net/devlink/sh_dev.c
@@ -34,6 +34,7 @@ static struct devlink_shd *devlink_shd_lookup(const char *id)
 static struct devlink_shd *devlink_shd_create(const char *id,
 					      const struct devlink_ops *ops,
 					      size_t priv_size,
+					      void *init_param,
 					      const struct device_driver *driver)
 {
 	struct devlink_shd *shd;
@@ -49,16 +50,30 @@ static struct devlink_shd *devlink_shd_create(const char *id,
 	if (!shd->id)
 		goto err_devlink_free;
 	shd->priv_size = priv_size;
-	refcount_set(&shd->refcount, 1);
 
 	devl_lock(devlink);
 	devl_register(devlink);
+
+	if (ops->shd_init) {
+		int err;
+
+		err = ops->shd_init(shd->priv, init_param);
+		if (err)
+			goto err_unregister;
+	}
+
 	devl_unlock(devlink);
 
+	refcount_set(&shd->refcount, 1);
 	list_add_tail(&shd->list, &shd_list);
 
 	return shd;
 
+err_unregister:
+	devl_unregister(devlink);
+	devl_unlock(devlink);
+	kfree(shd->id);
+
 err_devlink_free:
 	devlink_free(devlink);
 	return NULL;
@@ -70,6 +85,10 @@ static void devlink_shd_destroy(struct devlink_shd *shd)
 
 	list_del(&shd->list);
 	devl_lock(devlink);
+
+	if (devlink->ops->shd_fini)
+		devlink->ops->shd_fini(shd->priv);
+
 	devl_unregister(devlink);
 	devl_unlock(devlink);
 	kfree(shd->id);
@@ -81,6 +100,7 @@ static void devlink_shd_destroy(struct devlink_shd *shd)
  * @id: Identifier string (e.g., serial number) for the shared instance
  * @ops: Devlink operations structure
  * @priv_size: Size of private data structure
+ * @init_param: Passed to .shd_init() callback alongside driver's priv
  * @driver: Driver associated with the shared devlink instance
  *
  * Get an existing shared devlink instance identified by @id, or create
@@ -96,16 +116,17 @@ static void devlink_shd_destroy(struct devlink_shd *shd)
 struct devlink *devlink_shd_get(const char *id,
 				const struct devlink_ops *ops,
 				size_t priv_size,
+				void *init_param,
 				const struct device_driver *driver)
 {
 	struct devlink *devlink;
 	struct devlink_shd *shd;
 
 	mutex_lock(&shd_mutex);
 
 	shd = devlink_shd_lookup(id);
 	if (!shd) {
-		shd = devlink_shd_create(id, ops, priv_size, driver);
+		shd = devlink_shd_create(id, ops, priv_size, init_param, driver);
 		goto unlock;
 	}
 
@@ -159,3 +180,16 @@ void *devlink_shd_get_priv(struct devlink *devlink)
 	return shd->priv;
 }
 EXPORT_SYMBOL_GPL(devlink_shd_get_priv);
+
+/** shd_priv_to_devlink - Get devlink instance from shd_devlink's priv
+ * @priv: Driver's priv data
+ *
+ * Return: pointer to shared devlink instance the @priv belongs to.
+ */
+struct devlink *shd_priv_to_devlink(void *priv)
+{
+	struct devlink_shd *shd = container_of(priv, struct devlink_shd, priv);
+
+	return priv_to_devlink(shd);
+}
+EXPORT_SYMBOL_GPL(shd_priv_to_devlink);
-- 
2.39.3

