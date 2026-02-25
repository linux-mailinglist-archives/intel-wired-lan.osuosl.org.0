Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKT6CcC9nmnYXAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 10:15:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AED194BED
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 10:15:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF60E84674;
	Wed, 25 Feb 2026 09:15:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7OP8dtbZnlEj; Wed, 25 Feb 2026 09:15:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66A1184676
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772010940;
	bh=SMDV+D/bjWKLFdm96Dm3Ic4vYniOwPLUPHhTwT+Cf/k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=hQQvN+5MnJoGWz4ehHz1c17f+7QiXkMZEfeHSnOOPCAapURWTuHJrLEy9F4adKFfa
	 igU9G0e+yObyvq499HOk0a9/NA58PQ2xUf8H3acVitwfUNIqEwv93ImtOCNcAH8pJ4
	 CG7TGhcvOjLup/C6jadWINkFU+9StJ7m/tN3UapOwKS8PgNBf97yyXfncySdb4GD/5
	 Sg230rVw/M8iNlZlJP++ydURS6niwTYwaY0d+wlpnhQrcFVVdwRCNjlehUV1si7wqs
	 IFa26ZXjXiRZT1YJ/2qkh7rsMmn80vDeB8HxygOx0WkcRf02sO7/b8TEoOTEngX6R2
	 oVCZ+Q3J3ykSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66A1184676;
	Wed, 25 Feb 2026 09:15:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id ED5D6204
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 09:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DEE614137E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 09:15:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XdGnfZ92LgmK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 09:15:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=natalia.wochtman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 118924137D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 118924137D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 118924137D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 09:15:36 +0000 (UTC)
X-CSE-ConnectionGUID: SMVmQsQpTfmh6p64ZGrDdQ==
X-CSE-MsgGUID: HGfdUHidRiSOaWVLS0TBZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="72081449"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72081449"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 01:15:36 -0800
X-CSE-ConnectionGUID: zozFFWJDSU6sxOWJBMEAcg==
X-CSE-MsgGUID: cZhlqmQSQdKOi91W/j+4qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220774531"
Received: from korred.igk.intel.com ([10.237.113.2])
 by fmviesa005.fm.intel.com with ESMTP; 25 Feb 2026 01:15:34 -0800
From: Natalia Wochtman <natalia.wochtman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 25 Feb 2026 10:02:36 +0100
Message-ID: <20260225090236.187255-1-natalia.wochtman@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772010937; x=1803546937;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DKAG1wPJpFmlhcmR96WVsVojidnrTLm5pSaQ3dE9lmc=;
 b=ll7KPv3ZiuKCbVmRqe3H1NF0EsQ2RvP8TjaPceWLApGt5umkS+/GPkCC
 WeniPTjzRQ5cJmlsb+ROi7kWrJL5rrQS88tXWq4ooULX2HHZrBXODzduP
 xd5na2dzK1XOeNHb5/syyQ3t/91j5FeBKbmji9ljVdFzo6xd/3L/IALiq
 tlj5BJ62vjgyi3vNY3+kaalYbVSLjb2ryuP7i7ePYGWSqgNl98xUF8xcE
 tynjGdhph4AypRRaDZNCXWbVyr2PCkvhjBA6rvj6aQvSThIRSc6p9+H3E
 301UM0OAmQjxBH33wmGslje6dbxnG8xxR8xkX5JIe+jMFbSY36BjSbx1l
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ll7KPv3Z
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove redundant checks
 from PTP init
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
Cc: aleksandr.loktionov@intel.com, netdev@vger.kernel.org,
 Natalia Wochtman <natalia.wochtman@intel.com>, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[natalia.wochtman@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 11AED194BED
X-Rspamd-Action: no action

Remove unnecessary condition checks in
ice_ptp_setup_adapter() and ice_ptp_init().
They are duplicated in ice_pf_src_tmr_owned().

Change ice_ptp_setup_adapter() to return void.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Natalia Wochtman <natalia.wochtman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d8fd01fa617b..2b26024de888 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -3065,14 +3065,9 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	dev_err(ice_pf_to_dev(pf), "PTP reset failed %d\n", err);
 }
 
-static int ice_ptp_setup_adapter(struct ice_pf *pf)
+static void ice_ptp_setup_adapter(struct ice_pf *pf)
 {
-	if (!ice_pf_src_tmr_owned(pf) || !ice_is_primary(&pf->hw))
-		return -EPERM;
-
 	pf->adapter->ctrl_pf = pf;
-
-	return 0;
 }
 
 static int ice_ptp_setup_pf(struct ice_pf *pf)
@@ -3315,10 +3310,9 @@ void ice_ptp_init(struct ice_pf *pf)
 	/* If this function owns the clock hardware, it must allocate and
 	 * configure the PTP clock device to represent it.
 	 */
-	if (ice_pf_src_tmr_owned(pf) && ice_is_primary(hw)) {
-		err = ice_ptp_setup_adapter(pf);
-		if (err)
-			goto err_exit;
+	if (ice_pf_src_tmr_owned(pf)) {
+		ice_ptp_setup_adapter(pf);
+
 		err = ice_ptp_init_owner(pf);
 		if (err)
 			goto err_exit;
-- 
2.49.0

