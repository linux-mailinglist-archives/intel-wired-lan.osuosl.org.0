Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5FC5E590C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 05:10:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FF76610A3;
	Thu, 22 Sep 2022 03:10:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FF76610A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663816250;
	bh=wnstauqfpkA7EU8qT1AjS+y8h0qbAF3c0Vjt1P3+5YY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fG2ZzQLwZy5USQg692fmOPMGKpKZYPwTC9swoaxVmhybSpcUb2xQgxtd9W2sOlw4g
	 0oRZNiMEiDGa168kgzslsw/xexIXCRI/YV+3aVC5bk2R88YzEkNmdPViFDhnrjABfF
	 FTS0iJPKouxCmWiMxuaovNhtG7V/dbXRTwkIZtDLlunoA3ShVauUVlcZ/vwLOjwEx8
	 fYNeLuRu2AVHtWAFkCGrQCTIX9JE8G+XKZ1J4qOoNSXkwRLPNvsW1ssehia0DnQ+SE
	 sYG/ZxUJ24WmUSfbxWSx/H0Rj3uLhK4pf7kN1UdhHX317Th9YxY6k6Pk99fwFlC7PI
	 32QGR/MuQRbEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lb9KySs8Kbk9; Thu, 22 Sep 2022 03:10:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5944C610A6;
	Thu, 22 Sep 2022 03:10:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5944C610A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 626D51BF397
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38AC9610A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38AC9610A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 53EMM6TFFhWB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 03:10:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80CD161030
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80CD161030
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:27 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id q3so8424431pjg.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 20:10:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=rwUBwzi7xfMGM3gnlz2nJv+3JsC676oosCJWmNEJmq8=;
 b=3RE6HHZhDA/2nCUICRHWH+QJOfll9m8NU8GQ3Nab0Rp0XFk4HNapW1dl4IQ8I1qlS0
 eaVMG8qgz7lDAvaXRPrMz+woCOkdcZ5C/ArxP6e1HetPpP7kKVU5vFDcaAOTgCgMZFhZ
 ZldxcHr+5bzVG5bjinzc8iYcYoJ3vL9Bo5uU5NSyv+bH9IsYYz779XReVs4cW83bZmAM
 YeiJmyCEkM0rraEXp4LHIF5ugskBc2QKRm0/dxa1ImUB2U0TefbRMttCgLnIErgdEybL
 xCQoZqUZfXrjRpNz8/BedDV6imHUeWGkzCP+VEiwvz7wAeJ/aUF/uXWek9Lu6g03u6aM
 jzaA==
X-Gm-Message-State: ACrzQf2u9bYhMLHEQAM4+7z9HAnq72TUyirjPE2Fxz/kzg85Mo18WpV5
 kw39VrcgxNbiCUqnXwiyCgY7eQ==
X-Google-Smtp-Source: AMsMyM6ZljnCrU0qh0+e7vc+HuV1x+ArU+n+M48jxv5R3lt8UQZqPTf6/v1OyEJJWiwBGfdDSixUTw==
X-Received: by 2002:a17:902:c245:b0:178:3912:f1f7 with SMTP id
 5-20020a170902c24500b001783912f1f7mr1161429plg.75.1663816227182; 
 Wed, 21 Sep 2022 20:10:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 i8-20020a170902c94800b00178143a728esm2758861pla.275.2022.09.21.20.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Sep 2022 20:10:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 21 Sep 2022 20:10:06 -0700
Message-Id: <20220922031013.2150682-6-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922031013.2150682-1-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1448; h=from:subject;
 bh=58mLiyNPt53YHcQiP0NJ/gcO5KVNHG9xKF/nxWP5lU4=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjK9IT0VAPWCWir3uMps9kCdjSMILjRU6yciDG9uFs
 fWbeIjWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYyvSEwAKCRCJcvTf3G3AJuZ5EA
 CTJrl1LYI7CQAG4pCtipLkuzhhHVBFayO1cJ9nr4E0Jm4P1ZR+BSgD/HPdeicWCgV2fEGCG3A3qzTO
 bp/9wj/VPvNh93gqjrf2HSe113aZFNagRxlssfUYxwkKTY+LPLzDzin95QfiHah48Jg0HBw8zKWEmX
 dZTJH7KlwTcHEy9Bz5p3PA4qx+B3pkBrNQ0zdb4io0a7ErunaXVRCSpt2tZNukDe/wt1CXiR/32N+T
 1euSAVbSYv0W0fFslnfEqztbrNKxL91NWnvy3XzftablM4/PXqSNUqv6xYBt7IY33WxxP+/g2Fn7HD
 6QmdkXUhTr9armjFjNYZMQo0prwqkn0FJaXEIed35vePpH2uibYbE4OwOA2Dyo4lUtHPs/KAKQYEB3
 6oCNer7mpHEc9oOoqN35lm+ZhZ9UmAPZl/X1Np9gol6eRnt/yo2BbllRVW8PfKLVzPclAS1ny/vZEN
 uVJmqmDUdiq2OpecYEKuqhvI07vawcYvhSB6Au1f9Ys6viXBeeurbiQKrvf0oP7kADVYUzN9YCua/x
 a6zit1PoOjCMh44PKnVGgBRCRhU0CfvSYrhoxA8P45Ye7BiKkBm0StH0S/n/9duZxNKqbCFgYNdviR
 h0OHIRRNJYqc0Tw95yUM7tJKCf1eAwytfKrF8F6YwYcUQ/V1S+/AOfGfUWHQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=rwUBwzi7xfMGM3gnlz2nJv+3JsC676oosCJWmNEJmq8=;
 b=HOmSehjQy+kC6oCpZ6SUxpIPlijDlparMa9cZ7awXPTJLs7/4j0owgFxRWDzn2zsIB
 IAG9YOoiEmpC79+56phr0pTunmEY9rE4X71d6vAGzfT6Uf9X4Z+qt1yXQHhb3bWLA/Uv
 Cx/HPbXhrdOJJX9w53uN9mKOp6WP5Gv2LT5oo=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=HOmSehjQ
Subject: [Intel-wired-lan] [PATCH 05/12] dma-buf: Proactively round up to
 kmalloc bucket size
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
Cc: linux-wireless@vger.kernel.org, Jacob Shin <jacob.shin@amd.com>,
 llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Yonghong Song <yhs@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Jakub Kicinski <kuba@kernel.org>, David Sterba <dsterba@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
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

Cc: linux-media@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: linaro-mm-sig@lists.linaro.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/dma-buf/dma-resv.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
index 205acb2c744d..a20f6db99b8f 100644
--- a/drivers/dma-buf/dma-resv.c
+++ b/drivers/dma-buf/dma-resv.c
@@ -98,12 +98,17 @@ static void dma_resv_list_set(struct dma_resv_list *list,
 static struct dma_resv_list *dma_resv_list_alloc(unsigned int max_fences)
 {
 	struct dma_resv_list *list;
+	size_t size = struct_size(list, table, max_fences);
 
-	list = kmalloc(struct_size(list, table, max_fences), GFP_KERNEL);
+	/* Round up to the next kmalloc bucket size. */
+	size = kmalloc_size_roundup(size);
+
+	list = kmalloc(size, GFP_KERNEL);
 	if (!list)
 		return NULL;
 
-	list->max_fences = (ksize(list) - offsetof(typeof(*list), table)) /
+	/* Given the resulting bucket size, recalculated max_fences. */
+	list->max_fences = (size - offsetof(typeof(*list), table)) /
 		sizeof(*list->table);
 
 	return list;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
