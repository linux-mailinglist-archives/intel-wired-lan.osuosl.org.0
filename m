Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B03EF66E384
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 381284085B;
	Tue, 17 Jan 2023 16:24:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 381284085B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972674;
	bh=4dWn9yI1by3HiRN586K//eN8t+JTylcnkq7/okWjeTs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9AkY6psIV+rqCleO56YFOgM42OgB+P93O1KMup1tEPnmW+yr052541b2PyGvM5pYP
	 yVecJUgVRiqrCISMwxgsGDRJKgvrRUAtLf9ooMGQsq7uHLXepHxUcBWAqsqOtzvM01
	 BfQCi67ft00C7L/ktmDXcpaUb4QDG3dt8WKD8S53u9o/PfvTrUZK0YnZEqOaCW8RTO
	 adX1eNFc7FDcQNjq6bmFv2Zh0dufv/7ZWC8nd2iKLf+xrbsEE4dujJbHoriN9OA8wG
	 fLxERbrMLLxmwuOVcqihTq1C323/UT4jiEMrsjlZ9itXXCdU0hC353gidv8G1UNjNl
	 UytbtAzQkWjcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DoVw6sEXfjYe; Tue, 17 Jan 2023 16:24:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0C614028D;
	Tue, 17 Jan 2023 16:24:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0C614028D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D5601BF283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 10:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D0A04026A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 10:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D0A04026A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oeiJvdUHNkQ8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 10:27:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D10340101
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D10340101
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 10:27:34 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id b17so25556521pld.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 02:27:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kmOnku77wCpJTbZOm6646yTM8PiOjj7loFTP8/nFzXY=;
 b=NgnoXGehvhLxDNkYQe/nD+J3TIWdEEHeOY2TXDDP0Rce+qkbFhbxvmN2xqwLm2wXYC
 uKSfm0DbhdtNBc9WLWzKI95i1HRXSiRu/994b6kwGgS3teKsQzfWwD/998Tz8ttgJ7TB
 +1SNNNo/fRp0km6/hjhPzBS/GrbncJRosJ0Hj4+dzOfxWx/qZew54EcoFrlTkksYNY9M
 XlCQFxxTRsTBIzmUWW+WpTeMxupQG1QA2wn2dqqhXJZI0vjpAoWsYqDyKtfgBaxs69x9
 evindYQDofXUot6uJJ4jot62foSfWEwqyrJHGieN8OsqMR06C8MqeDJEVSFPh52QipTg
 36BA==
X-Gm-Message-State: AFqh2kpFswRZvF58d68Xa5MNQTQdUyeM8aWTWpwQRGcLof4ELUv4zfAv
 rwTUC1/44BUbWDvPoRzj6t0=
X-Google-Smtp-Source: AMrXdXvLAqhc4oGk1i82O5NAA03rkDUCOFcyZ1urDuBJ7SYLHLU0Pr+NOGlOoGVyVwxRluvgf7o48w==
X-Received: by 2002:a17:902:7106:b0:194:66db:7789 with SMTP id
 a6-20020a170902710600b0019466db7789mr18287556pll.50.1673951253720; 
 Tue, 17 Jan 2023 02:27:33 -0800 (PST)
Received: from li540-143.members.linode.com ([2600:3c01::f03c:92ff:fe6e:f0f6])
 by smtp.gmail.com with ESMTPSA id
 q11-20020a170902eb8b00b00189c93ce5easm20796153plg.166.2023.01.17.02.27.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Jan 2023 02:27:33 -0800 (PST)
From: Jiajia Liu <liujia6264@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Tue, 17 Jan 2023 10:26:46 +0000
Message-Id: <20230117102645.24920-1-liujia6264@gmail.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 17 Jan 2023 16:23:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=kmOnku77wCpJTbZOm6646yTM8PiOjj7loFTP8/nFzXY=;
 b=JaR9n1yIXU8Xys+G0tkz6C7PSqR9i0vQP6wK/Qb4e6Bby8BKdUMQFaniTYM+6DXD+U
 +meRrjihC59W7zV8CV2T60XZGmhVcOAIlX207PcQhlxwyLB71sqSqq7CoW1TfxQ+WklD
 vpeSGibDIK4/k5TDmZI0uIYTOfuPWayTKOlWMTVSmngoQjlM3Bxl3VyQFCadUor8azxp
 pR8R1EQFXa/ArWCTgLm1ONwDPwjRoksC1bUCQTYvKRyozLphC/P7n0fMbldW40qLqj1b
 Ds5Dazv2fMlTFQ43RwOt06CBvQXRVFzItzBXT7rfmJIVN6MUHnJqY8vlL90U+dQgrybX
 3qiA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=JaR9n1yI
Subject: [Intel-wired-lan] [PATCH] e1000e: Add ADP_I219_LM17 to ME S0ix
 blacklist
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
Cc: netdev@vger.kernel.org, Jiajia Liu <liujia6264@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I219 on HP EliteOne 840 All in One cannot work after s2idle resume
when the link speed is Gigabit, Wake-on-LAN is enabled and then set
the link down before suspend. No issue found when requesting driver
to configure S0ix. Add workround to let ADP_I219_LM17 use the dirver
configured S0ix.

Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=216926
Signed-off-by: Jiajia Liu <liujia6264@gmail.com>
---

It's regarding the bug above, it looks it's causued by the ME S0ix.
And is there a method to make the ME S0ix path work?

 drivers/net/ethernet/intel/e1000e/netdev.c | 25 ++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 04acd1a992fa..7ee759dbd09d 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6330,6 +6330,23 @@ static void e1000e_flush_lpic(struct pci_dev *pdev)
 	pm_runtime_put_sync(netdev->dev.parent);
 }
 
+static u16 me_s0ix_blacklist[] = {
+	E1000_DEV_ID_PCH_ADP_I219_LM17,
+	0
+};
+
+static bool e1000e_check_me_s0ix_blacklist(const struct e1000_adapter *adapter)
+{
+	u16 *list;
+
+	for (list = me_s0ix_blacklist; *list; list++) {
+		if (*list == adapter->pdev->device)
+			return true;
+	}
+
+	return false;
+}
+
 /* S0ix implementation */
 static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 {
@@ -6337,6 +6354,9 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 	u32 mac_data;
 	u16 phy_data;
 
+	if (e1000e_check_me_s0ix_blacklist(adapter))
+		goto req_driver;
+
 	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID &&
 	    hw->mac.type >= e1000_pch_adp) {
 		/* Request ME configure the device for S0ix */
@@ -6346,6 +6366,7 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 		trace_e1000e_trace_mac_register(mac_data);
 		ew32(H2ME, mac_data);
 	} else {
+req_driver:
 		/* Request driver configure the device to S0ix */
 		/* Disable the periodic inband message,
 		 * don't request PCIe clock in K1 page770_17[10:9] = 10b
@@ -6488,6 +6509,9 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 	u16 phy_data;
 	u32 i = 0;
 
+	if (e1000e_check_me_s0ix_blacklist(adapter))
+		goto req_driver;
+
 	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID &&
 	    hw->mac.type >= e1000_pch_adp) {
 		/* Keep the GPT clock enabled for CSME */
@@ -6523,6 +6547,7 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 		else
 			e_dbg("DPG_EXIT_DONE cleared after %d msec\n", i * 10);
 	} else {
+req_driver:
 		/* Request driver unconfigure the device from S0ix */
 
 		/* Disable the Dynamic Power Gating in the MAC */
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
