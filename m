Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 047CA380FF5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 May 2021 20:42:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 992FE8469C;
	Fri, 14 May 2021 18:42:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NBteLx4v_c8U; Fri, 14 May 2021 18:42:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A96198468D;
	Fri, 14 May 2021 18:42:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0398F1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 18:40:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E682D60831
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 18:40:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LgBs_3A_H_rL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 May 2021 18:40:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
 [209.85.208.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDBED60D55
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 18:40:38 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id i13so5804110edb.9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 11:40:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y4MTLt5TFZRdEBttrmfCcK1QF/TJDQ6Lo2hOuLadKIY=;
 b=O4RNDZjBdxHIsAE7CSTH+qLjLNCVbgnckCW1VhWizasunn4VukEMZxh/a6rllsit64
 ICMmQNrhumu64b4oqH64Ub9VgPgEHWerA5U1y5ak8g/mVAAQQROve7LhUdqLAnPOgHsS
 WcQXnwCFIbfL/TvGAphLIiKTWnB+toYfWhNobCnhtcnf65/OzjLWxmtA5SC5znq1iYP1
 jq+EeSDp+uJ+cnEBLbQ0injfy2rBlCP6rJ7siBaBjrcq5uOOLYMaDyqb/keNPZjE1Tgw
 bIHUmtDkngU4+Ayz97AM6Ag6WK4+p/s8ZMkfsuJUdbtjUhdR7Ue17blFXI5JRfJ4ntP4
 tsVg==
X-Gm-Message-State: AOAM533VmGS7FjYgCZFSj9XCl3yCCiu1r0jhKLQ8lXxXTicZ66xlZh98
 JgeIa8NVbSy1OjYL5gZFHcE=
X-Google-Smtp-Source: ABdhPJztVPeeFds+ovfXgi5hiN0AM5Kzib6Wesqh/ef775Q8o65ykbVOOjTXi8FRmrOvM5b3sV8Pyw==
X-Received: by 2002:aa7:de99:: with SMTP id j25mr36955284edv.91.1621017637149; 
 Fri, 14 May 2021 11:40:37 -0700 (PDT)
Received: from turbo.teknoraver.net (net-5-94-253-60.cust.vodafonedsl.it.
 [5.94.253.60])
 by smtp.gmail.com with ESMTPSA id dj17sm5081505edb.7.2021.05.14.11.40.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 May 2021 11:40:36 -0700 (PDT)
From: Matteo Croce <mcroce@linux.microsoft.com>
To: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-stm32@st-md-mailman.stormreply.com,
 kvm@vger.kernel.org, virtualization@lists.linux-foundation.org
Date: Fri, 14 May 2021 20:39:52 +0200
Message-Id: <20210514183954.7129-2-mcroce@linux.microsoft.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210514183954.7129-1-mcroce@linux.microsoft.com>
References: <20210514183954.7129-1-mcroce@linux.microsoft.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 14 May 2021 18:41:22 +0000
Subject: [Intel-wired-lan] [PATCH net-next 1/3] stmmac: use XDP helpers
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
Cc: "Michael S. Tsirkin" <mst@redhat.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jason Wang <jasowang@redhat.com>, linux-kernel@vger.kernel.org,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Matteo Croce <mcroce@microsoft.com>

Make use of the xdp_{init,prepare}_buff() helpers instead of
an open-coded version.

Signed-off-by: Matteo Croce <mcroce@microsoft.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 345b4c6d1fd4..bf9fe25fed69 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -5167,12 +5167,9 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 			dma_sync_single_for_cpu(priv->device, buf->addr,
 						buf1_len, dma_dir);
 
-			xdp.data = page_address(buf->page) + buf->page_offset;
-			xdp.data_end = xdp.data + buf1_len;
-			xdp.data_hard_start = page_address(buf->page);
-			xdp_set_data_meta_invalid(&xdp);
-			xdp.frame_sz = buf_sz;
-			xdp.rxq = &rx_q->xdp_rxq;
+			xdp_init_buff(&xdp, buf_sz, &rx_q->xdp_rxq);
+			xdp_prepare_buff(&xdp, page_address(buf->page),
+					 buf->page_offset, buf1_len, false);
 
 			pre_len = xdp.data_end - xdp.data_hard_start -
 				  buf->page_offset;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
