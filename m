Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0226A71E1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Mar 2023 18:15:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC3C560F85;
	Wed,  1 Mar 2023 17:15:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC3C560F85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677690911;
	bh=A5MPbjSH6jmbpT6lvszJG6lYLSw2a25AZtxoQHf+bS0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XSAylHnaLff9tjZo77DhrNAxVol/V4+kBMrZDgDRhRfMnOJuDO2RC/aOInoJWpyQE
	 4CmQ+l3uHrlQL+Zk6vCabqdOEoKgkx/FVaKAwuau0U3ShO7qvcSdgwjKVVNtQFRErk
	 lXsubxdeieYOctKxY6A8pJ5t4It3nUvoYJLYgsbhOLTWSEKV+IBMsvzh+OUqAqzm1n
	 tUFnlbTPBQNXJZ+PbpEU8d+73/plAR4EZ5kvPc9j4yVIWPATdTAZKo0i3SBYQ0KmOd
	 t+u8eASBJgjSjFp82SNb6ZdET3xglyMEB72QR8juv2VJ4xTa+Rj+1s76tSNeVT3ncY
	 WsGAEg/SvGJHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sTCdfeqxWIiK; Wed,  1 Mar 2023 17:15:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81BD760BFA;
	Wed,  1 Mar 2023 17:15:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81BD760BFA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1504C1BF593
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 17:15:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD2CF403A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 17:15:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD2CF403A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yG0QvHUw5ddo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Mar 2023 17:15:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFDEB40022
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DFDEB40022
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 17:15:01 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-191-MjA9gnwbOVKqV2RCfDvRmQ-1; Wed, 01 Mar 2023 12:14:55 -0500
X-MC-Unique: MjA9gnwbOVKqV2RCfDvRmQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 95C30101A55E;
 Wed,  1 Mar 2023 17:14:54 +0000 (UTC)
Received: from swamp.redhat.com (unknown [10.39.192.177])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EEC112026D4B;
 Wed,  1 Mar 2023 17:14:52 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  1 Mar 2023 18:14:52 +0100
Message-Id: <20230301171452.2514734-1-poros@redhat.com>
In-Reply-To: <20230228204139.2264495-1-poros@redhat.com>
References: <20230228204139.2264495-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1677690900;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1ovVIYbdK9HNBFp+gvs7z1UGLJ8i2dHJExXfcHpynik=;
 b=Vfp/vrOgbPyDRYl6x8+elCCXmqZhWZx33++ZP1AdY86T5qg1cfka8h5N7OngSonVaCXAP3
 37x1jyW+YhQcBFnGFMOjNwxtfP8Fsaot812d3doYX33St1072/SPC8cT9Vi7S6qhVN5lre
 z7+68KRtjzQCcEITaY0G2wZM2LX3qaM=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Vfp/vrOg
Subject: [Intel-wired-lan] [PATCH net v2] ice: copy last block omitted in
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
v2: memcpy unified calls
---
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b360bd8f15998b..1dc3f9fc74bdfb 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4293,6 +4293,7 @@ ice_get_module_eeprom(struct net_device *netdev,
 	bool is_sfp = false;
 	unsigned int i, j;
 	u16 offset = 0;
+	u32 copy_len;
 	u8 page = 0;
 	int status;
 
@@ -4354,8 +4355,9 @@ ice_get_module_eeprom(struct net_device *netdev,
 			}
 
 			/* Make sure we have enough room for the new block */
-			if ((i + SFF_READ_BLOCK_SIZE) < ee->len)
-				memcpy(data + i, value, SFF_READ_BLOCK_SIZE);
+			copy_len = min_t(u32, SFF_READ_BLOCK_SIZE,
+					 ee->len - i);
+			memcpy(data + i, value, copy_len);
 		}
 	}
 	return 0;
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
