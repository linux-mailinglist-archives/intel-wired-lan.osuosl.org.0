Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4855E83A9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B6D941590;
	Fri, 23 Sep 2022 20:30:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B6D941590
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663965006;
	bh=sy8H1uqlo/OLg3R+4Z5rDsP8BDsFw3iviPrUX9kAT+4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SDL1UE/cfjEYZdZriVPPU0QGtONAVcMTGrdWVrAMk4pEtAtKz1D8cxjwABFvagwj+
	 i2BpqmwQg8PWXMxDvKJwBDOnO1gqEXniD+OHxq+olCt8F1PDELzT/M25RysTxb4xy4
	 YPNebEeONb0swnpOYJsASsrBgofFC94SlLMprlOfjouX1HcqmheY43JjFjW0JunaWG
	 QasftcP1ifVVXkbWRvngpRkejG16V+U1cJCK7PMhSFC6UG5uq9jLtBmRlZhEb4bPgM
	 KANggMwfq/MGzDEn6uooYK1lYsiTI/TyraE5wNesY2DV0ar+A/nHm3nhGpEKNeVCAG
	 tMSD1aK7C3Q+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tSKFKtorhrFi; Fri, 23 Sep 2022 20:30:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4F5641132;
	Fri, 23 Sep 2022 20:30:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4F5641132
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 403651BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D41C260EA7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D41C260EA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ofkApS2CScVl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:28:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6027560F2D
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6027560F2D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:34 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id t3so1188830ply.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:28:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=09XDqhCmbOxMmk4st3n1VevKxFvu8TBGt9LJYr24nIA=;
 b=tmSIgEjpRAQXmkm8azRNZl00oYaCoaIErFlSQsC9mdeAAq+3iSNn9nByJzG4B6XbHC
 mXM0qsY5osWhWUWJ3SZ2Qs9VoVxnkOBovJAWAFQKyuFG+Dy1HeLbb4x78VkDANcjdMNH
 VJ9E4b7ZUDjMqpkV7/vAiFjfYL3tnBlwzaZi5KRpj3k19wU3B2iTX4R0jSVMmv0akejZ
 HIaTxd904YW7w3gdo0JybP1FRqNYXHXxlk8PR5E6kDlbVd1EV52qcvP6bmIHgkOH+vm9
 lao8WPiAk6d+JSJeIuJskzauGej/iRXCdwcQeHFGVrQqu0oVI19jpGTHL2hLkhAWUKEa
 ATOw==
X-Gm-Message-State: ACrzQf129qKTi7DNdhByiXUJTu3fQGqPZe2JoIJwFoGav68jyV2iJvQO
 dxCM5gTFGzIvX20UUJvoNS4rvw==
X-Google-Smtp-Source: AMsMyM7DXBOfv6ahzpoYpFJ1XA+uXLlf1m80ImgaNTw1lXpXdBLHWAXCKtzP0wavX+dE1aJb2tOr4Q==
X-Received: by 2002:a17:903:2015:b0:178:8022:ff1 with SMTP id
 s21-20020a170903201500b0017880220ff1mr10285638pla.18.1663964913651; 
 Fri, 23 Sep 2022 13:28:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 i3-20020aa796e3000000b00535da15a252sm6765031pfq.165.2022.09.23.13.28.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:28:32 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:17 -0700
Message-Id: <20220923202822.2667581-12-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4987; h=from:subject;
 bh=+umEDwGyJCv3Ovyx4Pj2CYIL4lHo8xavtPhh0E8bcL8=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhblZrOjZBzDi2GSWosP6rXkUyCU3IxBEiC+Kuw9
 wTqv/j+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5QAKCRCJcvTf3G3AJjMAEA
 CfzaZuEjLR7HquBXo8+EM4GS8NWzszH99hX9xWPHebOuW16pmhNIEq+Aju+xJdnrhZANxwQ9Vh+iy8
 ymNAeDJdi1cPUvm/XvEjIQdHYJrutoIiSKB2d0AEqLwbsec1LjBhbvhDu0LI7jqNxIfIv2/9Wt0lw+
 FLC6qE+PRYixT6MQix4PHQQlKlYq57pj+xWZMmEn7EdqoqjCDsI3K/t90ikcx3WVUqhltKxdMQKBBV
 x5co1XdfKAeNPVoBf0Q4pGe8YOFn/SbYAQ3SUpg9WyQETPSbnLumwlf27mINUyCKWF27Tg53zEYExy
 CL2Y77JbZEY8nCSjb5ET/WZ4BJLz8w55BmqKLuG+LHoVxmG9As/KzYhd4wNeF/dVm0OLi7gOh89qzi
 GEU1kcMn/xDpv1MQ2jDoG8VufwjUDPawkqASsD3lyfggklYm5al7OV0DrKzqFXHwaeBjaWHmM6KLKe
 37QfdNfUsWdCuBvcEjoUX7Za+u901T3eO2SKiBvJCpX2sc6vi67INLI4syc1DeZAWI+wioCztNVLto
 FEw2RcZEC86T5zincgBp5Ofm7ehCRUPa/wet1Ayqkgvsrtnt1X+1xS1o6I1ntxzju/C/TzBCm6nHcb
 R4gLY+rvdc1IBBznpLWzmV3Cz3ue47gmjjlvg+BX0gGRJVy0rhqVwTrXOpsA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=09XDqhCmbOxMmk4st3n1VevKxFvu8TBGt9LJYr24nIA=;
 b=C8a8bBwBCPpYqJC0ttlBfkppX2uMw5viHVMSx4NSUdlu6Mk2tJYnIkpj1O3sRUaf2n
 YvaKYhZaGs/8xWczPFhL4W6+saiCUf5KQGmW47sQE/VjI9iBzvPK3eyEePf3h3djFnDv
 4Xw5J5dvAI2eSiF2SIboitvBfMPVts9ASzBRc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=C8a8bBwB
Subject: [Intel-wired-lan] [PATCH v2 11/16] bpf: Use kmalloc_size_roundup()
 to match ksize() usage
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
Cc: llvm@lists.linux.dev, Alexei Starovoitov <ast@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org, "Ruhl,
 Michael J" <michael.j.ruhl@intel.com>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>,
 Christoph Lameter <cl@linux.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 dev@openvswitch.org, Daniel Borkmann <daniel@iogearbox.net>, x86@kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Andrii Nakryiko <andrii@kernel.org>,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Yonghong Song <yhs@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, bpf@vger.kernel.org,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 KP Singh <kpsingh@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Jakub Kicinski <kuba@kernel.org>, David Sterba <dsterba@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>, Hao Luo <haoluo@google.com>,
 Alex Elder <elder@kernel.org>, Song Liu <song@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 Jiri Olsa <jolsa@kernel.org>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Round up allocations with kmalloc_size_roundup() so that the verifier's
use of ksize() is always accurate and no special handling of the memory
is needed by KASAN, UBSAN_BOUNDS, nor FORTIFY_SOURCE. Pass the new size
information back up to callers so they can use the space immediately,
so array resizing to happen less frequently as well. Explicitly zero
any trailing bytes in new allocations.

Additionally fix a memory allocation leak: if krealloc() fails, "arr"
wasn't freed, but NULL was return to the caller of realloc_array() would
be writing NULL to the lvalue, losing the reference to the original
memory.

Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: John Fastabend <john.fastabend@gmail.com>
Cc: Andrii Nakryiko <andrii@kernel.org>
Cc: Martin KaFai Lau <martin.lau@linux.dev>
Cc: Song Liu <song@kernel.org>
Cc: Yonghong Song <yhs@fb.com>
Cc: KP Singh <kpsingh@kernel.org>
Cc: Stanislav Fomichev <sdf@google.com>
Cc: Hao Luo <haoluo@google.com>
Cc: Jiri Olsa <jolsa@kernel.org>
Cc: bpf@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 kernel/bpf/verifier.c | 49 +++++++++++++++++++++++++++----------------
 1 file changed, 31 insertions(+), 18 deletions(-)

diff --git a/kernel/bpf/verifier.c b/kernel/bpf/verifier.c
index 096fdac70165..80531f8f0d36 100644
--- a/kernel/bpf/verifier.c
+++ b/kernel/bpf/verifier.c
@@ -978,42 +978,53 @@ static void print_insn_state(struct bpf_verifier_env *env,
  */
 static void *copy_array(void *dst, const void *src, size_t n, size_t size, gfp_t flags)
 {
-	size_t bytes;
+	size_t src_bytes, dst_bytes;
 
 	if (ZERO_OR_NULL_PTR(src))
 		goto out;
 
-	if (unlikely(check_mul_overflow(n, size, &bytes)))
+	if (unlikely(check_mul_overflow(n, size, &src_bytes)))
 		return NULL;
 
-	if (ksize(dst) < bytes) {
+	dst_bytes = kmalloc_size_roundup(src_bytes);
+	if (ksize(dst) < dst_bytes) {
 		kfree(dst);
-		dst = kmalloc_track_caller(bytes, flags);
+		dst = kmalloc_track_caller(dst_bytes, flags);
 		if (!dst)
 			return NULL;
 	}
 
-	memcpy(dst, src, bytes);
+	memcpy(dst, src, src_bytes);
+	memset(dst + src_bytes, 0, dst_bytes - src_bytes);
 out:
 	return dst ? dst : ZERO_SIZE_PTR;
 }
 
-/* resize an array from old_n items to new_n items. the array is reallocated if it's too
- * small to hold new_n items. new items are zeroed out if the array grows.
+/* Resize an array from old_n items to *new_n items. The array is reallocated if it's too
+ * small to hold *new_n items. New items are zeroed out if the array grows. Allocation
+ * is rounded up to next kmalloc bucket size to reduce frequency of resizing. *new_n
+ * contains the new total number of items that will fit.
  *
- * Contrary to krealloc_array, does not free arr if new_n is zero.
+ * Contrary to krealloc, does not free arr if new_n is zero.
  */
-static void *realloc_array(void *arr, size_t old_n, size_t new_n, size_t size)
+static void *realloc_array(void *arr, size_t old_n, size_t *new_n, size_t size)
 {
-	if (!new_n || old_n == new_n)
+	void *old_arr = arr;
+	size_t alloc_size;
+
+	if (!new_n || !*new_n || old_n == *new_n)
 		goto out;
 
-	arr = krealloc_array(arr, new_n, size, GFP_KERNEL);
-	if (!arr)
+	alloc_size = kmalloc_size_roundup(size_mul(*new_n, size));
+	arr = krealloc(old_arr, alloc_size, GFP_KERNEL);
+	if (!arr) {
+		kfree(old_arr);
 		return NULL;
+	}
 
-	if (new_n > old_n)
-		memset(arr + old_n * size, 0, (new_n - old_n) * size);
+	*new_n = alloc_size / size;
+	if (*new_n > old_n)
+		memset(arr + old_n * size, 0, (*new_n - old_n) * size);
 
 out:
 	return arr ? arr : ZERO_SIZE_PTR;
@@ -1045,7 +1056,7 @@ static int copy_stack_state(struct bpf_func_state *dst, const struct bpf_func_st
 
 static int resize_reference_state(struct bpf_func_state *state, size_t n)
 {
-	state->refs = realloc_array(state->refs, state->acquired_refs, n,
+	state->refs = realloc_array(state->refs, state->acquired_refs, &n,
 				    sizeof(struct bpf_reference_state));
 	if (!state->refs)
 		return -ENOMEM;
@@ -1061,11 +1072,11 @@ static int grow_stack_state(struct bpf_func_state *state, int size)
 	if (old_n >= n)
 		return 0;
 
-	state->stack = realloc_array(state->stack, old_n, n, sizeof(struct bpf_stack_state));
+	state->stack = realloc_array(state->stack, old_n, &n, sizeof(struct bpf_stack_state));
 	if (!state->stack)
 		return -ENOMEM;
 
-	state->allocated_stack = size;
+	state->allocated_stack = n * BPF_REG_SIZE;
 	return 0;
 }
 
@@ -2472,9 +2483,11 @@ static int push_jmp_history(struct bpf_verifier_env *env,
 {
 	u32 cnt = cur->jmp_history_cnt;
 	struct bpf_idx_pair *p;
+	size_t size;
 
 	cnt++;
-	p = krealloc(cur->jmp_history, cnt * sizeof(*p), GFP_USER);
+	size = kmalloc_size_roundup(size_mul(cnt, sizeof(*p)));
+	p = krealloc(cur->jmp_history, size, GFP_USER);
 	if (!p)
 		return -ENOMEM;
 	p[cnt - 1].idx = env->insn_idx;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
