Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B6F380FF7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 May 2021 20:42:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DC5241871;
	Fri, 14 May 2021 18:42:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LTZ4XgGIWkWM; Fri, 14 May 2021 18:42:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EBCB41866;
	Fri, 14 May 2021 18:42:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0F7C1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 18:41:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A01E840164
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 18:41:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RKy6DYoF6AKU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 May 2021 18:41:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E738A40156
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 18:41:16 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id n2so95109ejy.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 11:41:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gPu3JhIKExQczwKARwj2go99YLQAcb+tX8q8d0+CLrs=;
 b=SMHZBcHDDY2nDwie8yAg4yVAHgJlsXwVcCXCCASVvl+crLefLLrUCZhRiNyxgbU3oO
 tQlinHhne3N/LEwBMg3U0EquTRqrNd/wn+ntUqK+rDIge8tfCndTZn8Tq+MceknHv7wW
 M25BcXYai0lAsGNDEdYjLPSgIk18lqo9wAaF1uVtvcOSPkZCoNslXo8+5fqm/JIJzMgU
 IC9OFaJStZ74c6goXUyyRe4Elmv4Yoy9j9fFA8bxDG6NdIPNxrJ9np68fP87ZkX1HAf4
 uGogXORsK3DAp4bOlbPcurzMWH1YiNLIIHbEOC37srjFV+Wud98HYlA1iSt3ZKJ6OeY/
 EiDw==
X-Gm-Message-State: AOAM531HQ8P5M+KG4IvXkWNt+8/8lYigXncKqop/OlBoIVZoUlQeQARx
 2wuaVHNr/sJzSk7c6tVgGU8=
X-Google-Smtp-Source: ABdhPJw/bzz+edLEyA47WDc1rrEAXftvdXlwn8/p6LzoZoO4/o+QryD11sVkSt7P+ExsEP3oTa1Mxg==
X-Received: by 2002:a17:906:6a93:: with SMTP id
 p19mr50865392ejr.319.1621017675225; 
 Fri, 14 May 2021 11:41:15 -0700 (PDT)
Received: from turbo.teknoraver.net (net-5-94-253-60.cust.vodafonedsl.it.
 [5.94.253.60])
 by smtp.gmail.com with ESMTPSA id dj17sm5081505edb.7.2021.05.14.11.41.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 May 2021 11:41:14 -0700 (PDT)
From: Matteo Croce <mcroce@linux.microsoft.com>
To: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-stm32@st-md-mailman.stormreply.com,
 kvm@vger.kernel.org, virtualization@lists.linux-foundation.org
Date: Fri, 14 May 2021 20:39:54 +0200
Message-Id: <20210514183954.7129-4-mcroce@linux.microsoft.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210514183954.7129-1-mcroce@linux.microsoft.com>
References: <20210514183954.7129-1-mcroce@linux.microsoft.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 14 May 2021 18:41:27 +0000
Subject: [Intel-wired-lan] [PATCH net-next 3/3] vhost_net: use XDP helpers
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

Also, the field xdp->rxq was never set, so pass NULL to xdp_init_buff()
to clear it.

Signed-off-by: Matteo Croce <mcroce@microsoft.com>
---
 drivers/vhost/net.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/vhost/net.c b/drivers/vhost/net.c
index df82b124170e..6414bd5741b8 100644
--- a/drivers/vhost/net.c
+++ b/drivers/vhost/net.c
@@ -744,11 +744,9 @@ static int vhost_net_build_xdp(struct vhost_net_virtqueue *nvq,
 	if (copied != len)
 		return -EFAULT;
 
-	xdp->data_hard_start = buf;
-	xdp->data = buf + pad;
-	xdp->data_end = xdp->data + len;
+	xdp_init_buff(xdp, buflen, NULL);
+	xdp_prepare_buff(xdp, buf, pad, len, true);
 	hdr->buflen = buflen;
-	xdp->frame_sz = buflen;
 
 	--net->refcnt_bias;
 	alloc_frag->offset += buflen;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
