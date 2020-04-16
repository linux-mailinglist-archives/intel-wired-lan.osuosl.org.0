Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C451AC968
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2020 17:23:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B806B22660;
	Thu, 16 Apr 2020 15:23:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zW+YRtg1qnhr; Thu, 16 Apr 2020 15:23:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3499822650;
	Thu, 16 Apr 2020 15:23:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 76D6C1BF8B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 09:50:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 72C6186EC8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 09:50:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1cxp7PRHLnre for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2020 09:50:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from michel.telenet-ops.be (michel.telenet-ops.be [195.130.137.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4534C86D73
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 09:50:54 +0000 (UTC)
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:fd83:81bb:c1d7:433d])
 by michel.telenet-ops.be with bizsmtp
 id TMqr220064dKHqf06Mqrzy; Thu, 16 Apr 2020 11:50:51 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jP1AZ-00013K-2g; Thu, 16 Apr 2020 11:50:51 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jP1AZ-0003N5-0d; Thu, 16 Apr 2020 11:50:51 +0200
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S . Miller" <davem@davemloft.net>
Date: Thu, 16 Apr 2020 11:50:49 +0200
Message-Id: <20200416095049.12917-1-geert@linux-m68k.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 16 Apr 2020 15:23:01 +0000
Subject: [Intel-wired-lan] [PATCH] virtchnl: Add missing explicit padding to
 structures
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gZS5nLiBtNjhrLCB0aGUgYWxpZ25tZW50IG9mIDMyLWJpdCB2YWx1ZXMgaXMgb25seSAyIGJ5
dGVzLCBsZWFkaW5nCnRvOgoKICAgIC4vaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaDoxNDc6
MzY6IHdhcm5pbmc6IGRpdmlzaW9uIGJ5IHplcm8gWy1XZGl2LWJ5LXplcm9dCiAgICAgIHsgdmly
dGNobmxfc3RhdGljX2Fzc2VydF8jI1ggPSAobikvKChzaXplb2Yoc3RydWN0IFgpID09IChuKSkg
PyAxIDogMCkgfQoJCQkJCV4KICAgIC4vaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaDo1Nzc6
MTogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmFZJUlRDSE5MX0NIRUNLX1NUUlVDVF9M
RU7igJkKICAgICBWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVOKDI3MiwgdmlydGNobmxfZmlsdGVy
KTsKICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CiAgICAuL2luY2x1ZGUvbGludXgvYXZm
L3ZpcnRjaG5sLmg6NTc3OjMyOiBlcnJvcjogZW51bWVyYXRvciB2YWx1ZSBmb3Ig4oCYdmlydGNo
bmxfc3RhdGljX2Fzc2VydF92aXJ0Y2hubF9maWx0ZXLigJkgaXMgbm90IGFuIGludGVnZXIgY29u
c3RhbnQKICAgICBWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVOKDI3MiwgdmlydGNobmxfZmlsdGVy
KTsKCQkJCSAgICBefn5+fn5+fn5+fn5+fn4KICAgIC4vaW5jbHVkZS9saW51eC9hdmYvdmlydGNo
bmwuaDoxNDc6NTM6IG5vdGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8g4oCYVklSVENITkxfQ0hF
Q0tfU1RSVUNUX0xFTuKAmQogICAgICB7IHZpcnRjaG5sX3N0YXRpY19hc3NlcnRfIyNYID0gKG4p
Lygoc2l6ZW9mKHN0cnVjdCBYKSA9PSAobikpID8gMSA6IDApIH0KCQkJCQkJCSBeCiAgICAuL2lu
Y2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmg6MTQ3OjM2OiB3YXJuaW5nOiBkaXZpc2lvbiBieSB6
ZXJvIFstV2Rpdi1ieS16ZXJvXQogICAgICB7IHZpcnRjaG5sX3N0YXRpY19hc3NlcnRfIyNYID0g
KG4pLygoc2l6ZW9mKHN0cnVjdCBYKSA9PSAobikpID8gMSA6IDApIH0KCQkJCQleCiAgICAuL2lu
Y2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmg6NjE5OjE6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBt
YWNybyDigJhWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVO4oCZCiAgICAgVklSVENITkxfQ0hFQ0tf
U1RSVUNUX0xFTigxNiwgdmlydGNobmxfcGZfZXZlbnQpOwogICAgIF5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn4KICAgIC4vaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaDo2MTk6MzE6IGVycm9y
OiBlbnVtZXJhdG9yIHZhbHVlIGZvciDigJh2aXJ0Y2hubF9zdGF0aWNfYXNzZXJ0X3ZpcnRjaG5s
X3BmX2V2ZW504oCZIGlzIG5vdCBhbiBpbnRlZ2VyIGNvbnN0YW50CiAgICAgVklSVENITkxfQ0hF
Q0tfU1RSVUNUX0xFTigxNiwgdmlydGNobmxfcGZfZXZlbnQpOwoJCQkJICAgXn5+fn5+fn5+fn5+
fn5+fn4KICAgIC4vaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaDoxNDc6NTM6IG5vdGU6IGlu
IGRlZmluaXRpb24gb2YgbWFjcm8g4oCYVklSVENITkxfQ0hFQ0tfU1RSVUNUX0xFTuKAmQogICAg
ICB7IHZpcnRjaG5sX3N0YXRpY19hc3NlcnRfIyNYID0gKG4pLygoc2l6ZW9mKHN0cnVjdCBYKSA9
PSAobikpID8gMSA6IDApIH0KCQkJCQkJCSBeCiAgICAuL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRj
aG5sLmg6MTQ3OjM2OiB3YXJuaW5nOiBkaXZpc2lvbiBieSB6ZXJvIFstV2Rpdi1ieS16ZXJvXQog
ICAgICB7IHZpcnRjaG5sX3N0YXRpY19hc3NlcnRfIyNYID0gKG4pLygoc2l6ZW9mKHN0cnVjdCBY
KSA9PSAobikpID8gMSA6IDApIH0KCQkJCQleCiAgICAuL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRj
aG5sLmg6NjQwOjE6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhWSVJUQ0hOTF9DSEVD
S19TVFJVQ1RfTEVO4oCZCiAgICAgVklSVENITkxfQ0hFQ0tfU1RSVUNUX0xFTigxMiwgdmlydGNo
bmxfaXdhcnBfcXZfaW5mbyk7CiAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgogICAgLi9p
bmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oOjY0MDozMTogZXJyb3I6IGVudW1lcmF0b3IgdmFs
dWUgZm9yIOKAmHZpcnRjaG5sX3N0YXRpY19hc3NlcnRfdmlydGNobmxfaXdhcnBfcXZfaW5mb+KA
mSBpcyBub3QgYW4gaW50ZWdlciBjb25zdGFudAogICAgIFZJUlRDSE5MX0NIRUNLX1NUUlVDVF9M
RU4oMTIsIHZpcnRjaG5sX2l3YXJwX3F2X2luZm8pOwoJCQkJICAgXn5+fn5+fn5+fn5+fn5+fn5+
fn5+fgogICAgLi9pbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oOjE0Nzo1Mzogbm90ZTogaW4g
ZGVmaW5pdGlvbiBvZiBtYWNybyDigJhWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVO4oCZCiAgICAg
IHsgdmlydGNobmxfc3RhdGljX2Fzc2VydF8jI1ggPSAobikvKChzaXplb2Yoc3RydWN0IFgpID09
IChuKSkgPyAxIDogMCkgfQoJCQkJCQkJIF4KICAgIC4vaW5jbHVkZS9saW51eC9hdmYvdmlydGNo
bmwuaDoxNDc6MzY6IHdhcm5pbmc6IGRpdmlzaW9uIGJ5IHplcm8gWy1XZGl2LWJ5LXplcm9dCiAg
ICAgIHsgdmlydGNobmxfc3RhdGljX2Fzc2VydF8jI1ggPSAobikvKChzaXplb2Yoc3RydWN0IFgp
ID09IChuKSkgPyAxIDogMCkgfQoJCQkJCV4KICAgIC4vaW5jbHVkZS9saW51eC9hdmYvdmlydGNo
bmwuaDo2NDc6MTogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmFZJUlRDSE5MX0NIRUNL
X1NUUlVDVF9MRU7igJkKICAgICBWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVOKDE2LCB2aXJ0Y2hu
bF9pd2FycF9xdmxpc3RfaW5mbyk7CiAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgogICAg
Li9pbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oOjY0NzozMTogZXJyb3I6IGVudW1lcmF0b3Ig
dmFsdWUgZm9yIOKAmHZpcnRjaG5sX3N0YXRpY19hc3NlcnRfdmlydGNobmxfaXdhcnBfcXZsaXN0
X2luZm/igJkgaXMgbm90IGFuIGludGVnZXIgY29uc3RhbnQKICAgICBWSVJUQ0hOTF9DSEVDS19T
VFJVQ1RfTEVOKDE2LCB2aXJ0Y2hubF9pd2FycF9xdmxpc3RfaW5mbyk7CgkJCQkgICBefn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fgogICAgLi9pbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oOjE0
Nzo1Mzogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDigJhWSVJUQ0hOTF9DSEVDS19TVFJV
Q1RfTEVO4oCZCiAgICAgIHsgdmlydGNobmxfc3RhdGljX2Fzc2VydF8jI1ggPSAobikvKChzaXpl
b2Yoc3RydWN0IFgpID09IChuKSkgPyAxIDogMCkgfQoJCQkJCQkJIF4KCkZpeCB0aGlzIGJ5IGFk
ZGluZyBleHBsaWNpdCBwYWRkaW5nIHRvIHN0cnVjdHVyZXMgd2l0aCBob2xlcy4KClJlcG9ydGVk
LWJ5OiBub3JlcGx5QGVsbGVybWFuLmlkLmF1ClNpZ25lZC1vZmYtYnk6IEdlZXJ0IFV5dHRlcmhv
ZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5vcmc+Ci0tLQpFeHBvc2VkIGJ5IHRoZSAic2VsZWN0IFBD
SSIgaW4gY29tbWl0IDRiZTVlODY0OGIwYzI4N2EgKCJtZWRpYTogbW92ZSBDRUMKcGxhdGZvcm0g
ZHJpdmVycyB0byBhIHNlcGFyYXRlIGRpcmVjdG9yeSIpLgotLS0KIGluY2x1ZGUvbGludXgvYXZm
L3ZpcnRjaG5sLmggfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaCBiL2luY2x1ZGUvbGludXgv
YXZmL3ZpcnRjaG5sLmgKaW5kZXggY2E5NTZiNjcyYWMwZjc1OS4uNDBiYWQ3MTg2NWVhNzYyOCAx
MDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaAorKysgYi9pbmNsdWRlL2xp
bnV4L2F2Zi92aXJ0Y2hubC5oCkBAIC00NzYsNiArNDc2LDcgQEAgc3RydWN0IHZpcnRjaG5sX3Jz
c19rZXkgewogCXUxNiB2c2lfaWQ7CiAJdTE2IGtleV9sZW47CiAJdTgga2V5WzFdOyAgICAgICAg
IC8qIFJTUyBoYXNoIGtleSwgcGFja2VkIGJ5dGVzICovCisJdTggcGFkWzFdOwogfTsKIAogVklS
VENITkxfQ0hFQ0tfU1RSVUNUX0xFTig2LCB2aXJ0Y2hubF9yc3Nfa2V5KTsKQEAgLTQ4NCw2ICs0
ODUsNyBAQCBzdHJ1Y3QgdmlydGNobmxfcnNzX2x1dCB7CiAJdTE2IHZzaV9pZDsKIAl1MTYgbHV0
X2VudHJpZXM7CiAJdTggbHV0WzFdOyAgICAgICAgLyogUlNTIGxvb2t1cCB0YWJsZSAqLworCXU4
IHBhZFsxXTsKIH07CiAKIFZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4oNiwgdmlydGNobmxfcnNz
X2x1dCk7CkBAIC01NzIsNiArNTc0LDcgQEAgc3RydWN0IHZpcnRjaG5sX2ZpbHRlciB7CiAJZW51
bQl2aXJ0Y2hubF9hY3Rpb24gYWN0aW9uOwogCXUzMglhY3Rpb25fbWV0YTsKIAl1OAlmaWVsZF9m
bGFnczsKKwl1OAlwYWRbM107CiB9OwogCiBWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVOKDI3Miwg
dmlydGNobmxfZmlsdGVyKTsKQEAgLTYxMCw2ICs2MTMsNyBAQCBzdHJ1Y3QgdmlydGNobmxfcGZf
ZXZlbnQgewogCQkJLyogbGlua19zcGVlZCBwcm92aWRlZCBpbiBNYnBzICovCiAJCQl1MzIgbGlu
a19zcGVlZDsKIAkJCXU4IGxpbmtfc3RhdHVzOworCQkJdTggcGFkWzNdOwogCQl9IGxpbmtfZXZl
bnRfYWR2OwogCX0gZXZlbnRfZGF0YTsKIApAQCAtNjM1LDYgKzYzOSw3IEBAIHN0cnVjdCB2aXJ0
Y2hubF9pd2FycF9xdl9pbmZvIHsKIAl1MTYgY2VxX2lkeDsKIAl1MTYgYWVxX2lkeDsKIAl1OCBp
dHJfaWR4OworCXU4IHBhZFszXTsKIH07CiAKIFZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4oMTIs
IHZpcnRjaG5sX2l3YXJwX3F2X2luZm8pOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
