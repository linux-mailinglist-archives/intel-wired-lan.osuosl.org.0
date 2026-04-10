Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAWcJZWr2GkmgwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A4A3D391B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A87B860AB3;
	Fri, 10 Apr 2026 07:49:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NN06cM3LCnKs; Fri, 10 Apr 2026 07:49:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 752A4605D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775807374;
	bh=hpwvdbB9Ebz9aRPxV51rkxUBzD67ulmhZ6KP2NUns9E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bapsToKLkri645VfnNvVyWmEzFJK4AN/POYUaG5p/THZHHd4DA4MwQBpOLZc3hZ1C
	 2+GPuuTMlfcgCIPOP5im0uREcXFplKcZx1VMJxfwltWOd5btKpBF1WHQ9hbPl7ycYe
	 b8++bFiP+RXvw6bmUPDSeW+wrhphHEnPlKCy5D0iXyWTOGdsM/dy2KhgAkkp3EJ+Y6
	 DAwYL9sZE8iYioGmixTwyOo9bruYdDSmWhijVzlJ+VzLcG1KwPvxckdVdc/TgPZnp6
	 3Prd9AuuaSY7CpJ41ClFrv6bZgMbhlzwu+ODU/nct1xAyDfkzCIRMSAzWfcsB6UcdS
	 wUIi/sEXfdfAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 752A4605D0;
	Fri, 10 Apr 2026 07:49:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DD9CF237
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CFAA781A81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a8SuC_UR8O_U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 07:49:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C6241816EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6241816EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C6241816EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:30 +0000 (UTC)
X-CSE-ConnectionGUID: Zukp3qjpR2e/qR5oijLNBQ==
X-CSE-MsgGUID: pViyiafiS0KKUol3I6tSlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="77007929"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="77007929"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:49:31 -0700
X-CSE-ConnectionGUID: /RWNk6lCSh25lLrZmfr0eA==
X-CSE-MsgGUID: seFQ7vbSTnC3GDmNti/PXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="228941872"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 10 Apr 2026 00:49:29 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 10 Apr 2026 09:49:15 +0200
Message-ID: <20260410074921.1254213-5-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775807371; x=1807343371;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uhe/PktKStkc0D01ZpH8sxDrD5w8h5fmFb/KK/CAeOs=;
 b=BHkC06BxFgIW8qVx24qRBoCTFqUcLmvS4jJ41bywID1h/kxKDBA5O+RZ
 WAyKjT7sdV/uZJ/0EA7BFYHyxNThZtVX0CYDENKOagz/fOMom8t+wUKcQ
 KwLp/RV+3IkpEA02KUo56kPaprDNjd7jk95+EbRUMJyTcRFncQKaf8b/n
 u+a2R7XMdb4PC44UcdAng5hYCHBBm0tVUaT1nCEEkw+pYIruITFLDdVLE
 ct2IzphvjD2Z0yYWM+U28ScVWN/3L4o8uYOn9iAtri1tuab4lZyk/fuxd
 BZvfm4Rc4sN3JqbukWiHN/nSCdRJvz5fYbuw+GPMJEv6fjtESZWNY4z+4
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BHkC06Bx
Subject: [Intel-wired-lan] [PATCH iwl-next 4/10] ice: reorder ice_flash_info
 fields to eliminate padding
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 61A4A3D391B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jacob Keller <jacob.e.keller@intel.com>

The ice_flash_info structure has a u16 sr_words field before a u32
flash_size value. This creates a 2-byte hole as well as 3 bytes of
padding at the end of the structure due to the blank_nvm_mode bitfield.

Re-order the structure to place flash_size first, which gives a better
layout and reduces padding.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_type.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index cb47127..97bf601 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -968,8 +968,8 @@ struct ice_flash_info {
 	struct ice_nvm_info nvm;	/* NVM version information */
 	struct ice_netlist_info netlist;/* Netlist version info */
 	struct ice_bank_info banks;	/* Flash Bank information */
-	u16 sr_words;			/* Shadow RAM size in words */
 	u32 flash_size;			/* Size of available flash in bytes */
+	u16 sr_words;			/* Shadow RAM size in words */
 	u8 blank_nvm_mode;		/* is NVM empty (no FW present) */
 };
 
-- 
2.52.0
