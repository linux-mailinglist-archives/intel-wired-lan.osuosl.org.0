Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A6A96197B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 23:53:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 769BC40679;
	Tue, 27 Aug 2024 21:53:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4p1MSJUDGCdf; Tue, 27 Aug 2024 21:53:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5857D406AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724795586;
	bh=KamurTW5IBkmqgEDIn1cXn8dFKK/+u71YM8pG/0q+uA=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jECIdGch0MysnPLHcppEVHcRPbZUhA5L5Qyw1HbOONMtqRVlzAKJeCPnWkw5ajFPd
	 xjU79q9LgQJqT/RWrt7rc6o/cPJXQe2tLiAFE3BIGgmBccNPseJu7fYsk5IFHapAXv
	 7KXLsx9DZ4ipKQDcNFmiDyHcFQ/kRQPrftGAHwRGl4daS31HvvJc/2nM9X9W4Wht+H
	 mHg+LE6iEDR4M+pk+0dHAXg4vTTPBU0zLWlQHOI587POB+BxH6dlh4KiR21XkAc635
	 U6z7SYmaNzQ2QMj+0da320wS46TOWB1gBQEs6VpCXksoau6JNlQvcxu3/FdNpaBCUh
	 +Gsp0+M6+Nt1g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5857D406AB;
	Tue, 27 Aug 2024 21:53:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EB9D1BF97C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D422540A70
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ryRe5s__OEBo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 21:52:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7B39F40A87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B39F40A87
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B39F40A87
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:50 +0000 (UTC)
X-CSE-ConnectionGUID: Wwk3ZBG7QXq77gCP4mNlnw==
X-CSE-MsgGUID: Q6iZUaYJQXaXiHBYpm2uDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="27068846"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="27068846"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 14:52:46 -0700
X-CSE-ConnectionGUID: tFLK37kLR8mar5fcj6mo+g==
X-CSE-MsgGUID: xfHE/bY3TMi5yN23VRRTMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="63189489"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 14:52:44 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 27 Aug 2024 14:52:07 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-4-0442e2e42d32@intel.com>
References: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
In-Reply-To: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Vladimir Oltean <olteanv@gmail.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 "netdev netdev"@vger.kernel.org
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724795571; x=1756331571;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=p2472d7MxYwQ1WCLHGUjV3OTNs4V0Gtc+ugjwaDre8M=;
 b=DvTBeOT/51oAIEs3SBT7dU8P+WGWuC+B9QKmgRLPzXPhd72P/qQ7X3iW
 ZRRuJsSd0d2uieA++/xpZIGsHheCpg1snOkbVPii5QxmwDFKJ/S6NeOX1
 /7pinqUuPvwlzSfnJGKXLjhTfRxuXDOtI97kf0TuoxmuOavg/KS2M6IrF
 oJa/X5MPynq8cIvgtDG0CvWZp+mOHiSXxiVhEkRTAjUa/iytQjwXEMG0E
 jQENji/Al/m1CV456xgho0oi8lDShhJfZpewmtPLlF7fUuQjphkgYwkjF
 7O2XpwyWyDrNESJ45uYdcOKMRWudI1oDl4Buklwfg9Ltif96/ZKX9o4Y5
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DvTBeOT/
Subject: [Intel-wired-lan] [PATCH iwl-next 04/13] lib: packing: add pack()
 and unpack() wrappers over packing()
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vladimir Oltean <vladimir.oltean@nxp.com>

Geert Uytterhoeven described packing() as "really bad API" because of
not being able to enforce const correctness. The same function is used
both when "pbuf" is input and "uval" is output, as in the other way
around.

Create 2 wrapper functions where const correctness can be ensured.
Do ugly type casts inside, to be able to reuse packing() as currently
implemented - which will _not_ modify the input argument.

Also, take the opportunity to change the type of startbit and endbit to
size_t - an unsigned type - in these new function prototypes. When int,
an extra check for negative values is necessary. Hopefully, when
packing() goes away completely, that check can be dropped.

My concern is that code which does rely on the conditional directionality
of packing() is harder to refactor without blowing up in size. So it may
take a while to completely eliminate packing(). But let's make alternatives
available for those who do not need that.

Link: https://lore.kernel.org/netdev/20210223112003.2223332-1-geert+renesas@glider.be/
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 include/linux/packing.h |  6 ++++++
 lib/packing.c           | 54 +++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 60 insertions(+)

diff --git a/include/linux/packing.h b/include/linux/packing.h
index 69baefebcd02..ea25cb93cc70 100644
--- a/include/linux/packing.h
+++ b/include/linux/packing.h
@@ -20,4 +20,10 @@ enum packing_op {
 int packing(void *pbuf, u64 *uval, int startbit, int endbit, size_t pbuflen,
 	    enum packing_op op, u8 quirks);
 
+int pack(void *pbuf, const u64 *uval, size_t startbit, size_t endbit,
+	 size_t pbuflen, u8 quirks);
+
+int unpack(const void *pbuf, u64 *uval, size_t startbit, size_t endbit,
+	   size_t pbuflen, u8 quirks);
+
 #endif
diff --git a/lib/packing.c b/lib/packing.c
index 435236a914fe..2922db8a528c 100644
--- a/lib/packing.c
+++ b/lib/packing.c
@@ -90,6 +90,8 @@ static int calculate_box_addr(int box, size_t len, u8 quirks)
  * @quirks: A bit mask of QUIRK_LITTLE_ENDIAN, QUIRK_LSW32_IS_FIRST and
  *	    QUIRK_MSB_ON_THE_RIGHT.
  *
+ * Note: this is deprecated, prefer to use pack() or unpack() in new code.
+ *
  * Return: 0 on success, EINVAL or ERANGE if called incorrectly. Assuming
  *	   correct usage, return code may be discarded.
  *	   If op is PACK, pbuf is modified.
@@ -216,4 +218,56 @@ int packing(void *pbuf, u64 *uval, int startbit, int endbit, size_t pbuflen,
 }
 EXPORT_SYMBOL(packing);
 
+/**
+ * pack - Pack u64 number into bitfield of buffer.
+ *
+ * @pbuf: Pointer to a buffer holding the packed value.
+ * @uval: Pointer to an u64 holding the unpacked value.
+ * @startbit: The index (in logical notation, compensated for quirks) where
+ *	      the packed value starts within pbuf. Must be larger than, or
+ *	      equal to, endbit.
+ * @endbit: The index (in logical notation, compensated for quirks) where
+ *	    the packed value ends within pbuf. Must be smaller than, or equal
+ *	    to, startbit.
+ * @pbuflen: The length in bytes of the packed buffer pointed to by @pbuf.
+ * @quirks: A bit mask of QUIRK_LITTLE_ENDIAN, QUIRK_LSW32_IS_FIRST and
+ *	    QUIRK_MSB_ON_THE_RIGHT.
+ *
+ * Return: 0 on success, EINVAL or ERANGE if called incorrectly. Assuming
+ *	   correct usage, return code may be discarded. The @pbuf memory will
+ *	   be modified on success.
+ */
+int pack(void *pbuf, const u64 *uval, size_t startbit, size_t endbit,
+	 size_t pbuflen, u8 quirks)
+{
+	return packing(pbuf, (u64 *)uval, startbit, endbit, pbuflen, PACK, quirks);
+}
+EXPORT_SYMBOL(pack);
+
+/**
+ * unpack - Unpack u64 number from packed buffer.
+ *
+ * @pbuf: Pointer to a buffer holding the packed value.
+ * @uval: Pointer to an u64 holding the unpacked value.
+ * @startbit: The index (in logical notation, compensated for quirks) where
+ *	      the packed value starts within pbuf. Must be larger than, or
+ *	      equal to, endbit.
+ * @endbit: The index (in logical notation, compensated for quirks) where
+ *	    the packed value ends within pbuf. Must be smaller than, or equal
+ *	    to, startbit.
+ * @pbuflen: The length in bytes of the packed buffer pointed to by @pbuf.
+ * @quirks: A bit mask of QUIRK_LITTLE_ENDIAN, QUIRK_LSW32_IS_FIRST and
+ *	    QUIRK_MSB_ON_THE_RIGHT.
+ *
+ * Return: 0 on success, EINVAL or ERANGE if called incorrectly. Assuming
+ *	   correct usage, return code may be discarded. The @uval will be
+ *	   modified on success.
+ */
+int unpack(const void *pbuf, u64 *uval, size_t startbit, size_t endbit,
+	   size_t pbuflen, u8 quirks)
+{
+	return packing((void *)pbuf, uval, startbit, endbit, pbuflen, UNPACK, quirks);
+}
+EXPORT_SYMBOL(unpack);
+
 MODULE_DESCRIPTION("Generic bitfield packing and unpacking");

-- 
2.46.0.124.g2dc1a81c8933

