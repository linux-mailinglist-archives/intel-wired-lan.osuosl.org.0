Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 749049505F0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 15:08:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8118081C40;
	Tue, 13 Aug 2024 13:08:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bmuNuGXMC8Od; Tue, 13 Aug 2024 13:08:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 159E081B10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723554507;
	bh=QsxupR1zV9Wvh6Jte56sxfTLDEaFiEDbgCJG4Te91N4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=byYxr4UPYQwW5AFAV2Bin0vD+pPvElhP3Xl29hbBas79LKFak8IzC1MFRZoAVnJOj
	 BRdTsEsfEXgQJ75hv0f94NnmCOSyVlJVk5iaaH7TmwGaoFbrXBGw9I12lTVZR3B0hn
	 rqW6J2CqpE7tAUXBd8ephSoaKYYfJpz6DGy29dXqy80c4vwutM6aPMx/dlp+sZwCta
	 Vu4waLkR7+PCp4mMyK0g5jNPbhvkVA0Zzo3tJ9jgeejKQLuw1xsQ4IWqRRlEzvy1pm
	 UE+1vBG/UbGdea79VF69v40ZfaKifAMpaYw0QLKtx5uwVE3miie0XP0cFqEa9nRyLU
	 EKHLA7GEb7rGQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 159E081B10;
	Tue, 13 Aug 2024 13:08:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A1B51BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2E3560861
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RDHj0xBE1kGM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 13:08:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8380A6069F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8380A6069F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8380A6069F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:15 +0000 (UTC)
X-CSE-ConnectionGUID: OsqeHQZnSsKVKRzEOKQPVg==
X-CSE-MsgGUID: Y7BPOAYDTT+cNJd2HZBOnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32290930"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="32290930"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 06:08:14 -0700
X-CSE-ConnectionGUID: +yBNFI69Tnmdzx8R+/1sxg==
X-CSE-MsgGUID: hzZLTjEkRBuNlNFCvXCKRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="59417143"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 13 Aug 2024 06:08:12 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7FDB332C94;
 Tue, 13 Aug 2024 14:08:10 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Tue, 13 Aug 2024 08:55:06 -0400
Message-Id: <20240813125513.8212-8-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
References: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723554496; x=1755090496;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qc4rTjJdD8pdj97i8r0fc1REKr3Nz9PYb5raF4OdbM0=;
 b=M0/kyTeorKbLlqAs8qxBSrXr9rkF+hN8IjwYFCiImrpDwwBNdkMHngQO
 J2v745RzC/uzbtyCDNT8MUWJqnZT31n6M6M7BO9pZZwbM1vclWMXEj6ex
 UIdtoxxQI7Z+gOCNBykyFszEnVLDIWGQW1ZqQntI97/l0AQXxAW5VFZbq
 SeE2TgKTw8dSvF5fmEucbeSFJl+tE7IrXcK/KQWdI5jq1SEocwru0MVIO
 rxTgDoSmlfbxtzm82SS4tu0asJbSC6XYF1yX+whpL/G33tEXoeEQ7spq+
 d5ssNxGL7EyaFmf1zQ62htFSF7/Gd2Yq+tJBqEaf5bPffnB+OkulbGZoA
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M0/kyTeo
Subject: [Intel-wired-lan] [PATCH iwl-next v9 07/14] iavf: add support for
 indirect access to PHC time
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

Implement support for reading the PHC time indirectly via the
VIRTCHNL_OP_1588_PTP_GET_TIME operation.

Based on some simple tests with ftrace, the latency of the indirect
clock access appears to be about ~110 microseconds. This is due to the
cost of preparing a message to send over the virtchnl queue.

This is expected, due to the increased jitter caused by sending messages
over virtchnl. It is not easy to control the precise time that the
message is sent by the VF, or the time that the message is responded to
by the PF, or the time that the message sent from the PF is received by
the VF.

For sending the request, note that many PTP related operations will
require sending of VIRTCHNL messages. Instead of adding a separate AQ
flag and storage for each operation, setup a simple queue mechanism for
queuing up virtchnl messages.

Each message will be converted to a iavf_ptp_aq_cmd structure which ends
with a flexible array member. A single AQ flag is added for processing
messages from this queue. In principle this could be extended to handle
arbitrary virtchnl messages. For now it is kept to PTP-specific as the
need is primarily for handling PTP-related commands.

Use this to implement .gettimex64 using the indirect method via the
virtchnl command. The response from the PF is processed and stored into
the cached_phc_time. A wait queue is used to allow the PTP clock gettime
request to sleep until the message is sent from the PF.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c   |   9 +-
 drivers/net/ethernet/intel/iavf/iavf_ptp.c    | 144 ++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h    |   4 +
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  94 ++++++++++++
 4 files changed, 250 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 6d6446923f73..691de43a2c5b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2235,7 +2235,10 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		iavf_enable_vlan_insertion_v2(adapter, ETH_P_8021AD);
 		return 0;
 	}
-
+	if (adapter->aq_required & IAVF_FLAG_AQ_SEND_PTP_CMD) {
+		iavf_virtchnl_send_ptp_cmd(adapter);
+		return IAVF_SUCCESS;
+	}
 	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_STATS) {
 		iavf_request_stats(adapter);
 		return 0;
@@ -5326,6 +5329,10 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Setup the wait queue for indicating virtchannel events */
 	init_waitqueue_head(&adapter->vc_waitqueue);
 
+	INIT_LIST_HEAD(&adapter->ptp.aq_cmds);
+	init_waitqueue_head(&adapter->ptp.phc_time_waitqueue);
+	mutex_init(&adapter->ptp.aq_cmd_lock);
+
 	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
 	/* Initialization goes on in the work. Do not add more of it below. */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
index 045aa8690ac2..d709d381958f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -21,6 +21,138 @@ bool iavf_ptp_cap_supported(const struct iavf_adapter *adapter, u32 cap)
 	return (adapter->ptp.hw_caps.caps & cap) == cap;
 }
 
+/**
+ * iavf_allocate_ptp_cmd - Allocate a PTP command message structure
+ * @v_opcode: the virtchnl opcode
+ * @msglen: length in bytes of the associated virtchnl structure
+ *
+ * Allocates a PTP command message and pre-fills it with the provided message
+ * length and opcode.
+ *
+ * Return: allocated PTP command.
+ */
+static struct iavf_ptp_aq_cmd *iavf_allocate_ptp_cmd(enum virtchnl_ops v_opcode,
+						     u16 msglen)
+{
+	struct iavf_ptp_aq_cmd *cmd;
+
+	cmd = kzalloc(struct_size(cmd, msg, msglen), GFP_KERNEL);
+	if (!cmd)
+		return NULL;
+
+	cmd->v_opcode = v_opcode;
+	cmd->msglen = msglen;
+
+	return cmd;
+}
+
+/**
+ * iavf_queue_ptp_cmd - Queue PTP command for sending over virtchnl
+ * @adapter: private adapter structure
+ * @cmd: the command structure to send
+ *
+ * Queue the given command structure into the PTP virtchnl command queue tos
+ * end to the PF.
+ */
+static void iavf_queue_ptp_cmd(struct iavf_adapter *adapter,
+			       struct iavf_ptp_aq_cmd *cmd)
+{
+	mutex_lock(&adapter->ptp.aq_cmd_lock);
+	list_add_tail(&cmd->list, &adapter->ptp.aq_cmds);
+	mutex_unlock(&adapter->ptp.aq_cmd_lock);
+
+	adapter->aq_required |= IAVF_FLAG_AQ_SEND_PTP_CMD;
+	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
+}
+
+/**
+ * iavf_send_phc_read - Send request to read PHC time
+ * @adapter: private adapter structure
+ *
+ * Send a request to obtain the PTP hardware clock time. This allocates the
+ * VIRTCHNL_OP_1588_PTP_GET_TIME message and queues it up to send to
+ * indirectly read the PHC time.
+ *
+ * This function does not wait for the reply from the PF.
+ *
+ * Return: 0 if success, error code otherwise.
+ */
+static int iavf_send_phc_read(struct iavf_adapter *adapter)
+{
+	struct iavf_ptp_aq_cmd *cmd;
+
+	if (!adapter->ptp.initialized)
+		return -EOPNOTSUPP;
+
+	cmd = iavf_allocate_ptp_cmd(VIRTCHNL_OP_1588_PTP_GET_TIME,
+				    sizeof(struct virtchnl_phc_time));
+	if (!cmd)
+		return -ENOMEM;
+
+	iavf_queue_ptp_cmd(adapter, cmd);
+
+	return 0;
+}
+
+/**
+ * iavf_read_phc_indirect - Indirectly read the PHC time via virtchnl
+ * @adapter: private adapter structure
+ * @ts: storage for the timestamp value
+ * @sts: system timestamp values before and after the read
+ *
+ * Used when the device does not have direct register access to the PHC time.
+ * Indirectly reads the time via the VIRTCHNL_OP_1588_PTP_GET_TIME, and waits
+ * for the reply from the PF.
+ *
+ * Based on some simple measurements using ftrace and phc2sys, this clock
+ * access method has about a ~110 usec latency even when the system is not
+ * under load. In order to achieve acceptable results when using phc2sys with
+ * the indirect clock access method, it is recommended to use more
+ * conservative proportional and integration constants with the P/I servo.
+ *
+ * Return: 0 if success, error code otherwise.
+ */
+static int iavf_read_phc_indirect(struct iavf_adapter *adapter,
+				  struct timespec64 *ts,
+				  struct ptp_system_timestamp *sts)
+{
+	long ret;
+	int err;
+
+	adapter->ptp.phc_time_ready = false;
+	ptp_read_system_prets(sts);
+
+	err = iavf_send_phc_read(adapter);
+	if (err)
+		return err;
+
+	ret = wait_event_interruptible_timeout(adapter->ptp.phc_time_waitqueue,
+					       adapter->ptp.phc_time_ready,
+					       HZ);
+	if (ret < 0)
+		return ret;
+	else if (!ret)
+		return -EBUSY;
+
+	*ts = ns_to_timespec64(adapter->ptp.cached_phc_time);
+
+	ptp_read_system_postts(sts);
+
+	return 0;
+}
+
+static int iavf_ptp_gettimex64(struct ptp_clock_info *info,
+			       struct timespec64 *ts,
+			       struct ptp_system_timestamp *sts)
+{
+	struct iavf_adapter *adapter = iavf_clock_to_adapter(info);
+
+	if (!adapter->ptp.initialized)
+		return -ENODEV;
+
+	return iavf_read_phc_indirect(adapter, ts, sts);
+}
+
 /**
  * iavf_ptp_register_clock - Register a new PTP for userspace
  * @adapter: private adapter structure
@@ -39,6 +171,7 @@ static int iavf_ptp_register_clock(struct iavf_adapter *adapter)
 	snprintf(ptp_info->name, sizeof(ptp_info->name), "%s-%s-clk",
 		 dev_driver_string(dev), dev_name(dev));
 	ptp_info->owner = THIS_MODULE;
+	ptp_info->gettimex64 = iavf_ptp_gettimex64;
 
 	adapter->ptp.clock = ptp_clock_register(ptp_info, dev);
 	if (IS_ERR(adapter->ptp.clock)) {
@@ -89,6 +222,8 @@ void iavf_ptp_init(struct iavf_adapter *adapter)
  */
 void iavf_ptp_release(struct iavf_adapter *adapter)
 {
+	struct iavf_ptp_aq_cmd *cmd, *tmp;
+
 	adapter->ptp.initialized = false;
 
 	if (!IS_ERR_OR_NULL(adapter->ptp.clock)) {
@@ -97,6 +232,15 @@ void iavf_ptp_release(struct iavf_adapter *adapter)
 		ptp_clock_unregister(adapter->ptp.clock);
 		adapter->ptp.clock = NULL;
 	}
+
+	/* Cancel any remaining uncompleted PTP clock commands */
+	mutex_lock(&adapter->ptp.aq_cmd_lock);
+	list_for_each_entry_safe(cmd, tmp, &adapter->ptp.aq_cmds, list) {
+		list_del(&cmd->list);
+		kfree(cmd);
+	}
+	adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
+	mutex_unlock(&adapter->ptp.aq_cmd_lock);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
index c2ed24cef926..0bb4bddc1495 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
@@ -6,9 +6,13 @@
 
 #include "iavf_types.h"
 
+#define iavf_clock_to_adapter(info)				\
+	container_of_const(info, struct iavf_adapter, ptp.info)
+
 void iavf_ptp_init(struct iavf_adapter *adapter);
 void iavf_ptp_release(struct iavf_adapter *adapter);
 void iavf_ptp_process_caps(struct iavf_adapter *adapter);
 bool iavf_ptp_cap_supported(const struct iavf_adapter *adapter, u32 cap);
+void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter);
 
 #endif /* _IAVF_PTP_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index ed38222471d9..9eaa6400c07a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1520,6 +1520,64 @@ void iavf_disable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid)
 				  VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2);
 }
 
+/**
+ * iavf_virtchnl_send_ptp_cmd - Send one queued PTP command
+ * @adapter: adapter private structure
+ *
+ * De-queue one PTP command request and send the command message to the PF.
+ * Clear IAVF_FLAG_AQ_SEND_PTP_CMD if no more messages are left to send.
+ */
+void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter)
+{
+	struct device *dev = &adapter->pdev->dev;
+	struct iavf_ptp_aq_cmd *cmd;
+	int err;
+
+	if (!adapter->ptp.initialized) {
+		/* This shouldn't be possible to hit, since no messages should
+		 * be queued if PTP is not initialized.
+		 */
+		pci_err(adapter->pdev, "PTP is not initialized\n");
+		adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
+		return;
+	}
+
+	mutex_lock(&adapter->ptp.aq_cmd_lock);
+	cmd = list_first_entry_or_null(&adapter->ptp.aq_cmds,
+				       struct iavf_ptp_aq_cmd, list);
+	if (!cmd) {
+		/* no further PTP messages to send */
+		adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
+		goto out_unlock;
+	}
+
+	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
+		/* bail because we already have a command pending */
+		dev_err(dev, "Cannot send PTP command %d, command %d pending\n",
+			cmd->v_opcode, adapter->current_op);
+		goto out_unlock;
+	}
+
+	err = iavf_send_pf_msg(adapter, cmd->v_opcode, cmd->msg, cmd->msglen);
+	if (!err) {
+		/* Command was sent without errors, so we can remove it from
+		 * the list and discard it.
+		 */
+		list_del(&cmd->list);
+		kfree(cmd);
+	} else {
+		/* We failed to send the command, try again next cycle */
+		dev_warn(dev, "Failed to send PTP command %d\n", cmd->v_opcode);
+	}
+
+	if (list_empty(&adapter->ptp.aq_cmds))
+		/* no further PTP messages to send */
+		adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
+
+out_unlock:
+	mutex_unlock(&adapter->ptp.aq_cmd_lock);
+}
+
 /**
  * iavf_print_link_message - print link up or down
  * @adapter: adapter structure
@@ -2091,6 +2149,39 @@ static void iavf_activate_fdir_filters(struct iavf_adapter *adapter)
 		adapter->aq_required |= IAVF_FLAG_AQ_ADD_FDIR_FILTER;
 }
 
+/**
+ * iavf_virtchnl_ptp_get_time - Respond to VIRTCHNL_OP_1588_PTP_GET_TIME
+ * @adapter: private adapter structure
+ * @data: the message from the PF
+ * @len: length of the message from the PF
+ *
+ * Handle the VIRTCHNL_OP_1588_PTP_GET_TIME message from the PF. This message
+ * is sent by the PF in response to the same op as a request from the VF.
+ * Extract the 64bit nanoseconds time from the message and store it in
+ * cached_phc_time. Then, notify any thread that is waiting for the update via
+ * the wait queue.
+ */
+static void iavf_virtchnl_ptp_get_time(struct iavf_adapter *adapter,
+				       void *data, u16 len)
+{
+	struct virtchnl_phc_time *msg;
+
+	if (len == sizeof(*msg)) {
+		msg = (struct virtchnl_phc_time *)data;
+	} else {
+		dev_err_once(&adapter->pdev->dev,
+			     "Invalid VIRTCHNL_OP_1588_PTP_GET_TIME from PF. Got size %u, expected %zu\n",
+			     len, sizeof(*msg));
+		return;
+	}
+
+	adapter->ptp.cached_phc_time = msg->time;
+	adapter->ptp.cached_phc_updated = jiffies;
+	adapter->ptp.phc_time_ready = true;
+
+	wake_up(&adapter->ptp.phc_time_waitqueue);
+}
+
 /**
  * iavf_virtchnl_completion
  * @adapter: adapter structure
@@ -2501,6 +2592,9 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		/* process any state change needed due to new capabilities */
 		iavf_ptp_process_caps(adapter);
 		break;
+	case VIRTCHNL_OP_1588_PTP_GET_TIME:
+		iavf_virtchnl_ptp_get_time(adapter, msg, msglen);
+		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
 		/* enable transmits */
 		iavf_irq_enable(adapter, true);
-- 
2.38.1

