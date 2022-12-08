Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98CB64666C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 02:20:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2ED3A405D4;
	Thu,  8 Dec 2022 01:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2ED3A405D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670462424;
	bh=wmpvYIwZqSERBLGXdPyB4x1ytaA739C0rmDHKdPMJZE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ty6c0cw7ZAjk+LTAI+uKc3MD4X0TTANtT8Kb2An7NAL2u9qIRu/UV9h6w0Ndfevm+
	 t/840Xk1Y15SVBJwxywpby6g7MvwbOpew/Yp2Q66J10Y0aNTXRB/KuHj6eo5IaPePR
	 NJXeN0Muvp7Yl02jndrcrJq/cfqwW6vstce4tI02mm2s164jB9sXjWOVvYOzqrmW2A
	 2Z0uFS9mHWA3LxKfD3Q+oL3pwDe+7hb6CLCHpfRYG4X+dORItvlYa3PazGfoDfVq3i
	 lV6RG4EfDA/OpL3w1SZi5+b2ayuLJxTd+ScMoxVsCsZjTEZedxq22wp6kXfkCsMO/H
	 FXjdItJ23gjVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w4pkscrwIC9c; Thu,  8 Dec 2022 01:20:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22E0640524;
	Thu,  8 Dec 2022 01:20:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22E0640524
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1817B1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 01:19:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E627260AA0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 01:19:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E627260AA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kbs-VokGiT4P for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 01:19:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B55960A8A
Received: from cstnet.cn (smtp84.cstnet.cn [159.226.251.84])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B55960A8A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 01:19:51 +0000 (UTC)
Received: from localhost.localdomain (unknown [124.16.138.125])
 by APP-05 (Coremail) with SMTP id zQCowAAXfuyqO5FjpT+vBQ--.8312S2;
 Thu, 08 Dec 2022 09:19:38 +0800 (CST)
From: Jiasheng Jiang <jiasheng@iscas.ac.cn>
To: jiri@resnulli.us
Date: Thu,  8 Dec 2022 09:19:36 +0800
Message-Id: <20221208011936.47943-1-jiasheng@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: zQCowAAXfuyqO5FjpT+vBQ--.8312S2
X-Coremail-Antispam: 1UD129KBjvJXoW7CrW5uw4Uur4xAFyDuFykXwb_yoW8tF1Dpa
 15JFyjyrW8Ar4UWrnrXF4qvFW5uayxJ340ga9rJ345ZF1qyr1rt3WjkryYyr1rGrW7ZanI
 qF15AFZ7CasFvr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUvK14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
 6F4UM28EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gr
 1j6F4UJwAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv
 7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r
 1j6r4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02
 628vn2kIc2xKxwCY02Avz4vE14v_KwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbV
 WUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF
 67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42
 IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF
 0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxh
 VjvjDU0xZFpf9x0JUHpB-UUUUU=
X-Originating-IP: [124.16.138.125]
X-CM-SenderInfo: pmld2xxhqjqxpvfd2hldfou0/
X-Mailman-Approved-At: Thu, 08 Dec 2022 01:20:19 +0000
Subject: [Intel-wired-lan] [PATCH net v2] ice: Add check for kzalloc
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
Cc: intel-wired-lan@lists.osuosl.org, Jiasheng Jiang <jiasheng@iscas.ac.cn>,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As kzalloc may return NULL pointer, the return value should
be checked and return error if fails in order to avoid the
NULL pointer dereference.
Moreover, use the goto-label to share the clean code.

Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
---
Changelog:

v1 -> v2:

1. Use goto-label to share the clean code.
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 25 ++++++++++++++---------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index b5a7f246d230..7bd3452a16d2 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -421,7 +421,7 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
 	const int ICE_TTYDRV_NAME_MAX = 14;
 	struct tty_driver *tty_driver;
 	char *ttydrv_name;
-	unsigned int i;
+	unsigned int i, j;
 	int err;
 
 	tty_driver = tty_alloc_driver(ICE_GNSS_TTY_MINOR_DEVICES,
@@ -462,6 +462,9 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
 					       GFP_KERNEL);
 		pf->gnss_serial[i] = NULL;
 
+		if (!pf->gnss_tty_port[i])
+			goto err_out;
+
 		tty_port_init(pf->gnss_tty_port[i]);
 		tty_port_link_device(pf->gnss_tty_port[i], tty_driver, i);
 	}
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
+	for (j = 0; j < i; j++) {
+		tty_port_destroy(pf->gnss_tty_port[j]);
+		kfree(pf->gnss_tty_port[j]);
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
