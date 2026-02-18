Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FYBAdCQlWnoSQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0D4155284
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 11:13:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3690407E7;
	Wed, 18 Feb 2026 10:13:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MJwBYIOOVZb8; Wed, 18 Feb 2026 10:13:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76B8940755
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771409608;
	bh=K2MZ9Mdl5uBgJYO6GWAelelMTHvc+499gC9kY5J6w78=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HTTg1x66/Ij1lARlLxnZY3CgasdUUNZrtXkGOsw+xmeagEPvKMtfatpdArlwi890K
	 uugUI7+uXkIYmFmhfx2FUMSl19mLnLzaQbPmDwmK6Cg9tff//GnNzXyi0TV61iXCvl
	 7jcU7D0Rv4ucUz7KcXmcy2KHojkfJqonJZjpYUgpGfH75IMuadsYmZtEDsCS3kQvKV
	 LezvMANEzVYX5Nxtx01JwBkc8EfXirSO05qX2Z3DFeAbe0f4doaavRa/D+CaZLXV8f
	 sKrK6y47ZF9r9vsFEm8mcHOJ29pF870B6TsZfAyYfkiVkfcxa0mGp6kyc9kpM8ZiTd
	 bhKDg0HpHP50w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76B8940755;
	Wed, 18 Feb 2026 10:13:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 80931206
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4143A605E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9kafZO7oPRxo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 10:13:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B0E1F605D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0E1F605D1
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0E1F605D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 10:13:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 759024456F;
 Wed, 18 Feb 2026 10:13:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57C01C2BC87;
 Wed, 18 Feb 2026 10:13:21 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vseYZ-00000000LW4-2dI7; Wed, 18 Feb 2026 11:13:19 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Randy Dunlap <rdunlap@infradead.org>
Date: Wed, 18 Feb 2026 11:12:40 +0100
Message-ID: <b283bdb3073ad6396345dda5875571bc47dd6215.1771408406.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1771408406.git.mchehab+huawei@kernel.org>
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771409601;
 bh=4U9S92uLRAA+mWktHmpbTnn1LtPaRCq0xSK6dVoNpwE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rUD/rytUPezekhvGG4gguYlNKlT0NYLFimevTVRcd45FYlndGdTYGxw8bTV6Jdi2J
 Mt/PB5/+kNrEnS8Exwz5EhrewWnsXSmeWQl0YqWEnFaT++QZSgWXoQmi0G8KhzgeI3
 DRQavt8OfkLpJcZzzPPI6IrctkL0RM/8oqgVQHsrsAKv45NyjKZoi+OB9Ic/DoixTv
 LNl0/2H/4zpAIIq2w3y7cp7+j9JPs1Wr5ZDlHt4BGhbGWrG47oAqeilMOEaUyfHEFP
 ssHavLBu0u3s+iKiw2MMrbxl6KfBR9N9UmAtvdJTKgKgrLinVnjS0pp7TQ78wLgG9Y
 tIKQeBIymGc9w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rUD/rytU
Subject: [Intel-wired-lan] [PATCH 10/38] docs: kdoc_parser: don't exclude
 defaults from prototype
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
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab+huawei@kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:rdunlap@infradead.org,m:mchehab@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,infradead.org:email,intel.com:email];
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
X-Rspamd-Queue-Id: 4E0D4155284
X-Rspamd-Action: no action

If we do that, the defaults won't be parsed.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Acked-by: Randy Dunlap <rdunlap@infradead.org>
Tested-by: Randy Dunlap <rdunlap@infradead.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 tools/lib/python/kdoc/kdoc_parser.py | 1 -
 1 file changed, 1 deletion(-)

diff --git a/tools/lib/python/kdoc/kdoc_parser.py b/tools/lib/python/kdoc/kdoc_parser.py
index 9559cbfd5e4c..d8e96c6c4ebc 100644
--- a/tools/lib/python/kdoc/kdoc_parser.py
+++ b/tools/lib/python/kdoc/kdoc_parser.py
@@ -208,7 +208,6 @@ var_xforms = [
     (KernRe(r"(?://.*)$"), ""),
     (KernRe(r"(?:/\*.*\*/)"), ""),
     (KernRe(r";$"), ""),
-    (KernRe(r"=.*"), ""),
 ]
 
 #
-- 
2.52.0

