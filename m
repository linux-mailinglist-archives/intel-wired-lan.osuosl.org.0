Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8BD2CE1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2019 20:00:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 791E921567;
	Tue, 28 May 2019 18:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rtJn-eanERSU; Tue, 28 May 2019 18:00:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8D7D222744;
	Tue, 28 May 2019 18:00:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24C4E1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 18:00:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2239087B77
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 18:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hiPyQzyPJuam for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2019 17:59:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4593087B62
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:59:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 10:59:56 -0700
X-ExtLoop1: 1
Received: from alicemic-2.jf.intel.com ([10.166.16.121])
 by orsmga008.jf.intel.com with ESMTP; 28 May 2019 10:59:56 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.micheal@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2019 10:59:17 -0700
Message-Id: <20190528175921.30534-3-alice.michael@intel.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190528175921.30534-1-alice.michael@intel.com>
References: <20190528175921.30534-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S6 3/7] i40e: fix incorrect function
 documentation comment
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

 drivers/net/ethernet/intel/i40e/i40e_ptp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)
---
 drivers/net/ethernet/intel/i40e/i40e_ptp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 439c35f0c581..11394a52e21c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -140,8 +140,7 @@ static int i40e_ptp_adjfreq(struct ptp_clock_info *ptp, s32 ppb)
  * @ptp: The PTP clock structure
  * @delta: Offset in nanoseconds to adjust the PHC time by
  *
- * Adjust the frequency of the PHC by the indicated parts per billion from the
- * base frequency.
+ * Adjust the current clock time by a delta specified in nanoseconds.
  **/
 static int i40e_ptp_adjtime(struct ptp_clock_info *ptp, s64 delta)
 {
-- 
2.19.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
