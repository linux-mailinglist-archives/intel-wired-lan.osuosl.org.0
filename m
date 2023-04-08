Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C586DBCA0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Apr 2023 21:25:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC75741E2C;
	Sat,  8 Apr 2023 19:25:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC75741E2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680981928;
	bh=UmO1EDhQSJJ+35H/KiuYqB7uAEiegyST6tP00lN1coA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pLUuDA2ZEUAQau9TrTScGFy9NatZlFBkxtH143212a3vw7CCur1F9vJuC4k40ymwm
	 VGpu7Jl5RUAYTSwTnSv7CaKv7hlBVE2qu6di7onca6CUkqBDU+tTDoP6Fen9UaLnRO
	 yzRm5k693vsbbxxAIS3VgyOyoLDsUjrh8l1+MNygKbgxhTA4/8urF+NSQ7E2nfLh/7
	 Ihsu53usrOiZku6xRf9ZwsVfTUXb2ZIGk6tSQ9LgKW4CyyPb4WmQO+DCv11geqbvZ1
	 7bu2vPyoSCi6mM5yLLfeHcLPdmrfnjKc6LQjH33wO2ur1EMKdOAfbiV9WJQbxe7y+W
	 ftz02q7qMdV5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rMejGRWg0PoJ; Sat,  8 Apr 2023 19:25:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56EAC41DAA;
	Sat,  8 Apr 2023 19:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56EAC41DAA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CCB1C1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A3F1941DC2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:25:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3F1941DC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mMLuj4Mq-4Y3 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Apr 2023 19:25:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0964241E57
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0964241E57
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:25:19 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-39-YibIaZIRPB61XMDHmzJjBA-1; Sat, 08 Apr 2023 15:25:14 -0400
X-MC-Unique: YibIaZIRPB61XMDHmzJjBA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 38F8329AA2E7;
 Sat,  8 Apr 2023 19:25:13 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BA015492B00;
 Sat,  8 Apr 2023 19:25:12 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id C4D1C307372E8;
 Sat,  8 Apr 2023 21:25:11 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Sat, 08 Apr 2023 21:25:11 +0200
Message-ID: <168098191175.96582.4895974424075558698.stgit@firesoul>
In-Reply-To: <168098183268.96582.7852359418481981062.stgit@firesoul>
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680981918;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ouaMD8z/MFAjWSYuYT96qR6AP4hxetIrFE/7nQo005A=;
 b=NBoVBUURVwrZ0C+Cfv2MwhccYsVUz8fgOZMoh31cqki+Awap4PqyVrmHcTxxwADTDHnA6h
 UXvk5rPoVv01bZoJIm8ZYlO12b8rWQAxn2LFNXfOutEoeCvH+gMtQ4MBSOikoFwaKhgy2D
 7yzF5OpliziZqcMba7kyUqaXFeFWUBw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NBoVBUUR
Subject: [Intel-wired-lan] [PATCH bpf V7 7/7] selftests/bpf: Adjust
 bpf_xdp_metadata_rx_hash for new arg
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, kuba@kernel.org, pabeni@redhat.com,
 martin.lau@kernel.org, larysa.zaremba@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, tariqt@nvidia.com,
 yoong.siang.song@intel.com, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VXBkYXRlIEJQRiBzZWxmdGVzdHMgdG8gdXNlIHRoZSBuZXcgUlNTIHR5cGUgYXJndW1lbnQgZm9y
IGtmdW5jCmJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaC4KClNpZ25lZC1vZmYtYnk6IEplc3BlciBE
YW5nYWFyZCBCcm91ZXIgPGJyb3VlckByZWRoYXQuY29tPgpBY2tlZC1ieTogVG9rZSBIw7hpbGFu
ZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CkFja2VkLWJ5OiBTdGFuaXNsYXYgRm9taWNo
ZXYgPHNkZkBnb29nbGUuY29tPgotLS0KIC4uLi9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMveGRw
X21ldGFkYXRhLmMgICAgICAgIHwgICAgMiArKwogLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9w
cm9ncy94ZHBfaHdfbWV0YWRhdGEuYyAgfCAgIDExICsrKysrLS0tLS0tCiB0b29scy90ZXN0aW5n
L3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX21ldGFkYXRhLmMgICB8ICAgIDYgKysrLS0tCiB0b29s
cy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX21ldGFkYXRhMi5jICB8ICAgIDcgKysr
Ky0tLQogdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jICAgICAg
fCAgICA2ICsrKysrLQogdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9tZXRhZGF0YS5o
ICAgICAgICAgfCAgICA0ICsrKysKIDYgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwg
MTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBm
L3Byb2dfdGVzdHMveGRwX21ldGFkYXRhLmMgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYv
cHJvZ190ZXN0cy94ZHBfbWV0YWRhdGEuYwppbmRleCBhYTRiZWFlOTlmNGYuLjhjNWU5OGRhOWFl
OSAxMDA2NDQKLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMveGRw
X21ldGFkYXRhLmMKKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMv
eGRwX21ldGFkYXRhLmMKQEAgLTI3Myw2ICsyNzMsOCBAQCBzdGF0aWMgaW50IHZlcmlmeV94c2tf
bWV0YWRhdGEoc3RydWN0IHhzayAqeHNrKQogCWlmICghQVNTRVJUX05FUShtZXRhLT5yeF9oYXNo
LCAwLCAicnhfaGFzaCIpKQogCQlyZXR1cm4gLTE7CiAKKwlBU1NFUlRfRVEobWV0YS0+cnhfaGFz
aF90eXBlLCAwLCAicnhfaGFzaF90eXBlIik7CisKIAl4c2tfcmluZ19jb25zX19yZWxlYXNlKCZ4
c2stPnJ4LCAxKTsKIAlyZWZpbGxfcngoeHNrLCBjb21wX2FkZHIpOwogCmRpZmYgLS1naXQgYS90
b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMgYi90b29s
cy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKaW5kZXggZDEx
YWNhNTBlNTRkLi5kZTYzNTk1YWY1YzQgMTAwNjQ0Ci0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYworKysgYi90b29scy90ZXN0aW5nL3NlbGZ0
ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKQEAgLTMxLDggKzMxLDggQEAgdm9sYXRp
bGUgX191NjQgcGt0c19yZWRpciA9IDA7CiAKIGV4dGVybiBpbnQgYnBmX3hkcF9tZXRhZGF0YV9y
eF90aW1lc3RhbXAoY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LAogCQkJCQkgX191NjQgKnRpbWVz
dGFtcCkgX19rc3ltOwotZXh0ZXJuIGludCBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY29uc3Qg
c3RydWN0IHhkcF9tZCAqY3R4LAotCQkJCSAgICBfX3UzMiAqaGFzaCkgX19rc3ltOworZXh0ZXJu
IGludCBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCBf
X3UzMiAqaGFzaCwKKwkJCQkgICAgZW51bSB4ZHBfcnNzX2hhc2hfdHlwZSAqcnNzX3R5cGUpIF9f
a3N5bTsKIAogU0VDKCJ4ZHAiKQogaW50IHJ4KHN0cnVjdCB4ZHBfbWQgKmN0eCkKQEAgLTk2LDEw
ICs5Niw5IEBAIGludCByeChzdHJ1Y3QgeGRwX21kICpjdHgpCiAJZWxzZQogCQltZXRhLT5yeF90
aW1lc3RhbXAgPSAwOyAvKiBVc2VkIGJ5IEFGX1hEUCBhcyBub3QgYXZhaWwgc2lnbmFsICovCiAK
LQlpZiAoIWJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgsICZtZXRhLT5yeF9oYXNoKSkKLQkJ
YnBmX3ByaW50aygicG9wdWxhdGVkIHJ4X2hhc2ggd2l0aCAldSIsIG1ldGEtPnJ4X2hhc2gpOwot
CWVsc2UKLQkJbWV0YS0+cnhfaGFzaCA9IDA7IC8qIFVzZWQgYnkgQUZfWERQIGFzIG5vdCBhdmFp
bCBzaWduYWwgKi8KKwlyZXQgPSBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY3R4LCAmbWV0YS0+
cnhfaGFzaCwgJm1ldGEtPnJ4X2hhc2hfdHlwZSk7CisJaWYgKHJldCA8IDApCisJCW1ldGEtPnJ4
X2hhc2hfZXJyID0gcmV0OyAvKiBVc2VkIGJ5IEFGX1hEUCBhcyBubyBoYXNoIHNpZ25hbCAqLwog
CiAJcGt0c19yZWRpcisrOwogCXJldHVybiBicGZfcmVkaXJlY3RfbWFwKCZ4c2ssIGN0eC0+cnhf
cXVldWVfaW5kZXgsIFhEUF9QQVNTKTsKZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2Jw
Zi9wcm9ncy94ZHBfbWV0YWRhdGEuYwppbmRleCA3NzY3OGIwMzQzODkuLmQxNTFkNDA2YTEyMyAx
MDA2NDQKLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0
YS5jCisrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEu
YwpAQCAtMjEsOCArMjEsOCBAQCBzdHJ1Y3QgewogCiBleHRlcm4gaW50IGJwZl94ZHBfbWV0YWRh
dGFfcnhfdGltZXN0YW1wKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwKIAkJCQkJIF9fdTY0ICp0
aW1lc3RhbXApIF9fa3N5bTsKLWV4dGVybiBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGNv
bnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwKLQkJCQkgICAgX191MzIgKmhhc2gpIF9fa3N5bTsKK2V4
dGVybiBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0
eCwgX191MzIgKmhhc2gsCisJCQkJICAgIGVudW0geGRwX3Jzc19oYXNoX3R5cGUgKnJzc190eXBl
KSBfX2tzeW07CiAKIFNFQygieGRwIikKIGludCByeChzdHJ1Y3QgeGRwX21kICpjdHgpCkBAIC01
Niw3ICs1Niw3IEBAIGludCByeChzdHJ1Y3QgeGRwX21kICpjdHgpCiAJaWYgKHRpbWVzdGFtcCA9
PSAwKQogCQltZXRhLT5yeF90aW1lc3RhbXAgPSAxOwogCi0JYnBmX3hkcF9tZXRhZGF0YV9yeF9o
YXNoKGN0eCwgJm1ldGEtPnJ4X2hhc2gpOworCWJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgs
ICZtZXRhLT5yeF9oYXNoLCAmbWV0YS0+cnhfaGFzaF90eXBlKTsKIAogCXJldHVybiBicGZfcmVk
aXJlY3RfbWFwKCZ4c2ssIGN0eC0+cnhfcXVldWVfaW5kZXgsIFhEUF9QQVNTKTsKIH0KZGlmZiAt
LWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEyLmMg
Yi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX21ldGFkYXRhMi5jCmluZGV4
IGNmNjlkMDU0NTFjMy4uODVmODhkOWQ3YTc4IDEwMDY0NAotLS0gYS90b29scy90ZXN0aW5nL3Nl
bGZ0ZXN0cy9icGYvcHJvZ3MveGRwX21ldGFkYXRhMi5jCisrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2Vs
ZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEyLmMKQEAgLTUsMTcgKzUsMTggQEAKICNpbmNs
dWRlIDxicGYvYnBmX2hlbHBlcnMuaD4KICNpbmNsdWRlIDxicGYvYnBmX2VuZGlhbi5oPgogCi1l
eHRlcm4gaW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRwX21kICpj
dHgsCi0JCQkJICAgIF9fdTMyICpoYXNoKSBfX2tzeW07CitleHRlcm4gaW50IGJwZl94ZHBfbWV0
YWRhdGFfcnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsIF9fdTMyICpoYXNoLAorCQkJ
CSAgICBlbnVtIHhkcF9yc3NfaGFzaF90eXBlICpyc3NfdHlwZSkgX19rc3ltOwogCiBpbnQgY2Fs
bGVkOwogCiBTRUMoImZyZXBsYWNlL3J4IikKIGludCBmcmVwbGFjZV9yeChzdHJ1Y3QgeGRwX21k
ICpjdHgpCiB7CisJZW51bSB4ZHBfcnNzX2hhc2hfdHlwZSB0eXBlID0gMDsKIAl1MzIgaGFzaCA9
IDA7CiAJLyogQ2FsbCBfYW55XyBtZXRhZGF0YSBmdW5jdGlvbiB0byBtYWtlIHN1cmUgd2UgZG9u
J3QgY3Jhc2guICovCi0JYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0eCwgJmhhc2gpOworCWJw
Zl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgsICZoYXNoLCAmdHlwZSk7CiAJY2FsbGVkKys7CiAJ
cmV0dXJuIFhEUF9QQVNTOwogfQpkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMv
YnBmL3hkcF9od19tZXRhZGF0YS5jIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9o
d19tZXRhZGF0YS5jCmluZGV4IDNiOTQyZWY3Mjk3Yi4uOTg3Y2YwZGI1ZWJjIDEwMDY0NAotLS0g
YS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX2h3X21ldGFkYXRhLmMKKysrIGIvdG9v
bHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jCkBAIC0xNDEsNyArMTQx
LDExIEBAIHN0YXRpYyB2b2lkIHZlcmlmeV94ZHBfbWV0YWRhdGEodm9pZCAqZGF0YSkKIAltZXRh
ID0gZGF0YSAtIHNpemVvZigqbWV0YSk7CiAKIAlwcmludGYoInJ4X3RpbWVzdGFtcDogJWxsdVxu
IiwgbWV0YS0+cnhfdGltZXN0YW1wKTsKLQlwcmludGYoInJ4X2hhc2g6ICV1XG4iLCBtZXRhLT5y
eF9oYXNoKTsKKwlpZiAobWV0YS0+cnhfaGFzaF9lcnIgPCAwKQorCQlwcmludGYoIk5vIHJ4X2hh
c2ggZXJyPSVkXG4iLCBtZXRhLT5yeF9oYXNoX2Vycik7CisJZWxzZQorCQlwcmludGYoInJ4X2hh
c2g6IDB4JVggd2l0aCBSU1MgdHlwZToweCVYXG4iLAorCQkgICAgICAgbWV0YS0+cnhfaGFzaCwg
bWV0YS0+cnhfaGFzaF90eXBlKTsKIH0KIAogc3RhdGljIHZvaWQgdmVyaWZ5X3NrYl9tZXRhZGF0
YShpbnQgZmQpCmRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX21l
dGFkYXRhLmggYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX21ldGFkYXRhLmgKaW5k
ZXggZjY3ODBmYmIwYTIxLi4wYzQ2MjRkYzZmMmYgMTAwNjQ0Ci0tLSBhL3Rvb2xzL3Rlc3Rpbmcv
c2VsZnRlc3RzL2JwZi94ZHBfbWV0YWRhdGEuaAorKysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0
cy9icGYveGRwX21ldGFkYXRhLmgKQEAgLTEyLDQgKzEyLDggQEAKIHN0cnVjdCB4ZHBfbWV0YSB7
CiAJX191NjQgcnhfdGltZXN0YW1wOwogCV9fdTMyIHJ4X2hhc2g7CisJdW5pb24geworCQlfX3Uz
MiByeF9oYXNoX3R5cGU7CisJCV9fczMyIHJ4X2hhc2hfZXJyOworCX07CiB9OwoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
