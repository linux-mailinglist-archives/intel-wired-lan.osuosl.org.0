Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E70A6B51F62
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 19:48:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57AC661109;
	Wed, 10 Sep 2025 17:48:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4qGN2LcFo8sa; Wed, 10 Sep 2025 17:48:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF06C610BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757526502;
	bh=qEzZnMkfHtDYjGZWSxfigRLQrGxze7DhIG2nwdyJImk=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5zTZKInkZggiWqTUo3QOlBemvgVrbyPPi4k+KGvHO5Fp5moH93WMQp74Z7Ff05vE3
	 CDPnPHnOM6TGu8GZ1oFp/uE929Q3LTUcj03+4Kh3Df1nsKxQ6CVyWWLRlBP/9QxrgA
	 G1N57uXTnrqL6+RdfcHjOadWWwENSiR7nnTPkL1N2g0TzjS5TL31fIMfJYefhvj39J
	 a7U8YTZ++SqXhL+sZnNpP3iOLO1HfB+nc9+USJPiuNMAIV9IGuHyZXPSHSXWAOLeN8
	 syvcJGwFbJ40mgEYKz8uRQ8tYySRF1EGJXYVA/lNLSUYBFVjo3vtfN3wyrPVSWzB5B
	 HAcLJ6mlTH1TQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF06C610BB;
	Wed, 10 Sep 2025 17:48:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E37B234
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 17:32:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40371406D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 17:32:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tVQmOpKra2Lk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 17:32:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.28.197.132;
 helo=fra-out-011.esa.eu-central-1.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=34112c5fb=farbere@amazon.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2C0F44006E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C0F44006E
Received: from fra-out-011.esa.eu-central-1.outbound.mail-perimeter.amazon.com
 (fra-out-011.esa.eu-central-1.outbound.mail-perimeter.amazon.com
 [52.28.197.132])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C0F44006E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 17:32:05 +0000 (UTC)
X-CSE-ConnectionGUID: Lc2tOsb3TWq+ntSm2bVkIg==
X-CSE-MsgGUID: q9x5CrNLRy2f7iQB9yZp/g==
X-IronPort-AV: E=Sophos;i="6.17,290,1747699200"; 
   d="scan'208";a="1819311"
Received: from ip-10-6-6-97.eu-central-1.compute.internal (HELO
 smtpout.naws.eu-central-1.prod.farcaster.email.amazon.dev) ([10.6.6.97])
 by internal-fra-out-011.esa.eu-central-1.outbound.mail-perimeter.amazon.com
 with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2025 17:31:54 +0000
Received: from EX19MTAEUA002.ant.amazon.com [54.240.197.232:11338]
 by smtpin.naws.eu-central-1.prod.farcaster.email.amazon.dev [10.0.31.196:2525]
 with esmtp (Farcaster)
 id ab7880e5-12d4-449e-bd34-c2b22e1c2731; Wed, 10 Sep 2025 17:31:54 +0000 (UTC)
X-Farcaster-Flow-ID: ab7880e5-12d4-449e-bd34-c2b22e1c2731
Received: from EX19D018EUA004.ant.amazon.com (10.252.50.85) by
 EX19MTAEUA002.ant.amazon.com (10.252.50.124) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Wed, 10 Sep 2025 17:31:53 +0000
Received: from dev-dsk-farbere-1a-46ecabed.eu-west-1.amazon.com
 (172.19.116.181) by EX19D018EUA004.ant.amazon.com (10.252.50.85) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20; Wed, 10 Sep 2025
 17:31:50 +0000
From: Eliav Farber <farbere@amazon.com>
To: <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <vitaly.lifshits@intel.com>,
 <gregkh@linuxfoundation.org>, <post@mikaelkw.online>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: <farbere@amazon.com>, <jonnyc@amazon.com>
Date: Wed, 10 Sep 2025 17:31:38 +0000
Message-ID: <20250910173138.8307-1-farbere@amazon.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [172.19.116.181]
X-ClientProxiedBy: EX19D042UWB003.ant.amazon.com (10.13.139.135) To
 EX19D018EUA004.ant.amazon.com (10.252.50.85)
X-Mailman-Approved-At: Wed, 10 Sep 2025 17:48:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1757525526; x=1789061526;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qEzZnMkfHtDYjGZWSxfigRLQrGxze7DhIG2nwdyJImk=;
 b=B2Kjs63p4OoR9SpBYengDv0n+vZ1UVB0amHVNQRt34BumewjgI5UZb8u
 usXuOVDq15726/o7ahDNQzHxzXWBQ4EeZ/j7kX00OtAm77E5xAOh90RK5
 I0WcbgQIHPanZ/Bvkgs4Qpu44/v+wxNCoYjXhFnRTcs9klOfwDESml7E1
 yqWrQkR+Kp/AyceRsb3tqhzvxxN/ov0Ss2615OlPsXyYrceszkrSRxyJP
 SKvehI+yZvICytrMy0BmtH5ilAZJl4qOjxZOf0iKGGadI6Wx/bmvfIGS5
 HElnNmd4Bb2n+aAPniWPDnDjlLcL75mgbzu1vIv9Y7/2hsqC2Wz4s6z8Z
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=B2Kjs63p
Subject: [Intel-wired-lan] [PATCH 5.10.y] e1000e: fix EEPROM length types
 for overflow checks
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

Fix a compilation failure when warnings are treated as errors:

drivers/net/ethernet/intel/e1000e/ethtool.c: In function ‘e1000_set_eeprom’:
./include/linux/overflow.h:71:15: error: comparison of distinct pointer types lacks a cast [-Werror]
   71 |  (void) (&__a == __d);   \
      |               ^~
drivers/net/ethernet/intel/e1000e/ethtool.c:582:6: note: in expansion of macro ‘check_add_overflow’
  582 |  if (check_add_overflow(eeprom->offset, eeprom->len, &total_len) ||
      |      ^~~~~~~~~~~~~~~~~~

To fix this, change total_len and max_len from size_t to u32 in
e1000_set_eeprom().
The check_add_overflow() helper requires that the first two operands
and the pointer to the result (third operand) all have the same type.
On 64-bit builds, using size_t caused a mismatch with the u32 fields
eeprom->offset and eeprom->len, leading to type check failures.

Fixes: ce8829d3d44b ("e1000e: fix heap overflow in e1000_set_eeprom")
Signed-off-by: Eliav Farber <farbere@amazon.com>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 4aca854783e2..584378291f3f 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -559,7 +559,7 @@ static int e1000_set_eeprom(struct net_device *netdev,
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
-	size_t total_len, max_len;
+	u32 total_len, max_len;
 	u16 *eeprom_buff;
 	int ret_val = 0;
 	int first_word;
-- 
2.47.3

