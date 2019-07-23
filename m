Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CEF71E02
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 19:54:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F675861D1;
	Tue, 23 Jul 2019 17:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PCE3KkiSVM8y; Tue, 23 Jul 2019 17:54:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5405C86542;
	Tue, 23 Jul 2019 17:54:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 04EA51BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:54:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F0BB581B76
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cJc3XzforCgD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 17:54:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3F77081E24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:54:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 10:53:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="344813737"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga005.jf.intel.com with ESMTP; 23 Jul 2019 10:53:58 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 02:24:52 -0700
Message-Id: <20190723092454.3508-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190723092454.3508-1-anthony.l.nguyen@intel.com>
References: <20190723092454.3508-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 v3 12/15] ice: Increase size of
 Mailbox receive queue for many VFs
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

Currently we use the ICE_MBXQ_LEN for both the Mailbox send and receive
queues that are used to communicate with VFs. This is fine for the send
queue because the PF driver will lock the queue for every single send,
but for the Mailbox receive queue every VF is posting to its Mailbox
send queue and the hardware is then handing the message to the PF on its
Mailbox receive queue. This becomes a problem with many VFs because it
seems to overburden the Mailbox receive queue on the PF. Fix this by
increasing the Mailbox receive queue for the PF to 512 entries.

The number 512 was determined based on the number of VFs supported by
the device. We can have a total of 256 VFs so in the worst case this
allows the VFs to put 2 messages in the PFs Mailbox receive queue at the
same time.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      | 3 ++-
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 112bdb662ea2..36a8ee873ae1 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -69,7 +69,8 @@ extern const char ice_drv_ver[];
 #define ICE_INT_NAME_STR_LEN	(IFNAMSIZ + 16)
 #define ICE_ETHTOOL_FWVER_LEN	32
 #define ICE_AQ_LEN		64
-#define ICE_MBXQ_LEN		64
+#define ICE_MBXSQ_LEN		64
+#define ICE_MBXRQ_LEN		512
 #define ICE_MIN_MSIX		2
 #define ICE_NO_VSI		0xffff
 #define ICE_MAX_TXQS		2048
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 846cd79240d0..7277d04c42be 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1507,8 +1507,8 @@ static void ice_set_ctrlq_len(struct ice_hw *hw)
 	hw->adminq.num_sq_entries = ICE_AQ_LEN;
 	hw->adminq.rq_buf_size = ICE_AQ_MAX_BUF_LEN;
 	hw->adminq.sq_buf_size = ICE_AQ_MAX_BUF_LEN;
-	hw->mailboxq.num_rq_entries = ICE_MBXQ_LEN;
-	hw->mailboxq.num_sq_entries = ICE_MBXQ_LEN;
+	hw->mailboxq.num_rq_entries = ICE_MBXRQ_LEN;
+	hw->mailboxq.num_sq_entries = ICE_MBXSQ_LEN;
 	hw->mailboxq.rq_buf_size = ICE_MBXQ_MAX_BUF_LEN;
 	hw->mailboxq.sq_buf_size = ICE_MBXQ_MAX_BUF_LEN;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
