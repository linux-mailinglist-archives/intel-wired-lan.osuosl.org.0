Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AB77BEFB5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 02:25:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CA5F4169E;
	Tue, 10 Oct 2023 00:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CA5F4169E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696897527;
	bh=q3mxuzhmd4l/sRgJisb3Y+/CZ3pBQFx2pLh1Wc8Gv08=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ziw1MMezPnSIPVBOx5AQ7qMgKKR0WWxNlVKORDdr1O53Y+UpsuhSRBxOUZFbiyILH
	 oG0IQVRNb+UM6Aa+rTp2HhYBNUcjF68ayqUGW8WNV5I8/5OsN9UIkhjgJ6EX5LuYTX
	 0U5GJ8j1AwQM7tH+sZSeEfHPAcuojlcS+jPXle+Q71vEz99zEnz28/MKj62aPLEoGx
	 NyWqv212HXlA5Ry52xXLa7J55U0KmCYL2yyJAFKbykiARroIdW/OGkdGJM9Sq47C7Q
	 QoBtwm5LLhZjVcKMv69TItxISeLBa6SntHQiClEJZUwp/JVqwh1gNLLQnEjsr2pT7S
	 1CwfCERGBpIWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Fm5HY-907kf; Tue, 10 Oct 2023 00:25:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE5E940895;
	Tue, 10 Oct 2023 00:25:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE5E940895
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DBE351BF969
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B3E0F4088B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3E0F4088B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jtkebFx9ggBh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 00:25:17 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6668A404FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6668A404FF
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-668-t0RPAmU1N2CXbUXbMUG3JA-1; Mon, 09 Oct 2023 20:25:14 -0400
X-MC-Unique: t0RPAmU1N2CXbUXbMUG3JA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 541B2101A585;
 Tue, 10 Oct 2023 00:25:14 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.226.226])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 383741C060B0;
 Tue, 10 Oct 2023 00:25:13 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 Oct 2023 02:24:41 +0200
Message-ID: <20231010002444.43507-3-mschmidt@redhat.com>
In-Reply-To: <20231010002444.43507-1-mschmidt@redhat.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1696897516;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4oa5/8kgAxiFJ1yF2wFbJqAJI0jLTO/skUH2x3tWx7c=;
 b=HS7YHAQFTuCtV5Z20+N8obPYYzy6TATmhWG89thjN+Fks5A96Or2Ce39bM+8+gr1mn12Cj
 mdNj235mJaddRwwSElbRg1fGvwwd7qXfJBGwHstNiiUW/TBQtEIE6n2eXq/zU/LYx0wBlG
 jvMIGAiOeUHFQ084W+3YEV69SaQcbJs=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=HS7YHAQF
Subject: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
 mutex_trylock+sleep loops
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

This pattern appears in two places in the iavf source code:
  while (!mutex_trylock(...))
      usleep_range(...);

That's just mutex_lock with extra steps.
The pattern is a leftover from when iavf used bit flags instead of
mutexes for locking. Commit 5ac49f3c2702 ("iavf: use mutexes for locking
of critical sections") replaced test_and_set_bit with !mutex_trylock,
preserving the pattern.

Simplify it to mutex_lock.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 98ecf5d5a2f2..03156ca523fe 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3016,8 +3016,7 @@ static void iavf_reset_task(struct work_struct *work)
 		return;
 	}
 
-	while (!mutex_trylock(&adapter->client_lock))
-		usleep_range(500, 1000);
+	mutex_lock(&adapter->client_lock);
 	if (CLIENT_ENABLED(adapter)) {
 		adapter->flags &= ~(IAVF_FLAG_CLIENT_NEEDS_OPEN |
 				    IAVF_FLAG_CLIENT_NEEDS_CLOSE |
@@ -5069,8 +5068,7 @@ static int __maybe_unused iavf_suspend(struct device *dev_d)
 
 	netif_device_detach(netdev);
 
-	while (!mutex_trylock(&adapter->crit_lock))
-		usleep_range(500, 1000);
+	mutex_lock(&adapter->crit_lock);
 
 	if (netif_running(netdev)) {
 		rtnl_lock();
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
