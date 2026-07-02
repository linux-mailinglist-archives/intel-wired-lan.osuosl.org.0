Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KIfuNOxLRmonOAsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:30:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 882DE6F6BC5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:30:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="wj/MjaMR";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BC0B6112C;
	Thu,  2 Jul 2026 11:30:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G8E2uJsse_zG; Thu,  2 Jul 2026 11:30:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33F216110D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782991850;
	bh=CnhYo9W7Wwu6GesBT8GY9bqSqzoohd65n3lryZkoDTk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wj/MjaMRLa2BwAnb3kMyf8hUQkbFEfP8WKW9uFMlTjpsFYHqIeliFOqsAroRlAB6q
	 m/Ghgujacl6gcwgD6bz7vU1ki73UcvnitvYd2pwdXBSmaxu37O1LpKmYYVWNjCqUm9
	 zF0hvT/U9uyxanng2DymOyiSpCJs08A9SXTBk6u3vGSEUNjRRdet2XhbOawUG5Hdws
	 5hH0UORiMQ/vUGxxK2RdES81UAxicDXXD4QJbBWAWwr9l8dYrkzEdfF5r0pmfRSiF8
	 x2jPVe5A6xl6PqLaz9IuJ6j5lJnOO4ZtKz36xPc/KacBUfD+VRQr3FwpcXBHEOcYaE
	 zdcW7pFLTEH9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33F216110D;
	Thu,  2 Jul 2026 11:30:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E387D316
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA0C182376
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pYiv9Et5jo3A for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 11:30:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 54DA282349
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54DA282349
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54DA282349
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:46 +0000 (UTC)
X-CSE-ConnectionGUID: baVytReHQEac2RJTsHozlg==
X-CSE-MsgGUID: B79ak6SkRVmaMV4lOQq4iQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83611753"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83611753"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 04:30:46 -0700
X-CSE-ConnectionGUID: UlyzB9ejQ6ytuHWtn+kUEQ==
X-CSE-MsgGUID: eVn/GHmVShmcfdW1A1v6rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="251788431"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa010.jf.intel.com with ESMTP; 02 Jul 2026 04:30:45 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 40CE028760;
 Thu,  2 Jul 2026 12:30:43 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Thu,  2 Jul 2026 12:30:05 +0200
Message-ID: <20260702103007.97020-12-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260702103007.97020-1-marcin.szycik@linux.intel.com>
References: <20260702103007.97020-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782991847; x=1814527847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rstFJgyxKE753P4Jrw7HbV3svWEHgBRqkt0vcWN7dmc=;
 b=lEh3ZsPQdwKX1tI2ObnCmraXXs50sYfzOBv4ilF051JkR/2wHxSUusIx
 /EzN7wkPTFLafLplQ+OhsEeCmNrWJHRUMQ3zbus16RC+rrvabtuHYWZq9
 /gs/bXWU77rzFf6WLxSAq46spZuZ6osyV5ETCk/dMlV5cEC4tDWYipMb5
 RDAnbg6/F2BYDHBXwOCQdZttjji45GCF1lrQh42TX8z075PfpVa7abdFe
 Mnpucf7vyrdWZltTNc1rNYGZoftIFwy30BDg1V/BZ+el7dfWcg8WTJs1T
 E7YGjna+BYDLbgCNEdDYGoStIAaWkZDvwXLecYTDB38MZpcB69M68eX7c
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lEh3ZsPQ
Subject: [Intel-wired-lan] [PATCH iwl-next v5 11/12] ice: re-introduce
 ice_dealloc_flow_entry() helper
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,linux.intel.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 882DE6F6BC5

It was removed in commit ad667d626825 ("ice: remove null checks before
devm_kfree() calls"). Now it's useful again.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
v5:
* ice_flow_acl_add_scen_entry_sync(), ice_flow_add_entry():
  ice_flow_acl_free_act_cntr() additions make more sense in patch adding
  this code, move them to that patch. Now this patch is a pure refactor.
v3:
* ice_flow_acl_add_scen_entry_sync(), ice_flow_add_entry(): call
  ice_flow_acl_free_act_cntr() in unroll
v2:
* Add this patch
---
 drivers/net/ethernet/intel/ice/ice_flow.c | 35 +++++++++++++----------
 1 file changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index e0a1d8463d6f..de751774affc 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1589,6 +1589,23 @@ ice_flow_find_prof_id(struct ice_hw *hw, enum ice_block blk, u64 prof_id)
 	return NULL;
 }
 
+/**
+ * ice_dealloc_flow_entry - Deallocate flow entry memory
+ * @hw: pointer to the HW struct
+ * @entry: flow entry to be removed
+ */
+static void
+ice_dealloc_flow_entry(struct ice_hw *hw, struct ice_flow_entry *entry)
+{
+	if (!entry)
+		return;
+
+	kfree(entry->entry);
+	kfree(entry->range_buf);
+	kfree(entry->acts);
+	devm_kfree(ice_hw_to_dev(hw), entry);
+}
+
 /**
  * ice_flow_get_hw_prof - return the HW profile for a specific profile ID handle
  * @hw: pointer to the HW struct
@@ -1757,11 +1774,7 @@ static int ice_flow_rem_entry_sync(struct ice_hw *hw, enum ice_block blk,
 	}
 
 	list_del(&entry->l_entry);
-
-	kfree(entry->entry);
-	kfree(entry->range_buf);
-	kfree(entry->acts);
-	devm_kfree(ice_hw_to_dev(hw), entry);
+	ice_dealloc_flow_entry(hw, entry);
 
 	return 0;
 }
@@ -2948,10 +2961,7 @@ static int ice_flow_acl_add_scen_entry_sync(struct ice_hw *hw,
 		if (e->acts_cnt && e->acts)
 			ice_flow_acl_free_act_cntr(hw, e->acts, e->acts_cnt);
 		exist->id = e->id;
-		kfree(e->entry);
-		kfree(e->range_buf);
-		kfree(e->acts);
-		devm_kfree(ice_hw_to_dev(hw), e);
+		ice_dealloc_flow_entry(hw, e);
 		*entry = exist;
 	}
 out:
@@ -3075,12 +3085,7 @@ int ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 	if (blk == ICE_BLK_ACL && e->acts_cnt && e->acts)
 		ice_flow_acl_free_act_cntr(hw, e->acts, e->acts_cnt);
 dealloc_entry:
-	if (e) {
-		kfree(e->entry);
-		kfree(e->range_buf);
-		kfree(e->acts);
-		devm_kfree(ice_hw_to_dev(hw), e);
-	}
+	ice_dealloc_flow_entry(hw, e);
 
 	return status;
 }
-- 
2.49.0

