Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7573A1026
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 12:33:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 753DF83C0D;
	Wed,  9 Jun 2021 10:33:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AMyD1tWl_6kW; Wed,  9 Jun 2021 10:33:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 318E383189;
	Wed,  9 Jun 2021 10:33:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0CB71BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 10:33:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9A30B404F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 10:33:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ql58YOPeOwS2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 10:33:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3C70D404F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 10:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623234820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wLi6aGzthW1V7ZnrfDoybEkcdwTKHnTji0dPASh8hrc=;
 b=UVGFrSyYaoyBRefyM64/vKKhLdpFh/Pw5p/SOipLdHqt0Zq8iFsujRC4fbbifNPKPnaCRf
 9l55hvhniMFKouNpwMfIEKeyOC1j7YhQMn6MbjYkG9aFl0CUS5ZxVqA6iU7EG8jG/rZHae
 NrTdTOuM+KU5MX949UvvXEnJHh/eWgk=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-574-LyYnd-6VMGmHhuNVpx-Qqg-1; Wed, 09 Jun 2021 06:33:37 -0400
X-MC-Unique: LyYnd-6VMGmHhuNVpx-Qqg-1
Received: by mail-ed1-f71.google.com with SMTP id
 f12-20020a056402150cb029038fdcfb6ea2so12172778edw.14
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Jun 2021 03:33:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wLi6aGzthW1V7ZnrfDoybEkcdwTKHnTji0dPASh8hrc=;
 b=hIsi0oDqFaAkPFyzoh9X4K/yrItg46eKMKtlTlRtVmMaTV/ufCjnpEpW3bNdi5ikAN
 YKqUme+B+/31roUFoSoJs3VuFtWNcGkqWMnxYcsQxw965/ZmWF3WJyAS3zLTiBpScYWw
 y0YpWxjE2/FKId0WmRcGG+wJqL9+bShOFdENHqxV40kxssA4jH1ZMogvwuV3l1eJi+45
 mMuMDuTwF0Bkhbnk6kZYpkyQBAPHA+MzgSe9IYq76OjJztfsHmhnpQX3xPbiii+0bn1f
 zm7y/M+2PYu0J4KQXXMOUh/ymyBaR+yRywfkhDu3t0QL+lT8pDb/orXUiBkec7IqbUsF
 vKRQ==
X-Gm-Message-State: AOAM532TZYfOIZJk6vfDDwpd6wBZYS3kP83KDDV5fl+OjxUBsFo2zDZd
 L+UYj9vDbQZ4+8M05XO2oauhS9qnu6HZvQr4MO1FD6HV2FN/SmK/ImYs8nizCdUKoQkMCkq6L48
 hnrQCnYoUooZ873MI18MOlGIbS9PKog==
X-Received: by 2002:a05:6402:1d38:: with SMTP id
 dh24mr30493430edb.18.1623234816137; 
 Wed, 09 Jun 2021 03:33:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxYCDMsQSZ9Dlij0MXgtUcDtV0HyvIjlYbVvq1Bssh7pKSh/y6kbcDB+aG4fWOwL/laWQyutw==
X-Received: by 2002:a05:6402:1d38:: with SMTP id
 dh24mr30493408edb.18.1623234815929; 
 Wed, 09 Jun 2021 03:33:35 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id m15sm926518eji.39.2021.06.09.03.33.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 03:33:35 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id AB08318072D; Wed,  9 Jun 2021 12:33:30 +0200 (CEST)
From: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: bpf@vger.kernel.org,
	netdev@vger.kernel.org
Date: Wed,  9 Jun 2021 12:33:18 +0200
Message-Id: <20210609103326.278782-10-toke@redhat.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609103326.278782-1-toke@redhat.com>
References: <20210609103326.278782-1-toke@redhat.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [PATCH bpf-next 09/17] net: intel: remove
 rcu_read_lock() around XDP program invocation
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
Cc: "Paul E . McKenney" <paulmck@kernel.org>,
 =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 Hangbin Liu <liuhangbin@gmail.com>, Jesper Dangaard Brouer <brouer@redhat.com>,
 intel-wired-lan@lists.osuosl.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhlIEludGVsIGRyaXZlcnMgYWxsIGhhdmUgcmN1X3JlYWRfbG9jaygpL3JjdV9yZWFkX3VubG9j
aygpIHBhaXJzIGFyb3VuZApYRFAgcHJvZ3JhbSBpbnZvY2F0aW9ucy4gSG93ZXZlciwgdGhlIGFj
dHVhbCBsaWZldGltZSBvZiB0aGUgb2JqZWN0cwpyZWZlcnJlZCBieSB0aGUgWERQIHByb2dyYW0g
aW52b2NhdGlvbiBpcyBsb25nZXIsIGFsbCB0aGUgd2F5IHRocm91Z2ggdG8KdGhlIGNhbGwgdG8g
eGRwX2RvX2ZsdXNoKCksIG1ha2luZyB0aGUgc2NvcGUgb2YgdGhlIHJjdV9yZWFkX2xvY2soKSB0
b28Kc21hbGwuIFRoaXMgdHVybnMgb3V0IHRvIGJlIGhhcm1sZXNzIGJlY2F1c2UgaXQgYWxsIGhh
cHBlbnMgaW4gYSBzaW5nbGUKTkFQSSBwb2xsIGN5Y2xlIChhbmQgdGh1cyB1bmRlciBsb2NhbF9i
aF9kaXNhYmxlKCkpLCBidXQgaXQgbWFrZXMgdGhlCnJjdV9yZWFkX2xvY2soKSBtaXNsZWFkaW5n
LgoKUmF0aGVyIHRoYW4gZXh0ZW5kIHRoZSBzY29wZSBvZiB0aGUgcmN1X3JlYWRfbG9jaygpLCBq
dXN0IGdldCByaWQgb2YgaXQKZW50aXJlbHkuIFdpdGggdGhlIGFkZGl0aW9uIG9mIFJDVSBhbm5v
dGF0aW9ucyB0byB0aGUgWERQX1JFRElSRUNUIG1hcAp0eXBlcyB0aGF0IHRha2UgYmggZXhlY3V0
aW9uIGludG8gYWNjb3VudCwgbG9ja2RlcCBldmVuIHVuZGVyc3RhbmRzIHRoaXMgdG8KYmUgc2Fm
ZSwgc28gdGhlcmUncyByZWFsbHkgbm8gcmVhc29uIHRvIGtlZXAgaXQgYXJvdW5kLgoKQ2M6IEpl
c3NlIEJyYW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPgpDYzogVG9ueSBOZ3V5
ZW4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPgpDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3Rz
Lm9zdW9zbC5vcmcKVGVzdGVkLWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJAcmVk
aGF0LmNvbT4gIyBpNDBlClNpZ25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV90eHJ4LmMgICAgICAgfCAyIC0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfeHNrLmMgICAgICAgIHwgNiArLS0tLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfdHhyeC5jICAgICAgICAgfCA2ICstLS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV94c2suYyAgICAgICAgICB8IDYgKy0tLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiX21haW4uYyAgICAgICAgIHwgMiAtLQogZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgICAgICAgICB8IDcgKystLS0tLQogZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jICAgICB8IDIgLS0KIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jICAgICAgfCA2ICstLS0tLQogZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmV2Zi9peGdiZXZmX21haW4uYyB8IDIgLS0KIDkgZmls
ZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYwppbmRleCBkZTcwYzE2ZWY2MTkuLmFl
M2E2NGI2ZjVmOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX3R4cnguYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhy
eC5jCkBAIC0yMjk4LDcgKzIyOTgsNiBAQCBzdGF0aWMgaW50IGk0MGVfcnVuX3hkcChzdHJ1Y3Qg
aTQwZV9yaW5nICpyeF9yaW5nLCBzdHJ1Y3QgeGRwX2J1ZmYgKnhkcCkKIAlzdHJ1Y3QgYnBmX3By
b2cgKnhkcF9wcm9nOwogCXUzMiBhY3Q7CiAKLQlyY3VfcmVhZF9sb2NrKCk7CiAJeGRwX3Byb2cg
PSBSRUFEX09OQ0UocnhfcmluZy0+eGRwX3Byb2cpOwogCiAJaWYgKCF4ZHBfcHJvZykKQEAgLTIz
MjksNyArMjMyOCw2IEBAIHN0YXRpYyBpbnQgaTQwZV9ydW5feGRwKHN0cnVjdCBpNDBlX3Jpbmcg
KnJ4X3JpbmcsIHN0cnVjdCB4ZHBfYnVmZiAqeGRwKQogCQlicmVhazsKIAl9CiB4ZHBfb3V0Ogot
CXJjdV9yZWFkX3VubG9jaygpOwogCXJldHVybiByZXN1bHQ7CiB9CiAKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwppbmRleCA0NmQ4ODQ0MTdjNjMuLjhkY2E1M2I3
ZGFmZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hz
ay5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwpAQCAt
MTUzLDcgKzE1Myw2IEBAIHN0YXRpYyBpbnQgaTQwZV9ydW5feGRwX3pjKHN0cnVjdCBpNDBlX3Jp
bmcgKnJ4X3JpbmcsIHN0cnVjdCB4ZHBfYnVmZiAqeGRwKQogCXN0cnVjdCBicGZfcHJvZyAqeGRw
X3Byb2c7CiAJdTMyIGFjdDsKIAotCXJjdV9yZWFkX2xvY2soKTsKIAkvKiBOQiEgeGRwX3Byb2cg
d2lsbCBhbHdheXMgYmUgIU5VTEwsIGR1ZSB0byB0aGUgZmFjdCB0aGF0CiAJICogdGhpcyBwYXRo
IGlzIGVuYWJsZWQgYnkgc2V0dGluZyBhbiBYRFAgcHJvZ3JhbS4KIAkgKi8KQEAgLTE2Miw5ICsx
NjEsNyBAQCBzdGF0aWMgaW50IGk0MGVfcnVuX3hkcF96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9y
aW5nLCBzdHJ1Y3QgeGRwX2J1ZmYgKnhkcCkKIAogCWlmIChsaWtlbHkoYWN0ID09IFhEUF9SRURJ
UkVDVCkpIHsKIAkJZXJyID0geGRwX2RvX3JlZGlyZWN0KHJ4X3JpbmctPm5ldGRldiwgeGRwLCB4
ZHBfcHJvZyk7Ci0JCXJlc3VsdCA9ICFlcnIgPyBJNDBFX1hEUF9SRURJUiA6IEk0MEVfWERQX0NP
TlNVTUVEOwotCQlyY3VfcmVhZF91bmxvY2soKTsKLQkJcmV0dXJuIHJlc3VsdDsKKwkJcmV0dXJu
ICFlcnIgPyBJNDBFX1hEUF9SRURJUiA6IEk0MEVfWERQX0NPTlNVTUVEOwogCX0KIAogCXN3aXRj
aCAoYWN0KSB7CkBAIC0xODQsNyArMTgxLDYgQEAgc3RhdGljIGludCBpNDBlX3J1bl94ZHBfemMo
c3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgc3RydWN0IHhkcF9idWZmICp4ZHApCiAJCXJlc3Vs
dCA9IEk0MEVfWERQX0NPTlNVTUVEOwogCQlicmVhazsKIAl9Ci0JcmN1X3JlYWRfdW5sb2NrKCk7
CiAJcmV0dXJuIHJlc3VsdDsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV90eHJ4LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X3R4cnguYwppbmRleCBlMmI0YjI5ZWEyMDcuLjFhMzExZTkxZmI2ZCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMKKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMKQEAgLTExMjksMTUgKzExMjksMTEgQEAgaW50
IGljZV9jbGVhbl9yeF9pcnEoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQog
CQl4ZHAuZnJhbWVfc3ogPSBpY2VfcnhfZnJhbWVfdHJ1ZXNpemUocnhfcmluZywgc2l6ZSk7CiAj
ZW5kaWYKIAotCQlyY3VfcmVhZF9sb2NrKCk7CiAJCXhkcF9wcm9nID0gUkVBRF9PTkNFKHJ4X3Jp
bmctPnhkcF9wcm9nKTsKLQkJaWYgKCF4ZHBfcHJvZykgewotCQkJcmN1X3JlYWRfdW5sb2NrKCk7
CisJCWlmICgheGRwX3Byb2cpCiAJCQlnb3RvIGNvbnN0cnVjdF9za2I7Ci0JCX0KIAogCQl4ZHBf
cmVzID0gaWNlX3J1bl94ZHAocnhfcmluZywgJnhkcCwgeGRwX3Byb2cpOwotCQlyY3VfcmVhZF91
bmxvY2soKTsKIAkJaWYgKCF4ZHBfcmVzKQogCQkJZ290byBjb25zdHJ1Y3Rfc2tiOwogCQlpZiAo
eGRwX3JlcyAmIChJQ0VfWERQX1RYIHwgSUNFX1hEUF9SRURJUikpIHsKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3hzay5jCmluZGV4IGZhYTdiOGQ5NmFkYi4uZDZkYTM3N2Y1YWMz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hzay5jCisr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMKQEAgLTQ2Myw3ICs0
NjMsNiBAQCBpY2VfcnVuX3hkcF96YyhzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3JpbmcsIHN0cnVjdCB4
ZHBfYnVmZiAqeGRwKQogCXN0cnVjdCBpY2VfcmluZyAqeGRwX3Jpbmc7CiAJdTMyIGFjdDsKIAot
CXJjdV9yZWFkX2xvY2soKTsKIAkvKiBaQyBwYXRjaCBpcyBlbmFibGVkIG9ubHkgd2hlbiBYRFAg
cHJvZ3JhbSBpcyBzZXQsCiAJICogc28gaGVyZSBpdCBjYW4gbm90IGJlIE5VTEwKIAkgKi8KQEAg
LTQ3Myw5ICs0NzIsNyBAQCBpY2VfcnVuX3hkcF96YyhzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3Jpbmcs
IHN0cnVjdCB4ZHBfYnVmZiAqeGRwKQogCiAJaWYgKGxpa2VseShhY3QgPT0gWERQX1JFRElSRUNU
KSkgewogCQllcnIgPSB4ZHBfZG9fcmVkaXJlY3QocnhfcmluZy0+bmV0ZGV2LCB4ZHAsIHhkcF9w
cm9nKTsKLQkJcmVzdWx0ID0gIWVyciA/IElDRV9YRFBfUkVESVIgOiBJQ0VfWERQX0NPTlNVTUVE
OwotCQlyY3VfcmVhZF91bmxvY2soKTsKLQkJcmV0dXJuIHJlc3VsdDsKKwkJcmV0dXJuICFlcnIg
PyBJQ0VfWERQX1JFRElSIDogSUNFX1hEUF9DT05TVU1FRDsKIAl9CiAKIAlzd2l0Y2ggKGFjdCkg
ewpAQCAtNDk2LDcgKzQ5Myw2IEBAIGljZV9ydW5feGRwX3pjKHN0cnVjdCBpY2VfcmluZyAqcnhf
cmluZywgc3RydWN0IHhkcF9idWZmICp4ZHApCiAJCWJyZWFrOwogCX0KIAotCXJjdV9yZWFkX3Vu
bG9jaygpOwogCXJldHVybiByZXN1bHQ7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdiL2lnYl9tYWluLmMKaW5kZXggMDM4YTlmZDFhZjQ0Li44YTExYjdlNTUzMjYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCisrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCkBAIC04Mzg3LDcgKzgzODcsNiBA
QCBzdGF0aWMgc3RydWN0IHNrX2J1ZmYgKmlnYl9ydW5feGRwKHN0cnVjdCBpZ2JfYWRhcHRlciAq
YWRhcHRlciwKIAlzdHJ1Y3QgYnBmX3Byb2cgKnhkcF9wcm9nOwogCXUzMiBhY3Q7CiAKLQlyY3Vf
cmVhZF9sb2NrKCk7CiAJeGRwX3Byb2cgPSBSRUFEX09OQ0UocnhfcmluZy0+eGRwX3Byb2cpOwog
CiAJaWYgKCF4ZHBfcHJvZykKQEAgLTg0MjAsNyArODQxOSw2IEBAIHN0YXRpYyBzdHJ1Y3Qgc2tf
YnVmZiAqaWdiX3J1bl94ZHAoc3RydWN0IGlnYl9hZGFwdGVyICphZGFwdGVyLAogCQlicmVhazsK
IAl9CiB4ZHBfb3V0OgotCXJjdV9yZWFkX3VubG9jaygpOwogCXJldHVybiBFUlJfUFRSKC1yZXN1
bHQpOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdj
X21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jCmluZGV4
IGVhOTk4ZDJkZWZhNC4uMmI2NjZhNmVjOTg5IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2MvaWdjX21haW4uYwpAQCAtMjE3NSwxOCArMjE3NSwxNSBAQCBzdGF0aWMgc3RydWN0IHNr
X2J1ZmYgKmlnY194ZHBfcnVuX3Byb2coc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyLAogCXN0
cnVjdCBicGZfcHJvZyAqcHJvZzsKIAlpbnQgcmVzOwogCi0JcmN1X3JlYWRfbG9jaygpOwotCiAJ
cHJvZyA9IFJFQURfT05DRShhZGFwdGVyLT54ZHBfcHJvZyk7CiAJaWYgKCFwcm9nKSB7CiAJCXJl
cyA9IElHQ19YRFBfUEFTUzsKLQkJZ290byB1bmxvY2s7CisJCWdvdG8gb3V0OwogCX0KIAogCXJl
cyA9IF9faWdjX3hkcF9ydW5fcHJvZyhhZGFwdGVyLCBwcm9nLCB4ZHApOwogCi11bmxvY2s6Ci0J
cmN1X3JlYWRfdW5sb2NrKCk7CitvdXQ6CiAJcmV0dXJuIEVSUl9QVFIoLXJlcyk7CiB9CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYwppbmRleCBjNWVj
MTdkMTljNTkuLjI3ZDc0Njc1MzRlMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2l4Z2JlL2l4Z2JlX21haW4uYwpAQCAtMjE5OSw3ICsyMTk5LDYgQEAgc3RhdGljIHN0cnVjdCBz
a19idWZmICppeGdiZV9ydW5feGRwKHN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVyLAogCXN0
cnVjdCB4ZHBfZnJhbWUgKnhkcGY7CiAJdTMyIGFjdDsKIAotCXJjdV9yZWFkX2xvY2soKTsKIAl4
ZHBfcHJvZyA9IFJFQURfT05DRShyeF9yaW5nLT54ZHBfcHJvZyk7CiAKIAlpZiAoIXhkcF9wcm9n
KQpAQCAtMjIzNyw3ICsyMjM2LDYgQEAgc3RhdGljIHN0cnVjdCBza19idWZmICppeGdiZV9ydW5f
eGRwKHN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVyLAogCQlicmVhazsKIAl9CiB4ZHBfb3V0
OgotCXJjdV9yZWFkX3VubG9jaygpOwogCXJldHVybiBFUlJfUFRSKC1yZXN1bHQpOwogfQogCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2suYyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jCmluZGV4IDkxYWQ1
YjkwMjY3My4uZmZiZjhhNjk0MzYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9peGdiZS9peGdiZV94c2suYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
eGdiZS9peGdiZV94c2suYwpAQCAtMTAwLDE1ICsxMDAsMTIgQEAgc3RhdGljIGludCBpeGdiZV9y
dW5feGRwX3pjKHN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVyLAogCXN0cnVjdCB4ZHBfZnJh
bWUgKnhkcGY7CiAJdTMyIGFjdDsKIAotCXJjdV9yZWFkX2xvY2soKTsKIAl4ZHBfcHJvZyA9IFJF
QURfT05DRShyeF9yaW5nLT54ZHBfcHJvZyk7CiAJYWN0ID0gYnBmX3Byb2dfcnVuX3hkcCh4ZHBf
cHJvZywgeGRwKTsKIAogCWlmIChsaWtlbHkoYWN0ID09IFhEUF9SRURJUkVDVCkpIHsKIAkJZXJy
ID0geGRwX2RvX3JlZGlyZWN0KHJ4X3JpbmctPm5ldGRldiwgeGRwLCB4ZHBfcHJvZyk7Ci0JCXJl
c3VsdCA9ICFlcnIgPyBJWEdCRV9YRFBfUkVESVIgOiBJWEdCRV9YRFBfQ09OU1VNRUQ7Ci0JCXJj
dV9yZWFkX3VubG9jaygpOwotCQlyZXR1cm4gcmVzdWx0OworCQlyZXR1cm4gIWVyciA/IElYR0JF
X1hEUF9SRURJUiA6IElYR0JFX1hEUF9DT05TVU1FRDsKIAl9CiAKIAlzd2l0Y2ggKGFjdCkgewpA
QCAtMTMyLDcgKzEyOSw2IEBAIHN0YXRpYyBpbnQgaXhnYmVfcnVuX3hkcF96YyhzdHJ1Y3QgaXhn
YmVfYWRhcHRlciAqYWRhcHRlciwKIAkJcmVzdWx0ID0gSVhHQkVfWERQX0NPTlNVTUVEOwogCQli
cmVhazsKIAl9Ci0JcmN1X3JlYWRfdW5sb2NrKCk7CiAJcmV0dXJuIHJlc3VsdDsKIH0KIApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmV2Zi9peGdiZXZmX21haW4u
YyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JldmYvaXhnYmV2Zl9tYWluLmMKaW5k
ZXggYmEyZWQ4YTQzZDJkLi5mYWJhZGE0Y2UzMTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JldmYvaXhnYmV2Zl9tYWluLmMKKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaXhnYmV2Zi9peGdiZXZmX21haW4uYwpAQCAtMTA1NCw3ICsxMDU0LDYgQEAg
c3RhdGljIHN0cnVjdCBza19idWZmICppeGdiZXZmX3J1bl94ZHAoc3RydWN0IGl4Z2JldmZfYWRh
cHRlciAqYWRhcHRlciwKIAlzdHJ1Y3QgYnBmX3Byb2cgKnhkcF9wcm9nOwogCXUzMiBhY3Q7CiAK
LQlyY3VfcmVhZF9sb2NrKCk7CiAJeGRwX3Byb2cgPSBSRUFEX09OQ0UocnhfcmluZy0+eGRwX3By
b2cpOwogCiAJaWYgKCF4ZHBfcHJvZykKQEAgLTEwNzksNyArMTA3OCw2IEBAIHN0YXRpYyBzdHJ1
Y3Qgc2tfYnVmZiAqaXhnYmV2Zl9ydW5feGRwKHN0cnVjdCBpeGdiZXZmX2FkYXB0ZXIgKmFkYXB0
ZXIsCiAJCWJyZWFrOwogCX0KIHhkcF9vdXQ6Ci0JcmN1X3JlYWRfdW5sb2NrKCk7CiAJcmV0dXJu
IEVSUl9QVFIoLXJlc3VsdCk7CiB9CiAKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
