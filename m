Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 731F56A6084
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 21:41:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C858B60AE2;
	Tue, 28 Feb 2023 20:41:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C858B60AE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677616917;
	bh=EeaizVZYeluDALAg2UmrbdhlTi4swJRGQxSHHBq5F5U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MZLQMb0rR/g6Qj/R8ldj5F2MRUmrofb7LR0XhyA325a/L864g0+KfvEObuBSDbXQ4
	 F0Vt3ou0QRHuWW4JrHXlZPDWxZLKU2Y2vn+NcgIW8xkLcsJ9XbtLqPot80XwrXnZ+f
	 lpqwoAuVEeMNLQyoYoJLsAm5GIvYgDegHbGCS4mlN22XWlW4L5Sec7fjQEGvauOLu/
	 /dT+c4D2ZhOnTJW26YASIiOv0tNaxlzdiC4ALQcqJZDNphQUm86/xZy6Dt3La0sz9w
	 Ol5HxweHfYPH9UGAwGHFVKxMPKFw8Gw1icVvBkZQX0u29BdNuGFpVYGpPVEsven1nV
	 rnV5eyhg/y+UA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ESkBl-l0Au3a; Tue, 28 Feb 2023 20:41:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FEF46059B;
	Tue, 28 Feb 2023 20:41:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FEF46059B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD59B1BF293
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 20:41:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B24FD60AD2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 20:41:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B24FD60AD2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dgQbAAGLfMGj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 20:41:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F5496059B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F5496059B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 20:41:50 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-563-n88w3L0tPlmNNPE3pXkhnQ-1; Tue, 28 Feb 2023 15:41:43 -0500
X-MC-Unique: n88w3L0tPlmNNPE3pXkhnQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C1FDC882820;
 Tue, 28 Feb 2023 20:41:41 +0000 (UTC)
Received: from swamp.redhat.com (unknown [10.39.192.177])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CF0FE2026D68;
 Tue, 28 Feb 2023 20:41:39 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 28 Feb 2023 21:41:39 +0100
Message-Id: <20230228204139.2264495-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1677616908;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=+n5ao7sZl4YPF+uvuG7GgDxKNOHxoWdmpB6UrFdBImU=;
 b=HUyuLKOpZkRHQ0FUTfjWEepgCvbqhrS/kMr4NFwHc3cJ3hySziykFw1J4p2VIXz6bOldsL
 XGG5Nyz/IRelt+jg2/UclisOtVXkhlQfM+xyhMa3ihdZ9WjxPtX9ree4dTm2WcQ24E315X
 zUoOrhkyXQ+aXFesxgDD/bswL4g4oHA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=HUyuLKOp
Subject: [Intel-wired-lan] [PATCH net] ice: copy last block omitted in
 ice_get_module_eeprom()
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_get_module_eeprom() is broken since commit e9c9692c8a81 ("ice:
Reimplement module reads used by ethtool") In this refactor,
ice_get_module_eeprom() reads the eeprom in blocks of size 8.
But the condition that should protect the buffer overflow
ignores the last block. The last block always contains zeros.
Fix adding memcpy for last block.

Bug uncovered by ethtool upstream commit 9538f384b535
("netlink: eeprom: Defer page requests to individual parsers")
After this commit, ethtool reads a block with length = 1;
to read the SFF-8024 identifier value.

unpatched driver:
$ ethtool -m enp65s0f0np0 offset 0x90 length 8
Offset          Values
------          ------
0x0090:         00 00 00 00 00 00 00 00
$ ethtool -m enp65s0f0np0 offset 0x90 length 12
Offset          Values
------          ------
0x0090:         00 00 01 a0 4d 65 6c 6c 00 00 00 00
$

$ ethtool -m enp65s0f0np0
Offset          Values
------          ------
0x0000:         11 06 06 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0010:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0020:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0030:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0040:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0050:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0060:         00 00 00 00 00 00 00 00 00 00 00 00 00 01 08 00
0x0070:         00 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00

patched driver:
$ ethtool -m enp65s0f0np0 offset 0x90 length 8
Offset          Values
------          ------
0x0090:         00 00 01 a0 4d 65 6c 6c
$ ethtool -m enp65s0f0np0 offset 0x90 length 12
Offset          Values
------          ------
0x0090:         00 00 01 a0 4d 65 6c 6c 61 6e 6f 78
$ ethtool -m enp65s0f0np0
    Identifier                                : 0x11 (QSFP28)
    Extended identifier                       : 0x00
    Extended identifier description           : 1.5W max. Power consumption
    Extended identifier description           : No CDR in TX, No CDR in RX
    Extended identifier description           : High Power Class (> 3.5 W) not enabled
    Connector                                 : 0x23 (No separable connector)
    Transceiver codes                         : 0x88 0x00 0x00 0x00 0x00 0x00 0x00 0x00
    Transceiver type                          : 40G Ethernet: 40G Base-CR4
    Transceiver type                          : 25G Ethernet: 25G Base-CR CA-N
    Encoding                                  : 0x05 (64B/66B)
    BR, Nominal                               : 25500Mbps
    Rate identifier                           : 0x00
    Length (SMF,km)                           : 0km
    Length (OM3 50um)                         : 0m
    Length (OM2 50um)                         : 0m
    Length (OM1 62.5um)                       : 0m
    Length (Copper or Active cable)           : 1m
    Transmitter technology                    : 0xa0 (Copper cable unequalized)
    Attenuation at 2.5GHz                     : 4db
    Attenuation at 5.0GHz                     : 5db
    Attenuation at 7.0GHz                     : 7db
    Attenuation at 12.9GHz                    : 10db
    ........
    ....

Fixes: e9c9692c8a81 ("ice: Reimplement module reads used by ethtool")
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b360bd8f15998b..33b2bee5cfb40f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4356,6 +4356,8 @@ ice_get_module_eeprom(struct net_device *netdev,
 			/* Make sure we have enough room for the new block */
 			if ((i + SFF_READ_BLOCK_SIZE) < ee->len)
 				memcpy(data + i, value, SFF_READ_BLOCK_SIZE);
+			else if (ee->len - i > 0)
+				memcpy(data + i, value, ee->len - i);
 		}
 	}
 	return 0;
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
