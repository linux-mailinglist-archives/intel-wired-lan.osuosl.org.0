Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E292D6D2374
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 17:03:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65A5F617A1;
	Fri, 31 Mar 2023 15:03:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65A5F617A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680275022;
	bh=nI2KkUtLO8Q1ACx82blDyL6mFKpWXBxxOI6x5Od/tf0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1E9ilaaNh3pmhqJY5ufkKla2xtrKUGWHk/2pmn9RRYLSehCz05jwVfvs0QSIpaDkd
	 +1AMMkfWP2dj6wTMrJHFxvaBBqBY17v4MOkYzQi4mnkiNxsEe1TM9VT+Re84fSKM9X
	 aNSSpct6TPy7xQjbaxBwQuDD9iVKWVLg8Ou4dee1HyXfJIHG3lg94zT046MLrzmgFT
	 3EguzTDRZYjSZCYy5OGxEH4mZiMWtwTO9cElWZd522+cSaDhEp1ImQE87u1GnXwHcC
	 yJ3L7rtkBK1NvNr8tRZhPiIh4JQ9WpUVbLxmJONdA+KhOcSEcYDkri581yOrM9Y/hj
	 3XCKlDuVNLNfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TUUuwJFKEyaP; Fri, 31 Mar 2023 15:03:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1373F608D8;
	Fri, 31 Mar 2023 15:03:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1373F608D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D7C21BF33F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 25D6D41578
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25D6D41578
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dyuC586gatec for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 15:03:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33530408CA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 33530408CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:33 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-637-zKFrg1h0P9aYIMY36Qt76A-1; Fri, 31 Mar 2023 11:03:29 -0400
X-MC-Unique: zKFrg1h0P9aYIMY36Qt76A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A401801779;
 Fri, 31 Mar 2023 15:03:28 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DCA122166B33;
 Fri, 31 Mar 2023 15:03:27 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 3852E30736C72;
 Fri, 31 Mar 2023 17:03:27 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Fri, 31 Mar 2023 17:03:27 +0200
Message-ID: <168027500717.3941176.15713153296290027134.stgit@firesoul>
In-Reply-To: <168027495947.3941176.6690238098903275241.stgit@firesoul>
References: <168027495947.3941176.6690238098903275241.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680275013;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jZwU03SlBpUgXrM3e/ri2TthAxHSq0J8xGdobxSMbL8=;
 b=abcTvXzl0+dg66IvmlMigRhvUmGRS++WslrBc2T0w6BtsEfrrFfv/z+tjv3DJxfP28BIFM
 ubf0G53jcf54jFvI21Bi+nW8ojjvfqdQn7bJ9nI1lnf//cyzdTofgIBtJAbSSS4LDEvj9l
 99ma8utvETO3iAi/fSVhOkjOH/D1PcI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=abcTvXzl
Subject: [Intel-wired-lan] [PATCH bpf V4 5/5] selftests/bpf: Adjust
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, tariqt@nvidia.com, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, pabeni@redhat.com,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, edumazet@google.com,
 hawk@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VXBkYXRlIEJQRiBzZWxmdGVzdHMgdG8gdXNlIHRoZSBuZXcgUlNTIHR5cGUgYXJndW1lbnQgZm9y
IGtmdW5jCmJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaC4KClNpZ25lZC1vZmYtYnk6IEplc3BlciBE
YW5nYWFyZCBCcm91ZXIgPGJyb3VlckByZWRoYXQuY29tPgpBY2tlZC1ieTogVG9rZSBIw7hpbGFu
ZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Ci0tLQogLi4uL3NlbGZ0ZXN0cy9icGYvcHJv
Z190ZXN0cy94ZHBfbWV0YWRhdGEuYyAgICAgICAgfCAgICAyICsrCiAuLi4vdGVzdGluZy9zZWxm
dGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jICB8ICAgMTQgKysrKysrKysrLS0tLS0K
IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEuYyAgIHwgICAg
NiArKystLS0KIHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEy
LmMgIHwgICAgNyArKysrLS0tCiB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX2h3X21l
dGFkYXRhLmMgICAgICB8ICAgIDIgKy0KIHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBf
bWV0YWRhdGEuaCAgICAgICAgIHwgICAgMSArCiA2IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlv
bnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi9wcm9nX3Rlc3RzL3hkcF9tZXRhZGF0YS5jIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVz
dHMvYnBmL3Byb2dfdGVzdHMveGRwX21ldGFkYXRhLmMKaW5kZXggYWE0YmVhZTk5ZjRmLi44YzVl
OThkYTlhZTkgMTAwNjQ0Ci0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rl
c3RzL3hkcF9tZXRhZGF0YS5jCisrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9n
X3Rlc3RzL3hkcF9tZXRhZGF0YS5jCkBAIC0yNzMsNiArMjczLDggQEAgc3RhdGljIGludCB2ZXJp
ZnlfeHNrX21ldGFkYXRhKHN0cnVjdCB4c2sgKnhzaykKIAlpZiAoIUFTU0VSVF9ORVEobWV0YS0+
cnhfaGFzaCwgMCwgInJ4X2hhc2giKSkKIAkJcmV0dXJuIC0xOwogCisJQVNTRVJUX0VRKG1ldGEt
PnJ4X2hhc2hfdHlwZSwgMCwgInJ4X2hhc2hfdHlwZSIpOworCiAJeHNrX3JpbmdfY29uc19fcmVs
ZWFzZSgmeHNrLT5yeCwgMSk7CiAJcmVmaWxsX3J4KHhzaywgY29tcF9hZGRyKTsKIApkaWZmIC0t
Z2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5j
IGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCmlu
ZGV4IDRjNTViNGQ3OWQzZC4uN2IzZmMxMmU5NmQ2IDEwMDY0NAotLS0gYS90b29scy90ZXN0aW5n
L3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKKysrIGIvdG9vbHMvdGVzdGlu
Zy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCkBAIC0xNCw4ICsxNCw4IEBA
IHN0cnVjdCB7CiAKIGV4dGVybiBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF90aW1lc3RhbXAoY29u
c3Qgc3RydWN0IHhkcF9tZCAqY3R4LAogCQkJCQkgX191NjQgKnRpbWVzdGFtcCkgX19rc3ltOwot
ZXh0ZXJuIGludCBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAq
Y3R4LAotCQkJCSAgICBfX3UzMiAqaGFzaCkgX19rc3ltOworZXh0ZXJuIGludCBicGZfeGRwX21l
dGFkYXRhX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCBfX3UzMiAqaGFzaCwKKwkJ
CQkgICAgZW51bSB4ZHBfcnNzX2hhc2hfdHlwZSAqcnNzX3R5cGUpIF9fa3N5bTsKIAogU0VDKCJ4
ZHAiKQogaW50IHJ4KHN0cnVjdCB4ZHBfbWQgKmN0eCkKQEAgLTc0LDEwICs3NCwxNCBAQCBpbnQg
cngoc3RydWN0IHhkcF9tZCAqY3R4KQogCWVsc2UKIAkJbWV0YS0+cnhfdGltZXN0YW1wID0gMDsg
LyogVXNlZCBieSBBRl9YRFAgYXMgbm90IGF2YWlsIHNpZ25hbCAqLwogCi0JaWYgKCFicGZfeGRw
X21ldGFkYXRhX3J4X2hhc2goY3R4LCAmbWV0YS0+cnhfaGFzaCkpCi0JCWJwZl9wcmludGsoInBv
cHVsYXRlZCByeF9oYXNoIHdpdGggJXUiLCBtZXRhLT5yeF9oYXNoKTsKLQllbHNlCisJaWYgKCFi
cGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY3R4LCAmbWV0YS0+cnhfaGFzaCwgJm1ldGEtPnJ4X2hh
c2hfdHlwZSkpIHsKKwkJYnBmX3ByaW50aygicG9wdWxhdGVkIHJ4X2hhc2g6MHglWCB0eXBlOjB4
JVgiLAorCQkJICAgbWV0YS0+cnhfaGFzaCwgbWV0YS0+cnhfaGFzaF90eXBlKTsKKwkJaWYgKCEo
bWV0YS0+cnhfaGFzaF90eXBlICYgWERQX1JTU19MNCkpCisJCQlicGZfcHJpbnRrKCJyeF9oYXNo
IGxvdyBxdWFsaXR5IEwzIGhhc2ggdHlwZSIpOworCX0gZWxzZSB7CiAJCW1ldGEtPnJ4X2hhc2gg
PSAwOyAvKiBVc2VkIGJ5IEFGX1hEUCBhcyBub3QgYXZhaWwgc2lnbmFsICovCisJfQogCiAJcmV0
dXJuIGJwZl9yZWRpcmVjdF9tYXAoJnhzaywgY3R4LT5yeF9xdWV1ZV9pbmRleCwgWERQX1BBU1Mp
OwogfQpkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9t
ZXRhZGF0YS5jIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0
YS5jCmluZGV4IDc3Njc4YjAzNDM4OS4uZDE1MWQ0MDZhMTIzIDEwMDY0NAotLS0gYS90b29scy90
ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX21ldGFkYXRhLmMKKysrIGIvdG9vbHMvdGVz
dGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0YS5jCkBAIC0yMSw4ICsyMSw4IEBA
IHN0cnVjdCB7CiAKIGV4dGVybiBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF90aW1lc3RhbXAoY29u
c3Qgc3RydWN0IHhkcF9tZCAqY3R4LAogCQkJCQkgX191NjQgKnRpbWVzdGFtcCkgX19rc3ltOwot
ZXh0ZXJuIGludCBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAq
Y3R4LAotCQkJCSAgICBfX3UzMiAqaGFzaCkgX19rc3ltOworZXh0ZXJuIGludCBicGZfeGRwX21l
dGFkYXRhX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCBfX3UzMiAqaGFzaCwKKwkJ
CQkgICAgZW51bSB4ZHBfcnNzX2hhc2hfdHlwZSAqcnNzX3R5cGUpIF9fa3N5bTsKIAogU0VDKCJ4
ZHAiKQogaW50IHJ4KHN0cnVjdCB4ZHBfbWQgKmN0eCkKQEAgLTU2LDcgKzU2LDcgQEAgaW50IHJ4
KHN0cnVjdCB4ZHBfbWQgKmN0eCkKIAlpZiAodGltZXN0YW1wID09IDApCiAJCW1ldGEtPnJ4X3Rp
bWVzdGFtcCA9IDE7CiAKLQlicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY3R4LCAmbWV0YS0+cnhf
aGFzaCk7CisJYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0eCwgJm1ldGEtPnJ4X2hhc2gsICZt
ZXRhLT5yeF9oYXNoX3R5cGUpOwogCiAJcmV0dXJuIGJwZl9yZWRpcmVjdF9tYXAoJnhzaywgY3R4
LT5yeF9xdWV1ZV9pbmRleCwgWERQX1BBU1MpOwogfQpkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGlu
Zy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0YTIuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2Vs
ZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEyLmMKaW5kZXggY2Y2OWQwNTQ1MWMzLi44NWY4
OGQ5ZDdhNzggMTAwNjQ0Ci0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94
ZHBfbWV0YWRhdGEyLmMKKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hk
cF9tZXRhZGF0YTIuYwpAQCAtNSwxNyArNSwxOCBAQAogI2luY2x1ZGUgPGJwZi9icGZfaGVscGVy
cy5oPgogI2luY2x1ZGUgPGJwZi9icGZfZW5kaWFuLmg+CiAKLWV4dGVybiBpbnQgYnBmX3hkcF9t
ZXRhZGF0YV9yeF9oYXNoKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwKLQkJCQkgICAgX191MzIg
Kmhhc2gpIF9fa3N5bTsKK2V4dGVybiBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGNvbnN0
IHN0cnVjdCB4ZHBfbWQgKmN0eCwgX191MzIgKmhhc2gsCisJCQkJICAgIGVudW0geGRwX3Jzc19o
YXNoX3R5cGUgKnJzc190eXBlKSBfX2tzeW07CiAKIGludCBjYWxsZWQ7CiAKIFNFQygiZnJlcGxh
Y2UvcngiKQogaW50IGZyZXBsYWNlX3J4KHN0cnVjdCB4ZHBfbWQgKmN0eCkKIHsKKwllbnVtIHhk
cF9yc3NfaGFzaF90eXBlIHR5cGUgPSAwOwogCXUzMiBoYXNoID0gMDsKIAkvKiBDYWxsIF9hbnlf
IG1ldGFkYXRhIGZ1bmN0aW9uIHRvIG1ha2Ugc3VyZSB3ZSBkb24ndCBjcmFzaC4gKi8KLQlicGZf
eGRwX21ldGFkYXRhX3J4X2hhc2goY3R4LCAmaGFzaCk7CisJYnBmX3hkcF9tZXRhZGF0YV9yeF9o
YXNoKGN0eCwgJmhhc2gsICZ0eXBlKTsKIAljYWxsZWQrKzsKIAlyZXR1cm4gWERQX1BBU1M7CiB9
CmRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX2h3X21ldGFkYXRh
LmMgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX2h3X21ldGFkYXRhLmMKaW5kZXgg
MWM4YWNiNjhiOTc3Li40Y2EyOWUwYzk2NDYgMTAwNjQ0Ci0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2Vs
ZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYworKysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0
cy9icGYveGRwX2h3X21ldGFkYXRhLmMKQEAgLTE0MSw3ICsxNDEsNyBAQCBzdGF0aWMgdm9pZCB2
ZXJpZnlfeGRwX21ldGFkYXRhKHZvaWQgKmRhdGEpCiAJbWV0YSA9IGRhdGEgLSBzaXplb2YoKm1l
dGEpOwogCiAJcHJpbnRmKCJyeF90aW1lc3RhbXA6ICVsbHVcbiIsIG1ldGEtPnJ4X3RpbWVzdGFt
cCk7Ci0JcHJpbnRmKCJyeF9oYXNoOiAldVxuIiwgbWV0YS0+cnhfaGFzaCk7CisJcHJpbnRmKCJy
eF9oYXNoOiAweCVYIFJTUyB0eXBlOjB4JVhcbiIsIG1ldGEtPnJ4X2hhc2gsIG1ldGEtPnJ4X2hh
c2hfdHlwZSk7CiB9CiAKIHN0YXRpYyB2b2lkIHZlcmlmeV9za2JfbWV0YWRhdGEoaW50IGZkKQpk
aWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9tZXRhZGF0YS5oIGIv
dG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9tZXRhZGF0YS5oCmluZGV4IGY2NzgwZmJi
MGEyMS4uODk5ZGE4NzJmZWUxIDEwMDY0NAotLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9i
cGYveGRwX21ldGFkYXRhLmgKKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9t
ZXRhZGF0YS5oCkBAIC0xMiw0ICsxMiw1IEBACiBzdHJ1Y3QgeGRwX21ldGEgewogCV9fdTY0IHJ4
X3RpbWVzdGFtcDsKIAlfX3UzMiByeF9oYXNoOworCV9fdTMyIHJ4X2hhc2hfdHlwZTsKIH07CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
