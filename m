Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4607C963336
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 22:57:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7238660E43;
	Wed, 28 Aug 2024 20:57:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9TIFOCJY0AWf; Wed, 28 Aug 2024 20:57:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76F2E60DFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724878667;
	bh=KamurTW5IBkmqgEDIn1cXn8dFKK/+u71YM8pG/0q+uA=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f3BVzN+RY7+11nl30jsuw5P44lp4xEx/9ZVePUlxpyiDuBYGvfBn/sjUTA1MXpLR/
	 R0HAMRVLmmWvf5wd5mEjooImP5qW04YZRGI/m7dE7h2czZBvpRM0uNdJ3Pkn5JtGcE
	 QM27j4x+IQJXbvQjdyTCFaPTr0BFiHEPEOSLlgFAmIbRm4gtkt07VDOxtEMwJfkg75
	 qw1iUTfiw5Lt2/UKVUqHbFEgxO31qfyDglZDSOfb76RmdRmoYAqF5fDchy9k970kKk
	 P6MyUhwTAic2cMEAGxWLzjMqmQ5m0SZWTLhiKtdPcqmgzHdsfO4q4Jwtq+1y72/fDC
	 aiiZa15i04UKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76F2E60DFD;
	Wed, 28 Aug 2024 20:57:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 039831BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5ECC60D77
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rZ9hr-OhcFVh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 976C360ABA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 976C360ABA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 976C360ABA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
X-CSE-ConnectionGUID: 4Q6gaVKAQpWdAhyyZbHAYw==
X-CSE-MsgGUID: /7R9MHjVSUStJ5k1yiBlMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34592634"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34592634"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:31 -0700
X-CSE-ConnectionGUID: uzeQiqdSQmWkkJbxTB6SAQ==
X-CSE-MsgGUID: kmS+FPsxTD+dULxhlbZPag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="64049968"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 28 Aug 2024 13:57:20 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-4-558ab9e240f5@intel.com>
References: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
In-Reply-To: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
To: Vladimir Oltean <olteanv@gmail.com>, netdev <netdev@vger.kernel.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724878653; x=1756414653;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=p2472d7MxYwQ1WCLHGUjV3OTNs4V0Gtc+ugjwaDre8M=;
 b=Vit/2QfgrpLgorYQHmJFEzfYi2dNVJYbttOcsKAMf1/b0+NwtGHtt4+7
 Q6HEnvlJf4l2f+WPOpF/Gco36vhOs5k/i03RBAiwKIi91mkihHurB84jg
 dhDn1sdjAmkNEN7pNhefDDQ07NE1yFIQI0GuEUVPxsxKxq7Rbb+9an8zA
 Y8HuA+7USFr5pcE3ORTQKeeyQb4GV6qEHfj0+TlqJLpQxZ0yxsD7IFujK
 yoXZxSR4anw3oYk8ry7tmuHa4jX9wkaRAwzdZabBjflW+Pox5ySy+YEEl
 j3KZJJpO5M2wgAb5QPFT4s4kNW85Ib3liyrvpB8moGXHMsjc7HaykmdC4
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vit/2Qfg
Subject: [Intel-wired-lan] [PATCH iwl-next v2 04/13] lib: packing: add
 pack() and unpack() wrappers over packing()
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

