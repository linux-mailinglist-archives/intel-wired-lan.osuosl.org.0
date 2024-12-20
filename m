Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F299F8A02
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2024 03:10:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E343180F0A;
	Fri, 20 Dec 2024 02:10:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NxLY6uIW6w_1; Fri, 20 Dec 2024 02:10:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00AC082EB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734660604;
	bh=HwoIkoSp5y3iaxw8z0JFDIwkrM/vRZZInjRSh46wxlA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CP7z1rlr7//DFo8MM1oOGL6aw1RHmzi2tzTD8ZTCkSmYisIvH/8RWekJ8LOtzKRA4
	 YY2chyqFWlJWp4w04fYbfsVVD1u6AOo4uHkaz5a2yhs+iKIUFAEoWfSpyie6QGtWz4
	 YcAJHtlJ16zsq54oKsoyLGFkNOeM0aQMnWy6T8Lt7jgV/3kfOKAUjCx6DfVyuUzJ3A
	 XJQ6x1x5NeoIB/YogBy9Yg8MgtxvWH/ja5M9BOXXcPpnmyJX+oNZ16bgeXawOeP+z0
	 5UTVLR2Y2yslLDU2or3cLPAF5cyCaCF2ReVN0KVhAd/rK5Zz6H2tsVTlyJwlKtibl6
	 jQhlAvgAW9TKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00AC082EB6;
	Fri, 20 Dec 2024 02:10:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C91E96C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 02:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B466182BC0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 02:10:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OOKFMwtj3DuG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2024 02:10:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B3C5682B97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3C5682B97
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3C5682B97
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 02:10:00 +0000 (UTC)
X-CSE-ConnectionGUID: JGbqfbilR1mxKnbtYQwn1g==
X-CSE-MsgGUID: FEd2XMhwTjWCIgfFQ/tGKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="46584558"
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="46584558"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 18:09:59 -0800
X-CSE-ConnectionGUID: N2nHVguGTTqbiqtgjxiErA==
X-CSE-MsgGUID: VS2EUpFaT2WyQgtGRPtdtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="98177588"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa006.fm.intel.com with ESMTP; 19 Dec 2024 18:09:58 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, larysa.zaremba@intel.com, decot@google.com,
 willemb@google.com, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 aleksander.lobakin@intel.com
Date: Thu, 19 Dec 2024 18:09:32 -0800
Message-Id: <20241220020932.32545-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734660601; x=1766196601;
 h=from:to:cc:subject:date:message-id;
 bh=zeN4QCvtvaNWkOgM6yi3udrMDEAwBJzTCF0k4+EYssw=;
 b=ADyDzkSMrni0q2dzD3FgrAThMrsgIgR9fo7FqLzCJ/e4DvARQ7RuGecx
 jwGe5Sn2K2Czv1heWF0SKkJEhqCBqux+uRDMEOxtk3iB7OhJ78s1+RMy4
 KU4OxsBmkIcdOnkw7W7yLzNmLx/Y30rr08URaNMBroL3GVRwykX70Hy3W
 niNXSooE/oGwCZ5l+7NGKAAor15K8Q8yREc/rLDIBuUcoRLlz2oGLdT45
 wZC2O6q7t1gKG5t6JvCPW7Jg9OkNGE4tlPRQApYFjriWjr9+Ako386HeL
 Ajcr+uLY3quZaJF2WOykIW7PjLw8tph4yb/iZsJBc/s59ac9cos4qnJ+8
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ADyDzkSM
Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix transaction timeouts
 on reset
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
idpf_vc_core_deinit() provided the function is not called on remove.
In the reset path the mailbox is destroyed, leading to all transactions
timing out.

Fixes: 09d0fb5cb30e ("idpf: deinit virtchnl transaction manager after vport and vectors")
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
Changelog:
v2:
- Assigned the current state of REMOVE_IN_PROG flag to a boolean
  variable, to be checked instead of reading the flag twice.
- Updated the description to clarify the reason for the timeouts on
  reset is due to the mailbox being destroyed.

v1:
https://lore.kernel.org/intel-wired-lan/20241218014417.3786-1-emil.s.tantilov@intel.com/

Testing hints:
echo 1 > /sys/class/net/<netif>/device/reset
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index d46c95f91b0d..7639d520b806 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3077,12 +3077,21 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
  */
 void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 {
+	bool remove_in_prog;
+
 	if (!test_bit(IDPF_VC_CORE_INIT, adapter->flags))
 		return;
 
+	/* Avoid transaction timeouts when called during reset */
+	remove_in_prog = test_bit(IDPF_REMOVE_IN_PROG, adapter->flags);
+	if (!remove_in_prog)
+		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
+
 	idpf_deinit_task(adapter);
 	idpf_intr_rel(adapter);
-	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
+
+	if (remove_in_prog)
+		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
 
 	cancel_delayed_work_sync(&adapter->serv_task);
 	cancel_delayed_work_sync(&adapter->mbx_task);
-- 
2.17.2

