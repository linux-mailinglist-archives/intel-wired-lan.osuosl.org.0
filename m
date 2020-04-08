Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 715271A3672
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Apr 2020 17:01:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0FFF487B41;
	Thu,  9 Apr 2020 15:01:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S1GUDCQMec7T; Thu,  9 Apr 2020 15:00:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F93287B40;
	Thu,  9 Apr 2020 15:00:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 872E01BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 11:53:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7E8D4871E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 11:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qRvZx7rumKah for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2020 11:53:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B27628669F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 11:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586346791;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=S2+VTa1Cw98eK1vc+y3YoYS/rC5X/5D1agCiZcqwi0k=;
 b=jEJc87cHPiy8YJ//3IKQOhPvsvo2vEFTXHZcqgu3UkeO2IpAHdwC3xvj3415ZuXtTM+Pd8
 x4xDQLIHk31gv/f7NQSiRO5nHQXFswPBFOuNqSIzgepFVFBZhk+4IkhyXDEsD3FqsjLqoj
 w2SQ250Z27BFTRaKP6BlBEiM/EymkXI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-404-1lufJyPHNIWGJjM0beFkZw-1; Wed, 08 Apr 2020 07:53:05 -0400
X-MC-Unique: 1lufJyPHNIWGJjM0beFkZw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 23C781005509;
 Wed,  8 Apr 2020 11:53:03 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.40.208.40])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 83B9E19C70;
 Wed,  8 Apr 2020 11:52:57 +0000 (UTC)
Received: from [192.168.42.3] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id A89F7300020FA;
 Wed,  8 Apr 2020 13:52:56 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: sameehj@amazon.com
Date: Wed, 08 Apr 2020 13:52:56 +0200
Message-ID: <158634677661.707275.17823370564281193008.stgit@firesoul>
In-Reply-To: <158634658714.707275.7903484085370879864.stgit@firesoul>
References: <158634658714.707275.7903484085370879864.stgit@firesoul>
User-Agent: StGit/0.19
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mailman-Approved-At: Thu, 09 Apr 2020 15:00:49 +0000
Subject: [Intel-wired-lan] [PATCH RFC v2 28/33] xdp: for Intel AF_XDP
 drivers add XDP frame_sz
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Daniel Borkmann <borkmann@iogearbox.net>, zorik@amazon.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, David Ahern <dsahern@gmail.com>,
 netdev@vger.kernel.org,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 gtzalik@amazon.com, Saeed Mahameed <saeedm@mellanox.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 bpf@vger.kernel.org, =?utf-8?b?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>, akiyano@amazon.com,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SW50ZWwgZHJpdmVycyBpbXBsZW1lbnQgbmF0aXZlIEFGX1hEUCB6ZXJvY29weSBpbiBzZXBhcmF0
ZSBDLWZpbGVzLAp0aGF0IGhhdmUgaXRzIG93biBpbnZvY2F0aW9uIG9mIGJwZl9wcm9nX3J1bl94
ZHAoKS4gVGhlIHNldHVwIG9mCnhkcF9idWZmIGlzIGFsc28gaGFuZGxlZCBpbiBzZXBhcmF0ZWx5
IGZyb20gbm9ybWFsIGNvZGUgcGF0aC4KClRoaXMgcGF0Y2ggdXBkYXRlIFhEUCBmcmFtZV9zeiBm
b3IgQUZfWERQIHplcm9jb3B5IGRyaXZlcnMgaTQwZSwgaWNlCmFuZCBpeGdiZSwgYXMgdGhlIGNv
ZGUgY2hhbmdlcyBuZWVkZWQgYXJlIHZlcnkgc2ltaWxhci4gIEludHJvZHVjZSBhCmhlbHBlciBm
dW5jdGlvbiB4c2tfdW1lbV94ZHBfZnJhbWVfc3ooKSBmb3IgY2FsY3VsYXRpbmcgZnJhbWUgc2l6
ZS4KCkNjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZwpDYzogQmrDtnJuIFTDtnBl
bCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgpDYzogTWFnbnVzIEthcmxzc29uIDxtYWdudXMua2Fy
bHNzb25AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxi
cm91ZXJAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfeHNrLmMgICB8ICAgIDIgKysKIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
eHNrLmMgICAgIHwgICAgMiArKwogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmVfeHNrLmMgfCAgICAyICsrCiBpbmNsdWRlL25ldC94ZHBfc29jay5oICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgMTEgKysrKysrKysrKysKIDQgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94
c2suYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwppbmRleCAw
YjdkMjkxOTJiMmMuLjJiOTE4NGFlYWQ1ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV94c2suYwpAQCAtNTMxLDEyICs1MzEsMTQgQEAgaW50IGk0MGVfY2xlYW5fcnhf
aXJxX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsIGludCBidWRnZXQpCiB7CiAJdW5zaWdu
ZWQgaW50IHRvdGFsX3J4X2J5dGVzID0gMCwgdG90YWxfcnhfcGFja2V0cyA9IDA7CiAJdTE2IGNs
ZWFuZWRfY291bnQgPSBJNDBFX0RFU0NfVU5VU0VEKHJ4X3JpbmcpOworCXN0cnVjdCB4ZHBfdW1l
bSAqdW1lbSA9IHJ4X3JpbmctPnhza191bWVtOwogCXVuc2lnbmVkIGludCB4ZHBfcmVzLCB4ZHBf
eG1pdCA9IDA7CiAJYm9vbCBmYWlsdXJlID0gZmFsc2U7CiAJc3RydWN0IHNrX2J1ZmYgKnNrYjsK
IAlzdHJ1Y3QgeGRwX2J1ZmYgeGRwOwogCiAJeGRwLnJ4cSA9ICZyeF9yaW5nLT54ZHBfcnhxOwor
CXhkcC5mcmFtZV9zeiA9IHhza191bWVtX3hkcF9mcmFtZV9zeih1bWVtKTsKIAogCXdoaWxlIChs
aWtlbHkodG90YWxfcnhfcGFja2V0cyA8ICh1bnNpZ25lZCBpbnQpYnVkZ2V0KSkgewogCQlzdHJ1
Y3QgaTQwZV9yeF9idWZmZXIgKmJpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV94c2suYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
eHNrLmMKaW5kZXggODI3OWRiMTVlODcwLi4yM2U1NTE1ZDQ1MjcgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMKKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV94c2suYwpAQCAtODQwLDExICs4NDAsMTMgQEAgaW50IGljZV9j
bGVhbl9yeF9pcnFfemMoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQogewog
CXVuc2lnbmVkIGludCB0b3RhbF9yeF9ieXRlcyA9IDAsIHRvdGFsX3J4X3BhY2tldHMgPSAwOwog
CXUxNiBjbGVhbmVkX2NvdW50ID0gSUNFX0RFU0NfVU5VU0VEKHJ4X3JpbmcpOworCXN0cnVjdCB4
ZHBfdW1lbSAqdW1lbSA9IHJ4X3JpbmctPnhza191bWVtOwogCXVuc2lnbmVkIGludCB4ZHBfeG1p
dCA9IDA7CiAJYm9vbCBmYWlsdXJlID0gZmFsc2U7CiAJc3RydWN0IHhkcF9idWZmIHhkcDsKIAog
CXhkcC5yeHEgPSAmcnhfcmluZy0+eGRwX3J4cTsKKwl4ZHAuZnJhbWVfc3ogPSB4c2tfdW1lbV94
ZHBfZnJhbWVfc3oodW1lbSk7CiAKIAl3aGlsZSAobGlrZWx5KHRvdGFsX3J4X3BhY2tldHMgPCAo
dW5zaWduZWQgaW50KWJ1ZGdldCkpIHsKIAkJdW5pb24gaWNlXzMyYl9yeF9mbGV4X2Rlc2MgKnJ4
X2Rlc2M7CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdi
ZV94c2suYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jCmlu
ZGV4IDc0YjU0MGViYjNkYy4uYTY1NmVlOWExZmFlIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2suYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV94c2suYwpAQCAtNDMxLDEyICs0MzEsMTQgQEAgaW50IGl4Z2Jl
X2NsZWFuX3J4X2lycV96YyhzdHJ1Y3QgaXhnYmVfcV92ZWN0b3IgKnFfdmVjdG9yLAogCXVuc2ln
bmVkIGludCB0b3RhbF9yeF9ieXRlcyA9IDAsIHRvdGFsX3J4X3BhY2tldHMgPSAwOwogCXN0cnVj
dCBpeGdiZV9hZGFwdGVyICphZGFwdGVyID0gcV92ZWN0b3ItPmFkYXB0ZXI7CiAJdTE2IGNsZWFu
ZWRfY291bnQgPSBpeGdiZV9kZXNjX3VudXNlZChyeF9yaW5nKTsKKwlzdHJ1Y3QgeGRwX3VtZW0g
KnVtZW0gPSByeF9yaW5nLT54c2tfdW1lbTsKIAl1bnNpZ25lZCBpbnQgeGRwX3JlcywgeGRwX3ht
aXQgPSAwOwogCWJvb2wgZmFpbHVyZSA9IGZhbHNlOwogCXN0cnVjdCBza19idWZmICpza2I7CiAJ
c3RydWN0IHhkcF9idWZmIHhkcDsKIAogCXhkcC5yeHEgPSAmcnhfcmluZy0+eGRwX3J4cTsKKwl4
ZHAuZnJhbWVfc3ogPSB4c2tfdW1lbV94ZHBfZnJhbWVfc3oodW1lbSk7CiAKIAl3aGlsZSAobGlr
ZWx5KHRvdGFsX3J4X3BhY2tldHMgPCBidWRnZXQpKSB7CiAJCXVuaW9uIGl4Z2JlX2Fkdl9yeF9k
ZXNjICpyeF9kZXNjOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uZXQveGRwX3NvY2suaCBiL2luY2x1
ZGUvbmV0L3hkcF9zb2NrLmgKaW5kZXggZTg2ZWM0OGVmNjI3Li4xY2QxZWMzY2VhOTcgMTAwNjQ0
Ci0tLSBhL2luY2x1ZGUvbmV0L3hkcF9zb2NrLmgKKysrIGIvaW5jbHVkZS9uZXQveGRwX3NvY2su
aApAQCAtMjM3LDYgKzIzNywxMiBAQCBzdGF0aWMgaW5saW5lIHU2NCB4c2tfdW1lbV9hZGp1c3Rf
b2Zmc2V0KHN0cnVjdCB4ZHBfdW1lbSAqdW1lbSwgdTY0IGFkZHJlc3MsCiAJZWxzZQogCQlyZXR1
cm4gYWRkcmVzcyArIG9mZnNldDsKIH0KKworc3RhdGljIGlubGluZSB1MzIgeHNrX3VtZW1feGRw
X2ZyYW1lX3N6KHN0cnVjdCB4ZHBfdW1lbSAqdW1lbSkKK3sKKwlyZXR1cm4gdW1lbS0+Y2h1bmtf
c2l6ZV9ub2hyICsgdW1lbS0+aGVhZHJvb207Cit9CisKICNlbHNlCiBzdGF0aWMgaW5saW5lIGlu
dCB4c2tfZ2VuZXJpY19yY3Yoc3RydWN0IHhkcF9zb2NrICp4cywgc3RydWN0IHhkcF9idWZmICp4
ZHApCiB7CkBAIC0zNjcsNiArMzczLDExIEBAIHN0YXRpYyBpbmxpbmUgdTY0IHhza191bWVtX2Fk
anVzdF9vZmZzZXQoc3RydWN0IHhkcF91bWVtICp1bWVtLCB1NjQgaGFuZGxlLAogCXJldHVybiAw
OwogfQogCitzdGF0aWMgaW5saW5lIHUzMiB4c2tfdW1lbV94ZHBfZnJhbWVfc3ooc3RydWN0IHhk
cF91bWVtICp1bWVtKQoreworCXJldHVybiAwOworfQorCiBzdGF0aWMgaW5saW5lIGludCBfX3hz
a19tYXBfcmVkaXJlY3Qoc3RydWN0IHhkcF9zb2NrICp4cywgc3RydWN0IHhkcF9idWZmICp4ZHAp
CiB7CiAJcmV0dXJuIC1FT1BOT1RTVVBQOwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
