Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C84AA7E35E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 17:10:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D40B380DAB;
	Mon,  7 Apr 2025 15:10:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0rCpwxCtC6_r; Mon,  7 Apr 2025 15:10:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E0EE80DDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744038624;
	bh=igW9cPZ7qOuq055DmdUKAEMMUxbx9TRAhwlielsI7rY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=F1yCtF153rOGIIr2DW0zOYXalJnX5fVJc3o2KXlCsfh7LuKAxiri3I+3dE9Zxywxq
	 D6MAcnKjjxtGj/SDzBL0JfpnlnSNWhdILjF0ukjdTiaImR2F8JcIhd9KV4x0Txx3N1
	 +BktXSoV40Xl0tZeCXaLtR/bf6nFpQDxwe/8WjnHyL7by4OGiZ8SEsMEVbf0YIBBv5
	 6wTNXOnUPXtYZcz5qd0dw0GHS8Eiloio1vvpheane1wu03SmSWLJAxhIGaMhiSW79p
	 A52Thrfh19mw0WdZrXicw118RW1eRygxvOZP9ElRmKUSeGpCIsR50Fv7OLKbwxtSaZ
	 CWiIEOdRX56Ew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E0EE80DDC;
	Mon,  7 Apr 2025 15:10:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E3F5DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 03:49:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E887C40898
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 03:49:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P2MolyHbfNf4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 03:49:09 +0000 (UTC)
X-Greylist: delayed 395 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 07 Apr 2025 03:49:07 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5AF7B40895
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AF7B40895
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=159.226.251.21;
 helo=cstnet.cn; envelope-from=vulab@iscas.ac.cn; receiver=<UNKNOWN> 
Received: from cstnet.cn (smtp21.cstnet.cn [159.226.251.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5AF7B40895
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 03:49:07 +0000 (UTC)
Received: from localhost.localdomain (unknown [124.16.141.245])
 by APP-01 (Coremail) with SMTP id qwCowADXff6XSfNni_PKBg--.48924S2;
 Mon, 07 Apr 2025 11:42:21 +0800 (CST)
From: Wentao Liang <vulab@iscas.ac.cn>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Wentao Liang <vulab@iscas.ac.cn>,
 stable@vger.kernel.org
Date: Mon,  7 Apr 2025 11:41:54 +0800
Message-ID: <20250407034155.1396-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.42.0.windows.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: qwCowADXff6XSfNni_PKBg--.48924S2
X-Coremail-Antispam: 1UD129KBjvJXoW7Aw18ZF1fKry5Jw48CFyDZFb_yoW8Xr1Dpa
 1q9ayqkw4rJw4avayxGa18A3s0v3yYyrnxCFyxu3sa9w4xAw18Jr18K343XryqyrZ8JFW2
 yF1UAFnxCFs8Z3JanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUB014x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
 6r4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v26F
 4UJVW0owAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv
 7VC0I7IYx2IY67AKxVWUXVWUAwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r
 1j6r4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02
 628vn2kIc2xKxwCY1x0262kKe7AKxVWUtVW8ZwCY02Avz4vE14v_Gr4l42xK82IYc2Ij64
 vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8G
 jcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2I
 x0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK
 8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I
 0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfUe4SrUUUUU
X-Originating-IP: [124.16.141.245]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiDAUFA2fzOrdCVwAAsD
X-Mailman-Approved-At: Mon, 07 Apr 2025 15:10:22 +0000
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iscas.ac.cn
Subject: [Intel-wired-lan] [PATCH] e1000e: Add error handling for
 e1e_rphy_locked()
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

The e1000_suspend_workarounds_ich8lan() calls e1e_rphy_locked to disable
the SMB release, but does not check its return value. A proper
implementation can be found in e1000_resume_workarounds_pchlan() from
/source/drivers/net/ethernet/intel/e1000e/ich8lan.c.

Add an error check for e1e_rphy_locked(). Log the error message and jump
to 'release' label if the e1e_rphy_locked() fails.

Fixes: 2fbe4526e5aa ("e1000e: initial support for i217")
Cc: stable@vger.kernel.org # v3.5+
Signed-off-by: Wentao Liang <vulab@iscas.ac.cn>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 2f9655cf5dd9..d16e3aa50809 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -5497,7 +5497,11 @@ void e1000_suspend_workarounds_ich8lan(struct e1000_hw *hw)
 			e1e_wphy_locked(hw, I217_SxCTRL, phy_reg);
 
 			/* Disable the SMB release on LCD reset. */
-			e1e_rphy_locked(hw, I217_MEMPWR, &phy_reg);
+			ret_val = e1e_rphy_locked(hw, I217_MEMPWR, &phy_reg);
+			if (ret_val) {
+				e_dbg("Fail to Disable the SMB release on LCD reset.");
+				goto release;
+			}
 			phy_reg &= ~I217_MEMPWR_DISABLE_SMB_RELEASE;
 			e1e_wphy_locked(hw, I217_MEMPWR, phy_reg);
 		}
-- 
2.42.0.windows.2

