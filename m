Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E12795E83A8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:30:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6950B842A1;
	Fri, 23 Sep 2022 20:30:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6950B842A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663965005;
	bh=nnt76UhZm8ZtK9htsTzNyLqpJkYaIZ8yyFHf0jHdWTE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tskjywoGO/B6uJ4nQWznIK3kXtIzDy0gcjpL5ZwhDXzJk7V9rN2t92wgxxm4bDE16
	 sN1ZWSySSQLpdR4pzItw6QqAvJBED3OtdjcYNDQkAXelmw9+swVjxXARoRfm3+jiQT
	 sou5sv4xUQs6WnxK37WL1pN1Q1TeWytyMQpkAoEka1HLrlJNhKSQeW22JEIIq/rfvT
	 Q7HKp585rJ4TkWxpqxN6MZqDej/UJ4S0AemDI94lpNJFnD5q8zr9VdozRhHrjh5ek4
	 5xJ0Y+ZcmaQxX7U4rGmfW+/ObRL4Ml9JCUdW6IKqNU8lh7Ev+FaVN0cwfapqznWtzI
	 hGd961Kbp5HJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V0JqpT6Q3lvT; Fri, 23 Sep 2022 20:30:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43AD9842BC;
	Fri, 23 Sep 2022 20:30:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43AD9842BC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C8921BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2AB6783EEE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AB6783EEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2e8e35w-PQcM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:28:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A17BF81AEF
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A17BF81AEF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:34 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id fs14so1052581pjb.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:28:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=PCPU7pjQsz2sISTfhiNbNnCu1P7dpEEV5lOobjZTacw=;
 b=qDZg4g48FskXYfn3pusXUtf251AndCI+YBFfmH2bYXs4hXtWKzCjFmo2HDJFWktQ2D
 OOgTeaAPyHTlGJ4ZQq/68Ql7c/+r2WE2KS4PfaQ4rsWsx/q1iJbgPQCXlLgSZKVWS+bz
 yyhaU0iaKCLNWq5ei4EhI2e5YMptYcOsa5wgWUpT/r6b5M4q7GcUiX1roPKrmoOYUa1N
 te6VpVpvt0FE3CcYckWm5VAaa8WYrtBpCOd04x/qshTlaMJT57Zvunt2qeLsO8b4TU1x
 stPER3owu76ITBo4VRsS51dlF2L98hu1YXorML3mVh2R9kh61zXEJu/ati6FrVSFqyyT
 tA1Q==
X-Gm-Message-State: ACrzQf1wSUwcq33rOd4/MZIa5iudWWsShV2K3Ixjaunn8X0WUto+Ga8y
 nbi2Vk7EGgL0AQigKMPShFoQ6w==
X-Google-Smtp-Source: AMsMyM6XUwdmhAaIK2A3UxRxY7Sbzemd3FVYShW5LY9Q79SPPQFgRGi67TrIU8bwe4lKUNw9bOUpJw==
X-Received: by 2002:a17:90b:4b09:b0:202:ad77:9ee1 with SMTP id
 lx9-20020a17090b4b0900b00202ad779ee1mr11743471pjb.10.1663964914034; 
 Fri, 23 Sep 2022 13:28:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 p67-20020a622946000000b00528bd940390sm6579869pfp.153.2022.09.23.13.28.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:28:32 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:19 -0700
Message-Id: <20220923202822.2667581-14-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=821; h=from:subject;
 bh=1Gas3SCsMDWgBChil0VwFgY9Fr6zuZgi/zbZ+v/amZU=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhblw9hPBOt2abeHvNz251QmxKrK5qZ9E2npmHln
 zyeWomSJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5QAKCRCJcvTf3G3AJoKkD/
 0Rw7ftGkpv6Cp14LlheghY8ULuROeYsl+xBHJIECYJxb7Zj7xNiTAKJPkYJG2rfH7dJMP4mnVCyvlE
 aX9DI2jRbF0DpDm8X4kNTAYLiAnekyLGRBI1uuwyosPWzFt5fthMVPKTGw4skU5eJeoliXwvKRjc7w
 H2hvKX03v8bjW2hWSueT4lkm2RIg4t4qCd7tAHcfkVFPluuXqkRyHl5jKKj/gvloXfr0a7NEcoK6+B
 OMr9c7RIevNvATAWl7BVsl1C+sgXBlqnebMSX5UB3sQFDThE2TOU6PM8pwx2uGkviWtrIORGwdnrqF
 0BWUxYm3S7RgbB0E08f07OQbs6iZbOosdIECqTf8jwkxFWpqXk+ywZexmptnljyesSCsq4Q45yeVtp
 CivmXPCHnnW/ltVIwlzqLXkKSA1ANCZugfA9MQMfNYzYLJmYhU2oE75hyFkzyLL6O7DnVutl/lmgOX
 3BjHh5o+PuSYbw4gy0xL95tSHEokwlTTS9maudQ7pyB/lQFm8Got/UmZKScGYd6rVWQ+NR3+w3ud3e
 oz3kjiT0YzaO+sAjrsJDYKalavBaxhajZL8QMmPOZRL6XigFy+8x9O7y3Ji6lN4tryxNvAYJ08zYoV
 GZZ+QW0vnk/Etuibtx0IyAfth89gRlflFdIp1c7NouB249gCifAsYbMMOFbA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=PCPU7pjQsz2sISTfhiNbNnCu1P7dpEEV5lOobjZTacw=;
 b=Iu9IAyDuLzG+6v/Qe/VDx2yB77cAoW4xXxxoWLwcPs2hQ2vdFhoGM7rk54C0JPoyAN
 AaLg5lQQvhHAFcTmsUdZWlK9hHQlqBPwPeDuvjvIf+b16rmlZZjb/iy/HTS0LU78apjW
 nLGtaiMCoXEcj1ad5zoxgqn0DT23BivJkRE/I=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=Iu9IAyDu
Subject: [Intel-wired-lan] [PATCH v2 13/16] mempool: Use
 kmalloc_size_roundup() to match ksize() usage
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
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Yonghong Song <yhs@fb.com>,
 David Sterba <dsterba@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
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

Round up allocations with kmalloc_size_roundup() so that mempool's use
of ksize() is always accurate and no special handling of the memory is
needed by KASAN, UBSAN_BOUNDS, nor FORTIFY_SOURCE.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 mm/mempool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/mempool.c b/mm/mempool.c
index 96488b13a1ef..0f3107b28e6b 100644
--- a/mm/mempool.c
+++ b/mm/mempool.c
@@ -526,7 +526,7 @@ EXPORT_SYMBOL(mempool_free_slab);
  */
 void *mempool_kmalloc(gfp_t gfp_mask, void *pool_data)
 {
-	size_t size = (size_t)pool_data;
+	size_t size = kmalloc_size_roundup((size_t)pool_data);
 	return kmalloc(size, gfp_mask);
 }
 EXPORT_SYMBOL(mempool_kmalloc);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
