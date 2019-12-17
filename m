Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C811234A2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2019 19:20:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8656386D9A;
	Tue, 17 Dec 2019 18:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UlcD2M2MPTXl; Tue, 17 Dec 2019 18:20:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E05C387589;
	Tue, 17 Dec 2019 18:20:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 033F21BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 12:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F2FEE2034D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 12:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lyR3DkA66xfL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2019 12:27:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by silver.osuosl.org (Postfix) with ESMTPS id 85FDB203F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 12:27:21 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 868097557868119F8E09;
 Tue, 17 Dec 2019 20:27:17 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 17 Dec 2019 20:27:10 +0800
To: <jeffrey.t.kirsher@intel.com>, <davem@davemloft.net>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "hushiyuan@huawei.com"
 <hushiyuan@huawei.com>, "linfeilong@huawei.com" <linfeilong@huawei.com>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <b0cf9969-bb56-2ccb-cf16-025eb700a24e@huawei.com>
Date: Tue, 17 Dec 2019 20:26:34 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 17 Dec 2019 18:20:49 +0000
Subject: [Intel-wired-lan] [PATCH] e100: remove unused varibale err in
 e100_diag_test()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhpcyBwYXRjaCBmaXggZm9sbG93aW5nIHdhcm5pbmc6CmRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2UxMDAuYzogSW4gZnVuY3Rpb24g4oCYZTEwMF9kaWFnX3Rlc3TigJk6CmRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2UxMDAuYzoyNjAwOjk6IHdhcm5pbmc6IHZhcmlhYmxlIOKAmGVycuKA
mSBzZXQKYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQogIGludCBpLCBl
cnI7CiAgICAgICAgIF5+fgoKU2lnbmVkLW9mZi1ieTogWXVuZmVuZyBZZSA8eWV5dW5mZW5nQGh1
YXdlaS5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMC5jIHwgNiArKyst
LS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMC5jIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvZTEwMC5jCmluZGV4IGE2NWQ1YTliYTdkYi4uZjFjYjQ5M2E4MTFmIDEw
MDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwLmMKKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMC5jCkBAIC0yNTk3LDcgKzI1OTcsNyBAQCBzdGF0aWMg
dm9pZCBlMTAwX2RpYWdfdGVzdChzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LAogewogCXN0cnVj
dCBldGh0b29sX2NtZCBjbWQ7CiAJc3RydWN0IG5pYyAqbmljID0gbmV0ZGV2X3ByaXYobmV0ZGV2
KTsKLQlpbnQgaSwgZXJyOworCWludCBpOwoKIAltZW1zZXQoZGF0YSwgMCwgRTEwMF9URVNUX0xF
TiAqIHNpemVvZih1NjQpKTsKIAlkYXRhWzBdID0gIW1paV9saW5rX29rKCZuaWMtPm1paSk7CkBA
IC0yNjA1LDcgKzI2MDUsNyBAQCBzdGF0aWMgdm9pZCBlMTAwX2RpYWdfdGVzdChzdHJ1Y3QgbmV0
X2RldmljZSAqbmV0ZGV2LAogCWlmICh0ZXN0LT5mbGFncyAmIEVUSF9URVNUX0ZMX09GRkxJTkUp
IHsKCiAJCS8qIHNhdmUgc3BlZWQsIGR1cGxleCAmIGF1dG9uZWcgc2V0dGluZ3MgKi8KLQkJZXJy
ID0gbWlpX2V0aHRvb2xfZ3NldCgmbmljLT5taWksICZjbWQpOworCQltaWlfZXRodG9vbF9nc2V0
KCZuaWMtPm1paSwgJmNtZCk7CgogCQlpZiAobmV0aWZfcnVubmluZyhuZXRkZXYpKQogCQkJZTEw
MF9kb3duKG5pYyk7CkBAIC0yNjE0LDcgKzI2MTQsNyBAQCBzdGF0aWMgdm9pZCBlMTAwX2RpYWdf
dGVzdChzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LAogCQlkYXRhWzRdID0gZTEwMF9sb29wYmFj
a190ZXN0KG5pYywgbGJfcGh5KTsKCiAJCS8qIHJlc3RvcmUgc3BlZWQsIGR1cGxleCAmIGF1dG9u
ZWcgc2V0dGluZ3MgKi8KLQkJZXJyID0gbWlpX2V0aHRvb2xfc3NldCgmbmljLT5taWksICZjbWQp
OworCQltaWlfZXRodG9vbF9zc2V0KCZuaWMtPm1paSwgJmNtZCk7CgogCQlpZiAobmV0aWZfcnVu
bmluZyhuZXRkZXYpKQogCQkJZTEwMF91cChuaWMpOwotLSAKMi43LjQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
