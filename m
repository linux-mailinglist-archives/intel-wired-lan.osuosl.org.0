Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F578C8E67
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 May 2024 01:08:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 761BD4149C;
	Fri, 17 May 2024 23:08:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5G8Y7kSYmHGw; Fri, 17 May 2024 23:08:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2678241482
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715987295;
	bh=Ie2rZpd5nKNBy4DYPL9DIbiw/DVX0JQ95ouCD8F0wis=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=p6iGGKgk+KtCrwWY0dl39yfg6fBU2Mme9pQixCqmA6hOfO8jdr89l7wsdlp0UxWll
	 yR6P+t25/gSYkwSntlyl6EGkVNDTsEQwRY6q4NChzQeu7QgoB2IyE9zDkd6IIxuX+g
	 l29WKnHHTL1zD4wggNF9Z5wF1qW6/L+yWFhLzOS+KcUyeCwiP31EBQKC3XMJfxp/Fh
	 Uu5y9g78I9gR1XgpfGpkH9V1GymSSbgXMUH+mkX/dlgYanpetUUMQXekZqytKoTB4E
	 lTG5H4OAgfUmMxwtN+N4nFCsTykkn5t3GmEuckGFjFi5uGQaxIczatdTyf+PDpB20m
	 5BpsfwN9nkGcQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2678241482;
	Fri, 17 May 2024 23:08:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0B791BF34B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 23:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9CE75607B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 23:08:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pz4RqpTXF-2w for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 23:08:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4736F607B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4736F607B4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4736F607B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 23:08:11 +0000 (UTC)
X-CSE-ConnectionGUID: ORyceWysQ52WMDATQ2+Wqg==
X-CSE-MsgGUID: UFbzQWP3Sd2H75bknBKc8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="12031688"
X-IronPort-AV: E=Sophos;i="6.08,169,1712646000"; d="scan'208";a="12031688"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 16:08:12 -0700
X-CSE-ConnectionGUID: psH0T9TJRtqFNFxLzYYVHw==
X-CSE-MsgGUID: hMWG1riASceMcsylhWZneA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,169,1712646000"; d="scan'208";a="31845854"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 16:08:11 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 17 May 2024 16:08:05 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v2-1-fdee184ece86@intel.com>
X-B4-Tracking: v=1; b=H4sIAFXjR2YC/5WNQQ7CIBBFr9LM2jFApKauvEfTRcHRTkKpAURNw
 93Fxgu4/O///LdCpMAU4dSsEChz5MXXoHYN2Gn0N0K+1AxKqIPQskV+OvSU8AtQaKzoyi/0ecb
 kMnKMD8KuI2OU1dpqBfXqHqiONk0PvwcYajFxTEt4b/ost/o/U5Yokawx7XjUXSvpzD6R29tlh
 qGU8gHACc7H4QAAAA==
To: Paul Menzel <pmenzel@molgen.mpg.de>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.13.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715987293; x=1747523293;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=xK9kh1eA9FJK/MRgp+PFR4JD/7AGh+DHX7j8NoeDu5I=;
 b=c8JWVMZPj7TStjMlBX35y79h0yO7geOnekTKY/wmECx2KYe3SPE1QumX
 QIopVfxluy75TOHJvzHmChuXJuYNvWN9lssHxt253FAV4ktifAHnbnMYD
 8KVJ2vYmzP/UkoKKVh9xqs5pmTewKi8pu8J22NAXYAO5Aek4Wdi3b/iLO
 UZjduYhlk+4D/v/2WHBcO7oJ7gPMybusKKUddn7X56iDQkg2S64FoBN0b
 5AO8mTYRpZtEN+1mAk9eLwo027MJwWkQzXLHO3IJ5keAs2p+BsC+Zzqq8
 7w+YXMGvN7B2VCnGloDXGMA5S1+iAusIrqxa4n4lVUBF6q8/jppj0QKxT
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c8JWVMZP
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: avoid infinite loop if
 NVM has invalid TLV length
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

The ice_get_pfa_module_tlv() function iterates over the TLVs in the
Preserved Fields Area (PFA) of the NVM. This is used to access data such as
the Part Board Assembly identifier.

Some NVMs in the wild have been found with incorrect TLV lengths including
at least one which reports a TLV length of 0xFFFF. When trying to read the
PBA from such an NVM, the driver will compute a new offset for the next_tlv
which is lower, due to overflowing the 16-bit next_tlv variable.

In the best case, the driver will incorrectly interpret values until it
finds one which has an offset greater than the PFA area without
overflowing. In the worst case, the values in the NVM result in an infinite
loop as the misinterpreted lengths result in checking offsets which are
valid within the PFA, and which ultimately point in an infinite loop.

Fix this by using check_add_overflow when calculating the NVM offsets, and
bailing if we ever overflow. Additionally, use check_add_overflow when
calculating the initial maximum PFA size.

This ensures that we bail immediately on encountering any TLV who's length
would have caused the naive addition to overflow, rather than entering an
infinite loop or otherwise misinterpreting NVM values.

Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes in v2:
- Use check_add_overflow instead of increasing the variables to u32
- Upgrade log messages to dev_warn()
- Link to v1: https://lore.kernel.org/r/20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-v1-1-ecbb6a75961e@intel.com
---
 drivers/net/ethernet/intel/ice/ice_nvm.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 84eab92dc03c..53dbc9000652 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -440,8 +440,7 @@ int
 ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 		       u16 module_type)
 {
-	u16 pfa_len, pfa_ptr;
-	u16 next_tlv;
+	u16 pfa_len, pfa_ptr, next_tlv, max_pfa;
 	int status;
 
 	status = ice_read_sr_word(hw, ICE_SR_PFA_PTR, &pfa_ptr);
@@ -454,11 +453,18 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 		ice_debug(hw, ICE_DBG_INIT, "Failed to read PFA length.\n");
 		return status;
 	}
+
+	if (check_add_overflow(pfa_ptr, pfa_len, &max_pfa)) {
+		dev_warn(ice_hw_to_dev(hw), "PFA starts at offset %u. PFA length of %u causes 16-bit arithmetic overflow.\n",
+			 pfa_len);
+		return -EINVAL;
+	}
+
 	/* Starting with first TLV after PFA length, iterate through the list
 	 * of TLVs to find the requested one.
 	 */
 	next_tlv = pfa_ptr + 1;
-	while (next_tlv < pfa_ptr + pfa_len) {
+	while (next_tlv < max_pfa) {
 		u16 tlv_sub_module_type;
 		u16 tlv_len;
 
@@ -485,7 +491,12 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 		/* Check next TLV, i.e. current TLV pointer + length + 2 words
 		 * (for current TLV's type and length)
 		 */
-		next_tlv = next_tlv + tlv_len + 2;
+		if (check_add_overflow(next_tlv, 2, &next_tlv) ||
+		    check_add_overflow(next_tlv, tlv_len, &next_tlv))
+			dev_warn(ice_hw_to_dev(hw), "Failed to locate PFA TLV module of type %u due to arithmetic overflow. The PFA length is %u. The last TLV has length of %u\n",
+				 module_type, pfa_len, tlv_len);
+			return -EINVAL;
+		}
 	}
 	/* Module does not exist */
 	return -ENOENT;

---
base-commit: 83e93942796db58652288f0391ac00072401816f
change-id: 20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-99ebb2c55c52

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

