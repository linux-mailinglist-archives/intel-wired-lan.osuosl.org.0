Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 326FB8C7DFC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 23:19:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7EF3A404D5;
	Thu, 16 May 2024 21:19:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mKSx5jFScCDO; Thu, 16 May 2024 21:19:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBC1540131
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715894341;
	bh=alhqmbZKldZ1LjJsF5R3vcgdclUKIiCPVfmCETARclQ=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=hc9GdMprAebTMKh5nGfXRTURDfGYHZl7hk9KAX6apwyr+nscbypWNIOmDEx72/+v7
	 wCM/hsDUZBuZfVA+7DKMEu+/rORDY0UThHsM48DAX404teL7UviCnBDOazWJerHauO
	 5i/IyF6T8z66D0IBNbH2xHpBc5C1A1Ss9O8sr6Hvoite4YTT9BxYlDEqjWa7gog6+n
	 LPR7Ya8KovqbTzyxxomyc5goEQCkiHQTOBdTaIKrSCJegJVTrc6mChJikmqomN447T
	 hylFgR9TpwN3vQ7kZbWl5lRI51bRGYvUgqsGjOUrjk0ta0a6D5WmjgPmBGoMOl+yZG
	 XpefD6bcTcQoQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBC1540131;
	Thu, 16 May 2024 21:19:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 594AF1BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 21:19:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 42DCE405FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 21:19:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2wx9bRZyJnWw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 21:18:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3F705405B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F705405B0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F705405B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 21:18:59 +0000 (UTC)
X-CSE-ConnectionGUID: o4rdzKRoST2c1aUPKrokuA==
X-CSE-MsgGUID: 2loH0tMkRaKw7Knu30D4VA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="14994195"
X-IronPort-AV: E=Sophos;i="6.08,165,1712646000"; d="scan'208";a="14994195"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 14:18:57 -0700
X-CSE-ConnectionGUID: WQuitf4zS6O5DHIO/WWaHw==
X-CSE-MsgGUID: IW1WjkagRt+uUzmOfRW5cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,165,1712646000"; d="scan'208";a="62775570"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 14:18:57 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 16 May 2024 14:18:52 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-v1-1-ecbb6a75961e@intel.com>
X-B4-Tracking: v=1; b=H4sIADt4RmYC/y2NQQrCQBAEvxLmbMNmyQjxK+LBbEYdiKvsJKsQ8
 ndH8VhFU72SSVExOjQrFalq+sgO7a6hdDvnq0BHZ4ohdoHbPfQ1IcuMr0BguLroG7neMU8VarY
 I+l6GISbmxJE89Szio9/Nkf4FOm3bByynv1V/AAAA
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.13.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715894339; x=1747430339;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=DAWA1CUCVUq6YbIKyuwd6Nq+Gk+V+TrWjSnNaxfSC+o=;
 b=iddRn6dhBognnNwJ7YqzqcRNPuozclqDCwsFWCTToTp8QDc6KP+L/ZRq
 1W9v8q1GZUeyq4uicSyUfUszfpfav2JJB9ipnOqz0AsK89JlhSTM0cAUC
 2d0NcGpSGu2SHykCG+LJLWnDUk4QCsBVjpupREs2DM5SdNRZW4yMiZ6i0
 6cAkIhO1SFDmKGl0SHr8WDkGzBXI88fppR7pnjcoz+NMbiGgc4o9PRFPM
 fU2UsTTTjtIOtf0Z/XAHAwyygMfGmcg5jcOYW729iORAg5jIB6b8hxgi6
 Sl3WJb9yyVMtbrKtcifyDRGtdlaOpowwzEZ/nZHnn+7WoKdKvvN150+rB
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iddRn6dh
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix integer overflow in
 ice_get_pfa_module_tlv
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>

It's possible that an NVM with an invalid tlv_len could cause an integer
overflow of next_tlv which can result an infinite loop.

Fix this issue by changing next_tlv from u16 to u32 to prevent overflow.
Also check that tlv_len is valid and less than pfa_len.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_nvm.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 84eab92dc03c..9e58d319355f 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -441,7 +441,7 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 		       u16 module_type)
 {
 	u16 pfa_len, pfa_ptr;
-	u16 next_tlv;
+	u32 next_tlv;
 	int status;
 
 	status = ice_read_sr_word(hw, ICE_SR_PFA_PTR, &pfa_ptr);
@@ -458,7 +458,7 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 	 * of TLVs to find the requested one.
 	 */
 	next_tlv = pfa_ptr + 1;
-	while (next_tlv < pfa_ptr + pfa_len) {
+	while (next_tlv < ((u32)pfa_ptr + pfa_len)) {
 		u16 tlv_sub_module_type;
 		u16 tlv_len;
 
@@ -474,6 +474,10 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 			ice_debug(hw, ICE_DBG_INIT, "Failed to read TLV length.\n");
 			break;
 		}
+		if (tlv_len > pfa_len) {
+			ice_debug(hw, ICE_DBG_INIT, "Invalid TLV length.\n");
+			return -EINVAL;
+		}
 		if (tlv_sub_module_type == module_type) {
 			if (tlv_len) {
 				*module_tlv = next_tlv;

---
base-commit: 83e93942796db58652288f0391ac00072401816f
change-id: 20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-99ebb2c55c52

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

