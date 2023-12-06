Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD058076E5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 18:48:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2BC5408BC;
	Wed,  6 Dec 2023 17:48:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2BC5408BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701884898;
	bh=5rmkbt5CeD5G4uCzcdy4r+tb4pRrNUJGO+n24tqCanE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ny8TqAQ+HLfA9mtvjga1AjzxN6tquwlC7aQnvMUJ8pAcCU+99lksiOdtyx75TpIBT
	 b4LuZ3mKjwbmw2FROh3XFrb4/aMgb9Z6zLtz7FabqLQ0U2SoeZ6eqcfESS3LVqbCOD
	 iecDY25t8v5KanadtFTIMCFlVV94bRo6Z7hU+6+IeyoJOliE8UfNpfcBAjuDT2g5eZ
	 NLjYy7ihd9WHX17+zzEKW8SMIEGzTUTetXmAjy/mspiZ3k4vU7VMl/3Z5yZ5GmR2xh
	 tiiLgGWOos/A5DlPVvj4AQ2dQPzyt0X3nl4EK+tIX96sacY++v/p1cQlSfzfw0iVtz
	 Qba0BIV/9niTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R-ZGi44IGsNP; Wed,  6 Dec 2023 17:48:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B556F408A0;
	Wed,  6 Dec 2023 17:48:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B556F408A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 825731BF33E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 17:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A01D61546
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 17:48:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A01D61546
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hppT8u0IsgQZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 17:48:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A798C61542
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 17:48:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A798C61542
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="7399507"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; 
   d="scan'208";a="7399507"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 09:48:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="764806498"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="764806498"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga007.jf.intel.com with ESMTP; 06 Dec 2023 09:48:08 -0800
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 708EE34331;
 Wed,  6 Dec 2023 17:48:03 +0000 (GMT)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Dec 2023 18:39:36 +0100
Message-Id: <20231206173936.732818-1-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701884892; x=1733420892;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XKczPfVFDpxiCBqQU2b3X2l9G0j9/ijvgX1GahluUT4=;
 b=R76fphFUDVD1MYNEVa09oLtSc097dFjlY1E1QlTSPeLP4qO/b1glOcnp
 w59x2+Veizba8zPCiT8Bjwhqu7oaOhqJYIDttkm6CeRYxomn3tpnwLcfy
 pLNxLX1Ir38ttHjJVHrMCdFe2bdzHiStyChSxb+0SX/RkA1R9wSnlFMcL
 Rs/DwYrH+kHU1q3JRLUMF3uUtXP4lLGultmmQNRrq6faiT7Qh3LEee3+i
 12r0Oh4EgSgYCbC3XEdnld2i1oABpNL3Zr/lM1D0t3q8B2IXTEf7R7l77
 NVsT8YJawOe5IdiRMVV60SYXgU7L0Ta6Uy0nyhMZn/1G24LJjMGjF++kq
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R76fphFU
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Do not get coalesce
 settings while in reset
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
Cc: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>, netdev@vger.kernel.org,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>

Getting coalesce settings while reset is in progress can cause NULL
pointer deference bug.
If under reset, abort get coalesce for ethtool.

Fixes: 67fe64d78c437 ("ice: Implement getting and setting ethtool coalesce")
Signed-off-by: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
---
Changes since v1:
 * Added "Fixes:" tag
 * targeting iwl-net instead of iwl-next
---
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index bde9bc74f928..2d565cc484a0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3747,6 +3747,9 @@ __ice_get_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 
+	if (ice_is_reset_in_progress(vsi->back->state))
+		return -EBUSY;
+
 	if (q_num < 0)
 		q_num = 0;
 
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
