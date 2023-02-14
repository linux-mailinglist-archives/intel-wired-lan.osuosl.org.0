Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0275C696477
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 14:20:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E9D481A99;
	Tue, 14 Feb 2023 13:20:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E9D481A99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676380818;
	bh=yyMq7+sZvAmB4dLDbtE4pnjfo6bY0gaTxLE9b5MxpNQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=pIfqAQzJHzVWQPW7V5cJjvy48woMUrFARIAxuEng1+BnFWpZqe6N3dQRl3SvmQvPD
	 5hI4RZrVr8M1bSaHJ1/lsZ8WkTUVVJ7i37az9iCT9FS2okYNCk7pLtCFyhHWp9kplJ
	 7BFh8k2gzq5UPBlBYyfd56/ESl9Rsc7VQQJSvDpOQ45c/YO1wFKiSU5bLpG4h7FO8H
	 Cf/Owzl/vdyFJiXYDC8YNtn3qNpRIIUwUNozMcJPVV8OWaYHnAkLsP3LLrBDyoucRs
	 QUY/EBWKRcc+V36+rdHltsLP/fr/4/1EC9FcXkjryGYzjJTtXDES5s8ZUeDnAg+//U
	 I/mDddbWAUDlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2euIit0Z0BT1; Tue, 14 Feb 2023 13:20:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 669C981A6A;
	Tue, 14 Feb 2023 13:20:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 669C981A6A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C74E31BF40E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 13:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A10E4410E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 13:20:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A10E4410E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y0eXHJCPTN_F for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 13:20:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CC33410D5
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7CC33410D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 13:20:11 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 00EFCB81CCB;
 Tue, 14 Feb 2023 13:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D0A9C4339B;
 Tue, 14 Feb 2023 13:20:03 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Tue, 14 Feb 2023 14:19:49 +0100
Message-Id: <20230214132002.1498163-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1676380806;
 bh=2CeITdNxri0c/lH27oKamdXHaU07x4TU7pa3d7pB2zw=;
 h=From:To:Cc:Subject:Date:From;
 b=cjl6nC5FFH9cK6UD23bBAsMGjP3Umg+fOif8ex7YQ0EInIBIJv1YzaLqdbnXeJoME
 gcCeOantwDKND29WlmSAXiNcy8fNgYgxJk7nClMrzzUISHMu0nI6ha4NYwqalfZrsR
 /k8Tp+em9sbHyfz3Z7eaL32VMEYX+RZPutl1K6Au1wUI70URXybc3sTvVTAxjE/a+k
 vfGimFa63dYfIV1Gb14zgF6jZFfRZ7gPx6GJxlGFVBzTJd5YatrRUwt1fjEf94gLnT
 gV63s0i6km+SvAJcJxKTv0MFdiy2SbUb+mnTN+F7N2zllQkb+YNBe7b8Z8m8m25fZo
 EHQxAHFuaz5QA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cjl6nC5F
Subject: [Intel-wired-lan] [PATCH] ethernet: ice: avoid gcc-9 integer
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
Cc: Arnd Bergmann <arnd@arndb.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arnd Bergmann <arnd@arndb.de>

With older compilers like gcc-9, the calculation of the vlan
priority field causes a warning from the byteswap:

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

The code looks correct to me, so just avoid the warning by replacing
the macro expansion with an intermediate variable.

Fixes: 34800178b302 ("ice: Add support for VLAN priority filters in switchdev")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 6b48cbc049c6..e9932446185c 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -1453,10 +1453,9 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		}
 
 		if (match.mask->vlan_priority) {
+			u16 prio = (match.key->vlan_priority << VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK;
 			fltr->flags |= ICE_TC_FLWR_FIELD_VLAN_PRIO;
-			headers->vlan_hdr.vlan_prio =
-				cpu_to_be16((match.key->vlan_priority <<
-					     VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK);
+			headers->vlan_hdr.vlan_prio = cpu_to_be16(prio);
 		}
 
 		if (match.mask->vlan_tpid)
@@ -1487,10 +1486,9 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		}
 
 		if (match.mask->vlan_priority) {
+			u16 prio = (match.key->vlan_priority << VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK;
 			fltr->flags |= ICE_TC_FLWR_FIELD_CVLAN_PRIO;
-			headers->cvlan_hdr.vlan_prio =
-				cpu_to_be16((match.key->vlan_priority <<
-					     VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK);
+			headers->cvlan_hdr.vlan_prio = cpu_to_be16(prio);
 		}
 	}
 
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
