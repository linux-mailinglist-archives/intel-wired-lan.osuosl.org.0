Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C73164EF25
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 17:31:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0AE45410D7;
	Fri, 16 Dec 2022 16:31:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AE45410D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671208275;
	bh=d3cocqmQMibecPVnSrBvLhhfNAVSgQ7a+CHVWvzAAcc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DgV/Y97omPa7LjoJ5Ic4OwojPIcbT7tj9AV4+/jon/E2Da/7JJvh7vmNrT+BlquaE
	 gaIqGF/y8UtLY6ex7PqAfUYPmeV7ECPIbJ3unzjxi+1ftMKbJ5fuZNWYHXaAXcEyUz
	 PGsSSie6P9dqEwSBH+v3+ah3Px7bwdwYKX1O9lbS87RrI4CmiTpqExae15I33x1HWl
	 9+ismo0ti/Dyfi/xaktP7X56CVJZrwj9Y2/ZGjtkGjb7UrfU+a/1RDs5sfuwlvaKTY
	 es/lenxIqkcG+lYWIHHmo6HY48iyqBnueamuyvtlPochUCpWgXVE9U3DCDfcJfwkH/
	 z7MmOlvvpqAOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jJoMkMzMKWBG; Fri, 16 Dec 2022 16:31:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0282540185;
	Fri, 16 Dec 2022 16:31:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0282540185
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C86AC1BF30B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 09:13:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E211418D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 09:13:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E211418D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qm8ndYtASw28 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Dec 2022 09:13:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93BFC41826
Received: from forwardcorp1b.mail.yandex.net (forwardcorp1b.mail.yandex.net
 [178.154.239.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93BFC41826
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 09:13:49 +0000 (UTC)
Received: from myt5-8800bd68420f.qloud-c.yandex.net
 (myt5-8800bd68420f.qloud-c.yandex.net
 [IPv6:2a02:6b8:c12:4615:0:640:8800:bd68])
 by forwardcorp1b.mail.yandex.net (Yandex) with ESMTP id 18FE0601F0;
 Fri, 16 Dec 2022 12:13:35 +0300 (MSK)
Received: from d-tatianin-nix.yandex-team.ru (unknown [2a02:6b8:b081:20::1:18])
 by myt5-8800bd68420f.qloud-c.yandex.net (smtpcorp/Yandex) with ESMTPSA id
 RDdkrU0Q6Ko1-Iah20vAt; Fri, 16 Dec 2022 12:13:34 +0300
X-Yandex-Fwd: 1
From: Daniil Tatianin <d-tatianin@yandex-team.ru>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Fri, 16 Dec 2022 12:13:26 +0300
Message-Id: <20221216091326.1457454-1-d-tatianin@yandex-team.ru>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 16 Dec 2022 16:31:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yandex-team.ru; s=default; 
 t=1671182014; bh=DpGcPD4QYNFodyzBuUrzHjZYe9mlGwIx7WnbID1FEt0=;
 h=Message-Id:Date:Cc:Subject:To:From;
 b=MtdZfUs9f4EjEINccyLb/HKZmCrkn2/crpmmmC+V3erQTQDPl85m0hEs1kUQc1/Bj
 hYgbEkGMSjp9ReoPK/+AGzqrS5Ghx6KEGd6OsQMC9ijew/Zt2qM/kquQ6uKXFVjehU
 letaB9xrxR/Cny8RFPmkOOQPMZ+8/02EhZIcQO/I=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=yandex-team.ru header.i=@yandex-team.ru
 header.a=rsa-sha256 header.s=default header.b=MtdZfUs9
X-Mailman-Original-Authentication-Results: myt5-8800bd68420f.qloud-c.yandex.net; dkim=pass header.i=@yandex-team.ru
Subject: [Intel-wired-lan] [PATCH v1] iavfs/iavf_main: actually log ->src
 mask when talking about it
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Daniil Tatianin <d-tatianin@yandex-team.ru>,
 Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This fixes a copy-paste issue where dev_err would log the dst mask even
though it is clearly talking about src.

Found by Linux Verification Center (linuxtesting.org) with the SVACE
static analysis tool.

Fixes: 0075fa0fadd0a ("i40evf: Add support to apply cloud filters")
Signed-off-by: Daniil Tatianin <d-tatianin@yandex-team.ru>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index c4e451ef7942..adc02adef83a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3850,7 +3850,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 				field_flags |= IAVF_CLOUD_FIELD_IIP;
 			} else {
 				dev_err(&adapter->pdev->dev, "Bad ip src mask 0x%08x\n",
-					be32_to_cpu(match.mask->dst));
+					be32_to_cpu(match.mask->src));
 				return -EINVAL;
 			}
 		}
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
