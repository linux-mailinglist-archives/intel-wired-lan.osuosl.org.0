Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DF15E592C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 05:11:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9411E83155;
	Thu, 22 Sep 2022 03:11:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9411E83155
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663816290;
	bh=O9oCyci4CdDUmvihG3geyjIVzxCTltEpP1kqvbKEH80=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uanjQUbABgcmi+lEf1v0BO4v8w/t3UIRSR6r2HHUuw29AyB71iks0/ScsrQP48zzG
	 9Bnh7MBMV73/sgEzkysL0GVfDo+alfSsQYRKdZbCu9QmYKSwup2ZnUXgjHdG5zuZpX
	 J/8J/iaBb/tBTl2Sqt+VnDmDvZz5CAMqT5ngK92ElJ3onJk7pS+6LnjhvzMmZCtbM7
	 oWxqC8JZHeEJXrdhNT8sknMG/aQfqUpqjvV++e5H4Pxc9pAGNdsVi0n2CKcMPWfj/U
	 69f/qU277Y0OrcudcP47Z1yutbZL+Rtf46tt78eDZH/q3nutBQF43uewJ1ceNffQSS
	 qbChclsCxn6XQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7SNsL4Q3mjWe; Thu, 22 Sep 2022 03:11:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76558826C0;
	Thu, 22 Sep 2022 03:11:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76558826C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E18351BF397
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA26B83046
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA26B83046
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C1XIP3bVmViq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 03:10:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C76282F4F
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C76282F4F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:31 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 s14-20020a17090a6e4e00b0020057c70943so833534pjm.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 20:10:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=qxVZgozpxUqw/OCmt2hiw12U/0MyvSZtu5qBBtiyWvw=;
 b=ZlVrGupkueGYw7OI3j51sx6RF15Z1NdRZiMlqZAtA8JGvuK52Gh/GYmownTU7ir2qV
 1lVo2/5hrAiNfOg8buwJ7tSl2tKnO5aaEyKbN+1aaxdCW0mMLETOnCT3jAAY+5q8Xfj6
 BINdKp0zSR+IvZs5ks1EOX2gRzQx2TO3mKvO4UKBJgfgKt+1+GJ4ZNhRXvDvIXphR3Wn
 c/icJEP6E69/EdKDl2gURB+V8dI8Z5ZWJJtCVHK4ju6/hMyC+6r2mEFU4wIpWzzKrJ+W
 mM7Rvb5uNdxjuzCIxlGgJsxsPw07xUayQLzMxmXyCtIYNHztIDFrGIXe2KdZDmMjdkWM
 dmug==
X-Gm-Message-State: ACrzQf1gc51cL4W/K0Do1FUPuNP31SC+vVnYuxyk5wa1yNRqR3kx6C0N
 7x9ksV+6YXPwU4vTwrq0DkCHbg==
X-Google-Smtp-Source: AMsMyM5eu+CoD5QA+YWTzFQPQA65ZAQe9wx2y8um8qAtQyx/81XSGYYdjISHnZdAlryk2cpvPh097g==
X-Received: by 2002:a17:902:7e83:b0:177:e667:7841 with SMTP id
 z3-20020a1709027e8300b00177e6677841mr1282723pla.18.1663816230671; 
 Wed, 21 Sep 2022 20:10:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 w23-20020a1709026f1700b001783a917b9asm673159plk.127.2022.09.21.20.10.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Sep 2022 20:10:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 21 Sep 2022 20:10:13 -0700
Message-Id: <20220922031013.2150682-13-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922031013.2150682-1-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1539; h=from:subject;
 bh=OIiXewiJtJloKAX8DOwo5WpUjhu8p3BhQEgjb94POmU=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjK9IUphiC6b+jlnve6/WNpL7tI32u/OY+d1HLdPMo
 annUuq2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYyvSFAAKCRCJcvTf3G3AJlTRD/
 9zGxikcJjFFHdBDIRC8el1bT8i8MIl1Oz2r6j4svUQE/cn0btongvxnGDbygRuZC43lwApaQa0M8Pt
 AvmL/hvvYmdFiuzN6An0FZ4ORvTCLn1uzH4EirSEKQxkllpH0r1YW2hqSLpqcaY86iquT8vB02Tv16
 e13SWQA7nA1/QWGk0qUxi0YLrW0hOtkH2mg2fITcspULau1LHMsUmc37gU0TbvIrbx9hN87N2NnOzz
 alo6xwbNstj0cru/3QyQ5TJdhcVKP54qndI7drNEdhl8YWC7CNhwu0vFdbZ/LfLgxO2PtTl9nz23b0
 fDmn0WywY/tJQOqhYvvIWsDN69+iEub68yvR3WWj2bKYgwuaZ89nPNObeP4LOThYNTFoEclKMY7Rja
 jkOQc8wAtgZmSKL9TVY3alYeLpe9CQJEnOq4oSVlfTwIftpgULM6xBq459EK/qrpUHyyV8vmzyoEjv
 Pz/49h7U3Q7bYxnoWIkIniYWWT6d9d1DH3MtHi4eCTaj2iVTLdQRLx7Zw2/KJ4VvLPA3/587G7zFdJ
 OzdFQo4VVfEuH6S3EaIPg5mtVX0AbNqQxBEV1EkPNU2qQK6x6coo691bRHOWqgucqydaoj3YDERK1B
 3pAijp4vU8wsUovuHXrgjKcWnIuVw656YURrFma1ktTDOShGFqP+WQ5kIpqw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=qxVZgozpxUqw/OCmt2hiw12U/0MyvSZtu5qBBtiyWvw=;
 b=YceqUeE5vYLBI4ZX8VHDnLZLf4LI9m/umYwz5bsG0CsZBYwVRKID0Xij6KROSl4WW+
 /TrR0tpL0v+DF8mfo3NenZgJCDlxojKf81TDxbqYAGTS/Z+tsMmbhRNDYO79WP6ExIu9
 zC6fMXi3wRzqyMx5oelK9O9SszqI+SIirgmsc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=YceqUeE5
Subject: [Intel-wired-lan] [PATCH 12/12] slab: Restore __alloc_size
 attribute to __kmalloc_track_caller
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

With skbuff's post-allocation use of ksize() rearranged to use
kmalloc_size_round() prior to allocation, the compiler can correctly
reason about the size of these allocations. The prior mismatch had caused
buffer overflow mitigations to erroneously fire under CONFIG_UBSAN_BOUNDS,
requiring a partial revert of the __alloc_size attributes. Restore the
attribute that had been removed in commit 93dd04ab0b2b ("slab: remove
__alloc_size attribute from __kmalloc_track_caller").

Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/slab.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index ac3832b50dbb..dd50ed7207c9 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -693,7 +693,8 @@ static inline __alloc_size(1, 2) void *kcalloc(size_t n, size_t size, gfp_t flag
  * allocator where we care about the real place the memory allocation
  * request comes from.
  */
-extern void *__kmalloc_track_caller(size_t size, gfp_t flags, unsigned long caller);
+extern void *__kmalloc_track_caller(size_t size, gfp_t flags, unsigned long caller)
+				   __alloc_size(1);
 #define kmalloc_track_caller(size, flags) \
 	__kmalloc_track_caller(size, flags, _RET_IP_)
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
