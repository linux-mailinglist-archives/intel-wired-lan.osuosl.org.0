Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJf6L92QlWn1SQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5383C15530F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED0968109C;
	Wed, 18 Feb 2026 10:13:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L77Jgz0d0yiS; Wed, 18 Feb 2026 10:13:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65825810C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771409622;
	bh=JPwgx0XXnU57JLJ4sk03dUf2BPiUggavjc73leovCks=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NYTpoIunLKZLH7Nt1bi9SyKKZ1K7w8GIj35vUv60KujkVvirmZ8Ah0x5LLFf3+uJw
	 mNZrOI828pEzldHCX0vFyQbcRaEJMzZB8NiYOrvNa5TuK/Yu6wZ9omKK65PW7oX5Nf
	 4Fum2xAeWy9bwGyXFDpQSqZJ2EJsYp49FAMsUYZa5jc+223+ZBbFdIuuXa3Om7GOWE
	 4ys4+pSW6bUJ3jvhSRq1F9RuV7Ku00KdZbYPfF27k68aTxZoo5Q+fIo3keIuFgDiYr
	 rdJY4RKzCMvOh/g7mjhnzdn/Lcy+AWoxparyJkj7llzXODth3c+zub0LytmIiArwU+
	 RUKPfFapSggug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65825810C4;
	Wed, 18 Feb 2026 10:13:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D807C206
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8A784009A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2wL9q6ycVKsV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 10:13:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EE49140078
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE49140078
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE49140078
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A814E44551;
 Wed, 18 Feb 2026 10:13:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88843C19423;
 Wed, 18 Feb 2026 10:13:31 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vseYj-00000000Lyr-3Nye; Wed, 18 Feb 2026 11:13:29 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Date: Wed, 18 Feb 2026 11:13:03 +0100
Message-ID: <45e9f1cccffba1d8c39b9e439efe694e1426a717.1771408406.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1771408406.git.mchehab+huawei@kernel.org>
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771409611;
 bh=CwHsRCLR3wmM4G7G9vnHWInI3q03RKTr8dBQN45i3sE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iX9EP0jKJG8PffTHhAtfpwxm8+/JqYKhI9wEOAf9UsS609BzL4rTzoDyCS4yiTDHO
 fx6srtY75shT23w603e7nsB3DdtE9yxY9DmWMvsSYziUMzUe/lMUGIk6GSGbaA9qpw
 5d78qxduPlfo4zZAKpcApx/5tk5bpxKp7byUKNLdkbgc1y2J5fEQbakS5OwypzeXFL
 zJylyilRu7/WBFcbI2os81lo8UyFUP8pe7lGFlwAs6DdczvN6b9Znbrj9drapcH+WP
 fvOOZAejGlAJ1FBQXc1tfBHK502VqdPOizOY1+9UWxvWy0Nvk2jYm5MKs53WJ2KRMa
 8NEc6iPJZIs6Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=iX9EP0jK
Subject: [Intel-wired-lan] [PATCH 33/38] docs: kdoc_output: add optional
 args to ManOutput class
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[huawei];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,self.data:url];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5383C15530F
X-Rspamd-Action: no action

The current logic hardcodes several values that are placed
inside troff's title header (.TH). Place them as parameters
to make the class more flexible.

While here, remove the extra unused "LINUX" parameter at the
end of the .TH header.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 tools/lib/python/kdoc/kdoc_output.py | 27 +++++++++++++++++++--------
 1 file changed, 19 insertions(+), 8 deletions(-)

diff --git a/tools/lib/python/kdoc/kdoc_output.py b/tools/lib/python/kdoc/kdoc_output.py
index 4210b91dde5f..fe3fc0dfd02b 100644
--- a/tools/lib/python/kdoc/kdoc_output.py
+++ b/tools/lib/python/kdoc/kdoc_output.py
@@ -607,7 +607,14 @@ class ManFormat(OutputFormat):
         "%m %d %Y",
     ]
 
-    def __init__(self, modulename):
+    def emit_th(self, name):
+        """Emit a title header line."""
+        name = name.strip()
+
+        self.data += f'.TH "{self.modulename}" {self.section} "{name}" '
+        self.data += f' "{self.date}" "{self.manual}"\n'
+
+    def __init__(self, modulename, section="9", manual="Kernel API Manual"):
         """
         Creates class variables.
 
@@ -616,7 +623,11 @@ class ManFormat(OutputFormat):
         """
 
         super().__init__()
+
         self.modulename = modulename
+        self.section = section
+        self.manual = manual
+
         self.symbols = []
 
         dt = None
@@ -632,7 +643,7 @@ class ManFormat(OutputFormat):
         if not dt:
             dt = datetime.now()
 
-        self.man_date = dt.strftime("%B %Y")
+        self.date = dt.strftime("%B %Y")
 
     def arg_name(self, args, name):
         """
@@ -724,7 +735,7 @@ class ManFormat(OutputFormat):
 
         out_name = self.arg_name(args, name)
 
-        self.data += f'.TH "{self.modulename}" 9 "{out_name}" "{self.man_date}" "API Manual" LINUX' + "\n"
+        self.emit_th(out_name)
 
         for section, text in args.sections.items():
             self.data += f'.SH "{section}"' + "\n"
@@ -734,7 +745,7 @@ class ManFormat(OutputFormat):
 
         out_name = self.arg_name(args, name)
 
-        self.data += f'.TH "{name}" 9 "{out_name}" "{self.man_date}" "Kernel Hacker\'s Manual" LINUX' + "\n"
+        self.emit_th(out_name)
 
         self.data += ".SH NAME\n"
         self.data += f"{name} \\- {args['purpose']}\n"
@@ -780,7 +791,7 @@ class ManFormat(OutputFormat):
     def out_enum(self, fname, name, args):
         out_name = self.arg_name(args, name)
 
-        self.data += f'.TH "{self.modulename}" 9 "{out_name}" "{self.man_date}" "API Manual" LINUX' + "\n"
+        self.emit_th(out_name)
 
         self.data += ".SH NAME\n"
         self.data += f"enum {name} \\- {args['purpose']}\n"
@@ -813,7 +824,7 @@ class ManFormat(OutputFormat):
         out_name = self.arg_name(args, name)
         full_proto = args.other_stuff["full_proto"]
 
-        self.data += f'.TH "{self.modulename}" 9 "{out_name}" "{self.man_date}" "API Manual" LINUX' + "\n"
+        self.emit_th(out_name)
 
         self.data += ".SH NAME\n"
         self.data += f"{name} \\- {args['purpose']}\n"
@@ -834,7 +845,7 @@ class ManFormat(OutputFormat):
         purpose = args.get('purpose')
         out_name = self.arg_name(args, name)
 
-        self.data += f'.TH "{module}" 9 "{out_name}" "{self.man_date}" "API Manual" LINUX' + "\n"
+        self.emit_th(out_name)
 
         self.data += ".SH NAME\n"
         self.data += f"typedef {name} \\- {purpose}\n"
@@ -849,7 +860,7 @@ class ManFormat(OutputFormat):
         definition = args.get('definition')
         out_name = self.arg_name(args, name)
 
-        self.data += f'.TH "{module}" 9 "{out_name}" "{self.man_date}" "API Manual" LINUX' + "\n"
+        self.emit_th(out_name)
 
         self.data += ".SH NAME\n"
         self.data += f"{args.type} {name} \\- {purpose}\n"
-- 
2.52.0

