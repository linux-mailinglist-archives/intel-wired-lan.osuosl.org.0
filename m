Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEOPIfEQfmkbVQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A079C250A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEC8383C3F;
	Sat, 31 Jan 2026 14:25:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TSu75Da9WDb9; Sat, 31 Jan 2026 14:25:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCEA883DCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769869548;
	bh=sosQN2f/G3+XWThMFCIT3ZXPBhbb6sGts+p/TwmxPiw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QjMInITZnfTEtwgNx5Vchk0kxSabYKiTbgLp1KVE4jubCOp68TWn3/ZJiibjkjinT
	 2A3xX4oIkSRwe/frs8+YWJ+ZOUIgNA6k+xOeJ0WePx+1Zc9SHLq28AJPpirsB5FcdE
	 eEGbxY30ZHrXRSuBvmrYKBKYeC31TtXKQP6IYwGMVavQRaebXPpnR0+FsfTOnU7Qzg
	 rzjnbS1Q09Cthksm4gdJ1vgtusQlrgaIUq/sD1lVn6kUZ408h7IHMy6gWPQ7rquOpr
	 rErzgWUrIyi3a7TE26URpKTZtPKXkT443eE1XWP7hhodc8miB9kJG33s1fwOZKs6g6
	 1sGcw0ZM/Yzlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCEA883DCB;
	Sat, 31 Jan 2026 14:25:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 17B511E0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E99D60B44
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G0lYUKFzU7EO for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 14:25:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3DD7760B3C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DD7760B3C
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3DD7760B3C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 99E0D6013B;
 Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04926C4AF67;
 Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vmBua-0000000AVlv-0v7X; Sat, 31 Jan 2026 15:25:20 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Date: Sat, 31 Jan 2026 15:25:07 +0100
Message-ID: <9a41e5aa1da74e30a05bc21537a0c170450f01e3.1769867954.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769867953.git.mchehab+huawei@kernel.org>
References: <cover.1769867953.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769869522;
 bh=C2cStPoOoGCftK6fYM/VQjKEO1UC2wtJ9483nmjaklU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XUlq74Q3cKfYzyY2KmtaeWNQkjLbbRDt5JtA5d4kbIkyhkSG2+r9AGrHLU4Qs3OAO
 3CImQgNMNaRltbbsjangUr8/RFy/xKGsHu358A75l53bxFqHHyasF1Y45xDrcFc7ZZ
 zUGz4lPK3g2E73Jcj6dtY4eaNtIuN0oRlF39s22PGLYoBlu/2KrKfAQvAhr+IyXRR+
 fiDNVldhW85MRQCVRgbBHJVmTVarAAtjw7rDnTFIEHavj+WTvsWpLmLJ87yKpKiD0Q
 +HIoB2dNIDt/n0P2oHfuEaY5mV8k8GNS3pw9TsRmf1W18wyoLE9yQyFvxtldDB8Ism
 kso7P7jRnB1bA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XUlq74Q3
Subject: [Intel-wired-lan] [PATCH v4 33/41] tools: sphinx-build-wrapper:
 improve its help message
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
	TAGGED_FROM(0.00)[huawei];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 4A079C250A
X-Rspamd-Action: no action

Besides the parameters that are passed via command line arguments,
the wrapper's behavior is affected by several environment variables.

Document that. While here, use __doc__ for its description.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 tools/docs/sphinx-build-wrapper | 28 +++++++++++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/tools/docs/sphinx-build-wrapper b/tools/docs/sphinx-build-wrapper
index 8080ace60680..b7c149dff06b 100755
--- a/tools/docs/sphinx-build-wrapper
+++ b/tools/docs/sphinx-build-wrapper
@@ -814,20 +814,42 @@ def jobs_type(value):
     except ValueError:
         raise argparse.ArgumentTypeError(f"Must be 'auto' or positive integer, got {value}")  # pylint: disable=W0707
 
+EPILOG="""
+Besides the command line arguments, several environment variables affect its
+default behavior, meant to be used when called via Kernel Makefile:
+
+- KERNELVERSION:  Kernel major version
+- KERNELRELEASE:  Kernel release
+- KBUILD_VERBOSE: Contains the value of "make V=[0|1] variable.
+                  When V=0 (KBUILD_VERBOSE=0), sets verbose level to "-q".
+- SPHINXBUILD:    Documentation build tool (default: "sphinx-build").
+- SPHINXOPTS:     Extra options pased to SPHINXBUILD
+                  (default: "-j auto" and "-q" if KBUILD_VERBOSE=0).
+                  The "-v" flag can be used to increase verbosity.
+                  If V=0, the first "-v" will drop "-q".
+- PYTHON3:        Python command to run SPHINXBUILD
+- PDFLATEX:       LaTeX PDF engine. (default: "xelatex")
+- LATEXOPTS:      Optional set of command line arguments to the LaTeX engine
+- srctree:        Location of the Kernel root directory (default: ".").
+
+"""
+
 def main():
     """
     Main function. The only mandatory argument is the target. If not
     specified, the other arguments will use default values if not
     specified at os.environ.
     """
-    parser = argparse.ArgumentParser(description="Kernel documentation builder")
+    parser = argparse.ArgumentParser(formatter_class=argparse.RawTextHelpFormatter,
+                                     description=__doc__,
+                                     epilog=EPILOG)
 
     parser.add_argument("target", choices=list(TARGETS.keys()),
                         help="Documentation target to build")
     parser.add_argument("--sphinxdirs", nargs="+",
                         help="Specific directories to build")
     parser.add_argument("--builddir", default="output",
-                        help="Sphinx configuration file")
+                        help="Sphinx configuration file (default: %(default)s)")
 
     parser.add_argument("--theme", help="Sphinx theme to use")
 
@@ -843,7 +865,7 @@ def main():
                         help="place build in verbose mode")
 
     parser.add_argument('-j', '--jobs', type=jobs_type,
-                        help="Sets number of jobs to use with sphinx-build")
+                        help="Sets number of jobs to use with sphinx-build(default: auto)")
 
     parser.add_argument('-i', '--interactive', action='store_true',
                         help="Change latex default to run in interactive mode")
-- 
2.52.0

