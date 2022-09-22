Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D22DB5E5905
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 05:10:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3231610B7;
	Thu, 22 Sep 2022 03:10:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3231610B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663816237;
	bh=SOQ+Fy2Xd0rLmmfFKvewDHuTRsPmX7M857yDrT8cvw4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k6Mom2S7uuQ6tujiPAzwJ7PrGY0jEN5ZQQtf6Bl1K+XgRm3TDyTkfszfAijfBaaEg
	 nsV8EUoM765xV8OmpZ+baFZJeKGlul/6NZ/T0VwzfgCmKYUkYMc9ZwPN+e3GIquqx8
	 qU/cCapp8og4LnbHCpYlUXNQBlbeShve/tsvCVXtOTgxPPh1quLg7L3gO4Qy2k6olP
	 8T5jehlWUi8i4gk335zZdkgHJUUhHres/vrTqqh6NqOtXUbEd8fiqMqPsoWl/hmb7u
	 a7s4cg12ImMcilRyVrfYKMQLqAWQ5Eg28bnmAjuZuhT6vh1BRWzyRd9krPj++FfgXR
	 jf9jHw9OV9Mjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KyDkPPLYkPPh; Thu, 22 Sep 2022 03:10:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4BDB610AE;
	Thu, 22 Sep 2022 03:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4BDB610AE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15B921BF397
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2AD5418CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2AD5418CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tuf0bxXPslb7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 03:10:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B38D0418C1
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B38D0418C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:24 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id u132so7952377pfc.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 20:10:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=kaPCbEUam/i/QzM3EsiD/q7EbxvCz2hqpx3qsHkAHe4=;
 b=O8Y0tmfI3KrfqzHGldM2TyQrWShTp0tmVaJYqSn5ZWmguXvAOfYtV73LLXSdifEhjo
 BsaSD/Z9RVZ8E392nDgp6KObFwY58MbJQjFLr0dMlz+3Ai/xkQG9rJvv5/0DG80Rq2v0
 PA7dcUF89GZ9k5BW0oFRiB/f4qYbB5k6D9FfTdrzNzZ2zqY539rIgd3lyN7vk6Fl+e1f
 M2zHsFMutAYMn6r4qChe0Ugnu6u5il5pR5c+iRFgO+fGGJYQyFcEKgBYOgHtWcbfWAgI
 I3S2E2zK4yMfl26HNX4ZziRYeiY7hUfBPwsxh7vLPMi0S/lizlgrkJ4JRi+kwQn/XUoq
 WXuw==
X-Gm-Message-State: ACrzQf3PlGKcUrKWc1vbbHCaP7pnP4gQVOxqtaag8uWcafQIO5SMLiqe
 kZv2T+w/3Ho49qOsFz/6EkZl6A==
X-Google-Smtp-Source: AMsMyM6cFS7tDGVCwJ0vHG2t9zSWZS1Eoi8Welusn2TdzO1FITGlKW23X2CzrnylSu9gzNhY4M5M0Q==
X-Received: by 2002:a05:6a00:c91:b0:540:f165:b049 with SMTP id
 a17-20020a056a000c9100b00540f165b049mr1383264pfv.76.1663816224094; 
 Wed, 21 Sep 2022 20:10:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 69-20020a621748000000b0053725e331a1sm2959597pfx.82.2022.09.21.20.10.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Sep 2022 20:10:22 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 21 Sep 2022 20:10:05 -0700
Message-Id: <20220922031013.2150682-5-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922031013.2150682-1-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1342; h=from:subject;
 bh=PATxOgKCtfzCXQKH17glgfixgYzE1x2L+YHf7rSxpvE=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjK9ITJpSDjmxsaSk36KMYUjIvxLLAk9hi4Gv/fvEs
 tw4mn0yJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYyvSEwAKCRCJcvTf3G3AJh3FD/
 9lgh/1XHl0SkyqPlMmPB17u7DDgE4q/VJ/Qa3GzTJ+egqjXOgy56TZhDHA57JAbNFH368V7dUHPLKC
 QXVOMAIaBG86hiTbSG2GFtspKIl5m4mQliPhYXo+9i2ctGvX67kQtgkloJBBOBTzM1Va+l8n8oDiM7
 1keZZzJh1/Ke/X48PR3xg7Nx1uYbX9+ergUrLAPxTg/zdXdpoqFOJHqJQ3KTDdZ/Ei4EYr7MM+zZd1
 B+a+f4KPaYbr0rUNv/eRElOKPdR3IRmKr00cn3bz0YQJFHMIHIfiUC7c02Q5mRGArZMpC6TDBu3Tkb
 nuAA6r64037k3F4P3KgpNrjYdXUKHgrLD5MS0HV/wt0Jl9wh6vCNnbY9hyrP1HoFV59EkKwXqy05Vl
 7L7CE/IjCudzIhmSQJ5qMWxuufWw0aOCT98jEVLKn5HNir4xbt3Nk5GB3h8odtKKt5aij2g+sglk0N
 VozOjrkQEETzGVX7M0zWbpzsD61ZTOIY4ZAn6Zzztl/0Napt96blNs9J1EbovYn8uMQ2+XR6pZAwD1
 TALlt7LDxwlItLIQQBK7XhEI2TYqOric6v3Z1icQjPqGGv16cy/WXfeY/MEtdwAcxELgoSF7ClvUlL
 BHriLuCX3SJCTRPP98sRsMm0ReDlyAlIib9iPFvDtr+pDztAlOw51wwNqgZQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=kaPCbEUam/i/QzM3EsiD/q7EbxvCz2hqpx3qsHkAHe4=;
 b=n3JitkeKKUUxbz6yn64Uwj1L8NZF8ivw+xHJGwLWPTznbBHC9NKX5oIDtTPO2BaSLc
 93ZTFQf3icolOuiYEksXgK7g/tzg0rkadZNBpMtyblAayJyXz59n3d2igSogXrXOJeEu
 gpFsv/wtpmyI2nisZWM6BTAhUm+uMJ0L5a/t4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=n3JitkeK
Subject: [Intel-wired-lan] [PATCH 04/12] btrfs: send: Proactively round up
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

Cc: linux-btrfs@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/btrfs/send.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/fs/btrfs/send.c b/fs/btrfs/send.c
index e7671afcee4f..d40d65598e8f 100644
--- a/fs/btrfs/send.c
+++ b/fs/btrfs/send.c
@@ -435,6 +435,11 @@ static int fs_path_ensure_buf(struct fs_path *p, int len)
 	path_len = p->end - p->start;
 	old_buf_len = p->buf_len;
 
+	/*
+	 * Allocate to the next largest kmalloc bucket size, to let
+	 * the fast path happen most of the time.
+	 */
+	len = kmalloc_size_roundup(len);
 	/*
 	 * First time the inline_buf does not suffice
 	 */
@@ -448,11 +453,7 @@ static int fs_path_ensure_buf(struct fs_path *p, int len)
 	if (!tmp_buf)
 		return -ENOMEM;
 	p->buf = tmp_buf;
-	/*
-	 * The real size of the buffer is bigger, this will let the fast path
-	 * happen most of the time
-	 */
-	p->buf_len = ksize(p->buf);
+	p->buf_len = len;
 
 	if (p->reversed) {
 		tmp_buf = p->buf + old_buf_len - path_len - 1;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
