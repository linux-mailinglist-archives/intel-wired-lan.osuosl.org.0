Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB58D1B4EE5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2020 23:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7B57522739;
	Wed, 22 Apr 2020 21:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ul3ZficL56PR; Wed, 22 Apr 2020 21:12:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 737DF22767;
	Wed, 22 Apr 2020 21:12:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19AA31BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 16:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 15C7983F35
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 16:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UJtpS8vKtKWG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2020 16:10:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AA45286490
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 16:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587571795;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2PYospgl4V46SO7jrDTJxA6eWa0oPr50V1+Q+637rBY=;
 b=PoYlXa2KfE0Nw0Al6JsUuLG+dNhlwvaVC0jqaVejA+pCZjkIMLQPpnwCPjSkaTk8vMjYqa
 F0iABDyLY/me6sYDIhp0UwbHXXqDmAC38FkWUM72U40GcIkBSQAwHalmH7khD4Dm8A3vw0
 CtZXHDsrF9DHWL35zYYVkvGS+Ds7Xx8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-N_bIo5gMOMCIZH6wRHuQOw-1; Wed, 22 Apr 2020 12:09:49 -0400
X-MC-Unique: N_bIo5gMOMCIZH6wRHuQOw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 070C98AFEFB;
 Wed, 22 Apr 2020 16:09:47 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.40.208.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3BAA25C64E;
 Wed, 22 Apr 2020 16:09:39 +0000 (UTC)
Received: from [192.168.42.3] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 4B6E030000272;
 Wed, 22 Apr 2020 18:09:38 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: sameehj@amazon.com
Date: Wed, 22 Apr 2020 18:09:38 +0200
Message-ID: <158757177823.1370371.13765060372269609117.stgit@firesoul>
In-Reply-To: <158757160439.1370371.13213378122947426220.stgit@firesoul>
References: <158757160439.1370371.13213378122947426220.stgit@firesoul>
User-Agent: StGit/0.19
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mailman-Approved-At: Wed, 22 Apr 2020 21:12:34 +0000
Subject: [Intel-wired-lan] [PATCH net-next 27/33] xdp: for Intel AF_XDP
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
Cc: steffen.klassert@secunet.com,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
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
cm91ZXJAcmVkaGF0LmNvbT4KQWNrZWQtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMg
ICB8ICAgIDIgKysKIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMgICAg
IHwgICAgMiArKwogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMg
fCAgICAyICsrCiBpbmNsdWRlL25ldC94ZHBfc29jay5oICAgICAgICAgICAgICAgICAgICAgICB8
ICAgMTEgKysrKysrKysrKysKIDQgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwppbmRleCAwYjdkMjkxOTJi
MmMuLjJiOTE4NGFlYWQ1ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX3hzay5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV94c2suYwpAQCAtNTMxLDEyICs1MzEsMTQgQEAgaW50IGk0MGVfY2xlYW5fcnhfaXJxX3pjKHN0
cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsIGludCBidWRnZXQpCiB7CiAJdW5zaWduZWQgaW50IHRv
dGFsX3J4X2J5dGVzID0gMCwgdG90YWxfcnhfcGFja2V0cyA9IDA7CiAJdTE2IGNsZWFuZWRfY291
bnQgPSBJNDBFX0RFU0NfVU5VU0VEKHJ4X3JpbmcpOworCXN0cnVjdCB4ZHBfdW1lbSAqdW1lbSA9
IHJ4X3JpbmctPnhza191bWVtOwogCXVuc2lnbmVkIGludCB4ZHBfcmVzLCB4ZHBfeG1pdCA9IDA7
CiAJYm9vbCBmYWlsdXJlID0gZmFsc2U7CiAJc3RydWN0IHNrX2J1ZmYgKnNrYjsKIAlzdHJ1Y3Qg
eGRwX2J1ZmYgeGRwOwogCiAJeGRwLnJ4cSA9ICZyeF9yaW5nLT54ZHBfcnhxOworCXhkcC5mcmFt
ZV9zeiA9IHhza191bWVtX3hkcF9mcmFtZV9zeih1bWVtKTsKIAogCXdoaWxlIChsaWtlbHkodG90
YWxfcnhfcGFja2V0cyA8ICh1bnNpZ25lZCBpbnQpYnVkZ2V0KSkgewogCQlzdHJ1Y3QgaTQwZV9y
eF9idWZmZXIgKmJpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV94c2suYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMKaW5k
ZXggODI3OWRiMTVlODcwLi4yM2U1NTE1ZDQ1MjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV94c2suYwpAQCAtODQwLDExICs4NDAsMTMgQEAgaW50IGljZV9jbGVhbl9yeF9p
cnFfemMoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQogewogCXVuc2lnbmVk
IGludCB0b3RhbF9yeF9ieXRlcyA9IDAsIHRvdGFsX3J4X3BhY2tldHMgPSAwOwogCXUxNiBjbGVh
bmVkX2NvdW50ID0gSUNFX0RFU0NfVU5VU0VEKHJ4X3JpbmcpOworCXN0cnVjdCB4ZHBfdW1lbSAq
dW1lbSA9IHJ4X3JpbmctPnhza191bWVtOwogCXVuc2lnbmVkIGludCB4ZHBfeG1pdCA9IDA7CiAJ
Ym9vbCBmYWlsdXJlID0gZmFsc2U7CiAJc3RydWN0IHhkcF9idWZmIHhkcDsKIAogCXhkcC5yeHEg
PSAmcnhfcmluZy0+eGRwX3J4cTsKKwl4ZHAuZnJhbWVfc3ogPSB4c2tfdW1lbV94ZHBfZnJhbWVf
c3oodW1lbSk7CiAKIAl3aGlsZSAobGlrZWx5KHRvdGFsX3J4X3BhY2tldHMgPCAodW5zaWduZWQg
aW50KWJ1ZGdldCkpIHsKIAkJdW5pb24gaWNlXzMyYl9yeF9mbGV4X2Rlc2MgKnJ4X2Rlc2M7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2suYyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jCmluZGV4IDc0YjU0
MGViYjNkYy4uYTY1NmVlOWExZmFlIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9peGdiZS9peGdiZV94c2suYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
eGdiZS9peGdiZV94c2suYwpAQCAtNDMxLDEyICs0MzEsMTQgQEAgaW50IGl4Z2JlX2NsZWFuX3J4
X2lycV96YyhzdHJ1Y3QgaXhnYmVfcV92ZWN0b3IgKnFfdmVjdG9yLAogCXVuc2lnbmVkIGludCB0
b3RhbF9yeF9ieXRlcyA9IDAsIHRvdGFsX3J4X3BhY2tldHMgPSAwOwogCXN0cnVjdCBpeGdiZV9h
ZGFwdGVyICphZGFwdGVyID0gcV92ZWN0b3ItPmFkYXB0ZXI7CiAJdTE2IGNsZWFuZWRfY291bnQg
PSBpeGdiZV9kZXNjX3VudXNlZChyeF9yaW5nKTsKKwlzdHJ1Y3QgeGRwX3VtZW0gKnVtZW0gPSBy
eF9yaW5nLT54c2tfdW1lbTsKIAl1bnNpZ25lZCBpbnQgeGRwX3JlcywgeGRwX3htaXQgPSAwOwog
CWJvb2wgZmFpbHVyZSA9IGZhbHNlOwogCXN0cnVjdCBza19idWZmICpza2I7CiAJc3RydWN0IHhk
cF9idWZmIHhkcDsKIAogCXhkcC5yeHEgPSAmcnhfcmluZy0+eGRwX3J4cTsKKwl4ZHAuZnJhbWVf
c3ogPSB4c2tfdW1lbV94ZHBfZnJhbWVfc3oodW1lbSk7CiAKIAl3aGlsZSAobGlrZWx5KHRvdGFs
X3J4X3BhY2tldHMgPCBidWRnZXQpKSB7CiAJCXVuaW9uIGl4Z2JlX2Fkdl9yeF9kZXNjICpyeF9k
ZXNjOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uZXQveGRwX3NvY2suaCBiL2luY2x1ZGUvbmV0L3hk
cF9zb2NrLmgKaW5kZXggZTg2ZWM0OGVmNjI3Li4xY2QxZWMzY2VhOTcgMTAwNjQ0Ci0tLSBhL2lu
Y2x1ZGUvbmV0L3hkcF9zb2NrLmgKKysrIGIvaW5jbHVkZS9uZXQveGRwX3NvY2suaApAQCAtMjM3
LDYgKzIzNywxMiBAQCBzdGF0aWMgaW5saW5lIHU2NCB4c2tfdW1lbV9hZGp1c3Rfb2Zmc2V0KHN0
cnVjdCB4ZHBfdW1lbSAqdW1lbSwgdTY0IGFkZHJlc3MsCiAJZWxzZQogCQlyZXR1cm4gYWRkcmVz
cyArIG9mZnNldDsKIH0KKworc3RhdGljIGlubGluZSB1MzIgeHNrX3VtZW1feGRwX2ZyYW1lX3N6
KHN0cnVjdCB4ZHBfdW1lbSAqdW1lbSkKK3sKKwlyZXR1cm4gdW1lbS0+Y2h1bmtfc2l6ZV9ub2hy
ICsgdW1lbS0+aGVhZHJvb207Cit9CisKICNlbHNlCiBzdGF0aWMgaW5saW5lIGludCB4c2tfZ2Vu
ZXJpY19yY3Yoc3RydWN0IHhkcF9zb2NrICp4cywgc3RydWN0IHhkcF9idWZmICp4ZHApCiB7CkBA
IC0zNjcsNiArMzczLDExIEBAIHN0YXRpYyBpbmxpbmUgdTY0IHhza191bWVtX2FkanVzdF9vZmZz
ZXQoc3RydWN0IHhkcF91bWVtICp1bWVtLCB1NjQgaGFuZGxlLAogCXJldHVybiAwOwogfQogCitz
dGF0aWMgaW5saW5lIHUzMiB4c2tfdW1lbV94ZHBfZnJhbWVfc3ooc3RydWN0IHhkcF91bWVtICp1
bWVtKQoreworCXJldHVybiAwOworfQorCiBzdGF0aWMgaW5saW5lIGludCBfX3hza19tYXBfcmVk
aXJlY3Qoc3RydWN0IHhkcF9zb2NrICp4cywgc3RydWN0IHhkcF9idWZmICp4ZHApCiB7CiAJcmV0
dXJuIC1FT1BOT1RTVVBQOwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
