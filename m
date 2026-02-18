Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PMLNt6QlWn1SQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6F9155318
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7DBD407FF;
	Wed, 18 Feb 2026 10:13:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SCtPE5bFWsG5; Wed, 18 Feb 2026 10:13:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F01EB4080B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771409623;
	bh=BEMSZ9lQgPUKWeolbpNQdJbrsN9Jg7kLj7WVjG76fq4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ka/UhGu3wwN91QOv39P29OS0+2X4Et5tPJ2ROo+Pa4koV4wlDJ21VvzM6rZta5ni/
	 NI/UlhA9v3Alk9XZnQaxUtzohgxIbgPJ7GaK12cZfQhAy4Y3UyYXYoaz+Sp3vQ1K1I
	 NwGRrnaLWF/fHH032QyMuSqUVPdJam70COuAreJzhQgYx2ZYFO9Fql2VXUsrn69Ryh
	 S9VezN3viqvXbU+C7U37NOht3KkYB5gZrQZXw8nbI/LG0Oy50PBX6VM9gsK3BP4tAY
	 d7f2W8XysxOJudcfijioPNcOgRq5VsKALKgXRmsFb6A135MUKhClWNK00UT18hI9Xz
	 zCVfI1coUJyWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F01EB4080B;
	Wed, 18 Feb 2026 10:13:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 11771206
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D1986407CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2ZIqGfA98BvU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 10:13:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CD92A407F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD92A407F7
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD92A407F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id EA85561860;
 Wed, 18 Feb 2026 10:13:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EE58C19423;
 Wed, 18 Feb 2026 10:13:30 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vseYi-00000000Lw8-3n8u; Wed, 18 Feb 2026 11:13:28 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Randy Dunlap <rdunlap@infradead.org>, Akira Yokosawa <akiyks@gmail.com>
Date: Wed, 18 Feb 2026 11:13:01 +0100
Message-ID: <f025e8ed3b01e193977b56df128694c1d2aaeb43.1771408406.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1771408406.git.mchehab+huawei@kernel.org>
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771409610;
 bh=vr6braZddKgoYGrWnqS65Mye11jx/ixo713d+HFrhJc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TWlB+dWvLoWppC8mBA0qmB5c3nDT2/AmirhXcP6cEGn2a7M25H9Gv7RhoYoSCVB5f
 9rfe/g4ukmPFLVwz/QyYY/GZ8bChfo+tUv+oMVDLbOYDgP99PE70F8qLv1hDc1TDZ7
 UzJnBBUTlZKsT7YiTlypFluMvPTfRLnhoSQhWUpVu35+hhLeBmEgIrxU2Sxb/TcPSv
 oxoqwpEeQSK11Hg4ko+Nedd+HTPVu8NbsPMzVMinYu8c3vSYxCK7+qctBqB0vjOxRl
 314TDJCd6Rg9mvBwpfnMK5BBtOCdXMohntcGgJYwXhBp83SuKHjVkldBduyq6KIOYQ
 Nv++eFu1SYyJA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TWlB+dWv
Subject: [Intel-wired-lan] [PATCH 31/38] docs: kdoc_re: Fix
 NestedMatch.sub() which causes PDF builds to break
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
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[huawei];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.osuosl.org,vger.kernel.org,intel.com,infradead.org,gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:rdunlap@infradead.org,m:akiyks@gmail.com,m:mchehab@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 6E6F9155318
X-Rspamd-Action: no action

Having a "\digit"  inside a docstring with normal strings causes
PDF output to break, as it will add a weird character inside the
string. It should be using a raw string instead.

Yet, having r"\0" won't solve, as this would be converted in
Sphinx as "0". So, this has to be inside a pre formatted text.

That's said, the comment itself is probably not the best one.

Rewrite the entire comment to properly document each parameter
and add a "delim" parameter that will be passed to the
ancillary function.

Reported-by: Akira Yokosawa <akiyks@gmail.com>
Closes: https://lore.kernel.org/linux-doc/63e99049-cc72-4156-83af-414fdde34312@gmail.com/
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 tools/lib/python/kdoc/kdoc_re.py | 30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/tools/lib/python/kdoc/kdoc_re.py b/tools/lib/python/kdoc/kdoc_re.py
index 44af43aa1e93..f67ebe86c458 100644
--- a/tools/lib/python/kdoc/kdoc_re.py
+++ b/tools/lib/python/kdoc/kdoc_re.py
@@ -323,22 +323,28 @@ class NestedMatch:
 
         return args
 
-    def sub(self, sub, line, count=0):
-        """
-        This is similar to re.sub:
+    def sub(self, sub, line, delim=",", count=0):
+        r"""
+        Perform a regex‑based replacement on ``line`` for all matches with
+        the ``self.regex`` pattern. It uses the following parameters:
 
-        It matches a regex that it is followed by a delimiter,
-        replacing occurrences only if all delimiters are paired.
+        ``sub``
+            Replacement string that may contain placeholders in the form
+            ``\{digit}``, where  ``digit`` is an integer referring to the regex
+            capture group number.
 
-        if the sub argument contains::
+            ``\{0}`` is a special case that expands to the entire matched text.
 
-            r'\0'
+        ``line``
+            The string to operate on.
 
-        it will work just like re: it places there the matched paired data
-        with the delimiter stripped.
+        ``delim``
+            The delimiter used by identify the placeholder groups
+            (defaults to ",").
 
-        If count is different than zero, it will replace at most count
-        items.
+        ``count``
+            Maximum number of replacements per match.  If 0 or omitted,
+            all matches are replaced.
         """
         out = ""
 
@@ -358,7 +364,7 @@ class NestedMatch:
             # replace arguments
             new_sub = sub
             if "\\" in sub:
-                args = self._split_args(value)
+                args = self._split_args(value, delim=delim)
 
                 new_sub = re.sub(r'\\(\d+)',
                                  lambda m: args[int(m.group(1))], new_sub)
-- 
2.52.0

