Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFC9647446
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 17:28:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B803040C00;
	Thu,  8 Dec 2022 16:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B803040C00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670516925;
	bh=kil1/RjSjFo59g8zXwNY32LS/CeaKzLu8QAMY3mysJY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=fdB7Xqg1TmGfe9A2priRAIvVPRhgqrv4iRUF/O5z0VTr0YKN+6BBRqED4JIqjLhKQ
	 85HaXSDcv4ChYVU0DtaAbL0boIEQF5rtizU0GgEOFpIGXZuPGbUGhqTbQO/ZOYK5mi
	 I0yebKXLfkzdOfe1S2KzX8w7vIUqWvLTusDO1UEHJisOMvo48lg6dSLnV4fsSS0dti
	 wGMTmZ/COFutZVjhIhQFyol74sybkXgFDL3CL/3JtLUdeIxWfRROTT36DEuN1iCsPa
	 UfyYnNuPUOOekn6YnYce0cfqlB/mVs8X5Fp4ZAkaFyyzH/eAaXs9p13htjWcimtNof
	 nmKX9FoKJ710w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KJIB3FTzO_KX; Thu,  8 Dec 2022 16:28:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACB5240122;
	Thu,  8 Dec 2022 16:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACB5240122
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF72F1BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 13:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A6FC160ACA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 13:36:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6FC160ACA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S1gYxwkt5pHY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 13:36:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAA5760812
Received: from cstnet.cn (smtp23.cstnet.cn [159.226.251.23])
 by smtp3.osuosl.org (Postfix) with ESMTP id AAA5760812
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 13:36:02 +0000 (UTC)
Received: from localhost.localdomain (unknown [124.16.138.125])
 by APP-03 (Coremail) with SMTP id rQCowAAHD5c56JFj4J18BQ--.24654S2;
 Thu, 08 Dec 2022 21:35:53 +0800 (CST)
From: Jiasheng Jiang <jiasheng@iscas.ac.cn>
To: jiri@resnulli.us
Date: Thu,  8 Dec 2022 21:35:52 +0800
Message-Id: <20221208133552.21915-1-jiasheng@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: rQCowAAHD5c56JFj4J18BQ--.24654S2
X-Coremail-Antispam: 1UD129KBjvJXoW7Cw4UZr47uw17Cw4kJFyxZrb_yoW8ZFWrpa
 13Jr90yr48Jr4UWFnxXF1j9FW5uayxJ34Y9FW7J343Zr1qyr4rt3WqyryFkr1rGrW2va1a
 qF15CFZ7CasFvw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUvC14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26r1j6r1xM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
 6F4UM28EF7xvwVC2z280aVAFwI0_Cr1j6rxdM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
 Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
 I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r
 4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
 n2kIc2xKxwCY02Avz4vE14v_Xr4l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr
 0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY
 17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcV
 C0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY
 6I8E87Iv67AKxVW8JVWxJwCI42IY6I8E87Iv6xkF7I0E14v26r4UJVWxJrUvcSsGvfC2Kf
 nxnUUI43ZEXa7VUUivtJUUUUU==
X-Originating-IP: [124.16.138.125]
X-CM-SenderInfo: pmld2xxhqjqxpvfd2hldfou0/
X-Mailman-Approved-At: Thu, 08 Dec 2022 16:28:28 +0000
Subject: [Intel-wired-lan] [PATCH net v4] ice: Add check for kzalloc
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
Cc: leon@kernel.org, intel-wired-lan@lists.osuosl.org,
 Jiasheng Jiang <jiasheng@iscas.ac.cn>, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add the check for the return value of kzalloc in order to avoid
NULL pointer dereference.
Moreover, use the goto-label to share the clean code.

Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
---
Changelog:

v3 -> v4:

1. Move the check right after the kzalloc.

v2 -> v3:

1. Use "while (i--)" to simplify the code.

v1 -> v2:

1. Use goto-label to share the clean code.
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 23 ++++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index b5a7f246d230..60b6c7125616 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -460,6 +460,9 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
 	for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++) {
 		pf->gnss_tty_port[i] = kzalloc(sizeof(*pf->gnss_tty_port[i]),
 					       GFP_KERNEL);
+		if (!pf->gnss_tty_port[i])
+			goto err_out;
+
 		pf->gnss_serial[i] = NULL;
 
 		tty_port_init(pf->gnss_tty_port[i]);
@@ -469,21 +472,23 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
 	err = tty_register_driver(tty_driver);
 	if (err) {
 		dev_err(dev, "Failed to register TTY driver err=%d\n", err);
-
-		for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++) {
-			tty_port_destroy(pf->gnss_tty_port[i]);
-			kfree(pf->gnss_tty_port[i]);
-		}
-		kfree(ttydrv_name);
-		tty_driver_kref_put(pf->ice_gnss_tty_driver);
-
-		return NULL;
+		goto err_out;
 	}
 
 	for (i = 0; i < ICE_GNSS_TTY_MINOR_DEVICES; i++)
 		dev_info(dev, "%s%d registered\n", ttydrv_name, i);
 
 	return tty_driver;
+
+err_out:
+	while (i--) {
+		tty_port_destroy(pf->gnss_tty_port[i]);
+		kfree(pf->gnss_tty_port[i]);
+	}
+	kfree(ttydrv_name);
+	tty_driver_kref_put(pf->ice_gnss_tty_driver);
+
+	return NULL;
 }
 
 /**
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
