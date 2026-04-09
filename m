Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPYyL/Oi12kUQQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 15:00:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F303CAB55
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 15:00:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACE69606F5;
	Thu,  9 Apr 2026 13:00:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 89PNlLA1OWnJ; Thu,  9 Apr 2026 13:00:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA3A5608C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775739629;
	bh=0Jw7aGBgjDIFCT0bJC4sX7NRFgTYXAuNubt/9jV3vk0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hSCgcKwyvs923JMbzC/NjTAPkkmCpcfNoWEOvvJlhR8F+JOEsJ0SNLJ/xn4LzarGs
	 4bxQ7DXnY2QvG6svDT9wHgvE65VmrLjwpUg65ZQ3DovYgmymNWGv+yBDp3L+cbasUg
	 2N2QdiKcRHM+PLKneFwSrZb6/Bgnpp3n0eutGwGl8/P6q/HRTPXelP67iCc9dUUyad
	 J3IrePoDl+35AAOJUvURQI3qj+AqLwkM/xuhyfxNhVp0bMX+11ql8N2vJRaiimBprr
	 abfarDsjmlj9yPkAa2le9FB7E0Lcv76L0g0wNnp9Uumt0HJ7GX//Peayvvcwhbt2vi
	 DFX+N7UFy1jsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA3A5608C0;
	Thu,  9 Apr 2026 13:00:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 008501F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 13:00:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6A1E81B14
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 13:00:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xjH4QzaRO13Q for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 13:00:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3D90080BA3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D90080BA3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3D90080BA3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 13:00:27 +0000 (UTC)
X-CSE-ConnectionGUID: 7r891M6KSGi2M7ruSEDT8Q==
X-CSE-MsgGUID: VzA8GckXQY2+sNWGyhG8GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75777523"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="75777523"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 06:00:18 -0700
X-CSE-ConnectionGUID: 73/b5M7dQtWJ7Iw0fGK/2g==
X-CSE-MsgGUID: li2IRPxBQO6NZ+mzARpZcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="259208111"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 09 Apr 2026 06:00:16 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 139D82FC60;
 Thu,  9 Apr 2026 14:00:15 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Thu,  9 Apr 2026 13:59:58 +0200
Message-ID: <20260409120003.2719-6-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
References: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775739627; x=1807275627;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZRnY5TXUwvFbakhMxEVnbZ2PSapzU7VKIrFMcYMCcHk=;
 b=csYPM+8DIFZCDhHuzsD9VMHm68dkEer2JuSkOGH5UtFQWDn1Yie3sCNu
 fZKzCkgjytwGrLl3RH1UUmPosYe9Eh722szWTBF4pJHNW9UXb4KANEn14
 RQwFNYTm4WIQRA+oONntFzf4pjV0YdvyghvxJWioIM/BHPUwi7LebuM31
 QawbO1KWmogxlIka4+NDQ7IcCE7IiZ69qJmGTs8GNRNkA11PXirvfhWe2
 zcpDfYKyBZ9PH3heNLkfGpJnJ+KhiSE/BAsNHJ2TjHOjzOevvVZliMHJb
 W8kVt2eNSAzZI1d3vLJvntg17w9Cnmngs/ULb2eFrsf9U4oRdiLyLhz+Q
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=csYPM+8D
Subject: [Intel-wired-lan] [PATCH iwl-next v2 05/10] Revert "ice: remove
 unused ice_flow_entry fields"
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,linux.intel.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 94F303CAB55
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This reverts commit 4cd7bc7144ec2c0bb27208c3bb1f153dfd44b1c7.
These fields will be needed in the following commits.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
v2:
* Add this patch
---
 drivers/net/ethernet/intel/ice/ice_flow.h | 3 +++
 drivers/net/ethernet/intel/ice/ice_flow.c | 5 ++++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index bbfc7b4a432e..ff6af6589862 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -458,8 +458,11 @@ struct ice_flow_entry {
 
 	u64 id;
 	struct ice_flow_prof *prof;
+	/* Flow entry's content */
+	void *entry;
 	enum ice_flow_priority priority;
 	u16 vsi_handle;
+	u16 entry_sz;
 };
 
 #define ICE_FLOW_ENTRY_HNDL(e)	((u64)(uintptr_t)e)
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 864bbda7e880..440e9fdb6b5b 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1604,6 +1604,7 @@ ice_flow_rem_entry_sync(struct ice_hw *hw, enum ice_block __always_unused blk,
 
 	list_del(&entry->l_entry);
 
+	devm_kfree(ice_hw_to_dev(hw), entry->entry);
 	devm_kfree(ice_hw_to_dev(hw), entry);
 
 	return 0;
@@ -2024,8 +2025,10 @@ ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 	*entry_h = ICE_FLOW_ENTRY_HNDL(e);
 
 out:
-	if (status)
+	if (status && e) {
+		devm_kfree(ice_hw_to_dev(hw), e->entry);
 		devm_kfree(ice_hw_to_dev(hw), e);
+	}
 
 	return status;
 }
-- 
2.49.0

