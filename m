Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 476CD46CDB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jun 2019 01:23:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C303987D46;
	Fri, 14 Jun 2019 23:23:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Llcr7NjL61nV; Fri, 14 Jun 2019 23:23:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 59B7D87D5D;
	Fri, 14 Jun 2019 23:23:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 62DF61BF48B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2019 23:23:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5A8BB868A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2019 23:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id buF0GC2JWqN6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2019 23:23:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 79A828671E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2019 23:23:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 16:23:05 -0700
X-ExtLoop1: 1
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga005.jf.intel.com with ESMTP; 14 Jun 2019 16:23:06 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Jun 2019 16:23:20 -0700
Message-Id: <20190614232320.9752-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next v2] iavf: use struct_size() helper
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

From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>

Make use of the struct_size() helper instead of an open-coded version
in order to avoid any potential type mistakes, in particular in the
context in which this code is being used.

So, replace code of the following form:

sizeof(struct virtchnl_ether_addr_list) + (count * sizeof(struct virtchnl_ether_addr))

with:

struct_size(veal, list, count)

and so on...

This code was detected with the help of Coccinelle.

Signed-off-by: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
---
v2: Fixed up patch to apply cleanly to the current iavf driver

 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 37 ++++++++-----------
 1 file changed, 16 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index cb7c56c5afe6..d49d58a6de80 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -242,7 +242,8 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 	struct virtchnl_vsi_queue_config_info *vqci;
 	struct virtchnl_queue_pair_info *vqpi;
 	int pairs = adapter->num_active_queues;
-	int i, len, max_frame = IAVF_MAX_RXBUFFER;
+	int i, max_frame = IAVF_MAX_RXBUFFER;
+	size_t len;
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
@@ -251,8 +252,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 		return;
 	}
 	adapter->current_op = VIRTCHNL_OP_CONFIG_VSI_QUEUES;
-	len = sizeof(struct virtchnl_vsi_queue_config_info) +
-		       (sizeof(struct virtchnl_queue_pair_info) * pairs);
+	len = struct_size(vqci, qpair, pairs);
 	vqci = kzalloc(len, GFP_KERNEL);
 	if (!vqci)
 		return;
@@ -351,8 +351,9 @@ void iavf_map_queues(struct iavf_adapter *adapter)
 {
 	struct virtchnl_irq_map_info *vimi;
 	struct virtchnl_vector_map *vecmap;
-	int v_idx, q_vectors, len;
 	struct iavf_q_vector *q_vector;
+	int v_idx, q_vectors;
+	size_t len;
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
@@ -364,9 +365,7 @@ void iavf_map_queues(struct iavf_adapter *adapter)
 
 	q_vectors = adapter->num_msix_vectors - NONQ_VECS;
 
-	len = sizeof(struct virtchnl_irq_map_info) +
-	      (adapter->num_msix_vectors *
-		sizeof(struct virtchnl_vector_map));
+	len = struct_size(vimi, vecmap, adapter->num_msix_vectors);
 	vimi = kzalloc(len, GFP_KERNEL);
 	if (!vimi)
 		return;
@@ -433,9 +432,10 @@ int iavf_request_queues(struct iavf_adapter *adapter, int num)
 void iavf_add_ether_addrs(struct iavf_adapter *adapter)
 {
 	struct virtchnl_ether_addr_list *veal;
-	int len, i = 0, count = 0;
 	struct iavf_mac_filter *f;
+	int i = 0, count = 0;
 	bool more = false;
+	size_t len;
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
@@ -457,15 +457,13 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter)
 	}
 	adapter->current_op = VIRTCHNL_OP_ADD_ETH_ADDR;
 
-	len = sizeof(struct virtchnl_ether_addr_list) +
-	      (count * sizeof(struct virtchnl_ether_addr));
+	len = struct_size(veal, list, count);
 	if (len > IAVF_MAX_AQ_BUF_SIZE) {
 		dev_warn(&adapter->pdev->dev, "Too many add MAC changes in one request\n");
 		count = (IAVF_MAX_AQ_BUF_SIZE -
 			 sizeof(struct virtchnl_ether_addr_list)) /
 			sizeof(struct virtchnl_ether_addr);
-		len = sizeof(struct virtchnl_ether_addr_list) +
-		      (count * sizeof(struct virtchnl_ether_addr));
+		len = struct_size(veal, list, count);
 		more = true;
 	}
 
@@ -505,8 +503,9 @@ void iavf_del_ether_addrs(struct iavf_adapter *adapter)
 {
 	struct virtchnl_ether_addr_list *veal;
 	struct iavf_mac_filter *f, *ftmp;
-	int len, i = 0, count = 0;
+	int i = 0, count = 0;
 	bool more = false;
+	size_t len;
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
@@ -528,15 +527,13 @@ void iavf_del_ether_addrs(struct iavf_adapter *adapter)
 	}
 	adapter->current_op = VIRTCHNL_OP_DEL_ETH_ADDR;
 
-	len = sizeof(struct virtchnl_ether_addr_list) +
-	      (count * sizeof(struct virtchnl_ether_addr));
+	len = struct_size(veal, list, count);
 	if (len > IAVF_MAX_AQ_BUF_SIZE) {
 		dev_warn(&adapter->pdev->dev, "Too many delete MAC changes in one request\n");
 		count = (IAVF_MAX_AQ_BUF_SIZE -
 			 sizeof(struct virtchnl_ether_addr_list)) /
 			sizeof(struct virtchnl_ether_addr);
-		len = sizeof(struct virtchnl_ether_addr_list) +
-		      (count * sizeof(struct virtchnl_ether_addr));
+		len = struct_size(veal, list, count);
 		more = true;
 	}
 	veal = kzalloc(len, GFP_ATOMIC);
@@ -973,7 +970,7 @@ static void iavf_print_link_message(struct iavf_adapter *adapter)
 void iavf_enable_channels(struct iavf_adapter *adapter)
 {
 	struct virtchnl_tc_info *vti = NULL;
-	u16 len;
+	size_t len;
 	int i;
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
@@ -983,9 +980,7 @@ void iavf_enable_channels(struct iavf_adapter *adapter)
 		return;
 	}
 
-	len = ((adapter->num_tc - 1) * sizeof(struct virtchnl_channel_info)) +
-	       sizeof(struct virtchnl_tc_info);
-
+	len = struct_size(vti, list, adapter->num_tc - 1);
 	vti = kzalloc(len, GFP_KERNEL);
 	if (!vti)
 		return;
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
