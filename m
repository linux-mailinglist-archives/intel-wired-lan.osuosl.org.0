Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLgLCcU68WlyewEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 00:55:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C6648CDB6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 00:55:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0BFE80C7B;
	Tue, 28 Apr 2026 22:54:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P6ZnmJcFY-Am; Tue, 28 Apr 2026 22:54:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4311A80CBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777416897;
	bh=azDwVA7NGgGiKAxFELCpnqhJ6m/gaXxvTMSXNbYXqpE=;
	h=From:To:Cc:Date:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From;
	b=QO35JfqAvT2uDaE1GnUhc5hGdL/uAxcEA1SricCY2yJ7doD47agLsGGKcsDvh30/N
	 twde7mtcMjDJbDTPl0QzN9m9oE7SDMEKvzDPG1DjRverq7MdiHS3Mt3LHVU1U4gQrU
	 YATL0tUV7xYKW6G+NuJqIvYquWBCAzVoo+qVA9z4NHaIlaFHwPdhaDds7hxcIADe+U
	 p0SSwVgMXgz+gYwLnbosvAX0KaO3dl8ACnCnzQMpL7cc1sAfiApKwPp4w6LUm5i9rh
	 m2hWpVjWgZl8NIERSZ/gLSr/wqb9/RXMD666Q1XQwk+vrDe4HfraTj3+DBaAdZDo28
	 Hh4v8kArlwO2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4311A80CBC;
	Tue, 28 Apr 2026 22:54:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B2F5231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:44:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5DBDC83BE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:44:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9p_1fos6mhdS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 10:44:02 +0000 (UTC)
X-Greylist: delayed 360 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 28 Apr 2026 10:44:01 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A0BAD83BE3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0BAD83BE3
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=210.118.77.11;
 helo=mailout1.w1.samsung.com; envelope-from=j.raczynski@samsung.com;
 receiver=<UNKNOWN> 
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0BAD83BE3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:44:00 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20260428103757euoutp01f247626b53557823a1c35e7ec3aae435~qfwiZsndm1597715977euoutp018
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:37:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20260428103757euoutp01f247626b53557823a1c35e7ec3aae435~qfwiZsndm1597715977euoutp018
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20260428103757eucas1p132f3f1123fae21d596a51cbdce72c931~qfwiMVCoa2962529625eucas1p13;
 Tue, 28 Apr 2026 10:37:57 +0000 (GMT)
Received: from AMDC4843.eu.corp.samsungelectronics.net (unknown
 [106.120.77.61]) by eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20260428103757eusmtip1dd792289d478dfaae8220c7be02bee03~qfwhxcoZF0486404864eusmtip1M;
 Tue, 28 Apr 2026 10:37:57 +0000 (GMT)
From: Jakub Raczynski <j.raczynski@samsung.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, kuba@kernel.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, przemyslaw.kitszel@intel.com,
 error27@gmail.com, Jakub Raczynski <j.raczynski@samsung.com>
Date: Tue, 28 Apr 2026 12:36:54 +0200
Message-Id: <20260428103653.3539239-1-j.raczynski@samsung.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260428103757eucas1p132f3f1123fae21d596a51cbdce72c931
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260428103757eucas1p132f3f1123fae21d596a51cbdce72c931
X-EPHeader: CA
X-CMS-RootMailID: 20260428103757eucas1p132f3f1123fae21d596a51cbdce72c931
References: <CGME20260428103757eucas1p132f3f1123fae21d596a51cbdce72c931@eucas1p1.samsung.com>
X-Mailman-Approved-At: Tue, 28 Apr 2026 22:54:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=samsung.com; 
 s=mail20170921; t=1777372677;
 bh=azDwVA7NGgGiKAxFELCpnqhJ6m/gaXxvTMSXNbYXqpE=;
 h=From:To:Cc:Subject:Date:References:From;
 b=tS7TzDA1xuhGqvVvFdQ/Hx/vPy70Eye+JRZjIhAHDYdSzAG8VGA5YC35sjwXG8W5W
 ZhcisOFnVCjz3hKRukWPv8LGKBvbSrj1NJ63mLebxTxbm57/x27kZNBP2rwbg7enGz
 ovz3luMqjLP2/5JXJ3bU9uX89oV6Drf8e1FrZkuM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=samsung.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=samsung.com header.i=@samsung.com header.a=rsa-sha256
 header.s=mail20170921 header.b=tS7TzDA1
Subject: [Intel-wired-lan] [PATCH v3 net-next] net/intel: Replace manual
 array size calculation with ARRAY_SIZE
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
X-Rspamd-Queue-Id: 66C6648CDB6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[samsung.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,intel.com,gmail.com,samsung.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,samsung.com:mid,samsung.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[j.raczynski@samsung.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]

There are still places in the code where manual calculation of array size
exist, but it is good to enforce usage of single macro through the whole
code as it makes code bit more readable.
While at it, beautify condition surrounding it by reversing check and remove
unnecessary casting.

Signed-off-by: Jakub Raczynski <j.raczynski@samsung.com>
Reviewed-by: Dan Carpenter <error27@gmail.com>
---
Link to v1/v2:
https://lore.kernel.org/kernel-janitors/20260421114029.2689961-1-j.raczynski@samsung.com/

Changes in v3:
- Add 'Reviewed-by' from previous thread
Changes in v2:
- Beautify code by removing excessive parentheses
- Reverse if condition to remove negation of whole check

 drivers/net/ethernet/intel/i40e/i40e_adminq.h | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_adminq.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
index 1be97a3a86ce..dcf3baec7b73 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
@@ -109,7 +109,7 @@ static inline int i40e_aq_rc_to_posix(int aq_ret, int aq_rc)
 		-EFBIG,      /* I40E_AQ_RC_EFBIG */
 	};
 
-	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
+	if (aq_rc >= ARRAY_SIZE(aq_to_posix))
 		return -ERANGE;
 
 	return aq_to_posix[aq_rc];
diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.h b/drivers/net/ethernet/intel/iavf/iavf_adminq.h
index bbf5c4b3a2ae..dd2f61172157 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.h
@@ -113,7 +113,7 @@ static inline int iavf_aq_rc_to_posix(int aq_ret, int aq_rc)
 	if (aq_ret == IAVF_ERR_ADMIN_QUEUE_TIMEOUT)
 		return -EAGAIN;
 
-	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
+	if (aq_rc >= ARRAY_SIZE(aq_to_posix))
 		return -ERANGE;
 
 	return aq_to_posix[aq_rc];
-- 
2.34.1

