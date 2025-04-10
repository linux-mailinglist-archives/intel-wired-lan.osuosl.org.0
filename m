Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5419A84BE9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 20:14:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EE36606E6;
	Thu, 10 Apr 2025 18:14:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id paTAq3bfA8gF; Thu, 10 Apr 2025 18:14:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A97036078F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744308850;
	bh=AnHdUMO/X0U+1Vz53kfn/FXNNbatArF3HPyv0z9rRRo=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tkQsHM419KSW2psqVGQnLwYQ3kgvloXjr6n3hZ5HYna66MaD5W0R479ccq/op4Qrs
	 IQ955M5QOXABzE9a29iDHR37kzLwxnzK4vYS8EtEQ1wjW0eouG175vfD8b/xnb7fTO
	 9B/Ykyc+N1AkzKCOl//VUgpBC5UacTXLKpHYGqoYpdgzEN1KFM2vVsgijdLtFj0yS2
	 cfOK7iW7golOcn6CMxB3jm4UWLY8lVbgWa84evSb5fuSZD6WmwvgVbt4On3Yt2K4Qk
	 Fva60imCszW0m85RIYyifxR+kpPpR5b6eejTW8FcvjxfZNfbknZ5Ur6dDf5cV57PeB
	 h/W2D4O+q6OPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A97036078F;
	Thu, 10 Apr 2025 18:14:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2EA25138
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 18:14:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B6574016C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 18:14:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZKxCprsK5iSt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 18:14:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 96FDF400DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96FDF400DC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 96FDF400DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 18:14:08 +0000 (UTC)
X-CSE-ConnectionGUID: odbLoj4mT0iLeSPRq45Cpw==
X-CSE-MsgGUID: gWbD39J7Tg6DOy8vgfZZdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45745468"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45745468"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 11:14:08 -0700
X-CSE-ConnectionGUID: 3Q5Z7TFeSGae9q+jImrf4Q==
X-CSE-MsgGUID: OIYOgn+KRHWZ2kJnS6gIqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="152157380"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 11:14:08 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 10 Apr 2025 11:13:52 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250410-jk-fix-v-num-mac-count-v1-1-19b3bf8fe55a@intel.com>
X-B4-Tracking: v=1; b=H4sIAF8K+GcC/x2M0QpAQBAAf0X7bOvucpJfkYdzFkuW7pCSf3d5n
 JqZByIFpgh19kCgiyNvkkDnGfjJyUjIfWIwylhVaIXzggPfeKGcK67Oo99OOdBa53tdVbo0HaR
 4D5S0f9yA0AHt+37yV8gQbQAAAA==
X-Change-ID: 20250410-jk-fix-v-num-mac-count-55acd188162b
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 netdev <netdev@vger.kernel.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744308849; x=1775844849;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=mh8IoFcusFGSw+JNDQTgbWfOeyGjRHhF8WynZnAoDR4=;
 b=IBqZo0D62EA4YEifMkCCv4GKjlHf0MGozpCiPqmZ5M8ZJkTbjuqIto+r
 YzVzhUBd6W9foLcbu+tPdesjYsz5m99Z/xp/92oAaDo361EoPFEOqFRA2
 ezP+uEvbsksHmnCPvZVf2YO3EOkctHvr5IkarwWZnE1rFPvklwGcUgvkt
 4W9p28D2rX8qwt+bgw5UmmgEmgDx1VyyeMfrFsTYA++IE9cfXAaPQBdLf
 ofsKXfmBLP6T8eZVqmnx8kbGWbQ8Nd/d7ejKm8XvOhyPuQE+YRzMpPHpt
 5t6SgxRWey6+c43NxD1sraaaD1UuqasZSOjs23m7LIvEdV2XlBYSl9eOL
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IBqZo0D6
Subject: [Intel-wired-lan] [PATCH net] ice: fix vf->num_mac count with port
 representors
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

The ice_vc_repr_add_mac() function indicates that it does not store the MAC
address filters in the firmware. However, it still increments vf->num_mac.
This is incorrect, as vf->num_mac should represent the number of MAC
filters currently programmed to firmware.

Indeed, we only perform this increment if the requested filter is a unicast
address that doesn't match the existing vf->hw_lan_addr. In addition,
ice_vc_repr_del_mac() does not decrement the vf->num_mac counter. This
results in the counter becoming out of sync with the actual count.

As it turns out, vf->num_mac is currently only used in legacy made without
port representors. The single place where the value is checked is for
enforcing a filter limit on untrusted VFs.

Upcoming patches to support VF Live Migration will use this value when
determining the size of the TLV for MAC address filters. Fix the
representor mode function to stop incrementing the counter incorrectly.

Fixes: ac19e03ef780 ("ice: allow process VF opcodes in different ways")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
I am not certain if there is currently a way to trigger a bug from
userspace due to this incorrect count, but I think it still warrants a net
fix.
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 7c3006eb68dd071ab76e62d8715dc2729610586a..6446d0fcc0528656054e506c9208880ce1e417ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -4275,7 +4275,6 @@ static int ice_vc_repr_add_mac(struct ice_vf *vf, u8 *msg)
 		}
 
 		ice_vfhw_mac_add(vf, &al->list[i]);
-		vf->num_mac++;
 		break;
 	}
 

---
base-commit: a9843689e2de1a3727d58b4225e4f8664937aefd
change-id: 20250410-jk-fix-v-num-mac-count-55acd188162b

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

