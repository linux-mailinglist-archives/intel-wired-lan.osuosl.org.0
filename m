Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCA29F5C5D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 02:44:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D8C18199D;
	Wed, 18 Dec 2024 01:44:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QLQ6nd-clCwB; Wed, 18 Dec 2024 01:44:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2C82818D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734486287;
	bh=LuVpx5CQduP6d53urrCTFU27lQvNlonCii4QQoAAI5w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vZCnsa8vH3p4NghUU32hTpAgL4WYHYzrelWxpj28lGZD8Lcz2SGsX/rKJFo3W5M8y
	 YyWgpw2A1efjXGFoYaGJvl9XJi6LnkCcBlfN1Qx/GSEKy6c1tLZGyI2QQ6y69Bw2mK
	 4NPWDjVnB794lV69NWfuyJfy+ulxV+J+TyQvXli2TciBfiAS65MF1IyumyFx1nMo73
	 1uhymRbzff6DnsUGw8xSstf3/6JNjpyvfYj4sHW7eFGtFs0qAvToVS/YowxYtEfNCk
	 XEdRATcwsFWu1tp2fUM9rWwp9H1APzW9d+uIBAbJvx5MlspgxPdoPxgk/5hRYLbYis
	 9D4cUMclHjJbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2C82818D4;
	Wed, 18 Dec 2024 01:44:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2AFA6CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 01:44:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2634F405EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 01:44:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ix2CO6CZXei7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 01:44:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 62363405F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62363405F7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62363405F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 01:44:44 +0000 (UTC)
X-CSE-ConnectionGUID: gxtHTrI6S6m251u9AAo42A==
X-CSE-MsgGUID: Aav1r07YRjaj2IGPxl761g==
X-IronPort-AV: E=McAfee;i="6700,10204,11289"; a="35098528"
X-IronPort-AV: E=Sophos;i="6.12,243,1728975600"; d="scan'208";a="35098528"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 17:44:44 -0800
X-CSE-ConnectionGUID: Q5b06jyBRSKTr0GEkOHzsg==
X-CSE-MsgGUID: yYm0AC2rSjKgPYENcCTe3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,243,1728975600"; d="scan'208";a="102708481"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa004.jf.intel.com with ESMTP; 17 Dec 2024 17:44:43 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, larysa.zaremba@intel.com, decot@google.com,
 willemb@google.com, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
Date: Tue, 17 Dec 2024 17:44:17 -0800
Message-Id: <20241218014417.3786-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734486285; x=1766022285;
 h=from:to:cc:subject:date:message-id;
 bh=rc5Oak5ththCfaouKkHXpJ25iMp4MsNHSLl2DDjTT1w=;
 b=l6JifHQrui90lmzrGzUgezZBAY/PE0zeTnXV1B8s0nRAemFdyA+pArxr
 SMsheYZMSzsootdDbsJ0KObqQINNbgFyMBx17FlKytN3h0w6aCxRo+fNU
 9d/u38v/t7AkvVpPzmFGv8gxOiXOzA5cWzdxgsnScxrreaLDQgLqNqZ45
 x7/Klbd11kpnLI1rv4JvR8JrlAkTHOgh6WdWmh7KaiLu+EppNaKiKKo+R
 aI3CV9HB+F+OQSYxb9hUEXu91+y0gYgYWtLMkdU6VDdvVeKUKq71psh9e
 USpqTrWlV4Joq369p6Mb138/a8zMT+ESgML4Py4p8nabDM039ulOtTIgd
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l6JifHQr
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix transaction timeouts on
 reset
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

Restore the call to idpf_vc_xn_shutdown() at the beginning of
idpf_vc_core_deinit() provided the function is not called on
remove. In the reset path this call is needed to prevent mailbox
transactions from timing out.

Fixes: 09d0fb5cb30e ("idpf: deinit virtchnl transaction manager after vport and vectors")
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
Testing hints:
echo 1 > /sys/class/net/<netif>/device/reset
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index d46c95f91b0d..0387794daf17 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3080,9 +3080,15 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 	if (!test_bit(IDPF_VC_CORE_INIT, adapter->flags))
 		return;
 
+	/* Avoid transaction timeouts when called during reset */
+	if (!test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
+		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
+
 	idpf_deinit_task(adapter);
 	idpf_intr_rel(adapter);
-	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
+
+	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
+		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
 
 	cancel_delayed_work_sync(&adapter->serv_task);
 	cancel_delayed_work_sync(&adapter->mbx_task);
-- 
2.17.2

