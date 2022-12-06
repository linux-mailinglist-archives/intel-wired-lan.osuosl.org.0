Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB49644950
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 17:34:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35CCA60E18;
	Tue,  6 Dec 2022 16:34:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35CCA60E18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670344490;
	bh=++8WSMv3aSuCMzszL0WdoegdB6b04XhxL5kavS0Ct/s=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nffXT8ILpm8sUxWzrT31OxrB5Yr0tbP+tIr9SSVUvqYvKw6X2pgZTLhmaECOzBEBs
	 VAzBQ3VGwVSSd1AJt7L6FKewDTOSNtLC+kI9YIUGnaHn/BhbcfTP6KPVip5+UuddJq
	 WANPhBDK3tuQ+6/NcvWTIdGiBBdHmFkAb4OFkOs/O94wps4fiUzQFud/9rKzSLpiUS
	 AixaMTADqz+uUHWwPVIgPtJdKzjsRUmaI9K0tgtTiRt2QpMbVkAIPBkd29pbG68mqL
	 dFuB+BUBtklPTVaiVTSzRZ3Qt4TjEMzVqEm4W8Ycl+RkyqhT7nMXyLExy1pc25Rhmn
	 QkatFFgzovnBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z_QFGEoz6vTt; Tue,  6 Dec 2022 16:34:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34388605AD;
	Tue,  6 Dec 2022 16:34:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34388605AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D638B1BF487
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 03:14:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A6173605A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 03:14:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6173605A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jjIiyJZBUdmf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 03:14:32 +0000 (UTC)
X-Greylist: delayed 00:06:12 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06FEB600B6
Received: from cstnet.cn (smtp23.cstnet.cn [159.226.251.23])
 by smtp3.osuosl.org (Postfix) with ESMTP id 06FEB600B6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 03:14:31 +0000 (UTC)
Received: from localhost.localdomain (unknown [124.16.138.125])
 by APP-03 (Coremail) with SMTP id rQCowABXX5cWso5jFUbkBA--.26373S2;
 Tue, 06 Dec 2022 11:08:06 +0800 (CST)
From: Jiasheng Jiang <jiasheng@iscas.ac.cn>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Tue,  6 Dec 2022 11:08:05 +0800
Message-Id: <20221206030805.15934-1-jiasheng@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: rQCowABXX5cWso5jFUbkBA--.26373S2
X-Coremail-Antispam: 1UD129KBjvJXoW7CFWrur4rKw1fKF4DGw4fuFg_yoW8Xr4rpa
 n8JFyjvrW8Jr4UWr9xXF4qyFZ8Wa4xJ34Sga9rX398ZF1Dtr15t3WDKryYyr1rGrW3ZFsI
 yF45AF13uF92vw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUvm14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
 6F4UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
 0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xII
 jxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr
 1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4IIrI8v6xkF7I0E8cxa
 n2IY04v7MxkIecxEwVAFwVW8GwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJV
 W8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF
 1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6x
 IIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvE
 x4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Jr0_GrUvcSsGvfC2KfnxnU
 UI43ZEXa7VUjQBMtUUUUU==
X-Originating-IP: [124.16.138.125]
X-CM-SenderInfo: pmld2xxhqjqxpvfd2hldfou0/
X-Mailman-Approved-At: Tue, 06 Dec 2022 16:34:43 +0000
Subject: [Intel-wired-lan] [PATCH net] ice: Add check for kzalloc
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
Cc: netdev@vger.kernel.org, Jiasheng Jiang <jiasheng@iscas.ac.cn>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As kzalloc may fail and return NULL pointer,
it should be better to check the return value
in order to avoid the NULL pointer dereference.

Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index b5a7f246d230..6d3d5e75726b 100644
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
@@ -462,6 +462,17 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
 					       GFP_KERNEL);
 		pf->gnss_serial[i] = NULL;
 
+		if (!pf->gnss_tty_port[i]) {
+			for (j = 0; j < i; j++) {
+				tty_port_destroy(pf->gnss_tty_port[j]);
+				kfree(pf->gnss_tty_port[j]);
+			}
+			kfree(ttydrv_name);
+			tty_driver_kref_put(pf->ice_gnss_tty_driver);
+
+			return NULL;
+		}
+
 		tty_port_init(pf->gnss_tty_port[i]);
 		tty_port_link_device(pf->gnss_tty_port[i], tty_driver, i);
 	}
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
