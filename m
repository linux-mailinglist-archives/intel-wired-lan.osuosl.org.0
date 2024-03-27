Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E5388E8D6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 16:25:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7926881BE3;
	Wed, 27 Mar 2024 15:25:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rtRXL97Y70Zz; Wed, 27 Mar 2024 15:25:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA5CB8207B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711553118;
	bh=ToPLrHip/J3I0SzOcRSJWyTZ714yQwZy+9LPCRDzlh8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ljPkQW1uekLuKW+SYaBdYQkptVlA8ar17db6k1+acyoGAXYolAnMFqjHJEy7D+bsU
	 eDxFRYszEwRFjqGDVAUVSCtqfyfRqav31NiFYZsod+Qo0tBtiTNOvVtN7HMy2zKufD
	 7IIG3GTk8Z628aIyKqgjjBDbsqRWVzrDsZVyA3v93jUcKWFjWK/tsPnskb+RnBtBNL
	 ggEPLneY3QDD0bJ7PE3p5Zc+oKsTg+ZVa2aS8kDAa6Qf58Ch45D56DDgWxtNlzggRs
	 oo+RVQaoSmqfmoPym6Ru8LLobFQVAGLzqUM5KeSSOaVUBG4S6YYus5MqmQfA4ZaRs6
	 j01QiGqxPux9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA5CB8207B;
	Wed, 27 Mar 2024 15:25:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8DB881BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 79E5E6061F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id svvNmfnnx6Av for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 15:25:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AB149605D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB149605D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB149605D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:15 +0000 (UTC)
X-CSE-ConnectionGUID: +xEPXAzrT32k+F8p750h9Q==
X-CSE-MsgGUID: h//WOjqxRwSNyLJ5Crfpag==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6518229"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6518229"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 08:25:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="16414312"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa008.fm.intel.com with ESMTP; 27 Mar 2024 08:25:12 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 27 Mar 2024 16:23:50 +0100
Message-ID: <20240327152358.2368467-14-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711553115; x=1743089115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=80gHSv14ycbNEh+nz/ScxH6nJSUPMtmoBB7wIdLIgH4=;
 b=mP+eJYhBE8xumeOjq0WzVhODhwMpXEggy2ha/o5v4/HT+RgfZWAiEZ8G
 k2D2XkLCHCAKumCSXpILaDnbHY1eZlC1DAO+9SW+geKwUNTTnaO0VuKN+
 KqTu7QJc4LB9bVoRN569yd+ZMIH2KQdge3n5aNWbxvXQN3UqjjbN89Glq
 QtVHksB1eDwSzoHKlC+P3eJXl1tx9tdNDhwZtZYs9rCu+LMdFHzOSgasg
 WbbUK7uIrn5A7M42r5KuBxqi7bWmppab2Ov4Ob+i3e+Lz6FDbPG/b3R7c
 8uKolhCid8AhZXHt/fB7TqjnthP784TL9Y+vz8SUePbUfzTNWbMhVhzUM
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mP+eJYhB
Subject: [Intel-wired-lan] [PATCH net-next v6 13/21] bitmap: make
 bitmap_{get, set}_value8() use bitmap_{read, write}()
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
Cc: Yury Norov <yury.norov@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Alexander Potapenko <glider@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now that we have generic bitmap_read() and bitmap_write(), which are
inline and try to take care of non-bound-crossing and aligned cases
to keep them optimized, collapse bitmap_{get,set}_value8() into
simple wrappers around the former ones.
bloat-o-meter shows no difference in vmlinux and -2 bytes for
gpio-pca953x.ko, which says the optimization didn't suffer due to
that change. The converted helpers have the value width embedded
and always compile-time constant and that helps a lot.

Suggested-by: Yury Norov <yury.norov@gmail.com>
Signed-off-by: Yury Norov <yury.norov@gmail.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/linux/bitmap.h | 38 +++++---------------------------------
 1 file changed, 5 insertions(+), 33 deletions(-)

diff --git a/include/linux/bitmap.h b/include/linux/bitmap.h
index 363e0b184a45..8c4768c44a01 100644
--- a/include/linux/bitmap.h
+++ b/include/linux/bitmap.h
@@ -727,39 +727,6 @@ static inline void bitmap_from_u64(unsigned long *dst, u64 mask)
 	bitmap_from_arr64(dst, &mask, 64);
 }
 
-/**
- * bitmap_get_value8 - get an 8-bit value within a memory region
- * @map: address to the bitmap memory region
- * @start: bit offset of the 8-bit value; must be a multiple of 8
- *
- * Returns the 8-bit value located at the @start bit offset within the @src
- * memory region.
- */
-static inline unsigned long bitmap_get_value8(const unsigned long *map,
-					      unsigned long start)
-{
-	const size_t index = BIT_WORD(start);
-	const unsigned long offset = start % BITS_PER_LONG;
-
-	return (map[index] >> offset) & 0xFF;
-}
-
-/**
- * bitmap_set_value8 - set an 8-bit value within a memory region
- * @map: address to the bitmap memory region
- * @value: the 8-bit value; values wider than 8 bits may clobber bitmap
- * @start: bit offset of the 8-bit value; must be a multiple of 8
- */
-static inline void bitmap_set_value8(unsigned long *map, unsigned long value,
-				     unsigned long start)
-{
-	const size_t index = BIT_WORD(start);
-	const unsigned long offset = start % BITS_PER_LONG;
-
-	map[index] &= ~(0xFFUL << offset);
-	map[index] |= value << offset;
-}
-
 /**
  * bitmap_read - read a value of n-bits from the memory region
  * @map: address to the bitmap memory region
@@ -833,6 +800,11 @@ static inline void bitmap_write(unsigned long *map, unsigned long value,
 	map[index + 1] |= (value >> space);
 }
 
+#define bitmap_get_value8(map, start)			\
+	bitmap_read(map, start, BITS_PER_BYTE)
+#define bitmap_set_value8(map, value, start)		\
+	bitmap_write(map, value, start, BITS_PER_BYTE)
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* __LINUX_BITMAP_H */
-- 
2.44.0

