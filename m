Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C368D256F2C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Aug 2020 17:38:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FE3885B68;
	Sun, 30 Aug 2020 15:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pK5JmeFf60UD; Sun, 30 Aug 2020 15:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BFCA85B71;
	Sun, 30 Aug 2020 15:38:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B0111BF5AC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Aug 2020 05:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5B603878B3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Aug 2020 05:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FJOow+8UtDyh for <intel-wired-lan@lists.osuosl.org>;
 Sun, 30 Aug 2020 05:45:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6E44C87860
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Aug 2020 05:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598766342;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=ZTIyDWwB1xP2mlWOHAKgKgz8364nJ/gpT2y8y73sUK8=;
 b=EAHkbTWuEFMIfrl0E+5BVUCa9oKKwHpNvU5bBew11ROKIS92zjEJU6yqmOckHlaTrIbnjA
 gWuIREfZNIsbMb3ou3ubFgEuo6apOc6EN3nvf112ibmjIDxhUAJloT6HU5XkhP02bf0nFJ
 lxBisOQhtrGlMjzKBK8kMgTlSUlVfCw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-Lxj-a1CiO726VBx_g6LU9w-1; Sun, 30 Aug 2020 01:45:38 -0400
X-MC-Unique: Lxj-a1CiO726VBx_g6LU9w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 28625189E61D;
 Sun, 30 Aug 2020 05:45:37 +0000 (UTC)
Received: from wolverine.usersys.redhat.com (unknown [10.35.206.47])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2952A80DF2;
 Sun, 30 Aug 2020 05:45:33 +0000 (UTC)
From: Gal Hammer <ghammer@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Sun, 30 Aug 2020 08:45:29 +0300
Message-Id: <20200830054529.3980-1-ghammer@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mailman-Approved-At: Sun, 30 Aug 2020 15:38:50 +0000
Subject: [Intel-wired-lan] [PATCH] igb: read PBA number from flash
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
Cc: Marcel Apfelbaum <mapfelba@redhat.com>, Gal Hammer <ghammer@redhat.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fixed flash presence check for 82576 controllers so the part
number string is read and displayed correctly.

Signed-off-by: Gal Hammer <ghammer@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index d9c3a6b169f9..245e62b0a97e 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3388,7 +3388,9 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			  "Width x1" : "unknown"), netdev->dev_addr);
 	}
 
-	if ((hw->mac.type >= e1000_i210 ||
+	if ((hw->mac.type == e1000_82576 &&
+	     rd32(E1000_EECD) & E1000_EECD_PRES) ||
+	    (hw->mac.type >= e1000_i210 ||
 	     igb_get_flash_presence_i210(hw))) {
 		ret_val = igb_read_part_string(hw, part_str,
 					       E1000_PBANUM_LENGTH);
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
