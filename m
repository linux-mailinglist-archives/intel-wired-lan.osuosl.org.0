Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C33ED5E590F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 05:10:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A6F6418E0;
	Thu, 22 Sep 2022 03:10:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A6F6418E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663816255;
	bh=UayDfXGyJpf5Tb2HZnAfMgz+8s2QlhzHIc8IFd1aiwo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kvz8+PtlWRt9d38vSmljIWsBPLnCqTD6vbM34VCHq/JfHM4D88nGwvD7p5MlFo7Eo
	 KF1merU0A/zdf58j8St1ZTIs6UYQG1pIMbKbLfcNkzaGZEe3VQt+6wfCteTLZjeOsv
	 taiFoQGWlNtSphHUVK+2cf8vcw9Ou9HmFv3CkzvKddEiBY3Oh42j5nE/nWB2NVX+DW
	 aZ2qyDwelSgKLWUefNLYyp+p+MHQUY+7Vdj2iXIqtC/Kp9Yxhu4VKDJe1j07gI2n+L
	 /Q9s+AD6SxoM+V2Zejw8e7sEyiRC5Ou5UhnSEUk6VRDH4NsQl4b3LIQ/43MgQRge9C
	 RHIgru8hjeCZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vvKNyDz651wg; Thu, 22 Sep 2022 03:10:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7B3F418C9;
	Thu, 22 Sep 2022 03:10:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7B3F418C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF48A1BF397
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB0468301F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB0468301F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P7rFUW1PVIBN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 03:10:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB67582F4F
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB67582F4F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:26 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id l65so7937650pfl.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 20:10:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=9y2lxcjKWi6kM02eOSoQVeQPXSl5vobQ22c95G6mEc4=;
 b=UQQS8m5m/G5jCIc13TCoM14ttjl8eppHlBcj+LpCFDtdryGnJ7V+0Tdy/rLdTwrDjy
 3k6S0I6fKA4MdPlCmu2amRqYSIikM9JTdLbuK5gGVqHT2TPAdd6rtV1xnV/f4M5DB2Vd
 cv3O0A6PrlbRvFYMLHAhFicmGxY9+F83vq8fAGK8qrRMYprNwNJEIvuZfzLAssbnVx5e
 8OlZUwijfscGIVqerGGgSvSpBUPwDN0cRnETmt7C6jbReorprQiXwG82F3vladbnENb7
 +ZxtS3Vm4POwEINsAG4ypEnTm6y9wAtzRtTAdEYlJvTOvJKsI3ncON2X9EhnD7Q2tJbC
 ELEQ==
X-Gm-Message-State: ACrzQf1CIyyuMOXeZNhWRCj1Wg/feOsrq/GlCacERUW1KgA9khKVUSio
 ifROrij/7Hya0JzdrRsZ5Dd3BQ==
X-Google-Smtp-Source: AMsMyM7fmjxAfGTycH9CaoCA2DJAnd13bu5HArBXnwB99jjW/VrHSPoTFEUdZfu+ReZxNaNi1nSSsA==
X-Received: by 2002:a05:6a00:14d3:b0:546:e93c:4768 with SMTP id
 w19-20020a056a0014d300b00546e93c4768mr1278425pfu.36.1663816226130; 
 Wed, 21 Sep 2022 20:10:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 b15-20020a63d30f000000b004393cb720afsm2684116pgg.38.2022.09.21.20.10.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Sep 2022 20:10:22 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 21 Sep 2022 20:10:04 -0700
Message-Id: <20220922031013.2150682-4-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922031013.2150682-1-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1741; h=from:subject;
 bh=N6cTYse7nKSOYOPwHuuyZ39Ee5FBmcRJBaahsbeuoYs=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjK9ISVSHfuaLwQgHhIfT+G4+ZNlvTp+tw3ysmjP49
 mcPajiqJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYyvSEgAKCRCJcvTf3G3AJoHDD/
 9MEz1x/p8W1mV4RgWnzrofQu8Rnt8S3z6RAn+Qe1cSDrxAzlEofmKXpYWiJ+/LrW8d+DMyEPH/qhiv
 Z0a3iYatcr1nh3CMNcUGNtMmB0uLZf4MMZQ184oh/sUT8PfviA8YvnEqJsU39RxjaNFpvevCU+UIhE
 ampATmMNn3x9mz3MinyvwRAeCqjlprv9qGhZP19uivXAzi7A5LdGcnY9/yU4NERLhAyGSQzZMoevL5
 foxanGNGMhF7lJpEQx7SiHJ5/UGNfHDmQUAWnnIkH/iu4aw6z8wFCMrDe26riTARf1OhVgycx3C53y
 RsfcyayukdwLx9qBoxlSnrXwcUJmn8ly2s9mOX2jMHadZIKMM3erpLkcz5K5LzoAcHlMME0ZTa6H4I
 r+U57Oid2/dp01vdDgMvdb84JzOixL5JoQHu938RHKYP30IYQwkmhzBuFTkeMJzZsGS4WER47knxxd
 45A6nI1zHNqipyFcbwqyCP0c9FHuUWJex4p1UkuPhpfl9BEy2OV28T7pqLJh6gYsDDqnVtz/7bvacg
 zQ8eV1paLCDfmSbshlpEBTxLnGWlSfPt0cPNLOqHf+Rw64Ee8lJY4M1B9xEIc9508QU/bABpMn7ngE
 vWtwJ0BkH0HMufph7v+73fhgqm8PD3cLFKaT53fQXDIr4zxoPqlAoJbGBvtQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=9y2lxcjKWi6kM02eOSoQVeQPXSl5vobQ22c95G6mEc4=;
 b=agBKCvV0iC7GQIcf8sz7UOH3dVItREZG7jPdBvtdPy2YLOE0+XAy2KLGvZyzWCldr+
 eBmNfNQZyJ71RW93/RqEBJpErudlrwRKiB3G8SDyrXVW40aMl2oo1k6YG1lfeIUUjh9P
 GUamhTzL1Eje9pLqolXG4/wF2iRxonrtVdIpw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=agBKCvV0
Subject: [Intel-wired-lan] [PATCH 03/12] net: ipa: Proactively round up to
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
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

Cc: Alex Elder <elder@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ipa/gsi_trans.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ipa/gsi_trans.c b/drivers/net/ipa/gsi_trans.c
index 18e7e8c405be..cec968854dcf 100644
--- a/drivers/net/ipa/gsi_trans.c
+++ b/drivers/net/ipa/gsi_trans.c
@@ -89,6 +89,7 @@ int gsi_trans_pool_init(struct gsi_trans_pool *pool, size_t size, u32 count,
 			u32 max_alloc)
 {
 	void *virt;
+	size_t allocate;
 
 	if (!size)
 		return -EINVAL;
@@ -104,13 +105,15 @@ int gsi_trans_pool_init(struct gsi_trans_pool *pool, size_t size, u32 count,
 	 * If there aren't enough entries starting at the free index,
 	 * we just allocate free entries from the beginning of the pool.
 	 */
-	virt = kcalloc(count + max_alloc - 1, size, GFP_KERNEL);
+	allocate = size_mul(count + max_alloc - 1, size);
+	allocate = kmalloc_size_roundup(allocate);
+	virt = kzalloc(allocate, GFP_KERNEL);
 	if (!virt)
 		return -ENOMEM;
 
 	pool->base = virt;
 	/* If the allocator gave us any extra memory, use it */
-	pool->count = ksize(pool->base) / size;
+	pool->count = allocate / size;
 	pool->free = 0;
 	pool->max_alloc = max_alloc;
 	pool->size = size;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
