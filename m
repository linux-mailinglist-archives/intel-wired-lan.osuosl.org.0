Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB0E9D58E4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Nov 2024 05:41:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3987845A8;
	Fri, 22 Nov 2024 04:41:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tQfWObienPRR; Fri, 22 Nov 2024 04:41:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A472D845A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732250490;
	bh=k23sTSRu4Y0zsa21casF49aaxzDa2st51yCo2n07Az0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NnvxHUWEL1GSjspMJ3QgzxlNC9DoQONiX3P34pVRXqm3zldEBSlMIPd2Sv8EXhWe/
	 6IT9adIyFY5303CFXrzQ6t/qqdQB9y9AeY5YClSEqWnQ9HfH0UOYEkzbNZG2AR/OFg
	 tB9yqaG4fNBHrL1aQgqlcv6opeZfjbQS+RDoCqdArbzE68Q7JL2m1fTD14ehZhf6/x
	 9941K2UNJUo4ycQlFJDJwFrQePvWzGmrerrNWz4NnxbrAN0OL5sDdR526X3daXFJ83
	 RHzvIb/ZuZlDwr2dlk6kQupOHgDNIFzJMjfFQeAmnNuTYvWgiR0z3g/BCqktsdRQwH
	 mDJBAslcVjXbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A472D845A0;
	Fri, 22 Nov 2024 04:41:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 08BF8E11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 04:41:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DCB5B4094B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 04:41:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dcVFPrzfZeqt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Nov 2024 04:41:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9D9F1403AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D9F1403AD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D9F1403AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 04:41:26 +0000 (UTC)
X-CSE-ConnectionGUID: xD9cyCsTSuG9rc2G3/wWGw==
X-CSE-MsgGUID: 8ZvKJS/6TS288Ggg29n3/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="32251404"
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="32251404"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 20:41:25 -0800
X-CSE-ConnectionGUID: eZ02IdRWQoyH2f70A6/fZw==
X-CSE-MsgGUID: lkW0hzLUQpue7IcilY78Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="90265730"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa007.fm.intel.com with ESMTP; 21 Nov 2024 20:41:24 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 sridhar.samudrala@intel.com, rlance@google.com, decot@google.com,
 willemb@google.com, joshua.a.hay@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, aleksander.lobakin@intel.com
Date: Thu, 21 Nov 2024 20:40:59 -0800
Message-Id: <20241122044059.20019-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732250487; x=1763786487;
 h=from:to:cc:subject:date:message-id;
 bh=L091Ee2oV55tdzPagKshwB9ShTETaAJtaakuZ26vPUQ=;
 b=EmZO3MgDa/PJa8h/IRaPzNzwMSGZGrQeo5gE6V749qN+hCLUiilXeBXq
 Dk86LD7nw/sBT1YHNZm1y32Uy2Z4yuxpOu8s0hM1TyiqFs9gw7b6G4HIO
 GV+fcEHafpn2ehP0S8nY8K0of5PT9PWyjjMhFdmp29e7knlLe925WEcyM
 9tg1280mOd/IHaQcv0xKZAVPCdVliUGLGGFYKVNBieN8/+TBiBROrq1lc
 V4L+n69ej/xQ5PeEDX7Rb9TRllBXteKpbFG1qVz24VCeVM4WcuP+jOc4g
 cHE+scOTZ59v7xw4zS5oYev5N6ahSIKsMeDkFkiDQ9DciA4JmjObImY2K
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EmZO3MgD
Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: add read memory barrier
 when checking descriptor done bit
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

Add read memory barrier to ensure the order of operations when accessing
control queue descriptors. Specifically, we want to avoid cases where loads
can be reordered:

1. Load #1 is dispatched to read descriptor flags.
2. Load #2 is dispatched to read some other field from the descriptor.
3. Load #2 completes, accessing memory/cache at a point in time when the DD
   flag is zero.
4. NIC DMA overwrites the descriptor, now the DD flag is one.
5. Any fields loaded before step 4 are now inconsistent with the actual
   descriptor state.

Add read memory barrier between steps 1 and 2, so that load #2 is not
executed until load #1 has completed.

Fixes: 8077c727561a ("idpf: add controlq init and reset checks")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Suggested-by: Lance Richardson <rlance@google.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
Changelog
v2:
- Rewrote comment to fit on a single line
- Added new line as separator
- Updated last sentence in commit message to include load #
v1:
https://lore.kernel.org/intel-wired-lan/20241115021618.20565-1-emil.s.tantilov@intel.com/
---
 drivers/net/ethernet/intel/idpf/idpf_controlq.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.c b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
index 4849590a5591..b28991dd1870 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
@@ -376,6 +376,9 @@ int idpf_ctlq_clean_sq(struct idpf_ctlq_info *cq, u16 *clean_count,
 		if (!(le16_to_cpu(desc->flags) & IDPF_CTLQ_FLAG_DD))
 			break;
 
+		/* Ensure no other fields are read until DD flag is checked */
+		dma_rmb();
+
 		/* strip off FW internal code */
 		desc_err = le16_to_cpu(desc->ret_val) & 0xff;
 
@@ -563,6 +566,9 @@ int idpf_ctlq_recv(struct idpf_ctlq_info *cq, u16 *num_q_msg,
 		if (!(flags & IDPF_CTLQ_FLAG_DD))
 			break;
 
+		/* Ensure no other fields are read until DD flag is checked */
+		dma_rmb();
+
 		q_msg[i].vmvf_type = (flags &
 				      (IDPF_CTLQ_FLAG_FTYPE_VM |
 				       IDPF_CTLQ_FLAG_FTYPE_PF)) >>
-- 
2.17.2

