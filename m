Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0B96DFF01
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 21:49:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65C1541F25;
	Wed, 12 Apr 2023 19:49:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65C1541F25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681328958;
	bh=YPAaywSArp7g7C05lSDBLaSfzHEvI30IMcw+D/IBW8o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LnJ9IufZ3btNEHW501Gj52Y/vXmewbMfT1KlLVlAfu+xHb140aa7oHsxSqdMqak9m
	 I3D4X3yh75vLILSIILB9PFX3cMuuH/AOyxBi8+CTnxL0orW6VVTJALqrvJBGcBSvlw
	 67DfSPSL1aMV/fXJ7WgTr0hM5zCdptXR6LYo8+bzIrNjeU69Z/IuFNsi+dzzrgTqQ/
	 ga/mckqaRewZJmWNZlLXEU69lejMP2TvDgfkFtx1TrGgWYwu93AXYNoqzZKKsIwXWb
	 /JcoQa7aoNXR56Q4RxDZY96mtYgRQw0HYFHgufNs2X15+PRc6zUPE1OGpQF8L4z2Gh
	 A6vb3coqcWtTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IqWBk4q0JELe; Wed, 12 Apr 2023 19:49:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D67D141EF9;
	Wed, 12 Apr 2023 19:49:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D67D141EF9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 35C361C3C69
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C01E81FC9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:49:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C01E81FC9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z8tHS0xxyNg5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 19:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 456E381FC0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 456E381FC0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:49:10 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-204-1ukrPTvZPISiDkjgGrHT0w-1; Wed, 12 Apr 2023 15:49:03 -0400
X-MC-Unique: 1ukrPTvZPISiDkjgGrHT0w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F0299185A794;
 Wed, 12 Apr 2023 19:49:01 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 84FD0C15BB8;
 Wed, 12 Apr 2023 19:49:01 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id B33C9307372E8;
 Wed, 12 Apr 2023 21:49:00 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Wed, 12 Apr 2023 21:49:00 +0200
Message-ID: <168132894068.340624.8914711185697163690.stgit@firesoul>
In-Reply-To: <168132888942.340624.2449617439220153267.stgit@firesoul>
References: <168132888942.340624.2449617439220153267.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681328949;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qPcx+fVxIdrMpmOK4dtt6MA0SYsxugdtxPcrLhiVDvU=;
 b=IvdOdltSFjtRqLKx0X2laUnivQ1GVfiqye6TUc8S1AAnzZ8gwrLaziKFUE/y1s2rXnLOsw
 fhO6jvuf39+AOMOS/6n6dbpNR0QvU8OMH7+t+NqrhcSnbqlF0Dnbx8gMCsI/ngWqiht8I+
 hZD3FlRJ7AkwkHX7ks0si62rmNeuOsg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=IvdOdltS
Subject: [Intel-wired-lan] [PATCH bpf V10 6/6] selftests/bpf: Adjust
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
cm9ncy94ZHBfaHdfbWV0YWRhdGEuYyAgfCAgIDEwICsrKysrLS0tLS0KIHRvb2xzL3Rlc3Rpbmcv
c2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEuYyAgIHwgICAgNiArKystLS0KIHRvb2xz
L3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEyLmMgIHwgICAgNyArKysr
LS0tCiB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX2h3X21ldGFkYXRhLmMgICAgICB8
ICAgIDYgKysrKystCiB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX21ldGFkYXRhLmgg
ICAgICAgICB8ICAgIDQgKysrKwogNiBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAx
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYv
cHJvZ190ZXN0cy94ZHBfbWV0YWRhdGEuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9w
cm9nX3Rlc3RzL3hkcF9tZXRhZGF0YS5jCmluZGV4IGFhNGJlYWU5OWY0Zi4uOGM1ZTk4ZGE5YWU5
IDEwMDY0NAotLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ190ZXN0cy94ZHBf
bWV0YWRhdGEuYworKysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ190ZXN0cy94
ZHBfbWV0YWRhdGEuYwpAQCAtMjczLDYgKzI3Myw4IEBAIHN0YXRpYyBpbnQgdmVyaWZ5X3hza19t
ZXRhZGF0YShzdHJ1Y3QgeHNrICp4c2spCiAJaWYgKCFBU1NFUlRfTkVRKG1ldGEtPnJ4X2hhc2gs
IDAsICJyeF9oYXNoIikpCiAJCXJldHVybiAtMTsKIAorCUFTU0VSVF9FUShtZXRhLT5yeF9oYXNo
X3R5cGUsIDAsICJyeF9oYXNoX3R5cGUiKTsKKwogCXhza19yaW5nX2NvbnNfX3JlbGVhc2UoJnhz
ay0+cngsIDEpOwogCXJlZmlsbF9yeCh4c2ssIGNvbXBfYWRkcik7CiAKZGlmZiAtLWdpdCBhL3Rv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYyBiL3Rvb2xz
L3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwppbmRleCAwNjg3
ZDExMTYyZjYuLmUxYzc4NzgxNWU0NCAxMDA2NDQKLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxmdGVz
dHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCisrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwpAQCAtMTgsOCArMTgsOCBAQCBfX3U2NCBw
a3RzX3JlZGlyID0gMDsKIAogZXh0ZXJuIGludCBicGZfeGRwX21ldGFkYXRhX3J4X3RpbWVzdGFt
cChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsCiAJCQkJCSBfX3U2NCAqdGltZXN0YW1wKSBfX2tz
eW07Ci1leHRlcm4gaW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRw
X21kICpjdHgsCi0JCQkJICAgIF9fdTMyICpoYXNoKSBfX2tzeW07CitleHRlcm4gaW50IGJwZl94
ZHBfbWV0YWRhdGFfcnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsIF9fdTMyICpoYXNo
LAorCQkJCSAgICBlbnVtIHhkcF9yc3NfaGFzaF90eXBlICpyc3NfdHlwZSkgX19rc3ltOwogCiBT
RUMoInhkcCIpCiBpbnQgcngoc3RydWN0IHhkcF9tZCAqY3R4KQpAQCAtODAsOSArODAsOSBAQCBp
bnQgcngoc3RydWN0IHhkcF9tZCAqY3R4KQogCWlmIChlcnIpCiAJCW1ldGEtPnJ4X3RpbWVzdGFt
cCA9IDA7IC8qIFVzZWQgYnkgQUZfWERQIGFzIG5vdCBhdmFpbCBzaWduYWwgKi8KIAotCWVyciA9
IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgsICZtZXRhLT5yeF9oYXNoKTsKLQlpZiAoZXJy
KQotCQltZXRhLT5yeF9oYXNoID0gMDsgLyogVXNlZCBieSBBRl9YRFAgYXMgbm90IGF2YWlsIHNp
Z25hbCAqLworCWVyciA9IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgsICZtZXRhLT5yeF9o
YXNoLCAmbWV0YS0+cnhfaGFzaF90eXBlKTsKKwlpZiAoZXJyIDwgMCkKKwkJbWV0YS0+cnhfaGFz
aF9lcnIgPSBlcnI7IC8qIFVzZWQgYnkgQUZfWERQIGFzIG5vIGhhc2ggc2lnbmFsICovCiAKIAlf
X3N5bmNfYWRkX2FuZF9mZXRjaCgmcGt0c19yZWRpciwgMSk7CiAJcmV0dXJuIGJwZl9yZWRpcmVj
dF9tYXAoJnhzaywgY3R4LT5yeF9xdWV1ZV9pbmRleCwgWERQX1BBU1MpOwpkaWZmIC0tZ2l0IGEv
dG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0YS5jIGIvdG9vbHMv
dGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0YS5jCmluZGV4IDc3Njc4YjAz
NDM4OS4uZDE1MWQ0MDZhMTIzIDEwMDY0NAotLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9i
cGYvcHJvZ3MveGRwX21ldGFkYXRhLmMKKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBm
L3Byb2dzL3hkcF9tZXRhZGF0YS5jCkBAIC0yMSw4ICsyMSw4IEBAIHN0cnVjdCB7CiAKIGV4dGVy
biBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF90aW1lc3RhbXAoY29uc3Qgc3RydWN0IHhkcF9tZCAq
Y3R4LAogCQkJCQkgX191NjQgKnRpbWVzdGFtcCkgX19rc3ltOwotZXh0ZXJuIGludCBicGZfeGRw
X21ldGFkYXRhX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LAotCQkJCSAgICBfX3Uz
MiAqaGFzaCkgX19rc3ltOworZXh0ZXJuIGludCBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY29u
c3Qgc3RydWN0IHhkcF9tZCAqY3R4LCBfX3UzMiAqaGFzaCwKKwkJCQkgICAgZW51bSB4ZHBfcnNz
X2hhc2hfdHlwZSAqcnNzX3R5cGUpIF9fa3N5bTsKIAogU0VDKCJ4ZHAiKQogaW50IHJ4KHN0cnVj
dCB4ZHBfbWQgKmN0eCkKQEAgLTU2LDcgKzU2LDcgQEAgaW50IHJ4KHN0cnVjdCB4ZHBfbWQgKmN0
eCkKIAlpZiAodGltZXN0YW1wID09IDApCiAJCW1ldGEtPnJ4X3RpbWVzdGFtcCA9IDE7CiAKLQli
cGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY3R4LCAmbWV0YS0+cnhfaGFzaCk7CisJYnBmX3hkcF9t
ZXRhZGF0YV9yeF9oYXNoKGN0eCwgJm1ldGEtPnJ4X2hhc2gsICZtZXRhLT5yeF9oYXNoX3R5cGUp
OwogCiAJcmV0dXJuIGJwZl9yZWRpcmVjdF9tYXAoJnhzaywgY3R4LT5yeF9xdWV1ZV9pbmRleCwg
WERQX1BBU1MpOwogfQpkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3By
b2dzL3hkcF9tZXRhZGF0YTIuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94
ZHBfbWV0YWRhdGEyLmMKaW5kZXggY2Y2OWQwNTQ1MWMzLi44NWY4OGQ5ZDdhNzggMTAwNjQ0Ci0t
LSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEyLmMKKysr
IGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0YTIuYwpAQCAt
NSwxNyArNSwxOCBAQAogI2luY2x1ZGUgPGJwZi9icGZfaGVscGVycy5oPgogI2luY2x1ZGUgPGJw
Zi9icGZfZW5kaWFuLmg+CiAKLWV4dGVybiBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGNv
bnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwKLQkJCQkgICAgX191MzIgKmhhc2gpIF9fa3N5bTsKK2V4
dGVybiBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0
eCwgX191MzIgKmhhc2gsCisJCQkJICAgIGVudW0geGRwX3Jzc19oYXNoX3R5cGUgKnJzc190eXBl
KSBfX2tzeW07CiAKIGludCBjYWxsZWQ7CiAKIFNFQygiZnJlcGxhY2UvcngiKQogaW50IGZyZXBs
YWNlX3J4KHN0cnVjdCB4ZHBfbWQgKmN0eCkKIHsKKwllbnVtIHhkcF9yc3NfaGFzaF90eXBlIHR5
cGUgPSAwOwogCXUzMiBoYXNoID0gMDsKIAkvKiBDYWxsIF9hbnlfIG1ldGFkYXRhIGZ1bmN0aW9u
IHRvIG1ha2Ugc3VyZSB3ZSBkb24ndCBjcmFzaC4gKi8KLQlicGZfeGRwX21ldGFkYXRhX3J4X2hh
c2goY3R4LCAmaGFzaCk7CisJYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0eCwgJmhhc2gsICZ0
eXBlKTsKIAljYWxsZWQrKzsKIAlyZXR1cm4gWERQX1BBU1M7CiB9CmRpZmYgLS1naXQgYS90b29s
cy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX2h3X21ldGFkYXRhLmMgYi90b29scy90ZXN0aW5n
L3NlbGZ0ZXN0cy9icGYveGRwX2h3X21ldGFkYXRhLmMKaW5kZXggM2I5NDJlZjcyOTdiLi45ODdj
ZjBkYjVlYmMgMTAwNjQ0Ci0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdf
bWV0YWRhdGEuYworKysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX2h3X21ldGFk
YXRhLmMKQEAgLTE0MSw3ICsxNDEsMTEgQEAgc3RhdGljIHZvaWQgdmVyaWZ5X3hkcF9tZXRhZGF0
YSh2b2lkICpkYXRhKQogCW1ldGEgPSBkYXRhIC0gc2l6ZW9mKCptZXRhKTsKIAogCXByaW50Zigi
cnhfdGltZXN0YW1wOiAlbGx1XG4iLCBtZXRhLT5yeF90aW1lc3RhbXApOwotCXByaW50Zigicnhf
aGFzaDogJXVcbiIsIG1ldGEtPnJ4X2hhc2gpOworCWlmIChtZXRhLT5yeF9oYXNoX2VyciA8IDAp
CisJCXByaW50ZigiTm8gcnhfaGFzaCBlcnI9JWRcbiIsIG1ldGEtPnJ4X2hhc2hfZXJyKTsKKwll
bHNlCisJCXByaW50ZigicnhfaGFzaDogMHglWCB3aXRoIFJTUyB0eXBlOjB4JVhcbiIsCisJCSAg
ICAgICBtZXRhLT5yeF9oYXNoLCBtZXRhLT5yeF9oYXNoX3R5cGUpOwogfQogCiBzdGF0aWMgdm9p
ZCB2ZXJpZnlfc2tiX21ldGFkYXRhKGludCBmZCkKZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcv
c2VsZnRlc3RzL2JwZi94ZHBfbWV0YWRhdGEuaCBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2Jw
Zi94ZHBfbWV0YWRhdGEuaAppbmRleCBmNjc4MGZiYjBhMjEuLjBjNDYyNGRjNmYyZiAxMDA2NDQK
LS0tIGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9tZXRhZGF0YS5oCisrKyBiL3Rv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfbWV0YWRhdGEuaApAQCAtMTIsNCArMTIsOCBA
QAogc3RydWN0IHhkcF9tZXRhIHsKIAlfX3U2NCByeF90aW1lc3RhbXA7CiAJX191MzIgcnhfaGFz
aDsKKwl1bmlvbiB7CisJCV9fdTMyIHJ4X2hhc2hfdHlwZTsKKwkJX19zMzIgcnhfaGFzaF9lcnI7
CisJfTsKIH07CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
