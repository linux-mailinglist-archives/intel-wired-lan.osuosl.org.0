Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BA361A30
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2019 06:56:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 296D020510;
	Mon,  8 Jul 2019 04:56:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hlAmlPenypPw; Mon,  8 Jul 2019 04:55:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C0E5B2050D;
	Mon,  8 Jul 2019 04:55:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 81BDC1BF337
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 04:55:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7E6B7847B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 04:55:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Bjo8QjTaVs2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 04:55:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A82AF82731
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 04:55:56 +0000 (UTC)
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37]
 helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hkLgw-000317-8W; Mon, 08 Jul 2019 04:55:54 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jeffrey.t.kirsher@intel.com
Date: Mon,  8 Jul 2019 12:55:46 +0800
Message-Id: <20190708045546.30160-2-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708045546.30160-1-kai.heng.feng@canonical.com>
References: <20190708045546.30160-1-kai.heng.feng@canonical.com>
Subject: [Intel-wired-lan] [PATCH 2/2] e1000e: disable force K1-off feature
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
Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Forwardport from http://mails.dpdk.org/archives/dev/2016-November/050658.html

MAC-PHY desync may occur causing misdetection of link up event.
Disabling K1-off feature can work around the problem.

Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=204057

Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/net/ethernet/intel/e1000e/hw.h      | 1 +
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
index eff75bd8a8f0..e3c71fd093ee 100644
--- a/drivers/net/ethernet/intel/e1000e/hw.h
+++ b/drivers/net/ethernet/intel/e1000e/hw.h
@@ -662,6 +662,7 @@ struct e1000_dev_spec_ich8lan {
 	bool kmrn_lock_loss_workaround_enabled;
 	struct e1000_shadow_ram shadow_ram[E1000_ICH8_SHADOW_RAM_WORDS];
 	bool nvm_k1_enabled;
+	bool disable_k1_off;
 	bool eee_disable;
 	u16 eee_lp_ability;
 	enum e1000_ulp_state ulp_state;
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 56f88a4e538c..c1e0e03dc5cb 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1538,6 +1538,9 @@ static s32 e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
 				fextnvm6 &= ~E1000_FEXTNVM6_K1_OFF_ENABLE;
 		}
 
+		if (hw->dev_spec.ich8lan.disable_k1_off == true)
+			fextnvm6 &= ~E1000_FEXTNVM6_K1_OFF_ENABLE;
+
 		ew32(FEXTNVM6, fextnvm6);
 	}
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
