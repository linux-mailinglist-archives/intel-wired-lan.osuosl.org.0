Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE61243952
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Aug 2020 13:27:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF9F7884A6;
	Thu, 13 Aug 2020 11:27:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ArCJdNG5zb+n; Thu, 13 Aug 2020 11:27:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A64F88330;
	Thu, 13 Aug 2020 11:27:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 717D61BF867
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 11:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6A14D88295
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 11:27:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tERFJwePbGvB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Aug 2020 11:27:06 +0000 (UTC)
X-Greylist: delayed 20:46:47 by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4A1CB88279
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 11:27:06 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-164-UcCwiyjsM8iIhg0LfJrpeA-1; Thu, 13 Aug 2020 07:27:02 -0400
X-MC-Unique: UcCwiyjsM8iIhg0LfJrpeA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5960A1007461;
 Thu, 13 Aug 2020 11:27:01 +0000 (UTC)
Received: from p50.redhat.com (ovpn-113-45.ams2.redhat.com [10.36.113.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B9A2B5C1A3;
 Thu, 13 Aug 2020 11:26:59 +0000 (UTC)
From: Stefan Assmann <sassmann@kpanic.de>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Aug 2020 13:26:38 +0200
Message-Id: <20200813112638.12699-1-sassmann@kpanic.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sassmann@kpanic.de
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: kpanic.de
Subject: [Intel-wired-lan] [PATCH v2] i40e: fix return of uninitialized
 aq_ret in i40e_set_vsi_promisc
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
Cc: netdev@vger.kernel.org, sassmann@kpanic.de, kuba@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5sX3BmLmM6IEluIGZ1
bmN0aW9uIOKAmGk0MGVfc2V0X3ZzaV9wcm9taXNj4oCZOgpkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYzoxMTc2OjE0OiBlcnJvcjog4oCYYXFfcmV04oCZ
IG1heSBiZSB1c2VkIHVuaW5pdGlhbGl6ZWQgaW4gdGhpcyBmdW5jdGlvbiBbLVdlcnJvcj1tYXli
ZS11bmluaXRpYWxpemVkXQogIGk0MGVfc3RhdHVzIGFxX3JldDsKCkluIGNhc2UgdGhlIGNvZGUg
aW5zaWRlIHRoZSBpZiBzdGF0ZW1lbnQgYW5kIHRoZSBmb3IgbG9vcCBkb2VzIG5vdCBnZXQKZXhl
Y3V0ZWQgYXFfcmV0IHdpbGwgYmUgdW5pbml0aWFsaXplZCB3aGVuIHRoZSB2YXJpYWJsZSBnZXRz
IHJldHVybmVkIGF0CnRoZSBlbmQgb2YgdGhlIGZ1bmN0aW9uLgoKQXZvaWQgdGhpcyBieSBjaGFu
Z2luZyBudW1fdmxhbnMgZnJvbSBpbnQgdG8gdTE2LCBzbyBhcV9yZXQgYWx3YXlzIGdldHMKc2V0
LiBNYWtpbmcgdGhpcyBjaGFuZ2UgaW4gYWRkaXRpb25hbCBwbGFjZXMgYXMgbnVtX3ZsYW5zIHNo
b3VsZCBuZXZlcgpiZSBuZWdhdGl2ZS4KCkZpeGVzOiAzN2QzMThkNzgwNWYgKCJpNDBlOiBSZW1v
dmUgc2NoZWR1bGluZyB3aGlsZSBhdG9taWMgcG9zc2liaWxpdHkiKQpTaWduZWQtb2ZmLWJ5OiBT
dGVmYW4gQXNzbWFubiA8c2Fzc21hbm5Aa3BhbmljLmRlPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5jIHwgOCArKysrLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5jCmluZGV4IDhlMTMzZDY1
NDViZC4uOTBlZjgxMGNiYTk3IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYwpAQCAtMTExNSw3ICsxMTE1LDcgQEAgc3RhdGljIGlu
dCBpNDBlX3F1aWVzY2VfdmZfcGNpKHN0cnVjdCBpNDBlX3ZmICp2ZikKIHN0YXRpYyBpbnQgaTQw
ZV9nZXRudW1fdmZfdnNpX3ZsYW5fZmlsdGVycyhzdHJ1Y3QgaTQwZV92c2kgKnZzaSkKIHsKIAlz
dHJ1Y3QgaTQwZV9tYWNfZmlsdGVyICpmOwotCWludCBudW1fdmxhbnMgPSAwLCBia3Q7CisJdTE2
IG51bV92bGFucyA9IDAsIGJrdDsKIAogCWhhc2hfZm9yX2VhY2godnNpLT5tYWNfZmlsdGVyX2hh
c2gsIGJrdCwgZiwgaGxpc3QpIHsKIAkJaWYgKGYtPnZsYW4gPj0gMCAmJiBmLT52bGFuIDw9IEk0
MEVfTUFYX1ZMQU5JRCkKQEAgLTExMzQsNyArMTEzNCw3IEBAIHN0YXRpYyBpbnQgaTQwZV9nZXRu
dW1fdmZfdnNpX3ZsYW5fZmlsdGVycyhzdHJ1Y3QgaTQwZV92c2kgKnZzaSkKICAqCiAgKiBDYWxs
ZWQgdG8gZ2V0IG51bWJlciBvZiBWTEFOcyBhbmQgVkxBTiBsaXN0IHByZXNlbnQgaW4gbWFjX2Zp
bHRlcl9oYXNoLgogICoqLwotc3RhdGljIHZvaWQgaTQwZV9nZXRfdmxhbl9saXN0X3N5bmMoc3Ry
dWN0IGk0MGVfdnNpICp2c2ksIGludCAqbnVtX3ZsYW5zLAorc3RhdGljIHZvaWQgaTQwZV9nZXRf
dmxhbl9saXN0X3N5bmMoc3RydWN0IGk0MGVfdnNpICp2c2ksIHUxNiAqbnVtX3ZsYW5zLAogCQkJ
CQkgICBzMTYgKip2bGFuX2xpc3QpCiB7CiAJc3RydWN0IGk0MGVfbWFjX2ZpbHRlciAqZjsKQEAg
LTExNjksNyArMTE2OSw3IEBAIHN0YXRpYyB2b2lkIGk0MGVfZ2V0X3ZsYW5fbGlzdF9zeW5jKHN0
cnVjdCBpNDBlX3ZzaSAqdnNpLCBpbnQgKm51bV92bGFucywKICAqKi8KIHN0YXRpYyBpNDBlX3N0
YXR1cwogaTQwZV9zZXRfdnNpX3Byb21pc2Moc3RydWN0IGk0MGVfdmYgKnZmLCB1MTYgc2VpZCwg
Ym9vbCBtdWx0aV9lbmFibGUsCi0JCSAgICAgYm9vbCB1bmljYXN0X2VuYWJsZSwgczE2ICp2bCwg
aW50IG51bV92bGFucykKKwkJICAgICBib29sIHVuaWNhc3RfZW5hYmxlLCBzMTYgKnZsLCB1MTYg
bnVtX3ZsYW5zKQogewogCXN0cnVjdCBpNDBlX3BmICpwZiA9IHZmLT5wZjsKIAlzdHJ1Y3QgaTQw
ZV9odyAqaHcgPSAmcGYtPmh3OwpAQCAtMTI1OCw3ICsxMjU4LDcgQEAgc3RhdGljIGk0MGVfc3Rh
dHVzIGk0MGVfY29uZmlnX3ZmX3Byb21pc2N1b3VzX21vZGUoc3RydWN0IGk0MGVfdmYgKnZmLAog
CWk0MGVfc3RhdHVzIGFxX3JldCA9IEk0MEVfU1VDQ0VTUzsKIAlzdHJ1Y3QgaTQwZV9wZiAqcGYg
PSB2Zi0+cGY7CiAJc3RydWN0IGk0MGVfdnNpICp2c2k7Ci0JaW50IG51bV92bGFuczsKKwl1MTYg
bnVtX3ZsYW5zOwogCXMxNiAqdmw7CiAKIAl2c2kgPSBpNDBlX2ZpbmRfdnNpX2Zyb21faWQocGYs
IHZzaV9pZCk7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
