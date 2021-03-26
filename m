Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAFC34AECA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 19:52:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB1F484CBB;
	Fri, 26 Mar 2021 18:52:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sKqgGC6w-Exe; Fri, 26 Mar 2021 18:52:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB64A84C80;
	Fri, 26 Mar 2021 18:52:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 29AAE1BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 18:52:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74ABE405F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 18:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bJTSiQ7uN_cZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 18:52:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ECAB94027D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 18:52:12 +0000 (UTC)
IronPort-SDR: d3tqErqdSbMmHtmWs0oOz75pU5sKCgjXIRJS/h9VDw6F3cTTWSqhEAcb7yoNnZ5DqSDv3s1fgR
 I6WTxv4mduew==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="255196419"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="255196419"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 11:52:11 -0700
IronPort-SDR: sl2b4Kco4aexhUjCDsnxNDvc16K30v72pEWUhaEqHf9X4eoPIa9jsgrr3KQlBYkKYPjGyvNOip
 FJHOA8ohxKpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="436979825"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by fmsmga004.fm.intel.com with ESMTP; 26 Mar 2021 11:52:10 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Mar 2021 19:43:41 +0100
Message-Id: <20210326184343.133396-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20210326184343.133396-1-arkadiusz.kubalewski@intel.com>
References: <20210326184343.133396-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix sparse error: uninitialized
 symbol 'ring'
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Init pointer with NULL in default switch case statement.

Previously the error was produced when compiling against sparse.
i40e_debugfs.c:582 i40e_dbg_dump_desc() error: uninitialized symbol 'ring'.

Fixes: 44ea803e2fa7 ("i40e: introduce new dump desc XDP command")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index d7c13ca..d627b59 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -578,6 +578,9 @@ static void i40e_dbg_dump_desc(int cnt, int vsi_seid, int ring_id, int desc_n,
 	case RING_TYPE_XDP:
 		ring = kmemdup(vsi->xdp_rings[ring_id], sizeof(*ring), GFP_KERNEL);
 		break;
+	default:
+		ring = NULL;
+		break;
 	}
 	if (!ring)
 		return;

base-commit: ca4303103f33952646218db4e0869e6f6aa1c840
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
