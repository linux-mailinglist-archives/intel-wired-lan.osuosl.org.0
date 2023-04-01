Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 372106D32CD
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Apr 2023 19:27:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEC1B41951;
	Sat,  1 Apr 2023 17:27:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEC1B41951
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680370059;
	bh=i922GY/nhVcgva+IyyKeOX0xVTEgDlRm7pKoVPj/7gs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VIhzp/rDz+UHvmirA7xXAQCEqI6luWn5c1iWs8tE2rCTmwacrKAy+67HvsmPKu8LF
	 0TF5FCYxUU4/wH9kzVfBxQhwjN4MB7UT/1j+Y5on+BTEKda8q9y9B9fEpWYAXuDefB
	 5G9g3zmesoQhz8m+Tz11G7hNHxXlXUKMszFbrTroPt1ZJB7DFEHVmMmqmwfNPA9COu
	 W4GsIwT1URsqce1OanyiUvsq2VqwLGbcRtnhwzEBbutCbNVNKbJ02o8QEXdMTKpJ3O
	 3EkIXwiWKeI3q26bze0H5kbHao/kYqaBNYkJav6W4g5JSlJ9GcbWMhP/Vojsj8yq8y
	 8Kp7aQnU93olw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iNpGEoJ-Si-e; Sat,  1 Apr 2023 17:27:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C19E141841;
	Sat,  1 Apr 2023 17:27:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C19E141841
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E30A1BF318
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 17:27:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7DE341840
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 17:27:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7DE341840
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C2cw9u-XWfe7 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Apr 2023 17:27:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D476E418F9
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D476E418F9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 17:27:31 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-221-1Zk0PcwAOyC9okto5OV-gg-1; Sat, 01 Apr 2023 13:27:25 -0400
X-MC-Unique: 1Zk0PcwAOyC9okto5OV-gg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7790A811E7C;
 Sat,  1 Apr 2023 17:27:24 +0000 (UTC)
Received: from toolbox.redhat.com (ovpn-192-6.brq.redhat.com [10.40.192.6])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 679FB40C83A9;
 Sat,  1 Apr 2023 17:27:22 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat,  1 Apr 2023 19:26:57 +0200
Message-Id: <20230401172659.38508-3-mschmidt@redhat.com>
In-Reply-To: <20230401172659.38508-1-mschmidt@redhat.com>
References: <20230401172659.38508-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680370050;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6x9JHpIA3PUU98RhwvPPH7uduxmtkgeeOAzyRa/9hgc=;
 b=HvY7o6C8InVlXCcoVdzC5h9yS0IMmM2UjepHYuf7Pxre949xT6WOykCCPuCJvn2cgfN6VW
 I/yOqtceIvjTRagnJXN9+L5P1fb1lh4yIBwlUa2cPMXYNmI6PW8+WehJ5XdkQ9MoY903wa
 Z2K3vcjUVAT2XL/VUWW7zyMfK7djy28=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=HvY7o6C8
Subject: [Intel-wired-lan] [PATCH net-next 2/4] ice: sleep, don't busy-wait,
 for sq_cmd_timeout
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhlIGRyaXZlciBwb2xscyBmb3IgaWNlX3NxX2RvbmUoKSB3aXRoIGEgMTAwIMK1cyBwZXJpb2Qg
Zm9yIHVwIHRvIDEgcwphbmQgaXQgdXNlcyB1ZGVsYXkgdG8gZG8gdGhhdC4KCkxldCdzIHVzZSB1
c2xlZXBfcmFuZ2UgaW5zdGVhZC4gV2Uga25vdyBzbGVlcGluZyBpcyBhbGxvd2VkIGhlcmUsCmJl
Y2F1c2Ugd2UncmUgaG9sZGluZyBhIG11dGV4IChjcS0+c3FfbG9jaykuIFRvIHByZXNlcnZlIHRo
ZSB0b3RhbAptYXggd2FpdGluZyB0aW1lLCBtZWFzdXJlIGNxLT5zcV9jbWRfdGltZW91dCBpbiBq
aWZmaWVzLgoKVGhlIHNxX2NtZF90aW1lb3V0IGlzIHJlZmVyZW5jZWQgYWxzbyBpbiBpY2VfcmVs
ZWFzZV9yZXMoKSwgYnV0IHRoZXJlCnRoZSBwb2xsaW5nIHBlcmlvZCBpcyAxIG1zIChpLmUuIDEw
IHRpbWVzIGxvbmdlcikuIFNpbmNlIHRoZSB0aW1lb3V0CndhcyBleHByZXNzZWQgaW4gdGVybXMg
b2YgdGhlIG51bWJlciBvZiBsb29wcywgdGhlIHRvdGFsIHRpbWVvdXQgaW4gdGhpcwpmdW5jdGlv
biBpcyAxMCBzLiBJIGRvIG5vdCBrbm93IGlmIHRoaXMgaXMgaW50ZW50aW9uYWwuIFRoaXMgcGF0
Y2gga2VlcHMKaXQuCgpUaGUgcGF0Y2ggbG93ZXJzIHRoZSBDUFUgdXNhZ2Ugb2YgdGhlIGljZS1n
bnNzLTxkZXZfbmFtZT4ga2VybmVsIHRocmVhZApvbiBteSBzeXN0ZW0gZnJvbSB+OCAlIHRvIGxl
c3MgdGhhbiAxICUuCkkgc2F3IGEgcmVwb3J0IG9mIGhpZ2ggQ1BVIHVzYWdlIHdpdGggcHRwNGwg
d2hlcmUgdGhlIGJ1c3ktd2FpdGluZyBpbgppY2Vfc3Ffc2VuZF9jbWQgZG9taW5hdGVkIHRoZSBw
cm9maWxlLiBUaGUgcGF0Y2ggc2hvdWxkIGhlbHAgd2l0aCB0aGF0LgoKU2lnbmVkLW9mZi1ieTog
TWljaGFsIFNjaG1pZHQgPG1zY2htaWR0QHJlZGhhdC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYyAgIHwgMTQgKysrKysrKy0tLS0tLS0KIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYyB8ICA5ICsrKysrLS0tLQog
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5oIHwgIDIgKy0KIDMg
ZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMKaW5kZXggYzJmZGE0ZmE0MTg4
Li4xNGNmZmU0OWZhOGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfY29tbW9uLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9j
b21tb24uYwpAQCAtMTk5MiwxOSArMTk5MiwxOSBAQCBpY2VfYWNxdWlyZV9yZXMoc3RydWN0IGlj
ZV9odyAqaHcsIGVudW0gaWNlX2FxX3Jlc19pZHMgcmVzLAogICovCiB2b2lkIGljZV9yZWxlYXNl
X3JlcyhzdHJ1Y3QgaWNlX2h3ICpodywgZW51bSBpY2VfYXFfcmVzX2lkcyByZXMpCiB7Ci0JdTMy
IHRvdGFsX2RlbGF5ID0gMDsKKwl1bnNpZ25lZCBsb25nIHRpbWVvdXQ7CiAJaW50IHN0YXR1czsK
IAotCXN0YXR1cyA9IGljZV9hcV9yZWxlYXNlX3JlcyhodywgcmVzLCAwLCBOVUxMKTsKLQogCS8q
IHRoZXJlIGFyZSBzb21lIHJhcmUgY2FzZXMgd2hlbiB0cnlpbmcgdG8gcmVsZWFzZSB0aGUgcmVz
b3VyY2UKIAkgKiByZXN1bHRzIGluIGFuIGFkbWluIHF1ZXVlIHRpbWVvdXQsIHNvIGhhbmRsZSB0
aGVtIGNvcnJlY3RseQogCSAqLwotCXdoaWxlICgoc3RhdHVzID09IC1FSU8pICYmICh0b3RhbF9k
ZWxheSA8IGh3LT5hZG1pbnEuc3FfY21kX3RpbWVvdXQpKSB7Ci0JCW1kZWxheSgxKTsKKwl0aW1l
b3V0ID0gamlmZmllcyArIDEwICogaHctPmFkbWlucS5zcV9jbWRfdGltZW91dDsKKwlkbyB7CiAJ
CXN0YXR1cyA9IGljZV9hcV9yZWxlYXNlX3JlcyhodywgcmVzLCAwLCBOVUxMKTsKLQkJdG90YWxf
ZGVsYXkrKzsKLQl9CisJCWlmIChzdGF0dXMgIT0gLUVJTykKKwkJCWJyZWFrOworCQl1c2xlZXBf
cmFuZ2UoMTAwMCwgMjAwMCk7CisJfSB3aGlsZSAodGltZV9iZWZvcmUoamlmZmllcywgdGltZW91
dCkpOwogfQogCiAvKioKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfY29udHJvbHEuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29u
dHJvbHEuYwppbmRleCA2YmNmZWUyOTU5OTEuLjEwMTI1ZThhYTU1NSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5jCisrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYwpAQCAtOTY3LDcgKzk2Nyw3IEBA
IGljZV9zcV9zZW5kX2NtZChzdHJ1Y3QgaWNlX2h3ICpodywgc3RydWN0IGljZV9jdGxfcV9pbmZv
ICpjcSwKIAlzdHJ1Y3QgaWNlX2FxX2Rlc2MgKmRlc2Nfb25fcmluZzsKIAlib29sIGNtZF9jb21w
bGV0ZWQgPSBmYWxzZTsKIAlzdHJ1Y3QgaWNlX3NxX2NkICpkZXRhaWxzOwotCXUzMiB0b3RhbF9k
ZWxheSA9IDA7CisJdW5zaWduZWQgbG9uZyB0aW1lb3V0OwogCWludCBzdGF0dXMgPSAwOwogCXUx
NiByZXR2YWwgPSAwOwogCXUzMiB2YWwgPSAwOwpAQCAtMTA2MCwxMyArMTA2MCwxNCBAQCBpY2Vf
c3Ffc2VuZF9jbWQoc3RydWN0IGljZV9odyAqaHcsIHN0cnVjdCBpY2VfY3RsX3FfaW5mbyAqY3Es
CiAJCWNxLT5zcS5uZXh0X3RvX3VzZSA9IDA7CiAJd3IzMihodywgY3EtPnNxLnRhaWwsIGNxLT5z
cS5uZXh0X3RvX3VzZSk7CiAKKwl0aW1lb3V0ID0gamlmZmllcyArIGNxLT5zcV9jbWRfdGltZW91
dDsKIAlkbyB7CiAJCWlmIChpY2Vfc3FfZG9uZShodywgY3EpKQogCQkJYnJlYWs7CiAKLQkJdWRl
bGF5KElDRV9DVExfUV9TUV9DTURfVVNFQyk7Ci0JCXRvdGFsX2RlbGF5Kys7Ci0JfSB3aGlsZSAo
dG90YWxfZGVsYXkgPCBjcS0+c3FfY21kX3RpbWVvdXQpOworCQl1c2xlZXBfcmFuZ2UoSUNFX0NU
TF9RX1NRX0NNRF9VU0VDLAorCQkJICAgICBJQ0VfQ1RMX1FfU1FfQ01EX1VTRUMgKiAzIC8gMik7
CisJfSB3aGlsZSAodGltZV9iZWZvcmUoamlmZmllcywgdGltZW91dCkpOwogCiAJLyogaWYgcmVh
ZHksIGNvcHkgdGhlIGRlc2MgYmFjayB0byB0ZW1wICovCiAJaWYgKGljZV9zcV9kb25lKGh3LCBj
cSkpIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29u
dHJvbHEuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuaApp
bmRleCBjMDdlOWNjOWZjNmUuLmYyZDNiMTE1YWUwYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5oCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuaApAQCAtMzQsNyArMzQsNyBAQCBlbnVtIGljZV9j
dGxfcSB7CiB9OwogCiAvKiBDb250cm9sIFF1ZXVlIHRpbWVvdXQgc2V0dGluZ3MgLSBtYXggZGVs
YXkgMXMgKi8KLSNkZWZpbmUgSUNFX0NUTF9RX1NRX0NNRF9USU1FT1VUCTEwMDAwIC8qIENvdW50
IDEwMDAwIHRpbWVzICovCisjZGVmaW5lIElDRV9DVExfUV9TUV9DTURfVElNRU9VVAlIWiAgICAv
KiBXYWl0IG1heCAxcyAqLwogI2RlZmluZSBJQ0VfQ1RMX1FfU1FfQ01EX1VTRUMJCTEwMCAgIC8q
IENoZWNrIGV2ZXJ5IDEwMHVzZWMgKi8KICNkZWZpbmUgSUNFX0NUTF9RX0FETUlOX0lOSVRfVElN
RU9VVAkxMCAgICAvKiBDb3VudCAxMCB0aW1lcyAqLwogI2RlZmluZSBJQ0VfQ1RMX1FfQURNSU5f
SU5JVF9NU0VDCTEwMCAgIC8qIENoZWNrIGV2ZXJ5IDEwMG1zZWMgKi8KLS0gCjIuMzkuMgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
