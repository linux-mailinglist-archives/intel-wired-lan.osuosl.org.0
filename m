Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B46CF63DA90
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Nov 2022 17:27:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF806417AB;
	Wed, 30 Nov 2022 16:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF806417AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669825630;
	bh=aS30gtoAviy91yRLEetsS9cUdejBViy9tW2k5Ov3I7I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sXbVDJH7AUVw8VxM+TdruLloMeMDF19CRlNkHPY9VxO6RZQX6IauhaIV4ZOXw6N/S
	 4gK2VqnzZ4KOHo68CQpvQ7bqOFLK7ty+2JVbUGFcrvPuOU1cNscduiyOUScZKWw1ZR
	 eLygfjFfSjVrRB0yz2ac6oaLExD/89hkBQhLn9wPeLYqzTJItrMgzpjoeS300gnEco
	 i4op/fJA+JLQexzHbQ4iO5SVraPo+ATElS7EsfzGYV33w6mII6jJpJKHChKd4nJx4l
	 DPQqIk4JFpmCnlhm041Wd7t6XEFeQukHUyNM/nE7hYsJJgezIjEOI6xgHGnX6FUbE6
	 I9dAjvj/P0hUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b7OkzoEhCLdL; Wed, 30 Nov 2022 16:27:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 361D441578;
	Wed, 30 Nov 2022 16:27:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 361D441578
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 261F51BF852
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 09:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 090A7812A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 09:38:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 090A7812A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zdo_B7voMl-u for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Nov 2022 09:38:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41D9A81242
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 41D9A81242
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 09:38:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="295047834"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="295047834"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 01:38:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="676761909"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="676761909"
Received: from s240.igk.intel.com (HELO s048.nql.local) ([10.102.18.202])
 by orsmga001.jf.intel.com with ESMTP; 30 Nov 2022 01:38:48 -0800
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Nov 2022 10:41:42 +0100
Message-Id: <20221130094143.3245761-3-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20221130094143.3245761-1-jan.sokolowski@intel.com>
References: <20221130094143.3245761-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 30 Nov 2022 16:26:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669801132; x=1701337132;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FlVYBn0057EkPk5Y8S87DjshggVw3MXW2AlKum086fo=;
 b=LRKMEgDzHAEBTC0C1DwyXhk7kuJy2OqdKuoAceY/rj8rtZHqijGJYtDv
 BNpmwFLJA5KoHicyHjPDXN5qJlPConhtFbxbRcjzSbMPGk4PSP71SNT4O
 btmxCJ7M8zO5Y/p0P5ZQLhFPqfYtgz+YQ+ERnli3IV5h2h7mMi5w453Pf
 mMiJZohinPDZ3QJwNu3iWwU7pebPBWWxMAP6Yj0cVBqB/xl7QO4KcY/Tl
 KyhA1bYtbj7viGeViXx+Rs+h+s2HwTSoGmUgqX1uaACkndnz5P5iwgLyy
 mUUKXk7gavZXyhOlFtHX9GAxwEToeQv1KNJvJMZ2SyFizc/uIAbGMAG8i
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LRKMEgDz
Subject: [Intel-wired-lan] [PATCH net-next v1 3/4] i40e: use int for
 i40e_status
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

To prepare for removal of i40e_status, change the variables
from i40e_status to int. This eases the transition when values
are changed to return standard int error codes over enum i40e_status.

As such changes often also change variable orders, a cleanup
is also applied here to make variables conform to RCT and
some lines are also reformatted where applicable.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |   6 +-
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  68 +-
 drivers/net/ethernet/intel/i40e/i40e_alloc.h  |  22 +-
 drivers/net/ethernet/intel/i40e/i40e_client.c |   4 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 806 +++++++++---------
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  60 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb.h    |  28 +-
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    |  14 +-
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |   8 +-
 drivers/net/ethernet/intel/i40e/i40e_diag.c   |  12 +-
 drivers/net/ethernet/intel/i40e/i40e_diag.h   |   4 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  24 +-
 drivers/net/ethernet/intel/i40e/i40e_hmc.c    |  56 +-
 drivers/net/ethernet/intel/i40e/i40e_hmc.h    |  46 +-
 .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  94 +-
 .../net/ethernet/intel/i40e/i40e_lan_hmc.h    |  34 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  95 +--
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    | 248 +++---
 drivers/net/ethernet/intel/i40e/i40e_osdep.h  |   1 -
 .../net/ethernet/intel/i40e/i40e_prototype.h  | 264 +++---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  66 +-
 21 files changed, 978 insertions(+), 982 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 60e351665c70..e789729a9cfb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1287,9 +1287,9 @@ void i40e_ptp_stop(struct i40e_pf *pf);
 int i40e_ptp_alloc_pins(struct i40e_pf *pf);
 int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset);
 int i40e_is_vsi_uplink_mode_veb(struct i40e_vsi *vsi);
-i40e_status i40e_get_partition_bw_setting(struct i40e_pf *pf);
-i40e_status i40e_set_partition_bw_setting(struct i40e_pf *pf);
-i40e_status i40e_commit_partition_bw_setting(struct i40e_pf *pf);
+int i40e_get_partition_bw_setting(struct i40e_pf *pf);
+int i40e_set_partition_bw_setting(struct i40e_pf *pf);
+int i40e_commit_partition_bw_setting(struct i40e_pf *pf);
 void i40e_print_link_message(struct i40e_vsi *vsi, bool isup);
 
 void i40e_set_fec_in_flags(u8 fec_cfg, u32 *flags);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 42439f725aa4..16ffb3a041d4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -47,9 +47,9 @@ static void i40e_adminq_init_regs(struct i40e_hw *hw)
  *  i40e_alloc_adminq_asq_ring - Allocate Admin Queue send rings
  *  @hw: pointer to the hardware structure
  **/
-static i40e_status i40e_alloc_adminq_asq_ring(struct i40e_hw *hw)
+static int i40e_alloc_adminq_asq_ring(struct i40e_hw *hw)
 {
-	i40e_status ret_code;
+	int ret_code;
 
 	ret_code = i40e_allocate_dma_mem(hw, &hw->aq.asq.desc_buf,
 					 i40e_mem_atq_ring,
@@ -74,9 +74,9 @@ static i40e_status i40e_alloc_adminq_asq_ring(struct i40e_hw *hw)
  *  i40e_alloc_adminq_arq_ring - Allocate Admin Queue receive rings
  *  @hw: pointer to the hardware structure
  **/
-static i40e_status i40e_alloc_adminq_arq_ring(struct i40e_hw *hw)
+static int i40e_alloc_adminq_arq_ring(struct i40e_hw *hw)
 {
-	i40e_status ret_code;
+	int ret_code;
 
 	ret_code = i40e_allocate_dma_mem(hw, &hw->aq.arq.desc_buf,
 					 i40e_mem_arq_ring,
@@ -115,11 +115,11 @@ static void i40e_free_adminq_arq(struct i40e_hw *hw)
  *  i40e_alloc_arq_bufs - Allocate pre-posted buffers for the receive queue
  *  @hw: pointer to the hardware structure
  **/
-static i40e_status i40e_alloc_arq_bufs(struct i40e_hw *hw)
+static int i40e_alloc_arq_bufs(struct i40e_hw *hw)
 {
-	i40e_status ret_code;
 	struct i40e_aq_desc *desc;
 	struct i40e_dma_mem *bi;
+	int ret_code;
 	int i;
 
 	/* We'll be allocating the buffer info memory first, then we can
@@ -182,10 +182,10 @@ static i40e_status i40e_alloc_arq_bufs(struct i40e_hw *hw)
  *  i40e_alloc_asq_bufs - Allocate empty buffer structs for the send queue
  *  @hw: pointer to the hardware structure
  **/
-static i40e_status i40e_alloc_asq_bufs(struct i40e_hw *hw)
+static int i40e_alloc_asq_bufs(struct i40e_hw *hw)
 {
-	i40e_status ret_code;
 	struct i40e_dma_mem *bi;
+	int ret_code;
 	int i;
 
 	/* No mapped memory needed yet, just the buffer info structures */
@@ -266,9 +266,9 @@ static void i40e_free_asq_bufs(struct i40e_hw *hw)
  *
  *  Configure base address and length registers for the transmit queue
  **/
-static i40e_status i40e_config_asq_regs(struct i40e_hw *hw)
+static int i40e_config_asq_regs(struct i40e_hw *hw)
 {
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 	u32 reg = 0;
 
 	/* Clear Head and Tail */
@@ -295,9 +295,9 @@ static i40e_status i40e_config_asq_regs(struct i40e_hw *hw)
  *
  * Configure base address and length registers for the receive (event queue)
  **/
-static i40e_status i40e_config_arq_regs(struct i40e_hw *hw)
+static int i40e_config_arq_regs(struct i40e_hw *hw)
 {
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 	u32 reg = 0;
 
 	/* Clear Head and Tail */
@@ -334,9 +334,9 @@ static i40e_status i40e_config_arq_regs(struct i40e_hw *hw)
  *  Do *NOT* hold the lock when calling this as the memory allocation routines
  *  called are not going to be atomic context safe
  **/
-static i40e_status i40e_init_asq(struct i40e_hw *hw)
+static int i40e_init_asq(struct i40e_hw *hw)
 {
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 
 	if (hw->aq.asq.count > 0) {
 		/* queue already initialized */
@@ -393,9 +393,9 @@ static i40e_status i40e_init_asq(struct i40e_hw *hw)
  *  Do *NOT* hold the lock when calling this as the memory allocation routines
  *  called are not going to be atomic context safe
  **/
-static i40e_status i40e_init_arq(struct i40e_hw *hw)
+static int i40e_init_arq(struct i40e_hw *hw)
 {
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 
 	if (hw->aq.arq.count > 0) {
 		/* queue already initialized */
@@ -445,9 +445,9 @@ static i40e_status i40e_init_arq(struct i40e_hw *hw)
  *
  *  The main shutdown routine for the Admin Send Queue
  **/
-static i40e_status i40e_shutdown_asq(struct i40e_hw *hw)
+static int i40e_shutdown_asq(struct i40e_hw *hw)
 {
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 
 	mutex_lock(&hw->aq.asq_mutex);
 
@@ -479,9 +479,9 @@ static i40e_status i40e_shutdown_asq(struct i40e_hw *hw)
  *
  *  The main shutdown routine for the Admin Receive Queue
  **/
-static i40e_status i40e_shutdown_arq(struct i40e_hw *hw)
+static int i40e_shutdown_arq(struct i40e_hw *hw)
 {
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 
 	mutex_lock(&hw->aq.arq_mutex);
 
@@ -582,12 +582,12 @@ static void i40e_set_hw_flags(struct i40e_hw *hw)
  *     - hw->aq.arq_buf_size
  *     - hw->aq.asq_buf_size
  **/
-i40e_status i40e_init_adminq(struct i40e_hw *hw)
+int i40e_init_adminq(struct i40e_hw *hw)
 {
 	u16 cfg_ptr, oem_hi, oem_lo;
 	u16 eetrack_lo, eetrack_hi;
-	i40e_status ret_code;
 	int retry = 0;
+	int ret_code;
 
 	/* verify input for valid configuration */
 	if ((hw->aq.num_arq_entries == 0) ||
@@ -780,7 +780,7 @@ static bool i40e_asq_done(struct i40e_hw *hw)
  *  This is the main send command driver routine for the Admin Queue send
  *  queue.  It runs the queue, cleans the queue, etc
  **/
-static i40e_status
+static int
 i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 				  struct i40e_aq_desc *desc,
 				  void *buff, /* can be NULL */
@@ -788,7 +788,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 				  struct i40e_asq_cmd_details *cmd_details,
 				  bool is_atomic_context)
 {
-	i40e_status status = 0;
+	int status = 0;
 	struct i40e_dma_mem *dma_buff = NULL;
 	struct i40e_asq_cmd_details *details;
 	struct i40e_aq_desc *desc_on_ring;
@@ -984,7 +984,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
  *  Acquires the lock and calls the main send command execution
  *  routine.
  **/
-i40e_status
+int
 i40e_asq_send_command_atomic(struct i40e_hw *hw,
 			     struct i40e_aq_desc *desc,
 			     void *buff, /* can be NULL */
@@ -992,7 +992,7 @@ i40e_asq_send_command_atomic(struct i40e_hw *hw,
 			     struct i40e_asq_cmd_details *cmd_details,
 			     bool is_atomic_context)
 {
-	i40e_status status;
+	int status;
 
 	mutex_lock(&hw->aq.asq_mutex);
 	status = i40e_asq_send_command_atomic_exec(hw, desc, buff, buff_size,
@@ -1003,7 +1003,7 @@ i40e_asq_send_command_atomic(struct i40e_hw *hw,
 	return status;
 }
 
-i40e_status
+int
 i40e_asq_send_command(struct i40e_hw *hw, struct i40e_aq_desc *desc,
 		      void *buff, /* can be NULL */ u16  buff_size,
 		      struct i40e_asq_cmd_details *cmd_details)
@@ -1026,7 +1026,7 @@ i40e_asq_send_command(struct i40e_hw *hw, struct i40e_aq_desc *desc,
  *  routine. Returns the last Admin Queue status in aq_status
  *  to avoid race conditions in access to hw->aq.asq_last_status.
  **/
-i40e_status
+int
 i40e_asq_send_command_atomic_v2(struct i40e_hw *hw,
 				struct i40e_aq_desc *desc,
 				void *buff, /* can be NULL */
@@ -1035,7 +1035,7 @@ i40e_asq_send_command_atomic_v2(struct i40e_hw *hw,
 				bool is_atomic_context,
 				enum i40e_admin_queue_err *aq_status)
 {
-	i40e_status status;
+	int status;
 
 	mutex_lock(&hw->aq.asq_mutex);
 	status = i40e_asq_send_command_atomic_exec(hw, desc, buff,
@@ -1048,7 +1048,7 @@ i40e_asq_send_command_atomic_v2(struct i40e_hw *hw,
 	return status;
 }
 
-i40e_status
+int
 i40e_asq_send_command_v2(struct i40e_hw *hw, struct i40e_aq_desc *desc,
 			 void *buff, /* can be NULL */ u16  buff_size,
 			 struct i40e_asq_cmd_details *cmd_details,
@@ -1084,14 +1084,14 @@ void i40e_fill_default_direct_cmd_desc(struct i40e_aq_desc *desc,
  *  the contents through e.  It can also return how many events are
  *  left to process through 'pending'
  **/
-i40e_status i40e_clean_arq_element(struct i40e_hw *hw,
-					     struct i40e_arq_event_info *e,
-					     u16 *pending)
+int i40e_clean_arq_element(struct i40e_hw *hw,
+			   struct i40e_arq_event_info *e,
+			   u16 *pending)
 {
-	i40e_status ret_code = 0;
 	u16 ntc = hw->aq.arq.next_to_clean;
 	struct i40e_aq_desc *desc;
 	struct i40e_dma_mem *bi;
+	int ret_code = 0;
 	u16 desc_idx;
 	u16 datalen;
 	u16 flags;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_alloc.h b/drivers/net/ethernet/intel/i40e/i40e_alloc.h
index cb8689222c8b..a6c9a9e343d1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_alloc.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_alloc.h
@@ -20,16 +20,16 @@ enum i40e_memory_type {
 };
 
 /* prototype for functions used for dynamic memory allocation */
-i40e_status i40e_allocate_dma_mem(struct i40e_hw *hw,
-					    struct i40e_dma_mem *mem,
-					    enum i40e_memory_type type,
-					    u64 size, u32 alignment);
-i40e_status i40e_free_dma_mem(struct i40e_hw *hw,
-					struct i40e_dma_mem *mem);
-i40e_status i40e_allocate_virt_mem(struct i40e_hw *hw,
-					     struct i40e_virt_mem *mem,
-					     u32 size);
-i40e_status i40e_free_virt_mem(struct i40e_hw *hw,
-					 struct i40e_virt_mem *mem);
+int i40e_allocate_dma_mem(struct i40e_hw *hw,
+			  struct i40e_dma_mem *mem,
+			  enum i40e_memory_type type,
+			  u64 size, u32 alignment);
+int i40e_free_dma_mem(struct i40e_hw *hw,
+		      struct i40e_dma_mem *mem);
+int i40e_allocate_virt_mem(struct i40e_hw *hw,
+			   struct i40e_virt_mem *mem,
+			   u32 size);
+int i40e_free_virt_mem(struct i40e_hw *hw,
+		       struct i40e_virt_mem *mem);
 
 #endif /* _I40E_ALLOC_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index d247bed9af59..8bcb98b85e3d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -541,7 +541,7 @@ static int i40e_client_virtchnl_send(struct i40e_info *ldev,
 {
 	struct i40e_pf *pf = ldev->pf;
 	struct i40e_hw *hw = &pf->hw;
-	i40e_status err;
+	int err;
 
 	err = i40e_aq_send_msg_to_vf(hw, vf_id, VIRTCHNL_OP_IWARP,
 				     0, msg, len, NULL);
@@ -674,7 +674,7 @@ static int i40e_client_update_vsi_ctxt(struct i40e_info *ldev,
 	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 	struct i40e_vsi_context ctxt;
 	bool update = true;
-	i40e_status err;
+	int err;
 
 	/* TODO: for now do not allow setting VF's VSI setting */
 	if (is_vf)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 5210e1e2fd44..3c855e12423a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -14,9 +14,9 @@
  * This function sets the mac type of the adapter based on the
  * vendor ID and device ID stored in the hw structure.
  **/
-i40e_status i40e_set_mac_type(struct i40e_hw *hw)
+int i40e_set_mac_type(struct i40e_hw *hw)
 {
-	i40e_status status = 0;
+	int status = 0;
 
 	if (hw->vendor_id == PCI_VENDOR_ID_INTEL) {
 		switch (hw->device_id) {
@@ -207,13 +207,13 @@ bool i40e_check_asq_alive(struct i40e_hw *hw)
  * Tell the Firmware that we're shutting down the AdminQ and whether
  * or not the driver is unloading as well.
  **/
-i40e_status i40e_aq_queue_shutdown(struct i40e_hw *hw,
-					     bool unloading)
+int i40e_aq_queue_shutdown(struct i40e_hw *hw,
+			   bool unloading)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_queue_shutdown *cmd =
 		(struct i40e_aqc_queue_shutdown *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_queue_shutdown);
@@ -236,15 +236,15 @@ i40e_status i40e_aq_queue_shutdown(struct i40e_hw *hw,
  *
  * Internal function to get or set RSS look up table
  **/
-static i40e_status i40e_aq_get_set_rss_lut(struct i40e_hw *hw,
-					   u16 vsi_id, bool pf_lut,
-					   u8 *lut, u16 lut_size,
-					   bool set)
+static int i40e_aq_get_set_rss_lut(struct i40e_hw *hw,
+				   u16 vsi_id, bool pf_lut,
+				   u8 *lut, u16 lut_size,
+				   bool set)
 {
-	i40e_status status;
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_get_set_rss_lut *cmd_resp =
 		   (struct i40e_aqc_get_set_rss_lut *)&desc.params.raw;
+	int status;
 
 	if (set)
 		i40e_fill_default_direct_cmd_desc(&desc,
@@ -289,8 +289,8 @@ static i40e_status i40e_aq_get_set_rss_lut(struct i40e_hw *hw,
  *
  * get the RSS lookup table, PF or VSI type
  **/
-i40e_status i40e_aq_get_rss_lut(struct i40e_hw *hw, u16 vsi_id,
-				bool pf_lut, u8 *lut, u16 lut_size)
+int i40e_aq_get_rss_lut(struct i40e_hw *hw, u16 vsi_id,
+			bool pf_lut, u8 *lut, u16 lut_size)
 {
 	return i40e_aq_get_set_rss_lut(hw, vsi_id, pf_lut, lut, lut_size,
 				       false);
@@ -306,8 +306,8 @@ i40e_status i40e_aq_get_rss_lut(struct i40e_hw *hw, u16 vsi_id,
  *
  * set the RSS lookup table, PF or VSI type
  **/
-i40e_status i40e_aq_set_rss_lut(struct i40e_hw *hw, u16 vsi_id,
-				bool pf_lut, u8 *lut, u16 lut_size)
+int i40e_aq_set_rss_lut(struct i40e_hw *hw, u16 vsi_id,
+			bool pf_lut, u8 *lut, u16 lut_size)
 {
 	return i40e_aq_get_set_rss_lut(hw, vsi_id, pf_lut, lut, lut_size, true);
 }
@@ -321,16 +321,16 @@ i40e_status i40e_aq_set_rss_lut(struct i40e_hw *hw, u16 vsi_id,
  *
  * get the RSS key per VSI
  **/
-static i40e_status i40e_aq_get_set_rss_key(struct i40e_hw *hw,
-				      u16 vsi_id,
-				      struct i40e_aqc_get_set_rss_key_data *key,
-				      bool set)
+static int i40e_aq_get_set_rss_key(struct i40e_hw *hw,
+				   u16 vsi_id,
+				   struct i40e_aqc_get_set_rss_key_data *key,
+				   bool set)
 {
-	i40e_status status;
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_get_set_rss_key *cmd_resp =
 			(struct i40e_aqc_get_set_rss_key *)&desc.params.raw;
 	u16 key_size = sizeof(struct i40e_aqc_get_set_rss_key_data);
+	int status;
 
 	if (set)
 		i40e_fill_default_direct_cmd_desc(&desc,
@@ -361,9 +361,9 @@ static i40e_status i40e_aq_get_set_rss_key(struct i40e_hw *hw,
  * @key: pointer to key info struct
  *
  **/
-i40e_status i40e_aq_get_rss_key(struct i40e_hw *hw,
-				u16 vsi_id,
-				struct i40e_aqc_get_set_rss_key_data *key)
+int i40e_aq_get_rss_key(struct i40e_hw *hw,
+			u16 vsi_id,
+			struct i40e_aqc_get_set_rss_key_data *key)
 {
 	return i40e_aq_get_set_rss_key(hw, vsi_id, key, false);
 }
@@ -376,9 +376,9 @@ i40e_status i40e_aq_get_rss_key(struct i40e_hw *hw,
  *
  * set the RSS key per VSI
  **/
-i40e_status i40e_aq_set_rss_key(struct i40e_hw *hw,
-				u16 vsi_id,
-				struct i40e_aqc_get_set_rss_key_data *key)
+int i40e_aq_set_rss_key(struct i40e_hw *hw,
+			u16 vsi_id,
+			struct i40e_aqc_get_set_rss_key_data *key)
 {
 	return i40e_aq_get_set_rss_key(hw, vsi_id, key, true);
 }
@@ -648,10 +648,10 @@ struct i40e_rx_ptype_decoded i40e_ptype_lookup[BIT(8)] = {
  * hw_addr, back, device_id, vendor_id, subsystem_device_id,
  * subsystem_vendor_id, and revision_id
  **/
-i40e_status i40e_init_shared_code(struct i40e_hw *hw)
+int i40e_init_shared_code(struct i40e_hw *hw)
 {
-	i40e_status status = 0;
 	u32 port, ari, func_rid;
+	int status = 0;
 
 	i40e_set_mac_type(hw);
 
@@ -688,15 +688,15 @@ i40e_status i40e_init_shared_code(struct i40e_hw *hw)
  * @addrs: the requestor's mac addr store
  * @cmd_details: pointer to command details structure or NULL
  **/
-static i40e_status i40e_aq_mac_address_read(struct i40e_hw *hw,
-				   u16 *flags,
-				   struct i40e_aqc_mac_address_read_data *addrs,
-				   struct i40e_asq_cmd_details *cmd_details)
+static int i40e_aq_mac_address_read(struct i40e_hw *hw,
+			u16 *flags,
+			struct i40e_aqc_mac_address_read_data *addrs,
+			struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_mac_address_read *cmd_data =
 		(struct i40e_aqc_mac_address_read *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_mac_address_read);
 	desc.flags |= cpu_to_le16(I40E_AQ_FLAG_BUF);
@@ -715,14 +715,14 @@ static i40e_status i40e_aq_mac_address_read(struct i40e_hw *hw,
  * @mac_addr: address to write
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_mac_address_write(struct i40e_hw *hw,
-				    u16 flags, u8 *mac_addr,
-				    struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_mac_address_write(struct i40e_hw *hw,
+			      u16 flags, u8 *mac_addr,
+			      struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_mac_address_write *cmd_data =
 		(struct i40e_aqc_mac_address_write *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_mac_address_write);
@@ -745,11 +745,11 @@ i40e_status i40e_aq_mac_address_write(struct i40e_hw *hw,
  *
  * Reads the adapter's MAC address from register
  **/
-i40e_status i40e_get_mac_addr(struct i40e_hw *hw, u8 *mac_addr)
+int i40e_get_mac_addr(struct i40e_hw *hw, u8 *mac_addr)
 {
 	struct i40e_aqc_mac_address_read_data addrs;
-	i40e_status status;
 	u16 flags = 0;
+	int status;
 
 	status = i40e_aq_mac_address_read(hw, &flags, &addrs, NULL);
 
@@ -766,11 +766,11 @@ i40e_status i40e_get_mac_addr(struct i40e_hw *hw, u8 *mac_addr)
  *
  * Reads the adapter's Port MAC address
  **/
-i40e_status i40e_get_port_mac_addr(struct i40e_hw *hw, u8 *mac_addr)
+int i40e_get_port_mac_addr(struct i40e_hw *hw, u8 *mac_addr)
 {
 	struct i40e_aqc_mac_address_read_data addrs;
-	i40e_status status;
 	u16 flags = 0;
+	int status;
 
 	status = i40e_aq_mac_address_read(hw, &flags, &addrs, NULL);
 	if (status)
@@ -824,13 +824,13 @@ void i40e_pre_tx_queue_cfg(struct i40e_hw *hw, u32 queue, bool enable)
  *
  *  Reads the part number string from the EEPROM.
  **/
-i40e_status i40e_read_pba_string(struct i40e_hw *hw, u8 *pba_num,
-				 u32 pba_num_size)
+int i40e_read_pba_string(struct i40e_hw *hw, u8 *pba_num,
+			 u32 pba_num_size)
 {
-	i40e_status status = 0;
 	u16 pba_word = 0;
 	u16 pba_size = 0;
 	u16 pba_ptr = 0;
+	int status = 0;
 	u16 i = 0;
 
 	status = i40e_read_nvm_word(hw, I40E_SR_PBA_FLAGS, &pba_word);
@@ -939,8 +939,8 @@ static enum i40e_media_type i40e_get_media_type(struct i40e_hw *hw)
  * @hw: pointer to the hardware structure
  * @retry_limit: how many times to retry before failure
  **/
-static i40e_status i40e_poll_globr(struct i40e_hw *hw,
-				   u32 retry_limit)
+static int i40e_poll_globr(struct i40e_hw *hw,
+			   u32 retry_limit)
 {
 	u32 cnt, reg = 0;
 
@@ -966,7 +966,7 @@ static i40e_status i40e_poll_globr(struct i40e_hw *hw,
  * Assuming someone else has triggered a global reset,
  * assure the global reset is complete and then reset the PF
  **/
-i40e_status i40e_pf_reset(struct i40e_hw *hw)
+int i40e_pf_reset(struct i40e_hw *hw)
 {
 	u32 cnt = 0;
 	u32 cnt1 = 0;
@@ -1305,15 +1305,15 @@ void i40e_led_set(struct i40e_hw *hw, u32 mode, bool blink)
  *
  * Returns the various PHY abilities supported on the Port.
  **/
-i40e_status i40e_aq_get_phy_capabilities(struct i40e_hw *hw,
+int i40e_aq_get_phy_capabilities(struct i40e_hw *hw,
 			bool qualified_modules, bool report_init,
 			struct i40e_aq_get_phy_abilities_resp *abilities,
 			struct i40e_asq_cmd_details *cmd_details)
 {
-	struct i40e_aq_desc desc;
-	i40e_status status;
 	u16 abilities_size = sizeof(struct i40e_aq_get_phy_abilities_resp);
 	u16 max_delay = I40E_MAX_PHY_TIMEOUT, total_delay = 0;
+	struct i40e_aq_desc desc;
+	int status;
 
 	if (!abilities)
 		return I40E_ERR_PARAM;
@@ -1384,14 +1384,14 @@ i40e_status i40e_aq_get_phy_capabilities(struct i40e_hw *hw,
  * of the PHY Config parameters. This status will be indicated by the
  * command response.
  **/
-enum i40e_status_code i40e_aq_set_phy_config(struct i40e_hw *hw,
-				struct i40e_aq_set_phy_config *config,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_phy_config(struct i40e_hw *hw,
+			   struct i40e_aq_set_phy_config *config,
+			   struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aq_set_phy_config *cmd =
 			(struct i40e_aq_set_phy_config *)&desc.params.raw;
-	enum i40e_status_code status;
+	int status;
 
 	if (!config)
 		return I40E_ERR_PARAM;
@@ -1406,7 +1406,7 @@ enum i40e_status_code i40e_aq_set_phy_config(struct i40e_hw *hw,
 	return status;
 }
 
-static noinline_for_stack enum i40e_status_code
+static noinline_for_stack int
 i40e_set_fc_status(struct i40e_hw *hw,
 		   struct i40e_aq_get_phy_abilities_resp *abilities,
 		   bool atomic_restart)
@@ -1464,11 +1464,11 @@ i40e_set_fc_status(struct i40e_hw *hw,
  *
  * Set the requested flow control mode using set_phy_config.
  **/
-enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
-				  bool atomic_restart)
+int i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
+		bool atomic_restart)
 {
 	struct i40e_aq_get_phy_abilities_resp abilities;
-	enum i40e_status_code status;
+	int status;
 
 	*aq_failures = 0x0;
 
@@ -1507,13 +1507,13 @@ enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
  *
  * Tell the firmware that the driver is taking over from PXE
  **/
-i40e_status i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
+			   struct i40e_asq_cmd_details *cmd_details)
 {
-	i40e_status status;
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_clear_pxe *cmd =
 		(struct i40e_aqc_clear_pxe *)&desc.params.raw;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_clear_pxe_mode);
@@ -1535,14 +1535,14 @@ i40e_status i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
  *
  * Sets up the link and restarts the Auto-Negotiation over the link.
  **/
-i40e_status i40e_aq_set_link_restart_an(struct i40e_hw *hw,
-					bool enable_link,
-					struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_link_restart_an(struct i40e_hw *hw,
+				bool enable_link,
+				struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_link_restart_an *cmd =
 		(struct i40e_aqc_set_link_restart_an *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_link_restart_an);
@@ -1567,17 +1567,17 @@ i40e_status i40e_aq_set_link_restart_an(struct i40e_hw *hw,
  *
  * Returns the link status of the adapter.
  **/
-i40e_status i40e_aq_get_link_info(struct i40e_hw *hw,
-				bool enable_lse, struct i40e_link_status *link,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_get_link_info(struct i40e_hw *hw,
+			  bool enable_lse, struct i40e_link_status *link,
+			  struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_get_link_status *resp =
 		(struct i40e_aqc_get_link_status *)&desc.params.raw;
 	struct i40e_link_status *hw_link_info = &hw->phy.link_info;
-	i40e_status status;
 	bool tx_pause, rx_pause;
 	u16 command_flags;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_get_link_status);
 
@@ -1663,14 +1663,14 @@ i40e_status i40e_aq_get_link_info(struct i40e_hw *hw,
  *
  * Set link interrupt mask.
  **/
-i40e_status i40e_aq_set_phy_int_mask(struct i40e_hw *hw,
-				     u16 mask,
-				     struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_phy_int_mask(struct i40e_hw *hw,
+			     u16 mask,
+			     struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_phy_int_mask *cmd =
 		(struct i40e_aqc_set_phy_int_mask *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_phy_int_mask);
@@ -1716,13 +1716,13 @@ i40e_status i40e_aq_set_mac_loopback(struct i40e_hw *hw, bool ena_lpbk,
  *
  * Reset the external PHY.
  **/
-i40e_status i40e_aq_set_phy_debug(struct i40e_hw *hw, u8 cmd_flags,
-				  struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_phy_debug(struct i40e_hw *hw, u8 cmd_flags,
+			  struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_phy_debug *cmd =
 		(struct i40e_aqc_set_phy_debug *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_phy_debug);
@@ -1757,9 +1757,9 @@ static bool i40e_is_aq_api_ver_ge(struct i40e_adminq_info *aq, u16 maj,
  *
  * Add a VSI context to the hardware.
 **/
-i40e_status i40e_aq_add_vsi(struct i40e_hw *hw,
-				struct i40e_vsi_context *vsi_ctx,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_add_vsi(struct i40e_hw *hw,
+		    struct i40e_vsi_context *vsi_ctx,
+		    struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_add_get_update_vsi *cmd =
@@ -1767,7 +1767,7 @@ i40e_status i40e_aq_add_vsi(struct i40e_hw *hw,
 	struct i40e_aqc_add_get_update_vsi_completion *resp =
 		(struct i40e_aqc_add_get_update_vsi_completion *)
 		&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_add_vsi);
@@ -1801,15 +1801,15 @@ i40e_status i40e_aq_add_vsi(struct i40e_hw *hw,
  * @seid: vsi number
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_set_default_vsi(struct i40e_hw *hw,
-				    u16 seid,
-				    struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_default_vsi(struct i40e_hw *hw,
+			    u16 seid,
+			    struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
 		(struct i40e_aqc_set_vsi_promiscuous_modes *)
 		&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_vsi_promiscuous_modes);
@@ -1829,15 +1829,15 @@ i40e_status i40e_aq_set_default_vsi(struct i40e_hw *hw,
  * @seid: vsi number
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_clear_default_vsi(struct i40e_hw *hw,
-				      u16 seid,
-				      struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_clear_default_vsi(struct i40e_hw *hw,
+			      u16 seid,
+			      struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
 		(struct i40e_aqc_set_vsi_promiscuous_modes *)
 		&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_vsi_promiscuous_modes);
@@ -1859,7 +1859,7 @@ i40e_status i40e_aq_clear_default_vsi(struct i40e_hw *hw,
  * @cmd_details: pointer to command details structure or NULL
  * @rx_only_promisc: flag to decide if egress traffic gets mirrored in promisc
  **/
-i40e_status i40e_aq_set_vsi_unicast_promiscuous(struct i40e_hw *hw,
+int i40e_aq_set_vsi_unicast_promiscuous(struct i40e_hw *hw,
 				u16 seid, bool set,
 				struct i40e_asq_cmd_details *cmd_details,
 				bool rx_only_promisc)
@@ -1867,8 +1867,8 @@ i40e_status i40e_aq_set_vsi_unicast_promiscuous(struct i40e_hw *hw,
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
 		(struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
-	i40e_status status;
 	u16 flags = 0;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					i40e_aqc_opc_set_vsi_promiscuous_modes);
@@ -1899,14 +1899,15 @@ i40e_status i40e_aq_set_vsi_unicast_promiscuous(struct i40e_hw *hw,
  * @set: set multicast promiscuous enable/disable
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_set_vsi_multicast_promiscuous(struct i40e_hw *hw,
-				u16 seid, bool set, struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_vsi_multicast_promiscuous(struct i40e_hw *hw,
+				u16 seid, bool set,
+				struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
 		(struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
-	i40e_status status;
 	u16 flags = 0;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					i40e_aqc_opc_set_vsi_promiscuous_modes);
@@ -1932,16 +1933,16 @@ i40e_status i40e_aq_set_vsi_multicast_promiscuous(struct i40e_hw *hw,
  * @vid: The VLAN tag filter - capture any multicast packet with this VLAN tag
  * @cmd_details: pointer to command details structure or NULL
  **/
-enum i40e_status_code i40e_aq_set_vsi_mc_promisc_on_vlan(struct i40e_hw *hw,
-							 u16 seid, bool enable,
-							 u16 vid,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_vsi_mc_promisc_on_vlan(struct i40e_hw *hw,
+				       u16 seid, bool enable,
+				       u16 vid,
+				       struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
 		(struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
-	enum i40e_status_code status;
 	u16 flags = 0;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_vsi_promiscuous_modes);
@@ -1968,16 +1969,16 @@ enum i40e_status_code i40e_aq_set_vsi_mc_promisc_on_vlan(struct i40e_hw *hw,
  * @vid: The VLAN tag filter - capture any unicast packet with this VLAN tag
  * @cmd_details: pointer to command details structure or NULL
  **/
-enum i40e_status_code i40e_aq_set_vsi_uc_promisc_on_vlan(struct i40e_hw *hw,
-							 u16 seid, bool enable,
-							 u16 vid,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_vsi_uc_promisc_on_vlan(struct i40e_hw *hw,
+				       u16 seid, bool enable,
+				       u16 vid,
+				       struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
 		(struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
-	enum i40e_status_code status;
 	u16 flags = 0;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_vsi_promiscuous_modes);
@@ -2010,15 +2011,15 @@ enum i40e_status_code i40e_aq_set_vsi_uc_promisc_on_vlan(struct i40e_hw *hw,
  * @vid: The VLAN tag filter - capture any broadcast packet with this VLAN tag
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_set_vsi_bc_promisc_on_vlan(struct i40e_hw *hw,
-				u16 seid, bool enable, u16 vid,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_vsi_bc_promisc_on_vlan(struct i40e_hw *hw,
+				       u16 seid, bool enable, u16 vid,
+				       struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
 		(struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
-	i40e_status status;
 	u16 flags = 0;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					i40e_aqc_opc_set_vsi_promiscuous_modes);
@@ -2045,14 +2046,14 @@ i40e_status i40e_aq_set_vsi_bc_promisc_on_vlan(struct i40e_hw *hw,
  *
  * Set or clear the broadcast promiscuous flag (filter) for a given VSI.
  **/
-i40e_status i40e_aq_set_vsi_broadcast(struct i40e_hw *hw,
-				u16 seid, bool set_filter,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_vsi_broadcast(struct i40e_hw *hw,
+			      u16 seid, bool set_filter,
+			      struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
 		(struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					i40e_aqc_opc_set_vsi_promiscuous_modes);
@@ -2078,15 +2079,15 @@ i40e_status i40e_aq_set_vsi_broadcast(struct i40e_hw *hw,
  * @enable: set MAC L2 layer unicast promiscuous enable/disable for a given VLAN
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_set_vsi_vlan_promisc(struct i40e_hw *hw,
-				       u16 seid, bool enable,
-				       struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_vsi_vlan_promisc(struct i40e_hw *hw,
+				 u16 seid, bool enable,
+				 struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
 		(struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
-	i40e_status status;
 	u16 flags = 0;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					i40e_aqc_opc_set_vsi_promiscuous_modes);
@@ -2108,9 +2109,9 @@ i40e_status i40e_aq_set_vsi_vlan_promisc(struct i40e_hw *hw,
  * @vsi_ctx: pointer to a vsi context struct
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_get_vsi_params(struct i40e_hw *hw,
-				struct i40e_vsi_context *vsi_ctx,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_get_vsi_params(struct i40e_hw *hw,
+			   struct i40e_vsi_context *vsi_ctx,
+			   struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_add_get_update_vsi *cmd =
@@ -2118,7 +2119,7 @@ i40e_status i40e_aq_get_vsi_params(struct i40e_hw *hw,
 	struct i40e_aqc_add_get_update_vsi_completion *resp =
 		(struct i40e_aqc_add_get_update_vsi_completion *)
 		&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_get_vsi_parameters);
@@ -2150,9 +2151,9 @@ i40e_status i40e_aq_get_vsi_params(struct i40e_hw *hw,
  *
  * Update a VSI context.
  **/
-i40e_status i40e_aq_update_vsi_params(struct i40e_hw *hw,
-				struct i40e_vsi_context *vsi_ctx,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_update_vsi_params(struct i40e_hw *hw,
+			      struct i40e_vsi_context *vsi_ctx,
+			      struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_add_get_update_vsi *cmd =
@@ -2160,7 +2161,7 @@ i40e_status i40e_aq_update_vsi_params(struct i40e_hw *hw,
 	struct i40e_aqc_add_get_update_vsi_completion *resp =
 		(struct i40e_aqc_add_get_update_vsi_completion *)
 		&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_update_vsi_parameters);
@@ -2188,15 +2189,15 @@ i40e_status i40e_aq_update_vsi_params(struct i40e_hw *hw,
  *
  * Fill the buf with switch configuration returned from AdminQ command
  **/
-i40e_status i40e_aq_get_switch_config(struct i40e_hw *hw,
-				struct i40e_aqc_get_switch_config_resp *buf,
-				u16 buf_size, u16 *start_seid,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_get_switch_config(struct i40e_hw *hw,
+			      struct i40e_aqc_get_switch_config_resp *buf,
+			      u16 buf_size, u16 *start_seid,
+			      struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_switch_seid *scfg =
 		(struct i40e_aqc_switch_seid *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_get_switch_config);
@@ -2222,15 +2223,15 @@ i40e_status i40e_aq_get_switch_config(struct i40e_hw *hw,
  *
  * Set switch configuration bits
  **/
-enum i40e_status_code i40e_aq_set_switch_config(struct i40e_hw *hw,
-						u16 flags,
-						u16 valid_flags, u8 mode,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_switch_config(struct i40e_hw *hw,
+			      u16 flags,
+			      u16 valid_flags, u8 mode,
+			      struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_switch_config *scfg =
 		(struct i40e_aqc_set_switch_config *)&desc.params.raw;
-	enum i40e_status_code status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_switch_config);
@@ -2259,16 +2260,16 @@ enum i40e_status_code i40e_aq_set_switch_config(struct i40e_hw *hw,
  *
  * Get the firmware version from the admin queue commands
  **/
-i40e_status i40e_aq_get_firmware_version(struct i40e_hw *hw,
-				u16 *fw_major_version, u16 *fw_minor_version,
-				u32 *fw_build,
-				u16 *api_major_version, u16 *api_minor_version,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_get_firmware_version(struct i40e_hw *hw,
+				 u16 *fw_major_version, u16 *fw_minor_version,
+				 u32 *fw_build,
+				 u16 *api_major_version, u16 *api_minor_version,
+				 struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_get_version *resp =
 		(struct i40e_aqc_get_version *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_get_version);
 
@@ -2298,14 +2299,14 @@ i40e_status i40e_aq_get_firmware_version(struct i40e_hw *hw,
  *
  * Send the driver version to the firmware
  **/
-i40e_status i40e_aq_send_driver_version(struct i40e_hw *hw,
+int i40e_aq_send_driver_version(struct i40e_hw *hw,
 				struct i40e_driver_version *dv,
 				struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_driver_version *cmd =
 		(struct i40e_aqc_driver_version *)&desc.params.raw;
-	i40e_status status;
+	int status;
 	u16 len;
 
 	if (dv == NULL)
@@ -2340,9 +2341,9 @@ i40e_status i40e_aq_send_driver_version(struct i40e_hw *hw,
  *
  * Side effect: LinkStatusEvent reporting becomes enabled
  **/
-i40e_status i40e_get_link_status(struct i40e_hw *hw, bool *link_up)
+int i40e_get_link_status(struct i40e_hw *hw, bool *link_up)
 {
-	i40e_status status = 0;
+	int status = 0;
 
 	if (hw->phy.get_link_info) {
 		status = i40e_update_link_info(hw);
@@ -2361,10 +2362,10 @@ i40e_status i40e_get_link_status(struct i40e_hw *hw, bool *link_up)
  * i40e_update_link_info - update status of the HW network link
  * @hw: pointer to the hw struct
  **/
-noinline_for_stack i40e_status i40e_update_link_info(struct i40e_hw *hw)
+noinline_for_stack int i40e_update_link_info(struct i40e_hw *hw)
 {
 	struct i40e_aq_get_phy_abilities_resp abilities;
-	i40e_status status = 0;
+	int status = 0;
 
 	status = i40e_aq_get_link_info(hw, true, NULL, NULL);
 	if (status)
@@ -2411,19 +2412,19 @@ noinline_for_stack i40e_status i40e_update_link_info(struct i40e_hw *hw)
  * This asks the FW to add a VEB between the uplink and downlink
  * elements.  If the uplink SEID is 0, this will be a floating VEB.
  **/
-i40e_status i40e_aq_add_veb(struct i40e_hw *hw, u16 uplink_seid,
-				u16 downlink_seid, u8 enabled_tc,
-				bool default_port, u16 *veb_seid,
-				bool enable_stats,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_add_veb(struct i40e_hw *hw, u16 uplink_seid,
+		    u16 downlink_seid, u8 enabled_tc,
+		    bool default_port, u16 *veb_seid,
+		    bool enable_stats,
+		    struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_add_veb *cmd =
 		(struct i40e_aqc_add_veb *)&desc.params.raw;
 	struct i40e_aqc_add_veb_completion *resp =
 		(struct i40e_aqc_add_veb_completion *)&desc.params.raw;
-	i40e_status status;
 	u16 veb_flags = 0;
+	int status;
 
 	/* SEIDs need to either both be set or both be 0 for floating VEB */
 	if (!!uplink_seid != !!downlink_seid)
@@ -2469,17 +2470,17 @@ i40e_status i40e_aq_add_veb(struct i40e_hw *hw, u16 uplink_seid,
  * This retrieves the parameters for a particular VEB, specified by
  * uplink_seid, and returns them to the caller.
  **/
-i40e_status i40e_aq_get_veb_parameters(struct i40e_hw *hw,
-				u16 veb_seid, u16 *switch_id,
-				bool *floating, u16 *statistic_index,
-				u16 *vebs_used, u16 *vebs_free,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_get_veb_parameters(struct i40e_hw *hw,
+			       u16 veb_seid, u16 *switch_id,
+			       bool *floating, u16 *statistic_index,
+			       u16 *vebs_used, u16 *vebs_free,
+			       struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_get_veb_parameters_completion *cmd_resp =
 		(struct i40e_aqc_get_veb_parameters_completion *)
 		&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	if (veb_seid == 0)
 		return I40E_ERR_PARAM;
@@ -2563,7 +2564,7 @@ i40e_prepare_add_macvlan(struct i40e_aqc_add_macvlan_element_data *mv_list,
  *
  * Add MAC/VLAN addresses to the HW filtering
  **/
-i40e_status
+int
 i40e_aq_add_macvlan(struct i40e_hw *hw, u16 seid,
 		    struct i40e_aqc_add_macvlan_element_data *mv_list,
 		    u16 count, struct i40e_asq_cmd_details *cmd_details)
@@ -2595,7 +2596,7 @@ i40e_aq_add_macvlan(struct i40e_hw *hw, u16 seid,
  * It also calls _v2 versions of asq_send_command functions to
  * get the aq_status on the stack.
  **/
-i40e_status
+int
 i40e_aq_add_macvlan_v2(struct i40e_hw *hw, u16 seid,
 		       struct i40e_aqc_add_macvlan_element_data *mv_list,
 		       u16 count, struct i40e_asq_cmd_details *cmd_details,
@@ -2623,15 +2624,15 @@ i40e_aq_add_macvlan_v2(struct i40e_hw *hw, u16 seid,
  *
  * Remove MAC/VLAN addresses from the HW filtering
  **/
-i40e_status i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 seid,
+int i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 seid,
 			struct i40e_aqc_remove_macvlan_element_data *mv_list,
 			u16 count, struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_macvlan *cmd =
 		(struct i40e_aqc_macvlan *)&desc.params.raw;
-	i40e_status status;
 	u16 buf_size;
+	int status;
 
 	if (count == 0 || !mv_list || !hw)
 		return I40E_ERR_PARAM;
@@ -2670,7 +2671,7 @@ i40e_status i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 seid,
  * It also calls _v2 versions of asq_send_command functions to
  * get the aq_status on the stack.
  **/
-i40e_status
+int
 i40e_aq_remove_macvlan_v2(struct i40e_hw *hw, u16 seid,
 			  struct i40e_aqc_remove_macvlan_element_data *mv_list,
 			  u16 count, struct i40e_asq_cmd_details *cmd_details,
@@ -2718,19 +2719,19 @@ i40e_aq_remove_macvlan_v2(struct i40e_hw *hw, u16 seid,
  * Add/Delete a mirror rule to a specific switch. Mirror rules are supported for
  * VEBs/VEPA elements only
  **/
-static i40e_status i40e_mirrorrule_op(struct i40e_hw *hw,
-				u16 opcode, u16 sw_seid, u16 rule_type, u16 id,
-				u16 count, __le16 *mr_list,
-				struct i40e_asq_cmd_details *cmd_details,
-				u16 *rule_id, u16 *rules_used, u16 *rules_free)
+static int i40e_mirrorrule_op(struct i40e_hw *hw,
+			      u16 opcode, u16 sw_seid, u16 rule_type, u16 id,
+			      u16 count, __le16 *mr_list,
+			      struct i40e_asq_cmd_details *cmd_details,
+			      u16 *rule_id, u16 *rules_used, u16 *rules_free)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_add_delete_mirror_rule *cmd =
 		(struct i40e_aqc_add_delete_mirror_rule *)&desc.params.raw;
 	struct i40e_aqc_add_delete_mirror_rule_completion *resp =
 	(struct i40e_aqc_add_delete_mirror_rule_completion *)&desc.params.raw;
-	i40e_status status;
 	u16 buf_size;
+	int status;
 
 	buf_size = count * sizeof(*mr_list);
 
@@ -2778,10 +2779,10 @@ static i40e_status i40e_mirrorrule_op(struct i40e_hw *hw,
  *
  * Add mirror rule. Mirror rules are supported for VEBs or VEPA elements only
  **/
-i40e_status i40e_aq_add_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
-			u16 rule_type, u16 dest_vsi, u16 count, __le16 *mr_list,
-			struct i40e_asq_cmd_details *cmd_details,
-			u16 *rule_id, u16 *rules_used, u16 *rules_free)
+int i40e_aq_add_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
+		u16 rule_type, u16 dest_vsi, u16 count, __le16 *mr_list,
+		struct i40e_asq_cmd_details *cmd_details,
+		u16 *rule_id, u16 *rules_used, u16 *rules_free)
 {
 	if (!(rule_type == I40E_AQC_MIRROR_RULE_TYPE_ALL_INGRESS ||
 	    rule_type == I40E_AQC_MIRROR_RULE_TYPE_ALL_EGRESS)) {
@@ -2809,10 +2810,10 @@ i40e_status i40e_aq_add_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
  *
  * Delete a mirror rule. Mirror rules are supported for VEBs/VEPA elements only
  **/
-i40e_status i40e_aq_delete_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
-			u16 rule_type, u16 rule_id, u16 count, __le16 *mr_list,
-			struct i40e_asq_cmd_details *cmd_details,
-			u16 *rules_used, u16 *rules_free)
+int i40e_aq_delete_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
+		u16 rule_type, u16 rule_id, u16 count, __le16 *mr_list,
+		struct i40e_asq_cmd_details *cmd_details,
+		u16 *rules_used, u16 *rules_free)
 {
 	/* Rule ID has to be valid except rule_type: INGRESS VLAN mirroring */
 	if (rule_type == I40E_AQC_MIRROR_RULE_TYPE_VLAN) {
@@ -2841,14 +2842,14 @@ i40e_status i40e_aq_delete_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
  *
  * send msg to vf
  **/
-i40e_status i40e_aq_send_msg_to_vf(struct i40e_hw *hw, u16 vfid,
-				u32 v_opcode, u32 v_retval, u8 *msg, u16 msglen,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_send_msg_to_vf(struct i40e_hw *hw, u16 vfid,
+			   u32 v_opcode, u32 v_retval, u8 *msg, u16 msglen,
+			   struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_pf_vf_message *cmd =
 		(struct i40e_aqc_pf_vf_message *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_send_msg_to_vf);
 	cmd->id = cpu_to_le32(vfid);
@@ -2876,14 +2877,14 @@ i40e_status i40e_aq_send_msg_to_vf(struct i40e_hw *hw, u16 vfid,
  *
  * Read the register using the admin queue commands
  **/
-i40e_status i40e_aq_debug_read_register(struct i40e_hw *hw,
+int i40e_aq_debug_read_register(struct i40e_hw *hw,
 				u32 reg_addr, u64 *reg_val,
 				struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_debug_reg_read_write *cmd_resp =
 		(struct i40e_aqc_debug_reg_read_write *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	if (reg_val == NULL)
 		return I40E_ERR_PARAM;
@@ -2911,14 +2912,14 @@ i40e_status i40e_aq_debug_read_register(struct i40e_hw *hw,
  *
  * Write to a register using the admin queue commands
  **/
-i40e_status i40e_aq_debug_write_register(struct i40e_hw *hw,
-					u32 reg_addr, u64 reg_val,
-					struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_debug_write_register(struct i40e_hw *hw,
+				 u32 reg_addr, u64 reg_val,
+				 struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_debug_reg_read_write *cmd =
 		(struct i40e_aqc_debug_reg_read_write *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_debug_write_reg);
 
@@ -2942,16 +2943,16 @@ i40e_status i40e_aq_debug_write_register(struct i40e_hw *hw,
  *
  * requests common resource using the admin queue commands
  **/
-i40e_status i40e_aq_request_resource(struct i40e_hw *hw,
-				enum i40e_aq_resources_ids resource,
-				enum i40e_aq_resource_access_type access,
-				u8 sdp_number, u64 *timeout,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_request_resource(struct i40e_hw *hw,
+			     enum i40e_aq_resources_ids resource,
+			     enum i40e_aq_resource_access_type access,
+			     u8 sdp_number, u64 *timeout,
+			     struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_request_resource *cmd_resp =
 		(struct i40e_aqc_request_resource *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_request_resource);
 
@@ -2981,15 +2982,15 @@ i40e_status i40e_aq_request_resource(struct i40e_hw *hw,
  *
  * release common resource using the admin queue commands
  **/
-i40e_status i40e_aq_release_resource(struct i40e_hw *hw,
-				enum i40e_aq_resources_ids resource,
-				u8 sdp_number,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_release_resource(struct i40e_hw *hw,
+			     enum i40e_aq_resources_ids resource,
+			     u8 sdp_number,
+			     struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_request_resource *cmd =
 		(struct i40e_aqc_request_resource *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_release_resource);
 
@@ -3013,15 +3014,15 @@ i40e_status i40e_aq_release_resource(struct i40e_hw *hw,
  *
  * Read the NVM using the admin queue commands
  **/
-i40e_status i40e_aq_read_nvm(struct i40e_hw *hw, u8 module_pointer,
-				u32 offset, u16 length, void *data,
-				bool last_command,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_read_nvm(struct i40e_hw *hw, u8 module_pointer,
+		     u32 offset, u16 length, void *data,
+		     bool last_command,
+		     struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_nvm_update *cmd =
 		(struct i40e_aqc_nvm_update *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	/* In offset the highest byte must be zeroed. */
 	if (offset & 0xFF000000) {
@@ -3059,14 +3060,14 @@ i40e_status i40e_aq_read_nvm(struct i40e_hw *hw, u8 module_pointer,
  *
  * Erase the NVM sector using the admin queue commands
  **/
-i40e_status i40e_aq_erase_nvm(struct i40e_hw *hw, u8 module_pointer,
-			      u32 offset, u16 length, bool last_command,
-			      struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_erase_nvm(struct i40e_hw *hw, u8 module_pointer,
+		      u32 offset, u16 length, bool last_command,
+		      struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_nvm_update *cmd =
 		(struct i40e_aqc_nvm_update *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	/* In offset the highest byte must be zeroed. */
 	if (offset & 0xFF000000) {
@@ -3107,7 +3108,7 @@ static void i40e_parse_discover_capabilities(struct i40e_hw *hw, void *buff,
 	u32 number, logical_id, phys_id;
 	struct i40e_hw_capabilities *p;
 	u16 id, ocp_cfg_word0;
-	i40e_status status;
+	int status;
 	u8 major_rev;
 	u32 i = 0;
 
@@ -3349,14 +3350,14 @@ static void i40e_parse_discover_capabilities(struct i40e_hw *hw, void *buff,
  *
  * Get the device capabilities descriptions from the firmware
  **/
-i40e_status i40e_aq_discover_capabilities(struct i40e_hw *hw,
+int i40e_aq_discover_capabilities(struct i40e_hw *hw,
 				void *buff, u16 buff_size, u16 *data_size,
 				enum i40e_admin_queue_opc list_type_opc,
 				struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aqc_list_capabilites *cmd;
 	struct i40e_aq_desc desc;
-	i40e_status status = 0;
+	int status = 0;
 
 	cmd = (struct i40e_aqc_list_capabilites *)&desc.params.raw;
 
@@ -3398,15 +3399,15 @@ i40e_status i40e_aq_discover_capabilities(struct i40e_hw *hw,
  *
  * Update the NVM using the admin queue commands
  **/
-i40e_status i40e_aq_update_nvm(struct i40e_hw *hw, u8 module_pointer,
-			       u32 offset, u16 length, void *data,
-				bool last_command, u8 preservation_flags,
-			       struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_update_nvm(struct i40e_hw *hw, u8 module_pointer,
+		       u32 offset, u16 length, void *data,
+		       bool last_command, u8 preservation_flags,
+		       struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_nvm_update *cmd =
 		(struct i40e_aqc_nvm_update *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	/* In offset the highest byte must be zeroed. */
 	if (offset & 0xFF000000) {
@@ -3451,13 +3452,13 @@ i40e_status i40e_aq_update_nvm(struct i40e_hw *hw, u8 module_pointer,
  *
  * Rearrange NVM structure, available only for transition FW
  **/
-i40e_status i40e_aq_rearrange_nvm(struct i40e_hw *hw,
-				  u8 rearrange_nvm,
-				  struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_rearrange_nvm(struct i40e_hw *hw,
+			  u8 rearrange_nvm,
+			  struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aqc_nvm_update *cmd;
-	i40e_status status;
 	struct i40e_aq_desc desc;
+	int status;
 
 	cmd = (struct i40e_aqc_nvm_update *)&desc.params.raw;
 
@@ -3491,17 +3492,17 @@ i40e_status i40e_aq_rearrange_nvm(struct i40e_hw *hw,
  *
  * Requests the complete LLDP MIB (entire packet).
  **/
-i40e_status i40e_aq_get_lldp_mib(struct i40e_hw *hw, u8 bridge_type,
-				u8 mib_type, void *buff, u16 buff_size,
-				u16 *local_len, u16 *remote_len,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_get_lldp_mib(struct i40e_hw *hw, u8 bridge_type,
+			 u8 mib_type, void *buff, u16 buff_size,
+			 u16 *local_len, u16 *remote_len,
+			 struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_lldp_get_mib *cmd =
 		(struct i40e_aqc_lldp_get_mib *)&desc.params.raw;
 	struct i40e_aqc_lldp_get_mib *resp =
 		(struct i40e_aqc_lldp_get_mib *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	if (buff_size == 0 || !buff)
 		return I40E_ERR_PARAM;
@@ -3541,14 +3542,14 @@ i40e_status i40e_aq_get_lldp_mib(struct i40e_hw *hw, u8 bridge_type,
  *
  * Set the LLDP MIB.
  **/
-enum i40e_status_code
+int
 i40e_aq_set_lldp_mib(struct i40e_hw *hw,
 		     u8 mib_type, void *buff, u16 buff_size,
 		     struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aqc_lldp_set_local_mib *cmd;
-	enum i40e_status_code status;
 	struct i40e_aq_desc desc;
+	int status;
 
 	cmd = (struct i40e_aqc_lldp_set_local_mib *)&desc.params.raw;
 	if (buff_size == 0 || !buff)
@@ -3580,14 +3581,14 @@ i40e_aq_set_lldp_mib(struct i40e_hw *hw,
  * Enable or Disable posting of an event on ARQ when LLDP MIB
  * associated with the interface changes
  **/
-i40e_status i40e_aq_cfg_lldp_mib_change_event(struct i40e_hw *hw,
-				bool enable_update,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_cfg_lldp_mib_change_event(struct i40e_hw *hw,
+				      bool enable_update,
+				      struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_lldp_update_mib *cmd =
 		(struct i40e_aqc_lldp_update_mib *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_lldp_update_mib);
 
@@ -3609,14 +3610,14 @@ i40e_status i40e_aq_cfg_lldp_mib_change_event(struct i40e_hw *hw,
  * Restore LLDP Agent factory settings if @restore set to True. In other case
  * only returns factory setting in AQ response.
  **/
-enum i40e_status_code
+int
 i40e_aq_restore_lldp(struct i40e_hw *hw, u8 *setting, bool restore,
 		     struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_lldp_restore *cmd =
 		(struct i40e_aqc_lldp_restore *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	if (!(hw->flags & I40E_HW_FLAG_FW_LLDP_PERSISTENT)) {
 		i40e_debug(hw, I40E_DEBUG_ALL,
@@ -3646,14 +3647,14 @@ i40e_aq_restore_lldp(struct i40e_hw *hw, u8 *setting, bool restore,
  *
  * Stop or Shutdown the embedded LLDP Agent
  **/
-i40e_status i40e_aq_stop_lldp(struct i40e_hw *hw, bool shutdown_agent,
-				bool persist,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_stop_lldp(struct i40e_hw *hw, bool shutdown_agent,
+		      bool persist,
+		      struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_lldp_stop *cmd =
 		(struct i40e_aqc_lldp_stop *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_lldp_stop);
 
@@ -3681,13 +3682,13 @@ i40e_status i40e_aq_stop_lldp(struct i40e_hw *hw, bool shutdown_agent,
  *
  * Start the embedded LLDP Agent on all ports.
  **/
-i40e_status i40e_aq_start_lldp(struct i40e_hw *hw, bool persist,
-			       struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_start_lldp(struct i40e_hw *hw, bool persist,
+		       struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_lldp_start *cmd =
 		(struct i40e_aqc_lldp_start *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_lldp_start);
 
@@ -3713,14 +3714,14 @@ i40e_status i40e_aq_start_lldp(struct i40e_hw *hw, bool persist,
  * @dcb_enable: True if DCB configuration needs to be applied
  *
  **/
-enum i40e_status_code
+int
 i40e_aq_set_dcb_parameters(struct i40e_hw *hw, bool dcb_enable,
 			   struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_dcb_parameters *cmd =
 		(struct i40e_aqc_set_dcb_parameters *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	if (!(hw->flags & I40E_HW_FLAG_FW_LLDP_STOPPABLE))
 		return I40E_ERR_DEVICE_NOT_SUPPORTED;
@@ -3746,12 +3747,12 @@ i40e_aq_set_dcb_parameters(struct i40e_hw *hw, bool dcb_enable,
  *
  * Get CEE DCBX mode operational configuration from firmware
  **/
-i40e_status i40e_aq_get_cee_dcb_config(struct i40e_hw *hw,
-				       void *buff, u16 buff_size,
-				       struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_get_cee_dcb_config(struct i40e_hw *hw,
+			       void *buff, u16 buff_size,
+			       struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
-	i40e_status status;
+	int status;
 
 	if (buff_size == 0 || !buff)
 		return I40E_ERR_PARAM;
@@ -3777,17 +3778,17 @@ i40e_status i40e_aq_get_cee_dcb_config(struct i40e_hw *hw,
  * and this function will call cpu_to_le16 to convert from Host byte order to
  * Little Endian order.
  **/
-i40e_status i40e_aq_add_udp_tunnel(struct i40e_hw *hw,
-				u16 udp_port, u8 protocol_index,
-				u8 *filter_index,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_add_udp_tunnel(struct i40e_hw *hw,
+			   u16 udp_port, u8 protocol_index,
+			   u8 *filter_index,
+			   struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_add_udp_tunnel *cmd =
 		(struct i40e_aqc_add_udp_tunnel *)&desc.params.raw;
 	struct i40e_aqc_del_udp_tunnel_completion *resp =
 		(struct i40e_aqc_del_udp_tunnel_completion *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_add_udp_tunnel);
 
@@ -3808,13 +3809,13 @@ i40e_status i40e_aq_add_udp_tunnel(struct i40e_hw *hw,
  * @index: filter index
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_del_udp_tunnel(struct i40e_hw *hw, u8 index,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_del_udp_tunnel(struct i40e_hw *hw, u8 index,
+			   struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_remove_udp_tunnel *cmd =
 		(struct i40e_aqc_remove_udp_tunnel *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_del_udp_tunnel);
 
@@ -3833,13 +3834,13 @@ i40e_status i40e_aq_del_udp_tunnel(struct i40e_hw *hw, u8 index,
  *
  * This deletes a switch element from the switch.
  **/
-i40e_status i40e_aq_delete_element(struct i40e_hw *hw, u16 seid,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_delete_element(struct i40e_hw *hw, u16 seid,
+			   struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_switch_seid *cmd =
 		(struct i40e_aqc_switch_seid *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	if (seid == 0)
 		return I40E_ERR_PARAM;
@@ -3863,11 +3864,11 @@ i40e_status i40e_aq_delete_element(struct i40e_hw *hw, u16 seid,
  * recomputed and modified. The retval field in the descriptor
  * will be set to 0 when RPB is modified.
  **/
-i40e_status i40e_aq_dcb_updated(struct i40e_hw *hw,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_dcb_updated(struct i40e_hw *hw,
+			struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_dcb_updated);
 
@@ -3887,15 +3888,15 @@ i40e_status i40e_aq_dcb_updated(struct i40e_hw *hw,
  *
  * Generic command handler for Tx scheduler AQ commands
  **/
-static i40e_status i40e_aq_tx_sched_cmd(struct i40e_hw *hw, u16 seid,
+static int i40e_aq_tx_sched_cmd(struct i40e_hw *hw, u16 seid,
 				void *buff, u16 buff_size,
-				 enum i40e_admin_queue_opc opcode,
+				enum i40e_admin_queue_opc opcode,
 				struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_tx_sched_ind *cmd =
 		(struct i40e_aqc_tx_sched_ind *)&desc.params.raw;
-	i40e_status status;
+	int status;
 	bool cmd_param_flag = false;
 
 	switch (opcode) {
@@ -3945,14 +3946,14 @@ static i40e_status i40e_aq_tx_sched_cmd(struct i40e_hw *hw, u16 seid,
  * @max_credit: Max BW limit credits
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_config_vsi_bw_limit(struct i40e_hw *hw,
+int i40e_aq_config_vsi_bw_limit(struct i40e_hw *hw,
 				u16 seid, u16 credit, u8 max_credit,
 				struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_configure_vsi_bw_limit *cmd =
 		(struct i40e_aqc_configure_vsi_bw_limit *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_configure_vsi_bw_limit);
@@ -3973,10 +3974,10 @@ i40e_status i40e_aq_config_vsi_bw_limit(struct i40e_hw *hw,
  * @bw_data: Buffer holding enabled TCs, relative TC BW limit/credits
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_config_vsi_tc_bw(struct i40e_hw *hw,
-			u16 seid,
-			struct i40e_aqc_configure_vsi_tc_bw_data *bw_data,
-			struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_config_vsi_tc_bw(struct i40e_hw *hw,
+			     u16 seid,
+			     struct i40e_aqc_configure_vsi_tc_bw_data *bw_data,
+			     struct i40e_asq_cmd_details *cmd_details)
 {
 	return i40e_aq_tx_sched_cmd(hw, seid, (void *)bw_data, sizeof(*bw_data),
 				    i40e_aqc_opc_configure_vsi_tc_bw,
@@ -3991,11 +3992,11 @@ i40e_status i40e_aq_config_vsi_tc_bw(struct i40e_hw *hw,
  * @opcode: Tx scheduler AQ command opcode
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_config_switch_comp_ets(struct i40e_hw *hw,
-		u16 seid,
-		struct i40e_aqc_configure_switching_comp_ets_data *ets_data,
-		enum i40e_admin_queue_opc opcode,
-		struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_config_switch_comp_ets(struct i40e_hw *hw,
+	u16 seid,
+	struct i40e_aqc_configure_switching_comp_ets_data *ets_data,
+	enum i40e_admin_queue_opc opcode,
+	struct i40e_asq_cmd_details *cmd_details)
 {
 	return i40e_aq_tx_sched_cmd(hw, seid, (void *)ets_data,
 				    sizeof(*ets_data), opcode, cmd_details);
@@ -4008,7 +4009,7 @@ i40e_status i40e_aq_config_switch_comp_ets(struct i40e_hw *hw,
  * @bw_data: Buffer holding enabled TCs, relative/absolute TC BW limit/credits
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_config_switch_comp_bw_config(struct i40e_hw *hw,
+int i40e_aq_config_switch_comp_bw_config(struct i40e_hw *hw,
 	u16 seid,
 	struct i40e_aqc_configure_switching_comp_bw_config_data *bw_data,
 	struct i40e_asq_cmd_details *cmd_details)
@@ -4025,7 +4026,7 @@ i40e_status i40e_aq_config_switch_comp_bw_config(struct i40e_hw *hw,
  * @bw_data: Buffer to hold VSI BW configuration
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_query_vsi_bw_config(struct i40e_hw *hw,
+int i40e_aq_query_vsi_bw_config(struct i40e_hw *hw,
 			u16 seid,
 			struct i40e_aqc_query_vsi_bw_config_resp *bw_data,
 			struct i40e_asq_cmd_details *cmd_details)
@@ -4042,7 +4043,7 @@ i40e_status i40e_aq_query_vsi_bw_config(struct i40e_hw *hw,
  * @bw_data: Buffer to hold VSI BW configuration per TC
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_query_vsi_ets_sla_config(struct i40e_hw *hw,
+int i40e_aq_query_vsi_ets_sla_config(struct i40e_hw *hw,
 			u16 seid,
 			struct i40e_aqc_query_vsi_ets_sla_config_resp *bw_data,
 			struct i40e_asq_cmd_details *cmd_details)
@@ -4059,7 +4060,7 @@ i40e_status i40e_aq_query_vsi_ets_sla_config(struct i40e_hw *hw,
  * @bw_data: Buffer to hold switching component's per TC BW config
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_query_switch_comp_ets_config(struct i40e_hw *hw,
+int i40e_aq_query_switch_comp_ets_config(struct i40e_hw *hw,
 		u16 seid,
 		struct i40e_aqc_query_switching_comp_ets_config_resp *bw_data,
 		struct i40e_asq_cmd_details *cmd_details)
@@ -4076,7 +4077,7 @@ i40e_status i40e_aq_query_switch_comp_ets_config(struct i40e_hw *hw,
  * @bw_data: Buffer to hold current ETS configuration for the Physical Port
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_query_port_ets_config(struct i40e_hw *hw,
+int i40e_aq_query_port_ets_config(struct i40e_hw *hw,
 			u16 seid,
 			struct i40e_aqc_query_port_ets_config_resp *bw_data,
 			struct i40e_asq_cmd_details *cmd_details)
@@ -4093,7 +4094,7 @@ i40e_status i40e_aq_query_port_ets_config(struct i40e_hw *hw,
  * @bw_data: Buffer to hold switching component's BW configuration
  * @cmd_details: pointer to command details structure or NULL
  **/
-i40e_status i40e_aq_query_switch_comp_bw_config(struct i40e_hw *hw,
+int i40e_aq_query_switch_comp_bw_config(struct i40e_hw *hw,
 		u16 seid,
 		struct i40e_aqc_query_switching_comp_bw_config_resp *bw_data,
 		struct i40e_asq_cmd_details *cmd_details)
@@ -4115,7 +4116,7 @@ i40e_status i40e_aq_query_switch_comp_bw_config(struct i40e_hw *hw,
  * Returns 0 if the values passed are valid and within
  * range else returns an error.
  **/
-static i40e_status i40e_validate_filter_settings(struct i40e_hw *hw,
+static int i40e_validate_filter_settings(struct i40e_hw *hw,
 				struct i40e_filter_control_settings *settings)
 {
 	u32 fcoe_cntx_size, fcoe_filt_size;
@@ -4202,11 +4203,11 @@ static i40e_status i40e_validate_filter_settings(struct i40e_hw *hw,
  * for a single PF. It is expected that these settings are programmed
  * at the driver initialization time.
  **/
-i40e_status i40e_set_filter_control(struct i40e_hw *hw,
-				struct i40e_filter_control_settings *settings)
+int i40e_set_filter_control(struct i40e_hw *hw,
+			    struct i40e_filter_control_settings *settings)
 {
-	i40e_status ret = 0;
 	u32 hash_lut_size = 0;
+	int ret = 0;
 	u32 val;
 
 	if (!settings)
@@ -4276,7 +4277,7 @@ i40e_status i40e_set_filter_control(struct i40e_hw *hw,
  * In return it will update the total number of perfect filter count in
  * the stats member.
  **/
-i40e_status i40e_aq_add_rem_control_packet_filter(struct i40e_hw *hw,
+int i40e_aq_add_rem_control_packet_filter(struct i40e_hw *hw,
 				u8 *mac_addr, u16 ethtype, u16 flags,
 				u16 vsi_seid, u16 queue, bool is_add,
 				struct i40e_control_filter_stats *stats,
@@ -4289,7 +4290,7 @@ i40e_status i40e_aq_add_rem_control_packet_filter(struct i40e_hw *hw,
 	struct i40e_aqc_add_remove_control_packet_filter_completion *resp =
 		(struct i40e_aqc_add_remove_control_packet_filter_completion *)
 		&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	if (vsi_seid == 0)
 		return I40E_ERR_PARAM;
@@ -4335,7 +4336,7 @@ void i40e_add_filter_to_drop_tx_flow_control_frames(struct i40e_hw *hw,
 		   I40E_AQC_ADD_CONTROL_PACKET_FLAGS_DROP |
 		   I40E_AQC_ADD_CONTROL_PACKET_FLAGS_TX;
 	u16 ethtype = I40E_FLOW_CONTROL_ETHTYPE;
-	i40e_status status;
+	int status;
 
 	status = i40e_aq_add_rem_control_packet_filter(hw, NULL, ethtype, flag,
 						       seid, 0, true, NULL,
@@ -4357,14 +4358,14 @@ void i40e_add_filter_to_drop_tx_flow_control_frames(struct i40e_hw *hw,
  * is not passed then only register at 'reg_addr0' is read.
  *
  **/
-static i40e_status i40e_aq_alternate_read(struct i40e_hw *hw,
-					  u32 reg_addr0, u32 *reg_val0,
-					  u32 reg_addr1, u32 *reg_val1)
+static int i40e_aq_alternate_read(struct i40e_hw *hw,
+				  u32 reg_addr0, u32 *reg_val0,
+				  u32 reg_addr1, u32 *reg_val1)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_alternate_write *cmd_resp =
 		(struct i40e_aqc_alternate_write *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	if (!reg_val0)
 		return I40E_ERR_PARAM;
@@ -4393,12 +4394,12 @@ static i40e_status i40e_aq_alternate_read(struct i40e_hw *hw,
  *
  * Suspend port's Tx traffic
  **/
-i40e_status i40e_aq_suspend_port_tx(struct i40e_hw *hw, u16 seid,
-				    struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_suspend_port_tx(struct i40e_hw *hw, u16 seid,
+			    struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aqc_tx_sched_ind *cmd;
 	struct i40e_aq_desc desc;
-	i40e_status status;
+	int status;
 
 	cmd = (struct i40e_aqc_tx_sched_ind *)&desc.params.raw;
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_suspend_port_tx);
@@ -4415,11 +4416,11 @@ i40e_status i40e_aq_suspend_port_tx(struct i40e_hw *hw, u16 seid,
  *
  * Resume port's Tx traffic
  **/
-i40e_status i40e_aq_resume_port_tx(struct i40e_hw *hw,
-				   struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_resume_port_tx(struct i40e_hw *hw,
+			   struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_resume_port_tx);
 
@@ -4489,18 +4490,18 @@ void i40e_set_pci_config_data(struct i40e_hw *hw, u16 link_status)
  * Dump internal FW/HW data for debug purposes.
  *
  **/
-i40e_status i40e_aq_debug_dump(struct i40e_hw *hw, u8 cluster_id,
-			       u8 table_id, u32 start_index, u16 buff_size,
-			       void *buff, u16 *ret_buff_size,
-			       u8 *ret_next_table, u32 *ret_next_index,
-			       struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_debug_dump(struct i40e_hw *hw, u8 cluster_id,
+		       u8 table_id, u32 start_index, u16 buff_size,
+		       void *buff, u16 *ret_buff_size,
+		       u8 *ret_next_table, u32 *ret_next_index,
+		       struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_debug_dump_internals *cmd =
 		(struct i40e_aqc_debug_dump_internals *)&desc.params.raw;
 	struct i40e_aqc_debug_dump_internals *resp =
 		(struct i40e_aqc_debug_dump_internals *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	if (buff_size == 0 || !buff)
 		return I40E_ERR_PARAM;
@@ -4541,12 +4542,12 @@ i40e_status i40e_aq_debug_dump(struct i40e_hw *hw, u8 cluster_id,
  *
  * Read bw from the alternate ram for the given pf
  **/
-i40e_status i40e_read_bw_from_alt_ram(struct i40e_hw *hw,
-				      u32 *max_bw, u32 *min_bw,
-				      bool *min_valid, bool *max_valid)
+int i40e_read_bw_from_alt_ram(struct i40e_hw *hw,
+			      u32 *max_bw, u32 *min_bw,
+			      bool *min_valid, bool *max_valid)
 {
-	i40e_status status;
 	u32 max_bw_addr, min_bw_addr;
+	int status;
 
 	/* Calculate the address of the min/max bw registers */
 	max_bw_addr = I40E_ALT_STRUCT_FIRST_PF_OFFSET +
@@ -4581,13 +4582,13 @@ i40e_status i40e_read_bw_from_alt_ram(struct i40e_hw *hw,
  *
  * Configure partitions guaranteed/max bw
  **/
-i40e_status i40e_aq_configure_partition_bw(struct i40e_hw *hw,
+int i40e_aq_configure_partition_bw(struct i40e_hw *hw,
 			struct i40e_aqc_configure_partition_bw_data *bw_data,
 			struct i40e_asq_cmd_details *cmd_details)
 {
-	i40e_status status;
-	struct i40e_aq_desc desc;
 	u16 bwd_size = sizeof(*bw_data);
+	struct i40e_aq_desc desc;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_configure_partition_bw);
@@ -4616,11 +4617,11 @@ i40e_status i40e_aq_configure_partition_bw(struct i40e_hw *hw,
  *
  * Reads specified PHY register value
  **/
-i40e_status i40e_read_phy_register_clause22(struct i40e_hw *hw,
-					    u16 reg, u8 phy_addr, u16 *value)
+int i40e_read_phy_register_clause22(struct i40e_hw *hw,
+				    u16 reg, u8 phy_addr, u16 *value)
 {
-	i40e_status status = I40E_ERR_TIMEOUT;
 	u8 port_num = (u8)hw->func_caps.mdio_port_num;
+	int status = I40E_ERR_TIMEOUT;
 	u32 command = 0;
 	u16 retry = 1000;
 
@@ -4661,11 +4662,11 @@ i40e_status i40e_read_phy_register_clause22(struct i40e_hw *hw,
  *
  * Writes specified PHY register value
  **/
-i40e_status i40e_write_phy_register_clause22(struct i40e_hw *hw,
-					     u16 reg, u8 phy_addr, u16 value)
+int i40e_write_phy_register_clause22(struct i40e_hw *hw,
+				     u16 reg, u8 phy_addr, u16 value)
 {
-	i40e_status status = I40E_ERR_TIMEOUT;
 	u8 port_num = (u8)hw->func_caps.mdio_port_num;
+	int status = I40E_ERR_TIMEOUT;
 	u32 command  = 0;
 	u16 retry = 1000;
 
@@ -4702,13 +4703,13 @@ i40e_status i40e_write_phy_register_clause22(struct i40e_hw *hw,
  *
  * Reads specified PHY register value
  **/
-i40e_status i40e_read_phy_register_clause45(struct i40e_hw *hw,
-				u8 page, u16 reg, u8 phy_addr, u16 *value)
+int i40e_read_phy_register_clause45(struct i40e_hw *hw,
+				    u8 page, u16 reg, u8 phy_addr, u16 *value)
 {
-	i40e_status status = I40E_ERR_TIMEOUT;
+	u8 port_num = hw->func_caps.mdio_port_num;
+	int status = I40E_ERR_TIMEOUT;
 	u32 command = 0;
 	u16 retry = 1000;
-	u8 port_num = hw->func_caps.mdio_port_num;
 
 	command = (reg << I40E_GLGEN_MSCA_MDIADD_SHIFT) |
 		  (page << I40E_GLGEN_MSCA_DEVADD_SHIFT) |
@@ -4776,13 +4777,13 @@ i40e_status i40e_read_phy_register_clause45(struct i40e_hw *hw,
  *
  * Writes value to specified PHY register
  **/
-i40e_status i40e_write_phy_register_clause45(struct i40e_hw *hw,
-				u8 page, u16 reg, u8 phy_addr, u16 value)
+int i40e_write_phy_register_clause45(struct i40e_hw *hw,
+				     u8 page, u16 reg, u8 phy_addr, u16 value)
 {
-	i40e_status status = I40E_ERR_TIMEOUT;
-	u32 command = 0;
-	u16 retry = 1000;
 	u8 port_num = hw->func_caps.mdio_port_num;
+	int status = I40E_ERR_TIMEOUT;
+	u16 retry = 1000;
+	u32 command = 0;
 
 	command = (reg << I40E_GLGEN_MSCA_MDIADD_SHIFT) |
 		  (page << I40E_GLGEN_MSCA_DEVADD_SHIFT) |
@@ -4843,10 +4844,10 @@ i40e_status i40e_write_phy_register_clause45(struct i40e_hw *hw,
  *
  * Writes value to specified PHY register
  **/
-i40e_status i40e_write_phy_register(struct i40e_hw *hw,
-				    u8 page, u16 reg, u8 phy_addr, u16 value)
+int i40e_write_phy_register(struct i40e_hw *hw,
+			    u8 page, u16 reg, u8 phy_addr, u16 value)
 {
-	i40e_status status;
+	int status;
 
 	switch (hw->device_id) {
 	case I40E_DEV_ID_1G_BASE_T_X722:
@@ -4882,10 +4883,10 @@ i40e_status i40e_write_phy_register(struct i40e_hw *hw,
  *
  * Reads specified PHY register value
  **/
-i40e_status i40e_read_phy_register(struct i40e_hw *hw,
-				   u8 page, u16 reg, u8 phy_addr, u16 *value)
+int i40e_read_phy_register(struct i40e_hw *hw,
+			   u8 page, u16 reg, u8 phy_addr, u16 *value)
 {
-	i40e_status status;
+	int status;
 
 	switch (hw->device_id) {
 	case I40E_DEV_ID_1G_BASE_T_X722:
@@ -4934,17 +4935,17 @@ u8 i40e_get_phy_address(struct i40e_hw *hw, u8 dev_num)
  *
  * Blinks PHY link LED
  **/
-i40e_status i40e_blink_phy_link_led(struct i40e_hw *hw,
-				    u32 time, u32 interval)
+int i40e_blink_phy_link_led(struct i40e_hw *hw,
+			    u32 time, u32 interval)
 {
-	i40e_status status = 0;
-	u32 i;
-	u16 led_ctl;
-	u16 gpio_led_port;
-	u16 led_reg;
 	u16 led_addr = I40E_PHY_LED_PROV_REG_1;
+	u16 gpio_led_port;
 	u8 phy_addr = 0;
+	int status = 0;
+	u16 led_ctl;
 	u8 port_num;
+	u16 led_reg;
+	u32 i;
 
 	i = rd32(hw, I40E_PFGEN_PORTNUM);
 	port_num = (u8)(i & I40E_PFGEN_PORTNUM_PORT_NUM_MASK);
@@ -5006,12 +5007,12 @@ i40e_status i40e_blink_phy_link_led(struct i40e_hw *hw,
  * @led_addr: LED register address
  * @reg_val: read register value
  **/
-static enum i40e_status_code i40e_led_get_reg(struct i40e_hw *hw, u16 led_addr,
-					      u32 *reg_val)
+static int i40e_led_get_reg(struct i40e_hw *hw, u16 led_addr,
+			    u32 *reg_val)
 {
-	enum i40e_status_code status;
 	u8 phy_addr = 0;
 	u8 port_num;
+	int status;
 	u32 i;
 
 	*reg_val = 0;
@@ -5040,12 +5041,12 @@ static enum i40e_status_code i40e_led_get_reg(struct i40e_hw *hw, u16 led_addr,
  * @led_addr: LED register address
  * @reg_val: register value to write
  **/
-static enum i40e_status_code i40e_led_set_reg(struct i40e_hw *hw, u16 led_addr,
-					      u32 reg_val)
+static int i40e_led_set_reg(struct i40e_hw *hw, u16 led_addr,
+			    u32 reg_val)
 {
-	enum i40e_status_code status;
 	u8 phy_addr = 0;
 	u8 port_num;
+	int status;
 	u32 i;
 
 	if (hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE) {
@@ -5075,17 +5076,17 @@ static enum i40e_status_code i40e_led_set_reg(struct i40e_hw *hw, u16 led_addr,
  * @val: original value of register to use
  *
  **/
-i40e_status i40e_led_get_phy(struct i40e_hw *hw, u16 *led_addr,
-			     u16 *val)
+int i40e_led_get_phy(struct i40e_hw *hw, u16 *led_addr,
+		     u16 *val)
 {
-	i40e_status status = 0;
 	u16 gpio_led_port;
 	u8 phy_addr = 0;
-	u16 reg_val;
+	u32 reg_val_aq;
+	int status = 0;
 	u16 temp_addr;
+	u16 reg_val;
 	u8 port_num;
 	u32 i;
-	u32 reg_val_aq;
 
 	if (hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE) {
 		status =
@@ -5130,12 +5131,12 @@ i40e_status i40e_led_get_phy(struct i40e_hw *hw, u16 *led_addr,
  * Set led's on or off when controlled by the PHY
  *
  **/
-i40e_status i40e_led_set_phy(struct i40e_hw *hw, bool on,
-			     u16 led_addr, u32 mode)
+int i40e_led_set_phy(struct i40e_hw *hw, bool on,
+		     u16 led_addr, u32 mode)
 {
-	i40e_status status = 0;
 	u32 led_ctl = 0;
 	u32 led_reg = 0;
+	int status = 0;
 
 	status = i40e_led_get_reg(hw, led_addr, &led_reg);
 	if (status)
@@ -5179,14 +5180,14 @@ i40e_status i40e_led_set_phy(struct i40e_hw *hw, bool on,
  * Use the firmware to read the Rx control register,
  * especially useful if the Rx unit is under heavy pressure
  **/
-i40e_status i40e_aq_rx_ctl_read_register(struct i40e_hw *hw,
-				u32 reg_addr, u32 *reg_val,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_rx_ctl_read_register(struct i40e_hw *hw,
+				 u32 reg_addr, u32 *reg_val,
+				 struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_rx_ctl_reg_read_write *cmd_resp =
 		(struct i40e_aqc_rx_ctl_reg_read_write *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	if (!reg_val)
 		return I40E_ERR_PARAM;
@@ -5210,8 +5211,8 @@ i40e_status i40e_aq_rx_ctl_read_register(struct i40e_hw *hw,
  **/
 u32 i40e_read_rx_ctl(struct i40e_hw *hw, u32 reg_addr)
 {
-	i40e_status status = 0;
 	bool use_register;
+	int status = 0;
 	int retry = 5;
 	u32 val = 0;
 
@@ -5245,14 +5246,14 @@ u32 i40e_read_rx_ctl(struct i40e_hw *hw, u32 reg_addr)
  * Use the firmware to write to an Rx control register,
  * especially useful if the Rx unit is under heavy pressure
  **/
-i40e_status i40e_aq_rx_ctl_write_register(struct i40e_hw *hw,
-				u32 reg_addr, u32 reg_val,
-				struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_rx_ctl_write_register(struct i40e_hw *hw,
+				  u32 reg_addr, u32 reg_val,
+				  struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_rx_ctl_reg_read_write *cmd =
 		(struct i40e_aqc_rx_ctl_reg_read_write *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_rx_ctl_reg_write);
 
@@ -5272,8 +5273,8 @@ i40e_status i40e_aq_rx_ctl_write_register(struct i40e_hw *hw,
  **/
 void i40e_write_rx_ctl(struct i40e_hw *hw, u32 reg_addr, u32 reg_val)
 {
-	i40e_status status = 0;
 	bool use_register;
+	int status = 0;
 	int retry = 5;
 
 	use_register = (((hw->aq.api_maj_ver == 1) &&
@@ -5335,16 +5336,16 @@ static void i40e_mdio_if_number_selection(struct i40e_hw *hw, bool set_mdio,
  * NOTE: In common cases MDIO I/F number should not be changed, thats why you
  * may use simple wrapper i40e_aq_set_phy_register.
  **/
-enum i40e_status_code i40e_aq_set_phy_register_ext(struct i40e_hw *hw,
-			     u8 phy_select, u8 dev_addr, bool page_change,
-			     bool set_mdio, u8 mdio_num,
-			     u32 reg_addr, u32 reg_val,
-			     struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_phy_register_ext(struct i40e_hw *hw,
+				 u8 phy_select, u8 dev_addr, bool page_change,
+				 bool set_mdio, u8 mdio_num,
+				 u32 reg_addr, u32 reg_val,
+				 struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_phy_register_access *cmd =
 		(struct i40e_aqc_phy_register_access *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_phy_register);
@@ -5380,16 +5381,16 @@ enum i40e_status_code i40e_aq_set_phy_register_ext(struct i40e_hw *hw,
  * NOTE: In common cases MDIO I/F number should not be changed, thats why you
  * may use simple wrapper i40e_aq_get_phy_register.
  **/
-enum i40e_status_code i40e_aq_get_phy_register_ext(struct i40e_hw *hw,
-			     u8 phy_select, u8 dev_addr, bool page_change,
-			     bool set_mdio, u8 mdio_num,
-			     u32 reg_addr, u32 *reg_val,
-			     struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_get_phy_register_ext(struct i40e_hw *hw,
+				 u8 phy_select, u8 dev_addr, bool page_change,
+				 bool set_mdio, u8 mdio_num,
+				 u32 reg_addr, u32 *reg_val,
+				 struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_phy_register_access *cmd =
 		(struct i40e_aqc_phy_register_access *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_get_phy_register);
@@ -5420,18 +5421,17 @@ enum i40e_status_code i40e_aq_get_phy_register_ext(struct i40e_hw *hw,
  * @error_info: returns error information
  * @cmd_details: pointer to command details structure or NULL
  **/
-enum
-i40e_status_code i40e_aq_write_ddp(struct i40e_hw *hw, void *buff,
-				   u16 buff_size, u32 track_id,
-				   u32 *error_offset, u32 *error_info,
-				   struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_write_ddp(struct i40e_hw *hw, void *buff,
+		      u16 buff_size, u32 track_id,
+		      u32 *error_offset, u32 *error_info,
+		      struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_write_personalization_profile *cmd =
 		(struct i40e_aqc_write_personalization_profile *)
 		&desc.params.raw;
 	struct i40e_aqc_write_ddp_resp *resp;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_write_personalization_profile);
@@ -5464,15 +5464,14 @@ i40e_status_code i40e_aq_write_ddp(struct i40e_hw *hw, void *buff,
  * @flags: AdminQ command flags
  * @cmd_details: pointer to command details structure or NULL
  **/
-enum
-i40e_status_code i40e_aq_get_ddp_list(struct i40e_hw *hw, void *buff,
-				      u16 buff_size, u8 flags,
-				      struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_get_ddp_list(struct i40e_hw *hw, void *buff,
+			 u16 buff_size, u8 flags,
+			 struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_get_applied_profiles *cmd =
 		(struct i40e_aqc_get_applied_profiles *)&desc.params.raw;
-	i40e_status status;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_get_personalization_profile_list);
@@ -5571,14 +5570,13 @@ i40e_find_section_in_profile(u32 section_type,
  * @hw: pointer to the hw struct
  * @aq: command buffer containing all data to execute AQ
  **/
-static enum
-i40e_status_code i40e_ddp_exec_aq_section(struct i40e_hw *hw,
-					  struct i40e_profile_aq_section *aq)
+static int i40e_ddp_exec_aq_section(struct i40e_hw *hw,
+				    struct i40e_profile_aq_section *aq)
 {
-	i40e_status status;
 	struct i40e_aq_desc desc;
 	u8 *msg = NULL;
 	u16 msglen;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc, aq->opcode);
 	desc.flags |= cpu_to_le16(aq->flags);
@@ -5618,14 +5616,14 @@ i40e_status_code i40e_ddp_exec_aq_section(struct i40e_hw *hw,
  *
  * Validates supported devices and profile's sections.
  */
-static enum i40e_status_code
+static int
 i40e_validate_profile(struct i40e_hw *hw, struct i40e_profile_segment *profile,
 		      u32 track_id, bool rollback)
 {
 	struct i40e_profile_section_header *sec = NULL;
-	i40e_status status = 0;
 	struct i40e_section_table *sec_tbl;
 	u32 vendor_dev_id;
+	int status = 0;
 	u32 dev_cnt;
 	u32 sec_off;
 	u32 i;
@@ -5683,16 +5681,16 @@ i40e_validate_profile(struct i40e_hw *hw, struct i40e_profile_segment *profile,
  *
  * Handles the download of a complete package.
  */
-enum i40e_status_code
+int
 i40e_write_profile(struct i40e_hw *hw, struct i40e_profile_segment *profile,
 		   u32 track_id)
 {
-	i40e_status status = 0;
-	struct i40e_section_table *sec_tbl;
 	struct i40e_profile_section_header *sec = NULL;
 	struct i40e_profile_aq_section *ddp_aq;
-	u32 section_size = 0;
+	struct i40e_section_table *sec_tbl;
 	u32 offset = 0, info = 0;
+	u32 section_size = 0;
+	int status = 0;
 	u32 sec_off;
 	u32 i;
 
@@ -5746,15 +5744,15 @@ i40e_write_profile(struct i40e_hw *hw, struct i40e_profile_segment *profile,
  *
  * Rolls back previously loaded package.
  */
-enum i40e_status_code
+int
 i40e_rollback_profile(struct i40e_hw *hw, struct i40e_profile_segment *profile,
 		      u32 track_id)
 {
 	struct i40e_profile_section_header *sec = NULL;
-	i40e_status status = 0;
 	struct i40e_section_table *sec_tbl;
 	u32 offset = 0, info = 0;
 	u32 section_size = 0;
+	int status = 0;
 	u32 sec_off;
 	int i;
 
@@ -5798,15 +5796,15 @@ i40e_rollback_profile(struct i40e_hw *hw, struct i40e_profile_segment *profile,
  *
  * Register a profile to the list of loaded profiles.
  */
-enum i40e_status_code
+int
 i40e_add_pinfo_to_list(struct i40e_hw *hw,
 		       struct i40e_profile_segment *profile,
 		       u8 *profile_info_sec, u32 track_id)
 {
-	i40e_status status = 0;
 	struct i40e_profile_section_header *sec = NULL;
 	struct i40e_profile_info *pinfo;
 	u32 offset = 0, info = 0;
+	int status = 0;
 
 	sec = (struct i40e_profile_section_header *)profile_info_sec;
 	sec->tbl_size = 1;
@@ -5840,7 +5838,7 @@ i40e_add_pinfo_to_list(struct i40e_hw *hw,
  * of the function.
  *
  **/
-enum i40e_status_code
+int
 i40e_aq_add_cloud_filters(struct i40e_hw *hw, u16 seid,
 			  struct i40e_aqc_cloud_filters_element_data *filters,
 			  u8 filter_count)
@@ -5848,8 +5846,8 @@ i40e_aq_add_cloud_filters(struct i40e_hw *hw, u16 seid,
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_add_remove_cloud_filters *cmd =
 	(struct i40e_aqc_add_remove_cloud_filters *)&desc.params.raw;
-	enum i40e_status_code status;
 	u16 buff_len;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_add_cloud_filters);
@@ -5877,7 +5875,7 @@ i40e_aq_add_cloud_filters(struct i40e_hw *hw, u16 seid,
  * function.
  *
  **/
-enum i40e_status_code
+int
 i40e_aq_add_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
 			     struct i40e_aqc_cloud_filters_element_bb *filters,
 			     u8 filter_count)
@@ -5885,8 +5883,8 @@ i40e_aq_add_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_add_remove_cloud_filters *cmd =
 	(struct i40e_aqc_add_remove_cloud_filters *)&desc.params.raw;
-	i40e_status status;
 	u16 buff_len;
+	int status;
 	int i;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
@@ -5934,7 +5932,7 @@ i40e_aq_add_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
  * of the function.
  *
  **/
-enum i40e_status_code
+int
 i40e_aq_rem_cloud_filters(struct i40e_hw *hw, u16 seid,
 			  struct i40e_aqc_cloud_filters_element_data *filters,
 			  u8 filter_count)
@@ -5942,8 +5940,8 @@ i40e_aq_rem_cloud_filters(struct i40e_hw *hw, u16 seid,
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_add_remove_cloud_filters *cmd =
 	(struct i40e_aqc_add_remove_cloud_filters *)&desc.params.raw;
-	enum i40e_status_code status;
 	u16 buff_len;
+	int status;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_remove_cloud_filters);
@@ -5971,7 +5969,7 @@ i40e_aq_rem_cloud_filters(struct i40e_hw *hw, u16 seid,
  * function.
  *
  **/
-enum i40e_status_code
+int
 i40e_aq_rem_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
 			     struct i40e_aqc_cloud_filters_element_bb *filters,
 			     u8 filter_count)
@@ -5979,8 +5977,8 @@ i40e_aq_rem_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_add_remove_cloud_filters *cmd =
 	(struct i40e_aqc_add_remove_cloud_filters *)&desc.params.raw;
-	i40e_status status;
 	u16 buff_len;
+	int status;
 	int i;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
index 673f341f4c0c..90638b67f8dc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
@@ -12,7 +12,7 @@
  *
  * Get the DCBX status from the Firmware
  **/
-i40e_status i40e_get_dcbx_status(struct i40e_hw *hw, u16 *status)
+int i40e_get_dcbx_status(struct i40e_hw *hw, u16 *status)
 {
 	u32 reg;
 
@@ -497,15 +497,15 @@ static void i40e_parse_org_tlv(struct i40e_lldp_org_tlv *tlv,
  *
  * Parse DCB configuration from the LLDPDU
  **/
-i40e_status i40e_lldp_to_dcb_config(u8 *lldpmib,
-				    struct i40e_dcbx_config *dcbcfg)
+int i40e_lldp_to_dcb_config(u8 *lldpmib,
+			    struct i40e_dcbx_config *dcbcfg)
 {
-	i40e_status ret = 0;
 	struct i40e_lldp_org_tlv *tlv;
-	u16 type;
-	u16 length;
 	u16 typelength;
 	u16 offset = 0;
+	int ret = 0;
+	u16 length;
+	u16 type;
 
 	if (!lldpmib || !dcbcfg)
 		return I40E_ERR_PARAM;
@@ -551,12 +551,12 @@ i40e_status i40e_lldp_to_dcb_config(u8 *lldpmib,
  *
  * Query DCB configuration from the Firmware
  **/
-i40e_status i40e_aq_get_dcb_config(struct i40e_hw *hw, u8 mib_type,
-				   u8 bridgetype,
-				   struct i40e_dcbx_config *dcbcfg)
+int i40e_aq_get_dcb_config(struct i40e_hw *hw, u8 mib_type,
+			   u8 bridgetype,
+			   struct i40e_dcbx_config *dcbcfg)
 {
-	i40e_status ret = 0;
 	struct i40e_virt_mem mem;
+	int ret = 0;
 	u8 *lldpmib;
 
 	/* Allocate the LLDPDU */
@@ -767,9 +767,9 @@ static void i40e_cee_to_dcb_config(
  *
  * Get IEEE mode DCB configuration from the Firmware
  **/
-static i40e_status i40e_get_ieee_dcb_config(struct i40e_hw *hw)
+static int i40e_get_ieee_dcb_config(struct i40e_hw *hw)
 {
-	i40e_status ret = 0;
+	int ret = 0;
 
 	/* IEEE mode */
 	hw->local_dcbx_config.dcbx_mode = I40E_DCBX_MODE_IEEE;
@@ -797,11 +797,11 @@ static i40e_status i40e_get_ieee_dcb_config(struct i40e_hw *hw)
  *
  * Get DCB configuration from the Firmware
  **/
-i40e_status i40e_get_dcb_config(struct i40e_hw *hw)
+int i40e_get_dcb_config(struct i40e_hw *hw)
 {
-	i40e_status ret = 0;
-	struct i40e_aqc_get_cee_dcb_cfg_resp cee_cfg;
 	struct i40e_aqc_get_cee_dcb_cfg_v1_resp cee_v1_cfg;
+	struct i40e_aqc_get_cee_dcb_cfg_resp cee_cfg;
+	int ret = 0;
 
 	/* If Firmware version < v4.33 on X710/XL710, IEEE only */
 	if ((hw->mac.type == I40E_MAC_XL710) &&
@@ -867,11 +867,11 @@ i40e_status i40e_get_dcb_config(struct i40e_hw *hw)
  *
  * Update DCB configuration from the Firmware
  **/
-i40e_status i40e_init_dcb(struct i40e_hw *hw, bool enable_mib_change)
+int i40e_init_dcb(struct i40e_hw *hw, bool enable_mib_change)
 {
-	i40e_status ret = 0;
 	struct i40e_lldp_variables lldp_cfg;
 	u8 adminstatus = 0;
+	int ret = 0;
 
 	if (!hw->func_caps.dcb)
 		return I40E_NOT_SUPPORTED;
@@ -940,13 +940,13 @@ i40e_status i40e_init_dcb(struct i40e_hw *hw, bool enable_mib_change)
  * Get status of FW Link Layer Discovery Protocol (LLDP) Agent.
  * Status of agent is reported via @lldp_status parameter.
  **/
-enum i40e_status_code
+int
 i40e_get_fw_lldp_status(struct i40e_hw *hw,
 			enum i40e_get_fw_lldp_status_resp *lldp_status)
 {
 	struct i40e_virt_mem mem;
-	i40e_status ret;
 	u8 *lldpmib;
+	int ret;
 
 	if (!lldp_status)
 		return I40E_ERR_PARAM;
@@ -1238,13 +1238,13 @@ static void i40e_add_dcb_tlv(struct i40e_lldp_org_tlv *tlv,
  *
  * Set DCB configuration to the Firmware
  **/
-i40e_status i40e_set_dcb_config(struct i40e_hw *hw)
+int i40e_set_dcb_config(struct i40e_hw *hw)
 {
 	struct i40e_dcbx_config *dcbcfg;
 	struct i40e_virt_mem mem;
 	u8 mib_type, *lldpmib;
-	i40e_status ret;
 	u16 miblen;
+	int ret;
 
 	/* update the hw local config */
 	dcbcfg = &hw->local_dcbx_config;
@@ -1274,8 +1274,8 @@ i40e_status i40e_set_dcb_config(struct i40e_hw *hw)
  *
  * send DCB configuration to FW
  **/
-i40e_status i40e_dcb_config_to_lldp(u8 *lldpmib, u16 *miblen,
-				    struct i40e_dcbx_config *dcbcfg)
+int i40e_dcb_config_to_lldp(u8 *lldpmib, u16 *miblen,
+			    struct i40e_dcbx_config *dcbcfg)
 {
 	u16 length, offset = 0, tlvid, typelength;
 	struct i40e_lldp_org_tlv *tlv;
@@ -1888,13 +1888,13 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
  *
  * Reads the LLDP configuration data from NVM using passed addresses
  **/
-static i40e_status _i40e_read_lldp_cfg(struct i40e_hw *hw,
-				       struct i40e_lldp_variables *lldp_cfg,
-				       u8 module, u32 word_offset)
+static int _i40e_read_lldp_cfg(struct i40e_hw *hw,
+			       struct i40e_lldp_variables *lldp_cfg,
+			       u8 module, u32 word_offset)
 {
 	u32 address, offset = (2 * word_offset);
-	i40e_status ret;
 	__le16 raw_mem;
+	int ret;
 	u16 mem;
 
 	ret = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
@@ -1950,10 +1950,10 @@ static i40e_status _i40e_read_lldp_cfg(struct i40e_hw *hw,
  *
  * Reads the LLDP configuration data from NVM
  **/
-i40e_status i40e_read_lldp_cfg(struct i40e_hw *hw,
-			       struct i40e_lldp_variables *lldp_cfg)
+int i40e_read_lldp_cfg(struct i40e_hw *hw,
+		       struct i40e_lldp_variables *lldp_cfg)
 {
-	i40e_status ret = 0;
+	int ret = 0;
 	u32 mem;
 
 	if (!lldp_cfg)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.h b/drivers/net/ethernet/intel/i40e/i40e_dcb.h
index 2370ceecb061..6b60dc9b7736 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.h
@@ -264,20 +264,20 @@ void i40e_dcb_hw_calculate_pool_sizes(struct i40e_hw *hw,
 void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 			      struct i40e_rx_pb_config *old_pb_cfg,
 			      struct i40e_rx_pb_config *new_pb_cfg);
-i40e_status i40e_get_dcbx_status(struct i40e_hw *hw,
-				 u16 *status);
-i40e_status i40e_lldp_to_dcb_config(u8 *lldpmib,
-				    struct i40e_dcbx_config *dcbcfg);
-i40e_status i40e_aq_get_dcb_config(struct i40e_hw *hw, u8 mib_type,
-				   u8 bridgetype,
-				   struct i40e_dcbx_config *dcbcfg);
-i40e_status i40e_get_dcb_config(struct i40e_hw *hw);
-i40e_status i40e_init_dcb(struct i40e_hw *hw,
-			  bool enable_mib_change);
-enum i40e_status_code
+int i40e_get_dcbx_status(struct i40e_hw *hw,
+			 u16 *status);
+int i40e_lldp_to_dcb_config(u8 *lldpmib,
+			    struct i40e_dcbx_config *dcbcfg);
+int i40e_aq_get_dcb_config(struct i40e_hw *hw, u8 mib_type,
+			   u8 bridgetype,
+			   struct i40e_dcbx_config *dcbcfg);
+int i40e_get_dcb_config(struct i40e_hw *hw);
+int i40e_init_dcb(struct i40e_hw *hw,
+		  bool enable_mib_change);
+int
 i40e_get_fw_lldp_status(struct i40e_hw *hw,
 			enum i40e_get_fw_lldp_status_resp *lldp_status);
-i40e_status i40e_set_dcb_config(struct i40e_hw *hw);
-i40e_status i40e_dcb_config_to_lldp(u8 *lldpmib, u16 *miblen,
-				    struct i40e_dcbx_config *dcbcfg);
+int i40e_set_dcb_config(struct i40e_hw *hw);
+int i40e_dcb_config_to_lldp(u8 *lldpmib, u16 *miblen,
+			    struct i40e_dcbx_config *dcbcfg);
 #endif /* _I40E_DCB_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ddp.c b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
index e1069ae658ad..7e8183762fd9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ddp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
@@ -36,7 +36,7 @@ static int i40e_ddp_does_profile_exist(struct i40e_hw *hw,
 {
 	struct i40e_ddp_profile_list *profile_list;
 	u8 buff[I40E_PROFILE_LIST_SIZE];
-	i40e_status status;
+	int status;
 	int i;
 
 	status = i40e_aq_get_ddp_list(hw, buff, I40E_PROFILE_LIST_SIZE, 0,
@@ -91,7 +91,7 @@ static int i40e_ddp_does_profile_overlap(struct i40e_hw *hw,
 {
 	struct i40e_ddp_profile_list *profile_list;
 	u8 buff[I40E_PROFILE_LIST_SIZE];
-	i40e_status status;
+	int status;
 	int i;
 
 	status = i40e_aq_get_ddp_list(hw, buff, I40E_PROFILE_LIST_SIZE, 0,
@@ -117,14 +117,14 @@ static int i40e_ddp_does_profile_overlap(struct i40e_hw *hw,
  *
  * Register a profile to the list of loaded profiles.
  */
-static enum i40e_status_code
+static int
 i40e_add_pinfo(struct i40e_hw *hw, struct i40e_profile_segment *profile,
 	       u8 *profile_info_sec, u32 track_id)
 {
 	struct i40e_profile_section_header *sec;
 	struct i40e_profile_info *pinfo;
-	i40e_status status;
 	u32 offset = 0, info = 0;
+	int status;
 
 	sec = (struct i40e_profile_section_header *)profile_info_sec;
 	sec->tbl_size = 1;
@@ -157,14 +157,14 @@ i40e_add_pinfo(struct i40e_hw *hw, struct i40e_profile_segment *profile,
  *
  * Removes DDP profile from the NIC.
  **/
-static enum i40e_status_code
+static int
 i40e_del_pinfo(struct i40e_hw *hw, struct i40e_profile_segment *profile,
 	       u8 *profile_info_sec, u32 track_id)
 {
 	struct i40e_profile_section_header *sec;
 	struct i40e_profile_info *pinfo;
-	i40e_status status;
 	u32 offset = 0, info = 0;
+	int status;
 
 	sec = (struct i40e_profile_section_header *)profile_info_sec;
 	sec->tbl_size = 1;
@@ -270,12 +270,12 @@ int i40e_ddp_load(struct net_device *netdev, const u8 *data, size_t size,
 	struct i40e_profile_segment *profile_hdr;
 	struct i40e_profile_info pinfo;
 	struct i40e_package_header *pkg_hdr;
-	i40e_status status;
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
 	u32 track_id;
 	int istatus;
+	int status;
 
 	pkg_hdr = (struct i40e_package_header *)data;
 	if (!i40e_ddp_is_pkg_hdr_valid(netdev, pkg_hdr, size))
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index c9dcd6d92c83..9954493cd448 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -918,9 +918,9 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 		dev_info(&pf->pdev->dev, "deleting relay %d\n", veb_seid);
 		i40e_veb_release(pf->veb[i]);
 	} else if (strncmp(cmd_buf, "add pvid", 8) == 0) {
-		i40e_status ret;
-		u16 vid;
 		unsigned int v;
+		int ret;
+		u16 vid;
 
 		cnt = sscanf(&cmd_buf[8], "%i %u", &vsi_seid, &v);
 		if (cnt != 2) {
@@ -1284,7 +1284,7 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 		}
 	} else if (strncmp(cmd_buf, "send aq_cmd", 11) == 0) {
 		struct i40e_aq_desc *desc;
-		i40e_status ret;
+		int ret;
 
 		desc = kzalloc(sizeof(struct i40e_aq_desc), GFP_KERNEL);
 		if (!desc)
@@ -1330,9 +1330,9 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 		desc = NULL;
 	} else if (strncmp(cmd_buf, "send indirect aq_cmd", 20) == 0) {
 		struct i40e_aq_desc *desc;
-		i40e_status ret;
 		u16 buffer_len;
 		u8 *buff;
+		int ret;
 
 		desc = kzalloc(sizeof(struct i40e_aq_desc), GFP_KERNEL);
 		if (!desc)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_diag.c b/drivers/net/ethernet/intel/i40e/i40e_diag.c
index ef4d3762bf37..5b3519c6e362 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_diag.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_diag.c
@@ -10,8 +10,8 @@
  * @reg: reg to be tested
  * @mask: bits to be touched
  **/
-static i40e_status i40e_diag_reg_pattern_test(struct i40e_hw *hw,
-							u32 reg, u32 mask)
+static int i40e_diag_reg_pattern_test(struct i40e_hw *hw,
+				      u32 reg, u32 mask)
 {
 	static const u32 patterns[] = {
 		0x5A5A5A5A, 0xA5A5A5A5, 0x00000000, 0xFFFFFFFF
@@ -74,9 +74,9 @@ struct i40e_diag_reg_test_info i40e_reg_list[] = {
  *
  * Perform registers diagnostic test
  **/
-i40e_status i40e_diag_reg_test(struct i40e_hw *hw)
+int i40e_diag_reg_test(struct i40e_hw *hw)
 {
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 	u32 reg, mask;
 	u32 i, j;
 
@@ -114,9 +114,9 @@ i40e_status i40e_diag_reg_test(struct i40e_hw *hw)
  *
  * Perform EEPROM diagnostic test
  **/
-i40e_status i40e_diag_eeprom_test(struct i40e_hw *hw)
+int i40e_diag_eeprom_test(struct i40e_hw *hw)
 {
-	i40e_status ret_code;
+	int ret_code;
 	u16 reg_val;
 
 	/* read NVM control word and if NVM valid, validate EEPROM checksum*/
diff --git a/drivers/net/ethernet/intel/i40e/i40e_diag.h b/drivers/net/ethernet/intel/i40e/i40e_diag.h
index c3340f320a18..e641035c7297 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_diag.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_diag.h
@@ -22,7 +22,7 @@ struct i40e_diag_reg_test_info {
 
 extern struct i40e_diag_reg_test_info i40e_reg_list[];
 
-i40e_status i40e_diag_reg_test(struct i40e_hw *hw);
-i40e_status i40e_diag_eeprom_test(struct i40e_hw *hw);
+int i40e_diag_reg_test(struct i40e_hw *hw);
+int i40e_diag_eeprom_test(struct i40e_hw *hw);
 
 #endif /* _I40E_DIAG_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 7ea9d5a35b55..04cbc217c569 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -1226,8 +1226,8 @@ static int i40e_set_link_ksettings(struct net_device *netdev,
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_hw *hw = &pf->hw;
 	bool autoneg_changed = false;
-	i40e_status status = 0;
 	int timeout = 50;
+	int status = 0;
 	int err = 0;
 	__u32 speed;
 	u8 autoneg;
@@ -1485,7 +1485,7 @@ static int i40e_set_fec_cfg(struct net_device *netdev, u8 fec_cfg)
 	struct i40e_aq_get_phy_abilities_resp abilities;
 	struct i40e_pf *pf = np->vsi->back;
 	struct i40e_hw *hw = &pf->hw;
-	i40e_status status = 0;
+	int status = 0;
 	u32 flags = 0;
 	int err = 0;
 
@@ -1547,7 +1547,7 @@ static int i40e_get_fec_param(struct net_device *netdev,
 	struct i40e_aq_get_phy_abilities_resp abilities;
 	struct i40e_pf *pf = np->vsi->back;
 	struct i40e_hw *hw = &pf->hw;
-	i40e_status status = 0;
+	int status = 0;
 	int err = 0;
 	u8 fec_cfg;
 
@@ -1634,7 +1634,7 @@ static int i40e_nway_reset(struct net_device *netdev)
 	struct i40e_pf *pf = np->vsi->back;
 	struct i40e_hw *hw = &pf->hw;
 	bool link_up = hw->phy.link_info.link_info & I40E_AQ_LINK_UP;
-	i40e_status ret = 0;
+	int ret = 0;
 
 	ret = i40e_aq_set_link_restart_an(hw, link_up, NULL);
 	if (ret) {
@@ -1699,9 +1699,9 @@ static int i40e_set_pauseparam(struct net_device *netdev,
 	struct i40e_link_status *hw_link_info = &hw->phy.link_info;
 	struct i40e_dcbx_config *dcbx_cfg = &hw->local_dcbx_config;
 	bool link_up = hw_link_info->link_info & I40E_AQ_LINK_UP;
-	i40e_status status;
 	u8 aq_failures;
 	int err = 0;
+	int status;
 	u32 is_an;
 
 	/* Changing the port's flow control is not supported if this isn't the
@@ -2583,8 +2583,8 @@ static u64 i40e_link_test(struct net_device *netdev, u64 *data)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_pf *pf = np->vsi->back;
-	i40e_status status;
 	bool link_up = false;
+	int status;
 
 	netif_info(pf, hw, netdev, "link test\n");
 	status = i40e_get_link_status(&pf->hw, &link_up);
@@ -2807,11 +2807,11 @@ static int i40e_set_phys_id(struct net_device *netdev,
 			    enum ethtool_phys_id_state state)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
-	i40e_status ret = 0;
 	struct i40e_pf *pf = np->vsi->back;
 	struct i40e_hw *hw = &pf->hw;
 	int blink_freq = 2;
 	u16 temp_status;
+	int ret = 0;
 
 	switch (state) {
 	case ETHTOOL_ID_ACTIVE:
@@ -5247,7 +5247,7 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
 	u32 reset_needed = 0;
-	i40e_status status;
+	int status;
 	u32 i, j;
 
 	orig_flags = READ_ONCE(pf->flags);
@@ -5476,8 +5476,8 @@ static int i40e_get_module_info(struct net_device *netdev,
 	u32 sff8472_comp = 0;
 	u32 sff8472_swap = 0;
 	u32 sff8636_rev = 0;
-	i40e_status status;
 	u32 type = 0;
+	int status;
 
 	/* Check if firmware supports reading module EEPROM. */
 	if (!(hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE)) {
@@ -5581,8 +5581,8 @@ static int i40e_get_module_eeprom(struct net_device *netdev,
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
 	bool is_sfp = false;
-	i40e_status status;
 	u32 value = 0;
+	int status;
 	int i;
 
 	if (!ee || !ee->len || !data)
@@ -5623,10 +5623,10 @@ static int i40e_get_eee(struct net_device *netdev, struct ethtool_eee *edata)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_aq_get_phy_abilities_resp phy_cfg;
-	enum i40e_status_code status = 0;
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
+	int status = 0;
 
 	/* Get initial PHY capabilities */
 	status = i40e_aq_get_phy_capabilities(hw, false, true, &phy_cfg, NULL);
@@ -5688,11 +5688,11 @@ static int i40e_set_eee(struct net_device *netdev, struct ethtool_eee *edata)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_aq_get_phy_abilities_resp abilities;
-	enum i40e_status_code status = I40E_SUCCESS;
 	struct i40e_aq_set_phy_config config;
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
+	int status = I40E_SUCCESS;
 	__le16 eee_capability;
 
 	/* Deny parameters we don't support */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
index 163ee8c6311c..46f7950a0049 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_hmc.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
@@ -17,17 +17,17 @@
  * @type: what type of segment descriptor we're manipulating
  * @direct_mode_sz: size to alloc in direct mode
  **/
-i40e_status i40e_add_sd_table_entry(struct i40e_hw *hw,
-					      struct i40e_hmc_info *hmc_info,
-					      u32 sd_index,
-					      enum i40e_sd_entry_type type,
-					      u64 direct_mode_sz)
+int i40e_add_sd_table_entry(struct i40e_hw *hw,
+			    struct i40e_hmc_info *hmc_info,
+			    u32 sd_index,
+			    enum i40e_sd_entry_type type,
+			    u64 direct_mode_sz)
 {
 	enum i40e_memory_type mem_type __attribute__((unused));
 	struct i40e_hmc_sd_entry *sd_entry;
 	bool dma_mem_alloc_done = false;
+	int ret_code = I40E_SUCCESS;
 	struct i40e_dma_mem mem;
-	i40e_status ret_code = I40E_SUCCESS;
 	u64 alloc_len;
 
 	if (NULL == hmc_info->sd_table.sd_entry) {
@@ -106,19 +106,19 @@ i40e_status i40e_add_sd_table_entry(struct i40e_hw *hw,
  *	   aligned on 4K boundary and zeroed memory.
  *	2. It should be 4K in size.
  **/
-i40e_status i40e_add_pd_table_entry(struct i40e_hw *hw,
-					      struct i40e_hmc_info *hmc_info,
-					      u32 pd_index,
-					      struct i40e_dma_mem *rsrc_pg)
+int i40e_add_pd_table_entry(struct i40e_hw *hw,
+			    struct i40e_hmc_info *hmc_info,
+			    u32 pd_index,
+			    struct i40e_dma_mem *rsrc_pg)
 {
-	i40e_status ret_code = 0;
 	struct i40e_hmc_pd_table *pd_table;
 	struct i40e_hmc_pd_entry *pd_entry;
 	struct i40e_dma_mem mem;
 	struct i40e_dma_mem *page = &mem;
 	u32 sd_idx, rel_pd_idx;
-	u64 *pd_addr;
+	int ret_code = 0;
 	u64 page_desc;
+	u64 *pd_addr;
 
 	if (pd_index / I40E_HMC_PD_CNT_IN_SD >= hmc_info->sd_table.sd_cnt) {
 		ret_code = I40E_ERR_INVALID_PAGE_DESC_INDEX;
@@ -185,15 +185,15 @@ i40e_status i40e_add_pd_table_entry(struct i40e_hw *hw,
  *	1. Caller can deallocate the memory used by backing storage after this
  *	   function returns.
  **/
-i40e_status i40e_remove_pd_bp(struct i40e_hw *hw,
-					struct i40e_hmc_info *hmc_info,
-					u32 idx)
+int i40e_remove_pd_bp(struct i40e_hw *hw,
+		      struct i40e_hmc_info *hmc_info,
+		      u32 idx)
 {
-	i40e_status ret_code = 0;
 	struct i40e_hmc_pd_entry *pd_entry;
 	struct i40e_hmc_pd_table *pd_table;
 	struct i40e_hmc_sd_entry *sd_entry;
 	u32 sd_idx, rel_pd_idx;
+	int ret_code = 0;
 	u64 *pd_addr;
 
 	/* calculate index */
@@ -241,11 +241,11 @@ i40e_status i40e_remove_pd_bp(struct i40e_hw *hw,
  * @hmc_info: pointer to the HMC configuration information structure
  * @idx: the page index
  **/
-i40e_status i40e_prep_remove_sd_bp(struct i40e_hmc_info *hmc_info,
-					     u32 idx)
+int i40e_prep_remove_sd_bp(struct i40e_hmc_info *hmc_info,
+			   u32 idx)
 {
-	i40e_status ret_code = 0;
 	struct i40e_hmc_sd_entry *sd_entry;
+	int ret_code = 0;
 
 	/* get the entry and decrease its ref counter */
 	sd_entry = &hmc_info->sd_table.sd_entry[idx];
@@ -269,9 +269,9 @@ i40e_status i40e_prep_remove_sd_bp(struct i40e_hmc_info *hmc_info,
  * @idx: the page index
  * @is_pf: used to distinguish between VF and PF
  **/
-i40e_status i40e_remove_sd_bp_new(struct i40e_hw *hw,
-					    struct i40e_hmc_info *hmc_info,
-					    u32 idx, bool is_pf)
+int i40e_remove_sd_bp_new(struct i40e_hw *hw,
+			  struct i40e_hmc_info *hmc_info,
+			  u32 idx, bool is_pf)
 {
 	struct i40e_hmc_sd_entry *sd_entry;
 
@@ -290,11 +290,11 @@ i40e_status i40e_remove_sd_bp_new(struct i40e_hw *hw,
  * @hmc_info: pointer to the HMC configuration information structure
  * @idx: segment descriptor index to find the relevant page descriptor
  **/
-i40e_status i40e_prep_remove_pd_page(struct i40e_hmc_info *hmc_info,
-					       u32 idx)
+int i40e_prep_remove_pd_page(struct i40e_hmc_info *hmc_info,
+			     u32 idx)
 {
-	i40e_status ret_code = 0;
 	struct i40e_hmc_sd_entry *sd_entry;
+	int ret_code = 0;
 
 	sd_entry = &hmc_info->sd_table.sd_entry[idx];
 
@@ -318,9 +318,9 @@ i40e_status i40e_prep_remove_pd_page(struct i40e_hmc_info *hmc_info,
  * @idx: segment descriptor index to find the relevant page descriptor
  * @is_pf: used to distinguish between VF and PF
  **/
-i40e_status i40e_remove_pd_page_new(struct i40e_hw *hw,
-					      struct i40e_hmc_info *hmc_info,
-					      u32 idx, bool is_pf)
+int i40e_remove_pd_page_new(struct i40e_hw *hw,
+			    struct i40e_hmc_info *hmc_info,
+			    u32 idx, bool is_pf)
 {
 	struct i40e_hmc_sd_entry *sd_entry;
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.h b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
index 3113792afaff..c1a38882a077 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_hmc.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
@@ -187,28 +187,28 @@ struct i40e_hmc_info {
 	/* add one more to the limit to correct our range */		\
 	*(pd_limit) += 1;						\
 }
-i40e_status i40e_add_sd_table_entry(struct i40e_hw *hw,
-					      struct i40e_hmc_info *hmc_info,
-					      u32 sd_index,
-					      enum i40e_sd_entry_type type,
-					      u64 direct_mode_sz);
-
-i40e_status i40e_add_pd_table_entry(struct i40e_hw *hw,
-					      struct i40e_hmc_info *hmc_info,
-					      u32 pd_index,
-					      struct i40e_dma_mem *rsrc_pg);
-i40e_status i40e_remove_pd_bp(struct i40e_hw *hw,
-					struct i40e_hmc_info *hmc_info,
-					u32 idx);
-i40e_status i40e_prep_remove_sd_bp(struct i40e_hmc_info *hmc_info,
-					     u32 idx);
-i40e_status i40e_remove_sd_bp_new(struct i40e_hw *hw,
-					    struct i40e_hmc_info *hmc_info,
-					    u32 idx, bool is_pf);
-i40e_status i40e_prep_remove_pd_page(struct i40e_hmc_info *hmc_info,
-					       u32 idx);
-i40e_status i40e_remove_pd_page_new(struct i40e_hw *hw,
-					      struct i40e_hmc_info *hmc_info,
-					      u32 idx, bool is_pf);
+int i40e_add_sd_table_entry(struct i40e_hw *hw,
+			    struct i40e_hmc_info *hmc_info,
+			    u32 sd_index,
+			    enum i40e_sd_entry_type type,
+			    u64 direct_mode_sz);
+
+int i40e_add_pd_table_entry(struct i40e_hw *hw,
+			    struct i40e_hmc_info *hmc_info,
+			    u32 pd_index,
+			    struct i40e_dma_mem *rsrc_pg);
+int i40e_remove_pd_bp(struct i40e_hw *hw,
+		      struct i40e_hmc_info *hmc_info,
+		      u32 idx);
+int i40e_prep_remove_sd_bp(struct i40e_hmc_info *hmc_info,
+			   u32 idx);
+int i40e_remove_sd_bp_new(struct i40e_hw *hw,
+			  struct i40e_hmc_info *hmc_info,
+			  u32 idx, bool is_pf);
+int i40e_prep_remove_pd_page(struct i40e_hmc_info *hmc_info,
+			     u32 idx);
+int i40e_remove_pd_page_new(struct i40e_hw *hw,
+			    struct i40e_hmc_info *hmc_info,
+			    u32 idx, bool is_pf);
 
 #endif /* _I40E_HMC_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
index d6e92ecddfbd..40c101f286d1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
@@ -74,12 +74,12 @@ static u64 i40e_calculate_l2fpm_size(u32 txq_num, u32 rxq_num,
  * Assumptions:
  *   - HMC Resource Profile has been selected before calling this function.
  **/
-i40e_status i40e_init_lan_hmc(struct i40e_hw *hw, u32 txq_num,
-					u32 rxq_num, u32 fcoe_cntx_num,
-					u32 fcoe_filt_num)
+int i40e_init_lan_hmc(struct i40e_hw *hw, u32 txq_num,
+		      u32 rxq_num, u32 fcoe_cntx_num,
+		      u32 fcoe_filt_num)
 {
 	struct i40e_hmc_obj_info *obj, *full_obj;
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 	u64 l2fpm_size;
 	u32 size_exp;
 
@@ -229,11 +229,11 @@ i40e_status i40e_init_lan_hmc(struct i40e_hw *hw, u32 txq_num,
  *	1. caller can deallocate the memory used by pd after this function
  *	   returns.
  **/
-static i40e_status i40e_remove_pd_page(struct i40e_hw *hw,
-						 struct i40e_hmc_info *hmc_info,
-						 u32 idx)
+static int i40e_remove_pd_page(struct i40e_hw *hw,
+			       struct i40e_hmc_info *hmc_info,
+			       u32 idx)
 {
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 
 	if (!i40e_prep_remove_pd_page(hmc_info, idx))
 		ret_code = i40e_remove_pd_page_new(hw, hmc_info, idx, true);
@@ -256,11 +256,11 @@ static i40e_status i40e_remove_pd_page(struct i40e_hw *hw,
  *	1. caller can deallocate the memory used by backing storage after this
  *	   function returns.
  **/
-static i40e_status i40e_remove_sd_bp(struct i40e_hw *hw,
-					       struct i40e_hmc_info *hmc_info,
-					       u32 idx)
+static int i40e_remove_sd_bp(struct i40e_hw *hw,
+			     struct i40e_hmc_info *hmc_info,
+			     u32 idx)
 {
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 
 	if (!i40e_prep_remove_sd_bp(hmc_info, idx))
 		ret_code = i40e_remove_sd_bp_new(hw, hmc_info, idx, true);
@@ -276,15 +276,15 @@ static i40e_status i40e_remove_sd_bp(struct i40e_hw *hw,
  * This will allocate memory for PDs and backing pages and populate
  * the sd and pd entries.
  **/
-static i40e_status i40e_create_lan_hmc_object(struct i40e_hw *hw,
-				struct i40e_hmc_lan_create_obj_info *info)
+static int i40e_create_lan_hmc_object(struct i40e_hw *hw,
+				      struct i40e_hmc_lan_create_obj_info *info)
 {
-	i40e_status ret_code = 0;
 	struct i40e_hmc_sd_entry *sd_entry;
 	u32 pd_idx1 = 0, pd_lmt1 = 0;
 	u32 pd_idx = 0, pd_lmt = 0;
 	bool pd_error = false;
 	u32 sd_idx, sd_lmt;
+	int ret_code = 0;
 	u64 sd_size;
 	u32 i, j;
 
@@ -435,13 +435,13 @@ static i40e_status i40e_create_lan_hmc_object(struct i40e_hw *hw,
  * - This function will be called after i40e_init_lan_hmc() and before
  *   any LAN/FCoE HMC objects can be created.
  **/
-i40e_status i40e_configure_lan_hmc(struct i40e_hw *hw,
-					     enum i40e_hmc_model model)
+int i40e_configure_lan_hmc(struct i40e_hw *hw,
+			   enum i40e_hmc_model model)
 {
 	struct i40e_hmc_lan_create_obj_info info;
-	i40e_status ret_code = 0;
 	u8 hmc_fn_id = hw->hmc.hmc_fn_id;
 	struct i40e_hmc_obj_info *obj;
+	int ret_code = 0;
 
 	/* Initialize part of the create object info struct */
 	info.hmc_info = &hw->hmc;
@@ -520,13 +520,13 @@ i40e_status i40e_configure_lan_hmc(struct i40e_hw *hw,
  * caller should deallocate memory allocated previously for
  * book-keeping information about PDs and backing storage.
  **/
-static i40e_status i40e_delete_lan_hmc_object(struct i40e_hw *hw,
-				struct i40e_hmc_lan_delete_obj_info *info)
+static int i40e_delete_lan_hmc_object(struct i40e_hw *hw,
+				      struct i40e_hmc_lan_delete_obj_info *info)
 {
-	i40e_status ret_code = 0;
 	struct i40e_hmc_pd_table *pd_table;
 	u32 pd_idx, pd_lmt, rel_pd_idx;
 	u32 sd_idx, sd_lmt;
+	int ret_code = 0;
 	u32 i, j;
 
 	if (NULL == info) {
@@ -632,10 +632,10 @@ static i40e_status i40e_delete_lan_hmc_object(struct i40e_hw *hw,
  * This must be called by drivers as they are shutting down and being
  * removed from the OS.
  **/
-i40e_status i40e_shutdown_lan_hmc(struct i40e_hw *hw)
+int i40e_shutdown_lan_hmc(struct i40e_hw *hw)
 {
 	struct i40e_hmc_lan_delete_obj_info info;
-	i40e_status ret_code;
+	int ret_code;
 
 	info.hmc_info = &hw->hmc;
 	info.rsrc_type = I40E_HMC_LAN_FULL;
@@ -915,9 +915,9 @@ static void i40e_write_qword(u8 *hmc_bits,
  * @context_bytes: pointer to the context bit array (DMA memory)
  * @hmc_type: the type of HMC resource
  **/
-static i40e_status i40e_clear_hmc_context(struct i40e_hw *hw,
-					u8 *context_bytes,
-					enum i40e_hmc_lan_rsrc_type hmc_type)
+static int i40e_clear_hmc_context(struct i40e_hw *hw,
+				  u8 *context_bytes,
+				  enum i40e_hmc_lan_rsrc_type hmc_type)
 {
 	/* clean the bit array */
 	memset(context_bytes, 0, (u32)hw->hmc.hmc_obj[hmc_type].size);
@@ -931,9 +931,9 @@ static i40e_status i40e_clear_hmc_context(struct i40e_hw *hw,
  * @ce_info:  a description of the struct to be filled
  * @dest:     the struct to be filled
  **/
-static i40e_status i40e_set_hmc_context(u8 *context_bytes,
-					struct i40e_context_ele *ce_info,
-					u8 *dest)
+static int i40e_set_hmc_context(u8 *context_bytes,
+				struct i40e_context_ele *ce_info,
+				u8 *dest)
 {
 	int f;
 
@@ -973,18 +973,18 @@ static i40e_status i40e_set_hmc_context(u8 *context_bytes,
  * base pointer.  This function is used for LAN Queue contexts.
  **/
 static
-i40e_status i40e_hmc_get_object_va(struct i40e_hw *hw, u8 **object_base,
-				   enum i40e_hmc_lan_rsrc_type rsrc_type,
-				   u32 obj_idx)
+int i40e_hmc_get_object_va(struct i40e_hw *hw, u8 **object_base,
+			   enum i40e_hmc_lan_rsrc_type rsrc_type,
+			   u32 obj_idx)
 {
 	struct i40e_hmc_info *hmc_info = &hw->hmc;
 	u32 obj_offset_in_sd, obj_offset_in_pd;
 	struct i40e_hmc_sd_entry *sd_entry;
 	struct i40e_hmc_pd_entry *pd_entry;
 	u32 pd_idx, pd_lmt, rel_pd_idx;
-	i40e_status ret_code = 0;
 	u64 obj_offset_in_fpm;
 	u32 sd_idx, sd_lmt;
+	int ret_code = 0;
 
 	if (NULL == hmc_info) {
 		ret_code = I40E_ERR_BAD_PTR;
@@ -1042,11 +1042,11 @@ i40e_status i40e_hmc_get_object_va(struct i40e_hw *hw, u8 **object_base,
  * @hw:    the hardware struct
  * @queue: the queue we care about
  **/
-i40e_status i40e_clear_lan_tx_queue_context(struct i40e_hw *hw,
-						      u16 queue)
+int i40e_clear_lan_tx_queue_context(struct i40e_hw *hw,
+				    u16 queue)
 {
-	i40e_status err;
 	u8 *context_bytes;
+	int err;
 
 	err = i40e_hmc_get_object_va(hw, &context_bytes,
 				     I40E_HMC_LAN_TX, queue);
@@ -1062,12 +1062,12 @@ i40e_status i40e_clear_lan_tx_queue_context(struct i40e_hw *hw,
  * @queue: the queue we care about
  * @s:     the struct to be filled
  **/
-i40e_status i40e_set_lan_tx_queue_context(struct i40e_hw *hw,
-						    u16 queue,
-						    struct i40e_hmc_obj_txq *s)
+int i40e_set_lan_tx_queue_context(struct i40e_hw *hw,
+				  u16 queue,
+				  struct i40e_hmc_obj_txq *s)
 {
-	i40e_status err;
 	u8 *context_bytes;
+	int err;
 
 	err = i40e_hmc_get_object_va(hw, &context_bytes,
 				     I40E_HMC_LAN_TX, queue);
@@ -1083,11 +1083,11 @@ i40e_status i40e_set_lan_tx_queue_context(struct i40e_hw *hw,
  * @hw:    the hardware struct
  * @queue: the queue we care about
  **/
-i40e_status i40e_clear_lan_rx_queue_context(struct i40e_hw *hw,
-						      u16 queue)
+int i40e_clear_lan_rx_queue_context(struct i40e_hw *hw,
+				    u16 queue)
 {
-	i40e_status err;
 	u8 *context_bytes;
+	int err;
 
 	err = i40e_hmc_get_object_va(hw, &context_bytes,
 				     I40E_HMC_LAN_RX, queue);
@@ -1103,12 +1103,12 @@ i40e_status i40e_clear_lan_rx_queue_context(struct i40e_hw *hw,
  * @queue: the queue we care about
  * @s:     the struct to be filled
  **/
-i40e_status i40e_set_lan_rx_queue_context(struct i40e_hw *hw,
-						    u16 queue,
-						    struct i40e_hmc_obj_rxq *s)
+int i40e_set_lan_rx_queue_context(struct i40e_hw *hw,
+				  u16 queue,
+				  struct i40e_hmc_obj_rxq *s)
 {
-	i40e_status err;
 	u8 *context_bytes;
+	int err;
 
 	err = i40e_hmc_get_object_va(hw, &context_bytes,
 				     I40E_HMC_LAN_RX, queue);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.h b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.h
index c46a2c449e60..9f960404c2b3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.h
@@ -137,22 +137,22 @@ struct i40e_hmc_lan_delete_obj_info {
 	u32 count;
 };
 
-i40e_status i40e_init_lan_hmc(struct i40e_hw *hw, u32 txq_num,
-					u32 rxq_num, u32 fcoe_cntx_num,
-					u32 fcoe_filt_num);
-i40e_status i40e_configure_lan_hmc(struct i40e_hw *hw,
-					     enum i40e_hmc_model model);
-i40e_status i40e_shutdown_lan_hmc(struct i40e_hw *hw);
-
-i40e_status i40e_clear_lan_tx_queue_context(struct i40e_hw *hw,
-						      u16 queue);
-i40e_status i40e_set_lan_tx_queue_context(struct i40e_hw *hw,
-						    u16 queue,
-						    struct i40e_hmc_obj_txq *s);
-i40e_status i40e_clear_lan_rx_queue_context(struct i40e_hw *hw,
-						      u16 queue);
-i40e_status i40e_set_lan_rx_queue_context(struct i40e_hw *hw,
-						    u16 queue,
-						    struct i40e_hmc_obj_rxq *s);
+int i40e_init_lan_hmc(struct i40e_hw *hw, u32 txq_num,
+		      u32 rxq_num, u32 fcoe_cntx_num,
+		      u32 fcoe_filt_num);
+int i40e_configure_lan_hmc(struct i40e_hw *hw,
+			   enum i40e_hmc_model model);
+int i40e_shutdown_lan_hmc(struct i40e_hw *hw);
+
+int i40e_clear_lan_tx_queue_context(struct i40e_hw *hw,
+				    u16 queue);
+int i40e_set_lan_tx_queue_context(struct i40e_hw *hw,
+				  u16 queue,
+				  struct i40e_hmc_obj_txq *s);
+int i40e_clear_lan_rx_queue_context(struct i40e_hw *hw,
+				    u16 queue);
+int i40e_set_lan_rx_queue_context(struct i40e_hw *hw,
+				  u16 queue,
+				  struct i40e_hmc_obj_rxq *s);
 
 #endif /* _I40E_LAN_HMC_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 023e4705a7ee..0ac7f7de99ca 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1817,7 +1817,7 @@ static int i40e_set_mac(struct net_device *netdev, void *p)
 	spin_unlock_bh(&vsi->mac_filter_hash_lock);
 
 	if (vsi->type == I40E_VSI_MAIN) {
-		i40e_status ret;
+		int ret;
 
 		ret = i40e_aq_mac_address_write(hw, I40E_AQC_WRITE_TYPE_LAA_WOL,
 						addr->sa_data, NULL);
@@ -2349,7 +2349,7 @@ void i40e_aqc_del_filters(struct i40e_vsi *vsi, const char *vsi_name,
 {
 	struct i40e_hw *hw = &vsi->back->hw;
 	enum i40e_admin_queue_err aq_status;
-	i40e_status aq_ret;
+	int aq_ret;
 
 	aq_ret = i40e_aq_remove_macvlan_v2(hw, vsi->seid, list, num_del, NULL,
 					   &aq_status);
@@ -2423,13 +2423,13 @@ void i40e_aqc_add_filters(struct i40e_vsi *vsi, const char *vsi_name,
  *
  * Returns status indicating success or failure;
  **/
-static i40e_status
+static int
 i40e_aqc_broadcast_filter(struct i40e_vsi *vsi, const char *vsi_name,
 			  struct i40e_mac_filter *f)
 {
 	bool enable = f->state == I40E_FILTER_NEW;
 	struct i40e_hw *hw = &vsi->back->hw;
-	i40e_status aq_ret;
+	int aq_ret;
 
 	if (f->vlan == I40E_VLAN_ANY) {
 		aq_ret = i40e_aq_set_vsi_broadcast(hw,
@@ -2468,7 +2468,7 @@ static int i40e_set_promiscuous(struct i40e_pf *pf, bool promisc)
 {
 	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 	struct i40e_hw *hw = &pf->hw;
-	i40e_status aq_ret;
+	int aq_ret;
 
 	if (vsi->type == I40E_VSI_MAIN &&
 	    pf->lan_veb != I40E_NO_VEB &&
@@ -2541,12 +2541,12 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
 	unsigned int vlan_filters = 0;
 	char vsi_name[16] = "PF";
 	int filter_list_len = 0;
-	i40e_status aq_ret = 0;
 	u32 changed_flags = 0;
 	struct hlist_node *h;
 	struct i40e_pf *pf;
 	int num_add = 0;
 	int num_del = 0;
+	int aq_ret = 0;
 	int retval = 0;
 	u16 cmd_flags;
 	int list_size;
@@ -2965,7 +2965,7 @@ int i40e_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
 void i40e_vlan_stripping_enable(struct i40e_vsi *vsi)
 {
 	struct i40e_vsi_context ctxt;
-	i40e_status ret;
+	int ret;
 
 	/* Don't modify stripping options if a port VLAN is active */
 	if (vsi->info.pvid)
@@ -2999,7 +2999,7 @@ void i40e_vlan_stripping_enable(struct i40e_vsi *vsi)
 void i40e_vlan_stripping_disable(struct i40e_vsi *vsi)
 {
 	struct i40e_vsi_context ctxt;
-	i40e_status ret;
+	int ret;
 
 	/* Don't modify stripping options if a port VLAN is active */
 	if (vsi->info.pvid)
@@ -3252,7 +3252,7 @@ static void i40e_restore_vlan(struct i40e_vsi *vsi)
 int i40e_vsi_add_pvid(struct i40e_vsi *vsi, u16 vid)
 {
 	struct i40e_vsi_context ctxt;
-	i40e_status ret;
+	int ret;
 
 	vsi->info.valid_sections = cpu_to_le16(I40E_AQ_VSI_PROP_VLAN_VALID);
 	vsi->info.pvid = cpu_to_le16(vid);
@@ -3429,8 +3429,8 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
 	u16 pf_q = vsi->base_queue + ring->queue_index;
 	struct i40e_hw *hw = &vsi->back->hw;
 	struct i40e_hmc_obj_txq tx_ctx;
-	i40e_status err = 0;
 	u32 qtx_ctl = 0;
+	int err = 0;
 
 	if (ring_is_xdp(ring))
 		ring->xsk_pool = i40e_xsk_pool(ring);
@@ -3554,8 +3554,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 	u16 pf_q = vsi->base_queue + ring->queue_index;
 	struct i40e_hw *hw = &vsi->back->hw;
 	struct i40e_hmc_obj_rxq rx_ctx;
-	i40e_status err = 0;
 	bool ok = true;
+	int err = 0;
 	int ret;
 
 	bitmap_zero(ring->state, __I40E_RING_STATE_NBITS);
@@ -5533,8 +5533,8 @@ static int i40e_vsi_get_bw_info(struct i40e_vsi *vsi)
 	struct i40e_aqc_query_vsi_bw_config_resp bw_config = {0};
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
-	i40e_status ret;
 	u32 tc_bw_max;
+	int ret;
 	int i;
 
 	/* Get the VSI level BW configuration */
@@ -5594,7 +5594,7 @@ static int i40e_vsi_configure_bw_alloc(struct i40e_vsi *vsi, u8 enabled_tc,
 {
 	struct i40e_aqc_configure_vsi_tc_bw_data bw_data;
 	struct i40e_pf *pf = vsi->back;
-	i40e_status ret;
+	int ret;
 	int i;
 
 	/* There is no need to reset BW when mqprio mode is on.  */
@@ -6312,7 +6312,7 @@ static int i40e_channel_config_bw(struct i40e_vsi *vsi, struct i40e_channel *ch,
 				  u8 *bw_share)
 {
 	struct i40e_aqc_configure_vsi_tc_bw_data bw_data;
-	i40e_status ret;
+	int ret;
 	int i;
 
 	memset(&bw_data, 0, sizeof(bw_data));
@@ -6348,9 +6348,9 @@ static int i40e_channel_config_tx_ring(struct i40e_pf *pf,
 				       struct i40e_vsi *vsi,
 				       struct i40e_channel *ch)
 {
-	i40e_status ret;
-	int i;
 	u8 bw_share[I40E_MAX_TRAFFIC_CLASS] = {0};
+	int ret;
+	int i;
 
 	/* Enable ETS TCs with equal BW Share for now across all VSIs */
 	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
@@ -7424,15 +7424,15 @@ static void i40e_vsi_reinit_locked(struct i40e_vsi *vsi)
  * @pf: board private structure
  * @is_up: whether the link state should be forced up or down
  **/
-static i40e_status i40e_force_link_state(struct i40e_pf *pf, bool is_up)
+static int i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 {
 	struct i40e_aq_get_phy_abilities_resp abilities;
 	struct i40e_aq_set_phy_config config = {0};
 	bool non_zero_phy_type = is_up;
 	struct i40e_hw *hw = &pf->hw;
-	i40e_status err;
 	u64 mask;
 	u8 speed;
+	int err;
 
 	/* Card might've been put in an unstable state by other drivers
 	 * and applications, which causes incorrect speed values being
@@ -7665,11 +7665,11 @@ static void i40e_vsi_set_default_tc_config(struct i40e_vsi *vsi)
  * This function deletes a mac filter on the channel VSI which serves as the
  * macvlan. Returns 0 on success.
  **/
-static i40e_status i40e_del_macvlan_filter(struct i40e_hw *hw, u16 seid,
-					   const u8 *macaddr, int *aq_err)
+static int i40e_del_macvlan_filter(struct i40e_hw *hw, u16 seid,
+				   const u8 *macaddr, int *aq_err)
 {
 	struct i40e_aqc_remove_macvlan_element_data element;
-	i40e_status status;
+	int status;
 
 	memset(&element, 0, sizeof(element));
 	ether_addr_copy(element.mac_addr, macaddr);
@@ -7691,12 +7691,12 @@ static i40e_status i40e_del_macvlan_filter(struct i40e_hw *hw, u16 seid,
  * This function adds a mac filter on the channel VSI which serves as the
  * macvlan. Returns 0 on success.
  **/
-static i40e_status i40e_add_macvlan_filter(struct i40e_hw *hw, u16 seid,
-					   const u8 *macaddr, int *aq_err)
+static int i40e_add_macvlan_filter(struct i40e_hw *hw, u16 seid,
+				   const u8 *macaddr, int *aq_err)
 {
 	struct i40e_aqc_add_macvlan_element_data element;
-	i40e_status status;
 	u16 cmd_flags = 0;
+	int status;
 
 	ether_addr_copy(element.mac_addr, macaddr);
 	element.vlan_tag = 0;
@@ -9894,8 +9894,8 @@ static void i40e_link_event(struct i40e_pf *pf)
 {
 	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 	u8 new_link_speed, old_link_speed;
-	i40e_status status;
 	bool new_link, old_link;
+	int status;
 #ifdef CONFIG_I40E_DCB
 	int err;
 #endif /* CONFIG_I40E_DCB */
@@ -10106,9 +10106,9 @@ static void i40e_clean_adminq_subtask(struct i40e_pf *pf)
 	struct i40e_arq_event_info event;
 	struct i40e_hw *hw = &pf->hw;
 	u16 pending, i = 0;
-	i40e_status ret;
 	u16 opcode;
 	u32 oldval;
+	int ret;
 	u32 val;
 
 	/* Do not run clean AQ when PF reset fails */
@@ -10587,7 +10587,7 @@ static int i40e_rebuild_cloud_filters(struct i40e_vsi *vsi, u16 seid)
 	struct i40e_cloud_filter *cfilter;
 	struct i40e_pf *pf = vsi->back;
 	struct hlist_node *node;
-	i40e_status ret;
+	int ret;
 
 	/* Add cloud filters back if they exist */
 	hlist_for_each_entry_safe(cfilter, node, &pf->cloud_filter_list,
@@ -10622,7 +10622,7 @@ static int i40e_rebuild_cloud_filters(struct i40e_vsi *vsi, u16 seid)
 static int i40e_rebuild_channels(struct i40e_vsi *vsi)
 {
 	struct i40e_channel *ch, *ch_tmp;
-	i40e_status ret;
+	int ret;
 
 	if (list_empty(&vsi->ch_list))
 		return 0;
@@ -10698,7 +10698,7 @@ static void i40e_clean_xps_state(struct i40e_vsi *vsi)
 static void i40e_prep_for_reset(struct i40e_pf *pf)
 {
 	struct i40e_hw *hw = &pf->hw;
-	i40e_status ret = 0;
+	int ret = 0;
 	u32 v;
 
 	clear_bit(__I40E_RESET_INTR_RECEIVED, pf->state);
@@ -10803,7 +10803,7 @@ static void i40e_get_oem_version(struct i40e_hw *hw)
 static int i40e_reset(struct i40e_pf *pf)
 {
 	struct i40e_hw *hw = &pf->hw;
-	i40e_status ret;
+	int ret;
 
 	ret = i40e_pf_reset(hw);
 	if (ret) {
@@ -10828,7 +10828,7 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	const bool is_recovery_mode_reported = i40e_check_recovery_mode(pf);
 	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 	struct i40e_hw *hw = &pf->hw;
-	i40e_status ret;
+	int ret;
 	u32 val;
 	int v;
 
@@ -12515,11 +12515,11 @@ int i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count)
  * i40e_get_partition_bw_setting - Retrieve BW settings for this PF partition
  * @pf: board private structure
  **/
-i40e_status i40e_get_partition_bw_setting(struct i40e_pf *pf)
+int i40e_get_partition_bw_setting(struct i40e_pf *pf)
 {
-	i40e_status status;
 	bool min_valid, max_valid;
 	u32 max_bw, min_bw;
+	int status;
 
 	status = i40e_read_bw_from_alt_ram(&pf->hw, &max_bw, &min_bw,
 					   &min_valid, &max_valid);
@@ -12538,10 +12538,10 @@ i40e_status i40e_get_partition_bw_setting(struct i40e_pf *pf)
  * i40e_set_partition_bw_setting - Set BW settings for this PF partition
  * @pf: board private structure
  **/
-i40e_status i40e_set_partition_bw_setting(struct i40e_pf *pf)
+int i40e_set_partition_bw_setting(struct i40e_pf *pf)
 {
 	struct i40e_aqc_configure_partition_bw_data bw_data;
-	i40e_status status;
+	int status;
 
 	memset(&bw_data, 0, sizeof(bw_data));
 
@@ -12560,12 +12560,12 @@ i40e_status i40e_set_partition_bw_setting(struct i40e_pf *pf)
  * i40e_commit_partition_bw_setting - Commit BW settings for this PF partition
  * @pf: board private structure
  **/
-i40e_status i40e_commit_partition_bw_setting(struct i40e_pf *pf)
+int i40e_commit_partition_bw_setting(struct i40e_pf *pf)
 {
 	/* Commit temporary BW setting to permanent NVM image */
 	enum i40e_admin_queue_err last_aq_status;
-	i40e_status ret;
 	u16 nvm_word;
+	int ret;
 
 	if (pf->hw.partition_id != 1) {
 		dev_info(&pf->pdev->dev,
@@ -12653,7 +12653,7 @@ static bool i40e_is_total_port_shutdown_enabled(struct i40e_pf *pf)
 #define I40E_LINK_BEHAVIOR_WORD_LENGTH		0x1
 #define I40E_LINK_BEHAVIOR_OS_FORCED_ENABLED	BIT(0)
 #define I40E_LINK_BEHAVIOR_PORT_BIT_LENGTH	4
-	i40e_status read_status = I40E_SUCCESS;
+	int read_status = I40E_SUCCESS;
 	u16 sr_emp_sr_settings_ptr = 0;
 	u16 features_enable = 0;
 	u16 link_behavior = 0;
@@ -13032,7 +13032,7 @@ static int i40e_udp_tunnel_set_port(struct net_device *netdev,
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_hw *hw = &np->vsi->back->hw;
 	u8 type, filter_index;
-	i40e_status ret;
+	int ret;
 
 	type = ti->type == UDP_TUNNEL_TYPE_VXLAN ? I40E_AQC_TUNNEL_TYPE_VXLAN :
 						   I40E_AQC_TUNNEL_TYPE_NGE;
@@ -13056,7 +13056,7 @@ static int i40e_udp_tunnel_unset_port(struct net_device *netdev,
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_hw *hw = &np->vsi->back->hw;
-	i40e_status ret;
+	int ret;
 
 	ret = i40e_aq_del_udp_tunnel(hw, ti->hw_priv, NULL);
 	if (ret) {
@@ -15444,13 +15444,12 @@ static bool i40e_check_recovery_mode(struct i40e_pf *pf)
  *
  * Return 0 on success, negative on failure.
  **/
-static i40e_status i40e_pf_loop_reset(struct i40e_pf *pf)
+static int i40e_pf_loop_reset(struct i40e_pf *pf)
 {
 	/* wait max 10 seconds for PF reset to succeed */
 	const unsigned long time_end = jiffies + 10 * HZ;
-
 	struct i40e_hw *hw = &pf->hw;
-	i40e_status ret;
+	int ret;
 
 	ret = i40e_pf_reset(hw);
 	while (ret != I40E_SUCCESS && time_before(jiffies, time_end)) {
@@ -15496,9 +15495,9 @@ static bool i40e_check_fw_empr(struct i40e_pf *pf)
  * Return 0 if NIC is healthy or negative value when there are issues
  * with resets
  **/
-static i40e_status i40e_handle_resets(struct i40e_pf *pf)
+static int i40e_handle_resets(struct i40e_pf *pf)
 {
-	const i40e_status pfr = i40e_pf_loop_reset(pf);
+	const int pfr = i40e_pf_loop_reset(pf);
 	const bool is_empr = i40e_check_fw_empr(pf);
 
 	if (is_empr || pfr != I40E_SUCCESS)
@@ -15636,7 +15635,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	struct i40e_aq_get_phy_abilities_resp abilities;
 #ifdef CONFIG_I40E_DCB
 	enum i40e_get_fw_lldp_status_resp lldp_status;
-	i40e_status status;
+	int status;
 #endif /* CONFIG_I40E_DCB */
 	struct i40e_pf *pf;
 	struct i40e_hw *hw;
@@ -16246,7 +16245,7 @@ static void i40e_remove(struct pci_dev *pdev)
 {
 	struct i40e_pf *pf = pci_get_drvdata(pdev);
 	struct i40e_hw *hw = &pf->hw;
-	i40e_status ret_code;
+	int ret_code;
 	int i;
 
 	i40e_dbg_pf_exit(pf);
@@ -16494,9 +16493,9 @@ static void i40e_pci_error_resume(struct pci_dev *pdev)
 static void i40e_enable_mc_magic_wake(struct i40e_pf *pf)
 {
 	struct i40e_hw *hw = &pf->hw;
-	i40e_status ret;
 	u8 mac_addr[6];
 	u16 flags = 0;
+	int ret;
 
 	/* Get current MAC address in case it's an LAA */
 	if (pf->vsi[pf->lan_vsi] && pf->vsi[pf->lan_vsi]->netdev) {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index c24348afc2f5..17e3f26eee4a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -13,10 +13,10 @@
  * in this file) as an equivalent of the FLASH part mapped into the SR.
  * We are accessing FLASH always thru the Shadow RAM.
  **/
-i40e_status i40e_init_nvm(struct i40e_hw *hw)
+int i40e_init_nvm(struct i40e_hw *hw)
 {
 	struct i40e_nvm_info *nvm = &hw->nvm;
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 	u32 fla, gens;
 	u8 sr_size;
 
@@ -52,12 +52,12 @@ i40e_status i40e_init_nvm(struct i40e_hw *hw)
  * This function will request NVM ownership for reading
  * via the proper Admin Command.
  **/
-i40e_status i40e_acquire_nvm(struct i40e_hw *hw,
-				       enum i40e_aq_resource_access_type access)
+int i40e_acquire_nvm(struct i40e_hw *hw,
+		     enum i40e_aq_resource_access_type access)
 {
-	i40e_status ret_code = 0;
 	u64 gtime, timeout;
 	u64 time_left = 0;
+	int ret_code = 0;
 
 	if (hw->nvm.blank_nvm_mode)
 		goto i40e_i40e_acquire_nvm_exit;
@@ -111,7 +111,7 @@ i40e_status i40e_acquire_nvm(struct i40e_hw *hw,
  **/
 void i40e_release_nvm(struct i40e_hw *hw)
 {
-	i40e_status ret_code = I40E_SUCCESS;
+	int ret_code = I40E_SUCCESS;
 	u32 total_delay = 0;
 
 	if (hw->nvm.blank_nvm_mode)
@@ -138,9 +138,9 @@ void i40e_release_nvm(struct i40e_hw *hw)
  *
  * Polls the SRCTL Shadow RAM register done bit.
  **/
-static i40e_status i40e_poll_sr_srctl_done_bit(struct i40e_hw *hw)
+static int i40e_poll_sr_srctl_done_bit(struct i40e_hw *hw)
 {
-	i40e_status ret_code = I40E_ERR_TIMEOUT;
+	int ret_code = I40E_ERR_TIMEOUT;
 	u32 srctl, wait_cnt;
 
 	/* Poll the I40E_GLNVM_SRCTL until the done bit is set */
@@ -165,10 +165,10 @@ static i40e_status i40e_poll_sr_srctl_done_bit(struct i40e_hw *hw)
  *
  * Reads one 16 bit word from the Shadow RAM using the GLNVM_SRCTL register.
  **/
-static i40e_status i40e_read_nvm_word_srctl(struct i40e_hw *hw, u16 offset,
-					    u16 *data)
+static int i40e_read_nvm_word_srctl(struct i40e_hw *hw, u16 offset,
+				    u16 *data)
 {
-	i40e_status ret_code = I40E_ERR_TIMEOUT;
+	int ret_code = I40E_ERR_TIMEOUT;
 	u32 sr_reg;
 
 	if (offset >= hw->nvm.sr_size) {
@@ -216,13 +216,13 @@ static i40e_status i40e_read_nvm_word_srctl(struct i40e_hw *hw, u16 offset,
  *
  * Writes a 16 bit words buffer to the Shadow RAM using the admin command.
  **/
-static i40e_status i40e_read_nvm_aq(struct i40e_hw *hw,
-				    u8 module_pointer, u32 offset,
-				    u16 words, void *data,
-				    bool last_command)
+static int i40e_read_nvm_aq(struct i40e_hw *hw,
+			    u8 module_pointer, u32 offset,
+			    u16 words, void *data,
+			    bool last_command)
 {
-	i40e_status ret_code = I40E_ERR_NVM;
 	struct i40e_asq_cmd_details cmd_details;
+	int ret_code = I40E_ERR_NVM;
 
 	memset(&cmd_details, 0, sizeof(cmd_details));
 	cmd_details.wb_desc = &hw->nvm_wb_desc;
@@ -264,10 +264,10 @@ static i40e_status i40e_read_nvm_aq(struct i40e_hw *hw,
  *
  * Reads one 16 bit word from the Shadow RAM using the AdminQ
  **/
-static i40e_status i40e_read_nvm_word_aq(struct i40e_hw *hw, u16 offset,
-					 u16 *data)
+static int i40e_read_nvm_word_aq(struct i40e_hw *hw, u16 offset,
+				 u16 *data)
 {
-	i40e_status ret_code = I40E_ERR_TIMEOUT;
+	int ret_code = I40E_ERR_TIMEOUT;
 
 	ret_code = i40e_read_nvm_aq(hw, 0x0, offset, 1, data, true);
 	*data = le16_to_cpu(*(__le16 *)data);
@@ -286,8 +286,8 @@ static i40e_status i40e_read_nvm_word_aq(struct i40e_hw *hw, u16 offset,
  * Do not use this function except in cases where the nvm lock is already
  * taken via i40e_acquire_nvm().
  **/
-static i40e_status __i40e_read_nvm_word(struct i40e_hw *hw,
-					u16 offset, u16 *data)
+static int __i40e_read_nvm_word(struct i40e_hw *hw,
+				u16 offset, u16 *data)
 {
 	if (hw->flags & I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE)
 		return i40e_read_nvm_word_aq(hw, offset, data);
@@ -303,10 +303,10 @@ static i40e_status __i40e_read_nvm_word(struct i40e_hw *hw,
  *
  * Reads one 16 bit word from the Shadow RAM.
  **/
-i40e_status i40e_read_nvm_word(struct i40e_hw *hw, u16 offset,
-			       u16 *data)
+int i40e_read_nvm_word(struct i40e_hw *hw, u16 offset,
+		       u16 *data)
 {
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 
 	if (hw->flags & I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK)
 		ret_code = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
@@ -330,17 +330,17 @@ i40e_status i40e_read_nvm_word(struct i40e_hw *hw, u16 offset,
  * @words_data_size: Words to read from NVM
  * @data_ptr: Pointer to memory location where resulting buffer will be stored
  **/
-enum i40e_status_code i40e_read_nvm_module_data(struct i40e_hw *hw,
-						u8 module_ptr,
-						u16 module_offset,
-						u16 data_offset,
-						u16 words_data_size,
-						u16 *data_ptr)
+int i40e_read_nvm_module_data(struct i40e_hw *hw,
+			      u8 module_ptr,
+			      u16 module_offset,
+			      u16 data_offset,
+			      u16 words_data_size,
+			      u16 *data_ptr)
 {
-	i40e_status status;
 	u16 specific_ptr = 0;
 	u16 ptr_value = 0;
 	u32 offset = 0;
+	int status;
 
 	if (module_ptr != 0) {
 		status = i40e_read_nvm_word(hw, module_ptr, &ptr_value);
@@ -406,10 +406,10 @@ enum i40e_status_code i40e_read_nvm_module_data(struct i40e_hw *hw,
  * method. The buffer read is preceded by the NVM ownership take
  * and followed by the release.
  **/
-static i40e_status i40e_read_nvm_buffer_srctl(struct i40e_hw *hw, u16 offset,
-					      u16 *words, u16 *data)
+static int i40e_read_nvm_buffer_srctl(struct i40e_hw *hw, u16 offset,
+				      u16 *words, u16 *data)
 {
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 	u16 index, word;
 
 	/* Loop thru the selected region */
@@ -437,13 +437,13 @@ static i40e_status i40e_read_nvm_buffer_srctl(struct i40e_hw *hw, u16 offset,
  * method. The buffer read is preceded by the NVM ownership take
  * and followed by the release.
  **/
-static i40e_status i40e_read_nvm_buffer_aq(struct i40e_hw *hw, u16 offset,
-					   u16 *words, u16 *data)
+static int i40e_read_nvm_buffer_aq(struct i40e_hw *hw, u16 offset,
+				   u16 *words, u16 *data)
 {
-	i40e_status ret_code;
-	u16 read_size;
 	bool last_cmd = false;
 	u16 words_read = 0;
+	u16 read_size;
+	int ret_code;
 	u16 i = 0;
 
 	do {
@@ -493,9 +493,9 @@ static i40e_status i40e_read_nvm_buffer_aq(struct i40e_hw *hw, u16 offset,
  * Reads 16 bit words (data buffer) from the SR using the i40e_read_nvm_srrd()
  * method.
  **/
-static i40e_status __i40e_read_nvm_buffer(struct i40e_hw *hw,
-					  u16 offset, u16 *words,
-					  u16 *data)
+static int __i40e_read_nvm_buffer(struct i40e_hw *hw,
+				  u16 offset, u16 *words,
+				  u16 *data)
 {
 	if (hw->flags & I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE)
 		return i40e_read_nvm_buffer_aq(hw, offset, words, data);
@@ -514,10 +514,10 @@ static i40e_status __i40e_read_nvm_buffer(struct i40e_hw *hw,
  * method. The buffer read is preceded by the NVM ownership take
  * and followed by the release.
  **/
-i40e_status i40e_read_nvm_buffer(struct i40e_hw *hw, u16 offset,
-				 u16 *words, u16 *data)
+int i40e_read_nvm_buffer(struct i40e_hw *hw, u16 offset,
+			 u16 *words, u16 *data)
 {
-	i40e_status ret_code = 0;
+	int ret_code = 0;
 
 	if (hw->flags & I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE) {
 		ret_code = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
@@ -544,12 +544,12 @@ i40e_status i40e_read_nvm_buffer(struct i40e_hw *hw, u16 offset,
  *
  * Writes a 16 bit words buffer to the Shadow RAM using the admin command.
  **/
-static i40e_status i40e_write_nvm_aq(struct i40e_hw *hw, u8 module_pointer,
-				     u32 offset, u16 words, void *data,
-				     bool last_command)
+static int i40e_write_nvm_aq(struct i40e_hw *hw, u8 module_pointer,
+			     u32 offset, u16 words, void *data,
+			     bool last_command)
 {
-	i40e_status ret_code = I40E_ERR_NVM;
 	struct i40e_asq_cmd_details cmd_details;
+	int ret_code = I40E_ERR_NVM;
 
 	memset(&cmd_details, 0, sizeof(cmd_details));
 	cmd_details.wb_desc = &hw->nvm_wb_desc;
@@ -594,14 +594,14 @@ static i40e_status i40e_write_nvm_aq(struct i40e_hw *hw, u8 module_pointer,
  * is customer specific and unknown. Therefore, this function skips all maximum
  * possible size of VPD (1kB).
  **/
-static i40e_status i40e_calc_nvm_checksum(struct i40e_hw *hw,
-						    u16 *checksum)
+static int i40e_calc_nvm_checksum(struct i40e_hw *hw,
+				  u16 *checksum)
 {
-	i40e_status ret_code;
 	struct i40e_virt_mem vmem;
 	u16 pcie_alt_module = 0;
 	u16 checksum_local = 0;
 	u16 vpd_module = 0;
+	int ret_code;
 	u16 *data;
 	u16 i = 0;
 
@@ -675,11 +675,11 @@ static i40e_status i40e_calc_nvm_checksum(struct i40e_hw *hw,
  * on ARQ completion event reception by caller.
  * This function will commit SR to NVM.
  **/
-i40e_status i40e_update_nvm_checksum(struct i40e_hw *hw)
+int i40e_update_nvm_checksum(struct i40e_hw *hw)
 {
-	i40e_status ret_code;
-	u16 checksum;
 	__le16 le_sum;
+	int ret_code;
+	u16 checksum;
 
 	ret_code = i40e_calc_nvm_checksum(hw, &checksum);
 	if (!ret_code) {
@@ -699,12 +699,12 @@ i40e_status i40e_update_nvm_checksum(struct i40e_hw *hw)
  * Performs checksum calculation and validates the NVM SW checksum. If the
  * caller does not need checksum, the value can be NULL.
  **/
-i40e_status i40e_validate_nvm_checksum(struct i40e_hw *hw,
-						 u16 *checksum)
+int i40e_validate_nvm_checksum(struct i40e_hw *hw,
+			       u16 *checksum)
 {
-	i40e_status ret_code = 0;
-	u16 checksum_sr = 0;
 	u16 checksum_local = 0;
+	u16 checksum_sr = 0;
+	int ret_code = 0;
 
 	/* We must acquire the NVM lock in order to correctly synchronize the
 	 * NVM accesses across multiple PFs. Without doing so it is possible
@@ -733,36 +733,36 @@ i40e_status i40e_validate_nvm_checksum(struct i40e_hw *hw,
 	return ret_code;
 }
 
-static i40e_status i40e_nvmupd_state_init(struct i40e_hw *hw,
-					  struct i40e_nvm_access *cmd,
-					  u8 *bytes, int *perrno);
-static i40e_status i40e_nvmupd_state_reading(struct i40e_hw *hw,
-					     struct i40e_nvm_access *cmd,
-					     u8 *bytes, int *perrno);
-static i40e_status i40e_nvmupd_state_writing(struct i40e_hw *hw,
-					     struct i40e_nvm_access *cmd,
-					     u8 *bytes, int *errno);
+static int i40e_nvmupd_state_init(struct i40e_hw *hw,
+				  struct i40e_nvm_access *cmd,
+				  u8 *bytes, int *perrno);
+static int i40e_nvmupd_state_reading(struct i40e_hw *hw,
+				     struct i40e_nvm_access *cmd,
+				     u8 *bytes, int *perrno);
+static int i40e_nvmupd_state_writing(struct i40e_hw *hw,
+				     struct i40e_nvm_access *cmd,
+				     u8 *bytes, int *errno);
 static enum i40e_nvmupd_cmd i40e_nvmupd_validate_command(struct i40e_hw *hw,
 						struct i40e_nvm_access *cmd,
 						int *perrno);
-static i40e_status i40e_nvmupd_nvm_erase(struct i40e_hw *hw,
-					 struct i40e_nvm_access *cmd,
-					 int *perrno);
-static i40e_status i40e_nvmupd_nvm_write(struct i40e_hw *hw,
-					 struct i40e_nvm_access *cmd,
-					 u8 *bytes, int *perrno);
-static i40e_status i40e_nvmupd_nvm_read(struct i40e_hw *hw,
-					struct i40e_nvm_access *cmd,
-					u8 *bytes, int *perrno);
-static i40e_status i40e_nvmupd_exec_aq(struct i40e_hw *hw,
-				       struct i40e_nvm_access *cmd,
-				       u8 *bytes, int *perrno);
-static i40e_status i40e_nvmupd_get_aq_result(struct i40e_hw *hw,
-					     struct i40e_nvm_access *cmd,
-					     u8 *bytes, int *perrno);
-static i40e_status i40e_nvmupd_get_aq_event(struct i40e_hw *hw,
-					    struct i40e_nvm_access *cmd,
-					    u8 *bytes, int *perrno);
+static int i40e_nvmupd_nvm_erase(struct i40e_hw *hw,
+				 struct i40e_nvm_access *cmd,
+				 int *perrno);
+static int i40e_nvmupd_nvm_write(struct i40e_hw *hw,
+				 struct i40e_nvm_access *cmd,
+				 u8 *bytes, int *perrno);
+static int i40e_nvmupd_nvm_read(struct i40e_hw *hw,
+				struct i40e_nvm_access *cmd,
+				u8 *bytes, int *perrno);
+static int i40e_nvmupd_exec_aq(struct i40e_hw *hw,
+			       struct i40e_nvm_access *cmd,
+			       u8 *bytes, int *perrno);
+static int i40e_nvmupd_get_aq_result(struct i40e_hw *hw,
+				     struct i40e_nvm_access *cmd,
+				     u8 *bytes, int *perrno);
+static int i40e_nvmupd_get_aq_event(struct i40e_hw *hw,
+				    struct i40e_nvm_access *cmd,
+				    u8 *bytes, int *perrno);
 static inline u8 i40e_nvmupd_get_module(u32 val)
 {
 	return (u8)(val & I40E_NVM_MOD_PNT_MASK);
@@ -807,12 +807,12 @@ static const char * const i40e_nvm_update_state_str[] = {
  *
  * Dispatches command depending on what update state is current
  **/
-i40e_status i40e_nvmupd_command(struct i40e_hw *hw,
-				struct i40e_nvm_access *cmd,
-				u8 *bytes, int *perrno)
+int i40e_nvmupd_command(struct i40e_hw *hw,
+			struct i40e_nvm_access *cmd,
+			u8 *bytes, int *perrno)
 {
-	i40e_status status;
 	enum i40e_nvmupd_cmd upd_cmd;
+	int status;
 
 	/* assume success */
 	*perrno = 0;
@@ -923,12 +923,12 @@ i40e_status i40e_nvmupd_command(struct i40e_hw *hw,
  * Process legitimate commands of the Init state and conditionally set next
  * state. Reject all other commands.
  **/
-static i40e_status i40e_nvmupd_state_init(struct i40e_hw *hw,
-					  struct i40e_nvm_access *cmd,
-					  u8 *bytes, int *perrno)
+static int i40e_nvmupd_state_init(struct i40e_hw *hw,
+				  struct i40e_nvm_access *cmd,
+				  u8 *bytes, int *perrno)
 {
-	i40e_status status = 0;
 	enum i40e_nvmupd_cmd upd_cmd;
+	int status = 0;
 
 	upd_cmd = i40e_nvmupd_validate_command(hw, cmd, perrno);
 
@@ -1062,12 +1062,12 @@ static i40e_status i40e_nvmupd_state_init(struct i40e_hw *hw,
  * NVM ownership is already held.  Process legitimate commands and set any
  * change in state; reject all other commands.
  **/
-static i40e_status i40e_nvmupd_state_reading(struct i40e_hw *hw,
-					     struct i40e_nvm_access *cmd,
-					     u8 *bytes, int *perrno)
+static int i40e_nvmupd_state_reading(struct i40e_hw *hw,
+				     struct i40e_nvm_access *cmd,
+				     u8 *bytes, int *perrno)
 {
-	i40e_status status = 0;
 	enum i40e_nvmupd_cmd upd_cmd;
+	int status = 0;
 
 	upd_cmd = i40e_nvmupd_validate_command(hw, cmd, perrno);
 
@@ -1104,13 +1104,13 @@ static i40e_status i40e_nvmupd_state_reading(struct i40e_hw *hw,
  * NVM ownership is already held.  Process legitimate commands and set any
  * change in state; reject all other commands
  **/
-static i40e_status i40e_nvmupd_state_writing(struct i40e_hw *hw,
-					     struct i40e_nvm_access *cmd,
-					     u8 *bytes, int *perrno)
+static int i40e_nvmupd_state_writing(struct i40e_hw *hw,
+				     struct i40e_nvm_access *cmd,
+				     u8 *bytes, int *perrno)
 {
-	i40e_status status = 0;
 	enum i40e_nvmupd_cmd upd_cmd;
 	bool retry_attempt = false;
+	int status = 0;
 
 	upd_cmd = i40e_nvmupd_validate_command(hw, cmd, perrno);
 
@@ -1187,8 +1187,8 @@ static i40e_status i40e_nvmupd_state_writing(struct i40e_hw *hw,
 	 */
 	if (status && (hw->aq.asq_last_status == I40E_AQ_RC_EBUSY) &&
 	    !retry_attempt) {
-		i40e_status old_status = status;
 		u32 old_asq_status = hw->aq.asq_last_status;
+		int old_status = status;
 		u32 gtime;
 
 		gtime = rd32(hw, I40E_GLVFGEN_TIMER);
@@ -1370,17 +1370,17 @@ static enum i40e_nvmupd_cmd i40e_nvmupd_validate_command(struct i40e_hw *hw,
  *
  * cmd structure contains identifiers and data buffer
  **/
-static i40e_status i40e_nvmupd_exec_aq(struct i40e_hw *hw,
-				       struct i40e_nvm_access *cmd,
-				       u8 *bytes, int *perrno)
+static int i40e_nvmupd_exec_aq(struct i40e_hw *hw,
+			       struct i40e_nvm_access *cmd,
+			       u8 *bytes, int *perrno)
 {
 	struct i40e_asq_cmd_details cmd_details;
-	i40e_status status;
 	struct i40e_aq_desc *aq_desc;
 	u32 buff_size = 0;
 	u8 *buff = NULL;
 	u32 aq_desc_len;
 	u32 aq_data_len;
+	int status;
 
 	i40e_debug(hw, I40E_DEBUG_NVM, "NVMUPD: %s\n", __func__);
 	if (cmd->offset == 0xffff)
@@ -1454,9 +1454,9 @@ static i40e_status i40e_nvmupd_exec_aq(struct i40e_hw *hw,
  *
  * cmd structure contains identifiers and data buffer
  **/
-static i40e_status i40e_nvmupd_get_aq_result(struct i40e_hw *hw,
-					     struct i40e_nvm_access *cmd,
-					     u8 *bytes, int *perrno)
+static int i40e_nvmupd_get_aq_result(struct i40e_hw *hw,
+				     struct i40e_nvm_access *cmd,
+				     u8 *bytes, int *perrno)
 {
 	u32 aq_total_len;
 	u32 aq_desc_len;
@@ -1523,9 +1523,9 @@ static i40e_status i40e_nvmupd_get_aq_result(struct i40e_hw *hw,
  *
  * cmd structure contains identifiers and data buffer
  **/
-static i40e_status i40e_nvmupd_get_aq_event(struct i40e_hw *hw,
-					    struct i40e_nvm_access *cmd,
-					    u8 *bytes, int *perrno)
+static int i40e_nvmupd_get_aq_event(struct i40e_hw *hw,
+				    struct i40e_nvm_access *cmd,
+				    u8 *bytes, int *perrno)
 {
 	u32 aq_total_len;
 	u32 aq_desc_len;
@@ -1557,13 +1557,13 @@ static i40e_status i40e_nvmupd_get_aq_event(struct i40e_hw *hw,
  *
  * cmd structure contains identifiers and data buffer
  **/
-static i40e_status i40e_nvmupd_nvm_read(struct i40e_hw *hw,
-					struct i40e_nvm_access *cmd,
-					u8 *bytes, int *perrno)
+static int i40e_nvmupd_nvm_read(struct i40e_hw *hw,
+				struct i40e_nvm_access *cmd,
+				u8 *bytes, int *perrno)
 {
 	struct i40e_asq_cmd_details cmd_details;
-	i40e_status status;
 	u8 module, transaction;
+	int status;
 	bool last;
 
 	transaction = i40e_nvmupd_get_transaction(cmd->config);
@@ -1596,13 +1596,13 @@ static i40e_status i40e_nvmupd_nvm_read(struct i40e_hw *hw,
  *
  * module, offset, data_size and data are in cmd structure
  **/
-static i40e_status i40e_nvmupd_nvm_erase(struct i40e_hw *hw,
-					 struct i40e_nvm_access *cmd,
-					 int *perrno)
+static int i40e_nvmupd_nvm_erase(struct i40e_hw *hw,
+				 struct i40e_nvm_access *cmd,
+				 int *perrno)
 {
-	i40e_status status = 0;
 	struct i40e_asq_cmd_details cmd_details;
 	u8 module, transaction;
+	int status = 0;
 	bool last;
 
 	transaction = i40e_nvmupd_get_transaction(cmd->config);
@@ -1636,14 +1636,14 @@ static i40e_status i40e_nvmupd_nvm_erase(struct i40e_hw *hw,
  *
  * module, offset, data_size and data are in cmd structure
  **/
-static i40e_status i40e_nvmupd_nvm_write(struct i40e_hw *hw,
-					 struct i40e_nvm_access *cmd,
-					 u8 *bytes, int *perrno)
+static int i40e_nvmupd_nvm_write(struct i40e_hw *hw,
+				 struct i40e_nvm_access *cmd,
+				 u8 *bytes, int *perrno)
 {
-	i40e_status status = 0;
 	struct i40e_asq_cmd_details cmd_details;
 	u8 module, transaction;
 	u8 preservation_flags;
+	int status = 0;
 	bool last;
 
 	transaction = i40e_nvmupd_get_transaction(cmd->config);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_osdep.h b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
index 2f6815b2f8df..2bd4de03dafa 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_osdep.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
@@ -56,5 +56,4 @@ do {								\
 			(h)->bus.func, ##__VA_ARGS__);		\
 } while (0)
 
-typedef enum i40e_status_code i40e_status;
 #endif /* _I40E_OSDEP_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index 01ab63d28e3f..9c8c9895d813 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -16,29 +16,29 @@
  */
 
 /* adminq functions */
-i40e_status i40e_init_adminq(struct i40e_hw *hw);
+int i40e_init_adminq(struct i40e_hw *hw);
 void i40e_shutdown_adminq(struct i40e_hw *hw);
 void i40e_adminq_init_ring_data(struct i40e_hw *hw);
-i40e_status i40e_clean_arq_element(struct i40e_hw *hw,
+int i40e_clean_arq_element(struct i40e_hw *hw,
 					     struct i40e_arq_event_info *e,
 					     u16 *events_pending);
-i40e_status
+int
 i40e_asq_send_command(struct i40e_hw *hw, struct i40e_aq_desc *desc,
 		      void *buff, /* can be NULL */ u16  buff_size,
 		      struct i40e_asq_cmd_details *cmd_details);
-i40e_status
+int
 i40e_asq_send_command_v2(struct i40e_hw *hw,
 			 struct i40e_aq_desc *desc,
 			 void *buff, /* can be NULL */
 			 u16  buff_size,
 			 struct i40e_asq_cmd_details *cmd_details,
 			 enum i40e_admin_queue_err *aq_status);
-i40e_status
+int
 i40e_asq_send_command_atomic(struct i40e_hw *hw, struct i40e_aq_desc *desc,
 			     void *buff, /* can be NULL */ u16  buff_size,
 			     struct i40e_asq_cmd_details *cmd_details,
 			     bool is_atomic_context);
-i40e_status
+int
 i40e_asq_send_command_atomic_v2(struct i40e_hw *hw,
 				struct i40e_aq_desc *desc,
 				void *buff, /* can be NULL */
@@ -53,326 +53,326 @@ void i40e_debug_aq(struct i40e_hw *hw, enum i40e_debug_mask mask,
 
 void i40e_idle_aq(struct i40e_hw *hw);
 bool i40e_check_asq_alive(struct i40e_hw *hw);
-i40e_status i40e_aq_queue_shutdown(struct i40e_hw *hw, bool unloading);
+int i40e_aq_queue_shutdown(struct i40e_hw *hw, bool unloading);
 const char *i40e_aq_str(struct i40e_hw *hw, enum i40e_admin_queue_err aq_err);
 
-i40e_status i40e_aq_get_rss_lut(struct i40e_hw *hw, u16 seid,
+int i40e_aq_get_rss_lut(struct i40e_hw *hw, u16 seid,
 				bool pf_lut, u8 *lut, u16 lut_size);
-i40e_status i40e_aq_set_rss_lut(struct i40e_hw *hw, u16 seid,
+int i40e_aq_set_rss_lut(struct i40e_hw *hw, u16 seid,
 				bool pf_lut, u8 *lut, u16 lut_size);
-i40e_status i40e_aq_get_rss_key(struct i40e_hw *hw,
+int i40e_aq_get_rss_key(struct i40e_hw *hw,
 				u16 seid,
 				struct i40e_aqc_get_set_rss_key_data *key);
-i40e_status i40e_aq_set_rss_key(struct i40e_hw *hw,
+int i40e_aq_set_rss_key(struct i40e_hw *hw,
 				u16 seid,
 				struct i40e_aqc_get_set_rss_key_data *key);
 
 u32 i40e_led_get(struct i40e_hw *hw);
 void i40e_led_set(struct i40e_hw *hw, u32 mode, bool blink);
-i40e_status i40e_led_set_phy(struct i40e_hw *hw, bool on,
+int i40e_led_set_phy(struct i40e_hw *hw, bool on,
 			     u16 led_addr, u32 mode);
-i40e_status i40e_led_get_phy(struct i40e_hw *hw, u16 *led_addr,
+int i40e_led_get_phy(struct i40e_hw *hw, u16 *led_addr,
 			     u16 *val);
-i40e_status i40e_blink_phy_link_led(struct i40e_hw *hw,
+int i40e_blink_phy_link_led(struct i40e_hw *hw,
 				    u32 time, u32 interval);
 
 /* admin send queue commands */
 
-i40e_status i40e_aq_get_firmware_version(struct i40e_hw *hw,
+int i40e_aq_get_firmware_version(struct i40e_hw *hw,
 				u16 *fw_major_version, u16 *fw_minor_version,
 				u32 *fw_build,
 				u16 *api_major_version, u16 *api_minor_version,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_debug_write_register(struct i40e_hw *hw,
+int i40e_aq_debug_write_register(struct i40e_hw *hw,
 					u32 reg_addr, u64 reg_val,
 					struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_debug_read_register(struct i40e_hw *hw,
+int i40e_aq_debug_read_register(struct i40e_hw *hw,
 				u32  reg_addr, u64 *reg_val,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_set_phy_debug(struct i40e_hw *hw, u8 cmd_flags,
+int i40e_aq_set_phy_debug(struct i40e_hw *hw, u8 cmd_flags,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_set_default_vsi(struct i40e_hw *hw, u16 vsi_id,
+int i40e_aq_set_default_vsi(struct i40e_hw *hw, u16 vsi_id,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_clear_default_vsi(struct i40e_hw *hw, u16 vsi_id,
+int i40e_aq_clear_default_vsi(struct i40e_hw *hw, u16 vsi_id,
 				      struct i40e_asq_cmd_details *cmd_details);
-enum i40e_status_code i40e_aq_get_phy_capabilities(struct i40e_hw *hw,
+int i40e_aq_get_phy_capabilities(struct i40e_hw *hw,
 			bool qualified_modules, bool report_init,
 			struct i40e_aq_get_phy_abilities_resp *abilities,
 			struct i40e_asq_cmd_details *cmd_details);
-enum i40e_status_code i40e_aq_set_phy_config(struct i40e_hw *hw,
+int i40e_aq_set_phy_config(struct i40e_hw *hw,
 				struct i40e_aq_set_phy_config *config,
 				struct i40e_asq_cmd_details *cmd_details);
-enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
+int i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
 				  bool atomic_reset);
-i40e_status i40e_aq_set_mac_loopback(struct i40e_hw *hw,
-				     bool ena_lpbk,
-				     struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_set_phy_int_mask(struct i40e_hw *hw, u16 mask,
+int i40e_aq_set_mac_loopback(struct i40e_hw *hw,
+			     bool ena_lpbk,
+			     struct i40e_asq_cmd_details *cmd_details);
+int i40e_aq_set_phy_int_mask(struct i40e_hw *hw, u16 mask,
 				     struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
+int i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_set_link_restart_an(struct i40e_hw *hw,
+int i40e_aq_set_link_restart_an(struct i40e_hw *hw,
 					bool enable_link,
 					struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_get_link_info(struct i40e_hw *hw,
+int i40e_aq_get_link_info(struct i40e_hw *hw,
 				bool enable_lse, struct i40e_link_status *link,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_set_local_advt_reg(struct i40e_hw *hw,
+int i40e_aq_set_local_advt_reg(struct i40e_hw *hw,
 				u64 advt_reg,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_send_driver_version(struct i40e_hw *hw,
+int i40e_aq_send_driver_version(struct i40e_hw *hw,
 				struct i40e_driver_version *dv,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_add_vsi(struct i40e_hw *hw,
+int i40e_aq_add_vsi(struct i40e_hw *hw,
 				struct i40e_vsi_context *vsi_ctx,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_set_vsi_broadcast(struct i40e_hw *hw,
+int i40e_aq_set_vsi_broadcast(struct i40e_hw *hw,
 				u16 vsi_id, bool set_filter,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_set_vsi_unicast_promiscuous(struct i40e_hw *hw,
+int i40e_aq_set_vsi_unicast_promiscuous(struct i40e_hw *hw,
 		u16 vsi_id, bool set, struct i40e_asq_cmd_details *cmd_details,
 		bool rx_only_promisc);
-i40e_status i40e_aq_set_vsi_multicast_promiscuous(struct i40e_hw *hw,
+int i40e_aq_set_vsi_multicast_promiscuous(struct i40e_hw *hw,
 		u16 vsi_id, bool set, struct i40e_asq_cmd_details *cmd_details);
-enum i40e_status_code i40e_aq_set_vsi_mc_promisc_on_vlan(struct i40e_hw *hw,
+int i40e_aq_set_vsi_mc_promisc_on_vlan(struct i40e_hw *hw,
 							 u16 seid, bool enable,
 							 u16 vid,
 				struct i40e_asq_cmd_details *cmd_details);
-enum i40e_status_code i40e_aq_set_vsi_uc_promisc_on_vlan(struct i40e_hw *hw,
+int i40e_aq_set_vsi_uc_promisc_on_vlan(struct i40e_hw *hw,
 							 u16 seid, bool enable,
 							 u16 vid,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_set_vsi_bc_promisc_on_vlan(struct i40e_hw *hw,
+int i40e_aq_set_vsi_bc_promisc_on_vlan(struct i40e_hw *hw,
 				u16 seid, bool enable, u16 vid,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_set_vsi_vlan_promisc(struct i40e_hw *hw,
+int i40e_aq_set_vsi_vlan_promisc(struct i40e_hw *hw,
 				u16 seid, bool enable,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_get_vsi_params(struct i40e_hw *hw,
+int i40e_aq_get_vsi_params(struct i40e_hw *hw,
 				struct i40e_vsi_context *vsi_ctx,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_update_vsi_params(struct i40e_hw *hw,
+int i40e_aq_update_vsi_params(struct i40e_hw *hw,
 				struct i40e_vsi_context *vsi_ctx,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_add_veb(struct i40e_hw *hw, u16 uplink_seid,
+int i40e_aq_add_veb(struct i40e_hw *hw, u16 uplink_seid,
 				u16 downlink_seid, u8 enabled_tc,
 				bool default_port, u16 *pveb_seid,
 				bool enable_stats,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_get_veb_parameters(struct i40e_hw *hw,
+int i40e_aq_get_veb_parameters(struct i40e_hw *hw,
 				u16 veb_seid, u16 *switch_id, bool *floating,
 				u16 *statistic_index, u16 *vebs_used,
 				u16 *vebs_free,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_add_macvlan(struct i40e_hw *hw, u16 vsi_id,
+int i40e_aq_add_macvlan(struct i40e_hw *hw, u16 vsi_id,
 			struct i40e_aqc_add_macvlan_element_data *mv_list,
 			u16 count, struct i40e_asq_cmd_details *cmd_details);
-i40e_status
+int
 i40e_aq_add_macvlan_v2(struct i40e_hw *hw, u16 seid,
 		       struct i40e_aqc_add_macvlan_element_data *mv_list,
 		       u16 count, struct i40e_asq_cmd_details *cmd_details,
 		       enum i40e_admin_queue_err *aq_status);
-i40e_status i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 vsi_id,
+int i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 vsi_id,
 			struct i40e_aqc_remove_macvlan_element_data *mv_list,
 			u16 count, struct i40e_asq_cmd_details *cmd_details);
-i40e_status
+int
 i40e_aq_remove_macvlan_v2(struct i40e_hw *hw, u16 seid,
 			  struct i40e_aqc_remove_macvlan_element_data *mv_list,
 			  u16 count, struct i40e_asq_cmd_details *cmd_details,
 			  enum i40e_admin_queue_err *aq_status);
-i40e_status i40e_aq_add_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
+int i40e_aq_add_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
 			u16 rule_type, u16 dest_vsi, u16 count, __le16 *mr_list,
 			struct i40e_asq_cmd_details *cmd_details,
 			u16 *rule_id, u16 *rules_used, u16 *rules_free);
-i40e_status i40e_aq_delete_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
+int i40e_aq_delete_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
 			u16 rule_type, u16 rule_id, u16 count, __le16 *mr_list,
 			struct i40e_asq_cmd_details *cmd_details,
 			u16 *rules_used, u16 *rules_free);
 
-i40e_status i40e_aq_send_msg_to_vf(struct i40e_hw *hw, u16 vfid,
+int i40e_aq_send_msg_to_vf(struct i40e_hw *hw, u16 vfid,
 				u32 v_opcode, u32 v_retval, u8 *msg, u16 msglen,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_get_switch_config(struct i40e_hw *hw,
+int i40e_aq_get_switch_config(struct i40e_hw *hw,
 				struct i40e_aqc_get_switch_config_resp *buf,
 				u16 buf_size, u16 *start_seid,
 				struct i40e_asq_cmd_details *cmd_details);
-enum i40e_status_code i40e_aq_set_switch_config(struct i40e_hw *hw,
+int i40e_aq_set_switch_config(struct i40e_hw *hw,
 						u16 flags,
 						u16 valid_flags, u8 mode,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_request_resource(struct i40e_hw *hw,
+int i40e_aq_request_resource(struct i40e_hw *hw,
 				enum i40e_aq_resources_ids resource,
 				enum i40e_aq_resource_access_type access,
 				u8 sdp_number, u64 *timeout,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_release_resource(struct i40e_hw *hw,
+int i40e_aq_release_resource(struct i40e_hw *hw,
 				enum i40e_aq_resources_ids resource,
 				u8 sdp_number,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_read_nvm(struct i40e_hw *hw, u8 module_pointer,
+int i40e_aq_read_nvm(struct i40e_hw *hw, u8 module_pointer,
 				u32 offset, u16 length, void *data,
 				bool last_command,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_erase_nvm(struct i40e_hw *hw, u8 module_pointer,
+int i40e_aq_erase_nvm(struct i40e_hw *hw, u8 module_pointer,
 			      u32 offset, u16 length, bool last_command,
 			      struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_discover_capabilities(struct i40e_hw *hw,
+int i40e_aq_discover_capabilities(struct i40e_hw *hw,
 				void *buff, u16 buff_size, u16 *data_size,
 				enum i40e_admin_queue_opc list_type_opc,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_update_nvm(struct i40e_hw *hw, u8 module_pointer,
+int i40e_aq_update_nvm(struct i40e_hw *hw, u8 module_pointer,
 				u32 offset, u16 length, void *data,
 				bool last_command, u8 preservation_flags,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_rearrange_nvm(struct i40e_hw *hw,
+int i40e_aq_rearrange_nvm(struct i40e_hw *hw,
 				  u8 rearrange_nvm,
 				  struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_get_lldp_mib(struct i40e_hw *hw, u8 bridge_type,
+int i40e_aq_get_lldp_mib(struct i40e_hw *hw, u8 bridge_type,
 				u8 mib_type, void *buff, u16 buff_size,
 				u16 *local_len, u16 *remote_len,
 				struct i40e_asq_cmd_details *cmd_details);
-enum i40e_status_code
+int
 i40e_aq_set_lldp_mib(struct i40e_hw *hw,
 		     u8 mib_type, void *buff, u16 buff_size,
 		     struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_cfg_lldp_mib_change_event(struct i40e_hw *hw,
+int i40e_aq_cfg_lldp_mib_change_event(struct i40e_hw *hw,
 				bool enable_update,
 				struct i40e_asq_cmd_details *cmd_details);
-enum i40e_status_code
+int
 i40e_aq_restore_lldp(struct i40e_hw *hw, u8 *setting, bool restore,
 		     struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_stop_lldp(struct i40e_hw *hw, bool shutdown_agent,
+int i40e_aq_stop_lldp(struct i40e_hw *hw, bool shutdown_agent,
 			      bool persist,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_set_dcb_parameters(struct i40e_hw *hw,
+int i40e_aq_set_dcb_parameters(struct i40e_hw *hw,
 				       bool dcb_enable,
 				       struct i40e_asq_cmd_details
 				       *cmd_details);
-i40e_status i40e_aq_start_lldp(struct i40e_hw *hw, bool persist,
+int i40e_aq_start_lldp(struct i40e_hw *hw, bool persist,
 			       struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_get_cee_dcb_config(struct i40e_hw *hw,
+int i40e_aq_get_cee_dcb_config(struct i40e_hw *hw,
 				       void *buff, u16 buff_size,
 				       struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_add_udp_tunnel(struct i40e_hw *hw,
+int i40e_aq_add_udp_tunnel(struct i40e_hw *hw,
 				u16 udp_port, u8 protocol_index,
 				u8 *filter_index,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_del_udp_tunnel(struct i40e_hw *hw, u8 index,
+int i40e_aq_del_udp_tunnel(struct i40e_hw *hw, u8 index,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_delete_element(struct i40e_hw *hw, u16 seid,
+int i40e_aq_delete_element(struct i40e_hw *hw, u16 seid,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_mac_address_write(struct i40e_hw *hw,
+int i40e_aq_mac_address_write(struct i40e_hw *hw,
 				    u16 flags, u8 *mac_addr,
 				    struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_config_vsi_bw_limit(struct i40e_hw *hw,
+int i40e_aq_config_vsi_bw_limit(struct i40e_hw *hw,
 				u16 seid, u16 credit, u8 max_credit,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_dcb_updated(struct i40e_hw *hw,
+int i40e_aq_dcb_updated(struct i40e_hw *hw,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_config_switch_comp_bw_limit(struct i40e_hw *hw,
+int i40e_aq_config_switch_comp_bw_limit(struct i40e_hw *hw,
 				u16 seid, u16 credit, u8 max_bw,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_config_vsi_tc_bw(struct i40e_hw *hw, u16 seid,
+int i40e_aq_config_vsi_tc_bw(struct i40e_hw *hw, u16 seid,
 			struct i40e_aqc_configure_vsi_tc_bw_data *bw_data,
 			struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_config_switch_comp_ets(struct i40e_hw *hw,
+int i40e_aq_config_switch_comp_ets(struct i40e_hw *hw,
 		u16 seid,
 		struct i40e_aqc_configure_switching_comp_ets_data *ets_data,
 		enum i40e_admin_queue_opc opcode,
 		struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_config_switch_comp_bw_config(struct i40e_hw *hw,
+int i40e_aq_config_switch_comp_bw_config(struct i40e_hw *hw,
 	u16 seid,
 	struct i40e_aqc_configure_switching_comp_bw_config_data *bw_data,
 	struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_query_vsi_bw_config(struct i40e_hw *hw,
+int i40e_aq_query_vsi_bw_config(struct i40e_hw *hw,
 			u16 seid,
 			struct i40e_aqc_query_vsi_bw_config_resp *bw_data,
 			struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_query_vsi_ets_sla_config(struct i40e_hw *hw,
+int i40e_aq_query_vsi_ets_sla_config(struct i40e_hw *hw,
 			u16 seid,
 			struct i40e_aqc_query_vsi_ets_sla_config_resp *bw_data,
 			struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_query_switch_comp_ets_config(struct i40e_hw *hw,
+int i40e_aq_query_switch_comp_ets_config(struct i40e_hw *hw,
 		u16 seid,
 		struct i40e_aqc_query_switching_comp_ets_config_resp *bw_data,
 		struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_query_port_ets_config(struct i40e_hw *hw,
+int i40e_aq_query_port_ets_config(struct i40e_hw *hw,
 		u16 seid,
 		struct i40e_aqc_query_port_ets_config_resp *bw_data,
 		struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_query_switch_comp_bw_config(struct i40e_hw *hw,
+int i40e_aq_query_switch_comp_bw_config(struct i40e_hw *hw,
 		u16 seid,
 		struct i40e_aqc_query_switching_comp_bw_config_resp *bw_data,
 		struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_resume_port_tx(struct i40e_hw *hw,
+int i40e_aq_resume_port_tx(struct i40e_hw *hw,
 				   struct i40e_asq_cmd_details *cmd_details);
-enum i40e_status_code
+int
 i40e_aq_add_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
 			     struct i40e_aqc_cloud_filters_element_bb *filters,
 			     u8 filter_count);
-enum i40e_status_code
+int
 i40e_aq_add_cloud_filters(struct i40e_hw *hw, u16 vsi,
 			  struct i40e_aqc_cloud_filters_element_data *filters,
 			  u8 filter_count);
-enum i40e_status_code
+int
 i40e_aq_rem_cloud_filters(struct i40e_hw *hw, u16 vsi,
 			  struct i40e_aqc_cloud_filters_element_data *filters,
 			  u8 filter_count);
-enum i40e_status_code
+int
 i40e_aq_rem_cloud_filters_bb(struct i40e_hw *hw, u16 seid,
 			     struct i40e_aqc_cloud_filters_element_bb *filters,
 			     u8 filter_count);
-i40e_status i40e_read_lldp_cfg(struct i40e_hw *hw,
+int i40e_read_lldp_cfg(struct i40e_hw *hw,
 			       struct i40e_lldp_variables *lldp_cfg);
-enum i40e_status_code
+int
 i40e_aq_suspend_port_tx(struct i40e_hw *hw, u16 seid,
 			struct i40e_asq_cmd_details *cmd_details);
 /* i40e_common */
-i40e_status i40e_init_shared_code(struct i40e_hw *hw);
-i40e_status i40e_pf_reset(struct i40e_hw *hw);
+int i40e_init_shared_code(struct i40e_hw *hw);
+int i40e_pf_reset(struct i40e_hw *hw);
 void i40e_clear_hw(struct i40e_hw *hw);
 void i40e_clear_pxe_mode(struct i40e_hw *hw);
-i40e_status i40e_get_link_status(struct i40e_hw *hw, bool *link_up);
-i40e_status i40e_update_link_info(struct i40e_hw *hw);
-i40e_status i40e_get_mac_addr(struct i40e_hw *hw, u8 *mac_addr);
-i40e_status i40e_read_bw_from_alt_ram(struct i40e_hw *hw,
+int i40e_get_link_status(struct i40e_hw *hw, bool *link_up);
+int i40e_update_link_info(struct i40e_hw *hw);
+int i40e_get_mac_addr(struct i40e_hw *hw, u8 *mac_addr);
+int i40e_read_bw_from_alt_ram(struct i40e_hw *hw,
 				      u32 *max_bw, u32 *min_bw, bool *min_valid,
 				      bool *max_valid);
-i40e_status i40e_aq_configure_partition_bw(struct i40e_hw *hw,
+int i40e_aq_configure_partition_bw(struct i40e_hw *hw,
 			struct i40e_aqc_configure_partition_bw_data *bw_data,
 			struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_get_port_mac_addr(struct i40e_hw *hw, u8 *mac_addr);
-i40e_status i40e_read_pba_string(struct i40e_hw *hw, u8 *pba_num,
+int i40e_get_port_mac_addr(struct i40e_hw *hw, u8 *mac_addr);
+int i40e_read_pba_string(struct i40e_hw *hw, u8 *pba_num,
 				 u32 pba_num_size);
-i40e_status i40e_validate_mac_addr(u8 *mac_addr);
+int i40e_validate_mac_addr(u8 *mac_addr);
 void i40e_pre_tx_queue_cfg(struct i40e_hw *hw, u32 queue, bool enable);
 /* prototype for functions used for NVM access */
-i40e_status i40e_init_nvm(struct i40e_hw *hw);
-i40e_status i40e_acquire_nvm(struct i40e_hw *hw,
+int i40e_init_nvm(struct i40e_hw *hw);
+int i40e_acquire_nvm(struct i40e_hw *hw,
 				      enum i40e_aq_resource_access_type access);
 void i40e_release_nvm(struct i40e_hw *hw);
-i40e_status i40e_read_nvm_word(struct i40e_hw *hw, u16 offset,
+int i40e_read_nvm_word(struct i40e_hw *hw, u16 offset,
 					 u16 *data);
-enum i40e_status_code i40e_read_nvm_module_data(struct i40e_hw *hw,
+int i40e_read_nvm_module_data(struct i40e_hw *hw,
 						u8 module_ptr,
 						u16 module_offset,
 						u16 data_offset,
 						u16 words_data_size,
 						u16 *data_ptr);
-i40e_status i40e_read_nvm_buffer(struct i40e_hw *hw, u16 offset,
+int i40e_read_nvm_buffer(struct i40e_hw *hw, u16 offset,
 				 u16 *words, u16 *data);
-i40e_status i40e_update_nvm_checksum(struct i40e_hw *hw);
-i40e_status i40e_validate_nvm_checksum(struct i40e_hw *hw,
+int i40e_update_nvm_checksum(struct i40e_hw *hw);
+int i40e_validate_nvm_checksum(struct i40e_hw *hw,
 						 u16 *checksum);
-i40e_status i40e_nvmupd_command(struct i40e_hw *hw,
+int i40e_nvmupd_command(struct i40e_hw *hw,
 				struct i40e_nvm_access *cmd,
-				u8 *bytes, int *);
+				u8 *bytes, int *errno);
 void i40e_nvmupd_check_wait_event(struct i40e_hw *hw, u16 opcode,
 				  struct i40e_aq_desc *desc);
 void i40e_nvmupd_clear_wait_state(struct i40e_hw *hw);
 void i40e_set_pci_config_data(struct i40e_hw *hw, u16 link_status);
 
-i40e_status i40e_set_mac_type(struct i40e_hw *hw);
+int i40e_set_mac_type(struct i40e_hw *hw);
 
 extern struct i40e_rx_ptype_decoded i40e_ptype_lookup[];
 
@@ -421,41 +421,41 @@ i40e_virtchnl_link_speed(enum i40e_aq_link_speed link_speed)
 /* i40e_common for VF drivers*/
 void i40e_vf_parse_hw_config(struct i40e_hw *hw,
 			     struct virtchnl_vf_resource *msg);
-i40e_status i40e_vf_reset(struct i40e_hw *hw);
-i40e_status i40e_aq_send_msg_to_pf(struct i40e_hw *hw,
+int i40e_vf_reset(struct i40e_hw *hw);
+int i40e_aq_send_msg_to_pf(struct i40e_hw *hw,
 				enum virtchnl_ops v_opcode,
-				i40e_status v_retval,
+				int v_retval,
 				u8 *msg, u16 msglen,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_set_filter_control(struct i40e_hw *hw,
+int i40e_set_filter_control(struct i40e_hw *hw,
 				struct i40e_filter_control_settings *settings);
-i40e_status i40e_aq_add_rem_control_packet_filter(struct i40e_hw *hw,
+int i40e_aq_add_rem_control_packet_filter(struct i40e_hw *hw,
 				u8 *mac_addr, u16 ethtype, u16 flags,
 				u16 vsi_seid, u16 queue, bool is_add,
 				struct i40e_control_filter_stats *stats,
 				struct i40e_asq_cmd_details *cmd_details);
-i40e_status i40e_aq_debug_dump(struct i40e_hw *hw, u8 cluster_id,
+int i40e_aq_debug_dump(struct i40e_hw *hw, u8 cluster_id,
 			       u8 table_id, u32 start_index, u16 buff_size,
 			       void *buff, u16 *ret_buff_size,
 			       u8 *ret_next_table, u32 *ret_next_index,
 			       struct i40e_asq_cmd_details *cmd_details);
 void i40e_add_filter_to_drop_tx_flow_control_frames(struct i40e_hw *hw,
 						    u16 vsi_seid);
-i40e_status i40e_aq_rx_ctl_read_register(struct i40e_hw *hw,
+int i40e_aq_rx_ctl_read_register(struct i40e_hw *hw,
 				u32 reg_addr, u32 *reg_val,
 				struct i40e_asq_cmd_details *cmd_details);
 u32 i40e_read_rx_ctl(struct i40e_hw *hw, u32 reg_addr);
-i40e_status i40e_aq_rx_ctl_write_register(struct i40e_hw *hw,
+int i40e_aq_rx_ctl_write_register(struct i40e_hw *hw,
 				u32 reg_addr, u32 reg_val,
 				struct i40e_asq_cmd_details *cmd_details);
 void i40e_write_rx_ctl(struct i40e_hw *hw, u32 reg_addr, u32 reg_val);
-enum i40e_status_code
+int
 i40e_aq_set_phy_register_ext(struct i40e_hw *hw,
 			     u8 phy_select, u8 dev_addr, bool page_change,
 			     bool set_mdio, u8 mdio_num,
 			     u32 reg_addr, u32 reg_val,
 			     struct i40e_asq_cmd_details *cmd_details);
-enum i40e_status_code
+int
 i40e_aq_get_phy_register_ext(struct i40e_hw *hw,
 			     u8 phy_select, u8 dev_addr, bool page_change,
 			     bool set_mdio, u8 mdio_num,
@@ -468,27 +468,27 @@ i40e_aq_get_phy_register_ext(struct i40e_hw *hw,
 #define i40e_aq_get_phy_register(hw, ps, da, pc, ra, rv, cd)		\
 	i40e_aq_get_phy_register_ext(hw, ps, da, pc, false, 0, ra, rv, cd)
 
-i40e_status i40e_read_phy_register_clause22(struct i40e_hw *hw,
+int i40e_read_phy_register_clause22(struct i40e_hw *hw,
 					    u16 reg, u8 phy_addr, u16 *value);
-i40e_status i40e_write_phy_register_clause22(struct i40e_hw *hw,
+int i40e_write_phy_register_clause22(struct i40e_hw *hw,
 					     u16 reg, u8 phy_addr, u16 value);
-i40e_status i40e_read_phy_register_clause45(struct i40e_hw *hw,
+int i40e_read_phy_register_clause45(struct i40e_hw *hw,
 				u8 page, u16 reg, u8 phy_addr, u16 *value);
-i40e_status i40e_write_phy_register_clause45(struct i40e_hw *hw,
+int i40e_write_phy_register_clause45(struct i40e_hw *hw,
 				u8 page, u16 reg, u8 phy_addr, u16 value);
-i40e_status i40e_read_phy_register(struct i40e_hw *hw, u8 page, u16 reg,
+int i40e_read_phy_register(struct i40e_hw *hw, u8 page, u16 reg,
 				   u8 phy_addr, u16 *value);
-i40e_status i40e_write_phy_register(struct i40e_hw *hw, u8 page, u16 reg,
+int i40e_write_phy_register(struct i40e_hw *hw, u8 page, u16 reg,
 				    u8 phy_addr, u16 value);
 u8 i40e_get_phy_address(struct i40e_hw *hw, u8 dev_num);
-i40e_status i40e_blink_phy_link_led(struct i40e_hw *hw,
+int i40e_blink_phy_link_led(struct i40e_hw *hw,
 				    u32 time, u32 interval);
-i40e_status i40e_aq_write_ddp(struct i40e_hw *hw, void *buff,
+int i40e_aq_write_ddp(struct i40e_hw *hw, void *buff,
 			      u16 buff_size, u32 track_id,
 			      u32 *error_offset, u32 *error_info,
 			      struct i40e_asq_cmd_details *
 			      cmd_details);
-i40e_status i40e_aq_get_ddp_list(struct i40e_hw *hw, void *buff,
+int i40e_aq_get_ddp_list(struct i40e_hw *hw, void *buff,
 				 u16 buff_size, u8 flags,
 				 struct i40e_asq_cmd_details *
 				 cmd_details);
@@ -498,13 +498,13 @@ i40e_find_segment_in_package(u32 segment_type,
 struct i40e_profile_section_header *
 i40e_find_section_in_profile(u32 section_type,
 			     struct i40e_profile_segment *profile);
-enum i40e_status_code
+int
 i40e_write_profile(struct i40e_hw *hw, struct i40e_profile_segment *i40e_seg,
 		   u32 track_id);
-enum i40e_status_code
+int
 i40e_rollback_profile(struct i40e_hw *hw, struct i40e_profile_segment *i40e_seg,
 		      u32 track_id);
-enum i40e_status_code
+int
 i40e_add_pinfo_to_list(struct i40e_hw *hw,
 		       struct i40e_profile_segment *profile,
 		       u8 *profile_info_sec, u32 track_id);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 3ac901a4539f..cb7cf672f697 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -17,7 +17,7 @@
  **/
 static void i40e_vc_vf_broadcast(struct i40e_pf *pf,
 				 enum virtchnl_ops v_opcode,
-				 i40e_status v_retval, u8 *msg,
+				 int v_retval, u8 *msg,
 				 u16 msglen)
 {
 	struct i40e_hw *hw = &pf->hw;
@@ -1246,13 +1246,13 @@ static void i40e_get_vlan_list_sync(struct i40e_vsi *vsi, u16 *num_vlans,
  * @vl: List of VLANs - apply filter for given VLANs
  * @num_vlans: Number of elements in @vl
  **/
-static i40e_status
+static int
 i40e_set_vsi_promisc(struct i40e_vf *vf, u16 seid, bool multi_enable,
 		     bool unicast_enable, s16 *vl, u16 num_vlans)
 {
-	i40e_status aq_ret, aq_tmp = 0;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_hw *hw = &pf->hw;
+	int aq_ret, aq_tmp = 0;
 	int i;
 
 	/* No VLAN to set promisc on, set on VSI */
@@ -1339,13 +1339,13 @@ i40e_set_vsi_promisc(struct i40e_vf *vf, u16 seid, bool multi_enable,
  * Called from the VF to configure the promiscuous mode of
  * VF vsis and from the VF reset path to reset promiscuous mode.
  **/
-static i40e_status i40e_config_vf_promiscuous_mode(struct i40e_vf *vf,
-						   u16 vsi_id,
-						   bool allmulti,
-						   bool alluni)
+static int i40e_config_vf_promiscuous_mode(struct i40e_vf *vf,
+					   u16 vsi_id,
+					   bool allmulti,
+					   bool alluni)
 {
-	i40e_status aq_ret = I40E_SUCCESS;
 	struct i40e_pf *pf = vf->pf;
+	int aq_ret = I40E_SUCCESS;
 	struct i40e_vsi *vsi;
 	u16 num_vlans;
 	s16 *vl;
@@ -1955,7 +1955,7 @@ static int i40e_vc_send_msg_to_vf(struct i40e_vf *vf, u32 v_opcode,
 	struct i40e_pf *pf;
 	struct i40e_hw *hw;
 	int abs_vf_id;
-	i40e_status aq_ret;
+	int aq_ret;
 
 	/* validate the request */
 	if (!vf || vf->vf_id >= vf->pf->num_alloc_vfs)
@@ -1987,7 +1987,7 @@ static int i40e_vc_send_msg_to_vf(struct i40e_vf *vf, u32 v_opcode,
  **/
 static int i40e_vc_send_resp_to_vf(struct i40e_vf *vf,
 				   enum virtchnl_ops opcode,
-				   i40e_status retval)
+				   int retval)
 {
 	return i40e_vc_send_msg_to_vf(vf, opcode, retval, NULL, 0);
 }
@@ -2091,9 +2091,9 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 {
 	struct virtchnl_vf_resource *vfres = NULL;
 	struct i40e_pf *pf = vf->pf;
-	i40e_status aq_ret = 0;
 	struct i40e_vsi *vsi;
 	int num_vsis = 1;
+	int aq_ret = 0;
 	size_t len = 0;
 	int ret;
 
@@ -2221,9 +2221,9 @@ static int i40e_vc_config_promiscuous_mode_msg(struct i40e_vf *vf, u8 *msg)
 	struct virtchnl_promisc_info *info =
 	    (struct virtchnl_promisc_info *)msg;
 	struct i40e_pf *pf = vf->pf;
-	i40e_status aq_ret = 0;
 	bool allmulti = false;
 	bool alluni = false;
+	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
@@ -2308,10 +2308,10 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 	struct virtchnl_queue_pair_info *qpi;
 	u16 vsi_id, vsi_queue_id = 0;
 	struct i40e_pf *pf = vf->pf;
-	i40e_status aq_ret = 0;
 	int i, j = 0, idx = 0;
 	struct i40e_vsi *vsi;
 	u16 num_qps_all = 0;
+	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
@@ -2458,8 +2458,8 @@ static int i40e_vc_config_irq_map_msg(struct i40e_vf *vf, u8 *msg)
 	struct virtchnl_irq_map_info *irqmap_info =
 	    (struct virtchnl_irq_map_info *)msg;
 	struct virtchnl_vector_map *map;
+	int aq_ret = 0;
 	u16 vsi_id;
-	i40e_status aq_ret = 0;
 	int i;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
@@ -2574,7 +2574,7 @@ static int i40e_vc_enable_queues_msg(struct i40e_vf *vf, u8 *msg)
 	struct virtchnl_queue_select *vqs =
 	    (struct virtchnl_queue_select *)msg;
 	struct i40e_pf *pf = vf->pf;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 	int i;
 
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
@@ -2632,7 +2632,7 @@ static int i40e_vc_disable_queues_msg(struct i40e_vf *vf, u8 *msg)
 	struct virtchnl_queue_select *vqs =
 	    (struct virtchnl_queue_select *)msg;
 	struct i40e_pf *pf = vf->pf;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
@@ -2783,7 +2783,7 @@ static int i40e_vc_get_stats_msg(struct i40e_vf *vf, u8 *msg)
 	    (struct virtchnl_queue_select *)msg;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_eth_stats stats;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 	struct i40e_vsi *vsi;
 
 	memset(&stats, 0, sizeof(struct i40e_eth_stats));
@@ -2926,7 +2926,7 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 	    (struct virtchnl_ether_addr_list *)msg;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
-	i40e_status ret = 0;
+	int ret = 0;
 	int i;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
@@ -2998,7 +2998,7 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 	bool was_unimac_deleted = false;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
-	i40e_status ret = 0;
+	int ret = 0;
 	int i;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
@@ -3071,7 +3071,7 @@ static int i40e_vc_add_vlan_msg(struct i40e_vf *vf, u8 *msg)
 	    (struct virtchnl_vlan_filter_list *)msg;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 	int i;
 
 	if ((vf->num_vlan >= I40E_VC_MAX_VLAN_PER_VF) &&
@@ -3142,7 +3142,7 @@ static int i40e_vc_remove_vlan_msg(struct i40e_vf *vf, u8 *msg)
 	    (struct virtchnl_vlan_filter_list *)msg;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 	int i;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
@@ -3198,7 +3198,7 @@ static int i40e_vc_iwarp_msg(struct i40e_vf *vf, u8 *msg, u16 msglen)
 {
 	struct i40e_pf *pf = vf->pf;
 	int abs_vf_id = vf->vf_id + pf->hw.func_caps.vf_base_id;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
 	    !test_bit(I40E_VF_STATE_IWARPENA, &vf->vf_states)) {
@@ -3227,7 +3227,7 @@ static int i40e_vc_iwarp_qvmap_msg(struct i40e_vf *vf, u8 *msg, bool config)
 {
 	struct virtchnl_iwarp_qvlist_info *qvlist_info =
 				(struct virtchnl_iwarp_qvlist_info *)msg;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
 	    !test_bit(I40E_VF_STATE_IWARPENA, &vf->vf_states)) {
@@ -3263,7 +3263,7 @@ static int i40e_vc_config_rss_key(struct i40e_vf *vf, u8 *msg)
 		(struct virtchnl_rss_key *)msg;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
 	    !i40e_vc_isvalid_vsi_id(vf, vrk->vsi_id) ||
@@ -3293,7 +3293,7 @@ static int i40e_vc_config_rss_lut(struct i40e_vf *vf, u8 *msg)
 		(struct virtchnl_rss_lut *)msg;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 	u16 i;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
@@ -3328,7 +3328,7 @@ static int i40e_vc_get_rss_hena(struct i40e_vf *vf, u8 *msg)
 {
 	struct virtchnl_rss_hena *vrh = NULL;
 	struct i40e_pf *pf = vf->pf;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 	int len = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
@@ -3365,7 +3365,7 @@ static int i40e_vc_set_rss_hena(struct i40e_vf *vf, u8 *msg)
 		(struct virtchnl_rss_hena *)msg;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_hw *hw = &pf->hw;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
@@ -3389,8 +3389,8 @@ static int i40e_vc_set_rss_hena(struct i40e_vf *vf, u8 *msg)
  **/
 static int i40e_vc_enable_vlan_stripping(struct i40e_vf *vf, u8 *msg)
 {
-	i40e_status aq_ret = 0;
 	struct i40e_vsi *vsi;
+	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
@@ -3415,8 +3415,8 @@ static int i40e_vc_enable_vlan_stripping(struct i40e_vf *vf, u8 *msg)
  **/
 static int i40e_vc_disable_vlan_stripping(struct i40e_vf *vf, u8 *msg)
 {
-	i40e_status aq_ret = 0;
 	struct i40e_vsi *vsi;
+	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
@@ -3642,7 +3642,7 @@ static int i40e_vc_del_cloud_filter(struct i40e_vf *vf, u8 *msg)
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
 	struct hlist_node *node;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 	int i, ret;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
@@ -3773,7 +3773,7 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
 	struct i40e_cloud_filter *cfilter = NULL;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 	int i, ret;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
@@ -3882,7 +3882,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_link_status *ls = &pf->hw.phy.link_info;
 	int i, adq_request_qps = 0;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 	u64 speed = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
@@ -3994,7 +3994,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 static int i40e_vc_del_qch_msg(struct i40e_vf *vf, u8 *msg)
 {
 	struct i40e_pf *pf = vf->pf;
-	i40e_status aq_ret = 0;
+	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = I40E_ERR_PARAM;
-- 
2.31.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

