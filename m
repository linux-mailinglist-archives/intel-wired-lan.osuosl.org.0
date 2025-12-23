Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B30B2CD9EE0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Dec 2025 17:23:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51B6560C21;
	Tue, 23 Dec 2025 16:23:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YXUbP9QbKocD; Tue, 23 Dec 2025 16:23:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C34FD60D5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766506991;
	bh=Bu9hANCrqcrzn01CQ6+qCySerDAxUYWA0/vX02ujpFY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y5a8TUK9Hxl60OOBbe4QYnSEkx/cAotUABNi8IBWUaZclfF9LcKbKJIfX1/dReN7v
	 EsPFzJYjEi8LqnZUNRMzYO7maY7Z6726DghkOwJfquRn4p/vGN6r+4MStGmTOJbkD/
	 zuyMYL/LTxGn1UJvE3KUhd87OSxy5MBQpgJAy/AVmFGtZhKIVrsmIQIb9swpSwQiYk
	 rBqMbivgb+W4Gvu4QVvmyGD3NuqYDbLyozCXklhks2fpGn1pCNHLkk8kJkoYGao1ZJ
	 r+7yuf314/3BWLtNhNx4X2gi9K9RpJ7s8PnjPZua3k438iDA8sbywM9pdDbiepzHRj
	 fweNEdvVLq9tg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C34FD60D5E;
	Tue, 23 Dec 2025 16:23:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C3C7255
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 16:23:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E37A60C0F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 16:23:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3AeYIOlb3vlC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Dec 2025 16:23:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b135; helo=mail-yx1-xb135.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A680260BEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A680260BEC
Received: from mail-yx1-xb135.google.com (mail-yx1-xb135.google.com
 [IPv6:2607:f8b0:4864:20::b135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A680260BEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 16:23:07 +0000 (UTC)
Received: by mail-yx1-xb135.google.com with SMTP id
 956f58d0204a3-64472121ad5so3294369d50.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 08:23:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766506986; x=1767111786;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Bu9hANCrqcrzn01CQ6+qCySerDAxUYWA0/vX02ujpFY=;
 b=QQ7RCOYA4Puf9ksTGqs7culHKmbctj1bxhmxGT9be4mRcIKZCjHyvD+Y7HM5lZIIob
 hJtrtYHhBLggXFoc1odsnOq7i3pIXy8LesNFky0v6YMipXFQHDmJhlFKF+t0OQzTDkYP
 Qx4ErGlXnp/wdzcHHQbJEllybKJk+49pgZoxdFjJsREV5FTUtxONPA0Mh+UWBfqmgZ79
 h/073O0i4Co7CJCpSfwxoF+BI3kBvFULd+8Dvr4pMLolvB6G3WR4AP6XzfuvLt+IGOyf
 sZuHsFwwjMcAkpPHvxk/DdBG4ldaG6lUT/zveKyBxXmQC1YgXc5H/Gr358svUR2SCk9I
 w/zA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVufb7R7Bt8ofr8lRV2X/xOTgFyenOT5/cNoQ4X0+ssqIm9Nk77kTNxbRBy7LHWnWurJqgUhn95CysUdcI2p3M=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwG7GQbd+uRHM2fEbgMOI9DI6osRIrjaUN5dpnY3aVigItIYZqu
 4k4MbIcySPkcJuRIf71/M6P+6ULHkIrJj1GI3zwwXKLLBOAALW/CiBI0
X-Gm-Gg: AY/fxX4UN0MvgJLMoB8M19VTmkniiDto4v5qdpyK7jqaoVjc2CqqMNZlfWXJlFsh/gg
 3QoxQjafNiJ/rp9nr2zVZaASavlMir/u/TlqT2uBd7a5t7ZP4CsmMQrshctYGLkLAqK7RMquj3b
 w20dyvMNII83VBaLjqEXc3HJ9vza0bKegPliICQ1PrCXEWJ1Gv0/oeNB+F1ChTsG6gBtNLpUIqh
 n+M7uX33Fwl3l70dEY8ZG3ee73GJN0qLI3xlj+OIgSaZzOzJ5c3xVdO+/h8hUPjHOhADO6GYIFX
 2adPFXsIE4vzT6E0EPNWcH3zAV0zCdCgHlikylIUrfeFgWlw1TDMJpaoRCEC0K/VZP1Rh05uNIz
 6Minr23+ZY/hWf2whVb7F7452BSwql+Df7Zg9JHlSycTXlPeWuhQHWk8XvrjtyYZQ7pKP2RZJ7u
 EtFfL8JMM=
X-Google-Smtp-Source: AGHT+IExQlcrRvP5bpGZsniR6NEoCL2BesRdWqeHSXBthxN++RkTXQKi6hOc4cN4HB6bL+lo8PUVtA==
X-Received: by 2002:a53:da86:0:b0:63f:9c11:cfed with SMTP id
 956f58d0204a3-6466a842daamr9378345d50.32.1766506986363; 
 Tue, 23 Dec 2025 08:23:06 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:4913:14a4:1114:ff0d])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-6466a8b16e2sm7101778d50.2.2025.12.23.08.23.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Dec 2025 08:23:06 -0800 (PST)
From: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andrew Morton <akpm@linux-foundation.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 23 Dec 2025 11:23:00 -0500
Message-ID: <20251223162303.434659-2-yury.norov@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251223162303.434659-1-yury.norov@gmail.com>
References: <20251223162303.434659-1-yury.norov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766506986; x=1767111786; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Bu9hANCrqcrzn01CQ6+qCySerDAxUYWA0/vX02ujpFY=;
 b=DzS7AbZuCc246O/kJpDwqm6xe1vndBGLtBzYnepLR2tYoDmekRkTfQn56ihC6Akc5v
 QdkfimpjWgSwsla2E/tOZA6IMLLEMr18QPQfdoZKCtKJ75soXtL3NpG+c5VI0D4Q6PJb
 LOSCxHg25PCVD5TdY81XbSEiTYVxj0Cpiut0T6gHVJ4WSbhMiOrQm5EpKcsZPzJ0XyBA
 6I8pwTrjcLYmqxB5Dq9bAVx+vAdfDJvvxW9AxOVMrWUeiKYE/S6MbWKuaEjGCvaKDKxY
 +b9SaTpvuFKvu70Ub4jl5tYND34VURFvbMeLBjd4mwNro8hNVBV7JMQohIzgaezrYJjz
 IxSQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=DzS7AbZu
Subject: [Intel-wired-lan] [PATCH 1/3] bitmap: introduce
 bitmap_weighted_xor()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The function helps to XOR bitmaps and calculate Hamming weight of
the result in one pass.

Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
---
 include/linux/bitmap.h | 14 ++++++++++++++
 lib/bitmap.c           |  7 +++++++
 2 files changed, 21 insertions(+)

diff --git a/include/linux/bitmap.h b/include/linux/bitmap.h
index 0f4789e1f7cb..7ecf56e0d3b5 100644
--- a/include/linux/bitmap.h
+++ b/include/linux/bitmap.h
@@ -169,6 +169,8 @@ void __bitmap_or(unsigned long *dst, const unsigned long *bitmap1,
 		 const unsigned long *bitmap2, unsigned int nbits);
 unsigned int __bitmap_weighted_or(unsigned long *dst, const unsigned long *bitmap1,
 				  const unsigned long *bitmap2, unsigned int nbits);
+unsigned int __bitmap_weighted_xor(unsigned long *dst, const unsigned long *bitmap1,
+				  const unsigned long *bitmap2, unsigned int nbits);
 void __bitmap_xor(unsigned long *dst, const unsigned long *bitmap1,
 		  const unsigned long *bitmap2, unsigned int nbits);
 bool __bitmap_andnot(unsigned long *dst, const unsigned long *bitmap1,
@@ -355,6 +357,18 @@ unsigned int bitmap_weighted_or(unsigned long *dst, const unsigned long *src1,
 	}
 }
 
+static __always_inline
+unsigned int bitmap_weighted_xor(unsigned long *dst, const unsigned long *src1,
+				const unsigned long *src2, unsigned int nbits)
+{
+	if (small_const_nbits(nbits)) {
+		*dst = *src1 ^ *src2;
+		return hweight_long(*dst & BITMAP_LAST_WORD_MASK(nbits));
+	} else {
+		return __bitmap_weighted_xor(dst, src1, src2, nbits);
+	}
+}
+
 static __always_inline
 void bitmap_xor(unsigned long *dst, const unsigned long *src1,
 		const unsigned long *src2, unsigned int nbits)
diff --git a/lib/bitmap.c b/lib/bitmap.c
index 698d15933c84..bed32b8cd23a 100644
--- a/lib/bitmap.c
+++ b/lib/bitmap.c
@@ -382,6 +382,13 @@ unsigned int __bitmap_weighted_or(unsigned long *dst, const unsigned long *bitma
 	return BITMAP_WEIGHT(({dst[idx] = bitmap1[idx] | bitmap2[idx]; dst[idx]; }), bits);
 }
 
+unsigned int __bitmap_weighted_xor(unsigned long *dst, const unsigned long *bitmap1,
+				  const unsigned long *bitmap2, unsigned int bits)
+{
+	return BITMAP_WEIGHT(({dst[idx] = bitmap1[idx] ^ bitmap2[idx]; dst[idx]; }), bits);
+}
+EXPORT_SYMBOL(__bitmap_weighted_xor);
+
 unsigned long __bitmap_weight_from(const unsigned long *bitmap,
 				   unsigned int start, unsigned int nbits)
 {
-- 
2.43.0

