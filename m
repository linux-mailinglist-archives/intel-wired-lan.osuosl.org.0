Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6325E591E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 05:11:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4DB140609;
	Thu, 22 Sep 2022 03:11:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4DB140609
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663816263;
	bh=BdIRmrsPJ7C0qX7fWnpmQO64JziEGDdnUoMx0JDEPKc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6KePuI+OlM8U3cY6os/R42YJxMvIBiBVk6nXObZP6Ku3ds2TvLowRQkGY5lBcmePn
	 k93Std9Tj1DA3der8UgzcnhiQfal7TC0K8TgD+ool11LM3B5C36RdhZuoHMGqgm42T
	 Pe4jY6KlJ5CaGUIjLM1Q7IzYwOIqZ48X8CSqQesiXIbdkXp45rH9xPyGQOOEYGC0vU
	 n3yRiBP8DwOWfu7RbGlU6Hjhx91E0tIARegoJ4Yvgxnf+R495Rss35VlH2Rpu8OJGp
	 0QKXnQ0bcuCZ2HUWIiUTC+VJo5zq+qP3ZEzy9klvG0xWhrWXGQ8HvhydlH0ckbQuSB
	 s71LQzfKvswpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Q8_D_Udp_6z; Thu, 22 Sep 2022 03:11:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88F27405FA;
	Thu, 22 Sep 2022 03:11:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88F27405FA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F340D1BF397
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DC2CA405BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC2CA405BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FqjEkiZSo_C0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 03:10:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9E88405E3
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D9E88405E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:28 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id 9so7908770pfz.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 20:10:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=8ihjvmU6X32IA3g0n6Ob0CbMhk1X+mcnfaE/5Wfmhd8=;
 b=Ob+DWixNqPxNLK4wXy52N3zAz/NyefrLibeWA/oqbkCBB0pYf3pr75FqUFnWyl2SD8
 rdsUh4pAapQPt78uF4TWa6vs1Vnhb5A2/JaRhJqFSOEcJ5+6RJjMPezwDiieZ6NN3ql7
 1t5V9SPzikg+5VpFh1QLU6NZQkTgs7FnGZRLYKwd76rh+3JshtETjYY5abtWEzGts3Hi
 nMNgqkrOp79YEYtvp4E0pxShotl/BTet60sD7u1Odl3F6XxFam2UwXm+mPrlkttIRIZc
 LMjNwdv/Pp7HozacIky8YQfAPsyf3ujjCzwY9SVsl1b62akFB59mn7k9vRHVYK56AXNq
 7kIA==
X-Gm-Message-State: ACrzQf1ZbvPvbogA64hotYjcM8yOPFtbH4t3ycLlv1tqrbHZHu2N4JKw
 1iYFfCyzNwfneWz5AYHG6EtaDA==
X-Google-Smtp-Source: AMsMyM76eF8+VNznj7IzekXG0QSV+my0aV1DgaIJkS6htzHMwsh1R3Wrb+39lk5TYLYW7ESUsWFZBQ==
X-Received: by 2002:a63:e305:0:b0:439:6e0c:f81e with SMTP id
 f5-20020a63e305000000b004396e0cf81emr1277721pgh.50.1663816228246; 
 Wed, 21 Sep 2022 20:10:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 i62-20020a17090a3dc400b001facf455c91sm2649631pjc.21.2022.09.21.20.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Sep 2022 20:10:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 21 Sep 2022 20:10:07 -0700
Message-Id: <20220922031013.2150682-7-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922031013.2150682-1-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1167; h=from:subject;
 bh=pDNvsGLyQA8RpBfkkqJxHruRXSdA8gdZalovRqbX85w=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjK9IT/n4E1MQAIRbO7TQnliesxT9vRRUjnB997VqU
 NfNmMx2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYyvSEwAKCRCJcvTf3G3AJv1uD/
 0UeTRzC7PYbrNFpo0erBLhfyq0OXI7KWJPUznMmMf+cAop1hoIyAS6RCvOy3P43EFrYY2LvmcGU3Aj
 SICc7baXEFvYdMhDJ8d101AolLKruLzinzUGntwccPS2dZe2w/x8T733W5uMnEOoDIW14/zr4IUtRh
 Vlx7PoTaeYeaEQPZwbWSdxU7qtxeqxD9LsQu+HlBYfR1k5rQ/OwJUa0VLmxQS3VuLxNzcqUFIRrz3E
 N9wSWjXJ1fpBM5rUyeWWd8dLef4aKwvQUrxvsQ2VWqLB5t57NofX/QpwkS3ypabCJnUg2eUl37eba5
 OV6vc8FtBSMSsXXhnZ0qRfqcqAOpIlqc5fvFIq+bl3f4xCiJNeEM7atqS3LN6ZEK9rF9EWiIyjfIU1
 rFgqaXZ47QKcNt6D+tThDEVTDgBDzW+/xD6gFm/gAUYLMU55Xrc41oHohWX310hGuJ4uQfMnkpzfJD
 l7QDNBoaF6Eo/aHjjnO/L/2LHxrNen15gNgss8f3Pbl5cYUEIwKYQTUHz4t+WuflfhJ72ydBaVxPhi
 nvK5XI8oXLZUTCjvvJ0NvdCQbKmYhFiTddotTbfTvs9VyXcsa4oRA58e65OY4nlgV9+2HJHYaTy3u4
 CX+OyRwkHX1tSGbw74SSBv0sSXX5LiEItWNDNN9XJyygxijXQxQ7uWbdLfNg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=8ihjvmU6X32IA3g0n6Ob0CbMhk1X+mcnfaE/5Wfmhd8=;
 b=YKrPYMNBSJFFHg571lPm5+W8CN7DnIcMIRdXREqQlAZ+eLEk9A8maJxy/vrjrQP/eu
 TYffJ29H5vDdp6sidFBvQbhMXABopPXRk6i9GT1lOsVVh5dTUpn3JKlyT+VRKM4PpYM3
 aDSZJo/bWB/q00QaHXbLQBN7xuQW5YNdYkiuA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=YKrPYMNB
Subject: [Intel-wired-lan] [PATCH 06/12] coredump: Proactively round up to
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

Cc: linux-fsdevel@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/coredump.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/fs/coredump.c b/fs/coredump.c
index 9f4aae202109..0894b2c35d98 100644
--- a/fs/coredump.c
+++ b/fs/coredump.c
@@ -68,7 +68,10 @@ struct core_name {
 
 static int expand_corename(struct core_name *cn, int size)
 {
-	char *corename = krealloc(cn->corename, size, GFP_KERNEL);
+	char *corename;
+
+	size = kmalloc_size_roundup(size);
+	corename = krealloc(cn->corename, size, GFP_KERNEL);
 
 	if (!corename)
 		return -ENOMEM;
@@ -76,7 +79,7 @@ static int expand_corename(struct core_name *cn, int size)
 	if (size > core_name_size) /* racy but harmless */
 		core_name_size = size;
 
-	cn->size = ksize(corename);
+	cn->size = size;
 	cn->corename = corename;
 	return 0;
 }
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
