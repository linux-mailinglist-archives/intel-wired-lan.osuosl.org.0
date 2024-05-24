Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 843D68CEC98
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 May 2024 01:07:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CA2D834F1;
	Fri, 24 May 2024 23:07:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V5tiJvgEP2MU; Fri, 24 May 2024 23:07:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF3C0831E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716592032;
	bh=OC7S5cJJtfjQw09tTy21WyAcRD3ID8o8GNNrIaTnpsY=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YJDaSZb15+cvNstPflC1UqGnDTV50rG3xJ9+3FIq8zSEGzOE7nuIuvqI8ruUNbPA3
	 qdOz/K81f52LI+Qeptd1ttgzVAEId3Gmm/wlvkBz1fcdiKaD8C92gWINI4wJ9dhOCA
	 jPQpXeMnR4Gc+VqpXNJ1Q2Axzls5YnjtYgCaZ9FdE7snUqjvJAaWZgO+fMECdmo45H
	 cz4hDrirKu3LPJua4mXilZ0AmESv0p4QVvVny91xGnCxe+bgaCjh1Q08CZHE7Wx5q7
	 gTU0HWLJIpnUB0zfQmPj7Pj+aJgrdr0Mnhboiwb51g4hbRIYg96jgwlBwaqRAU6I8A
	 HIGg9w6JCqlhg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF3C0831E7;
	Fri, 24 May 2024 23:07:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 855231BF389
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 23:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 704ED82BC4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 23:07:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wpTiEw1B5-EU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2024 23:07:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4FC0582BC3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FC0582BC3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4FC0582BC3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 23:07:09 +0000 (UTC)
X-CSE-ConnectionGUID: jhdxrEFeRUeLEIPHR4Z1nw==
X-CSE-MsgGUID: 2/pTTJjTQcmf+hvp1wxwSA==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="38370128"
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="38370128"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 16:07:08 -0700
X-CSE-ConnectionGUID: h6dLzzYeQRm34RqBXMTS3A==
X-CSE-MsgGUID: t62DUQPuTtqZRr7xl80NEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="34264748"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 16:07:08 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 24 May 2024 16:06:59 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240524-iwl-net-2024-05-16-fix-nvm-tlv-issue-v4-1-4fc1da2a450d@intel.com>
X-B4-Tracking: v=1; b=H4sIAJIdUWYC/53NQQ6CMBAF0KuQrh1DCy3gynsYF7QMMgkUQ7FqC
 He3EBfElbr8fybvT8zhQOjYIZrYgJ4c9TaEdBcx05T2gkBVyEzEIo0lV0D3FiyOsBQQSwhVTQ+
 wvoOx9UDO3RCKArUWRkojBQvUdcDwtM6c2Ftg53BoyI398FznPV/Pvy15DhzQaK3KTBaK45Hsi
 O3e9N064MUWzb5ERUDrCpHnKRrM1Sea/IMmC5oqIxNTa5XVW3Se5xczwSRmiwEAAA==
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailer: b4 0.13.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716592029; x=1748128029;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=MLtSGj3owon8tINdRzA68aCM1I/UlDY6G+8adeorNoc=;
 b=HZ9IUvPwxviUkvVLB6A0MMCoxe4J2dSpdUHSYn5AdJUAbEB3rXCwu86+
 RHd7WIyF1eIHrPf4A6dzxwQPgwgbubxd6SZaZ2N/lnywl0XoSwbq28vyj
 yE3SJnQih8WXPQwtlLP29/jryI/chMByv6bcBPxXhV4BZahF4K3ZIbTYe
 nxIpQyO/xcEdLcseR5c/i+fNAfm0C7CtAAVkStLOCQq1C8/Q2aJTBt6cf
 MVuVEPKgCOre19YcOlezPrPKe/bvSDbSYMKZdNJ0I4RhkcH2MrpDEZUAT
 0ufT9Q0ZmzqjO7nl0b2tHef/d6f++NGaBojxSwCc5BTJHyllP22x/Q6eL
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HZ9IUvPw
Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix iteration of TLVs in
 Preserved Fields Area
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

The ice_get_pfa_module_tlv() function iterates over the Type-Length-Value
structures in the Preserved Fields Area (PFA) of the NVM. This is used by
the driver to access data such as the Part Board Assembly identifier.

The function uses simple logic to iterate over the PFA. First, the pointer
to the PFA in the NVM is read. Then the total length of the PFA is read
from the first word.

A pointer to the first TLV is initialized, and a simple loop iterates over
each TLV. The pointer is moved forward through the NVM until it exceeds the
PFA area.

The logic seems sound, but it is missing a key detail. The Preserved
Fields Area length includes one additional final word. This is documented
in the device data sheet as a dummy word which contains 0xFFFF. All NVMs
have this extra word.

If the driver tries to scan for a TLV that is not in the PFA, it will read
past the size of the PFA. It reads and interprets the last dummy word of
the PFA as a TLV with type 0xFFFF. It then reads the word following the PFA
as a length.

The PFA resides within the Shadow RAM portion of the NVM, which is
relatively small. All of its offsets are within a 16-bit size. The PFA
pointer and TLV pointer are stored by the driver as 16-bit values.

In almost all cases, the word following the PFA will be such that
interpreting it as a length will result in 16-bit arithmetic overflow. Once
overflowed, the new next_tlv value is now below the maximum offset of the
PFA. Thus, the driver will continue to iterate the data as TLVs. In the
worst case, the driver hits on a sequence of reads which loop back to
reading the same offsets in an endless loop.

To fix this, we need to correct the loop iteration check to account for
this extra word at the end of the PFA. This alone is sufficient to resolve
the known cases of this issue in the field. However, it is plausible that
an NVM could be misconfigured or have corrupt data which results in the
same kind of overflow. Protect against this by using check_add_overflow
when calculating both the maximum offset of the TLVs, and when calculating
the next_tlv offset at the end of each loop iteration. This ensures that
the driver will not get stuck in an infinite loop when scanning the PFA.

Fixes: e961b679fb0b ("ice: add board identifier info to devlink .info_get")
Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes in v4:
- Update title and description for true root cause
- Correct driver logic to account for PFA length being 1 larger than TLVs
- Link to v3: https://lore.kernel.org/r/20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v3-1-f46c53cfb67f@intel.com

Changes in v3:
- Fix missing {
- Fix missing pfa_ptr variable to dev_warn()
- Add Fixes tag
- Link to v2: https://lore.kernel.org/r/20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v2-1-fdee184ece86@intel.com

Changes in v2:
- Use check_add_overflow instead of increasing the variables to u32
- Upgrade log messages to dev_warn()
- Link to v1: https://lore.kernel.org/r/20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-v1-1-ecbb6a75961e@intel.com
---
 drivers/net/ethernet/intel/ice/ice_nvm.c | 28 +++++++++++++++++++++-------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 84eab92dc03c..ea7cbdf8492d 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -440,8 +440,7 @@ int
 ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 		       u16 module_type)
 {
-	u16 pfa_len, pfa_ptr;
-	u16 next_tlv;
+	u16 pfa_len, pfa_ptr, next_tlv, max_tlv;
 	int status;
 
 	status = ice_read_sr_word(hw, ICE_SR_PFA_PTR, &pfa_ptr);
@@ -454,11 +453,23 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 		ice_debug(hw, ICE_DBG_INIT, "Failed to read PFA length.\n");
 		return status;
 	}
+
+	/* The Preserved Fields Area contains a sequence of Type-Length-Value
+	 * structures which define its contents. The PFA length includes all
+	 * of the TLVs, plus the initial length word itself, *and* one final
+	 * word at the end after all of the TLVs.
+	 */
+	if (check_add_overflow(pfa_ptr, pfa_len - 1, &max_tlv)) {
+		dev_warn(ice_hw_to_dev(hw), "PFA starts at offset %u. PFA length of %u caused 16-bit arithmetic overflow.\n",
+			 pfa_ptr, pfa_len);
+		return -EINVAL;
+	}
+
 	/* Starting with first TLV after PFA length, iterate through the list
 	 * of TLVs to find the requested one.
 	 */
 	next_tlv = pfa_ptr + 1;
-	while (next_tlv < pfa_ptr + pfa_len) {
+	while (next_tlv < max_tlv) {
 		u16 tlv_sub_module_type;
 		u16 tlv_len;
 
@@ -482,10 +493,13 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
 			}
 			return -EINVAL;
 		}
-		/* Check next TLV, i.e. current TLV pointer + length + 2 words
-		 * (for current TLV's type and length)
-		 */
-		next_tlv = next_tlv + tlv_len + 2;
+
+		if (check_add_overflow(next_tlv, 2, &next_tlv) ||
+		    check_add_overflow(next_tlv, tlv_len, &next_tlv)) {
+			dev_warn(ice_hw_to_dev(hw), "TLV of type %u and length 0x%04x caused 16-bit arithmetic overflow. The PFA starts at 0x%04x and has length of 0x%04x\n",
+				 tlv_sub_module_type, tlv_len, pfa_ptr, pfa_len);
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

