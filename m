Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 698CE6DFD9B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 20:36:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3DB841F48;
	Wed, 12 Apr 2023 18:35:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3DB841F48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681324558;
	bh=AUEiOVaFqYdyPTPlCYKVFg175pc3Agws0YnA0fDgjIc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=canHQaGE4jQ74HIgwTYXaHm8m43BYoPK4i77AfHacYrFmMlvk/JyZ+Id0Ej2Hn9JE
	 p9bzGHK0zKe9v8kLciv/Y6P6KjrR2wi96qGt6jj4weGYJdbCvamtPsU6/Xx3ujTwFQ
	 upQbJQHojKXlUhsdkOunpXAYuXYAqJwqTrFa0FJvQ5kiVzB2HADQikyZOLEkXhJwpj
	 r8D/Ia087Z5EiOoq55xi4m6lNoyZCRHFhBpoGJGBIir4VC/+UV6WNy302MXtO75tSt
	 9/5clQJoHZ6Vhfk8bOx1DgYXpNNwpiO0CmWI4jPSVXmk5Sh4rmRbmSp7AxPXJOTVCu
	 5tZzysoJ1GCIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s78FzCCWs_BK; Wed, 12 Apr 2023 18:35:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 422B941F3E;
	Wed, 12 Apr 2023 18:35:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 422B941F3E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AAC0C1C2E09
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 18:35:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 837D660F37
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 18:35:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 837D660F37
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JCxOh_djLiF9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 18:35:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AABD860B28
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AABD860B28
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 18:35:50 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-339-npgSiJXBOSyiAduwrtNcDw-1; Wed, 12 Apr 2023 14:35:45 -0400
X-MC-Unique: npgSiJXBOSyiAduwrtNcDw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C7A6F884EC0;
 Wed, 12 Apr 2023 18:35:43 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6011C1415117;
 Wed, 12 Apr 2023 18:35:43 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 75A83307372E8;
 Wed, 12 Apr 2023 20:35:42 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Wed, 12 Apr 2023 20:35:42 +0200
Message-ID: <168132454243.317773.18430532234572392637.stgit@firesoul>
In-Reply-To: <168132448251.317773.2526885806604122764.stgit@firesoul>
References: <168132448251.317773.2526885806604122764.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681324549;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7uy//5CFgECnuuD4j8TxJzVmtCdrmPt1JIk+ut49L5s=;
 b=h6uobjmRi+5j5UF4gdjk3WHbOIAz9eEfjhMqV4vd/iJSOmE3ds9xIAn/3zehcaORL8sRbr
 jcdQJK/Sw95GEdeI7wSux8OzSJh4AaWvE28FsgejI6zC9pQFEF5DGYdrcA+WwhygJiLJ0J
 hEIikP6ItbdLTMrdOKIF4j9Gy2wvnvM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=h6uobjmR
Subject: [Intel-wired-lan] [PATCH bpf V9 6/6] selftests/bpf: Adjust
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
L3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwppbmRleCA4YTA0
MjM0M2NiMGMuLjIwNjUyYjU1ZDkxZCAxMDA2NDQKLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxmdGVz
dHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCisrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwpAQCAtMTgsOCArMTgsOCBAQCB2b2xhdGls
ZSBfX3U2NCBwa3RzX3JlZGlyID0gMDsKIAogZXh0ZXJuIGludCBicGZfeGRwX21ldGFkYXRhX3J4
X3RpbWVzdGFtcChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsCiAJCQkJCSBfX3U2NCAqdGltZXN0
YW1wKSBfX2tzeW07Ci1leHRlcm4gaW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjb25zdCBz
dHJ1Y3QgeGRwX21kICpjdHgsCi0JCQkJICAgIF9fdTMyICpoYXNoKSBfX2tzeW07CitleHRlcm4g
aW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsIF9f
dTMyICpoYXNoLAorCQkJCSAgICBlbnVtIHhkcF9yc3NfaGFzaF90eXBlICpyc3NfdHlwZSkgX19r
c3ltOwogCiBTRUMoInhkcCIpCiBpbnQgcngoc3RydWN0IHhkcF9tZCAqY3R4KQpAQCAtODAsOSAr
ODAsOSBAQCBpbnQgcngoc3RydWN0IHhkcF9tZCAqY3R4KQogCWlmIChlcnIpCiAJCW1ldGEtPnJ4
X3RpbWVzdGFtcCA9IDA7IC8qIFVzZWQgYnkgQUZfWERQIGFzIG5vdCBhdmFpbCBzaWduYWwgKi8K
IAotCWVyciA9IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgsICZtZXRhLT5yeF9oYXNoKTsK
LQlpZiAoZXJyKQotCQltZXRhLT5yeF9oYXNoID0gMDsgLyogVXNlZCBieSBBRl9YRFAgYXMgbm90
IGF2YWlsIHNpZ25hbCAqLworCWVyciA9IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgsICZt
ZXRhLT5yeF9oYXNoLCAmbWV0YS0+cnhfaGFzaF90eXBlKTsKKwlpZiAoZXJyIDwgMCkKKwkJbWV0
YS0+cnhfaGFzaF9lcnIgPSBlcnI7IC8qIFVzZWQgYnkgQUZfWERQIGFzIG5vIGhhc2ggc2lnbmFs
ICovCiAKIAlwa3RzX3JlZGlyKys7CiAJcmV0dXJuIGJwZl9yZWRpcmVjdF9tYXAoJnhzaywgY3R4
LT5yeF9xdWV1ZV9pbmRleCwgWERQX1BBU1MpOwpkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9z
ZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0YS5jIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVz
dHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0YS5jCmluZGV4IDc3Njc4YjAzNDM4OS4uZDE1MWQ0MDZh
MTIzIDEwMDY0NAotLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX21l
dGFkYXRhLmMKKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9tZXRh
ZGF0YS5jCkBAIC0yMSw4ICsyMSw4IEBAIHN0cnVjdCB7CiAKIGV4dGVybiBpbnQgYnBmX3hkcF9t
ZXRhZGF0YV9yeF90aW1lc3RhbXAoY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LAogCQkJCQkgX191
NjQgKnRpbWVzdGFtcCkgX19rc3ltOwotZXh0ZXJuIGludCBicGZfeGRwX21ldGFkYXRhX3J4X2hh
c2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LAotCQkJCSAgICBfX3UzMiAqaGFzaCkgX19rc3lt
OworZXh0ZXJuIGludCBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9t
ZCAqY3R4LCBfX3UzMiAqaGFzaCwKKwkJCQkgICAgZW51bSB4ZHBfcnNzX2hhc2hfdHlwZSAqcnNz
X3R5cGUpIF9fa3N5bTsKIAogU0VDKCJ4ZHAiKQogaW50IHJ4KHN0cnVjdCB4ZHBfbWQgKmN0eCkK
QEAgLTU2LDcgKzU2LDcgQEAgaW50IHJ4KHN0cnVjdCB4ZHBfbWQgKmN0eCkKIAlpZiAodGltZXN0
YW1wID09IDApCiAJCW1ldGEtPnJ4X3RpbWVzdGFtcCA9IDE7CiAKLQlicGZfeGRwX21ldGFkYXRh
X3J4X2hhc2goY3R4LCAmbWV0YS0+cnhfaGFzaCk7CisJYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNo
KGN0eCwgJm1ldGEtPnJ4X2hhc2gsICZtZXRhLT5yeF9oYXNoX3R5cGUpOwogCiAJcmV0dXJuIGJw
Zl9yZWRpcmVjdF9tYXAoJnhzaywgY3R4LT5yeF9xdWV1ZV9pbmRleCwgWERQX1BBU1MpOwogfQpk
aWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0
YTIuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEyLmMK
aW5kZXggY2Y2OWQwNTQ1MWMzLi44NWY4OGQ5ZDdhNzggMTAwNjQ0Ci0tLSBhL3Rvb2xzL3Rlc3Rp
bmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEyLmMKKysrIGIvdG9vbHMvdGVzdGlu
Zy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0YTIuYwpAQCAtNSwxNyArNSwxOCBAQAog
I2luY2x1ZGUgPGJwZi9icGZfaGVscGVycy5oPgogI2luY2x1ZGUgPGJwZi9icGZfZW5kaWFuLmg+
CiAKLWV4dGVybiBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGNvbnN0IHN0cnVjdCB4ZHBf
bWQgKmN0eCwKLQkJCQkgICAgX191MzIgKmhhc2gpIF9fa3N5bTsKK2V4dGVybiBpbnQgYnBmX3hk
cF9tZXRhZGF0YV9yeF9oYXNoKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwgX191MzIgKmhhc2gs
CisJCQkJICAgIGVudW0geGRwX3Jzc19oYXNoX3R5cGUgKnJzc190eXBlKSBfX2tzeW07CiAKIGlu
dCBjYWxsZWQ7CiAKIFNFQygiZnJlcGxhY2UvcngiKQogaW50IGZyZXBsYWNlX3J4KHN0cnVjdCB4
ZHBfbWQgKmN0eCkKIHsKKwllbnVtIHhkcF9yc3NfaGFzaF90eXBlIHR5cGUgPSAwOwogCXUzMiBo
YXNoID0gMDsKIAkvKiBDYWxsIF9hbnlfIG1ldGFkYXRhIGZ1bmN0aW9uIHRvIG1ha2Ugc3VyZSB3
ZSBkb24ndCBjcmFzaC4gKi8KLQlicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY3R4LCAmaGFzaCk7
CisJYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0eCwgJmhhc2gsICZ0eXBlKTsKIAljYWxsZWQr
KzsKIAlyZXR1cm4gWERQX1BBU1M7CiB9CmRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3NlbGZ0
ZXN0cy9icGYveGRwX2h3X21ldGFkYXRhLmMgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYv
eGRwX2h3X21ldGFkYXRhLmMKaW5kZXggM2I5NDJlZjcyOTdiLi45ODdjZjBkYjVlYmMgMTAwNjQ0
Ci0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYworKysg
Yi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX2h3X21ldGFkYXRhLmMKQEAgLTE0MSw3
ICsxNDEsMTEgQEAgc3RhdGljIHZvaWQgdmVyaWZ5X3hkcF9tZXRhZGF0YSh2b2lkICpkYXRhKQog
CW1ldGEgPSBkYXRhIC0gc2l6ZW9mKCptZXRhKTsKIAogCXByaW50ZigicnhfdGltZXN0YW1wOiAl
bGx1XG4iLCBtZXRhLT5yeF90aW1lc3RhbXApOwotCXByaW50ZigicnhfaGFzaDogJXVcbiIsIG1l
dGEtPnJ4X2hhc2gpOworCWlmIChtZXRhLT5yeF9oYXNoX2VyciA8IDApCisJCXByaW50ZigiTm8g
cnhfaGFzaCBlcnI9JWRcbiIsIG1ldGEtPnJ4X2hhc2hfZXJyKTsKKwllbHNlCisJCXByaW50Zigi
cnhfaGFzaDogMHglWCB3aXRoIFJTUyB0eXBlOjB4JVhcbiIsCisJCSAgICAgICBtZXRhLT5yeF9o
YXNoLCBtZXRhLT5yeF9oYXNoX3R5cGUpOwogfQogCiBzdGF0aWMgdm9pZCB2ZXJpZnlfc2tiX21l
dGFkYXRhKGludCBmZCkKZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94
ZHBfbWV0YWRhdGEuaCBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfbWV0YWRhdGEu
aAppbmRleCBmNjc4MGZiYjBhMjEuLjBjNDYyNGRjNmYyZiAxMDA2NDQKLS0tIGEvdG9vbHMvdGVz
dGluZy9zZWxmdGVzdHMvYnBmL3hkcF9tZXRhZGF0YS5oCisrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2Vs
ZnRlc3RzL2JwZi94ZHBfbWV0YWRhdGEuaApAQCAtMTIsNCArMTIsOCBAQAogc3RydWN0IHhkcF9t
ZXRhIHsKIAlfX3U2NCByeF90aW1lc3RhbXA7CiAJX191MzIgcnhfaGFzaDsKKwl1bmlvbiB7CisJ
CV9fdTMyIHJ4X2hhc2hfdHlwZTsKKwkJX19zMzIgcnhfaGFzaF9lcnI7CisJfTsKIH07CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
