Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNVzH1N98GlSUAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 11:26:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE184815EB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 11:26:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EACB838AF;
	Tue, 28 Apr 2026 09:26:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wxAsXuwnUIsJ; Tue, 28 Apr 2026 09:26:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43A67838B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777368400;
	bh=4g5VmQV9ue4ae3D531te0HjiRpuGmKNPpczir6+dJzQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AxGJi7Co8Ed5J6NICIN35tQNA+99A7Uom67MC62CpqvyHBOcMv6kkvDkde0V/EwpT
	 KrqRairm1vT1XORhJq5EBg81ehtj90gB2uH4+Yhz8xCtOSEcBhXAwY3IpDzd86TKQg
	 L66z3E5xGgTgBngSq5HxwFuhUUHtfYmEogWm6TchQI5A6bbTgihk46wOdJYlK/Jjua
	 3rGirFK1eemSUV7QHn+CnKoDlCTXyokodYfXGl+Q/ESXkivqOZwmmKxyBm1zuSybeZ
	 sZMBKNH0x02AbqLBh2ovv3DfQYfVDwxMzSJY3/R/91VYTYq1spzMGUvtDgUSJ/a9XA
	 F6b+4n0qbxgaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43A67838B6;
	Tue, 28 Apr 2026 09:26:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A0C63231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 86DC8838AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:26:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1laZe3nqOH0H for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 09:26:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7EDF2838AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EDF2838AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7EDF2838AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:26:37 +0000 (UTC)
X-CSE-ConnectionGUID: k/GHSDDTToaBbpF6JJqO9w==
X-CSE-MsgGUID: Q7DFgpyWRYa1Z1xIuBGQ+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="103731761"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="103731761"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 02:26:37 -0700
X-CSE-ConnectionGUID: ayKi81XLStevZ5V8yU6sHA==
X-CSE-MsgGUID: W81hOHn6TvqsDImOG9nIHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="237861390"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 28 Apr 2026 02:26:33 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D68C928188;
 Tue, 28 Apr 2026 10:26:30 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 28 Apr 2026 11:09:11 +0200
Message-Id: <20260428090912.3461-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260428090912.3461-1-przemyslaw.kitszel@intel.com>
References: <20260428090912.3461-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777368398; x=1808904398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yq/s9uKlS46UrpyeneLRebLiJ7P5fmJnlmahGIHlFwI=;
 b=dj9K7sNsEAQ3/57NFQKc98oqlEoKe1T5TVrlv9qgp4fCF1aeccB1yqk8
 o1HCP1KMQzU02S4hOPE7vhFp60FPsd3VTVmpcBvK8EqOgFsmfBchz7TVM
 6NwwTfnWHVl2u+7XLwBFNjovK/Wk6et/QDzfGHZzK9w8j2hqKTKmHX3ix
 6RxmTSjYU8/Z/bUNLHMHIkKU5xW+clXMV6ErygRtDtWtAjg5ji6Iu17n5
 57xTyrwXUTfRFPyaTWQOktqcYnzBgK0YUrTPYFKCyH2fuxXWjd3XHhcHW
 X+VVmH3PuehkcbfAIDMl3oNBxF0tdom7XZFmxywQoGAfly4WD5TVZ7biW
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dj9K7sNs
Subject: [Intel-wired-lan] [PATCH net-next 1/2] devlink,
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
X-Rspamd-Queue-Id: CFE184815EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:kuba@kernel.org,m:jiri@resnulli.us,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:lukasz.czapnik@intel.com,m:jedrzej.jagielski@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]

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
first discussed at:
https://lore.kernel.org/netdev/20260325063143.261806-3-przemyslaw.kitszel@intel.com

Sashiko suggested to convert devlink_shd_create() to return ERR_PTR(),
and propagate that up to the driver. It think it will just make code more
verbose for not much benefit. And drivers could just store err if they
want in the passed @init_param.

---
 include/net/devlink.h                         | 26 +++++++++++++
 .../ethernet/mellanox/mlx5/core/sh_devlink.c  |  2 +-
 net/devlink/sh_dev.c                          | 39 ++++++++++++++++++-
 3 files changed, 64 insertions(+), 3 deletions(-)

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
index 85acce97e788..048a2a6adc9e 100644
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
@@ -69,7 +84,12 @@ static void devlink_shd_destroy(struct devlink_shd *shd)
 	struct devlink *devlink = priv_to_devlink(shd);
 
 	list_del(&shd->list);
+
 	devl_lock(devlink);
+
+	if (devlink->ops->shd_fini)
+		devlink->ops->shd_fini(shd->priv);
+
 	devl_unregister(devlink);
 	devl_unlock(devlink);
 	kfree(shd->id);
@@ -81,6 +101,7 @@ static void devlink_shd_destroy(struct devlink_shd *shd)
  * @id: Identifier string (e.g., serial number) for the shared instance
  * @ops: Devlink operations structure
  * @priv_size: Size of private data structure
+ * @init_param: Passed to .shd_init() callback alongside driver's priv
  * @driver: Driver associated with the shared devlink instance
  *
  * Get an existing shared devlink instance identified by @id, or create
@@ -96,16 +117,17 @@ static void devlink_shd_destroy(struct devlink_shd *shd)
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
 
@@ -159,3 +181,16 @@ void *devlink_shd_get_priv(struct devlink *devlink)
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

