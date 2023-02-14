Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8438C696802
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 16:26:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCDC8409D0;
	Tue, 14 Feb 2023 15:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCDC8409D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676388360;
	bh=apEOJj4N1NXbJzjr+no/9rC54SAvOR6MmMqtCQhmimA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=juOH2dbtg+FCwAd/EMOwa9a8b0hrX8mHsH7Rw5U1Q+OeJOgBFY3a8A+jG40lCh78L
	 0Tq101dmkrgRDQGfXZ0zcLVgxY89ArQ0J88lCGVLEYB0hoNkWVW8DG7kzghhEjyAlM
	 ki8Xs9EaQ/gLJSs9We3kq0ezFOr8EpZr3iN3qus2iLJmgpbHdv1ldWYo7B3YUDGli4
	 y+SaESukMBSU8ISwnpcAiTYdktrweKUGHfNvqujmjV2rh+m/dstn/sSXDimziXAfVY
	 HT2F3DMzyAHmZTN2gYBus8QvMyHyu2EWmN/rdZEyWvZUftZyOpNGn6n4D6wXne4429
	 Lm/3Df6ZX+Gxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EfKDdHGIqbT5; Tue, 14 Feb 2023 15:25:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B08B40922;
	Tue, 14 Feb 2023 15:25:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B08B40922
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1CFD71BF852
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 15:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EA5E34013F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 15:25:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA5E34013F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MGN04B_vENZJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 15:25:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2ADDA40116
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2ADDA40116
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 15:25:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E48E961728;
 Tue, 14 Feb 2023 15:25:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE26CC433EF;
 Tue, 14 Feb 2023 15:25:48 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Tue, 14 Feb 2023 16:25:36 +0100
Message-Id: <20230214152548.826703-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1676388352;
 bh=S672kuM2oKkdizJFtUPdFijqnxwsifpqRIps1yp91iA=;
 h=From:To:Cc:Subject:Date:From;
 b=PHh5CRZ99XD1TaFZ1paqrurf/zq/FH7vYrIiq7aCOtOKbEZpaebqUKELEfOBBtaoY
 Yz/l+RRRaujZhwCH7D9zIYv5Fs8L4bzd6TYuuNIRw/c3jYwn3Lvaztpo/KjHan52ZH
 MQTRkwCglfeZwvAENIAMGnMvEgUzYO5MLPSBPQaP7pm9pEuilZrJl2a6X1zW17nPA/
 unJyFzPjE8BEVYhrq9LkCuCWAXSktDTqn1DDjZj3Em1XQBUCZ5n8gpONP1WXOqAbh0
 teS4WER/vNmOnGDU42z2SOc2ujCzKkiKJwwk62HS3Qf3x8lCMjSxbeIWihKaK1qNTo
 1ws56mDxoyINA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PHh5CRZ9
Subject: [Intel-wired-lan] [PATCH] [v2] ethernet: ice: avoid gcc-9 integer
 overflow warning
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
Cc: Lu Wei <luwei32@huawei.com>, Arnd Bergmann <arnd@arndb.de>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arnd Bergmann <arnd@arndb.de>

With older compilers like gcc-9, the calculation of the vlan
priority field causes a false-positive warning from the byteswap:

In file included from drivers/net/ethernet/intel/ice/ice_tc_lib.c:4:
drivers/net/ethernet/intel/ice/ice_tc_lib.c: In function 'ice_parse_cls_flower':
include/uapi/linux/swab.h:15:15: error: integer overflow in expression '(int)(short unsigned int)((int)match.key-><U67c8>.<U6698>.vlan_priority << 13) & 57344 & 255' of type 'int' results in '0' [-Werror=overflow]
   15 |  (((__u16)(x) & (__u16)0x00ffU) << 8) |   \
      |   ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~
include/uapi/linux/swab.h:106:2: note: in expansion of macro '___constant_swab16'
  106 |  ___constant_swab16(x) :   \
      |  ^~~~~~~~~~~~~~~~~~
include/uapi/linux/byteorder/little_endian.h:42:43: note: in expansion of macro '__swab16'
   42 | #define __cpu_to_be16(x) ((__force __be16)__swab16((x)))
      |                                           ^~~~~~~~
include/linux/byteorder/generic.h:96:21: note: in expansion of macro '__cpu_to_be16'
   96 | #define cpu_to_be16 __cpu_to_be16
      |                     ^~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/ice_tc_lib.c:1458:5: note: in expansion of macro 'cpu_to_be16'
 1458 |     cpu_to_be16((match.key->vlan_priority <<
      |     ^~~~~~~~~~~

After a change to be16_encode_bits(), the code becomes more
readable to both people and compilers, which avoids the warning.

Fixes: 34800178b302 ("ice: Add support for VLAN priority filters in switchdev")
Suggested-by: Alexander Lobakin <alexandr.lobakin@intel.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: use be16_encode_bits() instead of a temporary variable.
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 6b48cbc049c6..76f29a5bf8d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -1455,8 +1455,8 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		if (match.mask->vlan_priority) {
 			fltr->flags |= ICE_TC_FLWR_FIELD_VLAN_PRIO;
 			headers->vlan_hdr.vlan_prio =
-				cpu_to_be16((match.key->vlan_priority <<
-					     VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK);
+				be16_encode_bits(match.key->vlan_priority,
+						 VLAN_PRIO_MASK);
 		}
 
 		if (match.mask->vlan_tpid)
@@ -1489,8 +1489,8 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		if (match.mask->vlan_priority) {
 			fltr->flags |= ICE_TC_FLWR_FIELD_CVLAN_PRIO;
 			headers->cvlan_hdr.vlan_prio =
-				cpu_to_be16((match.key->vlan_priority <<
-					     VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK);
+				be16_encode_bits(match.key->vlan_priority,
+						 VLAN_PRIO_MASK);
 		}
 	}
 
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
