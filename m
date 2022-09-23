Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD3F5E83A4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:29:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D583C842E8;
	Fri, 23 Sep 2022 20:29:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D583C842E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663964996;
	bh=BdIRmrsPJ7C0qX7fWnpmQO64JziEGDdnUoMx0JDEPKc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bbBsqTcYjpwbRsi94qH1frFwExZesZXc+c99tmeD+3ql0jLzLsFu80Xe1SCQbUrWJ
	 enxXd7L5KeA7FVSLk7S7J0Fcsa/5oQhoXyto/nLuxS84YSwX4dqWuM76eoRlcU7lj3
	 HviuxOqS/Dm2lQCAFb8NrdwsoFjYx9vF3q5Y8609KbhULG0NpNSG9zt9CCZ87Kl3b+
	 dKoXFSz3xoBPP+6JWYuWWlmYvugymPfNWD/o9gFzy54Gz/qEXDzkqDIooDu+THdd3q
	 NlLlmE0qare0U4F9nzulivlRa3r9Xox9nWo+fPhMzZRc88hNKV8hIogu39Q887cNzE
	 3o2uS7Wb3k39w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JnlVlkUVsOBE; Fri, 23 Sep 2022 20:29:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB1EB8430D;
	Fri, 23 Sep 2022 20:29:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB1EB8430D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9814E1BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6389081460
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6389081460
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ChPXrzfJXULE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:28:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8467813F5
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8467813F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:31 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id 78so1227028pgb.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:28:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=8ihjvmU6X32IA3g0n6Ob0CbMhk1X+mcnfaE/5Wfmhd8=;
 b=6UM3nbW2Kcj8poW3f663znxHzFeRYaXxvPsfqBZDeAY74Q83bs9mYE5haqsTHyghn8
 5KR4l/ZUhJtkLxfrFlFih3RFMzjkRiuQt+5Y6edSygV2z9/Jo0384GbwDJamrDGwaqM9
 O9RvOyzUYxU856Lga2mA6xdAaOA2wdf4n1T+blyNfivF+dcwhezDpFDS2OXtwOOkZCvM
 9Gyqttux9u0lQaV51PESOGWHk7seFRY8/5sNNYnUSQTrI+8Rk0sTb23Qg3o9Jdqo7OGu
 rTEfJu5viCSUnxKa7KWMCRzZ+Ezj9dGg9hkYz4V/pjCuInkCDdEeXpn7OtzmYtWbhNt6
 y6Eg==
X-Gm-Message-State: ACrzQf0fMQvlk129V2gPpVk17TkgK7pbfPurH6bjS4uvAVnZq09CGs3N
 DrEhJJJQbx8UrRtzMSB0PA5VsQ==
X-Google-Smtp-Source: AMsMyM7hhwlwgGRqkrSlb8k8bTqhsy6m3L3BTgcy2EFgVZwJvbZTev1f0ePX9YiutVAIEpKxIDEauA==
X-Received: by 2002:a05:6a00:2185:b0:520:7276:6570 with SMTP id
 h5-20020a056a00218500b0052072766570mr10823472pfi.84.1663964910977; 
 Fri, 23 Sep 2022 13:28:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 a7-20020a170902710700b00176ae5c0f38sm6420511pll.178.2022.09.23.13.28.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:28:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:15 -0700
Message-Id: <20220923202822.2667581-10-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1167; h=from:subject;
 bh=pDNvsGLyQA8RpBfkkqJxHruRXSdA8gdZalovRqbX85w=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbl/n4E1MQAIRbO7TQnliesxT9vRRUjnB997VqU
 NfNmMx2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5QAKCRCJcvTf3G3AJpnPD/
 9wQBqpy8w8j9Te2wEo0D0Hjxhxo55M1tuhtvCVgvJfQ/ry5sJ8eH8KM6rA1+i5+yyravM0DuBRah4g
 uhrc77nIoJb2kV7c8d7t1g4x8ALFz6XhAPkRpZqDiQcQBAvW8O9x3Cx08jWpK7nAg3/Y43225OKOB6
 tVTYN27JCpBxTSSIqc4UFTMXN2IAlMQ5Ob/Zqv/+83XGkTWlJ6QhWxs83ZN6cbP38BNiVxIU8R4X4q
 w2vVsmNS7RSYF8P5DQihlKqCqmUoYEHbPbwmJ7+PuzAaQl9B925ePSW3sWLgeYKees47F1AL85pjZc
 FvVYlWbV8TxR5ah3RwNTZ38Wn7CZrVxE9cLyRCKZf3k1yiSPL97A/a4HIYBpAtaCVUIze1SOb44gG5
 AeD/OBUhZfYjCqNQUMcrXaVEETtQEQyYObvDbWpjZMSgelJPeNBFTw4EHffM7FA71KwkU2YjesRYnu
 oDThnDhHv4KriQ3B5f+kESZJ2BjJePfLpOXMGt9bH1GXYnTKm2ZjNYVGmhOLx9jqiq7V9DNRZ8gtzJ
 iP1adulU4jNHuzcGVGv1REEmZUqTzrvgs4oy3VrE+j7gZBdT6IsTqQy5TPFC3tl2xHFdDR3KPEPqVf
 jCvjUcb44rcHyPLMelC6K/nXZ7kIHy17/M3xfiCKeCwJLqv86xQvXPgVl2QA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=8ihjvmU6X32IA3g0n6Ob0CbMhk1X+mcnfaE/5Wfmhd8=;
 b=LPhVNeH7/j6XoYSyZU8Fbh//laqcTzvu//J4Iy04p1XS4de+UJKinl09GFu2JyMlZM
 OiqIFGFrD5z7VUB8De1Lo4L81RAcz4hJEUvZG4jbI7uvuCZ21WW6CkLOkKLLpki0ZPPj
 ptuTYFeO3yYhD48tSYI8BF3HO3FHnDA3HFKOc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=LPhVNeH7
Subject: [Intel-wired-lan] [PATCH v2 09/16] coredump: Proactively round up
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
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Yonghong Song <yhs@fb.com>,
 David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Alex Elder <elder@kernel.org>, linux-mm@kvack.org,
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
