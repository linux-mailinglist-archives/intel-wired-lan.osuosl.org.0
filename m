Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32FB7CB035
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 18:49:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F96341550;
	Mon, 16 Oct 2023 16:49:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F96341550
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697474977;
	bh=EL8PbwacxQWaTfhdakuxu0oEMmu4Q9rMdygVQ9sogfo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FaB94sLKtB1pr6KYS9hdE+x63w5a1SzdZCTaIO155dOHnlHZMf/EhK8sxYw+pVQiN
	 2mD0JohOaM+IJ4am2MQL7v3a+VysmRW34V5qkIpCVpsbUiiWyF18XEfeMZU3rwL62w
	 xtVICurh+vH8vmOPMwBsmghCTPnj3Oi+dCJbknkhag2vnK4GEwCzYg9Up3ONJWjqsN
	 NAElDCq8ynJeaBCcutVXEX2qOepaPi2pt9a+aG6b4QFF+iPZQLWPBlcMDd70qXHCZ7
	 27pK/QOA4s7RrX2jhvWqIxAF5tE3avU3CfdypITB0m2xJyK4bEKKFYFJ0ctg90P91Z
	 W3a9V2Y4WlARw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KgI9R1RNw_hg; Mon, 16 Oct 2023 16:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FC9540586;
	Mon, 16 Oct 2023 16:49:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FC9540586
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3647E1BF30F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B59B409E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B59B409E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2o0odo2MuzTo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 16:49:27 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E2F141550
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E2F141550
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-423-cRBapmiwP3qLcN52jGjL-A-1; Mon, 16 Oct 2023 12:49:05 -0400
X-MC-Unique: cRBapmiwP3qLcN52jGjL-A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3ADCD185A790;
 Mon, 16 Oct 2023 16:49:05 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.224.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0EAD9492BEF;
 Mon, 16 Oct 2023 16:49:03 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 16 Oct 2023 18:48:47 +0200
Message-ID: <20231016164849.45691-3-mschmidt@redhat.com>
In-Reply-To: <20231016164849.45691-1-mschmidt@redhat.com>
References: <20231016164849.45691-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697474966;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WxgT4ChEwfrDs1ogyZ0o9n+nDWStVYTy5SaXPfocvs8=;
 b=Wabwei6WxuTsj+C6+VWqqWvHOZ9sMIOt9EMN4ij5IUgPZKKa/96E7kWnYNWJCLIyjgSYUr
 JwNq6cHflkAI9eUbtI/msolM1ky4CZvjykUvvoaDYfIzHEi22NkyyEpUyS4o0Sn2FmA01b
 63Uuc02ln44oYkFE93pY5IKS6FDcLpw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Wabwei6W
Subject: [Intel-wired-lan] [PATCH iwl-next 2/4] iavf: use unregister_netdev
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use unregister_netdev, which takes rtnl_lock for us. We don't have to
check the reg_state under rtnl_lock. There's nothing to race with. We
have just cancelled the finish_config work.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index d2f4648a6156..6036a4582196 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -5171,10 +5171,8 @@ static void iavf_remove(struct pci_dev *pdev)
 	cancel_delayed_work_sync(&adapter->watchdog_task);
 	cancel_work_sync(&adapter->finish_config);
 
-	rtnl_lock();
 	if (netdev->reg_state == NETREG_REGISTERED)
-		unregister_netdevice(netdev);
-	rtnl_unlock();
+		unregister_netdev(netdev);
 
 	if (CLIENT_ALLOWED(adapter)) {
 		err = iavf_lan_del_device(adapter);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
