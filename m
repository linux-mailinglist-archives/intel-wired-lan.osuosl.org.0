Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF17B30D0A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 05:53:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39330407E8;
	Fri, 22 Aug 2025 03:53:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id haDfkKjQUAvm; Fri, 22 Aug 2025 03:53:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9C3D407DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755834824;
	bh=BR7ubVm7MDp/gjnbkHuOY5U8Q4vCtoLkLOfrNJPOsl4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oFBdn52/GcWuOsgNHIcZTfikc7JR1otU8u9O96u1OnIvLj/tNDmN9TxpI3rAyyy9W
	 e8lL6+b0aZtfupIdduYM8tiFXwyFrulk7q7F8YyrckWoewwh0NXVwgwNPdEdEw5e5a
	 /9OIlSZOqae6sl1SI0A0Jrl8nMDDOf5y16WZlS/m5d8J5m4Pz3oWEf3tHy6cOWmZmR
	 Dj95nfvcVtVJpopcqaep6qWcePGO/9cKv97qUkGMLK1lmONr+4FfV54g2F4aZnydc6
	 7gn7EcUigckbY//6pmYi9gbkiW0JDGb1S2cFHFxrsA0sIGZLSMgY2FtZuIzp/+SnhW
	 1wK+YLjlglbtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9C3D407DA;
	Fri, 22 Aug 2025 03:53:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C11EDD8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 03:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B36A760820
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 03:53:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fTmsu2vcC_yr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 03:53:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E34A460823
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E34A460823
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E34A460823
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 03:53:41 +0000 (UTC)
X-CSE-ConnectionGUID: h6cT8rnpSRqyew/HlrmAgw==
X-CSE-MsgGUID: 6r1aXLkCT42qouVQMmN7ag==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="69508587"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="69508587"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 20:53:41 -0700
X-CSE-ConnectionGUID: iIxUq8mwQEuXhg0dErotEg==
X-CSE-MsgGUID: XF27WU2PRxCP7AoMA8Es5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="192253219"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa002.fm.intel.com with ESMTP; 21 Aug 2025 20:53:40 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com
Date: Thu, 21 Aug 2025 20:52:48 -0700
Message-Id: <20250822035248.22969-3-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20250822035248.22969-1-emil.s.tantilov@intel.com>
References: <20250822035248.22969-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755834822; x=1787370822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=wbVjOsY5Z7wq4og65pAyGpbZsbKIX8V0zwAOY4sBADY=;
 b=bv/3xzwTabTgJcrFAI+OtLAOCvtBFfxSGFOH9LRmqJWll0pwpOUP2TRY
 T1xhS6OkN1UJruWu4jpOSyxoJePb0VrZwusju7KpO2Ix67MsWn/8r+yJ8
 vU8gTHrbY0VSIVGlCHBEshhPNfS+wOI8I5P9zNS2FeM+vCgk6T2CDiL2x
 9IYx7Vk9PEoeY1K7OUBxzZFEepKGSP8vZLlLKQdEMqSKDSPvVUab+y9+K
 X4uRNNNoT26src/d31LkfIlCmx+1zVeFdLoOKa26ia682r4hhIP7nzDPY
 IwaN066GRQjuabqOZeWQFSJLgA4A7fYLdBJEwa+ajTOElmGKaM641Ie+m
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bv/3xzwT
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix possible race in
 idpf_vport_stop()
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

Make sure to clear the IDPF_VPORT_UP bit on entry. The idpf_vport_stop()
function is void and once called, the vport teardown is guaranteed to
happen. Previously the bit was cleared at the end of the function, which
opened it up to possible races with all instances in the driver where
operations were conditional on this bit being set. For example, on rmmod
callbacks in the middle of idpf_vport_stop() end up attempting to remove
MAC address filter already removed by the function:
idpf 0000:83:00.0: Received invalid MAC filter payload (op 536) (len 0)

Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Chittim Madhu <madhu.chittim@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 89d30c395533..01ab42fa23f9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -888,7 +888,7 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 
-	if (!test_bit(IDPF_VPORT_UP, np->state))
+	if (!test_and_clear_bit(IDPF_VPORT_UP, np->state))
 		return;
 
 	netif_carrier_off(vport->netdev);
@@ -911,7 +911,6 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 	idpf_vport_intr_deinit(vport);
 	idpf_vport_queues_rel(vport);
 	idpf_vport_intr_rel(vport);
-	clear_bit(IDPF_VPORT_UP, np->state);
 }
 
 /**
-- 
2.37.3

