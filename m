Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB27F74DF6F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 22:41:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70E6D40BA2;
	Mon, 10 Jul 2023 20:41:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70E6D40BA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689021706;
	bh=UnJd4oiOpNhGnHcYemX7yKhuCukZzxVBTcMLFkNOBSc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iqZGbQ4QnfYGbaEfEhhCOvCCp1+KcqhJ4CMgqZZz30DMEqSiTApkdz1h/cVvS3n22
	 pzQbzNGAnHQ9qR9CoaHjUnxDXwnnMaAOh31FYU7Y8v3kKU9OFu/39g0YxwwWf10OR2
	 vvvfRq1P0Bq5rLkW8JNz55ZBRdkrXAbXAJ0iio2YEnatxOjuZboX6MDZrhK2W7qRg4
	 ZJeZVdo/yTHvneKov89sk4a1rUoUSe7eCXn05Xfle11G+TM85s/cxHj3bUd4KHNBUQ
	 1JXqK9jXI46IVb8AC9AfTGdYQKkGICcjqfngFBXaFu1D6kpA2F0tVushonBVKziVQf
	 7Vv7/y1tHnJNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mdpjiyytdqRr; Mon, 10 Jul 2023 20:41:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43E3040A80;
	Mon, 10 Jul 2023 20:41:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43E3040A80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 824191BF399
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 20:41:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5855340B85
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 20:41:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5855340B85
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a7jrvxBEZwnd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 20:41:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84ED340A80
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 84ED340A80
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 20:41:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="428146731"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="428146731"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 13:41:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="865513513"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="865513513"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 13:41:33 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 10 Jul 2023 13:41:28 -0700
Message-ID: <20230710204128.34847-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230710204128.34847-1-jacob.e.keller@intel.com>
References: <20230710204128.34847-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689021695; x=1720557695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6oe+nr+gsbkaXHYsr0nZ6mhL1rzO6pkDSSltoJEzRQE=;
 b=E9EnLKuKWHuMfdNfMJY4dkvbpSZJw2tgVzLRfLzAhjsLb64HSCLlt6rI
 da9frbtC2KHJN2pdtryC0VZZzwP0XHUiFXe/nHEp3XDjZh29TSuIBFWlj
 2/HHQ11yhbX3+RsjMN7gkbhJA+9OQho0MXVPgSUk3U3YcGXwspccckKjv
 /G0k9A8bK9pX7pJkmHM+ttHPOh9D1NAZjYqXh0CFpb+MuNmzqxnwZBUpr
 lARvVJy26pulEjUFMEHRA2mNjLvzP1Wx93kroP6/JVuqoolKrmRF/eTfN
 0vRv+722hnZqQiErUP21MPjWYQP6HwtwOpvRWFaR57DuJGLpLDZx3X9kY
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E9EnLKuK
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] iavf: check for removal state
 before IAVF_FLAG_PF_COMMS_FAILED
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

In iavf_adminq_task(), if the function can't acquire the
adapter->crit_lock, it checks if the driver is removing. If so, it simply
exits without re-enabling the interrupt. This is done to ensure that the
task stops processing as soon as possible once the driver is being removed.

However, if the IAVF_FLAG_PF_COMMS_FAILED is set, the function checks this
before attempting to acquire the lock. In this case, the function exits
early and re-enables the interrupt. This will happen even if the driver is
already removing.

Avoid this, by moving the check to after the adapter->crit_lock is
acquired. This way, if the driver is removing, we will not re-enable the
interrupt.

Fixes: fc2e6b3b132a ("iavf: Rework mutexes for better synchronisation")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 6d2f647066fb..f329f81c793d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3250,9 +3250,6 @@ static void iavf_adminq_task(struct work_struct *work)
 	u32 val, oldval;
 	u16 pending;
 
-	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
-		goto out;
-
 	if (!mutex_trylock(&adapter->crit_lock)) {
 		if (adapter->state == __IAVF_REMOVE)
 			return;
@@ -3261,6 +3258,9 @@ static void iavf_adminq_task(struct work_struct *work)
 		goto out;
 	}
 
+	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
+		goto unlock;
+
 	event.buf_len = IAVF_MAX_AQ_BUF_SIZE;
 	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
 	if (!event.msg_buf)
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
