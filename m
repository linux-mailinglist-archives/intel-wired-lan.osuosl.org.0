Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B865E839B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:29:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8BC88427F;
	Fri, 23 Sep 2022 20:29:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8BC88427F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663964969;
	bh=skWERy3Jz9p8ReNOMqJC7+gXz8UzhBQ0cdFuJMC54P8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MGg5xO5OqUT7m61VuvNNC855+TJ6fqxQ14HK0av0aUmCjKaWNS+BD52ZwA8L45ZsQ
	 PEYJaQEOQUSy7gG/US+RkFMBcKcrU8iNX2G014Av7P/0friYwwCiZzeiIA9dW834SQ
	 2gDbi/VOSQdQPeysoAP5PJIGBUBeaFP6m9y8regPpGIDc/AsZuFMiWJH4WrE2zEY4q
	 tb3ADfxuVjWomi+6YLkx0xYoSZy13zqHaxgrVbJbVYNZ8iVI0ubUJkeW6bW6XmqTKr
	 YQ/A5haNlvajdQdoVrf/+3AGN/5xWaTTCAYPT8cHdd+2gZExna50B9ABJ8FYGlo7Ni
	 xYrnPRPPSBzMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JXHXgUmtUNzd; Fri, 23 Sep 2022 20:29:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AB4A84267;
	Fri, 23 Sep 2022 20:29:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AB4A84267
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A5B01BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 22F9360D65
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22F9360D65
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uWi00peIjoJh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:28:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CB9B6059F
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4CB9B6059F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:30 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id e5so1194504pfl.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:28:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=lIp3Rau3XN5DhulJvqmP3ROLBDtGBYLacs8yQVXUsIc=;
 b=CHjyOUavfQbZvpU7zRK0hz24FG5VMnQKoDKWx5HUMuXQ4y8ifBdlJim54gfKHa2e8P
 CrYaqadh3YoEi3zXBTkdXNTup27RDFlWZhnsi5pnAvkpwDU1yS7zEPgdp9YL7W6BS0HD
 DdGRFYa6XjTcUEaJ1/iBW6XVHxiZm4IkRsYCrW0iYltmh7hppGubT1qyhRVT0dySzyqk
 yfV4WnvqjF4iUiJ7+rf9HwlWNwbhOm0OxQ0297PPgLXQ673i9r135eVk0h26Bc8LJHTn
 PqI7N64Ayv5Neex5mCYAV4CkisU1eX2GaFeeXxntQZ0RCRkUhoGjgF29EcE/cLkWKrK2
 ByQw==
X-Gm-Message-State: ACrzQf104F1vBagkZ3eiT7NesVBbGRJ13BzL5gv2LWr+oIVRR5tv6blM
 K9JBoK2J05xaIPmS3FCItS2PTA==
X-Google-Smtp-Source: AMsMyM6/T55zDNr2wZmPqXofdZ9R/U3i46Zn4bR+d3pjEfZ773lmSd+dIb1qk1eRO6CnC5XeCBBzng==
X-Received: by 2002:a63:2221:0:b0:43b:f4a3:80cc with SMTP id
 i33-20020a632221000000b0043bf4a380ccmr9160031pgi.367.1663964909744; 
 Fri, 23 Sep 2022 13:28:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 a5-20020aa795a5000000b0054095e1b2e5sm6854521pfk.215.2022.09.23.13.28.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:28:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:13 -0700
Message-Id: <20220923202822.2667581-8-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1522; h=from:subject;
 bh=B3w/yPcNxrDzZTqNaOBRmqqUYMKjQkfGlvei/e1+oVk=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbkv/6yf2iFhq9YdN0Aj+2wDjdTaVU6RYLE7C1a
 mKAEuIiJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5AAKCRCJcvTf3G3AJuZJEA
 CsVm4vzR8guJhS9ev8gPlqvsMaYX7r8aLG4A2NyUhHtbSYNZT7nhbnknnZom1pWNwXgl8qpCTbd6+f
 vjFzrrIjZtd4D+mSEQPZbx+7rT8VpT3Gtb3/D2nYYDaxLdL/DH99n2c2cbhe8zTWcTnyynJYvES2KC
 EyHjGO9+9QBzmAOfL6UqxFPxgSN6Mwe3il8Jqb4M5is1whaTpYWBL5PS8pHVDzWbA0hBRdEd/F7aPw
 o3KlBtzCSp4XR1hHtVT8NWbMPwch83XMmXdi0o6/GubfCfksfBTpaXo7dIG+SMZZQWfgCIvRni8oUC
 qF3eZ2rfkK2BLw1wcdknu/z43jqhoPV5OtU9fgboiNn0cRbYZC7GmCUWAST/dEfoMQx73mUpyFKCbB
 QKgl1tbq34QTMFjDcV6u59zyZLRrnP18YpxwCaUglLSod93wDcCin1+C5OXvXtCxNg3CAAlxDJHTVx
 0pTds4BRbXQj2/4i4Hb/jcctaZnAs0UoMTTcW+BrbOixx0+CrzBJ0vNQMZh5Hs2WYucbihNX7w0sum
 2KnTPVVPKpteClxy32zMqoJRvgjzvqik9+nj4bHX5wgV6aVi+dbQdRPezJyGYxH+GkBtsj0h3BjaPk
 k/mBMntGy8FlUD9pzWHKmr5gF7fYzXCDe75VLz+YEUGvOyBawRkvwMlkpY3w==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=lIp3Rau3XN5DhulJvqmP3ROLBDtGBYLacs8yQVXUsIc=;
 b=ayrELvkz6RCr+VJ5YTbdaI+C+7T6BGsJEAguxUgCPIN9LMOSG1cQ+4QSxLfuYecJ7g
 rEkt3pKt8Q3IXycqxre3TSAUHzDDJJG0qs2FtZn9cMqz4CShi0DQb1RnbrzDmC1TGFDB
 UCnS6y6zB4oIa+C342OBOENRxbAzNtGyV/eDA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=ayrELvkz
Subject: [Intel-wired-lan] [PATCH v2 07/16] btrfs: send: Proactively round
 up to kmalloc bucket size
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
Cc: llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Yonghong Song <yhs@fb.com>, David Sterba <dsterba@suse.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Alex Elder <elder@kernel.org>,
 Chris Mason <clm@fb.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

Instead of discovering the kmalloc bucket size _after_ allocation, round
up proactively so the allocation is explicitly made for the full size,
allowing the compiler to correctly reason about the resulting size of
the buffer through the existing __alloc_size() hint.

Cc: Chris Mason <clm@fb.com>
Cc: Josef Bacik <josef@toxicpanda.com>
Cc: linux-btrfs@vger.kernel.org
Acked-by: David Sterba <dsterba@suse.com>
Link: https://lore.kernel.org/lkml/20220922133014.GI32411@suse.cz
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
