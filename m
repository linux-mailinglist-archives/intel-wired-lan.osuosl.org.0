Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E2282BE1D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jan 2024 11:09:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3586842E0A;
	Fri, 12 Jan 2024 10:09:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3586842E0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705054185;
	bh=y9Up5Kex7G87pBzjhJvzszbyuPiQc/hb2yupviFCYfk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FxVgCQKYuCcKS7u98zOP6gVlRHAjmlWWN2JDTWN+uYdSo+ofLoGl73DlGLWf6K54n
	 0DIMy+GJ11rxJnp5th3r7OUzjUrZGh7eBKdnWPgDP8Z1A6Lz4gKfjIQGF8amlg9bZI
	 EjjLH05FNjBB+ULHJNxsLZfsTwDVTec9bVp244DZwvNOxWDv7rts21XspGcS4wRSTh
	 FOP5sSfvuafxAO5Zlof007gXg0s4zpNoDN1s/JDnEpeb05eCKGpiOrzc9AlRz9OosV
	 FUbVgHeC6saGzpZ3iFN16ve9VRxoP52CjBawwnqCvEoK/FReJQcMp4JqmHpulDdUXb
	 1Cy8tCFByXyCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id axDES6u8-KTQ; Fri, 12 Jan 2024 10:09:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 165B742DB6;
	Fri, 12 Jan 2024 10:09:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 165B742DB6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30B0C1BF995
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 10:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 09C9F6F652
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 10:09:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09C9F6F652
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id InNvvnLnT-_N for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jan 2024 10:09:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5E0A36FA25
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 10:09:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E0A36FA25
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5867356"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; 
   d="scan'208";a="5867356"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 02:09:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="759083278"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="759083278"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orsmga006.jf.intel.com with ESMTP; 12 Jan 2024 02:09:31 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Jan 2024 10:59:45 +0100
Message-Id: <20240112095945.450590-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240112095945.450590-1-jedrzej.jagielski@intel.com>
References: <20240112095945.450590-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705054175; x=1736590175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZvFke+XRGhfOl7Lb4+LszHZJfWeFfUICHvr9mpX/hxs=;
 b=oJW77k4P7+sAKQmjX7Uju0pqT2EBS+5ttGf7+ZsmUhauud7sXMkAP9tt
 a1yDG6QtTLkXBtvU0HB0yX9hqDZPpBEllIWykTYdFGj2E2qU84FDyzt9x
 z98UGx8LaCxI1HECHcMiOlrSqJwdfdoMNYLb9XrDqxSuZSalORhxKNJ9M
 13rRei3RPdXSafaqxrljZKIRFCxLevtC57noSm24tc/7pWm5DeO0DZaCU
 DMgHzm2WF+5a3K9wSeKoMFHp2Awfn2rRL7/oDfVRwcfNi8nA7Cy0viskN
 1Snllsi1zXZMCAyoqIsjwUCpKe8ndi7HBr8ghy0WmFdpHkqOMNvmkIDgb
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oJW77k4P
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] i40e-linux: Add support
 for reading Trace Buffer
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
Cc: netdev@vger.kernel.org, Jan Sokolowski <jan.sokolowski@intel.com>,
 anthony.l.nguyen@intel.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently after entering FW Recovery Mode we have no info in logs
regarding current FW state.

Add function reading content of the alternate RAM storing that info and
print it into the log. Additionally print state of CSR register.

Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 35 +++++++++++++++++++
 .../net/ethernet/intel/i40e/i40e_register.h   |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_type.h   |  5 +++
 4 files changed, 44 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index ba24f3fa92c3..6ebd2fd15e0e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -23,6 +23,8 @@
 /* Useful i40e defaults */
 #define I40E_MAX_VEB			16
 
+#define I40_BYTES_PER_WORD		2
+
 #define I40E_MAX_NUM_DESCRIPTORS	4096
 #define I40E_MAX_NUM_DESCRIPTORS_XL710	8160
 #define I40E_MAX_CSR_SPACE		(4 * 1024 * 1024 - 64 * 1024)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4977ff391fed..f5abe8c9a88d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15414,6 +15414,39 @@ static int i40e_handle_resets(struct i40e_pf *pf)
 	return is_empr ? -EIO : pfr;
 }
 
+/**
+ * i40e_log_fw_recovery_mode - log current FW state in Recovery Mode
+ * @pf: board private structure
+ *
+ * Read alternate RAM and CSR registers and print them to the log
+ **/
+static void i40e_log_fw_recovery_mode(struct i40e_pf *pf)
+{
+	u8 buf[I40E_FW_STATE_BUFF_SIZE] = {0};
+	struct i40e_hw *hw = &pf->hw;
+	u8 fws0b, fws1b;
+	u32 fwsts;
+	int ret;
+
+	ret = i40e_aq_alternate_read_indirect(hw, I40E_ALT_CANARY,
+					      I40E_ALT_BUFF_DWORD_SIZE, buf);
+	if (ret) {
+		dev_warn(&pf->pdev->dev,
+			 "Cannot get FW trace buffer due to FW err %d aq_err %s\n",
+			 ret, i40e_aq_str(hw, hw->aq.asq_last_status));
+		return;
+	}
+
+	fwsts = rd32(&pf->hw, I40E_GL_FWSTS);
+	fws0b = FIELD_GET(I40E_GL_FWSTS_FWS0B_MASK, fwsts);
+	fws1b = FIELD_GET(I40E_GL_FWSTS_FWS1B_MASK, fwsts);
+
+	print_hex_dump(KERN_DEBUG, "Trace Buffer: ", DUMP_PREFIX_NONE,
+		       BITS_PER_BYTE * I40_BYTES_PER_WORD, 1, buf,
+		       I40E_FW_STATE_BUFF_SIZE, true);
+	dev_dbg(&pf->pdev->dev, "FWS0B=0x%x, FWS1B=0x%x\n", fws0b, fws1b);
+}
+
 /**
  * i40e_init_recovery_mode - initialize subsystems needed in recovery mode
  * @pf: board private structure
@@ -15497,6 +15530,8 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
 	mod_timer(&pf->service_timer,
 		  round_jiffies(jiffies + pf->service_timer_period));
 
+	i40e_log_fw_recovery_mode(pf);
+
 	return 0;
 
 err_switch_setup:
diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index 14ab642cafdb..8e254ff9c035 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -169,6 +169,8 @@
 #define I40E_PRTDCB_TPFCTS_PFCTIMER_SHIFT 0
 #define I40E_PRTDCB_TPFCTS_PFCTIMER_MASK I40E_MASK(0x3FFF, I40E_PRTDCB_TPFCTS_PFCTIMER_SHIFT)
 #define I40E_GL_FWSTS 0x00083048 /* Reset: POR */
+#define I40E_GL_FWSTS_FWS0B_SHIFT 0
+#define I40E_GL_FWSTS_FWS0B_MASK  I40E_MASK(0xFF, I40E_GL_FWSTS_FWS0B_SHIFT)
 #define I40E_GL_FWSTS_FWS1B_SHIFT 16
 #define I40E_GL_FWSTS_FWS1B_MASK I40E_MASK(0xFF, I40E_GL_FWSTS_FWS1B_SHIFT)
 #define I40E_GL_FWSTS_FWS1B_EMPR_0 I40E_MASK(0x20, I40E_GL_FWSTS_FWS1B_SHIFT)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 725da7edbca3..0372a8d519ad 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -1372,6 +1372,11 @@ struct i40e_lldp_variables {
 #define I40E_ALT_BW_VALUE_MASK		0xFF
 #define I40E_ALT_BW_VALID_MASK		0x80000000
 
+/* Alternate Ram Trace Buffer*/
+#define I40E_ALT_CANARY				0xABCDEFAB
+#define I40E_ALT_BUFF_DWORD_SIZE		0x14 /* in dwords */
+#define I40E_FW_STATE_BUFF_SIZE			80
+
 /* RSS Hash Table Size */
 #define I40E_PFQF_CTL_0_HASHLUTSIZE_512	0x00010000
 
-- 
2.31.1

