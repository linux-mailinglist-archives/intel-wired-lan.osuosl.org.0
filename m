Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E792709C4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Sep 2020 03:52:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A30208795C;
	Sat, 19 Sep 2020 01:52:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l4Mto+RdXZv3; Sat, 19 Sep 2020 01:52:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E74687A47;
	Sat, 19 Sep 2020 01:52:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1FAA11BF83C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Sep 2020 01:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1893087493
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Sep 2020 01:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8QBuAUzH0Xd6 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Sep 2020 01:49:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CAB538748B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Sep 2020 01:49:37 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 84F359BA2C670F7431DF;
 Sat, 19 Sep 2020 09:49:33 +0800 (CST)
Received: from ubuntu.network (10.175.138.68) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Sat, 19 Sep 2020 09:49:26 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <jeffrey.t.kirsher@intel.com>, <davem@davemloft.net>, <kuba@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Date: Sat, 19 Sep 2020 09:50:20 +0800
Message-ID: <20200919015020.22963-1-zhengyongjun3@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.138.68]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Sat, 19 Sep 2020 01:52:32 +0000
Subject: [Intel-wired-lan] [PATCH net-next] net: e1000: Remove set but not
 used variable
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
Cc: Zheng Yongjun <zhengyongjun3@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Rml4ZXMgZ2NjICctV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlJyB3YXJuaW5nOgoKZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDBfaHcuYzogSW4gZnVuY3Rpb24gZTEwMDBfcGh5
X2luaXRfc2NyaXB0Ogpkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9ody5j
OjEzMjo2OiB3YXJuaW5nOiB2YXJpYWJsZSDigJhyZXRfdmFs4oCZIHNldCBidXQgbm90IHVzZWQg
Wy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCgpgcmV0X3ZhbGAgaXMgbmV2ZXIgdXNlZCwgc28g
cmVtb3ZlIGl0LgoKU2lnbmVkLW9mZi1ieTogWmhlbmcgWW9uZ2p1biA8emhlbmd5b25nanVuM0Bo
dWF3ZWkuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX2h3
LmMgfCAzICstLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX2h3
LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9ody5jCmluZGV4IDRl
N2EwODEwZWFlYi4uZjFkYmQ3YjhlZTMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9lMTAwMC9lMTAwMF9ody5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2UxMDAwL2UxMDAwX2h3LmMKQEAgLTEyOSw3ICsxMjksNiBAQCBzdGF0aWMgczMyIGUxMDAwX3Nl
dF9waHlfdHlwZShzdHJ1Y3QgZTEwMDBfaHcgKmh3KQogICovCiBzdGF0aWMgdm9pZCBlMTAwMF9w
aHlfaW5pdF9zY3JpcHQoc3RydWN0IGUxMDAwX2h3ICpodykKIHsKLQl1MzIgcmV0X3ZhbDsKIAl1
MTYgcGh5X3NhdmVkX2RhdGE7CiAKIAlpZiAoaHctPnBoeV9pbml0X3NjcmlwdCkgewpAQCAtMTM4
LDcgKzEzNyw3IEBAIHN0YXRpYyB2b2lkIGUxMDAwX3BoeV9pbml0X3NjcmlwdChzdHJ1Y3QgZTEw
MDBfaHcgKmh3KQogCQkvKiBTYXZlIG9mZiB0aGUgY3VycmVudCB2YWx1ZSBvZiByZWdpc3RlciAw
eDJGNUIgdG8gYmUgcmVzdG9yZWQKIAkJICogYXQgdGhlIGVuZCBvZiB0aGlzIHJvdXRpbmUuCiAJ
CSAqLwotCQlyZXRfdmFsID0gZTEwMDBfcmVhZF9waHlfcmVnKGh3LCAweDJGNUIsICZwaHlfc2F2
ZWRfZGF0YSk7CisJCWUxMDAwX3JlYWRfcGh5X3JlZyhodywgMHgyRjVCLCAmcGh5X3NhdmVkX2Rh
dGEpOwogCiAJCS8qIERpc2FibGVkIHRoZSBQSFkgdHJhbnNtaXR0ZXIgKi8KIAkJZTEwMDBfd3Jp
dGVfcGh5X3JlZyhodywgMHgyRjVCLCAweDAwMDMpOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
