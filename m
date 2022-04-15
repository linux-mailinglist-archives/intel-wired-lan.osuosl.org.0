Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E9D5057D6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 15:55:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57FAB41CAE;
	Mon, 18 Apr 2022 13:55:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r5F9VxX0ExM8; Mon, 18 Apr 2022 13:55:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19A6E41B6A;
	Mon, 18 Apr 2022 13:55:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 756671BF30E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 21:05:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FD2340280
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 21:05:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fnOFbo7LHeu8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 21:05:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com
 [IPv6:2001:4860:4864:20::2c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AE7D940266
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 21:05:07 +0000 (UTC)
Received: by mail-oa1-x2c.google.com with SMTP id
 586e51a60fabf-d39f741ba0so8956489fac.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 14:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=DFeHwl4kR/w9Nf006Bo+dIcrWUYjy2D9GswKriWjVME=;
 b=fPUNx3G1SpJx2MuqX7wgPfHiF6WcVq4YqREAqp5SfMCGctGw6vDNrk4nlSpL15iAGV
 qt9YGsjDDtSN/meYbCC/ysmw9SiEcnDckONqX/cGnoj3Plor14s6Egn+A3oOhHuf9b7X
 K0Gwpyv3McH3VHXVzx/x1u9SbtJvTgfH9JHml/7rYxXlfuho+Z3bHHXGEf+nlMhFjExa
 V5iCa8SlqCBYT3WKx2v7+gyFfakvkPzIfxmbdfze0VzezFIAuJBMoC87fNZ3pZVMDg7d
 zJL4y/hUkL8rGi7ABrLQk3VU6nKAFiwoh0GHuCxGn5eCQGehfA90akiumfUu6+7uhZeN
 AD8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DFeHwl4kR/w9Nf006Bo+dIcrWUYjy2D9GswKriWjVME=;
 b=lqjBUyG0uTE1/kF/PhScNG/L84juIg/69klNVgS3c1GgixUbpULrbL/SyHHeWn2WBj
 jioXfNBxGPCfny0sIuFkpImlCFJiELgs8LnPk/vuAKhyvd89natyXDa1bETs0qqd2XSH
 vTwESOKCOIIN5nnL5X1GZz8287U78gxJKnjDxn6Gm7cEauVifBvx4eWb9U4xH0jR+Mbt
 40bFvAZ3F4t9Pr8H375P8HfjW2qRV9/C1KcA8jXIFq4UbaDdeao3eI2BAMtL1T17/S/f
 32VwnN3XerDk9tP9LdB9MQZd6Cq0P2rX1PeTaZLgSsVDv+bP6rK/oRm/YT8UFxYoFyG2
 D/Kg==
X-Gm-Message-State: AOAM532K9Y4s9F5O8rQeVQldPTT7npr3Aunicbva9xMGKKM3ZBihTQR3
 0FUlZZMlhl3EWgZcA5sPGmQ=
X-Google-Smtp-Source: ABdhPJwNGJEANI5cts9GYobmfi1XbWQKpS2jCDrzjflgzR1DOCL7uvUQ2Voorfi5bEeANWqkCWk7Zw==
X-Received: by 2002:a05:6870:4341:b0:d3:1412:8ecb with SMTP id
 x1-20020a056870434100b000d314128ecbmr315330oah.36.1650056706728; 
 Fri, 15 Apr 2022 14:05:06 -0700 (PDT)
Received: from toe.qscaudio.com ([65.113.122.35])
 by smtp.gmail.com with ESMTPSA id
 bg37-20020a05680817a500b002fa739a0621sm1476525oib.16.2022.04.15.14.05.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Apr 2022 14:05:06 -0700 (PDT)
From: Jeff Evanson <jeff.evanson@gmail.com>
X-Google-Original-From: Jeff Evanson <jeff.evanson@qsc.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Fri, 15 Apr 2022 15:04:21 -0600
Message-Id: <20220415210421.11217-1-jeff.evanson@qsc.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Mon, 18 Apr 2022 13:54:51 +0000
Subject: [Intel-wired-lan] [PATCH 1/2] Fix race in igc_xdp_xmit_zc
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
Cc: jeff.evanson@qsc.com, jeff.evanson@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

in igc_xdp_xmit_zc, initialize next_to_use while holding the netif_tx_lock
to prevent racing with other users of the tx ring

Signed-off-by: Jeff Evanson <jeff.evanson@qsc.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 1c00ee310c19..a36a18c84aeb 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2598,7 +2598,7 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
 	struct netdev_queue *nq = txring_txq(ring);
 	union igc_adv_tx_desc *tx_desc = NULL;
 	int cpu = smp_processor_id();
-	u16 ntu = ring->next_to_use;
+	u16 ntu;
 	struct xdp_desc xdp_desc;
 	u16 budget;
 
@@ -2607,6 +2607,8 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
 
 	__netif_tx_lock(nq, cpu);
 
+	ntu = ring->next_to_use;
+
 	budget = igc_desc_unused(ring);
 
 	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
