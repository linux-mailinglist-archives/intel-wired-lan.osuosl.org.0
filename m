Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E34A611214
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Oct 2022 15:00:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0E7960AC0;
	Fri, 28 Oct 2022 13:00:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0E7960AC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666962049;
	bh=JKvytGsmFagbLNgQUa1zdxOWCkBD8nk7zlqKADTPg0c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CEduhZYMtOBR27IPdDaBB2KU0DEI7HgpQxHxAR2k+9JY2FfOC9TYe0ubtxfUGaMQ5
	 nvYauZLTvGQi2t2YwtjFxrXyr4EG9RfraTdxbHrzDPE8phZBtxh4GvuQ1yGJrt4ug9
	 XbPggzThI9Fv6gICXHblvsPhr9GYVtSHzC6oIew5gU9MIQUXLkUMuPmtCy0vzPqzdB
	 0ecmEF/S7CiWyuPtJvL2Yjlu4piR/LjylCLMBulGxuRxvWET3ZLhec28M9BsDHFYkZ
	 B3L9rf5Hr6xIYnMq/7PvFr7NqcpN4gww3Yum818MEPVfCklo/ahVKpFSkE5rtcGrr4
	 zYHNYSL9joRlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R3o_R4_XX_iB; Fri, 28 Oct 2022 13:00:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A84F760A9E;
	Fri, 28 Oct 2022 13:00:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A84F760A9E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F2F001BF32B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 13:00:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD49060A9E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 13:00:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD49060A9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 875X99cVCk9b for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Oct 2022 13:00:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D351460A7E
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D351460A7E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 13:00:28 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id h10so3985340qvq.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 06:00:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5iJgtqpqiJVn//zhOfDmx7Kv+t48Z9oElzV8cQV4k8Q=;
 b=25BQN3MA8gocaqx6lAZ950P8aFjgKhLWnPR0qtxvIdNbdloUg6+zAlcJlccMn+th02
 wUk9jU1IvdbMmrFnM9oYoVY6W3tlRS+Kme5SujU5ulLPSDk93BwhYUB5aNUkxmMFofO5
 kKpY1FS2rnyENeAYUHrDaXN8lkStm89qwOx3owgyfBpTxtUlZqkistV8k3ldgwAywxGg
 jEfjgDqheis7QFwqvFrQdTME2rbcZfJwkyW838SHtjKhocnvmogsAOpQJZJAGIthguIc
 DACIq95655SoMVcB6dlexjeQNmJhFFi2/okg+jttWE/ZvsL3FlNFnTiusi0sd2Q5FbD+
 fSQA==
X-Gm-Message-State: ACrzQf26J2KWn7/K7lETv/g/SRxzSKZ9/L9Qp/Gqk3wCdKhoEFuADBzQ
 ZSUOMHwMpyViaSxXXqSikmUyaApBM1kWriOt
X-Google-Smtp-Source: AMsMyM7PmTVcA7PMinrbHKlUjxdSN3EiXgN4d3rE8Fu3scAMRdj2UzkM3odDl9Tmj7UjN9XWOSa9DA==
X-Received: by 2002:a17:902:b90b:b0:186:8a4d:d4b7 with SMTP id
 bf11-20020a170902b90b00b001868a4dd4b7mr33134131plb.129.1666962015777; 
 Fri, 28 Oct 2022 06:00:15 -0700 (PDT)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 v19-20020a17090ac91300b002036006d65bsm2512524pjt.39.2022.10.28.06.00.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Oct 2022 06:00:15 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Fri, 28 Oct 2022 22:00:00 +0900
Message-Id: <20221028130000.7318-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=5iJgtqpqiJVn//zhOfDmx7Kv+t48Z9oElzV8cQV4k8Q=;
 b=OYyI1D0//SYHg7b9sDx9vjzWuMkJE0shNqa2Ap8f/NCqkVLJzjc+VklmLtIPloaXN/
 bcAk4bSk4VpzlPj13/R1bBnPUM5Qm8iMvZq8utmw3hiV1k1tRJwDYZBeAOJsOVPTm75I
 CKSRzSfgiTeWhtkm5GuQVZpD+1iTHJp6chiq+v7s0ZFpqU53u4FTWEMoLqUFCnL/KqCl
 x0nm9C4ORjC47udpZ2tXLPfgAA28yQHwo9lh29uFutgVJ4jdNWR8r4qtc+xVra76ILdX
 QMwFkn5XQReuxrsDbdnzfuCipMkOxzzpTFJNiNbGt5NWk16rMldf2cpA5MYmxASsmzn9
 QPOQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=OYyI1D0/
Subject: [Intel-wired-lan] [PATCH v2] e1000e: Fix TX dispatch condition
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Yan Vugenfirer <yan@daynix.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

e1000_xmit_frame is expected to stop the queue and dispatch frames to
hardware if there is not sufficient space for the next frame in the
buffer, but sometimes it failed to do so because the estimated maxmium
size of frame was wrong. As the consequence, the later invocation of
e1000_xmit_frame failed with NETDEV_TX_BUSY, and the frame in the buffer
remained forever, resulting in a watchdog failure.

This change fixes the estimated size by making it match with the
condition for NETDEV_TX_BUSY. Apparently, the old estimation failed to
account for the following lines which determines the space requirement
for not causing NETDEV_TX_BUSY:
    ```
    	/* reserve a descriptor for the offload context */
    	if ((mss) || (skb->ip_summed == CHECKSUM_PARTIAL))
    		count++;
    	count++;

    	count += DIV_ROUND_UP(len, adapter->tx_fifo_limit);
    ```

This issue was found when running http-stress02 test included in Linux
Test Project 20220930 on QEMU with the following commandline:
```
qemu-system-x86_64 -M q35,accel=kvm -m 8G -smp 8
	-drive if=virtio,format=raw,file=root.img,file.locking=on
	-device e1000e,netdev=netdev
	-netdev tap,script=ifup,downscript=no,id=netdev
```

Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 49e926959ad3..55cf2f62bb30 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5936,9 +5936,9 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *skb,
 		e1000_tx_queue(tx_ring, tx_flags, count);
 		/* Make sure there is space in the ring for the next send. */
 		e1000_maybe_stop_tx(tx_ring,
-				    (MAX_SKB_FRAGS *
+				    ((MAX_SKB_FRAGS + 1) *
 				     DIV_ROUND_UP(PAGE_SIZE,
-						  adapter->tx_fifo_limit) + 2));
+						  adapter->tx_fifo_limit) + 4));
 
 		if (!netdev_xmit_more() ||
 		    netif_xmit_stopped(netdev_get_tx_queue(netdev, 0))) {
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
