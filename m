Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0F99FCBF9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Dec 2024 17:52:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7184260673;
	Thu, 26 Dec 2024 16:52:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O0jZP0sv-rZY; Thu, 26 Dec 2024 16:52:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6BC360652
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735231972;
	bh=7AmYte8oTBIV4rhftXrsFRb4h3cQ6cpdyY2nNfyPAUo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MP2b9MGMEKJ6RKCY10PKInZjOsP/tXJUMb3eeJJ4ta7t1E3YZX3miV/S7EHJmFtVr
	 SLL70WP9YzhCiKlzfv7hWF4yzpqwbzDSHG8E8IVLZ/RbWMx507OsyjqcqBkIsmCzG7
	 naZ0lnOZPpFf4asbNgQD4eFNtVQhfYvwucVzUiEeNB+JSfcyxM5NIudlmnHLZYiJN8
	 W15HIr8/RSkpW2hTKzv+nSda/JFeZYzqGRgDTF7JNov/AGWbl18YBcpUR9cEqSjdvs
	 n9BaqzUBXdt9ZzDKYkpCYWOglgAmwpRfLQCDV3hUi/pddsMq+SMm7yya2JJpuaeYji
	 1Q41O3Y2Lb4kw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6BC360652;
	Thu, 26 Dec 2024 16:52:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C9860757
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 16:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB0056064D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 16:52:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YkpkjXRyziBg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Dec 2024 16:52:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E0626605DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0626605DA
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E0626605DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 16:52:49 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tQr5u-007IaP-1M;
 Thu, 26 Dec 2024 16:52:18 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Thu, 26 Dec 2024 16:52:15 +0000
Message-ID: <20241226165215.105092-4-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241226165215.105092-1-linux@treblig.org>
References: <20241226165215.105092-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=7AmYte8oTBIV4rhftXrsFRb4h3cQ6cpdyY2nNfyPAUo=; b=WXEOyl0fxXdhgbXP
 SlSEZIGhcqhU98vojNJqoUO2SX68Jgx6zyaCNiCGarFacJysuHxtXRooWGDfvzGmrCn4h7P1QefC4
 z1USatp7VaiZkVchLulP0KoGlLzO0u62j2kbHmiJGUt2PEbiaDwWnHg0P2b5fA0QqpajbP2wIFnes
 xEq6AOCtC8BnF4pivVd+j6ch/0Jx2Ih5TLUTKPt54eNrqJIeeP+m27fMqURqwypwB6IZrHUxYA7Fb
 n3DOibfxxFo92xKNuxW+mUrQRFg4NQXL9alBvsFIHiE/oxaLkjUC7buQB0XbOmc0nW5XBlbZch+o3
 plsTbZlXiQPoR8rTWQ==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=WXEOyl0f
Subject: [Intel-wired-lan] [RFC net-next 3/3] igc: Remove unused
 igc_read/write_pcie_cap_reg
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

The last uses of igc_read_pcie_cap_reg() and igc_write_pcie_cap_reg()
were removed in 2019 by
commit 16ecd8d9af26 ("igc: Remove the obsolete workaround")

Remove them.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/net/ethernet/intel/igc/igc_hw.h   |  3 ---
 drivers/net/ethernet/intel/igc/igc_main.c | 25 -----------------------
 2 files changed, 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 7ec7e395020b..be8a49a86d09 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -279,7 +279,4 @@ struct net_device *igc_get_hw_dev(struct igc_hw *hw);
 #define hw_dbg(format, arg...) \
 	netdev_dbg(igc_get_hw_dev(hw), format, ##arg)
 
-s32  igc_read_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value);
-s32  igc_write_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value);
-
 #endif /* _IGC_HW_H_ */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 9c92673a7240..f58cd6940434 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6779,31 +6779,6 @@ static const struct net_device_ops igc_netdev_ops = {
 	.ndo_get_tstamp		= igc_get_tstamp,
 };
 
-/* PCIe configuration access */
-s32 igc_read_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value)
-{
-	struct igc_adapter *adapter = hw->back;
-
-	if (!pci_is_pcie(adapter->pdev))
-		return -IGC_ERR_CONFIG;
-
-	pcie_capability_read_word(adapter->pdev, reg, value);
-
-	return IGC_SUCCESS;
-}
-
-s32 igc_write_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value)
-{
-	struct igc_adapter *adapter = hw->back;
-
-	if (!pci_is_pcie(adapter->pdev))
-		return -IGC_ERR_CONFIG;
-
-	pcie_capability_write_word(adapter->pdev, reg, *value);
-
-	return IGC_SUCCESS;
-}
-
 u32 igc_rd32(struct igc_hw *hw, u32 reg)
 {
 	struct igc_adapter *igc = container_of(hw, struct igc_adapter, hw);
-- 
2.47.1

