Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOhxBI4+emlB4wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 17:51:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B80C6A641E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 17:51:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8D6640A20;
	Wed, 28 Jan 2026 16:50:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LZ_SrUufkAKO; Wed, 28 Jan 2026 16:50:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1934D40981
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769619050;
	bh=wzPMrTRTD/HcTofp3tmsCFEtEpM/kSjJONpzWRr3Nh4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KOeKHRc4f2rSkt1GbPZyE6rVq+025daWtcNW1K9yV5hJduyxFIfjfoHBPZTdd679q
	 i9BhYs4Wb2Cv5+OQKiWfranPIOoph/feJSXtKQtG0nG56vKh+hlawnrk5+H/0/1jBO
	 Ig4hISoyB3iHe3UtRlnVS/JSzpFTta7DdSh+yMWXe1ieeAjd2N/GpYqv/2U/vUOR2s
	 vf8dXwJYOmFt12B1extzWCMYFKd2VtfNy+gh+b1mdgEJw5a9LAfIwLj6XqqFEv3/Go
	 ZNFnmDhv5cKCVqQAVvvgHYLa7vcyqM4k7+DvJk7ZQl/isW8g+8xIZJ4TAzu4HduYqs
	 C14ZD/X3LPcjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1934D40981;
	Wed, 28 Jan 2026 16:50:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4779A31D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 16:50:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DBF666077E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 16:50:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XmSLm-6M3Y0s for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 16:50:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 362BD60643
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 362BD60643
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 362BD60643
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 16:50:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E495044456;
 Wed, 28 Jan 2026 16:50:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4C06C4CEF1;
 Wed, 28 Jan 2026 16:50:35 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vl8kT-0000000DB3p-2pLf; Wed, 28 Jan 2026 17:50:33 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Date: Wed, 28 Jan 2026 17:50:15 +0100
Message-ID: <0eabdd8b9c895230b98b289ab3352303b816858e.1769617841.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769617841.git.mchehab+huawei@kernel.org>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769619035;
 bh=gkns4e3uFG3waqW3gYcl7M5Q1Ru6AdLSMlaBiCnqdQM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JeZbi13GwrgsGYtpPX4XumjmqUTcWoMbNC7coPCjBC++DdYd/ZIjEs7oPtwtCD2ec
 iYu85X20yNh9re5IieGZfJ+0PelHr0Nb3Wom0j3Ccf9JTjXOswoeGSOOX2rB5o2wm2
 bQPS9/SaJm1it19zLoXOgibNlG8BrlWgZM4HQ3xxQoBZPp/gZNOeLQg8HhsiX8RZff
 fW9uP635BswyPr/K4OGEpjqIOO3utDH/V7FsZwlS+72TXrxJE1l/l/KRXLes8ad9wf
 msDFRZuixzV66dpXFw8NXVEcnNstAaeF1AeNBpT9jiHlENNEDnWGhiUT2c1Z1m9KNE
 3Yut7q0em1qEQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JeZbi13G
Subject: [Intel-wired-lan] [PATCH v2 17/25] docs: kdoc_re: don't recompile
 NextMatch regex every time
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[huawei];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: B80C6A641E
X-Rspamd-Action: no action

Store delimiters and its regex-compiled version as const vars.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 tools/lib/python/kdoc/kdoc_re.py | 35 ++++++++++++++++++++------------
 1 file changed, 22 insertions(+), 13 deletions(-)

diff --git a/tools/lib/python/kdoc/kdoc_re.py b/tools/lib/python/kdoc/kdoc_re.py
index f082f82bad67..b6e11ee0be21 100644
--- a/tools/lib/python/kdoc/kdoc_re.py
+++ b/tools/lib/python/kdoc/kdoc_re.py
@@ -81,6 +81,13 @@ class KernRe:
         self.last_match = self.regex.search(string)
         return self.last_match
 
+    def finditer(self,  string):
+        """
+        Alias to re.finditer.
+        """
+
+        return self.regex.finditer(string)
+
     def findall(self, string):
         """
         Alias to re.findall.
@@ -116,6 +123,16 @@ class KernRe:
 
         return self.last_match.groups()
 
+#: Nested delimited pairs (brackets and parenthesis)
+DELIMITER_PAIRS = {
+    '{': '}',
+    '(': ')',
+    '[': ']',
+}
+
+#: compiled delimiters
+RE_DELIM = KernRe(r'[\{\}\[\]\(\)]')
+
 
 class NestedMatch:
     """
@@ -165,14 +182,6 @@ class NestedMatch:
     #
     #   FOO(arg1, arg2, arg3)
 
-    DELIMITER_PAIRS = {
-        '{': '}',
-        '(': ')',
-        '[': ']',
-    }
-
-    RE_DELIM = re.compile(r'[\{\}\[\]\(\)]')
-
     def _search(self, regex, line):
         """
         Finds paired blocks for a regex that ends with a delimiter.
@@ -202,13 +211,13 @@ class NestedMatch:
             escape = False
 
             d = line[offset - 1]
-            if d not in self.DELIMITER_PAIRS:
+            if d not in DELIMITER_PAIRS:
                 continue
 
-            end = self.DELIMITER_PAIRS[d]
+            end = DELIMITER_PAIRS[d]
             stack.append(end)
 
-            for match in self.RE_DELIM.finditer(line[offset:]):
+            for match in RE_DELIM.finditer(line[offset:]):
                 pos = match.start() + offset
 
                 d = line[pos]
@@ -229,8 +238,8 @@ class NestedMatch:
                     string_char = d
                     continue
 
-                if d in self.DELIMITER_PAIRS:
-                    end = self.DELIMITER_PAIRS[d]
+                if d in DELIMITER_PAIRS:
+                    end = DELIMITER_PAIRS[d]
 
                     stack.append(end)
                     continue
-- 
2.52.0

