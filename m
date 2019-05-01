Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400B010C21
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 May 2019 19:39:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9F4E85BA9;
	Wed,  1 May 2019 17:39:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MHLako-v8Q02; Wed,  1 May 2019 17:39:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 349EC87EA5;
	Wed,  1 May 2019 17:39:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B217E1BF947
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 May 2019 17:39:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD31487EA2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 May 2019 17:39:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id slGjSG8r8-8h for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 May 2019 17:39:47 +0000 (UTC)
X-Greylist: delayed 00:21:46 by SQLgrey-1.7.6
Received: from gateway32.websitewelcome.com (gateway32.websitewelcome.com
 [192.185.145.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BB9AA85BA9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 May 2019 17:39:47 +0000 (UTC)
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway32.websitewelcome.com (Postfix) with ESMTP id B8572D3F326
 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 May 2019 12:18:00 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id Lsroh169hiQerLsrohgngf; Wed, 01 May 2019 12:18:00 -0500
X-Authority-Reason: nr=8
Received: from [189.250.119.203] (port=40648 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.91)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hLsrn-002LT6-NG; Wed, 01 May 2019 12:17:59 -0500
Date: Wed, 1 May 2019 12:17:59 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Message-ID: <20190501171759.GA3494@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.250.119.203
X-Source-L: No
X-Exim-ID: 1hLsrn-002LT6-NG
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [189.250.119.203]:40648
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 3
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Subject: [Intel-wired-lan] [PATCH][next] iavf: use struct_size() helper
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make use of the struct_size() helper instead of an open-coded version
in order to avoid any potential type mistakes, in particular in the
context in which this code is being used.

So, replace code of the following form:

sizeof(struct virtchnl_ether_addr_list) + (count * sizeof(struct virtchnl_ether_addr))

with:

struct_size(veal, list, count)

and so on...

This code was detected with the help of Coccinelle.

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 37 ++++++++-----------
 1 file changed, 16 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index e64751da0921..9c80bf972b90 100644
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
@@ -351,7 +351,8 @@ void iavf_map_queues(struct iavf_adapter *adapter)
 {
 	struct virtchnl_irq_map_info *vimi;
 	struct virtchnl_vector_map *vecmap;
-	int v_idx, q_vectors, len;
+	int v_idx, q_vectors;
+	size_t len;
 	struct iavf_q_vector *q_vector;
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
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
+	int i = 0, count = 0;
 	struct iavf_mac_filter *f;
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
 
-	len = (adapter->num_tc * sizeof(struct virtchnl_channel_info)) +
-	       sizeof(struct virtchnl_tc_info);
-
+	len = struct_size(vti, list, adapter->num_tc);
 	vti = kzalloc(len, GFP_KERNEL);
 	if (!vti)
 		return;
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
