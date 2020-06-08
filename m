Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C246B1F2527
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 01:25:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7448187765;
	Mon,  8 Jun 2020 23:25:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wq9aG3y7NkdC; Mon,  8 Jun 2020 23:25:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 75CC3877EA;
	Mon,  8 Jun 2020 23:25:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C7851BF381
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 675AC88350
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:25:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V-9Qvq1ooZ00 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2020 23:25:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3D61087E19
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:25:40 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2BCE120812;
 Mon,  8 Jun 2020 23:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658740;
 bh=ZYWXVLDRpMx6fjTzG3pCvWzbfAZaCq5fQaiK1q3eva8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nkGnu3gf2GNlImuns0lCujV6FWp5RcWQZfDHvtxHdx0ViYAa0zxWbSfc0mPid3EFu
 m8swFQynVJWb8S3hj1jq+y5FqmA9CYh3lDFdEPnTFiVegSI6lN92cdQ+z3z4hGbxHc
 lFSbOiNZWgpmQR6BDGq098wKLYzbOran7zXjXxoM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  8 Jun 2020 19:24:15 -0400
Message-Id: <20200608232500.3369581-27-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232500.3369581-1-sashal@kernel.org>
References: <20200608232500.3369581-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 4.14 27/72] e1000: Distribute
 switch variables for initialization
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
Cc: Sasha Levin <sashal@kernel.org>, Kees Cook <keescook@chromium.org>,
 netdev@vger.kernel.org, clang-built-linux@googlegroups.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+CgpbIFVwc3RyZWFtIGNvbW1p
dCBhMzRjN2Y1MTU2NjU0ZWJhZjdlYWFjZTEwMjkzOGJlN2ZmNzAzNmNiIF0KClZhcmlhYmxlcyBk
ZWNsYXJlZCBpbiBhIHN3aXRjaCBzdGF0ZW1lbnQgYmVmb3JlIGFueSBjYXNlIHN0YXRlbWVudHMK
Y2Fubm90IGJlIGF1dG9tYXRpY2FsbHkgaW5pdGlhbGl6ZWQgd2l0aCBjb21waWxlciBpbnN0cnVt
ZW50YXRpb24gKGFzCnRoZXkgYXJlIG5vdCBwYXJ0IG9mIGFueSBleGVjdXRpb24gZmxvdykuIFdp
dGggR0NDJ3MgcHJvcG9zZWQgYXV0b21hdGljCnN0YWNrIHZhcmlhYmxlIGluaXRpYWxpemF0aW9u
IGZlYXR1cmUsIHRoaXMgdHJpZ2dlcnMgYSB3YXJuaW5nIChhbmQgdGhleQpkb24ndCBnZXQgaW5p
dGlhbGl6ZWQpLiBDbGFuZydzIGF1dG9tYXRpYyBzdGFjayB2YXJpYWJsZSBpbml0aWFsaXphdGlv
bgoodmlhIENPTkZJR19JTklUX1NUQUNLX0FMTD15KSBkb2Vzbid0IHRocm93IGEgd2FybmluZywg
YnV0IGl0IGFsc28KZG9lc24ndCBpbml0aWFsaXplIHN1Y2ggdmFyaWFibGVzWzFdLiBOb3RlIHRo
YXQgdGhlc2Ugd2FybmluZ3MgKG9yIHNpbGVudApza2lwcGluZykgaGFwcGVuIGJlZm9yZSB0aGUg
ZGVhZC1zdG9yZSBlbGltaW5hdGlvbiBvcHRpbWl6YXRpb24gcGhhc2UsCnNvIGV2ZW4gd2hlbiB0
aGUgYXV0b21hdGljIGluaXRpYWxpemF0aW9ucyBhcmUgbGF0ZXIgZWxpZGVkIGluIGZhdm9yIG9m
CmRpcmVjdCBpbml0aWFsaXphdGlvbnMsIHRoZSB3YXJuaW5ncyByZW1haW4uCgpUbyBhdm9pZCB0
aGVzZSBwcm9ibGVtcywgbW92ZSBzdWNoIHZhcmlhYmxlcyBpbnRvIHRoZSAiY2FzZSIgd2hlcmUK
dGhleSdyZSB1c2VkIG9yIGxpZnQgdGhlbSB1cCBpbnRvIHRoZSBtYWluIGZ1bmN0aW9uIGJvZHku
Cgpkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9tYWluLmM6IEluIGZ1bmN0
aW9uIOKAmGUxMDAwX3htaXRfZnJhbWXigJk6CmRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwL2UxMDAwX21haW4uYzozMTQzOjE4OiB3YXJuaW5nOiBzdGF0ZW1lbnQgd2lsbCBuZXZlciBi
ZSBleGVjdXRlZCBbLVdzd2l0Y2gtdW5yZWFjaGFibGVdCiAzMTQzIHwgICAgIHVuc2lnbmVkIGlu
dCBwdWxsX3NpemU7CiAgICAgIHwgICAgICAgICAgICAgICAgICBefn5+fn5+fn4KClsxXSBodHRw
czovL2J1Z3MubGx2bS5vcmcvc2hvd19idWcuY2dpP2lkPTQ0OTE2CgpTaWduZWQtb2ZmLWJ5OiBL
ZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4KVGVzdGVkLWJ5OiBBYXJvbiBCcm93biA8
YWFyb24uZi5icm93bkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEplZmYgS2lyc2hlciA8amVm
ZnJleS50LmtpcnNoZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2Fz
aGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEw
MDBfbWFpbi5jIHwgNCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAv
ZTEwMDBfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDBfbWFp
bi5jCmluZGV4IDNkZDRhZWIyNzA2ZC4uMTc1NjgxYWE1MjYwIDEwMDY0NAotLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9tYWluLmMKKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDBfbWFpbi5jCkBAIC0zMTY5LDggKzMxNjksOSBAQCBz
dGF0aWMgbmV0ZGV2X3R4X3QgZTEwMDBfeG1pdF9mcmFtZShzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAog
CQloZHJfbGVuID0gc2tiX3RyYW5zcG9ydF9vZmZzZXQoc2tiKSArIHRjcF9oZHJsZW4oc2tiKTsK
IAkJaWYgKHNrYi0+ZGF0YV9sZW4gJiYgaGRyX2xlbiA9PSBsZW4pIHsKIAkJCXN3aXRjaCAoaHct
Pm1hY190eXBlKSB7CisJCQljYXNlIGUxMDAwXzgyNTQ0OiB7CiAJCQkJdW5zaWduZWQgaW50IHB1
bGxfc2l6ZTsKLQkJCWNhc2UgZTEwMDBfODI1NDQ6CisKIAkJCQkvKiBNYWtlIHN1cmUgd2UgaGF2
ZSByb29tIHRvIGNob3Agb2ZmIDQgYnl0ZXMsCiAJCQkJICogYW5kIHRoYXQgdGhlIGVuZCBhbGln
bm1lbnQgd2lsbCB3b3JrIG91dCB0bwogCQkJCSAqIHRoaXMgaGFyZHdhcmUncyByZXF1aXJlbWVu
dHMKQEAgLTMxOTEsNiArMzE5Miw3IEBAIHN0YXRpYyBuZXRkZXZfdHhfdCBlMTAwMF94bWl0X2Zy
YW1lKHN0cnVjdCBza19idWZmICpza2IsCiAJCQkJfQogCQkJCWxlbiA9IHNrYl9oZWFkbGVuKHNr
Yik7CiAJCQkJYnJlYWs7CisJCQl9CiAJCQlkZWZhdWx0OgogCQkJCS8qIGRvIG5vdGhpbmcgKi8K
IAkJCQlicmVhazsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
