Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5259D5603E4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 17:11:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9F5884100;
	Wed, 29 Jun 2022 15:11:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9F5884100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656515517;
	bh=UTnD9ZT+JIViUkb5UwHvnv3Qb8QPOUcTAsvGk1DvMJM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1QHRoAbjkWN28egtxAj8jY/tr1o47pyEjR3t1LT/RH11PRgDKZSFlxww05XXL7qS8
	 dUTVAv2XQGGUWtoerKqQrjA1tuTXCfuza6zwc9e7CoHDUO7oAHvlA9C85Q4s8LztJH
	 lCWSy8epHhcwM6OkEf2odImSzN4RGTTr1IgKG1JRbzscTIRaACVOoMBRmav0ls8fbm
	 vd/KwBnYn1ncMgcIDdfUGZ/VCI6JSt+DAeQtAcaAC1Py1TfUMflopfegY2Ibr4PeQh
	 dPZsfYtcR1Ne+elmCoI+yimQN/GbUGSoEBKOjMgH6O+sT9J72hQgPJ5d8rbruQcc8A
	 0nJc9w85Kn9mg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g69dSA1BNYOg; Wed, 29 Jun 2022 15:11:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDCEC81A23;
	Wed, 29 Jun 2022 15:11:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDCEC81A23
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7FA781BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 55547840F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:17:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55547840F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dHSSQShHxkQD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 14:17:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6583840EE
Received: from smtpbg.qq.com (unknown [43.155.67.158])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6583840EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:17:30 +0000 (UTC)
X-QQ-mid: bizesmtp83t1656512237tjzkwm5b
Received: from localhost.localdomain ( [182.148.13.66])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Wed, 29 Jun 2022 22:17:14 +0800 (CST)
X-QQ-SSF: 0100000000200060C000C00A0000000
X-QQ-FEAT: dLvv507TVpQIdL/x1ynPIdYqh6JthnLEqmtvph9RisMObet0dM2sNVX/jylm1
 QZca3Y4gSGvPO5ZZAdzDnJvziKtQ7OYo4kdUrkEX7iM5G7OOuvcG0K+3tah9eUtxCopP0d7
 oC4Jv5ydP8ZtCDPteglIWbEPjPUj97i8+Ri9ptm5dZv8LpnbSCENnhQGuz6XqPGEPHxk1Ce
 axK54lvVY+DOOXfitZqbb4TEY0VtKllR7ZgL/8QJRwgQw0t7mAsuTodhNP8WqYhMQmEoJho
 ms590Gl0hZSvYzPYmd+K9p2Ppb61e8iq7zUj5/J8dDGwa5fHDhD1I9OzLyR9aFwl4uNrNzL
 4246+LHzORggWq1Xxg=
X-QQ-GoodBg: 0
From: Jilin Yuan <yuanjilin@cdjrlc.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Wed, 29 Jun 2022 22:17:08 +0800
Message-Id: <20220629141708.13292-1-yuanjilin@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr4
X-Mailman-Approved-At: Wed, 29 Jun 2022 15:11:26 +0000
Subject: [Intel-wired-lan] [PATCH] intel/igb:fix repeated words in comments
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
Cc: netdev@vger.kernel.org, Jilin Yuan <yuanjilin@cdjrlc.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Delete the redundant word 'the'.
Delete the redundant word 'frames'.
Delete the redundant word 'set'.
Delete the redundant word 'slot'.

Signed-off-by: Jilin Yuan <yuanjilin@cdjrlc.com>
---
 drivers/net/ethernet/intel/igb/e1000_82575.c | 2 +-
 drivers/net/ethernet/intel/igb/e1000_mac.c   | 2 +-
 drivers/net/ethernet/intel/igb/igb_main.c    | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.c b/drivers/net/ethernet/intel/igb/e1000_82575.c
index cbe92fd23a70..8d6e44ee1895 100644
--- a/drivers/net/ethernet/intel/igb/e1000_82575.c
+++ b/drivers/net/ethernet/intel/igb/e1000_82575.c
@@ -2207,7 +2207,7 @@ s32 igb_write_phy_reg_82580(struct e1000_hw *hw, u32 offset, u16 data)
  *  igb_reset_mdicnfg_82580 - Reset MDICNFG destination and com_mdio bits
  *  @hw: pointer to the HW structure
  *
- *  This resets the the MDICNFG.Destination and MDICNFG.Com_MDIO bits based on
+ *  This resets the MDICNFG.Destination and MDICNFG.Com_MDIO bits based on
  *  the values found in the EEPROM.  This addresses an issue in which these
  *  bits are not restored from EEPROM after reset.
  **/
diff --git a/drivers/net/ethernet/intel/igb/e1000_mac.c b/drivers/net/ethernet/intel/igb/e1000_mac.c
index 1277c5c7d099..205d577bdbba 100644
--- a/drivers/net/ethernet/intel/igb/e1000_mac.c
+++ b/drivers/net/ethernet/intel/igb/e1000_mac.c
@@ -854,7 +854,7 @@ s32 igb_force_mac_fc(struct e1000_hw *hw)
 	 *      1:  Rx flow control is enabled (we can receive pause
 	 *          frames but not send pause frames).
 	 *      2:  Tx flow control is enabled (we can send pause frames
-	 *          frames but we do not receive pause frames).
+	 *          but we do not receive pause frames).
 	 *      3:  Both Rx and TX flow control (symmetric) is enabled.
 	 *  other:  No other values should be possible at this point.
 	 */
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 68be2976f539..85e8de511d35 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1945,7 +1945,7 @@ static void igb_setup_tx_mode(struct igb_adapter *adapter)
 		 * However, when we do so, no frame from queue 2 and 3 are
 		 * transmitted.  It seems the MAX_TPKT_SIZE should not be great
 		 * or _equal_ to the buffer size programmed in TXPBS. For this
-		 * reason, we set set MAX_ TPKT_SIZE to (4kB - 1) / 64.
+		 * reason, we set MAX_ TPKT_SIZE to (4kB - 1) / 64.
 		 */
 		val = (4096 - 1) / 64;
 		wr32(E1000_I210_DTXMXPKTSZ, val);
@@ -9519,7 +9519,7 @@ static pci_ers_result_t igb_io_error_detected(struct pci_dev *pdev,
 		igb_down(adapter);
 	pci_disable_device(pdev);
 
-	/* Request a slot slot reset. */
+	/* Request a slot reset. */
 	return PCI_ERS_RESULT_NEED_RESET;
 }
 
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
