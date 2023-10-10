Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AF77BEFB8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 02:25:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 522A6417D1;
	Tue, 10 Oct 2023 00:25:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 522A6417D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696897541;
	bh=kfMIaNswgfDGMhvm5sNBgxNxqGLUhJjOBGJA2NR6mAI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BXTKApD1wvD309JF/LEeKz2s0DAKFS5N92Z4/9jGJJ/e8DnQkISSivLIx8lpME5VF
	 B/e1UIcZrMFje97Mx4eiZ+nq2+x5em/1FHCNxl9EPfruk5xUKDEHc56PiihBkHKPka
	 nqZUs2R+D9POGLaoEjRIfpC80dgoyH0vCfMkpIccF4iljvOpb0T07HZxcR3omx3pak
	 1hK6iaZeQIcE789fb4wuUmBZ4gZaeXAqhwlLrm/6ql6issTqUI0NSvRS9BBpDWlf1i
	 f/aaeXPfVTnVTR+toZcq9Cakbsk/FjJhZeukrWmS/dSlyTZYNpwjCxrUOEdORd0AXR
	 8ssQ77nJqiAlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id swYjt_CyN1T6; Tue, 10 Oct 2023 00:25:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D46C140895;
	Tue, 10 Oct 2023 00:25:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D46C140895
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B482C1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B10781EC0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B10781EC0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gAd4IParR8DM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 00:25:21 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 586C381EBE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 586C381EBE
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-688-7LLVh40ePV6RJUm18uI8NA-1; Mon, 09 Oct 2023 20:25:17 -0400
X-MC-Unique: 7LLVh40ePV6RJUm18uI8NA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 881FC3800BB4;
 Tue, 10 Oct 2023 00:25:17 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.226.226])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 51B601C060B0;
 Tue, 10 Oct 2023 00:25:16 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 Oct 2023 02:24:43 +0200
Message-ID: <20231010002444.43507-5-mschmidt@redhat.com>
In-Reply-To: <20231010002444.43507-1-mschmidt@redhat.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1696897520;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pbOFWsdbKeCJ713QUwE/Lp1fsiVbfpLA1Of4SdIHCCY=;
 b=GtHh/przg0r2Reu8Qc974sSkYZnyiO5l4DmJY/Ss+VchbuA09yc7dI5+h+adgGVIgw9xMZ
 DgQX8jo+6q/oZIVyLcBPYatpQr2SiGUGTC+SA/kvQvU+5yH29HgO42lp/cNU4EDU8UHE9i
 LX71zlNNTRlGht4tPCud2+t9OGxn+V0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GtHh/prz
Subject: [Intel-wired-lan] [PATCH net-next 4/5] iavf: in iavf_down,
 disable queues when removing the driver
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Radoslaw Tyl <radoslawx.tyl@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In iavf_down, we're skipping the scheduling of certain operations if
the driver is being removed. However, the IAVF_FLAG_AQ_DISABLE_QUEUES
request must not be skipped in this case, because iavf_close waits
for the transition to the __IAVF_DOWN state, which happens in
iavf_virtchnl_completion after the queues are released.

Without this fix, "rmmod iavf" takes half a second per interface that's
up and prints the "Device resources not yet released" warning.

Fixes: c8de44b577eb ("iavf: do not process adminq tasks when __IAVF_IN_REMOVE_TASK is set")
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 0b808fa34801..2ab08b015b85 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1440,9 +1440,9 @@ void iavf_down(struct iavf_adapter *adapter)
 			adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
 		if (!list_empty(&adapter->adv_rss_list_head))
 			adapter->aq_required |= IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
-		adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
 	}
 
+	adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
 	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
 }
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
