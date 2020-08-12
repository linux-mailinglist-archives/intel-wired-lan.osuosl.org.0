Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 500DF242B98
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Aug 2020 16:47:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EC6B784595;
	Wed, 12 Aug 2020 14:47:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Yd4ZkvPoay5; Wed, 12 Aug 2020 14:47:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0613D86978;
	Wed, 12 Aug 2020 14:47:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 72B881BF283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Aug 2020 14:47:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6E22C84812
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Aug 2020 14:47:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eMqhpF9_21UI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Aug 2020 14:47:11 +0000 (UTC)
X-Greylist: delayed 00:05:08 by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3B1D784595
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Aug 2020 14:47:11 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-546-yKQ_PDQhPwW1XR3Cz-T1BQ-1; Wed, 12 Aug 2020 10:40:14 -0400
X-MC-Unique: yKQ_PDQhPwW1XR3Cz-T1BQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6472218B9EC0;
 Wed, 12 Aug 2020 14:40:12 +0000 (UTC)
Received: from p50.redhat.com (ovpn-113-45.ams2.redhat.com [10.36.113.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E384A600C5;
 Wed, 12 Aug 2020 14:40:10 +0000 (UTC)
From: Stefan Assmann <sassmann@kpanic.de>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Aug 2020 16:39:50 +0200
Message-Id: <20200812143950.11675-1-sassmann@kpanic.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sassmann@kpanic.de
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: kpanic.de
Subject: [Intel-wired-lan] [PATCH] i40e: fix uninitialized variable in
 i40e_set_vsi_promisc
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
Cc: netdev@vger.kernel.org, davem@davemloft.net, sassmann@kpanic.de
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
IHJldHVybmVkIGF0CnRoZSBlbmQgb2YgdGhlIGZ1bmN0aW9uLgoKRml4ZXM6IDM3ZDMxOGQ3ODA1
ZiAoImk0MGU6IFJlbW92ZSBzY2hlZHVsaW5nIHdoaWxlIGF0b21pYyBwb3NzaWJpbGl0eSIpClNp
Z25lZC1vZmYtYnk6IFN0ZWZhbiBBc3NtYW5uIDxzYXNzbWFubkBrcGFuaWMuZGU+Ci0tLQogZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5sX3BmLmMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5jCmluZGV4IDhl
MTMzZDY1NDViZC4uYWUyOTBlYmQ4M2NmIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYwpAQCAtMTE3Myw3ICsxMTczLDcgQEAgaTQw
ZV9zZXRfdnNpX3Byb21pc2Moc3RydWN0IGk0MGVfdmYgKnZmLCB1MTYgc2VpZCwgYm9vbCBtdWx0
aV9lbmFibGUsCiB7CiAJc3RydWN0IGk0MGVfcGYgKnBmID0gdmYtPnBmOwogCXN0cnVjdCBpNDBl
X2h3ICpodyA9ICZwZi0+aHc7Ci0JaTQwZV9zdGF0dXMgYXFfcmV0OworCWk0MGVfc3RhdHVzIGFx
X3JldCA9IDA7CiAJaW50IGk7CiAKIAkvKiBObyBWTEFOIHRvIHNldCBwcm9taXNjIG9uLCBzZXQg
b24gVlNJICovCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
