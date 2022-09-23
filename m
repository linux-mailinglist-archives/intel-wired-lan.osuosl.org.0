Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8AD5E839C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:29:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 510CC41CBD;
	Fri, 23 Sep 2022 20:29:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 510CC41CBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663964970;
	bh=7oh1MPG4fQO9t1NfmQlLuMutkwthB0pYPx+nE5Sn+UU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w2jBXZtKacZpdshafrQmwTY+WuFvTPv9vxHiEJOfvuF/Ks2JiyWCB3G3IXhqls8eY
	 lS9AM9wjl45y18BVdytIqi9ERDnXHy0LLk0nUsVzHuCpdW+6tJPDXHh7PvW7n2bOWu
	 V6eb0wUDeXmGTr9fPobjQ6tBOjZ+Eg+ogJYC92qXslNQTrgX0kb+8X0zvsjn7RFG84
	 Rn2tqEojTFkIw+vCx3GF+1X2oSok/XGU06xB0za3FkvM0h2YOwPzHHY5aPTT97vdEd
	 nR2uwwX5FNelBJrKo1fQuAuIihJjqXFHo2L6dR9xwPG6ig1PoJOkcXHgN4DRuuw9Jf
	 oxWOQrIyXirFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ugmAVo5nsmgv; Fri, 23 Sep 2022 20:29:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB25941B57;
	Fri, 23 Sep 2022 20:29:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB25941B57
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28CC31BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B8996059F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B8996059F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MjxNdATIy1eP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:28:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F25A260B73
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F25A260B73
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:30 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id q3so1064020pjg.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:28:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=k0IswvXpcAvdiLZPIXN3c5DjnsYKqakODd7BbfXTQEI=;
 b=TAh3Uhn+j12q6R/jgX1prvUfKodpAl3Laf8DMK/HTVG+vGkf9ksSpOiTy8rqPHBxVv
 PLH3OMpyct4Wz0WwPx6gsgAObXKFfhQ/mhmrJ2Uh2S4BFE3HS68jSSyVBW/Yz8WFFKcg
 rk6gB02y6tSbZDiJEnZFCp7RdvVpcbPO+q+wtw79tCITOqCO6iIMYxzpfnNxVXuzm4g3
 X8erQVQfds2Uc0OBPejMWEAsQFDVxD7WEetfYxiUKb3gAK0DaS0Z46oZcIlIZJh+OBhh
 N0cks4C8GuJzWCC3YeM8ywmLtPY6YXa6uFRt1xeK6ImnuwlfUJTFLWJedB7U/gaqagdN
 nlkQ==
X-Gm-Message-State: ACrzQf3Dr9r7TFD21btxCjz+ww3F1gNjlog6FHVjrIvswovsVTXJjFIY
 dILd6cC9UH430GE8bbTRshbLTw==
X-Google-Smtp-Source: AMsMyM5hUgD6utpVMAl6ShfvZOmvi4K16Slmi0TDE2X8XGDljCU6xLMJTIptVSCg6vqu21Nf0Aqn/w==
X-Received: by 2002:a17:90b:1c09:b0:203:af4d:ed6 with SMTP id
 oc9-20020a17090b1c0900b00203af4d0ed6mr22702155pjb.243.1663964910372; 
 Fri, 23 Sep 2022 13:28:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 v11-20020a17090ad58b00b001fd77933fb3sm2032999pju.17.2022.09.23.13.28.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:28:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:11 -0700
Message-Id: <20220923202822.2667581-6-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1843; h=from:subject;
 bh=IY1ALzn2CwEEDJeKMCN2d2RSu1qSDYHH3sl/8qGPuY0=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbk0/S4oiPoPLUr2gK0zbu5nD58CBtVyli7/b9z
 b2gIR0qJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5AAKCRCJcvTf3G3AJg5DD/
 49Q+Vbxd75ylphO0zAoxF1E8P7/YQRC083ZhpstciRAvjCqnpLi5zdF920rTUU+1hjspMRJaMkLZZ5
 bK5uDN9URaJ1VBwYD+6+cHrxZwypqnLzdn14wwH8UG1QuBQhNDvUuCFwvkUBf9/Bp+0g8k8JGKzhTu
 6eWxuatrO7c1lHLgNshKa4CHOwSIXGl1Q8U+crVj889yJ+3vaBJUKAFLpG7i9/BXIbxLtC96UzXJeG
 NpqcAteIRbx3lZMeVrME7GvP1FKrpZi+5WLpqgRlT3zHEnEjOfHgoh+/WIeqHjr5vo7twX5652tP2N
 Mx8LmRcy1QGFOC7cJrUAt1lxtEm2xDE0DDTWbtrLD/urw/SDcZInXg9OaQJScBgPEF5EimBTanoAdX
 npz666oA+SsIyft7lopXirXDXC9dc2tpNbbWXNbUbi/8SOXb4M64nUSj261gX1dFmmdiMTVkMJi6k9
 jkjF4KkszF50l/ZyuXITZfH/g97qx+FCiVCme/NzouQsbRqcFRQc4aqwS5nAJR5semKAPwFBzi4o8K
 IAGeXk3wxbSLA2xKLlfWqmWPjgqVVs0+TV5yEo1uzFYRf9/vtUmqFEKouB6fcB43xqHMU/prp6VRKO
 cZ5pTG4vUmHBldHcHEO1sFYR/POcX3tBkkrlcVrJzjuOaTUmZSZ3vpMsCr9Q==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=k0IswvXpcAvdiLZPIXN3c5DjnsYKqakODd7BbfXTQEI=;
 b=QrmiCQX9GiyAvK9+mKup1boveHjE9itEI0YZkgCTiluR2mt+7uynIg0wgHzS0fo3Kt
 s8lgk0G0b7iFD6G/bf8SXd7GtoYB2il63LkywVZCSQDCieP6Y6mrV2z2ASYtCsyN6DKS
 xeEqLxywxC671K6eBmRXgIzL8IhhLMZaUYHMc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=QrmiCQX9
Subject: [Intel-wired-lan] [PATCH v2 05/16] net: ipa: Proactively round up
 to kmalloc bucket size
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
Cc: llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, "Ruhl,
 Michael J" <michael.j.ruhl@intel.com>, Eric Dumazet <edumazet@google.com>,
 linux-hardening@vger.kernel.org, Hyeonggon Yoo <42.hyeyoo@gmail.com>,
 Christoph Lameter <cl@linux.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 dev@openvswitch.org, x86@kernel.org, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 Kees Cook <keescook@chromium.org>, Alex Elder <elder@linaro.org>,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Yonghong Song <yhs@fb.com>, David Sterba <dsterba@suse.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Alex Elder <elder@kernel.org>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Instead of discovering the kmalloc bucket size _after_ allocation, round
up proactively so the allocation is explicitly made for the full size,
allowing the compiler to correctly reason about the resulting size of
the buffer through the existing __alloc_size() hint.

Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: netdev@vger.kernel.org
Reviewed-by: Alex Elder <elder@linaro.org>
Link: https://lore.kernel.org/lkml/4d75a9fd-1b94-7208-9de8-5a0102223e68@ieee.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ipa/gsi_trans.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ipa/gsi_trans.c b/drivers/net/ipa/gsi_trans.c
index 18e7e8c405be..eeec149b5d89 100644
--- a/drivers/net/ipa/gsi_trans.c
+++ b/drivers/net/ipa/gsi_trans.c
@@ -88,6 +88,7 @@ struct gsi_tre {
 int gsi_trans_pool_init(struct gsi_trans_pool *pool, size_t size, u32 count,
 			u32 max_alloc)
 {
+	size_t alloc_size;
 	void *virt;
 
 	if (!size)
@@ -104,13 +105,15 @@ int gsi_trans_pool_init(struct gsi_trans_pool *pool, size_t size, u32 count,
 	 * If there aren't enough entries starting at the free index,
 	 * we just allocate free entries from the beginning of the pool.
 	 */
-	virt = kcalloc(count + max_alloc - 1, size, GFP_KERNEL);
+	alloc_size = size_mul(count + max_alloc - 1, size);
+	alloc_size = kmalloc_size_roundup(alloc_size);
+	virt = kzalloc(alloc_size, GFP_KERNEL);
 	if (!virt)
 		return -ENOMEM;
 
 	pool->base = virt;
 	/* If the allocator gave us any extra memory, use it */
-	pool->count = ksize(pool->base) / size;
+	pool->count = alloc_size / size;
 	pool->free = 0;
 	pool->max_alloc = max_alloc;
 	pool->size = size;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
