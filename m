Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAE59FFCF6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 18:42:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F294403D5;
	Thu,  2 Jan 2025 17:41:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NYpua9lqlOic; Thu,  2 Jan 2025 17:41:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AAB6403EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735839716;
	bh=zewCXryLBAmS6GupELoPnKwlpgE7Rk2QDzMgSD+MVFI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DxB7UunLlgyYrJWfcz+a/2ylb3nBNiXuiOYIOifvDZRsB3ORwGR1j6vvI+6WY79ky
	 BnKxeedRJtLuqgARalmVMloZxYY8Ty3WNVY5r5Av+nWriMBJ3Pbt/jfdgqpFQYvHGx
	 qAaFTNoWcidv9laFx7XaKVVLPJkUm1LYmENFCkGEN3c/vTIAGdB7M8rL/MKGJVkQ64
	 2PYsow6sDM9U5j/DZBlb//NivNvEQAmX5Fv8NHJMBjOv8Ad7W7KTx0Di6lMLCAq8Yg
	 DFJDDzTbdfavOMm9/6Lq9u5Z1Jcl48tMFIIxgCXbOd58uuI43VWt0Ttf078tFaatFb
	 G0r7huJ9QeLPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AAB6403EF;
	Thu,  2 Jan 2025 17:41:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 01BE3F27
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:41:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D823D80C5F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:41:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SeKylwXWNV6r for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 17:41:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1448180AC6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1448180AC6
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1448180AC6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:41:52 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tTPCb-007u04-0P;
 Thu, 02 Jan 2025 17:41:45 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Thu,  2 Jan 2025 17:41:41 +0000
Message-ID: <20250102174142.200700-3-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250102174142.200700-1-linux@treblig.org>
References: <20250102174142.200700-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=zewCXryLBAmS6GupELoPnKwlpgE7Rk2QDzMgSD+MVFI=; b=olFgcKKc4EOLq81i
 sJ8jXSXwXAlXOfgw7D0QFcqPozfsgmFSJCwFP+Z0yiudwX/ABF+NMtIHWUXMtj64wcyIjDdIL8nZH
 HfKJh9wvfC65Aj8yxhz+fJddHoNTnyNGMbTLQ+t1KZp3U2Yoh63fUoYizxEgMwiCv2IW3sImMmrlL
 xhvJiMpOOTAp1te3aScTHVPw/NOk92dTi3yILJ8UM7lPnRqQbXvXB6wAKhO/eFzeVMDszPMNucv9I
 nz58P/o7847X4Z1S0PofT/vWlCz4+dYFcsxUIOOwL5GH32sJnbq8DH7efXu8KBUUe5gEcpE66B2Sr
 ve1+cC7VCj1fjjJPuQ==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org
 header.a=rsa-sha256 header.s=bytemarkmx header.b=olFgcKKc
Subject: [Intel-wired-lan] [PATCH net-next 2/3] igc: Remove unused
 igc_read/write_pci_cfg wrappers
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

igc_read_pci_cfg() and igc_write_pci_cfg were added in 2018 as part of
commit 146740f9abc4 ("igc: Add support for PF")
but have remained unused.

Remove them.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/net/ethernet/intel/igc/igc_hw.h   |  2 --
 drivers/net/ethernet/intel/igc/igc_main.c | 14 --------------
 2 files changed, 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index d9d1a1a11daf..7ec7e395020b 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -281,7 +281,5 @@ struct net_device *igc_get_hw_dev(struct igc_hw *hw);
 
 s32  igc_read_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value);
 s32  igc_write_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value);
-void igc_read_pci_cfg(struct igc_hw *hw, u32 reg, u16 *value);
-void igc_write_pci_cfg(struct igc_hw *hw, u32 reg, u16 *value);
 
 #endif /* _IGC_HW_H_ */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 27872bdea9bd..9c92673a7240 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6780,20 +6780,6 @@ static const struct net_device_ops igc_netdev_ops = {
 };
 
 /* PCIe configuration access */
-void igc_read_pci_cfg(struct igc_hw *hw, u32 reg, u16 *value)
-{
-	struct igc_adapter *adapter = hw->back;
-
-	pci_read_config_word(adapter->pdev, reg, value);
-}
-
-void igc_write_pci_cfg(struct igc_hw *hw, u32 reg, u16 *value)
-{
-	struct igc_adapter *adapter = hw->back;
-
-	pci_write_config_word(adapter->pdev, reg, *value);
-}
-
 s32 igc_read_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value)
 {
 	struct igc_adapter *adapter = hw->back;
-- 
2.47.1

