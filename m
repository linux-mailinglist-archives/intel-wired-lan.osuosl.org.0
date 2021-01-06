Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A743A2EBBAB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Jan 2021 10:28:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2105685116;
	Wed,  6 Jan 2021 09:28:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1wy1l_PHbEsy; Wed,  6 Jan 2021 09:28:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7640A850E9;
	Wed,  6 Jan 2021 09:28:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A7D641BF34A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 09:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9C63585091
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 09:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GZ5yKI8kEeez for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Jan 2021 09:28:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BE5908508E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 09:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1609925319;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=lpl6YI5J2QIC4TAcBAbHk4g6oDXY9vTQE5dRbJ6DXe0=;
 b=dhrZdvKMRtyzZL3deOxmPQQTnjEtVKZAe1zktIIQJZVVPvo3e/CmyIs8zQI/sGqaJof6mQ
 xwTvISU0Cjg19q4wF68ejsy9cHG2JU7oSHXl/I+Zl9BwrirYA2n39MUCPz1CX59d0ADkOD
 Nu7f2f0ACVgN0A9pyGGi8kII6WLMFZs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-592-FTpW96FdNBebyDmPA7jYCA-1; Wed, 06 Jan 2021 04:28:37 -0500
X-MC-Unique: FTpW96FdNBebyDmPA7jYCA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6B758800D62;
 Wed,  6 Jan 2021 09:28:36 +0000 (UTC)
Received: from wolverine.usersys.redhat.com (unknown [10.35.206.219])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 995A35D9CD;
 Wed,  6 Jan 2021 09:28:34 +0000 (UTC)
From: Gal Hammer <ghammer@redhat.com>
To: intel-wired-lan@lists.osuosl.org, Aaron Brown <aaron.f.brown@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed,  6 Jan 2021 11:28:26 +0200
Message-Id: <20210106092826.345172-1-ghammer@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ghammer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [PATCH] igb: fix TDBAL register show incorrect
 value
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
Cc: Gal Hammer <ghammer@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fixed a typo which caused the registers dump function to read the
RDBAL register when printing TDBAL register values.

Signed-off-by: Gal Hammer <ghammer@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 03f78fdb0dcd..006f5cb839f3 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -316,7 +316,7 @@ static void igb_regdump(struct e1000_hw *hw, struct igb_reg_info *reginfo)
 		break;
 	case E1000_TDBAL(0):
 		for (n = 0; n < 4; n++)
-			regs[n] = rd32(E1000_RDBAL(n));
+			regs[n] = rd32(E1000_TDBAL(n));
 		break;
 	case E1000_TDBAH(0):
 		for (n = 0; n < 4; n++)
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
