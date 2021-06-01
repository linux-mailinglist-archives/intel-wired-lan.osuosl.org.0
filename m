Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766A13974DC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jun 2021 16:03:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B051B40251;
	Tue,  1 Jun 2021 14:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VTGsckCBdMAK; Tue,  1 Jun 2021 14:02:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9A78401A4;
	Tue,  1 Jun 2021 14:02:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 607B81BF40F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 14:02:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 58BE3404B2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 14:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GCxd2tPhR_1y for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jun 2021 14:02:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F1662404AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 14:02:52 +0000 (UTC)
Received: from dggemv704-chm.china.huawei.com (unknown [172.30.72.55])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4FvYdp3brmz1BGgh;
 Tue,  1 Jun 2021 21:58:06 +0800 (CST)
Received: from dggema769-chm.china.huawei.com (10.1.198.211) by
 dggemv704-chm.china.huawei.com (10.3.19.47) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Tue, 1 Jun 2021 22:02:48 +0800
Received: from localhost (10.174.179.215) by dggema769-chm.china.huawei.com
 (10.1.198.211) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 1 Jun
 2021 22:02:47 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <kuba@kernel.org>
Date: Tue, 1 Jun 2021 22:02:38 +0800
Message-ID: <20210601140238.20712-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggema769-chm.china.huawei.com (10.1.198.211)
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH net-next] igb: Fix -Wunused-const-variable
 warning
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SWYgQ09ORklHX0lHQl9IV01PTiBpcyBuLCBnY2Mgd2FybnM6Cgpkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvZTEwMDBfODI1NzUuYzoyNzY1OjE3Ogogd2FybmluZzog4oCYZTEwMDBfZW1j
X3RoZXJtX2xpbWl04oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJp
YWJsZT1dCiBzdGF0aWMgY29uc3QgdTggZTEwMDBfZW1jX3RoZXJtX2xpbWl0WzRdID0gewogICAg
ICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fgpkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2IvZTEwMDBfODI1NzUuYzoyNzU5OjE3Ogogd2FybmluZzog4oCYZTEwMDBfZW1jX3Rl
bXBfZGF0YeKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtY29uc3QtdmFyaWFibGU9
XQogc3RhdGljIGNvbnN0IHU4IGUxMDAwX2VtY190ZW1wX2RhdGFbNF0gPSB7CiAgICAgICAgICAg
ICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fgoKTW92ZSBpdCBpbnRvICNpZmRlZiBibG9jayB0byBm
aXggdGhpcy4KClNpZ25lZC1vZmYtYnk6IFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVhd2VpLmNv
bT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvZTEwMDBfODI1NzUuYyB8IDIg
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9lMTAwMF84MjU3NS5jIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwXzgyNTc1LmMKaW5kZXggNTA4NjNmZDg3
ZDUzLi5jYmU5MmZkMjNhNzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYi9lMTAwMF84MjU3NS5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9l
MTAwMF84MjU3NS5jCkBAIC0yNzU2LDYgKzI3NTYsNyBAQCBzMzIgaWdiX2dldF9lZWVfc3RhdHVz
X2kzNTQoc3RydWN0IGUxMDAwX2h3ICpodywgYm9vbCAqc3RhdHVzKQogCXJldHVybiByZXRfdmFs
OwogfQogCisjaWZkZWYgQ09ORklHX0lHQl9IV01PTgogc3RhdGljIGNvbnN0IHU4IGUxMDAwX2Vt
Y190ZW1wX2RhdGFbNF0gPSB7CiAJRTEwMDBfRU1DX0lOVEVSTkFMX0RBVEEsCiAJRTEwMDBfRU1D
X0RJT0RFMV9EQVRBLApAQCAtMjc2OSw3ICsyNzcwLDYgQEAgc3RhdGljIGNvbnN0IHU4IGUxMDAw
X2VtY190aGVybV9saW1pdFs0XSA9IHsKIAlFMTAwMF9FTUNfRElPREUzX1RIRVJNX0xJTUlUCiB9
OwogCi0jaWZkZWYgQ09ORklHX0lHQl9IV01PTgogLyoqCiAgKiAgaWdiX2dldF90aGVybWFsX3Nl
bnNvcl9kYXRhX2dlbmVyaWMgLSBHYXRoZXJzIHRoZXJtYWwgc2Vuc29yIGRhdGEKICAqICBAaHc6
IHBvaW50ZXIgdG8gaGFyZHdhcmUgc3RydWN0dXJlCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
