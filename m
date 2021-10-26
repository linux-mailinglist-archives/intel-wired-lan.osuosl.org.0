Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E00DA43AC71
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 08:51:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8564540444;
	Tue, 26 Oct 2021 06:51:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jvKALwGFROQZ; Tue, 26 Oct 2021 06:51:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A4D940401;
	Tue, 26 Oct 2021 06:51:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 474C61BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 06:51:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 349C240225
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 06:51:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wXsGjgij3qQA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 06:51:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 147EC40220
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 06:51:23 +0000 (UTC)
Received: from HP-EliteBook-840-G7.. (1-171-100-18.dynamic-ip.hinet.net
 [1.171.100.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id CA4063F194; 
 Tue, 26 Oct 2021 06:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1635231081;
 bh=vGic+H/NifUc+D6vVvdBrQarGqiIlpJuvbTZC/BzH2Q=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=SdQgsmA7Zy5Sd5A13HUOVfKbW5XmlSj0f1RWHE6XnwFbmpCoTe18+L/J98ThiU371
 qnfOBWPKoi/5QSnCREi1/2nZ8rfCxW5ExIGeiX1TT/b+bXj/TCMjyY46eU/gRmbeED
 5ZIRXRH6mNTU9UJmRi8JpgPro7b9unHRbNIPsWO5hnqdYnJyjZ8lXJiD87uTwet75R
 FXVmCuV1AUYcNScGk6L8nEhzezsLPp6NLhwFdiwseosBapzXj0mgE9kv1e8lZw25VE
 GTM0yFAvBRwtP3+5bZtjycQKHRP4c0Q5h7SJCabFA6BodGyjVNdINT9lkZjFo4iMmY
 gj7CvAJDefOfw==
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Tue, 26 Oct 2021 14:51:12 +0800
Message-Id: <20211026065112.1366205-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2] e1000e: Add a delay to let ME
 unconfigure s0ix when DPG_EXIT_DONE is already flagged
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, acelan.kao@canonical.com,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On some ADL platforms, DPG_EXIT_DONE is always flagged so e1000e resume
polling logic doesn't wait until ME really unconfigures s0ix.

So check DPG_EXIT_DONE before issuing EXIT_DPG, and if it's already
flagged, wait for 1 second to let ME unconfigure s0ix.

Fixes: 3e55d231716e ("e1000e: Add handshake with the CSME to support S0ix")
Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=214821
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
v2:
 Add missing "Fixes:" tag

 drivers/net/ethernet/intel/e1000e/netdev.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 44e2dc8328a22..cd81ba00a6bc9 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6493,14 +6493,21 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 	u32 mac_data;
 	u16 phy_data;
 	u32 i = 0;
+	bool dpg_exit_done;
 
 	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID) {
+		dpg_exit_done = er32(EXFWSM) & E1000_EXFWSM_DPG_EXIT_DONE;
 		/* Request ME unconfigure the device from S0ix */
 		mac_data = er32(H2ME);
 		mac_data &= ~E1000_H2ME_START_DPG;
 		mac_data |= E1000_H2ME_EXIT_DPG;
 		ew32(H2ME, mac_data);
 
+		if (dpg_exit_done) {
+			e_warn("DPG_EXIT_DONE is already flagged. This is a firmware bug\n");
+			msleep(1000);
+		}
+
 		/* Poll up to 2.5 seconds for ME to unconfigure DPG.
 		 * If this takes more than 1 second, show a warning indicating a
 		 * firmware bug
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
