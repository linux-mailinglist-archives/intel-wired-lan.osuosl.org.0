Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 067965E5928
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 05:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84D3641913;
	Thu, 22 Sep 2022 03:11:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84D3641913
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663816282;
	bh=cCRN2R4Caq4kuGhVn+S0xG8S02Ir1kOQ5Eqqnr61ANU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YEH+znW/WTUvUNdIykxQlSqTQxZXc8/G7NUpup3LyVBRHx1bGNl5XTol20eE73TDd
	 mLbNfWBnzALzzT2vfXj2Ns4X6t8/7ZiTyZhaKeJ3SvVHLQbSR8AlWCK2kBRPe4wq/l
	 31q3OPEI/0srjLRNSFzuQTjsJZvWNs1NNWj18jRHjwHsPKZhH3Q0nh7yyJEnr06Orf
	 WqCzZUFcEbjqBRm8HC3BUi/sPZyKz+6Hirddt07htIXhSPreTL2AfDCZW2kK/HsDHJ
	 R8ohQh8fHnVDwNVANZ/CzVgK07vB0t/OS4ZuO/rkegbS4f+efxkEMg3AoO03r7Q+Po
	 nuZDTIAlyrh+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxS6sJTxhtAk; Thu, 22 Sep 2022 03:11:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7907418C1;
	Thu, 22 Sep 2022 03:11:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7907418C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E868F1C1190
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4ED7418CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4ED7418CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1k58vsKMpGEg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 03:10:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F3BB418C1
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F3BB418C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:29 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id y11so8415987pjv.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 20:10:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=nllmYacJVnWYWyMDuOWg+UhFJID/1u9fgEUSXV9a/I0=;
 b=i9IQJIuYaI2I+1GEP6xt+ATWAeqwFdwT6E8dwHqb7OKSFUJj5Ia0KvkjLRtc+x1wwJ
 t+X2HceGOmI6UfdnbwAHUaFMfX1JMOiKbkEI2j2OHvE4wEp81c7BtrV9MFqcHhAGa7rh
 nOE8HM8mEVu1FOBg7CKAZ8Clr6+um5S589pWmIYGcJ0N4b8FrZLM1MB5o60Rko19Rn6r
 HWVlEok03/akVJjnG0fKfAdKw1qmDu5XuThI0So+djk0oQQPhs8NzWcQC1uZ6u7JQX5T
 YTSyKoPkrGwCql/qMiudLNjwt4phh27/mPvN+6wrK9jvmurqJog1xI1MrQlPMuRSq5Y7
 xx2Q==
X-Gm-Message-State: ACrzQf3dH+hWQUIPVR3eUKCuBV6Y5IXNP+RHdxnO/RbSmBH+KtOPEGD6
 smbaTVS6H9Hm2fuxArEbQ1JsMQ==
X-Google-Smtp-Source: AMsMyM49XhohtYBkjYXAytE2XFYLdWSstHIvAKOydHl9P7CLdwWaHlEa/nts1aXdGwMJ6p2JjPZrLw==
X-Received: by 2002:a17:90b:180a:b0:202:ae1f:328a with SMTP id
 lw10-20020a17090b180a00b00202ae1f328amr13239578pjb.78.1663816228865; 
 Wed, 21 Sep 2022 20:10:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 d18-20020a170902ced200b001783f964fe3sm2766723plg.113.2022.09.21.20.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Sep 2022 20:10:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 21 Sep 2022 20:10:10 -0700
Message-Id: <20220922031013.2150682-10-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922031013.2150682-1-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2149; h=from:subject;
 bh=LRLPHeutQvsvCqROzEs3/rr/P6uPQnPuMyr/7IE9r2g=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjK9IUgfEF5Q67qoI3XgFPEX8J4smU+peBuyPzdpCc
 nIEpFpaJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYyvSFAAKCRCJcvTf3G3AJsUGD/
 4jiZQIVRjbRNvUVUl7QhNkO/5LbO1QHELDOu9VeAlksbBy6XuO+qlBw7CoqEHO44r9YLdeZFAssNud
 wYDnzHSwrmpVT9VOZKujYIXUu4jVQeSmpRL+/zi2WAX5dpAscIDYzhoFkFQuW/aQn9nvVlwwWv2G5A
 GfumYAURZ8BP94NLhlaTRLKHc10AEhWJ08FZCbBy/NXE7LT5VZa1H9zYppFy1ulRzYa4xiX1Weubkg
 o7PsRtqxx2jPKi9ywlm4JL33MLhQ7Hl1dObUN2bhp8DRTalPx6Bc6SUbteYJPbwKYEr7+5pD3iT+ek
 78esKD6WsOGfBLAZ8pf8lCldD0XPYRApJVGasz+zBeg9LCqumUaDwNzE9GNpHfaorgWXNBuXeuKFif
 5rYMN95t+ygRdOvQdNJlCJ0JlPfMcJajLzKyYKCvSlICPcTlaGpjjCGXtVFMSUZgvkbvhOZnwoRTfP
 LCMqYLu+xX8m1YKOnipcqlhorAe+A8u41dR2tlI0HUW4UYrUIZQ5O+CQqG80Ge713Eg5bk43crrhKD
 YsmBHTsJ/g7EuL/mG/+BltzwRQSF9KUT12J1eO+hSib+I+7XiE4mW8dN4M4JLJmSxvAa5G/pJSmhKH
 6ZKIBAfSeBqo6VbAeV28Lkl0KnRiBwVDbQ08NwltR1YuONRBkYjOqYRx4S+w==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=nllmYacJVnWYWyMDuOWg+UhFJID/1u9fgEUSXV9a/I0=;
 b=ObVBgj10USdxX2qau03B/fvKSrj9pfzNX++HX3pR1Ku6Ct/c+Mn8B6TC2gGByEksOv
 ftM/dSMzexkJk0pSadbJzyromjdrIDks1988E0vt92N7zZIkoEa3uLvIJsqtFfZmvRDx
 8dl5wBNFG6y2ajB8JRxgoslRMstHrNUREimgg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=ObVBgj10
Subject: [Intel-wired-lan] [PATCH 09/12] x86/microcode/AMD: Track patch
 allocation size explicitly
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
 Borislav Petkov <bp@alien8.de>, Jakub Kicinski <kuba@kernel.org>,
 David Sterba <dsterba@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

In preparation for reducing the use of ksize(), record the actual
allocation size for later memcpy(). This avoids copying extra
(uninitialized!) bytes into the patch buffer when the requested allocation
size isn't exactly the size of a kmalloc bucket. Additionally fixes
potential future issues where runtime bounds checking will notice that
the buffer was allocated to a smaller value than returned by ksize().

Suggested-by: Daniel Micay <danielmicay@gmail.com>
Link: https://lore.kernel.org/lkml/CA+DvKQ+bp7Y7gmaVhacjv9uF6Ar-o4tet872h4Q8RPYPJjcJQA@mail.gmail.com/
Fixes: 757885e94a22 ("x86, microcode, amd: Early microcode patch loading support for AMD")
Cc: Borislav Petkov <bp@alien8.de>
Cc: x86@kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/include/asm/microcode.h    | 1 +
 arch/x86/kernel/cpu/microcode/amd.c | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/microcode.h b/arch/x86/include/asm/microcode.h
index 0c3d3440fe27..aa675783412f 100644
--- a/arch/x86/include/asm/microcode.h
+++ b/arch/x86/include/asm/microcode.h
@@ -9,6 +9,7 @@
 struct ucode_patch {
 	struct list_head plist;
 	void *data;		/* Intel uses only this one */
+	unsigned int size;
 	u32 patch_id;
 	u16 equiv_cpu;
 };
diff --git a/arch/x86/kernel/cpu/microcode/amd.c b/arch/x86/kernel/cpu/microcode/amd.c
index 8b2fcdfa6d31..615bc6efa1dd 100644
--- a/arch/x86/kernel/cpu/microcode/amd.c
+++ b/arch/x86/kernel/cpu/microcode/amd.c
@@ -788,6 +788,7 @@ static int verify_and_add_patch(u8 family, u8 *fw, unsigned int leftover,
 		kfree(patch);
 		return -EINVAL;
 	}
+	patch->size = *patch_size;
 
 	mc_hdr      = (struct microcode_header_amd *)(fw + SECTION_HDR_SIZE);
 	proc_id     = mc_hdr->processor_rev_id;
@@ -869,7 +870,7 @@ load_microcode_amd(bool save, u8 family, const u8 *data, size_t size)
 		return ret;
 
 	memset(amd_ucode_patch, 0, PATCH_MAX_SIZE);
-	memcpy(amd_ucode_patch, p->data, min_t(u32, ksize(p->data), PATCH_MAX_SIZE));
+	memcpy(amd_ucode_patch, p->data, min_t(u32, p->size, PATCH_MAX_SIZE));
 
 	return ret;
 }
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
