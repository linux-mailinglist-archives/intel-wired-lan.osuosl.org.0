Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7C382BE1F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jan 2024 11:10:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E22B42E5F;
	Fri, 12 Jan 2024 10:09:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E22B42E5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705054193;
	bh=93IYNYTSQivSR+C4TjUcUiSLxfYl5ZGLUdhQ7ksEFgg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uGZ1FpI5ea0acbVVGHZkp09eESsuPuFzXEfDBB6gu460eLwisJ2Jy7UprSmpWz0bq
	 gV30n0NGc5L1uJ3O93bCRlpR3xcplW+4i+lH3WLpwUtHmVSu2Fv18QKdFGQ54Js4cV
	 6ahmZixvSVod+XtOIstAF/qmC3lFMX8wRJiMCnbJ9HspAVE9PaM4+Qe17fFfcjaAKM
	 PHA+rQxwrmXK6fnoovvbITmzAC7EKzLZZv2eb/Ct1MlUV6cJ+AI+OmZ6Ql6xkrFnCt
	 rQt8elMINgMNTHX+PpvqMGVd/D21wQ45FiWUxb3wIsavPZc4SRh3lrvSEVaCplonJF
	 4XLbXPnODZ2PQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id siMc-x6GhqlO; Fri, 12 Jan 2024 10:09:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B57242E3B;
	Fri, 12 Jan 2024 10:09:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B57242E3B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA30F1BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 10:09:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8F8D183B67
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 10:09:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F8D183B67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4yOPriugx0CW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jan 2024 10:09:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 016E083AC0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 10:09:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 016E083AC0
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5867350"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; 
   d="scan'208";a="5867350"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 02:09:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="759083275"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="759083275"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orsmga006.jf.intel.com with ESMTP; 12 Jan 2024 02:09:29 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Jan 2024 10:59:44 +0100
Message-Id: <20240112095945.450590-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240112095945.450590-1-jedrzej.jagielski@intel.com>
References: <20240112095945.450590-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705054185; x=1736590185;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KYlwYu/JnYFP0dZJ9hFqUmlC0ICBzK/58VCU/teM4uE=;
 b=Tm4uS8qOdglxuE3DUW/4Y76CJs8YGj3au1wN/ye3y+Aqi57HaydBlNmr
 NKqKjwscJW6mo5wBMSy3i97ZTIRo38uoUmrIjBzpMYfz8qMLM0FRiYO7K
 kV8etb7mof6GzzftLmw5l/I021JsAmc55aOgghW9O5rJVbULl6jwnCO7a
 1pseOGrcZ5wO5YW/PwVYevxzXmRh3qhxZdFLOlKJ6hPw0z8KlvW499eoW
 O+6Ul6zU5vK8vfZgbt0p0HAYBpNh492LkJ9boCz+vL6Lf0qV3nZYQ/EpN
 oD1DnHmL4JPDkkWk/rZVCZnUDnMxZw5T+hA6DFmh7ZjAsFb/ddzTN8Tie
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tm4uS8qO
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/2] i40e: Add read alternate
 indirect command
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 Przemyslaw R Karpinski <przemyslaw.r.karpinski@intel.com>,
 anthony.l.nguyen@intel.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw R Karpinski <przemyslaw.r.karpinski@intel.com>

Introduce implementation of 0x0903 Admin Queue command.
This indirect command reads a block of data from the alternate structure
of memory. The command defines the number of Dwords to be read and the
starting address inside the alternate structure.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Przemyslaw R Karpinski <przemyslaw.r.karpinski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 40 +++++++++++++++++++
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  3 ++
 3 files changed, 45 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index 18a1c3b6d72c..50785f7e6d08 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -1983,14 +1983,14 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_alternate_write);
  * Indirect read (indirect 0x0903)
  */
 
-struct i40e_aqc_alternate_ind_write {
+struct i40e_aqc_alternate_ind_read_write {
 	__le32 address;
 	__le32 length;
 	__le32 addr_high;
 	__le32 addr_low;
 };
 
-I40E_CHECK_CMD_LENGTH(i40e_aqc_alternate_ind_write);
+I40E_CHECK_CMD_LENGTH(i40e_aqc_alternate_ind_read_write);
 
 /* Done alternate write (direct 0x0904)
  * uses i40e_aq_desc
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index de6ca6295742..93971c9c98cc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -4375,6 +4375,46 @@ static int i40e_aq_alternate_read(struct i40e_hw *hw,
 	return status;
 }
 
+/**
+ * i40e_aq_alternate_read_indirect
+ * @hw: pointer to the hardware structure
+ * @addr: address of the alternate structure field
+ * @dw_count: number of alternate structure fields to read
+ * @buffer: pointer to the command buffer
+ *
+ * Read 'dw_count' dwords from alternate structure starting at 'addr' and
+ * place them in 'buffer'. The buffer should be allocated by caller.
+ *
+ **/
+int i40e_aq_alternate_read_indirect(struct i40e_hw *hw, u32 addr, u32 dw_count,
+				    void *buffer)
+{
+	struct i40e_aqc_alternate_ind_read_write *cmd_resp;
+	struct i40e_aq_desc desc;
+	int status;
+
+	if (!buffer)
+		return -EINVAL;
+
+	cmd_resp = (struct i40e_aqc_alternate_ind_read_write *)&desc.params.raw;
+
+	i40e_fill_default_direct_cmd_desc(&desc,
+					  i40e_aqc_opc_alternate_read_indirect);
+
+	desc.flags |= cpu_to_le16(I40E_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(I40E_AQ_FLAG_BUF);
+	if (dw_count > I40E_AQ_LARGE_BUF / 4)
+		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
+
+	cmd_resp->address = cpu_to_le32(addr);
+	cmd_resp->length = cpu_to_le32(dw_count);
+
+	status = i40e_asq_send_command(hw, &desc, buffer,
+				       lower_16_bits(4 * dw_count), NULL);
+
+	return status;
+}
+
 /**
  * i40e_aq_suspend_port_tx
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index af4269330581..37c23a0bded6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -322,6 +322,9 @@ i40e_aq_rem_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
 			     u8 filter_count);
 int i40e_read_lldp_cfg(struct i40e_hw *hw,
 		       struct i40e_lldp_variables *lldp_cfg);
+
+int i40e_aq_alternate_read_indirect(struct i40e_hw *hw, u32 addr, u32 dw_count,
+				    void *buffer);
 int
 i40e_aq_suspend_port_tx(struct i40e_hw *hw, u16 seid,
 			struct i40e_asq_cmd_details *cmd_details);
-- 
2.31.1

