Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C21456DED70
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 10:20:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F231614F7;
	Wed, 12 Apr 2023 08:20:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F231614F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681287620;
	bh=tmBH8pZzBClvmvJt2dh6AXnly40wdBRXJ3SmEdCd0Zw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HGw2EqWjYRDx5UQwxUh8gfSBdXUnHHu3ljIsUY+/PPRMXbLApomn/Q3EBW3XTi10g
	 bGzFaYGee/+N0N5MAI8apsPfx1RlmfvwJNBouSnhChffxzTn0DnBAJzXTSPMv5xj1S
	 aZdzXNWMb8Ukm4uTZu1ghjTR6+WX72uQ1oRVfbYrXn/zYtEzaS3j0lT48a+lNjDZgd
	 +VkeyEELnwzAeB5yN0XVxXyPRmqop1wus30Bh7aC9r84BwTitXWikMJSy/T39JUjuz
	 3Xta36XUtJC9/o67dNmlkqQ+IxNKGRhnKzv76PEA+tRjWoSbySK3oIPXWr7t/5IkNI
	 BCQrzufwxWWqA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rbKXjcqzQ_Xi; Wed, 12 Apr 2023 08:20:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34B9B60640;
	Wed, 12 Apr 2023 08:20:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34B9B60640
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DFB4B1C3CBD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:20:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B6ADE606EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:20:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6ADE606EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0omHygeQjWsQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 08:20:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E57FA60640
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E57FA60640
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:20:02 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-299-FCJJb5cpPMyn64bMqMSkdQ-1; Wed, 12 Apr 2023 04:19:57 -0400
X-MC-Unique: FCJJb5cpPMyn64bMqMSkdQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A5D929AB3E7;
 Wed, 12 Apr 2023 08:19:57 +0000 (UTC)
Received: from toolbox.infra.bos2.lab (ovpn-192-9.brq.redhat.com [10.40.192.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1514B1415117;
 Wed, 12 Apr 2023 08:19:54 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Apr 2023 10:19:27 +0200
Message-Id: <20230412081929.173220-5-mschmidt@redhat.com>
In-Reply-To: <20230412081929.173220-1-mschmidt@redhat.com>
References: <20230412081929.173220-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681287601;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hG994YE67rZvr5ClF5c++Z0RWhwqiMTZjmfR4He2nHA=;
 b=ZiF3VpYP+B/aHs6No1IDo/OuDE924/Xh3p+rZcWE7WNFtcxFGCGg5gvitGxpS+g+5cx+G4
 fVYyDu+BytChUWARzES4UieO1AY2cVXt1yBIdLzaloizm17MVPCQskfZ5BQQSzVd0tEDPL
 5nZ289IlbdMpRULljMo2ziz1mZ5uejg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ZiF3VpYP
Subject: [Intel-wired-lan] [PATCH net-next v2 4/6] ice: sleep,
 don't busy-wait, for ICE_CTL_Q_SQ_CMD_TIMEOUT
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Brent Rowsell <browsell@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhlIGRyaXZlciBwb2xscyBmb3IgaWNlX3NxX2RvbmUoKSB3aXRoIGEgMTAwIMK1cyBwZXJpb2Qg
Zm9yIHVwIHRvIDEgcwphbmQgaXQgdXNlcyB1ZGVsYXkgdG8gZG8gdGhhdC4KCkxldCdzIHVzZSB1
c2xlZXBfcmFuZ2UgaW5zdGVhZC4gV2Uga25vdyBzbGVlcGluZyBpcyBhbGxvd2VkIGhlcmUsCmJl
Y2F1c2Ugd2UncmUgaG9sZGluZyBhIG11dGV4IChjcS0+c3FfbG9jaykuIFRvIHByZXNlcnZlIHRo
ZSB0b3RhbAptYXggd2FpdGluZyB0aW1lLCBtZWFzdXJlIHRoZSB0aW1lb3V0IGluIGppZmZpZXMu
CgpJQ0VfQ1RMX1FfU1FfQ01EX1RJTUVPVVQgaXMgdXNlZCBhbHNvIGluIGljZV9yZWxlYXNlX3Jl
cygpLCBidXQgdGhlcmUKdGhlIHBvbGxpbmcgcGVyaW9kIGlzIDEgbXMgKGkuZS4gMTAgdGltZXMg
bG9uZ2VyKS4gU2luY2UgdGhlIHRpbWVvdXQgd2FzCmV4cHJlc3NlZCBpbiB0ZXJtcyBvZiB0aGUg
bnVtYmVyIG9mIGxvb3BzLCB0aGUgdG90YWwgdGltZW91dCBpbiB0aGlzCmZ1bmN0aW9uIGlzIDEw
IHMuIEkgZG8gbm90IGtub3cgaWYgdGhpcyBpcyBpbnRlbnRpb25hbC4gVGhpcyBwYXRjaCBrZWVw
cwppdC4KClRoZSBwYXRjaCBsb3dlcnMgdGhlIENQVSB1c2FnZSBvZiB0aGUgaWNlLWduc3MtPGRl
dl9uYW1lPiBrZXJuZWwgdGhyZWFkCm9uIG15IHN5c3RlbSBmcm9tIH44ICUgdG8gbGVzcyB0aGFu
IDEgJS4KCkkgcmVjZWl2ZWQgYSByZXBvcnQgb2YgaGlnaCBDUFUgdXNhZ2Ugd2l0aCBwdHA0bCB3
aGVyZSB0aGUgYnVzeS13YWl0aW5nCmluIGljZV9zcV9zZW5kX2NtZCBkb21pbmF0ZWQgdGhlIHBy
b2ZpbGUuIFRoaXMgcGF0Y2ggaGFzIGJlZW4gdGVzdGVkIGluCnRoYXQgdXNlY2FzZSB0b28gYW5k
IGl0IG1hZGUgYSBodWdlIGltcHJvdmVtZW50IHRoZXJlLgoKVGVzdGVkLWJ5OiBCcmVudCBSb3dz
ZWxsIDxicm93c2VsbEByZWRoYXQuY29tPgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgU2NobWlkdCA8
bXNjaG1pZHRAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2NvbW1vbi5jICAgfCAxNCArKysrKysrLS0tLS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9jb250cm9scS5jIHwgIDkgKysrKystLS0tCiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmggfCAgMiArLQogMyBmaWxlcyBjaGFuZ2VkLCAx
MyBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9jb21tb24uYwppbmRleCBmNGMyNTY1NjMyNDguLjM2Mzg1OThkNzMyYiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYwor
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jCkBAIC0xOTky
LDE5ICsxOTkyLDE5IEBAIGljZV9hY3F1aXJlX3JlcyhzdHJ1Y3QgaWNlX2h3ICpodywgZW51bSBp
Y2VfYXFfcmVzX2lkcyByZXMsCiAgKi8KIHZvaWQgaWNlX3JlbGVhc2VfcmVzKHN0cnVjdCBpY2Vf
aHcgKmh3LCBlbnVtIGljZV9hcV9yZXNfaWRzIHJlcykKIHsKLQl1MzIgdG90YWxfZGVsYXkgPSAw
OworCXVuc2lnbmVkIGxvbmcgdGltZW91dDsKIAlpbnQgc3RhdHVzOwogCi0Jc3RhdHVzID0gaWNl
X2FxX3JlbGVhc2VfcmVzKGh3LCByZXMsIDAsIE5VTEwpOwotCiAJLyogdGhlcmUgYXJlIHNvbWUg
cmFyZSBjYXNlcyB3aGVuIHRyeWluZyB0byByZWxlYXNlIHRoZSByZXNvdXJjZQogCSAqIHJlc3Vs
dHMgaW4gYW4gYWRtaW4gcXVldWUgdGltZW91dCwgc28gaGFuZGxlIHRoZW0gY29ycmVjdGx5CiAJ
ICovCi0Jd2hpbGUgKChzdGF0dXMgPT0gLUVJTykgJiYgKHRvdGFsX2RlbGF5IDwgSUNFX0NUTF9R
X1NRX0NNRF9USU1FT1VUKSkgewotCQltZGVsYXkoMSk7CisJdGltZW91dCA9IGppZmZpZXMgKyAx
MCAqIElDRV9DVExfUV9TUV9DTURfVElNRU9VVDsKKwlkbyB7CiAJCXN0YXR1cyA9IGljZV9hcV9y
ZWxlYXNlX3JlcyhodywgcmVzLCAwLCBOVUxMKTsKLQkJdG90YWxfZGVsYXkrKzsKLQl9CisJCWlm
IChzdGF0dXMgIT0gLUVJTykKKwkJCWJyZWFrOworCQl1c2xlZXBfcmFuZ2UoMTAwMCwgMjAwMCk7
CisJfSB3aGlsZSAodGltZV9iZWZvcmUoamlmZmllcywgdGltZW91dCkpOwogfQogCiAvKioKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYwppbmRleCBjOGZi
MTAxMDZlYzMuLmQyZmFmMWJhYWQyZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9jb250cm9scS5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfY29udHJvbHEuYwpAQCAtOTY0LDcgKzk2NCw3IEBAIGljZV9zcV9zZW5kX2NtZChz
dHJ1Y3QgaWNlX2h3ICpodywgc3RydWN0IGljZV9jdGxfcV9pbmZvICpjcSwKIAlzdHJ1Y3QgaWNl
X2FxX2Rlc2MgKmRlc2Nfb25fcmluZzsKIAlib29sIGNtZF9jb21wbGV0ZWQgPSBmYWxzZTsKIAlz
dHJ1Y3QgaWNlX3NxX2NkICpkZXRhaWxzOwotCXUzMiB0b3RhbF9kZWxheSA9IDA7CisJdW5zaWdu
ZWQgbG9uZyB0aW1lb3V0OwogCWludCBzdGF0dXMgPSAwOwogCXUxNiByZXR2YWwgPSAwOwogCXUz
MiB2YWwgPSAwOwpAQCAtMTA1NywxMyArMTA1NywxNCBAQCBpY2Vfc3Ffc2VuZF9jbWQoc3RydWN0
IGljZV9odyAqaHcsIHN0cnVjdCBpY2VfY3RsX3FfaW5mbyAqY3EsCiAJCWNxLT5zcS5uZXh0X3Rv
X3VzZSA9IDA7CiAJd3IzMihodywgY3EtPnNxLnRhaWwsIGNxLT5zcS5uZXh0X3RvX3VzZSk7CiAK
Kwl0aW1lb3V0ID0gamlmZmllcyArIElDRV9DVExfUV9TUV9DTURfVElNRU9VVDsKIAlkbyB7CiAJ
CWlmIChpY2Vfc3FfZG9uZShodywgY3EpKQogCQkJYnJlYWs7CiAKLQkJdWRlbGF5KElDRV9DVExf
UV9TUV9DTURfVVNFQyk7Ci0JCXRvdGFsX2RlbGF5Kys7Ci0JfSB3aGlsZSAodG90YWxfZGVsYXkg
PCBJQ0VfQ1RMX1FfU1FfQ01EX1RJTUVPVVQpOworCQl1c2xlZXBfcmFuZ2UoSUNFX0NUTF9RX1NR
X0NNRF9VU0VDLAorCQkJICAgICBJQ0VfQ1RMX1FfU1FfQ01EX1VTRUMgKiAzIC8gMik7CisJfSB3
aGlsZSAodGltZV9iZWZvcmUoamlmZmllcywgdGltZW91dCkpOwogCiAJLyogaWYgcmVhZHksIGNv
cHkgdGhlIGRlc2MgYmFjayB0byB0ZW1wICovCiAJaWYgKGljZV9zcV9kb25lKGh3LCBjcSkpIHsK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEu
aCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuaAppbmRleCBl
NzkwYjJmNGU0MzcuLjk1MGI3ZjRhN2EwNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5oCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfY29udHJvbHEuaApAQCAtMzQsNyArMzQsNyBAQCBlbnVtIGljZV9jdGxfcSB7
CiB9OwogCiAvKiBDb250cm9sIFF1ZXVlIHRpbWVvdXQgc2V0dGluZ3MgLSBtYXggZGVsYXkgMXMg
Ki8KLSNkZWZpbmUgSUNFX0NUTF9RX1NRX0NNRF9USU1FT1VUCTEwMDAwIC8qIENvdW50IDEwMDAw
IHRpbWVzICovCisjZGVmaW5lIElDRV9DVExfUV9TUV9DTURfVElNRU9VVAlIWiAgICAvKiBXYWl0
IG1heCAxcyAqLwogI2RlZmluZSBJQ0VfQ1RMX1FfU1FfQ01EX1VTRUMJCTEwMCAgIC8qIENoZWNr
IGV2ZXJ5IDEwMHVzZWMgKi8KICNkZWZpbmUgSUNFX0NUTF9RX0FETUlOX0lOSVRfVElNRU9VVAkx
MCAgICAvKiBDb3VudCAxMCB0aW1lcyAqLwogI2RlZmluZSBJQ0VfQ1RMX1FfQURNSU5fSU5JVF9N
U0VDCTEwMCAgIC8qIENoZWNrIGV2ZXJ5IDEwMG1zZWMgKi8KLS0gCjIuMzkuMgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
