Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A7A1F253D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 01:27:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6102487765;
	Mon,  8 Jun 2020 23:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MCiXsx2mkqkE; Mon,  8 Jun 2020 23:27:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6AE15877D4;
	Mon,  8 Jun 2020 23:27:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 961811BF381
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:27:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8DC86204FB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:27:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X5y8bwPA8euA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2020 23:27:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B244421509
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:27:06 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C23820853;
 Mon,  8 Jun 2020 23:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658826;
 bh=5Je26gO6C3CocQCMRXvtb19WLm+OtkVowkKyukTrP44=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=s+OLnPjg0RrgajBOafGl0xk/aMuY27nrlS0bwr/kDM3moY+sdU2B9awktmW+S//ie
 0nG7O1eWK1KOG6DLL33miHWRPKk3Yx8HdzA+/YCA4pkLysITWlc+nwDfq+rCHs7bmK
 oZsNKSrpXKKKzK51bgBRT+4O3BlCWmdTTd23dK+c=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  8 Jun 2020 19:26:08 -0400
Message-Id: <20200608232640.3370262-18-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232640.3370262-1-sashal@kernel.org>
References: <20200608232640.3370262-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 4.9 18/50] e1000: Distribute
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
bi5jCmluZGV4IDM5YTA5ZTE4YzFiNy4uM2IxNmVlMGRlMjQ2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9tYWluLmMKKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDBfbWFpbi5jCkBAIC0zMTY3LDggKzMxNjcsOSBAQCBz
dGF0aWMgbmV0ZGV2X3R4X3QgZTEwMDBfeG1pdF9mcmFtZShzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAog
CQloZHJfbGVuID0gc2tiX3RyYW5zcG9ydF9vZmZzZXQoc2tiKSArIHRjcF9oZHJsZW4oc2tiKTsK
IAkJaWYgKHNrYi0+ZGF0YV9sZW4gJiYgaGRyX2xlbiA9PSBsZW4pIHsKIAkJCXN3aXRjaCAoaHct
Pm1hY190eXBlKSB7CisJCQljYXNlIGUxMDAwXzgyNTQ0OiB7CiAJCQkJdW5zaWduZWQgaW50IHB1
bGxfc2l6ZTsKLQkJCWNhc2UgZTEwMDBfODI1NDQ6CisKIAkJCQkvKiBNYWtlIHN1cmUgd2UgaGF2
ZSByb29tIHRvIGNob3Agb2ZmIDQgYnl0ZXMsCiAJCQkJICogYW5kIHRoYXQgdGhlIGVuZCBhbGln
bm1lbnQgd2lsbCB3b3JrIG91dCB0bwogCQkJCSAqIHRoaXMgaGFyZHdhcmUncyByZXF1aXJlbWVu
dHMKQEAgLTMxODksNiArMzE5MCw3IEBAIHN0YXRpYyBuZXRkZXZfdHhfdCBlMTAwMF94bWl0X2Zy
YW1lKHN0cnVjdCBza19idWZmICpza2IsCiAJCQkJfQogCQkJCWxlbiA9IHNrYl9oZWFkbGVuKHNr
Yik7CiAJCQkJYnJlYWs7CisJCQl9CiAJCQlkZWZhdWx0OgogCQkJCS8qIGRvIG5vdGhpbmcgKi8K
IAkJCQlicmVhazsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
