Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C729ABBAA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 04:40:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95B306081A;
	Wed, 23 Oct 2024 02:40:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C3ZwMYF2_Lsb; Wed, 23 Oct 2024 02:40:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0BB3607F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729651202;
	bh=ZkaoFuitHvLoQYL8BD8XKhAraJnuQXBIl/mlceZiAdY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ku0npKUCJiZ/tvhQ0mkPcHYo3Hiy10bAiRxqgH0Nu7gE8dQp8NYWB+qufHYIS21sG
	 5xJyOhZbrEAwNNjyMc+t4zGQPnnXvofF3tDHKOC5QsecbQrIuqDbsDn6S4U3YhAJ3A
	 cgdStrhWk8bJHEG/qT+kPvPUb01MWROtbUsZHsnELale4qcbXNAKUT8N9IjC4L/GE7
	 b5i23LLVNJYRsJyL5kQ54C6cO59ToFa6oB+JspRkCELkgI8NS92IN/QPTZxsXdZLgf
	 CXazyHclOFLVJc84nouSPwG5wK86Y+vGXqtsIblr6S8rh4PaIc0HK5JIaFl3OjG62x
	 9MBjXPybZJKpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0BB3607F7;
	Wed, 23 Oct 2024 02:40:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 63E384C2A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 02:39:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4EDD9405F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 02:39:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nni2JMXlQnFW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 02:39:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 49ED640613
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49ED640613
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49ED640613
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 02:39:55 +0000 (UTC)
X-CSE-ConnectionGUID: 16lHOuOCRZ28b0ULa+r2jQ==
X-CSE-MsgGUID: E4yJH8t4RvaduEBEKLU/Ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32918044"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32918044"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 19:39:54 -0700
X-CSE-ConnectionGUID: iPrtyChSRcmLX7EU6P0mZA==
X-CSE-MsgGUID: UaHbyb1PSDeyGn7gyWiWww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="80396828"
Received: from timelab-spr11.ch.intel.com ([143.182.136.151])
 by fmviesa010.fm.intel.com with ESMTP; 22 Oct 2024 19:39:53 -0700
From: Chris H <christopher.s.hall@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: david.zage@intel.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com, vinschen@redhat.com,
 Christopher S M Hall <christopher.s.hall@intel.com>
Date: Wed, 23 Oct 2024 02:30:39 +0000
Message-Id: <20241023023040.111429-4-christopher.s.hall@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241023023040.111429-1-christopher.s.hall@intel.com>
References: <20241023023040.111429-1-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729651196; x=1761187196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YW8OJ6ncs4oJPqe5fuxKSZeeTTvjkAOWYEUbEfU4uus=;
 b=IDLOkCZeQOnnamarD/njjFLv9CJ3NYjYiFBTildGRJtrn30L1Xe4ivgt
 NXHFjiNrzc3N3bKAU8OkzTrRWVA/Fl1RCHdc5CFHSc6N5Or7dhgBnA8bk
 BS29p27SvsoD/Dtg6mUkiUipZ4P4eSajUhVfywjn9ea2mh43akwa1sdLJ
 c53+ldRcTClUYFzqCRIwjcgk8PDGZyK9dNTmitL4/++8SB8FED7eGlBTa
 8aFB2wP5vGVV1LHsVNNFl76R2tQhJEBh2imKZoZK80qavoxXX/jODwOA0
 uzcNiK3Ov4o4X2PJFzN98ZSRX4tf/G/jF6ZloMtburRLZ+16v6zy8ZFQZ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IDLOkCZe
Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/4] igc: Move ktime snapshot
 into PTM retry loop
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

From: Christopher S M Hall <christopher.s.hall@intel.com>

Move ktime_get_snapshot() into the loop. If a retry does occur, a more
recent snapshot will result in a more accurate cross-timestamp.

Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 00cc80d8d164..fb885fcaa97c 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -1011,16 +1011,16 @@ static int igc_phc_get_syncdevicetime(ktime_t *device,
 	int err, count = 100;
 	ktime_t t1, t2_curr;
 
-	/* Get a snapshot of system clocks to use as historic value. */
-	ktime_get_snapshot(&adapter->snapshot);
-
+	/* Doing this in a loop because in the event of a
+	 * badly timed (ha!) system clock adjustment, we may
+	 * get PTM errors from the PCI root, but these errors
+	 * are transitory. Repeating the process returns valid
+	 * data eventually.
+	 */
 	do {
-		/* Doing this in a loop because in the event of a
-		 * badly timed (ha!) system clock adjustment, we may
-		 * get PTM errors from the PCI root, but these errors
-		 * are transitory. Repeating the process returns valid
-		 * data eventually.
-		 */
+		/* Get a snapshot of system clocks to use as historic value. */
+		ktime_get_snapshot(&adapter->snapshot);
+
 		igc_ptm_trigger(hw);
 
 		err = readx_poll_timeout(rd32, IGC_PTM_STAT, stat,
-- 
2.34.1

