Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BB07BEFB7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 02:25:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC97F417B3;
	Tue, 10 Oct 2023 00:25:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC97F417B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696897538;
	bh=kGztWSK+O7pqBwlJIvcf/yUpXIWX1YMAUZQ5hJeI0BQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Sk4QZzFv3bfFzS4HI6aJyyIivU7aZX/M9uxt48wTybBHJ7l5uJJACpGOPp202sExS
	 xjjwnaTkyNeJBUMPBzHNoPqn+6zdrzYoAiOhFTMpnUQpjdB9W7SPFNPLdkw155omTX
	 05x+sAnbcJ7qEQDnyp+wQheX4UUj9y9lEFfKu4o5IePi7XjXEvYFkbscOncEnc23YH
	 XaK8hgES1ZgaJW/ZnSMOT4uAV55r0WDaJula8CxtNaZMhFxMyCKLUsJLXylswnFrEB
	 FJJ2/GoPsXMVAbjBLUoSEAGrfghURFiyZ7oooYxWz8o1KZRd/UPWRmxWdam+vppdIN
	 JgsEwu8mhLClA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n4fcqOzCxody; Tue, 10 Oct 2023 00:25:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CF4940895;
	Tue, 10 Oct 2023 00:25:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CF4940895
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A15331BF969
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 79F3360888
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79F3360888
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g2WUbP5rE91q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 00:25:19 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 762C960803
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 762C960803
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-311-aEnB2nL0MLqXcUxPJEGQkw-1; Mon, 09 Oct 2023 20:25:13 -0400
X-MC-Unique: aEnB2nL0MLqXcUxPJEGQkw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D01193800BA9;
 Tue, 10 Oct 2023 00:25:12 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.226.226])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 746F91C060AE;
 Tue, 10 Oct 2023 00:25:11 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 Oct 2023 02:24:40 +0200
Message-ID: <20231010002444.43507-2-mschmidt@redhat.com>
In-Reply-To: <20231010002444.43507-1-mschmidt@redhat.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1696897518;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GjPE/BZ+D2DclOwpjOM+vS1FaEKwI/7Zra7kOQz7Kks=;
 b=iqSCXfbUSA1C2+kgcYTKBcsg1ZRr0kjkxI2icsSd9wANQ/LKXtUjJykNW/AIc0P1+sGxyu
 uNLcVrivIflH/WOHbJsVTwhVORzaI6036fc+vA9MJpSqTy1BavuN4LnPsgl+4745ydXSMl
 7Fyvqtd5sTO7nO3P2N5rlRZsIdrEh4g=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=iqSCXfbU
Subject: [Intel-wired-lan] [PATCH net-next 1/5] iavf: fix comments about old
 bit locks
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

Bit lock __IAVF_IN_CRITICAL_TASK does not exist anymore since commit
5ac49f3c2702 ("iavf: use mutexes for locking of critical sections").
Adjust the comments accordingly.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 43c47c633162..98ecf5d5a2f2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1276,7 +1276,7 @@ static void iavf_configure(struct iavf_adapter *adapter)
  * iavf_up_complete - Finish the last steps of bringing up a connection
  * @adapter: board private structure
  *
- * Expects to be called while holding the __IAVF_IN_CRITICAL_TASK bit lock.
+ * Expects to be called while holding crit_lock.
  **/
 static void iavf_up_complete(struct iavf_adapter *adapter)
 {
@@ -1400,7 +1400,7 @@ static void iavf_clear_adv_rss_conf(struct iavf_adapter *adapter)
  * iavf_down - Shutdown the connection processing
  * @adapter: board private structure
  *
- * Expects to be called while holding the __IAVF_IN_CRITICAL_TASK bit lock.
+ * Expects to be called while holding crit_lock.
  **/
 void iavf_down(struct iavf_adapter *adapter)
 {
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
