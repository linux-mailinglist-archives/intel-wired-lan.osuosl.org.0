Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A19C7700BBD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:29:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 415B842C8D;
	Fri, 12 May 2023 15:29:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 415B842C8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683905389;
	bh=8H8HLIvWe53tpNDN6jzZOy1nmlqb6kHNvfLV9SI6DDY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Tp4sgMSaHzXCoDCMkyDiQgnFiaqfPOqREtAFso99uXa/F6z2enNYzK6FMBvT51ZzB
	 fEJ3HimwBBGm9MGNZr3YGBSrMBwOpnYhUDw29YrpNsVU78FJotpsTl5apb6Vz/rP/R
	 Lbh4S+ESkA3k/bpK3WqP+lqZllfBTu1PsFgideM6v3JMczxsYp/w5wM8vyOcKdZWcY
	 ZUGbNaf6uLWuA0iF7LpwQH0rB5B1sH5a6DBvRXg0JNamiwOq9orrGNvdQQZXUj9dUu
	 3WGxs+eoLcp0CXdGhAdNU+9i1XQZ/Riy383OZamRW8S5gMR/L//w3/c53a2tvoVtPD
	 l3KWpQSGGIw0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D6NHJPdN32p0; Fri, 12 May 2023 15:29:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7B4142AA5;
	Fri, 12 May 2023 15:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7B4142AA5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42DB01BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:29:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C54960B42
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:29:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C54960B42
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZdGMFm8hM2bx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:29:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C77061381
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C77061381
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:29:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="349653489"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="349653489"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:29:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="1030124604"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="1030124604"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga005.fm.intel.com with ESMTP; 12 May 2023 08:29:04 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F37F935FB8;
 Fri, 12 May 2023 16:29:02 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:26:06 +0200
Message-Id: <20230512152607.992209-15-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512152607.992209-1-larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683905368; x=1715441368;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lrRJS0jP369ocGK4OM/oyS3+pmBq12NrPBpQcE0bU8o=;
 b=GYBlyEXoLBCrOWjryHQgYFt/TC2CnEtpMJvCyz1FcKt+L63WZrm+HiFT
 idoM4j6KQ4D5g59TLsW5xgH8GE6uWCEkOjf7Uu+F+IpwMW0WKZVZcN+me
 xVGSKRhK/nP7DTOYWf+rZKN2VXNCYq1dmgxx0uf4tXZjZ79FtYml3Dc2b
 qFrmOpKiV7viZs65GE/Nh28gdfvrhMU/vXk46hbfCXFbqDP1VybyBQqzn
 1aYRgrX/kxA6msmmkxfmhIrqgkzOAcCsOodQ5VedG6vt0Gjl1himsHZmh
 5eLMyzmg7FXaJ6e112Gyjr2OrbSdHNo5P9mm38EQUguThIIPmq66mi/4N
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GYBlyEXo
Subject: [Intel-wired-lan] [PATCH RESEND bpf-next 14/15] net,
 xdp: allow metadata > 32
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiri Olsa <jolsa@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksander Lobakin <aleksander.lobakin@intel.com>

When using XDP hints, metadata sometimes has to be much bigger
than 32 bytes. Relax the restriction, allow metadata larger than 32 bytes
and make __skb_metadata_differs() work with bigger lengths.

Now size of metadata is only limited by the fact it is stored as u8
in skb_shared_info, so maximum possible value is 255. Other important
conditions, such as having enough space for xdp_frame building, are already
checked in bpf_xdp_adjust_meta().

The requirement of having its length aligned to 4 bytes is still
valid.

Signed-off-by: Aleksander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 include/linux/skbuff.h | 13 ++++++++-----
 include/net/xdp.h      |  7 ++++++-
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index 8ddb4af1a501..afcd372aecdf 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -4219,10 +4219,13 @@ static inline bool __skb_metadata_differs(const struct sk_buff *skb_a,
 {
 	const void *a = skb_metadata_end(skb_a);
 	const void *b = skb_metadata_end(skb_b);
-	/* Using more efficient varaiant than plain call to memcmp(). */
-#if defined(CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS) && BITS_PER_LONG == 64
 	u64 diffs = 0;
 
+	if (!IS_ENABLED(CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS) ||
+	    BITS_PER_LONG != 64)
+		goto slow;
+
+	/* Using more efficient variant than plain call to memcmp(). */
 	switch (meta_len) {
 #define __it(x, op) (x -= sizeof(u##op))
 #define __it_diff(a, b, op) (*(u##op *)__it(a, op)) ^ (*(u##op *)__it(b, op))
@@ -4242,11 +4245,11 @@ static inline bool __skb_metadata_differs(const struct sk_buff *skb_a,
 		fallthrough;
 	case  4: diffs |= __it_diff(a, b, 32);
 		break;
+	default:
+slow:
+		return memcmp(a - meta_len, b - meta_len, meta_len);
 	}
 	return diffs;
-#else
-	return memcmp(a - meta_len, b - meta_len, meta_len);
-#endif
 }
 
 static inline bool skb_metadata_differs(const struct sk_buff *skb_a,
diff --git a/include/net/xdp.h b/include/net/xdp.h
index 0fbd25616241..f48723250c7c 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -370,7 +370,12 @@ xdp_data_meta_unsupported(const struct xdp_buff *xdp)
 
 static inline bool xdp_metalen_invalid(unsigned long metalen)
 {
-	return (metalen & (sizeof(__u32) - 1)) || (metalen > 32);
+	typeof(metalen) meta_max;
+
+	meta_max = type_max(typeof_member(struct skb_shared_info, meta_len));
+	BUILD_BUG_ON(!__builtin_constant_p(meta_max));
+
+	return !IS_ALIGNED(metalen, sizeof(u32)) || metalen > meta_max;
 }
 
 struct xdp_attachment_info {
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
