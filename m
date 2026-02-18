Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OXyNeKQlWn1SQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFD215532F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 364D140811;
	Wed, 18 Feb 2026 10:13:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xeNZxN0dQLRy; Wed, 18 Feb 2026 10:13:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DE704080D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771409626;
	bh=ZhnMdpvdD7eQXxsKozueTcDL2WcNNZQ9NJGZVbIYRwI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aBDj0TTqzNcMuK6V6Ho4gc3TzpTtBl60UkH+fsKxmiX2DJSKWlwGq/r2Qt3Y8dc6H
	 B3NlXy3oPTB/Ho7M+KDFHVGEF206B1S8F62QuW1MEaGy5nd8nGGJdpL06Xc5BDiqSr
	 0VcRBPL39QGUKoxRmRWD7ZL2WiNnrJBRZsDR57FZurgpdIzpRPO0rpOcLMUdWcGwjD
	 Iiaoh9TvejFoCJV+JL7uuaqBZUt5gzKO9IQy5VtQgpPWj2TqsKwlcjrNmFMvkVfn4a
	 aCsUFZLFr/u1DVgrwh5xlHh6yAVQcLysKLFz1sCbQRaNdpRj8y4KI1hIwSFwcGsy4x
	 3c8zCOMRtixHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DE704080D;
	Wed, 18 Feb 2026 10:13:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 75B5035B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B90040078
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qJglcJd4ij5h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 10:13:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3A8384009A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A8384009A
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A8384009A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 00EE44459B;
 Wed, 18 Feb 2026 10:13:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D708EC2BC9E;
 Wed, 18 Feb 2026 10:13:33 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vseYm-00000000M4p-0GPz; Wed, 18 Feb 2026 11:13:32 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>
Date: Wed, 18 Feb 2026 11:13:08 +0100
Message-ID: <45159d8100d22567a592a90769a71a5335f0a085.1771408406.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1771408406.git.mchehab+huawei@kernel.org>
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771409613;
 bh=fvMjJpvYeiR5dsEmac23+IArGmOBOLOmIiyyzQVBvqE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XCXs+vDn55NbKpqXTFsPi7CJOEdjC9jxLinK6EHOS/f1g9uf/z3PDR5iM8HgJvv2N
 mw6006xk6eMPrrhZWZ3gUeQXlVDshIklV6mSZyA2lgJ13YDwgHo2gn2K8nzXG/bpJP
 n39uFySI2zwLYiZOkjEYdwgNtOW2LtrKhR7rgIWrEZRbzr7rC8K23c/KG2zdDUwpV5
 UOBj0eJUJmFgIO08ARmNG+Siz2Z6OmI5KuPjSBDbx9dowDPlrvTK01Sir9ICF4Ut/c
 aEvWGuUJcbwKyygGrOWVxR2JEgz6iA8qCHMFu5BmbAekRIl1Bf2Y2UDdWBfrOFHzN+
 45IuDdYQRZx+A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XCXs+vDn
Subject: [Intel-wired-lan] [PATCH 38/38] docs: kdoc_output: pick a better
 default for modulename
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[huawei];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab@kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:skhan@linuxfoundation.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,self.data:url];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 9DFD215532F
X-Rspamd-Action: no action

Instead of placing the same data for modulename for all generated
man pages, use the directory from the filename used to produce
kernel docs as basis.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 tools/docs/kernel-doc                |  1 -
 tools/lib/python/kdoc/kdoc_output.py | 41 +++++++++++++++++-----------
 2 files changed, 25 insertions(+), 17 deletions(-)

diff --git a/tools/docs/kernel-doc b/tools/docs/kernel-doc
index aed09f9a54dd..3a932f95bdf5 100755
--- a/tools/docs/kernel-doc
+++ b/tools/docs/kernel-doc
@@ -210,7 +210,6 @@ def main():
                         help="Enable debug messages")
 
     parser.add_argument("-M", "-modulename", "--modulename",
-                        default="Kernel API",
                         help="Allow setting a module name at the output.")
 
     parser.add_argument("-l", "-enable-lineno", "--enable_lineno",
diff --git a/tools/lib/python/kdoc/kdoc_output.py b/tools/lib/python/kdoc/kdoc_output.py
index 1e3dc47bc696..44e40a6e8ca6 100644
--- a/tools/lib/python/kdoc/kdoc_output.py
+++ b/tools/lib/python/kdoc/kdoc_output.py
@@ -589,7 +589,8 @@ class ManFormat(OutputFormat):
     ``modulename``
         Defines the module name to be used at the troff ``.TH`` output.
 
-        This argument is mandatory.
+        This argument is optional. If not specified, it will be filled
+        with the directory which contains the documented file.
 
     ``section``
         Usually a numeric value from 0 to 9, but man pages also accept
@@ -634,14 +635,21 @@ class ManFormat(OutputFormat):
         "%m %d %Y",
     ]
 
-    def emit_th(self, name):
+    def emit_th(self, name, args):
         """Emit a title header line."""
-        name = name.strip()
+        title = name.strip()
+        module = self.modulename(args)
 
-        self.data += f'.TH "{name}" {self.section} "{self.date}" '
-        self.data += f' "{self.modulename}" "{self.manual}"\n'
+        self.data += f'.TH "{title}" {self.section} "{self.date}" '
+        self.data += f' "{module}" "{self.manual}"\n'
 
-    def __init__(self, modulename, section="9", manual="Kernel API Manual"):
+    def modulename(self, args):
+        if self._modulename:
+            return self._modulename
+
+        return os.path.dirname(args.fname)
+
+    def __init__(self, modulename=None, section="9", manual="Kernel API Manual"):
         """
         Creates class variables.
 
@@ -651,7 +659,7 @@ class ManFormat(OutputFormat):
 
         super().__init__()
 
-        self.modulename = modulename
+        self._modulename = modulename
         self.section = section
         self.manual = manual
 
@@ -685,7 +693,8 @@ class ManFormat(OutputFormat):
         dtype = args.type
 
         if dtype == "doc":
-            return self.modulename
+            return name
+#            return os.path.basename(self.modulename(args))
 
         if dtype in ["function", "typedef"]:
             return name
@@ -762,7 +771,7 @@ class ManFormat(OutputFormat):
 
         out_name = self.arg_name(args, name)
 
-        self.emit_th(out_name)
+        self.emit_th(out_name, args)
 
         for section, text in args.sections.items():
             self.data += f'.SH "{section}"' + "\n"
@@ -772,7 +781,7 @@ class ManFormat(OutputFormat):
 
         out_name = self.arg_name(args, name)
 
-        self.emit_th(out_name)
+        self.emit_th(out_name, args)
 
         self.data += ".SH NAME\n"
         self.data += f"{name} \\- {args['purpose']}\n"
@@ -818,7 +827,7 @@ class ManFormat(OutputFormat):
     def out_enum(self, fname, name, args):
         out_name = self.arg_name(args, name)
 
-        self.emit_th(out_name)
+        self.emit_th(out_name, args)
 
         self.data += ".SH NAME\n"
         self.data += f"enum {name} \\- {args['purpose']}\n"
@@ -851,7 +860,7 @@ class ManFormat(OutputFormat):
         out_name = self.arg_name(args, name)
         full_proto = args.other_stuff["full_proto"]
 
-        self.emit_th(out_name)
+        self.emit_th(out_name, args)
 
         self.data += ".SH NAME\n"
         self.data += f"{name} \\- {args['purpose']}\n"
@@ -868,11 +877,11 @@ class ManFormat(OutputFormat):
             self.output_highlight(text)
 
     def out_typedef(self, fname, name, args):
-        module = self.modulename
+        module = self.modulename(args)
         purpose = args.get('purpose')
         out_name = self.arg_name(args, name)
 
-        self.emit_th(out_name)
+        self.emit_th(out_name, args)
 
         self.data += ".SH NAME\n"
         self.data += f"typedef {name} \\- {purpose}\n"
@@ -882,12 +891,12 @@ class ManFormat(OutputFormat):
             self.output_highlight(text)
 
     def out_struct(self, fname, name, args):
-        module = self.modulename
+        module = self.modulename(args)
         purpose = args.get('purpose')
         definition = args.get('definition')
         out_name = self.arg_name(args, name)
 
-        self.emit_th(out_name)
+        self.emit_th(out_name, args)
 
         self.data += ".SH NAME\n"
         self.data += f"{args.type} {name} \\- {purpose}\n"
-- 
2.52.0

