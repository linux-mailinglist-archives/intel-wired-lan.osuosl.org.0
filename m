Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B74C27AF2DA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 20:27:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48954610F4;
	Tue, 26 Sep 2023 18:27:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48954610F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695752864;
	bh=wuvBcMHUbo5sA38yUkAdqHG5JedFObxWQ6R1wm1IC2A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1ehK0SfA8n8KsRcsyH7T9sHDbZk6zgQS5nzdOihyILewQuOcj5+fgFQ8+D8G9SQbQ
	 ibDBM2tf50B0LJ2BhgumsQdBdkXh2GK08eWTYNBDUVoEjr0LELxgbFBUVxVWIKyxZ3
	 oQFe1hop2R1XeWBklj9jpgt3X2Wn/2TADvn4MWrwicZ8E+GDl4SxdEFjmnpwZwZ6KU
	 mk9PNETSFDjvdBu7ug+TPL98C00t095CRl5Dftr6wgrReFuFAm9TR0t3FIMLxIQnzo
	 At3+/RB2QeuLHVuLF7v/sP9fFfqEV+MnZAuq+xtGsSJlS2tMHF960WquLhzlkG1QsO
	 wFkdg1Ifp5KTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zNiGHbX6TH_1; Tue, 26 Sep 2023 18:27:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F54660DC6;
	Tue, 26 Sep 2023 18:27:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F54660DC6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB71A1BF279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9163F8136D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9163F8136D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fJlwH29DIKcc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 18:27:26 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F116F812A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F116F812A5
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-678-bO5eBIJTOfio9puFw5u8pA-1; Tue, 26 Sep 2023 14:27:21 -0400
X-MC-Unique: bO5eBIJTOfio9puFw5u8pA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 095852815E2A;
 Tue, 26 Sep 2023 18:27:21 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 54D5740C6EA8;
 Tue, 26 Sep 2023 18:27:19 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 26 Sep 2023 20:27:05 +0200
Message-ID: <20230926182710.2517901-5-ivecera@redhat.com>
In-Reply-To: <20230926182710.2517901-1-ivecera@redhat.com>
References: <20230926182710.2517901-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1695752844;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=T7aIMO5UwZ/UfgDo/+bLg5FMzWKeKrf87yyew+23Pgw=;
 b=MSrf8A8Mn4WO4uOLtjULzB6LM4S4cVrpwsky9VW/S4AZtjw6assxyS6HY2e/JI72lUApUY
 l+NWHw6iNfxoygrcOe5HYrc5NsPZ/4i6m5ftoAVJaSB8NIKD2lYZA7ybb0mAowm5qsyZDf
 WzXUTXdV5SYyZPTr6f3nmvyCKZ7F/m8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=MSrf8A8M
Subject: [Intel-wired-lan] [PATCH net-next 4/9] virtchnl: Add header
 dependencies
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
Cc: edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The <linux/avf/virtchnl.h> uses BIT, struct_size and ETH_ALEN macros
but does not include appropriate header files that defines them.
Add these dependencies so this header file can be included anywhere.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 include/linux/avf/virtchnl.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index dd71d3009771..6b3acf15be5c 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -4,6 +4,10 @@
 #ifndef _VIRTCHNL_H_
 #define _VIRTCHNL_H_
 
+#include <linux/bitops.h>
+#include <linux/overflow.h>
+#include <uapi/linux/if_ether.h>
+
 /* Description:
  * This header file describes the Virtual Function (VF) - Physical Function
  * (PF) communication protocol used by the drivers for all devices starting
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
