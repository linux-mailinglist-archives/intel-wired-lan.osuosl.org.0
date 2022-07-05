Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC32556622D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 06:19:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E12740981;
	Tue,  5 Jul 2022 04:19:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E12740981
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656994766;
	bh=wIqqvnhzKMh3jtOWMiuEBtS77xXJ3zx9IMaOSCDquwA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=S9LKWdkbcPL3vc/ifb4foDqWp6W0TsY8c1nQSeNfp1JJVdPev6Rb0r60EEZVMihtT
	 njDbKIHP94N5oZZJnDro8SEtwt379MszRMZmwoRXKO0P92od0VWnoR3caIzPKRqUpr
	 fIIq72/MHMRwvtOu7eRcQC4NsFWiNEQk/lTKncLWvovsVrmNaZZIXbsZZEW+q/7kyt
	 dea0qS7tTBO5OHQeBgvmlDTreVexUorG8Agk6n0AbPWkJzPHtgqPVJIT3DEMCWOgc7
	 JI1gje94gio6r5FqtfVYr2EfvyVdnwRzrpzXfSkQSVDKv3igP6ajL5Z7kjKu5flnMH
	 LfXb26a/tAD2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FnPtOZ2an34J; Tue,  5 Jul 2022 04:19:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4406340928;
	Tue,  5 Jul 2022 04:19:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4406340928
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBA9C1BF32B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 04:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B0E3640166
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 04:19:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0E3640166
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l30yhhNmJcmz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jul 2022 04:19:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E74F40131
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E74F40131
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 04:19:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="344924911"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="344924911"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 21:19:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="838981377"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.183])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jul 2022 21:19:16 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Jul 2022 07:19:10 +0300
Message-Id: <20220705041910.3849895-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656994758; x=1688530758;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UunJRAOyaCOq5xz5LI5VO58CWQtt2XkwNVJthLthTso=;
 b=SZ4KtXL2V/J2zIoPFO2smPAgWWjHY+7RfbCau+HEMnEoLlq4n1KfD72d
 0YvpN/3BroOat1mJr3MeFtnE+tbtRBZs1F8SuaxVv424vuwRCykpwK9yL
 WseeBIcRlGdqNee9yM3ZwhFszr4zOGdgkqlSxUQgKpREDp+mMjL6lZolv
 GVWVj4n6VtGZspGykmGniMlstyI7OScG5nhX3inEGYS8LLwWbIWWizea2
 wYlcS2iPlTGDK71g4z6eFKjbvSJwBkROgUPse0NT7zZJmPFcsfWLeO2Ff
 rJ40BWn7NN0HgF5QlFoWYBL81iCucE3RmTmgJBxaugj104KRvxyVUnuJW
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SZ4KtXL2
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove MSI-X PBA Clear
 register
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

MSI-X PBA Clear register is not used. This patch comes to tidy up the
driver code.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_regs.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 026c3b65fc37..c0d8214148d1 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -59,9 +59,6 @@
 #define IGC_IVAR_MISC		0x01740  /* IVAR for "other" causes - RW */
 #define IGC_GPIE		0x01514  /* General Purpose Intr Enable - RW */
 
-/* MSI-X Table Register Descriptions */
-#define IGC_PBACL		0x05B68  /* MSIx PBA Clear - R/W 1 to clear */
-
 /* RSS registers */
 #define IGC_MRQC		0x05818 /* Multiple Receive Control - RW */
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
