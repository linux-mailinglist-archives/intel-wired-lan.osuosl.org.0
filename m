Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 737813B30C2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jun 2021 16:01:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADE324148E;
	Thu, 24 Jun 2021 14:01:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ibklq50LeZhj; Thu, 24 Jun 2021 14:01:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F90240E43;
	Thu, 24 Jun 2021 14:01:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB5161BF328
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 12:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D9DF583D16
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 12:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=pobox.com header.b="G+v8TewO";
 dkim=pass (1024-bit key) header.d=darkphysics.net header.b="r0qsKzRm"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HTj-grqNcXys for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jun 2021 12:13:49 +0000 (UTC)
X-Greylist: delayed 00:07:36 by SQLgrey-1.8.0
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com [173.228.157.52])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5131E83D0F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 12:13:49 +0000 (UTC)
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id AA71512757B;
 Thu, 24 Jun 2021 08:06:12 -0400 (EDT)
 (envelope-from tdavies@darkphysics.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:cc:subject:message-id:mime-version:content-type; s=sasl; bh=
 j8rQrshbvNd0uPBvyfgmlh5xUyZNgnP8aHq0npBHc5s=; b=G+v8TewOzwdjp0p2
 Bxphv8Q4GtPYbQs8WVKwxwl81dDKU1V5ujoCh7seUuur9Wnzvz7aPj7bKZ9mpjOa
 iGPwWcKusE2aKpo/GhleoF69nefnjciVHMANq4/kLELhNQVeZjqsG7cQrxRKzPld
 xpCNOhd8wQ5zS+I2EEHxzqgdkF4=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id A39FC12757A;
 Thu, 24 Jun 2021 08:06:12 -0400 (EDT)
 (envelope-from tdavies@darkphysics.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=darkphysics.net;
 h=date:from:to:cc:subject:message-id:mime-version:content-type;
 s=2019-09.pbsmtp; bh=j8rQrshbvNd0uPBvyfgmlh5xUyZNgnP8aHq0npBHc5s=;
 b=r0qsKzRmXhFkMDXQtG5r6Xp3zx+XwDutAKZMEvyflZw/I5pevQU8DQ9Gvb17QnMwEcJdRzZUT6tEo211qdZwm+0xrAY/4a1wFMCONS9I3/eMEtHzmToINfL1mszSw8X6aPAtTyF450yzg+4+62wflpwlASy32chPsGEC5pRAPn0=
Received: from oatmeal.darkphysics (unknown [24.19.107.226])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 015CC127579;
 Thu, 24 Jun 2021 08:06:09 -0400 (EDT)
 (envelope-from tdavies@darkphysics.net)
Date: Thu, 24 Jun 2021 05:06:01 -0700
From: Tree Davies <tdavies@darkphysics.net>
To: tdavies@darkphysics.net, netdev@vger.kernel.org
Message-ID: <20210624120511.GA6221@oatmeal.darkphysics>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Pobox-Relay-ID: 9026903A-D4E4-11EB-B14D-D5C30F5B5667-45285927!pb-smtp20.pobox.com
X-Mailman-Approved-At: Thu, 24 Jun 2021 14:01:12 +0000
Subject: [Intel-wired-lan] [PATCH v1 1/1] net/e1000e: Fix spelling mistake
 "The" -> "This"
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
Cc: Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is a spelling mistake in the comment block.

Signed-off-by: Tree Davies <tdavies@darkphysics.net>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 88e9035b75cf..ff267cf75ef8 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7674,7 +7674,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
  * @pdev: PCI device information struct
  *
  * e1000_remove is called by the PCI subsystem to alert the driver
- * that it should release a PCI device.  The could be caused by a
+ * that it should release a PCI device.  This could be caused by a
  * Hot-Plug event, or because the driver is going to be removed from
  * memory.
  **/
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
