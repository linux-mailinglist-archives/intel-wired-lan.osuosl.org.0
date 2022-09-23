Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483DF5E83EF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:35:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB2C040A83;
	Fri, 23 Sep 2022 20:35:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB2C040A83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663965342;
	bh=DurNShh3ONyGp2OC7l3IDk+JRbc50GoJU03dZMmzI0o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1Sun9DoTHIX4LEAd0JuYbnHrBQ3kIqPrnRNm1NDzXd2KypAr/vK43sl8FTtxNKYt0
	 M/WKyi92I4OTXSAsRaWfV5fWOWoAhY9v8Ko412rGqvs9EXUQ54HVLwPMOO/8T1ASaS
	 kLhkknR5IUOgI8eyGAkRhkg024qTrzo59rY1axFnk5cd0Tl2QhE+ddasAoMWoLOfsH
	 OYdy7JchRdqPoLS4n8VUjyJjb9/7weJQUkjL6Ctz22AdgiWRLZpnRJVyLpp2N4U2CE
	 ikeI4n4xTa9/pOvmtWef85Hen/TQ/jsGIq7IQPVBavfkya/qEFKAvVfJzDGVQamF7S
	 4qxJ+dOeBKgVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PJM0PZVrV5pl; Fri, 23 Sep 2022 20:35:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A084441023;
	Fri, 23 Sep 2022 20:35:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A084441023
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 501CA1C2744
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B52640122
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:35:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B52640122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Wy1AWllFYj5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:35:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75A72400C4
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 75A72400C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:35:30 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id b23so1176561pfp.9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:35:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=+2laYBdgjwT7rG4W5AHSQduuvkvGMevdVubQImW4gKw=;
 b=XmZm7olBQFcSEf7DdkEBwJpz5YkLoCCisiaG6KYMVQFvljZFOfbbmzUMKGVLdgGMjx
 zggxUN0nbK2QakoBbZNt64rJ9bevIijXmBaTaILpapjObN6BtR8WcqorNI+OrqBcKY7L
 2dxmiV848Cbdw/Xjtzh5EDy0BOSjvQGQVyxQo4mA3+piisvZ5LCyrPpB9iAZgNh5inMA
 UXBagFnfZRAF49QQQ7sH/nsCJWu70g3qSI5qWGmr40IqyTe9R+AuFw6+Frh8jaKr3K+N
 UzjiyJp1rO0frRM0eYbWWR3xhhnBJgbzQBLhnWyejkba4M3XXFv7Wed0PpURArsRlPrj
 zAxA==
X-Gm-Message-State: ACrzQf21CHJa0FjAx0u3dGYTunE9siJ45bcGeN4MWw3lzSSpGZdoJMqb
 q7+347PwTs2qQN1mzl7R6UzGWQ==
X-Google-Smtp-Source: AMsMyM5bm7zGXJ9d50JTGsymxB/VLZYV8oPS2I+E2tFMZpMAmvrfAs1/p+X8f9kZo4aKjt6+zvlMFg==
X-Received: by 2002:a63:8649:0:b0:43a:d230:d3b5 with SMTP id
 x70-20020a638649000000b0043ad230d3b5mr9208334pgd.493.1663965329910; 
 Fri, 23 Sep 2022 13:35:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 w7-20020a170902e88700b0017685f53537sm6450933plg.186.2022.09.23.13.35.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:35:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:22 -0700
Message-Id: <20220923202822.2667581-17-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1650; h=from:subject;
 bh=/OaZMueZzIe84chcaXjPmGvBh3Vl4n1WZ7Et98TCic4=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbmpXV27OdVCurixM5mD3YL9FeIo8HzPKP6kKFZ
 0hj84SaJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5gAKCRCJcvTf3G3AJrk1D/
 9suh4VQDWJhn6CjYJdrIyeIOje+kXnxuVQ4rZWxcfisvcOa9LBG3AeDjRuKI4VpUdYD37IwPPRov57
 7ySYIwMkjVqKZEa/PzjhXiMhpeo5c/FR+mC/2/7gf0vf6wqxRDni79+/q13dY5meEj/JSCQ/VnxZRe
 gjJepCGBakVJaJJpuemoCwsjm59sySqVEfoXZQ3j8FvjLzn3UEHguFLm71uFRvZJYaFRgcZYER/6SM
 gtzHNWGWaCNhF8dkKOnwzFjb9Rnzxv996CnMgQ48xhu33oEvFn/qv87UNwxYH5nu+eGAj6AOn0942n
 o/n7ecuvzIw73BhNbAqSHTiF/7CH2P1ACFMXogDcRbmseRTH9IxMtimtJP4ycB5H3BlirHH62OwXYW
 HcNSihxuIstBMI+dXzPUAePdpDw9zFpCkThJFB3HawrMyY1xWxrUir3MaIirOiGPAaNsQ2phrSDz2q
 89SyrvWcLNxNEqTTWGHN3J4vSrnAPQTLDJgx+qlchawQhrFpywa38+u+aGHG0NL7zPvmR7xoWq31Bj
 MvQuhlk8RDsuhGN+mFYxlipeK0PD5eo1yTnzSxnawr2guLYHLoh5ZATYEPsnWaJ23aiXDLUrWeSOx6
 ihxdUdxuZS6AB+vqV1rDpWb7cFU4nZ6MydrAXZN1cwWnC866PyTB2WT4EREg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=+2laYBdgjwT7rG4W5AHSQduuvkvGMevdVubQImW4gKw=;
 b=nbTXxoItIcoLMSX/37BnKPPw/3YlEPQi9RGa22B4OfB3Mw3rQ7fVLlIBZDFWhU6SQB
 iQQy0oVdOCW9DPex5gUVO+9CVPiYxCD2RX7jYGmew9mYG9nePUONwhOxImpJpLdtHO3I
 +RIWIsZx79HIw7FNWO7gsYSXx6hJ7HZJNUkfA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=nbTXxoIt
Subject: [Intel-wired-lan] [PATCH v2 16/16] slab: Restore __alloc_size
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
Cc: Roman Gushchin <roman.gushchin@linux.dev>, dri-devel@lists.freedesktop.org,
 "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, llvm@lists.linux.dev,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Yonghong Song <yhs@fb.com>,
 David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Alex Elder <elder@kernel.org>, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
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

Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Roman Gushchin <roman.gushchin@linux.dev>
Cc: Hyeonggon Yoo <42.hyeyoo@gmail.com>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/slab.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index 727640173568..297b85ed2c29 100644
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
