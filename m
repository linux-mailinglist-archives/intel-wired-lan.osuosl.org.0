Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D70258C651
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Aug 2022 12:24:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5ED2F4097E;
	Mon,  8 Aug 2022 10:24:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5ED2F4097E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659954272;
	bh=rKI8dQGAq8Ln/ZqO1p7fHUkzlH0OrFZ1Jeph3ZiPVRA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4OCXveQrhHfZhzp4TsVlDY7JUZIca9VSbJ3k8Kns2FeV6AzU/6EGK0kfqllDb4hH1
	 82lsAQjldxaCIFrCf6O62BysW0AK4C13UsS2SqVgiKUL45CuK41XkIy9n5lHIIXy9v
	 6rCdQqQ9qe32mKIrAYi0oqZxrFUYZkparMoqkWGOVxnfAT6OSH4b03tT7MsasvwDNK
	 uKD62heLdaTIHZlTbUDGNPJLXnassxFUZkuHoBVZjlKo8IbOvwxvjkGilW5N/wfP05
	 taRcqAD0wpY82/jbEXRlE8k69MvFipJ6RkYBIGWLK6Q+o11YyMzVYOSAvVgHUrU80b
	 VsqjqNFY8gR+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U1jZDZjjPrrd; Mon,  8 Aug 2022 10:24:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F643408EF;
	Mon,  8 Aug 2022 10:24:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F643408EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 03A051BF36D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 10:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE8E5813A5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 10:24:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE8E5813A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GUoS1JX_le7w for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Aug 2022 10:24:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F7A48137C
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F7A48137C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 10:24:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10432"; a="291335536"
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="291335536"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 03:24:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="601039555"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.183])
 by orsmga007.jf.intel.com with ESMTP; 08 Aug 2022 03:24:24 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Aug 2022 13:24:21 +0300
Message-Id: <20220808102421.1651482-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659954266; x=1691490266;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7WJiD2x1WMHVlyq86cB+xOtYbRkNzE8nrE87DWmu51k=;
 b=TU/XvDpPpIllINRPCwDsf9tamit4/hj1WlEoI9bYuLXSs2MSgr6p0CF6
 X9ERd2eK+IvUahg8RZh6CZ2RRcn7nM7DFqICfCz/TYS78EmhhUvTaoXyB
 5fIyw4ERUiirGPx1wqCzLmFZ7RJWyfeNFNBxp5jVszJZvXn5sXVy79QTg
 Lsajsw45CKF/73Xt8u2jHfNLQKCUL7PT36hIJdsKs6dnYlSx8w1zL9yM+
 KKaDWHV2QfkAc6XyUdhyRFVAf6fQD8R/YqqO9xq1wbYlgCP/bQVB5GFzm
 raBr2y1qj/+H/+0cK9DWH+rKx2uU+yjuLZdF0eKB+1mF3nTA77i46pDQ8
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TU/XvDpP
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove IGC_MDIC_INT_EN
 definition
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

IGC_MDIC_INT_EN defnition is not used. This patch comes to tidy up the
driver code.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 5c66b97c0cfa..4f9d7f013a95 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -610,7 +610,6 @@
 #define IGC_MDIC_OP_WRITE	0x04000000
 #define IGC_MDIC_OP_READ	0x08000000
 #define IGC_MDIC_READY		0x10000000
-#define IGC_MDIC_INT_EN		0x20000000
 #define IGC_MDIC_ERROR		0x40000000
 
 #define IGC_N0_QUEUE		-1
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
