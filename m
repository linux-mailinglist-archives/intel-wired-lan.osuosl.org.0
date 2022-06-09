Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F340254461C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jun 2022 10:39:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9489960E73;
	Thu,  9 Jun 2022 08:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mLzpMhlRAPwM; Thu,  9 Jun 2022 08:39:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82FE860C1C;
	Thu,  9 Jun 2022 08:39:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33A661BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 08:39:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2150083227
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 08:39:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=126.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oNWf6G4N3yiX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jun 2022 08:39:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from m15112.mail.126.com (m15112.mail.126.com [220.181.15.112])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0DAC82C3B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 08:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=TTVHM
 YekiVzHqVSZZqlsEXzEIs7mbYbLei3TTp2AbsY=; b=XioNkFUgJEn/eZayWzv7M
 XOJJ2+Y8+3Sukxjc2zdNBckBVwrA3t82OiT+gdLAqpL6bhXSyVQKPSPVkmve9QiK
 WAFs4pPQM2MKo9V8O+IdrGxlXCcNITas/XDJIQWdSEbbOvjAKAuxXzvUZMfERz6S
 jESiYXby/WJf4D16FkNTr0=
Received: from localhost.localdomain (unknown [223.104.63.29])
 by smtp2 (Coremail) with SMTP id DMmowADX3wO+saFiyuE9Cw--.2894S2;
 Thu, 09 Jun 2022 16:39:28 +0800 (CST)
From: Lixue Liang <lianglixuehao@126.com>
To: pmenzel@molgen.mpg.de
Date: Thu,  9 Jun 2022 08:39:04 +0000
Message-Id: <20220609083904.91778-1-lianglixuehao@126.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CM-TRANSID: DMmowADX3wO+saFiyuE9Cw--.2894S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZrWUuw1kKrWkGry8CFW3KFg_yoW5Aw13pa
 yUJayaqrykJr42q3ykXw48Xa45Ca4qqw45CrZxAw1F9Fn0qr4DArW8try7tryrGrWkCa17
 tr17ZFsrua1DAFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j8HUDUUUUU=
X-Originating-IP: [223.104.63.29]
X-CM-SenderInfo: xold0w5ol03vxkdrqiyswou0bp/1tbizgcbFl8RPQHANAABsD
Subject: [Intel-wired-lan] [PATCH v5] igb: Assign random MAC address instead
 of fail in case of invalid one
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
Cc: lianglixue@greatwall.com.cn, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogTGl4dWUgTGlhbmcgPGxpYW5nbGl4dWVAZ3JlYXR3YWxsLmNvbS5jbj4KCkluIHNvbWUg
Y2FzZXMsIHdoZW4gdGhlIHVzZXIgdXNlcyBpZ2Jfc2V0X2VlcHJvbSB0byBtb2RpZnkgdGhlIE1B
QyBhZGRyZXNzCnRvIGJlIGludmFsaWQsIG9yIGFuIGludmFsaWQgTUFDIGFkZHJlc3MgYXBwZWFy
cyB3aGVuIHdpdGggdW5pbml0aWFsaXplZApzYW1wbGVzLCB0aGUgaWdiIGRyaXZlciB3aWxsIGZh
aWwgdG8gbG9hZC4gSWYgdGhlcmUgaXMgbm8gbmV0d29yayBjYXJkCmRldmljZSwgdGhlIHVzZXIg
Y291bGQgbm90IGNvbnZlbmllbnRseSBtb2RpZnkgaXQgdG8gYSB2YWxpZCBNQUMgYWRkcmVzcywK
Zm9yIGV4YW1wbGUgdXNpbmcgZXRodG9vbCB0byBtb2RpZnkuCgpUaHJvdWdoIG1vZHVsZSBwYXJh
bWV0ZXIgdG8gc2V077yMd2hlbiB0aGUgTUFDIGFkZHJlc3MgaXMgaW52YWxpZCwgYSByYW5kb20K
dmFsaWQgTUFDIGFkZHJlc3MgY2FuIGJlIHVzZWQgdG8gY29udGludWUgbG9hZGluZyBhbmQgb3V0
cHV0IHJlbGV2YW50IGxvZwpyZW1pbmRlcnMuIEluIHRoaXMgd2F5LCB1c2VycyBjYW4gY29udmVu
aWVudGx5IGNvcnJlY3QgaW52YWxpZCBNQUMgYWRkcmVzcy4KClNpZ25lZC1vZmYtYnk6IExpeHVl
IExpYW5nIDxsaWFuZ2xpeHVlQGdyZWF0d2FsbC5jb20uY24+Ci0tLQpDaGFuZ2Vsb2c6CiogdjU6
CiAgLSBUaHJvdWdoIHRoZSBzZXR0aW5nIG9mIG1vZHVsZSBwYXJhbWV0ZXJzLCBpdCBpcyBhbGxv
d2VkIHRvIGNvbXBsZXRlCiAgICB0aGUgbG9hZGluZyBvZiB0aGUgaWdiIG5ldHdvcmsgY2FyZCBk
cml2ZXIgd2l0aCBhbiBpbnZhbGlkIE1BQyBhZGRyZXNzLgogIFN1Z2dlc3RlZC1ieSA8YWxleGFu
ZGVyLmR1eWNrQGdtYWlsLmNvbT4KKiB2NDoKICAtIENoYW5nZSB0aGUgaWdiX21pYW4gaW4gdGhl
IHRpdGxlIHRvIGlnYgogIC0gRml4IGRldl9lcnIgbWVzc2FnZTogcmVwbGFjZSAiYWxyZWFkeSBh
c3NpZ25lZCByYW5kb20gTUFDIGFkZHJlc3MiCiAgICB3aXRoICJJbnZhbGlkIE1BQyBhZGRyZXNz
LiBBc3NpZ25lZCByYW5kb20gTUFDIGFkZHJlc3MiCiAgU3VnZ2VzdGVkLWJ5IFRvbnkgPGFudGhv
bnkubC5uZ3V5ZW5AaW50ZWwuY29tPgoKKiB2MzoKICAtIEFkZCBzcGFjZSBhZnRlciBjb21tYSBp
biBjb21taXQgbWVzc2FnZQogIC0gQ29ycmVjdCBzcGVsbGluZyBvZiBNQUMgYWRkcmVzcwogIFN1
Z2dlc3RlZC1ieSBQYXVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+CgoqIHYyOgogIC0gQ2hhbmdl
IG1lbWNweSB0byBldGhlcl9hZGRyX2NvcHkKICAtIENoYW5nZSBkZXZfaW5mbyB0byBkZXZfZXJy
CiAgLSBGaXggdGhlIGRlc2NyaXB0aW9uIG9mIHRoZSBjb21taXQgbWVzc2FnZQogIC0gQ2hhbmdl
IGV0aF9yYW5kb21fYWRkciB0byBldGhfaHdfYWRkcl9yYW5kb20KICBSZXBvcnRlZC1ieToga2Vy
bmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+CgogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdiL2lnYl9tYWluLmMgfCAxNiArKysrKysrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MTMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYi9pZ2JfbWFpbi5jCmluZGV4IDM0YjMzYjIxZTBkYy4uODE2MmU4OTk5Y2NiIDEwMDY0
NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYworKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYwpAQCAtMjM4LDggKzIzOCwx
MSBAQCBNT0RVTEVfTElDRU5TRSgiR1BMIHYyIik7CiAKICNkZWZpbmUgREVGQVVMVF9NU0dfRU5B
QkxFIChORVRJRl9NU0dfRFJWfE5FVElGX01TR19QUk9CRXxORVRJRl9NU0dfTElOSykKIHN0YXRp
YyBpbnQgZGVidWcgPSAtMTsKK3N0YXRpYyB1bnNpZ25lZCBpbnQgaW52YWxpZF9tYWNfYWRkcmVz
c19hbGxvdzsKIG1vZHVsZV9wYXJhbShkZWJ1ZywgaW50LCAwKTsKK21vZHVsZV9wYXJhbShpbnZh
bGlkX21hY19hZGRyZXNzX2FsbG93LCB1aW50LCAwKTsKIE1PRFVMRV9QQVJNX0RFU0MoZGVidWcs
ICJEZWJ1ZyBsZXZlbCAoMD1ub25lLC4uLiwxNj1hbGwpIik7CitNT0RVTEVfUEFSTV9ERVNDKGlu
dmFsaWRfbWFjX2FkZHJlc3NfYWxsb3csICJBbGxvdyBOSUMgZHJpdmVyIHRvIGJlIGxvYWRlZCB3
aXRoIGludmFsaWQgTUFDIGFkZHJlc3MiKTsKIAogc3RydWN0IGlnYl9yZWdfaW5mbyB7CiAJdTMy
IG9mczsKQEAgLTMzNTksOSArMzM2MiwxNiBAQCBzdGF0aWMgaW50IGlnYl9wcm9iZShzdHJ1Y3Qg
cGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkKIAlldGhfaHdf
YWRkcl9zZXQobmV0ZGV2LCBody0+bWFjLmFkZHIpOwogCiAJaWYgKCFpc192YWxpZF9ldGhlcl9h
ZGRyKG5ldGRldi0+ZGV2X2FkZHIpKSB7Ci0JCWRldl9lcnIoJnBkZXYtPmRldiwgIkludmFsaWQg
TUFDIEFkZHJlc3NcbiIpOwotCQllcnIgPSAtRUlPOwotCQlnb3RvIGVycl9lZXByb207CisJCWlm
ICghaW52YWxpZF9tYWNfYWRkcmVzc19hbGxvdykgeworCQkJZGV2X2VycigmcGRldi0+ZGV2LCAi
SW52YWxpZCBNQUMgQWRkcmVzc1xuIik7CisJCQllcnIgPSAtRUlPOworCQkJZ290byBlcnJfZWVw
cm9tOworCQl9IGVsc2UgeworCQkJZXRoX2h3X2FkZHJfcmFuZG9tKG5ldGRldik7CisJCQlldGhl
cl9hZGRyX2NvcHkoaHctPm1hYy5hZGRyLCBuZXRkZXYtPmRldl9hZGRyKTsKKwkJCWRldl9lcnIo
JnBkZXYtPmRldiwKKwkJCQkiSW52YWxpZCBNQUMgYWRkcmVzcy4gQXNzaWduZWQgcmFuZG9tIE1B
QyBhZGRyZXNzXG4iKTsKKwkJfQogCX0KIAogCWlnYl9zZXRfZGVmYXVsdF9tYWNfZmlsdGVyKGFk
YXB0ZXIpOwotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
