Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CBXJKZ0Ve2kZBQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 09:09:01 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C03DAD2CD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 09:09:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF10160889;
	Thu, 29 Jan 2026 08:08:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OZjWzNzVaUR3; Thu, 29 Jan 2026 08:08:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F40FC6086B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769674129;
	bh=Dvivad/C+bWYpV+C7Kzin/HuGjEaJYclGH/FeKPEdp0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IY0zq8tS8VdI+4ArYGK3nq7VwS3HSsYZVDvNRn1GinqE+Fsq3kO+5ZkVN8Ce1yix3
	 3gyNt7HOY/f82p+PrI8h1mpxfNRkGFyBOLfq9uI/kP2lvZbCKUIM3+C04CfVJWUgkQ
	 JwF71aXc57rWxFB9fTgHbyvtZSXgTSWbkZSzvzMukAj1gR5oM5o3dvP90vE/hmAw2e
	 Aae3RBk91LJR7Lns8l3yasBdCpSrPUIYiMhwGOJGgTe0kspO53FNCdCEe/fYaKK64F
	 nu06SqxdQ1Mx1/5WvOZEgGtHH9PTQWofSfh2TQlAH0Hbd08pbg1Cn55wboe12h5DUY
	 IBtMtKLMEzwaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F40FC6086B;
	Thu, 29 Jan 2026 08:08:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B9B4118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE80A60856
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x8_uuMu0L7Tg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 08:08:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 56E5C606F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56E5C606F6
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 56E5C606F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 08:08:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6B11060132;
 Thu, 29 Jan 2026 08:08:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C2EAC2BCB6;
 Thu, 29 Jan 2026 08:08:31 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vlN4n-0000000EROH-1jpG; Thu, 29 Jan 2026 09:08:29 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>
Date: Thu, 29 Jan 2026 09:08:18 +0100
Message-ID: <50ef80ed8a1a638d08974e55a7828371bab09c0d.1769673038.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769673038.git.mchehab+huawei@kernel.org>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769674111;
 bh=aAYr/rdf8rPhk+DzwcPpBGhnCkODn024mb+J5zDgPZA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HxEvSNHQEtL0D59ODsnQi0p3l8kMpRAIJaWt8HUV5lvtVPe2caGw5Z0eLuIIQN8Cr
 4xRaxDBGT+igKQhlHOaxNvX+eFQ6ZA82YxsTv0FjkNdeBvTBYl+iYm50wea3VTsOcQ
 fKt6u+LN7F4u4p4Zx30THYRuTvRzoAHmjiH9PlcAVFT47GW9CKIqfpogm1q0jwt9b3
 7RjMh3jWaL0T1izR+e8ryofdpsfSH4aWF1PVlipelfiqJLjpGEWRmXNp90sSw+dIzh
 /5erIn2XU+qhq6rfbrfcgR33uPNecU9q3U2RZybpjFOVd8oICaZfNpY9xMZj77zvIS
 xM/EStNmmUzQA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=HxEvSNHQ
Subject: [Intel-wired-lan] [PATCH v3 27/30] docs: kdoc_parser: minimize
 differences with struct_group_tagged
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[huawei];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 6C03DAD2CD
X-Rspamd-Action: no action

While the previous version does a better job representing
the actual struct, it ends losing documentation from each
member.

Change the replacements to minimize such changes. With that,
the only differences before/after using NestedMatch new
replacement logic are (at man page output):

    --- before.log  2026-01-29 06:14:20.163592584 +0100
    +++ after.log   2026-01-29 06:32:04.811370234 +0100
    @@ -1573701 +1573701 @@
    -.BI "    struct ice_health_tx_hang_buf  tx_hang_buf;"
    +.BI "    struct ice_health_tx_hang_buf tx_hang_buf;"
    @@ -4156451 +4156451 @@
    -.BI "    struct libeth_fq_fp  fp;"
    +.BI "    struct libeth_fq_fp fp;"
    @@ -4164041 +4164041 @@
    -.BI "    struct libeth_xskfq_fp  fp;"
    +.BI "    struct libeth_xskfq_fp fp;"
    @@ -4269434 +4269434 @@
    -.BI "    struct page_pool_params_fast  fast;"
    +.BI "    struct page_pool_params_fast fast;"
    @@ -4269452 +4269452 @@
    -.BI "    struct page_pool_params_slow  slow;"
    +.BI "    struct page_pool_params_slow slow;"
    @@ -4269454 +4269454 @@
    -.BI "    STRUCT_GROUP( struct net_device *netdev;"
    +.BI "    struct net_device *netdev;"

e.g. basically whitespaces, plus a fix NestedMatch to
better handle /* private */ comments.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 tools/lib/python/kdoc/kdoc_parser.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/lib/python/kdoc/kdoc_parser.py b/tools/lib/python/kdoc/kdoc_parser.py
index 50d57c6799bb..1e8e156e2a9e 100644
--- a/tools/lib/python/kdoc/kdoc_parser.py
+++ b/tools/lib/python/kdoc/kdoc_parser.py
@@ -126,7 +126,7 @@ struct_xforms = [
     #
     (CFunction('struct_group'), r'\2'),
     (CFunction('struct_group_attr'), r'\3'),
-    (CFunction('struct_group_tagged'), r'struct \1 { \3 } \2;'),
+    (CFunction('struct_group_tagged'), r'struct \1 \2; \3'),
     (CFunction('__struct_group'), r'\4'),
 
     #
-- 
2.52.0

