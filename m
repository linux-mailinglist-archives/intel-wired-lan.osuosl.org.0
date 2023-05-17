Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 546D3705C6A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 03:28:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08110614B2;
	Wed, 17 May 2023 01:28:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08110614B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684286894;
	bh=T1X7W3wZRO1mU3iBhB8clNOMN8W9OZ60IQ2gfnJ/h08=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=z+zVSlqPh1Chty1PjzGyfaucSox85hQuuww/XUaZ4Hi0StX9q8P6fu+zmZNQRLCs7
	 VSPbp/9elGIk23aIp5mXMaACTCQrHyUA679ukIaK66CT4l0UslCPSNbYSuBoxEPO5j
	 a677tR7s5UeuQOsKrT4ypK65QHlTJ4adWT5rwO+agdBz0nKKycymeB0aUgVNy8VPNZ
	 4Pp8JgNgWziA1PWA+bsb+3cV5461O1QrBcHRbiZBiczsuwsvzZUHPMvt94WhVuBtJY
	 2yHnKVZ4VHv9ANI4PJqmdeYBygWGqBAa74MEnqrfVleNJR/J9MjL0n4M0KtfGuIj3c
	 itywA/d8+LAPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QJMHVTxMX3xL; Wed, 17 May 2023 01:28:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDE4C61377;
	Wed, 17 May 2023 01:28:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDE4C61377
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CCB381BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 01:28:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9BA3240C12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 01:28:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BA3240C12
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rwgZp5f7Z_UF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 01:28:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 459AD403FB
Received: from mail-177132.yeah.net (mail-177132.yeah.net [123.58.177.132])
 by smtp2.osuosl.org (Postfix) with ESMTP id 459AD403FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 01:28:04 +0000 (UTC)
Received: from john-VirtualBox (unknown [111.18.136.15])
 by smtp2 (Coremail) with SMTP id C1UQrACHj19+LWRkaM5rCA--.15260S2;
 Wed, 17 May 2023 09:27:28 +0800 (CST)
Date: Wed, 17 May 2023 09:27:26 +0800
From: Baozhu Ni <nibaozhu@yeah.net>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Outreachy <outreachy@lists.linux.dev>
Message-ID: <20230517012726.GA1785@john-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
X-CM-TRANSID: C1UQrACHj19+LWRkaM5rCA--.15260S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7JF18GFW8KFWDJFW7JF4xZwb_yoWfWwbE9r
 4Iv3Z7KrZ8GF1Fkr45ArWxZ342kw1qqryvkFyfK3savryDZr4rWryv9r17GFsI9w4fJa4D
 AryaqF1fC3y29jkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnk-BtUUUUU==
X-Originating-IP: [111.18.136.15]
X-CM-SenderInfo: 5qlet0x2kxq5hhdkh0dhw/1tbiBQByelsVBYuNKgAAsq
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yeah.net; 
 s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
 Content-Type; bh=FMRYP780oGsC/V150FLH6SQ7V5SyK3kirmT0MA+o3jQ=;
 b=nyWd2aKVJRk1LmAs2nu7eLkLXg4knrgjmR1HWQ/2YkWMjk7fgm9Iee+4tMiZNe
 k0a7oAb0iCtEfIgmeWGpgMrs2KCvS/43HGuSetgP0v0LVj/Uht/IXS+cHid2GQ5i
 IgHL7+pyuQrPliYzw5kuNgOCudnxPlA/9xB4KUS6/BJOo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net
 header.a=rsa-sha256 header.s=s110527 header.b=nyWd2aKV
Subject: [Intel-wired-lan] [PATCH v2 net-next] e1000e: Add @adapter
 description to kdoc
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Provide a description for the kernel doc of the @adapter
of e1000e_trigger_lsc()

Signed-off-by: Baozhu Ni <nibaozhu@yeah.net>
---
v2:
  - let the subject and description clearer
v1: https://lore.kernel.org/lkml/ZGNl8yHEko7LpCBr@corigine.com/

 drivers/net/ethernet/intel/e1000e/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 6f5c16aebcbf..cadeb5bc5e16 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -4198,7 +4198,7 @@ void e1000e_reset(struct e1000_adapter *adapter)
 
 /**
  * e1000e_trigger_lsc - trigger an LSC interrupt
- * @adapter: 
+ * @adapter: board private structure
  *
  * Fire a link status change interrupt to start the watchdog.
  **/
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
