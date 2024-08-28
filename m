Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF2096332F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 22:57:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E2D060E22;
	Wed, 28 Aug 2024 20:57:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bP2oOovGhwPV; Wed, 28 Aug 2024 20:57:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4C2760B65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724878661;
	bh=cI8lwju7amlqfA7RTJCv82vuSiQR8D5TZiIZQExFmDE=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=svvdvrMhX9EhaWWMOJGVhhddfLl1SvuoEE4n9IEPZdEtFT/8z8dKYTO5FZDXEhAX9
	 RDQE9yhc2IHmk1IfRlQMNLD1EO/uzBPnnlUs6R++LdhfaN3qLBdWt7vr27nfQ0fUiW
	 2Lp2155L5vxtmvorA6GfBNdAKWVw1oaAsBBxvN24tjsOgm2q295VRHE8TZZpCGN6rX
	 FQ5JA0/Sat4sE37LZhvn2iR30jQ5WejPFPG3zmdJL4UyRvUBWmGPuNko+/8zrAFAo/
	 xVwtSpZ20UjShXT86RBaYq6jM6rMhXWprqgq6tkCvUdy4j6xallmQ2lIO2c+3bxqYj
	 Hl9uwvhJRNAyQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4C2760B65;
	Wed, 28 Aug 2024 20:57:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 12AAB1BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 10A4C60B65
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IKZhZ9U2N4u6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3BB7360D5C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BB7360D5C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3BB7360D5C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
X-CSE-ConnectionGUID: GzdicI5gQa6LWWV/E5FAgw==
X-CSE-MsgGUID: 5udU/VJ8RsK0jjvHNgjCVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34592626"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34592626"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:31 -0700
X-CSE-ConnectionGUID: rE+LzBF6T26rSiB+xfKqXw==
X-CSE-MsgGUID: GrxRlq3RRB+HmcCQRIQaJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="64049959"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 28 Aug 2024 13:57:17 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-1-558ab9e240f5@intel.com>
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
 bh=6kQrbIE4kr5T8eFDQTblirQ915WMJmra1Rfj0RlaOK8=;
 b=c07/VdANlH6Uuy+M+20PLXa+IrdLFy/vDsAHj7jlNQT6Nbb8u+ndYSEu
 1ZMDkHyU/TWoI9EccfDE3NVMgkpkjHZf7aVVhU1Hmjr2eqpcLTferoZcJ
 KQ2kw0HQ3J+jpWSLqH9qwiY22KOgJ0JxKyLn5zSthC/a6mRTI3qaWF9sj
 cWaDU/dYi4MbU1vfHIdGoRSMAq2da3LQsatoCp4M7yBJuNF3MK3XOA/cU
 BBPn9OQvPhQgqTotFUoe97XhI5Lc+nlZzfut8k3msHkRGXVqi7wfxIJAL
 9fbNjRGWhDzm2pUYlBQa7r1M4Qy2cdUZowkQXKWUem42/Cb0uLC7dItnW
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c07/VdAN
Subject: [Intel-wired-lan] [PATCH iwl-next v2 01/13] lib: packing: refuse
 operating on bit indices which exceed size of buffer
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

While reworking the implementation, it became apparent that this check
does not exist.

There is no functional issue yet, because at call sites, "startbit" and
"endbit" are always hardcoded to correct values, and never come from the
user.

Even with the upcoming support of arbitrary buffer lengths, the
"startbit >= 8 * pbuflen" check will remain correct. This is because
we intend to always interpret the packed buffer in a way that avoids
discontinuities in the available bit indices.

Fixes: 554aae35007e ("lib: Add support for generic packing operations")
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Tested-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 lib/packing.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/lib/packing.c b/lib/packing.c
index 3f656167c17e..439125286d2b 100644
--- a/lib/packing.c
+++ b/lib/packing.c
@@ -86,8 +86,10 @@ int packing(void *pbuf, u64 *uval, int startbit, int endbit, size_t pbuflen,
 	 */
 	int plogical_first_u8, plogical_last_u8, box;
 
-	/* startbit is expected to be larger than endbit */
-	if (startbit < endbit)
+	/* startbit is expected to be larger than endbit, and both are
+	 * expected to be within the logically addressable range of the buffer.
+	 */
+	if (unlikely(startbit < endbit || startbit >= 8 * pbuflen || endbit < 0))
 		/* Invalid function call */
 		return -EINVAL;
 

-- 
2.46.0.124.g2dc1a81c8933

