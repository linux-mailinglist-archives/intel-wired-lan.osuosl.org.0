Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB21A215BC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jan 2025 01:46:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC640408AA;
	Wed, 29 Jan 2025 00:46:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YcEtxWT8pW-X; Wed, 29 Jan 2025 00:46:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAABB40884
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738111560;
	bh=n8y88ziu7WE0PxhGLD8Fp6Nz0Moi9POVrPsEWsCA1Lw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3Dpt3GM+b6G8y6bhRAzHccWAIVHdQ3b4vWDzdAM9BaDqT1oK1qs94NKbBI1RPDtN+
	 NbUp8X4Viq74W4B4s0Yx3JfMZDwle2qmNhwgww1+RM+ybYsiu4pBapxBTU9tmfYE5E
	 RcocnKKPzafz/Wezgc4tNN6rQXLfyfsRyJuKimTLj+mjy3DyvTxSnzUrTq+ydeLvq5
	 0ttF7d2J93R5AQt0lmm9dy4FB7+AT7QoVF+ZLzcGoC89H30qETlhgWRWjBsEigT+pC
	 5m0qr9l6nVIeIRTXNZC8zX4qW38nR9fMdjKx7VN4MfYlr5NUmg3mX3vUcsMgCIzpkz
	 URuv9/f3MsBTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAABB40884;
	Wed, 29 Jan 2025 00:45:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 46785942
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jan 2025 00:45:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 196B340811
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jan 2025 00:45:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rYejhRv608s0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jan 2025 00:45:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 22A514085A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22A514085A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 22A514085A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jan 2025 00:45:56 +0000 (UTC)
X-CSE-ConnectionGUID: JTmn3O5/QHWNHk7tuBIJUw==
X-CSE-MsgGUID: 55xd2D/XTzqQhF3E5HkboA==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="49598653"
X-IronPort-AV: E=Sophos;i="6.13,242,1732608000"; d="scan'208";a="49598653"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 16:45:56 -0800
X-CSE-ConnectionGUID: 5uu8ZrMlSt2AAJRTlxJzRQ==
X-CSE-MsgGUID: Zf9KnJ1ZRzCJ4mH7rjrFKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,242,1732608000"; d="scan'208";a="109458127"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by fmviesa009.fm.intel.com with ESMTP; 28 Jan 2025 16:45:55 -0800
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Joshua Hay <joshua.a.hay@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Date: Tue, 28 Jan 2025 16:53:01 -0800
Message-Id: <20250129005301.1689141-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738111558; x=1769647558;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rACX2G1v87PXyHIGtpV9zqi7wQWMw3UBt7G0gsHRWg8=;
 b=FiXf7QJCLSgcaYsRFEZl8itrCznthe+gorDWDLo8sF3wi1qiMt8YRXkF
 vKJAn8lRFVAP28GgDnSrwPfCuZEtN7LYhCDJCOdr3iPGOuB3uTp7Dvfmi
 LzcMDlVJo7ImRYBD5MVQb49Dgad5OQPpZoevOcJWdQjMfO27QpQh8BEwZ
 CkdwZT+GOhw50O1DTf4cCr96qHAED5BWj1d5v88zjIlarl3PKrSagYIkg
 drs+6nMZclHbFS2I/NSGMu/JUF9m5ReXUyANOHyqGcmH4JoXgTj+tXSLO
 7NoYUNMI4/ERzSiosXwLjtiG/8t5fBVcb6m4M/9gHyXihFwTOaRLRivvc
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FiXf7QJC
Subject: [Intel-wired-lan] [PATCH net] idpf: move set_real_num_queues to
 up_complete
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On initial driver load, alloc_etherdev_mqs is called with whatever max
queue values are provided by the control plane. However, if the driver
is loaded on a system where num_online_cpus() returns less than the max
queues, the netdev will think there are more queues than are actually
available. Only num_online_cpus() will be allocated, but
skb_get_queue_mapping(skb) could possibly return an index beyond the
range of allocated queues. Consequently, the packet is silently dropped
and it appears as if TX is broken.

Move setting real number of queues to idpf_up_complete so the netdev
knows how many queues were actually allocated after any open flow.

Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index da2128686564..6df7f125ebde 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1280,6 +1280,10 @@ static int idpf_set_real_num_queues(struct idpf_vport *vport)
 static int idpf_up_complete(struct idpf_vport *vport)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	int err = idpf_set_real_num_queues(vport);
+
+	if (err)
+		return err;
 
 	if (vport->link_up && !netif_carrier_ok(vport->netdev)) {
 		netif_carrier_on(vport->netdev);
@@ -1913,10 +1917,6 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	if (reset_cause == IDPF_SR_Q_CHANGE)
 		idpf_vport_alloc_vec_indexes(vport);
 
-	err = idpf_set_real_num_queues(vport);
-	if (err)
-		goto err_open;
-
 	if (current_state == __IDPF_VPORT_UP)
 		err = idpf_vport_open(vport);
 
@@ -1928,7 +1928,6 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	idpf_send_add_queues_msg(vport, vport->num_txq, vport->num_complq,
 				 vport->num_rxq, vport->num_bufq);
 
-err_open:
 	if (current_state == __IDPF_VPORT_UP)
 		idpf_vport_open(vport);
 
-- 
2.39.2

