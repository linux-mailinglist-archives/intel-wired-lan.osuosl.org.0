Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C1B6DF5D1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 14:43:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D896061557;
	Wed, 12 Apr 2023 12:43:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D896061557
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681303407;
	bh=vyuA1FWNJM4fHEY+D5TvPz7wBuLuzPN98F9FR97L6rM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BjXqEnfJ73xdFgK1DRsQXrL+28jHBrfHNByi4xXKd7PLLjYswHWnevLUt8VCmbN+I
	 6IjS93GJAgllDZY2qDL8nyyBJgfNvaVEyKSMXOk6VzjnwIxjpKWcpVkRsCoykw5WvI
	 8TjtwjOeFDmnUmMSuGS2Iv02+gMmiAv+ftt99vE2P9Rd5idciZdqxt6wI52gfT4c7/
	 G37KycAmDpv1IWFSzZEwc5Cugfe8wlhj3fBf5AQ0nz3hYtdEV1ALbcB+oLofp6pXpC
	 o2QEA26l1Pc67CmAdlPyaPB2HVqmX4gBPaCzW7UmwzXHFnBEMxBAPHbUnfgTcH9Qsq
	 ei48GPTxXBIew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lz0p-kIhK2-e; Wed, 12 Apr 2023 12:43:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9E1D6154F;
	Wed, 12 Apr 2023 12:43:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9E1D6154F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E6821BF45A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 12:43:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 384156154B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 12:43:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 384156154B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4iYwZQLzJoXk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 12:43:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A65260017
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A65260017
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 12:43:21 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-503-i-jHLEqEMHGnt4iqOT0Nhw-1; Wed, 12 Apr 2023 08:43:15 -0400
X-MC-Unique: i-jHLEqEMHGnt4iqOT0Nhw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB313800B23;
 Wed, 12 Apr 2023 12:43:13 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6422A40C6E71;
 Wed, 12 Apr 2023 12:43:13 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id AB4EC307372E8;
 Wed, 12 Apr 2023 14:43:12 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Wed, 12 Apr 2023 14:43:12 +0200
Message-ID: <168130339265.150247.18079994022961741945.stgit@firesoul>
In-Reply-To: <168130333143.150247.11159481574477358816.stgit@firesoul>
References: <168130333143.150247.11159481574477358816.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681303400;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2cip69uvEtYr/5frxYNZac25fuawKyNR+cs4ZJgFBxs=;
 b=JFCZ1HBixZxFu2kYwLTh/fTi0lUAgshjSfWszUzGaKcF81Q4nYZixFBT7x8XCSZuqg67U/
 MG1oyp7LRCCe/ufFDH97/Y81Y/G+ldfpqPRV7WVEK0nEpTJGFjAnuPWoniMuguN2VDFXaW
 O2C3H+enoOOzpPuOtQqV2Rnsoe4IEmE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JFCZ1HBi
Subject: [Intel-wired-lan] [PATCH bpf V8 7/7] selftests/bpf: Adjust
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
cy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKaW5kZXggYTA3
ZWY3NTM0MDEzLi44MjliN2MzMzU0YmEgMTAwNjQ0Ci0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
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
