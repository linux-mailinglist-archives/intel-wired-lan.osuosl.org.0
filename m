Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF6532570B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Feb 2021 20:48:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26D824332B;
	Thu, 25 Feb 2021 19:48:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X6ANObhZ_SG1; Thu, 25 Feb 2021 19:48:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C5E4432F5;
	Thu, 25 Feb 2021 19:48:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A4C21BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 19:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 337F74EF53
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 19:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=cesnet.cz
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0g43--Zh48GX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Feb 2021 19:06:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from office2.cesnet.cz (office2.cesnet.cz [195.113.144.244])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DE0144EF4D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 19:06:47 +0000 (UTC)
Received: from localhost (e-78-106.eduroam.fit.cvut.cz [147.32.78.106])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by office2.cesnet.cz (Postfix) with ESMTPSA id 5CE4C400064;
 Thu, 25 Feb 2021 20:06:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cesnet.cz;
 s=office2-2020; t=1614280004;
 bh=ERMZCjkdsIX9PRSwtqVh0eO0Su7gVbK6OqiUp9Kjb64=;
 h=Resent-Date:Resent-From:Resent-To:Resent-Cc:From:Date:Subject:To:
 Cc;
 b=Ac8Yj24NlLzj3dW+RGbREuHTg/lKFMH39jgynesBq1psBKtX1vjXaZMH0sqKbtGR5
 cHvPKjPVtBIPTKfTXKM2YRWZtQCzrQHthoM0ppyGhDHr7vj0xWaYllIETN3Tqi51xq
 KcSq7wp7mEIp2iR5/V2jxU78XeNczZdA1lJU9mUHQ+Ivnm7BMBnS89sjEItFpNjz1F
 YevdKe5JZ5NQ4UpxbbBssGnj8767yFz8FsnmHdbTDXoh7S6NuOjyI9y0luL6YUcqNW
 6dYijJ4kfP7eSpX0hbmFC5K9lkIAyy4WXGvUzGDxfo1sIDOVZC247/pHkJj82YCrTY
 iHPJdNWeVecDw==
Resent-Date: Thu, 25 Feb 2021 20:06:42 +0100
Resent-Message-ID: <fdd629e2-c87a-43b7-bcc0-f4c39337047a@cesnet.cz>
Resent-From: =?iso-8859-1?Q?Jan_Kundr=E1t?= <jan.kundrat@cesnet.cz>
Resent-To: "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, <intel-wired-lan@lists.osuosl.org>
Resent-Cc: Carolyn Wyborny <carolyn.wyborny@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
 <linux-i2c@vger.kernel.org>,
 =?utf-8?B?RnJhbnRpxaFlayBSecWhw6FuZWs=?= <rysanek@fccps.cz>
Message-Id: <5a9f1aed25a6df32337b9ac1140339d783abb6d8.1614279918.git.jan.kundrat@cesnet.cz>
From: =?UTF-8?q?Jan=20Kundr=C3=A1t?= <jan.kundrat@cesnet.cz>
Date: Thu, 25 Feb 2021 18:31:48 +0100
MIME-Version: 1.0
To: David S. Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Thu, 25 Feb 2021 19:48:20 +0000
Subject: [Intel-wired-lan] [PATCH] igb: unbreak I2C bit-banging on i350
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
Cc: netdev@vger.kernel.org, František Ryšánek <rysanek@fccps.cz>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhlIGRyaXZlciB0cmllZCB0byB1c2UgTGludXgnIG5hdGl2ZSBzb2Z0d2FyZSBJMkMgYnVzIG1h
c3RlcgooaTJjLWFsZ28tYml0cykgZm9yIGV4cG9ydGluZyB0aGUgSTJDIGludGVyZmFjZSB0aGF0
IHRhbGtzIHRvIHRoZSBTRlAKY2FnZShzKSB0b3dhcmRzIHVzZXJzcGFjZS4gQXMtaXMsIGhvd2V2
ZXIsIHRoZSBwaHlzaWNhbCBTQ0wvU0RBIHBpbnMKd2VyZSBub3QgbW92aW5nIGF0IGFsbCwgc3Rh
eWluZyBhdCBsb2dpY2FsIDEgYWxsIHRoZSB0aW1lLgoKVGhlIG1haW4gY3VscHJpdCB3YXMgdGhl
IEkyQ1BBUkFNUyByZWdpc3RlciB3aGVyZSBpZ2Igd2FzIG5vdCBzZXR0aW5nCnRoZSBJMkNCQl9F
TiBiaXQuIFRoYXQgbWVhbnQgdGhhdCBhbGwgdGhlIGNhcmVmdWwgc2lnbmFsIGJpdC1iYW5naW5n
IHdhcwphY3R1YWxseSBub3QgYmVpbmcgcHJvcGFnYXRlZCB0byB0aGUgY2hpcCBwYWRzIChJIHZl
cmlmaWVkIHRoaXMgd2l0aCBhCnNjb3BlKS4KClRoZSBiaXQtYmFuZ2luZyB3YXMgbm90IGNvcnJl
Y3QgZWl0aGVyLCBiZWNhdXNlIEkyQyBpcyBzdXBwb3NlZCB0byBiZSBhbgpvcGVuLWNvbGxlY3Rv
ciBidXMsIGFuZCB0aGUgY29kZSB3YXMgZHJpdmluZyBib3RoIGxpbmVzIHZpYSBhIHRvdGVtCnBv
bGUuIFRoZSBjb2RlIHdhcyBhbHNvIHRyeWluZyB0byBkbyBvcGVyYXRpb25zIHdoaWNoIGRpZCBu
b3QgbWFrZSBhbnkKc2Vuc2Ugd2l0aCB0aGUgaTJjLWFsZ28tYml0cywgbmFtZWx5IG1hbmlwdWxh
dGluZyBib3RoIFNEQSBhbmQgU0NMIGZyb20KaWdiX3NldF9pMmNfZGF0YSAod2hpY2ggaXMgb25s
eSBzdXBwb3NlZCB0byBzZXQgU0RBKS4gSSdtIG5vdCBzdXJlIGlmCnRoYXQgd2FzIG1lYW50IGFz
IGFuIG9wdGltaXphdGlvbiwgb3Igd2FzIGp1c3QgZmxhdCBvdXQgd3JvbmcsIGJ1dCBnaXZlbgp0
aGF0IHRoZSBpMmMtYWxnby1iaXRzIGlzIHNldCB1cCB0byB3b3JrIHdpdGggYSB0b3RhbGx5IGR1
bWIgR1BJTy1pc2gKaW1wbGVtZW50YXRpb24gdW5kZXJuZWF0aCwgdGhlcmUncyBubyBuZWVkIGZv
ciB0aGlzIGNvZGUgdG8gYmUgc21hcnQuCgpUaGUgb3Blbi1kcmFpbiB2cy4gdG90ZW0tcG9sZSBp
cyBmaXhlZCBieSB0aGUgdXN1YWwgdHJpY2sgd2hlcmUgdGhlCmxvZ2ljYWwgemVybyBpcyBpbXBs
ZW1lbnRlZCB2aWEgcmVndWxhciBvdXRwdXQgbW9kZSBhbmQgb3V0cHV0dGluZyBhCmxvZ2ljYWwg
MCwgYW5kIHRoZSBsb2dpY2FsIGhpZ2ggaXMgaW1wbGVtZW50ZWQgdmlhIHRoZSBJTyBwYWQgY29u
ZmlndXJlZAphcyBhbiBpbnB1dCAodGh1cyBmbG9hdGluZyksIGFuZCBsZXR0aW5nIHRoZSBtYW5k
YXRvcnkgcHVsbC11cCByZXNpc3RvcnMKZG8gdGhlIHJlc3QuIEFueXRoaW5nIGVsc2UgaXMgYWN0
dWFsbHkgd3Jvbmcgb24gSTJDIHdoZXJlIGFsbCBkZXZpY2VzCmFyZSBzdXBwb3NlZCB0byBoYXZl
IG9wZW4tZHJhaW4gY29ubmVjdGlvbiB0byB0aGUgYnVzLgoKVGhlIG1pc3NpbmcgSTJDQkJfRU4g
aXMgc2V0IChhbG9uZyB3aXRoIGEgc2FmZSBpbml0aWFsIHZhbHVlIG9mIHRoZQpHUElPcykganVz
dCBiZWZvcmUgcmVnaXN0ZXJpbmcgdGhpcyBzb2Z0d2FyZSBJMkMgYnVzLgoKVGhlIGNoaXAgZGF0
YXNoZWV0IG1lbnRpb25zIEhXLWltcGxlbWVudGVkIEkyQyB0cmFuc2FjdGlvbnMgKFNGUCBFRVBS
T00KcmVhZHMgYW5kIHdyaXRlcykgYXMgd2VsbCwgYnV0IEknbSBub3QgdG91Y2hpbmcgdGhlc2Ug
Zm9yIHNpbXBsaWNpdHkuCgpUZXN0ZWQgb24gYSBMUi1MaW5rIExSRVMyMjAzUEYtMlNGUCAod2hp
Y2ggaXMgYW4gYWxtb3N0LW1pbmlQQ0llIGZvcm0KZmFjdG9yIGNhcmQsIGEgY2FibGUsIGFuZCBh
IG1vZHVsZSB3aXRoIHR3byBTRlAgY2FnZXMpLiBUaGVyZSB3YXMgb25lCmNhc3VhbHR5LCBhbiBv
bGQgYnJva2VuIFNGUCB3ZSBoYWQgbGF5aW5nIGFyb3VuZCwgd2hpY2ggd2FzIHVzZWQgdG8Kc29s
ZGVyIHNvbWUgdGhpbiB3aXJlcyBhcyBhIERJWSBJMkMgYnJlYWtvdXQuIFRoYW5rcyBmb3IgeW91
ciBzZXJ2aWNlLgpXaXRoIHRoaXMgcGF0Y2ggaW4gcGxhY2UsIEkgY2FuIGBpMmNkdW1wIC15IDMg
MHg1MSBjYCBhbmQgcmVhZCBiYWNrIGRhdGEKd2hpY2ggbWFrZSBzZW5zZS4gWWF5LgoKU2lnbmVk
LW9mZi1ieTogSmFuIEt1bmRyw6F0IDxqYW4ua3VuZHJhdEBjZXNuZXQuY3o+ClNlZS1hbHNvOiBo
dHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9uZXRkZXYvbXNnNDkwNTU0Lmh0bWwKLS0tCiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYyB8IDIzICsrKysrKysrKysr
KysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21h
aW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCmluZGV4IGQ5
YzNhNmIxNjlmOS4uOWYzYWViNjM2ZTRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiX21haW4uYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2IvaWdiX21haW4uYwpAQCAtNTc2LDE2ICs1NzYsMTUgQEAgc3RhdGljIHZvaWQgaWdiX3NldF9p
MmNfZGF0YSh2b2lkICpkYXRhLCBpbnQgc3RhdGUpCiAJc3RydWN0IGUxMDAwX2h3ICpodyA9ICZh
ZGFwdGVyLT5odzsKIAlzMzIgaTJjY3RsID0gcmQzMihFMTAwMF9JMkNQQVJBTVMpOwogCi0JaWYg
KHN0YXRlKQotCQlpMmNjdGwgfD0gRTEwMDBfSTJDX0RBVEFfT1VUOwotCWVsc2UKKwlpZiAoc3Rh
dGUpIHsKKwkJaTJjY3RsIHw9IEUxMDAwX0kyQ19EQVRBX09VVCB8IEUxMDAwX0kyQ19EQVRBX09F
X047CisJfSBlbHNlIHsKKwkJaTJjY3RsICY9IH5FMTAwMF9JMkNfREFUQV9PRV9OOwogCQlpMmNj
dGwgJj0gfkUxMDAwX0kyQ19EQVRBX09VVDsKKwl9CiAKLQlpMmNjdGwgJj0gfkUxMDAwX0kyQ19E
QVRBX09FX047Ci0JaTJjY3RsIHw9IEUxMDAwX0kyQ19DTEtfT0VfTjsKIAl3cjMyKEUxMDAwX0ky
Q1BBUkFNUywgaTJjY3RsKTsKIAl3cmZsKCk7Ci0KIH0KIAogLyoqCkBAIC02MDIsOCArNjAxLDcg
QEAgc3RhdGljIHZvaWQgaWdiX3NldF9pMmNfY2xrKHZvaWQgKmRhdGEsIGludCBzdGF0ZSkKIAlz
MzIgaTJjY3RsID0gcmQzMihFMTAwMF9JMkNQQVJBTVMpOwogCiAJaWYgKHN0YXRlKSB7Ci0JCWky
Y2N0bCB8PSBFMTAwMF9JMkNfQ0xLX09VVDsKLQkJaTJjY3RsICY9IH5FMTAwMF9JMkNfQ0xLX09F
X047CisJCWkyY2N0bCB8PSBFMTAwMF9JMkNfQ0xLX09VVCB8IEUxMDAwX0kyQ19DTEtfT0VfTjsK
IAl9IGVsc2UgewogCQlpMmNjdGwgJj0gfkUxMDAwX0kyQ19DTEtfT1VUOwogCQlpMmNjdGwgJj0g
fkUxMDAwX0kyQ19DTEtfT0VfTjsKQEAgLTI5NTYsMTEgKzI5NTQsMjAgQEAgc3RhdGljIHZvaWQg
aWdiX2luaXRfbWFzKHN0cnVjdCBpZ2JfYWRhcHRlciAqYWRhcHRlcikKIHN0YXRpYyBzMzIgaWdi
X2luaXRfaTJjKHN0cnVjdCBpZ2JfYWRhcHRlciAqYWRhcHRlcikKIHsKIAlzMzIgc3RhdHVzID0g
MDsKKwlzMzIgaTJjY3RsOworCXN0cnVjdCBlMTAwMF9odyAqaHcgPSAmYWRhcHRlci0+aHc7CiAK
IAkvKiBJMkMgaW50ZXJmYWNlIHN1cHBvcnRlZCBvbiBpMzUwIGRldmljZXMgKi8KIAlpZiAoYWRh
cHRlci0+aHcubWFjLnR5cGUgIT0gZTEwMDBfaTM1MCkKIAkJcmV0dXJuIDA7CiAKKwlpMmNjdGwg
PSByZDMyKEUxMDAwX0kyQ1BBUkFNUyk7CisJaTJjY3RsIHw9IEUxMDAwX0kyQ0JCX0VOCisJCXwg
RTEwMDBfSTJDX0NMS19PVVQgfCBFMTAwMF9JMkNfQ0xLX09FX04KKwkJfCBFMTAwMF9JMkNfREFU
QV9PVVQgfCBFMTAwMF9JMkNfREFUQV9PRV9OOworCXdyMzIoRTEwMDBfSTJDUEFSQU1TLCBpMmNj
dGwpOworCXdyZmwoKTsKKwogCS8qIEluaXRpYWxpemUgdGhlIGkyYyBidXMgd2hpY2ggaXMgY29u
dHJvbGxlZCBieSB0aGUgcmVnaXN0ZXJzLgogCSAqIFRoaXMgYnVzIHdpbGwgdXNlIHRoZSBpMmNf
YWxnb19iaXQgc3RydWN0dWUgdGhhdCBpbXBsZW1lbnRzCiAJICogdGhlIHByb3RvY29sIHRocm91
Z2ggdG9nZ2xpbmcgb2YgdGhlIDQgYml0cyBpbiB0aGUgcmVnaXN0ZXIuCi0tIAoyLjMwLjAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
