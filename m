Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE988999D60
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 09:03:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C71BB82071;
	Fri, 11 Oct 2024 07:03:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ppFkd00D4MOQ; Fri, 11 Oct 2024 07:03:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28BB482051
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728630229;
	bh=vXbwrvuVVYSOXt8OeVX9XIUBurcIxMEtdJr0BKRevNU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=o02ETVDGREOJMNpdkIxqZb0zUO9OCcAVwTdTwkbE53boRr+V8XZIloskT8FhfX9U9
	 Uk8vkubDtWYugfeBXJV1za9XyIWQwI1dc8A3Q9HHjDhIWJekWQObNAwGuGrG9g4Vjk
	 sA4AP2f8hypUCpaO9zm3VaE0SlILeGS9IftMalNWMCMsEDQ3BfHaxFErKlvP8XMMoU
	 PHvZygCvcztcPYqScxouFrkXkSdfarfjOedPK8AZ9SGgcUw/ovGwNg2aQCsgQAuevc
	 pMiqfZ/OFExEsNGbiVxJFhRylE40d2i1WoNm53KClZSPPVpxnfCh8MNK5rqLPGOvM8
	 bBPsFoSUJ+vnA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28BB482051;
	Fri, 11 Oct 2024 07:03:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7B61F1BF385
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 07:03:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74FC940543
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 07:03:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tkIifZiZN1oM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 07:03:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2C164403ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C164403ED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2C164403ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 07:03:45 +0000 (UTC)
X-CSE-ConnectionGUID: mCoBw1NwQwuoqG8CP4MnjA==
X-CSE-MsgGUID: ZbI9Ba6tT0SXPDc4kwfI3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="27913404"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="27913404"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 00:03:46 -0700
X-CSE-ConnectionGUID: S1xeL+sEQxiAhYSsb1H1mQ==
X-CSE-MsgGUID: MmuDoe7ySnSd4sXEK3Xgyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="100157742"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa002.fm.intel.com with ESMTP; 11 Oct 2024 00:03:30 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Oct 2024 09:03:28 +0200
Message-ID: <20241011070328.45874-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728630227; x=1760166227;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gIwZN5qhCoc1qKjbX/TX6+2K2sh+0F1AM3i5JM3TVNw=;
 b=amqwFs0VNdtTRHFImlf0m3P40xa627hPfriRzqWQOI43O4+26GxYMB34
 fV/WhsmtiDl7RCGlPttIn+MfXdBKftFlmfRpmImfHSfAUs5cLYriZvzN2
 3xJukzEihMhT9jHdzGLYaOZ6XgjyW9asRxW2JbyWZYAG6x2xasEHhONlZ
 K9Nxg4TcLPNVMe/rCe3k7NL1NLYrMMFCGY4I303onvm7JbBszENVHMi49
 fgeACkqFial5QYiX1LqydDDigyvnCOV02lDC+NXgZG+XvUbKw8P263t/k
 dxtDGIo9c0tddgi6FFE4EFMzFeX/sVTxG0ID8oxwJxs/c+fUrgfkp6LZy
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=amqwFs0V
Subject: [Intel-wired-lan] [iwl-next v1] ice: add recipe priority check in
 search
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
Cc: netdev@vger.kernel.org, marcin.szycik@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The new recipe should be added even if exactly the same recipe already
exists with different priority.

Example use case is when the rule is being added from TC tool context.
It should has the highest priority, but if the recipe already exists
the rule will inherit it priority. It can lead to the situation when
the rule added from TC tool has lower priority than expected.

The solution is to check the recipe priority when trying to find
existing one.

Previous recipe is still useful. Example:
RID 8 -> priority 4
RID 10 -> priority 7

The difference is only in priority rest is let's say eth + mac +
direction.

Adding ARP + MAC_A + RX on RID 8, forward to VF0_VSI
After that IP + MAC_B + RX on RID 10 (from TC tool), forward to PF0

Both will work.

In case of adding ARP + MAC_A + RX on RID 8, forward to VF0_VSI
ARP + MAC_A + RX on RID 10, forward to PF0.

Only second one will match, but this is expected.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 79d91e95358c..6a4a11fa5f14 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4784,7 +4784,8 @@ ice_find_recp(struct ice_hw *hw, struct ice_prot_lkup_ext *lkup_exts,
 			 */
 			if (found && recp[i].tun_type == rinfo->tun_type &&
 			    recp[i].need_pass_l2 == rinfo->need_pass_l2 &&
-			    recp[i].allow_pass_l2 == rinfo->allow_pass_l2)
+			    recp[i].allow_pass_l2 == rinfo->allow_pass_l2 &&
+			    recp[i].priority == rinfo->priority)
 				return i; /* Return the recipe ID */
 		}
 	}
-- 
2.42.0

