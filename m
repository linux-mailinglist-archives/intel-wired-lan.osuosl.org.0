Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F1A71F33
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 20:24:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A791D84D3B;
	Tue, 23 Jul 2019 18:24:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jPKzzTIzrNu1; Tue, 23 Jul 2019 18:24:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D7DF84B22;
	Tue, 23 Jul 2019 18:24:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 80D721BF97A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7C7F687670
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qXtP-q-bDeur for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 18:24:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F1F9887535
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:24:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 11:24:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="253311788"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by orsmga001.jf.intel.com with ESMTP; 23 Jul 2019 11:24:35 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 06:03:39 -0400
Message-Id: <20190723100345.57522-6-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723100345.57522-1-alice.michael@intel.com>
References: <20190723100345.57522-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S8 06/12] i40e: Update FPK FW API
 version to 1.9
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
Cc: Piotr Azarewicz <piotr.azarewicz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Azarewicz <piotr.azarewicz@intel.com>

Upcoming FPK FW increment API version to 1.9, so we must bump up version
number as well.
FPK will support PHY access AQ command as FVL does.

Signed-off-by: Piotr Azarewicz <piotr.azarewicz@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index 360f0cb83b2d..21cccec328e3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -11,7 +11,7 @@
  */
 
 #define I40E_FW_API_VERSION_MAJOR	0x0001
-#define I40E_FW_API_VERSION_MINOR_X722	0x0008
+#define I40E_FW_API_VERSION_MINOR_X722	0x0009
 #define I40E_FW_API_VERSION_MINOR_X710	0x0009
 
 #define I40E_FW_MINOR_VERSION(_h) ((_h)->mac.type == I40E_MAC_XL710 ? \
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
