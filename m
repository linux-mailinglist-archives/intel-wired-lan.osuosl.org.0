Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBDJBVE4sGlbhQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 16:27:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE6D25360C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 16:27:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F94E60617;
	Tue, 10 Mar 2026 15:27:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v4q-62DPPkxu; Tue, 10 Mar 2026 15:27:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C486D60633
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773156427;
	bh=x7yqvKgRQlPCuPxWpeGgWE7MFZhfk9JfcC1gFXD6dw4=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n8vGS92qdeomE72JvJPCEKWNVDKwBOVbSOIObajmse6mPf9BYR9AbiP7Qnzp4kLED
	 8aQeArHQ37cAHixk33J1G8atd4szqglaRKHy/7BE+hN0gqqhAFfDTFiWo4eYZvO9H6
	 yv4WbaXGE8KlM+uI15FOLTEp0xXT6hJxWa2195YmHEQzWqxXLc5jXe88DT4ESAlt7B
	 iXOJAPKGfqseZlC7r4jqnLE0KM5tOrLRSFSkbc+wJvmNIh/qRJgqinmRVuTF9n2sJ1
	 v1n/pytkCz2GyGQX1bCCHo2XF8kE/LzludjrhRZirX9LTTito8e57azEdjGI/JgZkM
	 X9lvqVAO1yzdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C486D60633;
	Tue, 10 Mar 2026 15:27:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 23D8E35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFB2060B3C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:01:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tRFd3Gq93Fbu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 12:01:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.42.244.119;
 helo=mail.avm.de; envelope-from=phahn-oss@avm.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 912CE60B75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 912CE60B75
Received: from mail.avm.de (mail.avm.de [212.42.244.119])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 912CE60B75
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:01:17 +0000 (UTC)
Received: from [212.42.244.71] (helo=mail.avm.de)
 by mail.avm.de with ESMTP (eXpurgate 4.55.2)
 (envelope-from <phahn-oss@avm.de>)
 id 69b006ae-2367-7f0000032729-7f000001c97e-1
 for <multiple-recipients>; Tue, 10 Mar 2026 12:55:26 +0100
Received: from mail-auth.avm.de (dovecot-mx-01.avm.de [212.42.244.71])
 by mail.avm.de (Postfix) with ESMTPS;
 Tue, 10 Mar 2026 12:55:26 +0100 (CET)
From: Philipp Hahn <phahn-oss@avm.de>
Date: Tue, 10 Mar 2026 12:48:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-b4-is_err_or_null-v1-33-bd63b656022d@avm.de>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
In-Reply-To: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
To: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com, 
 bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr, 
 dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org, 
 gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org, 
 intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev, 
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
 linux-btrfs@vger.kernel.org, linux-cifs@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-erofs@lists.ozlabs.org, 
 linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-hyperv@vger.kernel.org, 
 linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-leds@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-mips@vger.kernel.org, linux-mm@kvack.org, 
 linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org, 
 linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
 linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org, 
 linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
 ntfs3@lists.linux.dev, samba-technical@lists.samba.org, 
 sched-ext@lists.linux.dev, target-devel@vger.kernel.org, 
 tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev, 
 Philipp Hahn <phahn-oss@avm.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>, 
 Andrew Morton <akpm@linux-foundation.org>
X-Developer-Signature: v=1; a=openpgp-sha256; l=3181; i=phahn-oss@avm.de;
 h=from:subject:message-id; bh=Axff4FnAHPNmyZXZ2vgEuavJkfKhCKJPqZGqnoou9Q8=;
 b=owEBbQGS/pANAwAKATQtBlPRrKzbAcsmYgBpsAZGGzCaztqu0lpdWvBpBbRCmO+WdPRS9iZCq
 y8ebihz4r+JATMEAAEKAB0WIQQ5bPBtrWDUcDQCppg0LQZT0ays2wUCabAGRgAKCRA0LQZT0ays
 21/8B/wPP7xI3S+6VTDXKISgyNvBqi0UZCbrYypvYfajV0SZbWCEuGKdkXjsEnnFt9YRKxoHeyi
 XmpmbA47CMrp+VNl6him9YVO8BEPZHU4T3m6BB2+Ps31+3rQDfYs7d+nPEStYiJ7CseLk0vc9Xu
 aMyI8bSdyPpcRveFxPuH/uy4iV8zrSXLAoi0Ddm83MyR2aRNl2iCZfPRsvcbR2T8dPBVJjhKzKb
 5v+Zz66IZ/QArfKSmSkUD+nw+Micr3w6XFCa9e1WMrdcQ/Zh9MZx0TWZwcRgOAgfEwQG/fxgX8/
 bLP83oq+8G1pw01czFBtKoe7eUKh6J8z9KOOUPoqLrMipRXq
X-Developer-Key: i=phahn-oss@avm.de; a=openpgp;
 fpr=58AF7C2E007CDBE62C59E078F50EFDCF8AD04B1A
X-purgate-ID: 149429::1773143726-05CBBE1F-4CFCA352/0/0
X-purgate-type: clean
X-purgate-size: 3183
X-purgate-Ad: Categorized by eleven eXpurgate (R) https://www.eleven.de
X-purgate: This mail is considered clean (visit https://www.eleven.de for
 further information)
X-purgate: clean
X-Mailman-Approved-At: Tue, 10 Mar 2026 15:27:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=avm.de; s=mail; 
 t=1773143726; bh=Axff4FnAHPNmyZXZ2vgEuavJkfKhCKJPqZGqnoou9Q8=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=vC8qGYtmoTTFtKG57rlNoXWnybB42U6r7mF3yDjZNK169i+LPPc6FbsKjJViJXz0P
 z0SkvHe3S8CzlbyDQgjnVKCfReu3jwjo1Tnr6q9iIPykZjcNCRLdwFjqB3/YTiencA
 upketXPZTZxW0W7lPSDpgLsiq82FnKI8pFh7qlSE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=avm.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=vC8qGYtm
Subject: [Intel-wired-lan] [PATCH 33/61] mm: Prefer IS_ERR_OR_NULL over
 manual NULL check
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
X-Rspamd-Queue-Id: 6EE6D25360C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[avm.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[phahn-oss@avm.de,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:amd-gfx@lists.freedesktop.org,m:apparmor@lists.ubuntu.com,m:bpf@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:cocci@inria.fr,m:dm-devel@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:gfs2@lists.linux.dev,m:intel-gfx@lists.freedesktop.org,m:iommu@lists.linux.dev,m:kvm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-block@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-btrfs@vger.kernel.org,m:linux-cifs@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-erofs@lists.ozlabs.org,m:linux-ext4@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-hyperv@vger.kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mips@vger.kernel.org,m:linux-mm@kvack.org,m:linux-modules@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-nfs@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-phy@lists.infradead.org,m:linux-pm@vger.
 kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:phahn-oss@avm.de,m:catalin.marinas@arm.com,m:akpm@linux-foundation.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[56];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phahn-oss@avm.de,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
check.

Change generated with coccinelle and adapted by hand.

To: Catalin Marinas <catalin.marinas@arm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-mm@kvack.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Philipp Hahn <phahn-oss@avm.de>
---
 mm/kmemleak.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/mm/kmemleak.c b/mm/kmemleak.c
index d79acf5c51006c3ed42fd88a2246ca148e401999..91136be23a84d825698e98b4f2d0e666429dd593 100644
--- a/mm/kmemleak.c
+++ b/mm/kmemleak.c
@@ -1092,7 +1092,7 @@ void __ref kmemleak_alloc(const void *ptr, size_t size, int min_count,
 {
 	pr_debug("%s(0x%px, %zu, %d)\n", __func__, ptr, size, min_count);
 
-	if (kmemleak_enabled && ptr && !IS_ERR(ptr))
+	if (kmemleak_enabled && !IS_ERR_OR_NULL(ptr))
 		create_object((unsigned long)ptr, size, min_count, gfp);
 }
 EXPORT_SYMBOL_GPL(kmemleak_alloc);
@@ -1152,7 +1152,7 @@ void __ref kmemleak_free(const void *ptr)
 {
 	pr_debug("%s(0x%px)\n", __func__, ptr);
 
-	if (kmemleak_free_enabled && ptr && !IS_ERR(ptr))
+	if (kmemleak_free_enabled && !IS_ERR_OR_NULL(ptr))
 		delete_object_full((unsigned long)ptr, 0);
 }
 EXPORT_SYMBOL_GPL(kmemleak_free);
@@ -1170,7 +1170,7 @@ void __ref kmemleak_free_part(const void *ptr, size_t size)
 {
 	pr_debug("%s(0x%px)\n", __func__, ptr);
 
-	if (kmemleak_enabled && ptr && !IS_ERR(ptr))
+	if (kmemleak_enabled && !IS_ERR_OR_NULL(ptr))
 		delete_object_part((unsigned long)ptr, size, 0);
 }
 EXPORT_SYMBOL_GPL(kmemleak_free_part);
@@ -1238,7 +1238,7 @@ void __ref kmemleak_not_leak(const void *ptr)
 {
 	pr_debug("%s(0x%px)\n", __func__, ptr);
 
-	if (kmemleak_enabled && ptr && !IS_ERR(ptr))
+	if (kmemleak_enabled && !IS_ERR_OR_NULL(ptr))
 		make_gray_object((unsigned long)ptr);
 }
 EXPORT_SYMBOL(kmemleak_not_leak);
@@ -1255,7 +1255,7 @@ void __ref kmemleak_transient_leak(const void *ptr)
 {
 	pr_debug("%s(0x%px)\n", __func__, ptr);
 
-	if (kmemleak_enabled && ptr && !IS_ERR(ptr))
+	if (kmemleak_enabled && !IS_ERR_OR_NULL(ptr))
 		reset_checksum((unsigned long)ptr);
 }
 EXPORT_SYMBOL(kmemleak_transient_leak);
@@ -1287,7 +1287,7 @@ void __ref kmemleak_ignore(const void *ptr)
 {
 	pr_debug("%s(0x%px)\n", __func__, ptr);
 
-	if (kmemleak_enabled && ptr && !IS_ERR(ptr))
+	if (kmemleak_enabled && !IS_ERR_OR_NULL(ptr))
 		make_black_object((unsigned long)ptr, 0);
 }
 EXPORT_SYMBOL(kmemleak_ignore);
@@ -1307,7 +1307,7 @@ void __ref kmemleak_scan_area(const void *ptr, size_t size, gfp_t gfp)
 {
 	pr_debug("%s(0x%px)\n", __func__, ptr);
 
-	if (kmemleak_enabled && ptr && size && !IS_ERR(ptr))
+	if (kmemleak_enabled && size && !IS_ERR_OR_NULL(ptr))
 		add_scan_area((unsigned long)ptr, size, gfp);
 }
 EXPORT_SYMBOL(kmemleak_scan_area);
@@ -1325,7 +1325,7 @@ void __ref kmemleak_no_scan(const void *ptr)
 {
 	pr_debug("%s(0x%px)\n", __func__, ptr);
 
-	if (kmemleak_enabled && ptr && !IS_ERR(ptr))
+	if (kmemleak_enabled && !IS_ERR_OR_NULL(ptr))
 		object_no_scan((unsigned long)ptr);
 }
 EXPORT_SYMBOL(kmemleak_no_scan);

-- 
2.43.0

