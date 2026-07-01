Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MG0UOAAMRWpK5woAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 14:45:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3786ED862
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 14:45:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=jZlFOZdE;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B85B84179;
	Wed,  1 Jul 2026 12:45:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q6ctjEh5O5B1; Wed,  1 Jul 2026 12:45:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0B6684161
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782909950;
	bh=hRgolPlXXdsoVTrYZ0rvM7p0uyTHSFSVrUNg+3il8AE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jZlFOZdE4OpSDcTPD/1e3ppqB9Nh+luYlR2oxvaenXouQ8T3jvbb38WrvSstT78PB
	 UpJypKK8av7kzect9zpc8MwBZfuvx3pIxQeTo2fvlsk1CQ/s0qdDH9mV5Z8OIvCqxz
	 zmVIAv5uRLxLD8DBZT0vH3iLUEGC3j1UjNNLOKDYoATRwXrdmkJo38Gf1XC+6TbvqB
	 +ApfUeS+quLLAOur5pbzK09E/DpPU6HB5sP90YquNg2KKPcAlECOYwTBYDtIlPfWnj
	 u8Wzr/tryAhFsnmznEhZZKmnBZziK0d9FE4sMgI7L/0elEKVTAo6+unq/GADb6oT1w
	 Mpf+YtYg4lusQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0B6684161;
	Wed,  1 Jul 2026 12:45:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C14792D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B2E3A4052B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id InIKISF9D4dl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 12:45:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BF26140544
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF26140544
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF26140544
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:45 +0000 (UTC)
X-CSE-ConnectionGUID: lwyZmEhmRV2MraWAHH5jZw==
X-CSE-MsgGUID: CoFopp/2QJ2clkvqdsbPpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83839257"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="83839257"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 05:45:43 -0700
X-CSE-ConnectionGUID: 14YWUQ5IT8+1iBrXN2RmdA==
X-CSE-MsgGUID: cWqHN7CTRYKWU6F7DK2aEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="276864944"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa001.fm.intel.com with ESMTP; 01 Jul 2026 05:45:40 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, magnus.karlsson@intel.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Sashiko AI Review <sashiko-bot@kernel.org>
Date: Wed,  1 Jul 2026 14:45:23 +0200
Message-Id: <20260701124524.13644-7-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20260701124524.13644-1-maciej.fijalkowski@intel.com>
References: <20260701124524.13644-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782909946; x=1814445946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O00QyTCjuQndyzpgME7KOpR/bYZTOs5ybPP6b8Yssz4=;
 b=f/7BEoAyiyHxs/HWfdnE358wTfXXXomV3aI1JO6Ups8zhxjk9oA7bq1j
 /A7eiiUwxbGAR6i2q6rwkzW4SdZPKpmuDTIh8Kb9I+IgGWsH2qg9QLbZG
 pwmEiB+k++Wuw7Jv1dOQ0H0fH4z32PcaMSHGP1+e8v+0IRrp0vFHdJYxR
 lWdJbyZQRuaHW3SK2DqjSLkw+FtORN263J19VpymRuKH2JRyC9G1+Skb5
 T0X6e2B7mj++sOVqF4v4TXUT99XUcM8WRfzzby2Z0NWe7obGVY3logrBk
 UqVPOZEx1yLdr0YZJJhP1Z5p4z0vIu/NL5MGcrJIUv7K9cbaFzt+NTocP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f/7BEoAy
Subject: [Intel-wired-lan] [PATCH v5 net 6/7] i40e: do not expose netdev too
 early
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp,intel.com:email,intel.com:mid,intel.com:from_mime];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AD3786ED862

i40e_vsi_setup() registers the netdev before rings and q_vectors are fully
allocated and mapped. Once register_netdev() returns, userspace can reach
netdev callbacks such as ndo_open(), so the VSI backing state must already
be ready.

Move register_netdev() to the end of the setup path, after ring/q_vector
allocation, ring mapping and RSS configuration. Keep freeing an allocated
but not registered netdev on the error path.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Reported-by: Sashiko AI Review <sashiko-bot@kernel.org>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 29 ++++++++++++---------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index fcdd13af08ea..a9ec53cfd905 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14454,15 +14454,6 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 				goto err_netdev;
 			SET_NETDEV_DEVLINK_PORT(vsi->netdev, &pf->devlink_port);
 		}
-		ret = register_netdev(vsi->netdev);
-		if (ret)
-			goto err_dl_port;
-		vsi->netdev_registered = true;
-		netif_carrier_off(vsi->netdev);
-#ifdef CONFIG_I40E_DCB
-		/* Setup DCB netlink interface */
-		i40e_dcbnl_setup(vsi);
-#endif /* CONFIG_I40E_DCB */
 		fallthrough;
 	case I40E_VSI_FDIR:
 		/* set up vectors and rings if needed */
@@ -14490,6 +14481,19 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 		if (ret)
 			goto err_config;
 	}
+
+	if (vsi->netdev) {
+		ret = register_netdev(vsi->netdev);
+		if (ret)
+			goto err_config;
+		vsi->netdev_registered = true;
+		netif_carrier_off(vsi->netdev);
+#ifdef CONFIG_I40E_DCB
+		/* Setup DCB netlink interface */
+		i40e_dcbnl_setup(vsi);
+#endif /* CONFIG_I40E_DCB */
+	}
+
 	return vsi;
 
 err_config:
@@ -14500,13 +14504,14 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 	if (vsi->netdev_registered) {
 		vsi->netdev_registered = false;
 		unregister_netdev(vsi->netdev);
-		free_netdev(vsi->netdev);
-		vsi->netdev = NULL;
 	}
-err_dl_port:
 	if (vsi->type == I40E_VSI_MAIN)
 		i40e_devlink_destroy_port(pf);
 err_netdev:
+	if (vsi->netdev) {
+		free_netdev(vsi->netdev);
+		vsi->netdev = NULL;
+	}
 	i40e_aq_delete_element(&pf->hw, vsi->seid, NULL);
 err_vsi:
 	i40e_vsi_clear(vsi);
-- 
2.43.0

