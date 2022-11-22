Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CBD633D3A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 14:12:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42C7181F78;
	Tue, 22 Nov 2022 13:12:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42C7181F78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669122750;
	bh=P9jZBy47e1QMUU7MSxQDaOmg4lQBdY53XvktXBq7hyY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FB5GHIX6sMFonsZWkHrjVdScN0wF/d61dzxvROfO3lsfQwcEwTXBLqsjC1nnLYwKw
	 Vye765XPAX/yatqtJwfyKrDMnh5niEf8kygpnTuYSDvr6vBxJqr73uViJKjNEyUmhN
	 FR+snMh8WJBcIPL4Uxzw5D5YzSbQFQIK/7iUEAjxvrgH2x+57vULPPTAIoJTJJuk3S
	 cvgNALmcElwx/Z26FLi54Qnnht63cGwYATSM6cpPeRz3pR/ROCFG84oAeI+ycbW3Ir
	 LUeLpEcTo3e3bORuv1e/MLteJ5xidanYC0OBwTkPfaH7+0D/YPpXZCLGyjG84BBccH
	 zc5A0uS9BVpNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7CsCoh2zHCcy; Tue, 22 Nov 2022 13:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 420B281F61;
	Tue, 22 Nov 2022 13:12:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 420B281F61
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF6971BF40A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 13:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C873B402E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 13:12:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C873B402E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 99Km_vncvLOT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 13:12:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A385402CE
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0A385402CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 13:12:23 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id d192so14361996pfd.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 05:12:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oqwHzAInlPVGD6Tj99gfuhNqltvuUaoQbnrjs4tthqQ=;
 b=z43pQE40gTz+wji3tF8FqviqCf0mfmgSyStmyVVETcQ5E2aOIUiiP+jmxU/0VzE4Pp
 d7oGiNS6u/FwGKY3HwTiwTP+cp/weudUfSNGWvSywIHGDGPdMR6ZH6E+09qOiYP9Lum9
 OKGoGGA3cfEAD8xrOL5u61hN3l7CqkMlJWFsOcl6K+solGQgV7jr24z7B0k2BnaXYwO1
 8Qr0OFXoWnJOWOY7ni6/uBhmWaXkj9s/ZXNkW3uS2X/SBgp2jtaUt+F/gfWON9cNzDS8
 k8lo4k4kAm+opQPXqqd/GXmLLv3mHXEHW0AgfxOkv1Ikoo7d2qowP6HPvuUo6vZcxvz0
 bOVg==
X-Gm-Message-State: ANoB5pmTxa1Y4DHFxKEl2m/PteN7E+tJh/72uZLltvLRV+5FWlqok7BJ
 fYqh5Ii30x15pDyqctYh7qNEeg==
X-Google-Smtp-Source: AA0mqf5OK6x93CXuy3MfVmeRxV/APyqC08Eof6VVqXzHXz44JzeRwY1jefa62wpRCQH0dU2x4RqDtw==
X-Received: by 2002:a63:5819:0:b0:476:8ce9:be5d with SMTP id
 m25-20020a635819000000b004768ce9be5dmr5324378pgb.15.1669122743413; 
 Tue, 22 Nov 2022 05:12:23 -0800 (PST)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 w18-20020a170902e89200b00183e2a96414sm11948992plg.121.2022.11.22.05.12.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Nov 2022 05:12:22 -0800 (PST)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Tue, 22 Nov 2022 22:11:45 +0900
Message-Id: <20221122131145.68107-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=oqwHzAInlPVGD6Tj99gfuhNqltvuUaoQbnrjs4tthqQ=;
 b=iqFptG7/uCjX/WZys0RvEFs1QNIHoCzPFv1fNAzqAMu+zJYLIAIlTk5xbXKdx+huTA
 903beUgNqdUyJbtx+1indJKeCxTl6PcQCU9vqOpDLb83FX0WK23+ILBpy9ly3TpIZDCC
 xgjqsPh29pWWGt+2eiT8p/uT708pvtye0mpxMZQl+7KXngPg5fYjUKzILGUff0EBmGWG
 OWN1ybOPMEoD14w22QOUMf0rMMUS/XViBDGXZgvtTtSzOJdrHzoq31K9eGKmHbbI91Gb
 UUo/9UggJh/iYOMPpOGdHM+AU2ZIRy4cGxaeLE55UWyAkPBxF36Rdhb8iB+puBt7zvDM
 ub8w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=iqFptG7/
Subject: [Intel-wired-lan] [PATCH v2] igb: Allocate MSI-X vector when testing
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Yan Vugenfirer <yan@daynix.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Without this change, the interrupt test fail with MSI-X environment:

$ sudo ethtool -t enp0s2 offline
[   43.921783] igb 0000:00:02.0: offline testing starting
[   44.855824] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Down
[   44.961249] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: RX/TX
[   51.272202] igb 0000:00:02.0: testing shared interrupt
[   56.996975] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: RX/TX
The test result is FAIL
The test extra info:
Register test  (offline)	 0
Eeprom test    (offline)	 0
Interrupt test (offline)	 4
Loopback test  (offline)	 0
Link test   (on/offline)	 0

Here, "4" means an expected interrupt was not delivered.

This change routes interrupts correctly to the first MSI-X vector, and
fixes the test:

$ sudo ethtool -t enp0s2 offline
[   42.762985] igb 0000:00:02.0: offline testing starting
[   50.141967] igb 0000:00:02.0: testing shared interrupt
[   56.163957] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: RX/TX
The test result is PASS
The test extra info:
Register test  (offline)	 0
Eeprom test    (offline)	 0
Interrupt test (offline)	 0
Loopback test  (offline)	 0
Link test   (on/offline)	 0

Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index e5f3e7680dc6..ff911af16a4b 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -1413,6 +1413,8 @@ static int igb_intr_test(struct igb_adapter *adapter, u64 *data)
 			*data = 1;
 			return -1;
 		}
+		wr32(E1000_IVAR_MISC, E1000_IVAR_VALID << 8);
+		wr32(E1000_EIMS, BIT(0));
 	} else if (adapter->flags & IGB_FLAG_HAS_MSI) {
 		shared_int = false;
 		if (request_irq(irq,
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
