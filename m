Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l9sKKwAMRWpC5woAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 14:45:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6A86ED85F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 14:45:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=UPBC4C0v;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDC3E608C2;
	Wed,  1 Jul 2026 12:45:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kTASymgSkyMb; Wed,  1 Jul 2026 12:45:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13F256103D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782909949;
	bh=Ka0oLD/7tJn8uRojg6wAPwE24+85MTQ6ZFPbWVYhCs0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UPBC4C0vF65CiTsQKZc5CmKoYhm5v87q1NOC0ofNmEMJETDz/lEQzi0s5i8yNAz1y
	 9VCbN94flUeYe6bGNAPez9eHIZmqOjcbKlYOdOxuQJK+ctDAhOXfnKTzlLTo/6fyoR
	 8PfAlSd7XjAfXgNxKjAnZsx4ObT54WG2X3FGgJlhOKVBBvH6bT9JSO315PGsfU21ZJ
	 7cFye/6D1AfYOGokuZI6VPVDw5Km/tknFt+ejehMxHyPs0CJbMuIZzINJRFG3kwKX7
	 ZzwOOblpq5aoBXgPhG+ByVVtDWW3g2HpXW2Jwej05JEpu5QoS/x75bp8rbORKaymWt
	 mK6g5ixR5qZpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13F256103D;
	Wed,  1 Jul 2026 12:45:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 275D02D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18F1840508
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xJVBCSPNvCly for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 12:45:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 70E954052B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70E954052B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 70E954052B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:45 +0000 (UTC)
X-CSE-ConnectionGUID: JWwLRx7cTby1zcqSexFp+w==
X-CSE-MsgGUID: tVuHKTWMRpuOgB4x2hGL8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83839243"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="83839243"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 05:45:38 -0700
X-CSE-ConnectionGUID: LS2XpwoSQtC3pq2UN3bcmg==
X-CSE-MsgGUID: zuC5blPTRHinkJVHV7WTDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="276864918"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa001.fm.intel.com with ESMTP; 01 Jul 2026 05:45:35 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, magnus.karlsson@intel.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Sashiko AI Review <sashiko-bot@kernel.org>
Date: Wed,  1 Jul 2026 14:45:21 +0200
Message-Id: <20260701124524.13644-5-maciej.fijalkowski@intel.com>
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
 bh=eRQgpL4qfxEAYee/aiq5vXUQEARM1LUI4g4CYk+FfSI=;
 b=lUeQZVnCCROmlqJeoxvZG14KgV/p7oy6Y2kh8ks54H/noUyIpP8kcWqj
 kqRBlcYASp2Y38lzIasALPUwLISpw/a+zgTE9E/EBKxgf/WIQBDeH54uw
 cc8wKU6VQyn1lqJRB7aBdLuNNUvh6LUi6+NJqmu6735qQgeuW4kD5F/cD
 lYOiG4smYD2Lchp+pztm+URKCHSvZGoXy/rQLgLpOPCZQ7ROnVPGeiuDj
 UGpy2BPl7wHmPiH+x/7CAIBZfMi2zH6UQ1YpaMrH9C7bWBBtSyBSWwl+X
 Cu3cwUHuD2Vcaw6dcuoMsYA6ZTIhX9FUyCDufeC76DWvVlWbKKGBgxLWL
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lUeQZVnC
Subject: [Intel-wired-lan] [PATCH v5 net 4/7] i40e: avoid deadlock when
 calling unregister_netdev()
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,intel.com:email,intel.com:mid,intel.com:from_mime,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7D6A86ED85F

Sashiko reports:
***
> +err_netdev:
>  	if (vsi->netdev_registered) {
>  		vsi->netdev_registered = false;
>  		unregister_netdev(vsi->netdev);
Could this result in a deadlock when called during a device rebuild?
Looking at i40e_rebuild(), it explicitly acquires the RTNL lock before
proceeding:
drivers/net/ethernet/intel/i40e/i40e_main.c:i40e_rebuild() {
    ...
	if (!lock_acquired)
		rtnl_lock();
	ret = i40e_setup_pf_switch(pf, reinit, true);
    ...
}
If i40e_setup_pf_switch() calls i40e_vsi_reinit_setup() and takes this new
err_netdev path, unregister_netdev() will unconditionally attempt to acquire
rtnl_lock(), leading to a deadlock on the non-recursive mutex.
***

Use unregister_netdevice() when the rebuild path already holds RTNL, and
keep unregister_netdev() for callers that do not. This avoids both
recursive RTNL locking and dropping RTNL in the middle of the VSI unwind
path.

Fixes: bc7d338fbb3f ("i40e: reinit flow for the main VSI")
Reported-by: Sashiko AI Review <sashiko-bot@kernel.org>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index a29a89192a7a..e88cf7cfbd84 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14257,7 +14257,8 @@ static int i40e_vsi_setup_vectors(struct i40e_vsi *vsi)
  * Returns pointer to the successfully allocated and configured VSI sw struct
  * on success, otherwise returns NULL on failure.
  **/
-static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
+static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi,
+					      bool lock_acquired)
 {
 	struct i40e_vsi *main_vsi;
 	u16 alloc_queue_pairs;
@@ -14314,7 +14315,10 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 err_netdev:
 	if (vsi->netdev_registered) {
 		vsi->netdev_registered = false;
-		unregister_netdev(vsi->netdev);
+		if (lock_acquired)
+			unregister_netdevice(vsi->netdev);
+		else
+			unregister_netdev(vsi->netdev);
 		free_netdev(vsi->netdev);
 		vsi->netdev = NULL;
 	}
@@ -15036,7 +15040,7 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 			main_vsi = i40e_vsi_setup(pf, I40E_VSI_MAIN,
 						  uplink_seid, 0);
 		else if (reinit)
-			main_vsi = i40e_vsi_reinit_setup(main_vsi);
+			main_vsi = i40e_vsi_reinit_setup(main_vsi, lock_acquired);
 		if (!main_vsi) {
 			dev_info(&pf->pdev->dev, "setup of MAIN VSI failed\n");
 			i40e_cloud_filter_exit(pf);
-- 
2.43.0

