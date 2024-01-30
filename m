Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ED7841801
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 02:00:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C04E82FEA;
	Tue, 30 Jan 2024 01:00:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C04E82FEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706576409;
	bh=NYclx5Dfi6f/+/zZXNw1g9c3F/idO2h/QenWOyuPVFg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=raBQYFqOMQReKpnxn/OR8HffKORRIbHn/4sAPFMksW4u3LJovztb8tJBs5XnKbYU1
	 j7KmBSDcMUtAExmuyy+sjKMW1NlNSK0SjIDSZwXrpjvPQEfboWV4PThiRjNn3FaXgZ
	 MopP/raerr/3lRXzBPwZ6MoCHgvDnVa9NrE8FhKikRXeI4UdKj4a4QcvJrCDd2Flk4
	 BzPisTblxY6/4R5zKyAgqFcgDA/BZpW/YRKwUan6CK1ABzm2vwelWnfS/MHHOwewO5
	 Fh5pBzhwRf8+CCqHg7cBANNlXbYC7VOKL42uSi5jkSG/mhdjY/sjim8hAcqUkyP1Qy
	 Ai0K6+Q4gQD0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xzrtv6iaQbPu; Tue, 30 Jan 2024 01:00:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F38E829DC;
	Tue, 30 Jan 2024 01:00:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F38E829DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A259F1BF287
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 00:59:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7BBF460E44
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 00:59:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BBF460E44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mIyZy1j1kN_U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 00:59:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA781605AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 00:59:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA781605AE
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="9870881"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; 
   d="scan'208";a="9870881"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 16:59:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="1119078140"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="1119078140"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jan 2024 16:59:53 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 Jan 2024 16:59:21 -0800
Message-Id: <20240130005923.983026-6-alan.brady@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240130005923.983026-1-alan.brady@intel.com>
References: <20240130005923.983026-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706576394; x=1738112394;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dA27p2cpH13I2I3uzLtT120tKxpA/Hc5z5YdfavbA8E=;
 b=VJEVnWNvLapTAAYyNKglrlqmb4iNpNMwwPSzqwUZcxNixq44xBpgL0Xc
 /E7oKU65UbsDfQ4RixwKB09FZWms6OM5hv/GxITakcEOPow+lynm2kceW
 r7FwZfcVHtfEjcVm/vgSq3yb+v9EhlWoVx9NR+HKxwG9yxEEgzj4J0p09
 rzT+PyZFu3ExrW0Pu0eF+EU6eRYyfcR/6MTy5JsSULn0Viu+NOIK1j3Eg
 b7Mm3C1Jv5UD3wyMMy0VFCoVALgvQz+jrOuhYxh8kduSlMVb7pqeqwuI6
 Bu3x03HjQzvk4MhvD8xwT1RzNCQ5xSvr85AFJhasb4AdbeB1+hnZ9As5P
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VJEVnWNv
Subject: [Intel-wired-lan] [PATCH v3 5/7 iwl-next] idpf: add async_handler
 for MAC filter messages
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
Cc: netdev@vger.kernel.org, willemdebruijn.kernel@gmail.com,
 igor.bagnucki@intel.com, Alan Brady <alan.brady@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There are situations where the driver needs to add a MAC filter but
we're explicitly not allowed to sleep so we can wait for a virtchnl
message to complete.

This adds an async_handler for asynchronously sent messages for MAC
filters so that we can better handle if there's an error of some kind.
If success we don't need to do anything else, but if we failed to
program the new filter we really should remove it from our list of MAC
filters. If we don't remove bad filters, what I expect to happen is
after a reset of some kind we try to program the MAC filter again and it
fails again. This is clearly wrong and I would expect to be confusing
for the user.

It could also be the failure is for a delete MAC filter message but
those filters get deleted regardless. Not much we can do about a delete
failure.

Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 36495e0b5cf5..b4535972d03b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3535,6 +3535,75 @@ u32 idpf_get_vport_id(struct idpf_vport *vport)
 	return le32_to_cpu(vport_msg->vport_id);
 }
 
+/**
+ * idpf_mac_filter_async_handler - Async callback for mac filters
+ * @adapter: private data struct
+ * @xn: transaction for message
+ * @ctlq_msg: received message
+ *
+ * In some scenarios driver can't sleep and wait for a reply (e.g.: stack is
+ * holding rtnl_lock) when adding a new mac filter. It puts us in a difficult
+ * situation to deal with errors returned on the reply. The best we can
+ * ultimately do is remove it from our list of mac filters and report the
+ * error.
+ */
+static int idpf_mac_filter_async_handler(struct idpf_adapter *adapter,
+					 struct idpf_vc_xn *xn,
+					 const struct idpf_ctlq_msg *ctlq_msg)
+{
+	struct virtchnl2_mac_addr_list *ma_list;
+	struct idpf_vport_config *vport_config;
+	struct virtchnl2_mac_addr *mac_addr;
+	struct idpf_mac_filter *f, *tmp;
+	struct list_head *ma_list_head;
+	struct idpf_vport *vport;
+	u16 num_entries;
+	int i;
+
+	/* if success we're done, we're only here if something bad happened */
+	if (!ctlq_msg->cookie.mbx.chnl_retval)
+		return 0;
+
+	/* make sure at least struct is there */
+	if (xn->reply_sz < sizeof(*ma_list))
+		goto invalid_payload;
+
+	ma_list = ctlq_msg->ctx.indirect.payload->va;
+	mac_addr = ma_list->mac_addr_list;
+	num_entries = le16_to_cpu(ma_list->num_mac_addr);
+	/* we should have received a buffer at least this big */
+	if (xn->reply_sz < struct_size(ma_list, mac_addr_list, num_entries))
+		goto invalid_payload;
+
+	vport = idpf_vid_to_vport(adapter, le32_to_cpu(ma_list->vport_id));
+	if (!vport)
+		goto invalid_payload;
+
+	vport_config = adapter->vport_config[le32_to_cpu(ma_list->vport_id)];
+	ma_list_head = &vport_config->user_config.mac_filter_list;
+
+	/* We can't do much to reconcile bad filters at this point, however we
+	 * should at least remove them from our list one way or the other so we
+	 * have some idea what good filters we have.
+	 */
+	spin_lock_bh(&vport_config->mac_filter_list_lock);
+	list_for_each_entry_safe(f, tmp, ma_list_head, list)
+		for (i = 0; i < num_entries; i++)
+			if (ether_addr_equal(mac_addr[i].addr, f->macaddr))
+				list_del(&f->list);
+	spin_unlock_bh(&vport_config->mac_filter_list_lock);
+	dev_err_ratelimited(&adapter->pdev->dev, "Received error sending MAC filter request (op %d)\n",
+			    xn->vc_op);
+
+	return 0;
+
+invalid_payload:
+	dev_err_ratelimited(&adapter->pdev->dev, "Received invalid MAC filter payload (op %d) (len %zd)\n",
+			    xn->vc_op, xn->reply_sz);
+
+	return -EINVAL;
+}
+
 /**
  * idpf_add_del_mac_filters - Add/del mac filters
  * @vport: Virtual port data structure
@@ -3562,6 +3631,7 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 				VIRTCHNL2_OP_DEL_MAC_ADDR;
 	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 	xn_params.async = async;
+	xn_params.async_handler = idpf_mac_filter_async_handler;
 
 	vport_config = adapter->vport_config[np->vport_idx];
 	spin_lock_bh(&vport_config->mac_filter_list_lock);
-- 
2.40.1

