Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D6E7BEFB6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 02:25:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 956E540891;
	Tue, 10 Oct 2023 00:25:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 956E540891
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696897533;
	bh=bDm6MoCvGZpWmylxnzVUCUL0g9jg6vM1ClnI1NrlXeM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EcVwXQB+DfRaDq2s2xvKUmNhrgQef2xRXTOsaE0NBFd34H2iIj8hY5sbQTjbYDt8Z
	 JR+Yx0rUXv/bcbm6NLA5soVzgQ6eGh7SZYn8+Ej+Tcp/XPF8z1rcZdF/j7FCOiCMlt
	 CxFa7AEveIerBEwqVjOS6Wq2EBifjwOjwLT5Jdz+s0AMNKlmFiuWY7dMA3TTOWxlaB
	 wyhxqr5u5DVJk4V7xsxGjqCMG773SNWieBkeQpqMGRGG73ogmB3gO6RKzth3BMk6W7
	 rfhzXQSj+X1W/NR5WFBhq1Y/Seq3lmabFDKLEKt3SxcYlRTDOLf1vEFHLq+TGClDRi
	 2p4l+mINyQ4JQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JUhxo61e4R2k; Tue, 10 Oct 2023 00:25:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05D1641690;
	Tue, 10 Oct 2023 00:25:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05D1641690
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C4D6F1BF969
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AAFAE60A62
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAFAE60A62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a7KFyWybhHgr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 00:25:20 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B657360888
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B657360888
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-255-zEvhhJmaM_GzN2r31gbjLw-1; Mon, 09 Oct 2023 20:25:16 -0400
X-MC-Unique: zEvhhJmaM_GzN2r31gbjLw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 01620802C1A;
 Tue, 10 Oct 2023 00:25:16 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.226.226])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BC7791C060AE;
 Tue, 10 Oct 2023 00:25:14 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 Oct 2023 02:24:42 +0200
Message-ID: <20231010002444.43507-4-mschmidt@redhat.com>
In-Reply-To: <20231010002444.43507-1-mschmidt@redhat.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1696897519;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oB7J6KuP7dmtpDrK6PpotyuTWJ3SZ2/XYJgMXC5l9oQ=;
 b=e1DIMp/0qI8AGilHo9WMzZI95nUdAkUvCo62UcRISx/cePj+FtIsNe9CteqVJFSLYKCGfn
 cR2fe3HhwD6YTefNc3cAv3h89Xv03zOppt9Jn9oblUHhOErkYQh6U3p5E4LA1C5Z50l/9W
 2KV9MNGhHH3dJ6aSSXMHQSCyP0FZVH0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=e1DIMp/0
Subject: [Intel-wired-lan] [PATCH net-next 3/5] iavf: in iavf_down,
 don't queue watchdog_task if comms failed
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

The reason for queueing watchdog_task is to have it process the
aq_required flags that are being set here. If comms failed, there's
nothing to do, so return early.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 03156ca523fe..0b808fa34801 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1420,8 +1420,10 @@ void iavf_down(struct iavf_adapter *adapter)
 	iavf_clear_fdir_filters(adapter);
 	iavf_clear_adv_rss_conf(adapter);
 
-	if (!(adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) &&
-	    !(test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))) {
+	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
+		return;
+
+	if (!test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
 		/* cancel any current operation */
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 		/* Schedule operations to close down the HW. Don't wait
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
