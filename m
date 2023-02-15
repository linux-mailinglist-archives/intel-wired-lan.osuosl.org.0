Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DACAA6979FB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Feb 2023 11:36:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1609040556;
	Wed, 15 Feb 2023 10:36:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1609040556
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676457399;
	bh=rXcXofpHbTuJqZYeHAOfFGOIMe4sMNSs+85XzoQdRgE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NP2rW3wYFh8Wi3hmoKRJC6KJaq3Q1Pr8dQr378Y7OBRI3vN0ljjENiza/Z4DRdcfK
	 zfKcU6dj4ciH/7OHEGEPJ2p/2bEY3jU4ze30CG6/blt0eyolj3z3dJ9R2d+h5ocFLl
	 L8+DeM+JXns6g9eWsJTBe6bzrPujmEsz5Wr9H9QGTp6foJMPpFtbLT1vCNEsLfXZvX
	 dzepubV/vp4jPDr+7Fdi7hebo84ys8XNUdREJpg5qQOMaU1FkcQAAS5C8prDNfao8o
	 XFb5XpZVR7UmqlGKgVlfRN3RIvP+qY6VyVQCQ7+psDXAqw/ztg9+n9upXYZ3lYMzBm
	 WzbPGzaRHIj5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yGTgNX8zf9pV; Wed, 15 Feb 2023 10:36:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C323400FD;
	Wed, 15 Feb 2023 10:36:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C323400FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 227541BF315
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 10:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EDEF84168B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 10:36:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDEF84168B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ojqXwNrCe4u4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Feb 2023 10:36:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4BC941622
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B4BC941622
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 10:36:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="330027241"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="330027241"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 02:36:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="915103066"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="915103066"
Received: from kkolacin-desk1.elements.local ([10.102.102.152])
 by fmsmga006.fm.intel.com with ESMTP; 15 Feb 2023 02:36:29 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 15 Feb 2023 11:36:25 +0100
Message-Id: <20230215103625.107743-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676457391; x=1707993391;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Dua1TZbRFN0Hzg63Hm5aNqGkzrVjwonYeyLLFFJGgSA=;
 b=naCr7+f/SddaE8zDdpSFdOny2c+kkp6y2W2a/n2/YVEDR6m6bUum2BFx
 s5jh5jeSusYdA1R1rPcrMx71jaVFBsc/kXVZFp/u2F/ePvJm+3Mk8VtIq
 Wxe45VsPAFoPsYqJKrg+WqoqI6rQnIdSETPSbKbv/0WBs7aKLqv37M8cu
 oBJFk8i8ol38mp/nNipBjmIzMZyCrbAV1M1JQr+27vdz/qTeYjJq04cph
 X1R1lSY2sXWZfWkY2Ppf3dAKZa5Rwr/lBcQPPwXSAD1ImxnhPjQJUUDpv
 8Tm3zON55Tm6xs4N7+dDgj9vayRKEOcO6VbPy8dBeb/MKJ3uPjx/jxDTR
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=naCr7+f/
Subject: [Intel-wired-lan] [PATCH net] ice: Write all GNSS buffers instead
 of first one
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When user writes multiple messages in a short period of time, the driver
writes only the first one.
Fix this behavior to write all pending buffers instead of only the first
one.
Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 8dec748bb53a..1fa7bf31816f 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -91,7 +91,7 @@ static void ice_gnss_write_pending(struct kthread_work *work)
 	if (!test_bit(ICE_FLAG_GNSS, pf->flags))
 		return;
 
-	if (!list_empty(&gnss->queue)) {
+	while (!list_empty(&gnss->queue)) {
 		struct gnss_write_buf *write_buf = NULL;
 		unsigned int bytes;
 
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
