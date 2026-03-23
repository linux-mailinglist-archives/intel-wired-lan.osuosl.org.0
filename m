Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLyHEFFCwWmqRwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 14:38:25 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7032F313A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 14:38:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD79960612;
	Mon, 23 Mar 2026 13:38:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fs1ZQoW1xWv4; Mon, 23 Mar 2026 13:38:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A083760769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774273101;
	bh=cXTWYdXcz3nMwPDs24DOJMWLWJsz3nbS+hM7FAoS4Mo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bgOMIpEe7lEZll6xyqlfqBnDbjsEhC8/uJucbOL24XtxoZ1V3fncsdsKmlqpc7Rfd
	 pDGVbNMImbje96r6OSgYXtayfb3K/pL15i8arVOgQRxgzWOmTMscejCCocPKuDUJpq
	 R/TEzW8zHcfS65kdhfbBsnhXMZyOa/LuXI8JyUVz+5qJQHIPoixK1bJIiVi7p26NOO
	 7lH1OtGzfjTyY0ecHbdG4gnpikMwHGFgMM74PQrw9XSUXh8yDt6bCgZYVKTfzeHBDg
	 hNzIvCv49vZIaoU4IlPNhMQXbSZaol2SbF6tFeWE1PPNcFTVoBhte5J/Fo8/Nh2SnX
	 Wb6MVum5ogy6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A083760769;
	Mon, 23 Mar 2026 13:38:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5244B1D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 13:38:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38101605F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 13:38:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FOaOHRws6u5B for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 13:38:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 23CD6605F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23CD6605F5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 23CD6605F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 13:38:17 +0000 (UTC)
X-CSE-ConnectionGUID: 2t4rHLJ8ThqdpiDQAQCgEg==
X-CSE-MsgGUID: DhX6yy+vQpqSJgywXeVz6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="75151817"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="75151817"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 06:38:18 -0700
X-CSE-ConnectionGUID: yHgcV4CaQt2aO8f9ubyb8w==
X-CSE-MsgGUID: l5AuL3eaS2CC5X0dXEFqLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="228103783"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 23 Mar 2026 06:38:13 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 949452879A;
 Mon, 23 Mar 2026 13:38:12 +0000 (GMT)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Mon, 23 Mar 2026 14:21:36 +0100
Message-Id: <20260323132136.13191-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774273099; x=1805809099;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KW53xm4EMUmaDFLpHeXdsNCoOkBX60KScnX9/yJEVTw=;
 b=ElvhQCzC6JuvXStm56UZYsdKa4DmOB582crSNc9nERBfEaNV/zgajlnk
 /h21VtTVzLlSoaYhJBCfT/CpGVd69n+ANEDA4vsGRgz4G2PyHOF6AEccU
 dQuau/yBc3e/dPQkAMyRrMxrhQ0j1Pu+EgyMSVIHSiDhnx3Xf9HiJ7UeP
 kWBWymVKizOcCbGjTDsrwL80zJUPdtb2lAad4p4A8e8l4Uu6wmMnrgzgk
 mnFTAC5u7J+I17EHuQvSQmgRKizglz6WOe0cM8fTRCtwF6ESHfmSREbiq
 mNLLk3WDMIznVTJX3iuBQ5iYij8Tl5cKkXZFHU1HshGq1StOXQNx0ZgFZ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ElvhQCzC
Subject: [Intel-wired-lan] [PATCH net-next] devlink: unify
 devlink_shd_get_priv() into devlink_priv()
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 3C7032F313A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Unify access API to shared devlink priv data with normal devlink.

Thanks to Jiri Piro, we now have ability to create shared devlink
instances [1]. Introduction series have added usege of those for mlx, but
without priv data attached to the shared devlink.

Current API makes it possible to access shared devlink instance's priv
data:

	void *devlink_shd_get_priv(struct devlink *devlink);

but it is easy to to forget (especially during rebase from "before shared
devlinks" era) and call:

	void *devlink_priv(struct devlink *devlink);

which even has the same signature, so it's hard to catch the error.

New proposed API unifies both calls into one, without any increase in the
observerd struct size. (Alternative could be to store additional pointer,
set during devlink_alloc).

Unexport the less convenient API call.

[1] commit 411ad0605875 ("Merge branch 'devlink-introduce-shared-devlink-instance-for-pfs-on-same-chip'")
[1] https://lore.kernel.org/all/20260312100407.551173-1-jiri@resnulli.us

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
sorry that I have not mentioned it during [1] review, it got obvious
for me only after working with the code
---
 net/devlink/devl_internal.h |  4 ++++
 net/devlink/core.c          |  3 +++
 net/devlink/sh_dev.c        | 11 ++++++++---
 3 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/net/devlink/devl_internal.h b/net/devlink/devl_internal.h
index 7dfb7cdd2d23..abbe308ee9bd 100644
--- a/net/devlink/devl_internal.h
+++ b/net/devlink/devl_internal.h
@@ -58,6 +58,7 @@ struct devlink {
 	struct mutex lock;
 	struct lock_class_key lock_key;
 	u8 reload_failed:1;
+	u8 is_shd:1;
 	refcount_t refcount;
 	struct rcu_work rwork;
 	struct devlink_rel *rel;
@@ -72,6 +73,9 @@ struct devlink *__devlink_alloc(const struct devlink_ops *ops, size_t priv_size,
 				struct net *net, struct device *dev,
 				const struct device_driver *dev_driver);
 
+/* Get private data from shared devlink instance */
+void *devlink_shd_get_priv(struct devlink *devlink);
+
 #define devl_warn(devlink, format, args...)				\
 	do {								\
 		if ((devlink)->dev)					\
diff --git a/net/devlink/core.c b/net/devlink/core.c
index eeb6a71f5f56..4c97e2e2c073 100644
--- a/net/devlink/core.c
+++ b/net/devlink/core.c
@@ -232,6 +232,9 @@ int devlink_rel_devlink_handle_put(struct sk_buff *msg, struct devlink *devlink,
 
 void *devlink_priv(struct devlink *devlink)
 {
+	if (devlink->is_shd)
+		return devlink_shd_get_priv(devlink);
+
 	return &devlink->priv;
 }
 EXPORT_SYMBOL_GPL(devlink_priv);
diff --git a/net/devlink/sh_dev.c b/net/devlink/sh_dev.c
index 9b7456d64b57..450e3218759e 100644
--- a/net/devlink/sh_dev.c
+++ b/net/devlink/sh_dev.c
@@ -31,6 +31,11 @@ static struct devlink_shd *devlink_shd_lookup(const char *id)
 	return NULL;
 }
 
+static struct devlink_shd *devlink_to_shd(struct devlink *devlink)
+{
+	return &devlink->priv;
+}
+
 static struct devlink_shd *devlink_shd_create(const char *id,
 					      const struct devlink_ops *ops,
 					      size_t priv_size,
@@ -43,13 +48,14 @@ static struct devlink_shd *devlink_shd_create(const char *id,
 				  &init_net, NULL, driver);
 	if (!devlink)
 		return NULL;
-	shd = devlink_priv(devlink);
+	shd = devlink_to_shd(devlink);
 
 	shd->id = kstrdup(id, GFP_KERNEL);
 	if (!shd->id)
 		goto err_devlink_free;
 	shd->priv_size = priv_size;
 	refcount_set(&shd->refcount, 1);
+	devlink->is_shd = 1;
 
 	devl_lock(devlink);
 	devl_register(devlink);
@@ -137,7 +143,7 @@ void devlink_shd_put(struct devlink *devlink)
 	struct devlink_shd *shd;
 
 	mutex_lock(&shd_mutex);
-	shd = devlink_priv(devlink);
+	shd = devlink_to_shd(devlink);
 	if (refcount_dec_and_test(&shd->refcount))
 		devlink_shd_destroy(shd);
 	mutex_unlock(&shd_mutex);
@@ -159,4 +165,3 @@ void *devlink_shd_get_priv(struct devlink *devlink)
 
 	return shd->priv;
 }
-EXPORT_SYMBOL_GPL(devlink_shd_get_priv);
-- 
2.39.3

