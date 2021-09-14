Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9A840A9FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Sep 2021 10:55:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97E1C607FF;
	Tue, 14 Sep 2021 08:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bkBiue6dRAL8; Tue, 14 Sep 2021 08:55:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0143607E5;
	Tue, 14 Sep 2021 08:55:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 899151BF379
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 08:55:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 772374032F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 08:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rvVp4AXWD43Q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 08:55:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 87E8540299
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 08:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631609726;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc; bh=c1zAKGDE2iXYAAL+cX9RZAaqxWupsxiAyfmgz4KkeMc=;
 b=PosTZoP8E77IZX78Khmhb5YKYdtcN/+pMXy2Tsbz+3lS+R3+AUUYtM5j+MTpqWPsvwfiKN
 JYSF8df3fyWQ5AdPhhCxRlKx3oklLXE7CjO313ZCI3tCuYRREnb6VQKDghqgFDCy8t/Puu
 1Pumfdb29zwQAKmAKAoTmAXP3oRISOs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-256-uZFvur7yO-S9KFZwdG1wpg-1; Tue, 14 Sep 2021 04:55:24 -0400
X-MC-Unique: uZFvur7yO-S9KFZwdG1wpg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A85AA5074C;
 Tue, 14 Sep 2021 08:55:23 +0000 (UTC)
Received: from griffin.upir.cz (unknown [10.40.193.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8AD3F6B55D;
 Tue, 14 Sep 2021 08:55:22 +0000 (UTC)
From: Jiri Benc <jbenc@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 14 Sep 2021 10:54:42 +0200
Message-Id: <452ff4ddfef7fc8f558a8c8eb7a8050688760e11.1631609537.git.jbenc@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: [Intel-wired-lan] [PATCH net v2] i40e: fix endless loop under rtnl
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
Cc: intel-wired-lan@lists.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The loop in i40e_get_capabilities can never end. The problem is that
although i40e_aq_discover_capabilities returns with an error if there's
a firmware problem, the returned error is not checked. There is a check for
pf->hw.aq.asq_last_status but that value is set to I40E_AQ_RC_OK on most
firmware problems.

When i40e_aq_discover_capabilities encounters a firmware problem, it will
enocunter the same problem on its next invocation. As the result, the loop
becomes endless. We hit this with I40E_ERR_ADMIN_QUEUE_TIMEOUT but looking
at the code, it can happen with a range of other firmware errors.

I don't know what the correct behavior should be: whether the firmware
should be retried a few times, or whether pf->hw.aq.asq_last_status should
be always set to the encountered firmware error (but then it would be
pointless and can be just replaced by the i40e_aq_discover_capabilities
return value). However, the current behavior with an endless loop under the
rtnl mutex(!) is unacceptable and Intel has not submitted a fix, although we
explained the bug to them 7 months ago.

This may not be the best possible fix but it's better than hanging the whole
system on a firmware bug.

Fixes: 56a62fc86895 ("i40e: init code and hardware support")
Tested-by: Stefan Assmann <sassmann@redhat.com>
Signed-off-by: Jiri Benc <jbenc@redhat.com>
---
v2: added the Fixes tag, no code changes
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 2f20980dd9a5..b5b984754ec9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10113,7 +10113,7 @@ static int i40e_get_capabilities(struct i40e_pf *pf,
 		if (pf->hw.aq.asq_last_status == I40E_AQ_RC_ENOMEM) {
 			/* retry with a larger buffer */
 			buf_len = data_size;
-		} else if (pf->hw.aq.asq_last_status != I40E_AQ_RC_OK) {
+		} else if (pf->hw.aq.asq_last_status != I40E_AQ_RC_OK || err) {
 			dev_info(&pf->pdev->dev,
 				 "capability discovery failed, err %s aq_err %s\n",
 				 i40e_stat_str(&pf->hw, err),
-- 
2.18.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
