Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KFwOt4QfmkbVQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB54C2411
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 15:25:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF5DC409DF;
	Sat, 31 Jan 2026 14:25:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5tPIwDGnK5U2; Sat, 31 Jan 2026 14:25:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 299D540A0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769869530;
	bh=DvP4oc8ORpKMVfkhcdvMfCujewBq3dcM8Oxjun2tmSA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=320j9GPjsPHc0oTVU2AY1VWsTicvt6Nb7G0u1LL8wxkt5Ax7Ar39AbGiVLmlNaJQP
	 cf/aihkbBSQWJDvNrU/9nkn8zuDYFNGefHDQ2XsK4fRyc2gq1Wpw203EBkLxiauMF0
	 DIsTGASrFMUtvpwJQ/LahbAs4ix6yOu8FZPokEUcHOOf4es29IJmkv4znvilyWFBgM
	 kKmDSNOIaWNWwHlphEzb7+moizHC6iOyjQGiVmbWV9CbzzeZRbp1CjfCRKEeH2H57A
	 RaZMGkXyR5AZ18rDn6kVOO8nD67W1QLISAkf01I6ghHy6m+y0Wxo5xD1pmSVyRM4yG
	 ahooqEL10ry5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 299D540A0A;
	Sat, 31 Jan 2026 14:25:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1292625F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA2ED60B50
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wz5uzdMqhO-7 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 14:25:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=mchehab+huawei@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D567560B49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D567560B49
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D567560B49
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3DB9544448;
 Sat, 31 Jan 2026 14:25:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7430C2BD00;
 Sat, 31 Jan 2026 14:25:21 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vmBuZ-0000000AVlE-3xBx; Sat, 31 Jan 2026 15:25:19 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>
Date: Sat, 31 Jan 2026 15:24:57 +0100
Message-ID: <019e85b047f25aa5472d447e1ed087cd077a79f6.1769867953.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769867953.git.mchehab+huawei@kernel.org>
References: <cover.1769867953.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769869521;
 bh=3ksnXE7vkIV4Gy30ihYdParnXgZsaJn15iVxtzuvJ4c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=maeQ6NIQqyOmmMZ1bq5xg5TRiG9YE2TRuw+KFDcCAsstytrpri5AUbDdMoLYCiXr/
 Rzio2GydR6Dv/NeY8AaELoinK8d3kO8b14GsDxBQOXiKDSIfrvkW8VRmUcxB9cEZgC
 fXjwoxKc20EccgAV+k3X/REHlwxfOR/k6YuxvsezhNWh+8S+X8rPO6+cVeCa2XjZOM
 GnM0CzQiWWMBEOlM30V2pP+ybuhnqmpUJToGMueBZ32g3EaVRy1gC7nL+NVQabpkRV
 UqhQyt5cLn+oBww9CIfdBLoka3VzVOScA55A2YjFcQ6k823LBoIjCs56dpbGTYn3wR
 8nre1pj0Z7i+g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=maeQ6NIQ
Subject: [Intel-wired-lan] [PATCH v4 23/41] docs: kdoc_re: add a helper
 class to declare C function matches
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[huawei];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: BCB54C2411
X-Rspamd-Action: no action

Add a more convenient class to match C functions and avoiding
issues at the beginning and ending of NestedMatch inits.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 tools/lib/python/kdoc/kdoc_re.py | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/tools/lib/python/kdoc/kdoc_re.py b/tools/lib/python/kdoc/kdoc_re.py
index 5f455ffff7b2..a49b42e3d189 100644
--- a/tools/lib/python/kdoc/kdoc_re.py
+++ b/tools/lib/python/kdoc/kdoc_re.py
@@ -380,3 +380,14 @@ class NestedMatch:
         """
 
         return f'NestedMatch("{self.regex.regex.pattern}")'
+
+
+class CFunction(NestedMatch):
+    r"""
+    Variant of NestedMatch.
+
+    It overrides the init method to ensure that the regular expression will
+    start with a ``\b`` and end with a C function delimiter (open parenthesis).
+    """
+    def __init__(self, regex):
+        self.regex = KernRe(r"\b" + regex + r"\s*\(")
-- 
2.52.0

