Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8D85E83AE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:30:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 871A461306;
	Fri, 23 Sep 2022 20:30:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 871A461306
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663965014;
	bh=1AJOwfab04bPy6gi6mYggVkgLUgRkpz4+cGtjK90Bb4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6LtB5h6hosoXSbKoN+kr2y1NlZwgEI7jaMkgtlzUZmDS1Sh7wEjquejeNn1MrXCme
	 QMglEeK3kN/h0OsI5q/PxumI54QR26hCMWy/WQKzinDFoFPKEw3dMd/YVkeYngj/AI
	 3R7+V5sFPpqvn+quL+WqXwKeIk705TfjSMfNjAmfH1qyXAMylwcQNwqtQtesOZCyqF
	 cImh/yIN4Wp/Rkb7TpocD6BFczQoEnB9WHZ6sFhmPaFxJ4qSRAAzxemkMTfLKfSFvS
	 eihhA3zPWeivf1dl4O3i4m4eewnHH3MYaFfpMNtjLFF/V3pbZ4yOe3cd9xnh58Jyqy
	 GwNGW4o+fn+fg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DhIGXWqVlBSE; Fri, 23 Sep 2022 20:30:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5627A6133E;
	Fri, 23 Sep 2022 20:30:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5627A6133E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D13C1BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22D2C41030
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22D2C41030
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mikG1D2gPwgL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:28:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D21CD41055
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D21CD41055
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:35 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id l10so1152868plb.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:28:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=z4tB+xVARH2BbBzGKcf3E9OvsPG9MUKkIVIFYw9OFoE=;
 b=bHU+nQ1svkc1+e/5m40bpaICuNQwqUF3pdgAakspYdThs0OITUQ2Ab9zkG6989axDz
 d4mw+h9KfX+pzLyH56Oue9mJKpjQMjkiRN8GPFxmOq/5fTDxtSZyAkX4QXOx+XysT9+5
 ntWjC4aCfJ7KUoWtnuAqo0bDTdkkddEwQR6TxkX8WbUuKTh8V/rZ1/KTkdoc4PUGpHk3
 FeQfv7gd/d0Pr/eWXLkZZVav4Vpd697r5XYoNIe6wcswExR0GRdK42ez46100xzmVCNX
 kUuY9cSe6UCNqJPBBebTkyeJoU6eCo0kKWAzLXMg8+cDBgieG8/Yws1FRFt/ut4Efect
 IcIw==
X-Gm-Message-State: ACrzQf0gVcIDfRPSvpxVPl5wlTiYhAbMfFCgPG8zI2M3hCP7DDs4UP7R
 86+keI/s3bAxPzSSUdAdna/f9Q==
X-Google-Smtp-Source: AMsMyM75IrvvzFBms5bHfHu6V2O7UB+rtpwccRdUWoQNc25BPNZqqAb4Stuw+QSSG5uxeFf6i+40Yw==
X-Received: by 2002:a17:90b:4b46:b0:202:7a55:5588 with SMTP id
 mi6-20020a17090b4b4600b002027a555588mr11300183pjb.55.1663964915056; 
 Fri, 23 Sep 2022 13:28:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 o5-20020a170902d4c500b00176b66954a6sm6438596plg.121.2022.09.23.13.28.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:28:32 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:20 -0700
Message-Id: <20220923202822.2667581-15-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3002; h=from:subject;
 bh=nsR089jDUY/rZ3RkLnBCmN0cxhulkR1WvQxc2IILkdA=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbmz8DrfaIQlG3nQhgCokX0k1pjcPoiZW0Jauf3
 tW1sqtCJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5gAKCRCJcvTf3G3AJhLbEA
 CE0iCQD7eLDXpM8ch5Nl2WFXcHp3LHX4r5WZApWbPThez4fy3zQ6oNOuYG3svqE9Ty3HRWiGtAuj1z
 52ieVU1DgCeOcKoR+WWmyjUwvEKyYiR5nSddmdky8FqqpEzQC4EtPsNCfpE7C5WkkbCFT2YOnKkP+I
 c+XG3sdrbNkpYqdfxTpOaqfpmDejGo/bN62+BnL1P/oGYvKbQbJwTsGZSFgCcDiGxIx4MUs8kdvOoE
 f3E1N/A5SnQc82KMjdHOBvqyr5/nmPWBXDf9PlAi8EX9EOeSdWA63gqrcMmtWF7k53AM8y3nnA1WjF
 ArSY9BsRELGcOYhJ3ZLW3AkptdWRSxpYNY4+Bez24YkZOCmYJtf8k9uUGxCocTzQbk81lJAneIcRM6
 CmmNxTps7Rcdxo//FEpitZVXcFDFcuKqMUFVXOtgkBr5VTyqhFW3U3sns9A/xdIvuzU1nLW21+Z/gs
 rX/cfIV7h8BHZawSfOBQwanV/aeRIHMA3P7DqC6Wryes8omgf/NBRyzIEWcXGOjM+KfNjcPoqUYaPn
 VmEXb44aYqHppQofZHS2SZ2s3815KS6eI25k+LJIkeIBCtJfER9/IiKu4geqN/K/Fc2osV+7bYCzqb
 C4y72qoT68wn68L1UOdkRy8UoFwG12ut8cp2hnf2M1C3fLZUVpj8BctMNe3A==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=z4tB+xVARH2BbBzGKcf3E9OvsPG9MUKkIVIFYw9OFoE=;
 b=Q4rh+gmlpihEosurwwZcg5v36Y7S4n07nnD5qTUDm6HH7U8YnWvyJeQCcPZN5psqhA
 1FcoXjDJH32RpyVhUAH8KodhEdorGpw+FG6gvM+RSEQNuZXjSLQE5zdS1isnmk0JOB4S
 3CG9eUjuqlbNuMG0YbmCq/VnSQeCLDo3sbD6M=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=Q4rh+gml
Subject: [Intel-wired-lan] [PATCH v2 14/16] kasan: Remove ksize()-related
 tests
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
 Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>, linux-hardening@vger.kernel.org,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 kasan-dev@googlegroups.com, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Yonghong Song <yhs@fb.com>,
 David Sterba <dsterba@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Dmitry Vyukov <dvyukov@google.com>, Andrey Konovalov <andreyknvl@gmail.com>,
 Alex Elder <elder@kernel.org>, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In preparation for no longer unpoisoning in ksize(), remove the behavioral
self-tests for ksize().

Cc: Andrey Ryabinin <ryabinin.a.a@gmail.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Andrey Konovalov <andreyknvl@gmail.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: kasan-dev@googlegroups.com
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/test_kasan.c  | 42 ------------------------------------------
 mm/kasan/shadow.c |  4 +---
 2 files changed, 1 insertion(+), 45 deletions(-)

diff --git a/lib/test_kasan.c b/lib/test_kasan.c
index 58c1b01ccfe2..bdd0ced8f8d7 100644
--- a/lib/test_kasan.c
+++ b/lib/test_kasan.c
@@ -753,46 +753,6 @@ static void kasan_global_oob_left(struct kunit *test)
 	KUNIT_EXPECT_KASAN_FAIL(test, *(volatile char *)p);
 }
 
-/* Check that ksize() makes the whole object accessible. */
-static void ksize_unpoisons_memory(struct kunit *test)
-{
-	char *ptr;
-	size_t size = 123, real_size;
-
-	ptr = kmalloc(size, GFP_KERNEL);
-	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ptr);
-	real_size = ksize(ptr);
-
-	OPTIMIZER_HIDE_VAR(ptr);
-
-	/* This access shouldn't trigger a KASAN report. */
-	ptr[size] = 'x';
-
-	/* This one must. */
-	KUNIT_EXPECT_KASAN_FAIL(test, ((volatile char *)ptr)[real_size]);
-
-	kfree(ptr);
-}
-
-/*
- * Check that a use-after-free is detected by ksize() and via normal accesses
- * after it.
- */
-static void ksize_uaf(struct kunit *test)
-{
-	char *ptr;
-	int size = 128 - KASAN_GRANULE_SIZE;
-
-	ptr = kmalloc(size, GFP_KERNEL);
-	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ptr);
-	kfree(ptr);
-
-	OPTIMIZER_HIDE_VAR(ptr);
-	KUNIT_EXPECT_KASAN_FAIL(test, ksize(ptr));
-	KUNIT_EXPECT_KASAN_FAIL(test, ((volatile char *)ptr)[0]);
-	KUNIT_EXPECT_KASAN_FAIL(test, ((volatile char *)ptr)[size]);
-}
-
 static void kasan_stack_oob(struct kunit *test)
 {
 	char stack_array[10];
@@ -1392,8 +1352,6 @@ static struct kunit_case kasan_kunit_test_cases[] = {
 	KUNIT_CASE(kasan_stack_oob),
 	KUNIT_CASE(kasan_alloca_oob_left),
 	KUNIT_CASE(kasan_alloca_oob_right),
-	KUNIT_CASE(ksize_unpoisons_memory),
-	KUNIT_CASE(ksize_uaf),
 	KUNIT_CASE(kmem_cache_double_free),
 	KUNIT_CASE(kmem_cache_invalid_free),
 	KUNIT_CASE(kmem_cache_double_destroy),
diff --git a/mm/kasan/shadow.c b/mm/kasan/shadow.c
index 0e3648b603a6..0895c73e9b69 100644
--- a/mm/kasan/shadow.c
+++ b/mm/kasan/shadow.c
@@ -124,9 +124,7 @@ void kasan_unpoison(const void *addr, size_t size, bool init)
 	addr = kasan_reset_tag(addr);
 
 	/*
-	 * Skip KFENCE memory if called explicitly outside of sl*b. Also note
-	 * that calls to ksize(), where size is not a multiple of machine-word
-	 * size, would otherwise poison the invalid portion of the word.
+	 * Skip KFENCE memory if called explicitly outside of sl*b.
 	 */
 	if (is_kfence_address(addr))
 		return;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
