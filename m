Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DeuJ94QfmkqVQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A65C2403
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF7AD83C36;
	Sat, 31 Jan 2026 14:25:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id umbkjDs3HTEK; Sat, 31 Jan 2026 14:25:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5043B83BC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769869531;
	bh=8PP3Jsp8GxWj96StrT7RUGSqaXln0Jxsg5MUi6NBozw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CJif2u3LZTCGfEIHtD5MDo0Z+Pk1RjTYclPN5a93lhRrYEcKxR0OdOc7oX52742Zf
	 cQQ80nVkExxatsP+uf9YOj5qXVsRWxm89UL2HZt2fu64JW3qrIJ3xBVsrB7f7xh0ns
	 XPVn5VxJJ5gX46fjaRmppqojcQzK1C5RVJM4N/cz5ztXtEnd2qEw9jmUos72d2CVHm
	 o/WZ2gjhIsVFDM0XjIwp8mJT9iaVqeDhY3nnYuiojwbaf55pqfmkSMoa7sQD8Jc/N3
	 9LC96NgBhWR5AUG9a+QE6uG3aXiA9cWlcP3zjv2ZAfvEIB90Fuxhau+bZYGMH6mvTc
	 ot7WPii9zl2hA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5043B83BC7;
	Sat, 31 Jan 2026 14:25:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D97769
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D78FA83BCF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 08VhH8a7mmaT for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 14:25:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 39AC283BC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39AC283BC7
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39AC283BC7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 86DEF444DE;
 Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AE0AC4DDE2;
 Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vmBua-0000000AVm7-1FNc; Sat, 31 Jan 2026 15:25:20 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Date: Sat, 31 Jan 2026 15:25:10 +0100
Message-ID: <56468f3cf9ba583a0759953a931bddc361b869aa.1769867954.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769867953.git.mchehab+huawei@kernel.org>
References: <cover.1769867953.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769869522;
 bh=J9gpBcUhWSmksHEje7HfFrvd/UJKiZjrUhxoxqAfK3o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=etJT7UQkV81clZC3G9h1rJ6n/Coqg5VDtA8GfexHi9ncJVJvmpBQn1iDvm2eAuBhd
 Fj2wqeMsPUTEWk9IWBwYb7NqerSM4TNrTRMxWYPUk7i181CDG8Gi7dOnc3eOZ24S0X
 h1Z4uZMcX8n+nsH0YSf0+ou5Y+ltihG+SwY/lHVlE0E/JmJyjrHO4O2jsrAHbuRtPA
 rmuphAK/iswiSm/1w46YZxxM8R7TX0lmY6q9CKMz7x188BBO3DQlNRe0dm7aCy16zZ
 /5ICALjF/4Z/ZMxwm6EtuGqjEOym6sXbhoG/WTbzLDMJ08JaKg/9CVMtBUVXBc3OmR
 5GBDzj4RSnRIw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=etJT7UQk
Subject: [Intel-wired-lan] [PATCH v4 36/41] docs: sphinx-build-wrapper:
 better handle troff .TH markups
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[huawei];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab@kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 49A65C2403
X-Rspamd-Action: no action

Using a regular expression to match .TH is problematic, as it
doesn't handle well quotation marks.

Use shlex instead.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 tools/docs/sphinx-build-wrapper | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/tools/docs/sphinx-build-wrapper b/tools/docs/sphinx-build-wrapper
index b7c149dff06b..e6418e22e2ff 100755
--- a/tools/docs/sphinx-build-wrapper
+++ b/tools/docs/sphinx-build-wrapper
@@ -576,7 +576,6 @@ class SphinxBuilder:
         """
 
         re_kernel_doc = re.compile(r"^\.\.\s+kernel-doc::\s*(\S+)")
-        re_man = re.compile(r'^\.TH "[^"]*" (\d+) "([^"]*)"')
 
         if docs_dir == src_dir:
             #
@@ -616,8 +615,7 @@ class SphinxBuilder:
         fp = None
         try:
             for line in result.stdout.split("\n"):
-                match = re_man.match(line)
-                if not match:
+                if not line.startswith(".TH"):
                     if fp:
                         fp.write(line + '\n')
                     continue
@@ -625,7 +623,9 @@ class SphinxBuilder:
                 if fp:
                     fp.close()
 
-                fname = f"{output_dir}/{match.group(2)}.{match.group(1)}"
+                # Use shlex here, as it handles well parameters with commas
+                args = shlex.split(line)
+                fname = f"{output_dir}/{args[3]}.{args[2]}"
 
                 if self.verbose:
                     print(f"Creating {fname}")
-- 
2.52.0

