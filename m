Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A2D65F48E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jan 2023 20:34:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8CB6A40C5D;
	Thu,  5 Jan 2023 19:34:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CB6A40C5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672947258;
	bh=7RV2RmAuoZtYvxKaYGRX8qsA0oT4CzrL7+DJjftljkI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zUujRHCSx3Pa9Ufe7jg0Z+hTP7D0T27KiBzE6xTxdvuEYmbm9DBJ4UqVhJA+C37m8
	 ctqJQ6WYCSOZksi/AJeoEXRx3j/cI8Qxfhrr3Z372/PBNHpE/MhdwYeaG2UWKr6eq7
	 Crr6F67Pp1jRjeQNmMxTzv5cjX3CtJUV58kV9EadIQZQoREqVNUWtBIAG61uBOxBHs
	 VaD1EwYf6sJR0htyvwWEfgshhx1thkFK1gqilHlLFJqOV/eyswuxWNBpaXWmDHaaZ8
	 M3S6wbwEvVAkthqjBwRuqtA+PICb7/bDr73yLylmAhm+M2ClogyTcz8Hv75i3+TPF7
	 4pDKZX+Dc5ugQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pRpVS_NXw1nu; Thu,  5 Jan 2023 19:34:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6158840C5E;
	Thu,  5 Jan 2023 19:34:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6158840C5E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C22C51BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 19:34:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 955EB40480
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 19:34:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 955EB40480
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tDKIELybqCDW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jan 2023 19:34:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB8AC40C5D
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB8AC40C5D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 19:34:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="324327075"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="324327075"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 11:34:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="718941153"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="718941153"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.241.12])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 11:34:09 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	benjamin.mikailenko@intel.com
Date: Thu,  5 Jan 2023 11:33:11 -0800
Message-Id: <20230105193311.79528-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672947250; x=1704483250;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f8HXvV0MsXLbhnEUTFfVy1XryztyhUtN9Hsr+C5wVyI=;
 b=Xq0NTSwXs731vhcoHdTCPqDJDLTKx9AjR2WcDkXy0xXeBVEeJ/sBM0Ja
 pFOX7ZW1CkBu9IwyDvOmO80sTbQM3OddBhNS6anvcffHRK1ihcRLfq59t
 jUwvq+4jnAQ6bIGg9B0aDKJhDmmszytLrCE6epkYfvil67zTh6WioLZeS
 Sd/PHjRuo743jKBl55k/o3BqYn54a7FWzMlIHAw02KKPnjkT1/hNmQS8u
 YCakHRoOwWkaOSxNU1G9JXQtzR2s7u50QNYHNdd5qRcb1r5gSQm0uu0J7
 AGClKZOZp+yQJhxXQW67UebJKmmUR2GoGfuM6vKwQ5HikqdfUZ+Ng9tqN
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xq0NTSwX
Subject: [Intel-wired-lan] [PATCH net-next] ice: Change
 ice_vsi_realloc_stat_arrays() to void
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

smatch reports:

smatch warnings:
drivers/net/ethernet/intel/ice/ice_lib.c:3612 ice_vsi_rebuild() warn: missing error code 'ret'

If an error is encountered for ice_vsi_realloc_stat_arrays(), ret is not
assigned an error value so the goto error path would return success. The
function, however, only returns 0 so an error will never be reported; due
to this, change the function to return void.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 716ade0e43a9..a09cb4ac39e4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3439,7 +3439,7 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
  * @prev_txq: Number of Tx rings before ring reallocation
  * @prev_rxq: Number of Rx rings before ring reallocation
  */
-static int
+static void
 ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi, int prev_txq, int prev_rxq)
 {
 	struct ice_vsi_stats *vsi_stat;
@@ -3447,9 +3447,9 @@ ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi, int prev_txq, int prev_rxq)
 	int i;
 
 	if (!prev_txq || !prev_rxq)
-		return 0;
+		return;
 	if (vsi->type == ICE_VSI_CHNL)
-		return 0;
+		return;
 
 	vsi_stat = pf->vsi_stats[vsi->idx];
 
@@ -3470,8 +3470,6 @@ ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi, int prev_txq, int prev_rxq)
 			}
 		}
 	}
-
-	return 0;
 }
 
 /**
@@ -3521,8 +3519,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi)
 		}
 	}
 
-	if (ice_vsi_realloc_stat_arrays(vsi, prev_txq, prev_rxq))
-		goto err_vsi_cfg_tc_lan;
+	ice_vsi_realloc_stat_arrays(vsi, prev_txq, prev_rxq);
 
 	ice_vsi_rebuild_set_coalesce(vsi, coalesce, prev_num_q_vectors);
 	kfree(coalesce);
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
