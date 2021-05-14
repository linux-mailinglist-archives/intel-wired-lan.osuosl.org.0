Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B569380FF6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 May 2021 20:42:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B65040168;
	Fri, 14 May 2021 18:42:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FXyxtn5DR3Ud; Fri, 14 May 2021 18:42:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5393340164;
	Fri, 14 May 2021 18:42:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C9E21BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 18:41:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 487F584673
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 18:41:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4gLIZxQ2_eo4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 May 2021 18:41:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B0A4184671
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 18:41:01 +0000 (UTC)
Received: by mail-ed1-f42.google.com with SMTP id df21so8508926edb.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 11:41:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1j2CjgQxW57TkMOuAnVDHfqnEQcNfSuPJZQGVnmFSJA=;
 b=bYfg1896tJb1sSI7K9ra4OaU6MBgd+tHt52jTRADElLEWhZywNwbEGkuHi+LEF3Mr9
 A4fD7o3ceKwclAfaMq4pO39suhFSesxuo55gGygvkPweUdALCaj5kANjrn7Emzsn3lHh
 YnhtrP3og7WPyR+EoI45abT39LoAiqOgnOeMlBJyjoitcsUjC/TK2OWJrOs9vs3dasA8
 Cq0L8fz3UNPuTst5hu4cUssJNCmKtewS5FjbaJgU9YAwAVEz90BbbnJnIvSBIB4HNJEM
 0O3UMsRNp1m/sKBf0W8sfU7fB8glyqTsQTBSDTsOYCtRf54b7iVQGH5DaUsXRSZsFKsE
 Q5WA==
X-Gm-Message-State: AOAM5338p0WQkEvGnUFnqk2ExEoea+WbQAL1UNTXL93xuzeQXax7PmmJ
 V4IYwuiKEvPjLNrSluspDcg=
X-Google-Smtp-Source: ABdhPJyxTNKn6+GyJPbWrzuE82v4D4fgdRH1Pr1QrTsEjU4XnM0G1aa5z5Rgrt8LmwOzr3dkOMs5Pw==
X-Received: by 2002:a50:9f6b:: with SMTP id b98mr6260005edf.318.1621017659634; 
 Fri, 14 May 2021 11:40:59 -0700 (PDT)
Received: from turbo.teknoraver.net (net-5-94-253-60.cust.vodafonedsl.it.
 [5.94.253.60])
 by smtp.gmail.com with ESMTPSA id dj17sm5081505edb.7.2021.05.14.11.40.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 May 2021 11:40:59 -0700 (PDT)
From: Matteo Croce <mcroce@linux.microsoft.com>
To: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-stm32@st-md-mailman.stormreply.com,
 kvm@vger.kernel.org, virtualization@lists.linux-foundation.org
Date: Fri, 14 May 2021 20:39:53 +0200
Message-Id: <20210514183954.7129-3-mcroce@linux.microsoft.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210514183954.7129-1-mcroce@linux.microsoft.com>
References: <20210514183954.7129-1-mcroce@linux.microsoft.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 14 May 2021 18:41:22 +0000
Subject: [Intel-wired-lan] [PATCH net-next 2/3] igc: use XDP helpers
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
 drivers/net/ethernet/intel/igc/igc_main.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 069471b7ffb0..92c0701e2a36 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2151,12 +2151,9 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		}
 
 		if (!skb) {
-			xdp.data = pktbuf + pkt_offset;
-			xdp.data_end = xdp.data + size;
-			xdp.data_hard_start = pktbuf - igc_rx_offset(rx_ring);
-			xdp_set_data_meta_invalid(&xdp);
-			xdp.frame_sz = truesize;
-			xdp.rxq = &rx_ring->xdp_rxq;
+			xdp_init_buff(&xdp, truesize, &rx_ring->xdp_rxq);
+			xdp_prepare_buff(&xdp, pktbuf - igc_rx_offset(rx_ring),
+					 igc_rx_offset(rx_ring) + pkt_offset, size, false);
 
 			skb = igc_xdp_run_prog(adapter, &xdp);
 		}
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
