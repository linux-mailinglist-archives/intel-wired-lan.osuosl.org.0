Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C910BAAEE4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Sep 2025 03:57:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B797960DBB;
	Tue, 30 Sep 2025 01:57:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SY4tgZKYqK-3; Tue, 30 Sep 2025 01:57:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4DC960DF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759197458;
	bh=nxC7z8tI5C8dIQWr6F2wOzbjxKJkuMPETmk7GbfmmRU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fF5L96rk0gLnd981o0EgP81jnbpoJz5Iuh2gVMQFtkOQINReL62Ot7mLNCnl6CnXZ
	 dLicAcFayk6WXsvvFgdRw2B1KuhdWWQWwUKAdepeMbD1Q+6/Kx6VfQ11k3a474hDun
	 96U38LA5Oo1tlKkVLrJ19b+q9bvrFEBBq9WIkhYpg6X+BBMI27E//rGGpG0f+BVIEX
	 RIDxYx4LHHNyKLmLGzBOs/ugfqAD6TZ2oLYag/prYcJGrO4zLyAY7amZqLbrlU/jVT
	 gcCbF9uSWYOFd5q8Bb+v2kN7zAUnnxIr+G3ntova3y2MSy/Fza9NW1ugMGMX/TpjwG
	 a+0sZ4W3S4Qqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4DC960DF0;
	Tue, 30 Sep 2025 01:57:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id ED4CD111
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 01:57:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8F3F40923
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 01:57:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id leWO1E8G9GnL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Sep 2025 01:57:36 +0000 (UTC)
X-Greylist: delayed 345 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 30 Sep 2025 01:57:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5D11940922
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D11940922
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=159.226.251.84;
 helo=cstnet.cn; envelope-from=vulab@iscas.ac.cn; receiver=<UNKNOWN> 
Received: from cstnet.cn (smtp84.cstnet.cn [159.226.251.84])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D11940922
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 01:57:33 +0000 (UTC)
Received: from DESKTOP-L0HPE2S (unknown [124.16.141.245])
 by APP-05 (Coremail) with SMTP id zQCowAAXtg+nN9toIWUcCQ--.31124S2;
 Tue, 30 Sep 2025 09:51:36 +0800 (CST)
From: Haotian Zhang <vulab@iscas.ac.cn>
To: Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Haotian Zhang <vulab@iscas.ac.cn>
Date: Tue, 30 Sep 2025 09:51:25 +0800
Message-ID: <20250930015125.617-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.50.1.windows.1
In-Reply-To: <20250929024855.2037-1-vulab@iscas.ac.cn>
References: <20250929024855.2037-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: zQCowAAXtg+nN9toIWUcCQ--.31124S2
X-Coremail-Antispam: 1UD129KBjvJXoW7uryUtrWxuw1DJF18Wr1xZrb_yoW8XF4rpr
 4kJrWxCr40qr4vga1kZa1xZryUua1rKr98KF4rJwnxuFZxJw1jqry5tryjgFs5C39Yg3ZF
 q3Wqyw15Z34DAw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUU9I14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
 JVWxJr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AKxV
 WxJr0_GcWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2Wl
 Yx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbV
 WUJVW8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7Cj
 xVA2Y2ka0xkIwI1lc7CjxVAaw2AFwI0_Jw0_GFyl42xK82IYc2Ij64vIr41l4I8I3I0E4I
 kC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWU
 WwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr
 0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWU
 JVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJb
 IYCTnIWIevJa73UjIFyTuYvjfUonmRUUUUU
X-Originating-IP: [124.16.141.245]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiBgsBA2jbHlldZAAAsC
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iscas.ac.cn
Subject: [Intel-wired-lan] [PATCH v2] ice: ice_adapter: release xa entry on
 adapter allocation failure
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When ice_adapter_new() fails, the reserved XArray entry created by
xa_insert() is not released. This causes subsequent insertions at
the same index to return -EBUSY, potentially leading to
NULL pointer dereferences.

Release the reserved entry with xa_release() when adapter allocation
fails to prevent this issue.

Fixes: 0f0023c649c7 ("ice: do not init struct ice_adapter more times than needed")
Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>

---
Changes in v2:
  - Instead of checking the return value of xa_store(), fix the real bug
    where a failed ice_adapter_new() would leave a stale entry in the
    XArray.
  - Use xa_release() to clean up the reserved entry, as suggested by
    Jacob Keller.
---
 drivers/net/ethernet/intel/ice/ice_adapter.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
index b53561c34708..9eb100b11439 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -110,8 +110,10 @@ struct ice_adapter *ice_adapter_get(struct pci_dev *pdev)
 			return ERR_PTR(err);
 
 		adapter = ice_adapter_new(pdev);
-		if (!adapter)
+		if (!adapter) {
+			xa_release(&ice_adapters, index);
 			return ERR_PTR(-ENOMEM);
+		}
 		xa_store(&ice_adapters, index, adapter, GFP_KERNEL);
 	}
 	return adapter;
-- 
2.50.1.windows.1

