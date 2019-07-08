Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D2C62C56
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2019 01:12:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 27B578798A;
	Mon,  8 Jul 2019 23:12:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4mRfhKXMUhSS; Mon,  8 Jul 2019 23:12:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 873778796C;
	Mon,  8 Jul 2019 23:12:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB7C91BF46A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B29B486614
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x1Q7rW2OlboP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 23:12:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B186886566
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:12:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="192484797"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jul 2019 16:12:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  8 Jul 2019 16:12:26 -0700
Message-Id: <20190708231236.20516-10-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.22.0.214.g8dca754b1e87
In-Reply-To: <20190708231236.20516-1-jacob.e.keller@intel.com>
References: <20190708231236.20516-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 09/19] fm10k: reduce the scope of the
 local msg variable
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

The msg variable in the fm10k_mbx_validate_msg_size and
fm10k_sm_mbx_transmit functions is only used within the do {} loop
scope. Reduce its scope only to where it is used.

This was detected by cppcheck, and resolves the following warnings
produced by that tool:

[fm10k_mbx.c:299]: (style) The scope of the variable 'msg' can be reduced.
[fm10k_mbx.c:2004]: (style) The scope of the variable 'msg' can be reduced.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_mbx.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
index 21021fe4f1c3..aece335b41f8 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
@@ -297,13 +297,14 @@ static u16 fm10k_mbx_validate_msg_size(struct fm10k_mbx_info *mbx, u16 len)
 {
 	struct fm10k_mbx_fifo *fifo = &mbx->rx;
 	u16 total_len = 0, msg_len;
-	u32 *msg;
 
 	/* length should include previous amounts pushed */
 	len += mbx->pushed;
 
 	/* offset in message is based off of current message size */
 	do {
+		u32 *msg;
+
 		msg = fifo->buffer + fm10k_fifo_tail_offset(fifo, total_len);
 		msg_len = FM10K_TLV_DWORD_LEN(*msg);
 		total_len += msg_len;
@@ -1920,7 +1921,6 @@ static void fm10k_sm_mbx_transmit(struct fm10k_hw *hw,
 	/* reduce length by 1 to convert to a mask */
 	u16 mbmem_len = mbx->mbmem_len - 1;
 	u16 tail_len, len = 0;
-	u32 *msg;
 
 	/* push head behind tail */
 	if (mbx->tail < head)
@@ -1930,6 +1930,8 @@ static void fm10k_sm_mbx_transmit(struct fm10k_hw *hw,
 
 	/* determine msg aligned offset for end of buffer */
 	do {
+		u32 *msg;
+
 		msg = fifo->buffer + fm10k_fifo_head_offset(fifo, len);
 		tail_len = len;
 		len += FM10K_TLV_DWORD_LEN(*msg);
-- 
2.22.0.214.g8dca754b1e87

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
