Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CldNf2Vjmm8DAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 04:09:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C87481328FB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 04:09:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AC6D41928;
	Fri, 13 Feb 2026 03:09:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VUIEsXeTZ1za; Fri, 13 Feb 2026 03:09:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 489C841921
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770952186;
	bh=YmwAwS9TPRqB7vJ29waSVrHA0A0Eo0mzwo3uF07m2AY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=M9BhFe8vE7jDsHW0oagdtx6XUmH6Ol9CVAcS4btGsPJeew5qdVjpRN6I6yTpqcqeN
	 2pCyGtkaLZGy9gZqJma86SgIGhvM1M97sN8WAQRTwhcOasArZXAR4He/4GMrhLYenL
	 Wolf4Mz4f8tqGrLWY94/iDWCF2s3C6H4MoY1P1DCizBmHkc5zK5jxkbwvszViATPi3
	 yRwlew4S859VGSxvftdicDa5qz4BQgY1eQMXHm2QgEcCuaChr5V4qc/nOjTpa+Xfht
	 tTHVT2rVPkgEy53L/C5EvguNUh/H6UceJrnY6eQqZcZfi0GvGzIfqZDVrDbmRKBoH/
	 yRF3JH66rwHXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 489C841921;
	Fri, 13 Feb 2026 03:09:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D79DA1D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 03:09:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D517580EF5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 03:09:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zoJZwcH0gIqs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 03:09:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 166CC80EE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 166CC80EE7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 166CC80EE7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 03:09:43 +0000 (UTC)
X-CSE-ConnectionGUID: NCfDpxI/SBORpNZbBGgGqw==
X-CSE-MsgGUID: hHIrYsgUQdCH21/YQc//hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="74738758"
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="74738758"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 19:09:43 -0800
X-CSE-ConnectionGUID: /j0lBH1YSICoiznS8hw5kw==
X-CSE-MsgGUID: b+eQ2ka0RQya3RN6mumxyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="216969781"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa004.fm.intel.com with ESMTP; 12 Feb 2026 19:09:41 -0800
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Date: Fri, 13 Feb 2026 04:09:40 +0100
Message-ID: <20260213030940.1809797-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770952184; x=1802488184;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3Y7Q6Au/X2ZyR/wPpqJXyfm6utcskF47IufYsRLqZL0=;
 b=GYeJI21yyI7mVsU7YfBzH8Rda3Yk1kPyrizbSwsgmyEzuF6qhs7k7g1s
 yF1a23BnqcdaXDBAx4qmkkwejLv4nSwd1y4tAjw+unDopT6KpG4ltza7/
 +bSEf7WBgI79soy4vp4nDW1bTIWXMiy4awkJBujzbvPkQGIitU8v0CnqP
 sBPM8lbH7UyER1Wm0x0zdNzJiOp31ebnN/enD7VMWYO10gduYAeNgE0K+
 iqKqtR5yEXCBLImjAcu/MR3WSkJ/9YYT4Add2Go4hFbylFsqOLynRuU2h
 Q6cB1aNzNgVl3t3Wrw87WSXLmRSDO6ncazTrEk6P0CXyQ2vTY6EZjJ0M3
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GYeJI21y
Subject: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: fix unaligned u32
 access in ixgbe_update_flash_X550()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mpg.de:email];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C87481328FB
X-Rspamd-Action: no action

ixgbe_host_interface_command() treats its buffer as a u32 array. The 
local buffer we pass in was a union of byte-sized fields, which gives 
it 1-byte alignment on the stack. On strict-align architectures this 
can cause unaligned 32-bit accesses.

Add a u32 member to union ixgbe_hic_hdr2 so the object is 4-byte 
aligned, and pass the u32 member when calling
ixgbe_host_interface_command().

No functional change on x86; prevents unaligned accesses on 
architectures that enforce natural alignment.
 
Fixes: 49425dfc7451 ("ixgbe: Add support for x550em_a 10G MAC type")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
v2 -> v3 commit message line wraps
v1 -> v2 change title and concentrate on alignement issue
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 61f2ef6..eb5bf3b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -2798,6 +2798,7 @@ struct ixgbe_hic_hdr2_rsp {
 };
 
 union ixgbe_hic_hdr2 {
+	u32 buf[1];
 	struct ixgbe_hic_hdr2_req req;
 	struct ixgbe_hic_hdr2_rsp rsp;
 };
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index 76d2fa3..4a0ccbf 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -1228,7 +1228,7 @@ static int ixgbe_update_flash_X550(struct ixgbe_hw *hw)
 	buffer.req.buf_lenl = FW_SHADOW_RAM_DUMP_LEN;
 	buffer.req.checksum = FW_DEFAULT_CHECKSUM;
 
-	status = ixgbe_host_interface_command(hw, &buffer, sizeof(buffer),
+	status = ixgbe_host_interface_command(hw, buffer.buf, sizeof(buffer),
 					      IXGBE_HI_COMMAND_TIMEOUT, false);
 	return status;
 }
-- 
2.52.0

