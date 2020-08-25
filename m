Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DF3251859
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 14:13:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 92C4A22D55;
	Tue, 25 Aug 2020 12:13:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u2utBTNXdD8y; Tue, 25 Aug 2020 12:13:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9840E2283A;
	Tue, 25 Aug 2020 12:13:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B27FD1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 12:13:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A70B188138
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 12:13:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DlQRMAI3CK2w for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 12:13:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 08E3386A14
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 12:13:35 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id q93so773156pjq.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 05:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XuxqHGQ3CPqGXcwMhMILx0aNLZlOO1GMGBPgCSiECEs=;
 b=UvTWeaHQtStiN79sTMs+3rHqHro6a6lQnSe+yyenE8NHNypMLfrVuXueaK8/ZzQUh2
 HlFwFzUy62FjtXx+GElRdSX8TyOczMA2wot2ZnkTTR4FUGmJ+YPiUjkScRbqyU/cvIea
 e2pYlJ826Z1DqVJibsm2HxUfF59XrbA7KU/GtWo++p1Iu82vdnJdTM2fNwLVqRdIfz5O
 njhFO0+DOzy0IlUyqJL2xvX+o3TPGeaAisWuFJgJgNh06nOXHnLhRe6a959VVPZi+eoT
 DPJFwjtd5AyuUxjoWXZJLZ0VBtqZJG09AIM2ZPh9DwK3kfnJPDOhxDL4NPT0Ou2nfpuT
 r7YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XuxqHGQ3CPqGXcwMhMILx0aNLZlOO1GMGBPgCSiECEs=;
 b=j9NlwtFH9gI/BBkhw73i4bp+RgYMwC+ggemo8EUP9NoemrRNSHGNvX1MqUogyFIysw
 d9gXTK67izwn57fFK5zQHntRoukveO3KPlE4K6Fx7QCSbp5w1NL71fpuKy876amY65lf
 cSpmWZoLH6nGkJ83F2h0h9Tvce9WYccsbs64tk6YfSatmYhnA7M6NYnAlmRjkauXJ51w
 1U/N78MhUSyslvQyr2K+DcQfgmul2MzQLHqMdf4dD7qoIjbVwBe0s3+t5C1Pr+U9MRee
 UON/a8MVJp/oRfmfjdANfAeC+9WoZO7h3/L6uKpnQy1FZdV5rk4t6f5Tj51SI8wMjzmc
 zLKw==
X-Gm-Message-State: AOAM530xa6hVE+j9rdL4D6QKx/NlwMh9jYAs53GMOabFDZESgjso4AHs
 lAJefwVo8VWawvgGRM6vMPA=
X-Google-Smtp-Source: ABdhPJzoJlGialpuIMs6wGfzHlOWLfeLjMr+RfJoU9YCBkWmwd+sg+whnf+9fvmz0K58PSmYws/fEA==
X-Received: by 2002:a17:90a:19c8:: with SMTP id
 8mr1254401pjj.152.1598357614616; 
 Tue, 25 Aug 2020 05:13:34 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id d5sm2700031pjw.18.2020.08.25.05.13.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 05:13:33 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: jeffrey.t.kirsher@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Aug 2020 14:13:20 +0200
Message-Id: <20200825121323.20239-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2 0/3] Avoid premature Rx buffer
 reuse for XDP_REDIRECT
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
Cc: maciej.fijalkowski@intel.com, maciej.machnikowski@intel.com,
 lirongqing@baidu.com, netdev@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SW50ZWwgTklDcyBoYXZlIGEgcmVjeWNsZSBtZWNoYW5pc20uIFRoZSBtYWluIGlkZWEgaXMgdGhh
dCBhIHBhZ2UgaXMKc3BsaXQgaW50byB0d28gcGFydHMuIE9uZSBwYXJ0IGlzIG93bmVkIGJ5IHRo
ZSBkcml2ZXIsIG9uZSBwYXJ0IG1pZ2h0CmJlIG93bmVkIGJ5IHNvbWVvbmUgZWxzZSwgc3VjaCBh
cyB0aGUgc3RhY2suCgpUaGUgcGFnZSByZWN5Y2xlIGNvZGUsIGluY29ycmVjdGx5LCByZWxpZWQg
b24gdGhhdCBhIHBhZ2UgZnJhZ21lbnQKY291bGQgbm90IGJlIGZyZWVkIGluc2lkZSB4ZHBfZG9f
cmVkaXJlY3QoKSwgZS5nLiBhIHJlZGlyZWN0IHRvIGEKZGV2bWFwIHdoZXJlIHRoZSBuZG9feGRw
X3htaXQoKSBpbXBsZW1lbnRhdGlvbiB3b3VsZCB0cmFuc21pdCBhbmQgZnJlZQp0aGUgZnJhbWUs
IG9yIHhza21hcCB3aGVyZSB0aGUgZnJhbWUgd291bGQgYmUgY29waWVkIHRvIHVzZXJzcGFjZSBh
bmQKZnJlZWQuCgpUaGlzIGFzc3VtcHRpb24gbGVhZHMgdG8gdGhhdCBwYWdlIGZyYWdtZW50cyB0
aGF0IGFyZSB1c2VkIGJ5IHRoZQpzdGFjay9YRFAgcmVkaXJlY3QgY2FuIGJlIHJldXNlZCBhbmQg
b3ZlcndyaXR0ZW4uCgpUbyBhdm9pZCB0aGlzLCBzdG9yZSB0aGUgcGFnZSBjb3VudCBwcmlvciBp
bnZva2luZwp4ZHBfZG9fcmVkaXJlY3QoKS4gVGhlIGFmZmVjdGVkIGRyaXZlcnMgYXJlIGl4Z2Jl
LCBpY2UsIGFuZCBpNDBlLgoKQW4gZXhhbXBsZSBob3cgdGhpbmdzIG1pZ2h0IGdvIHdyb25nOgoK
dDA6IFBhZ2UgaXMgYWxsb2NhdGVkLCBhbmQgcHV0IG9uIHRoZSBSeCByaW5nCiAgICAgICAgICAg
ICAgKy0tLS0tLS0tLS0tLS0tLQp1c2VkIGJ5IE5JQyAtPnwgdXBwZXIgYnVmZmVyCihyeF9idWZm
ZXIpICAgKy0tLS0tLS0tLS0tLS0tLQogICAgICAgICAgICAgIHwgbG93ZXIgYnVmZmVyCiAgICAg
ICAgICAgICAgKy0tLS0tLS0tLS0tLS0tLQogIHBhZ2UgY291bnQgID09IFVTSFJUX01BWAogIHJ4
X2J1ZmZlci0+cGFnZWNudF9iaWFzID09IFVTSFJUX01BWAoKdDE6IEJ1ZmZlciBpcyByZWNlaXZl
ZCwgYW5kIHBhc3NlZCB0byB0aGUgc3RhY2sgKGUuZy4pCiAgICAgICAgICAgICAgKy0tLS0tLS0t
LS0tLS0tLQogICAgICAgICAgICAgIHwgdXBwZXIgYnVmZiAoc2tiKQogICAgICAgICAgICAgICst
LS0tLS0tLS0tLS0tLS0KdXNlZCBieSBOSUMgLT58IGxvd2VyIGJ1ZmZlcgoocnhfYnVmZmVyKSAg
ICstLS0tLS0tLS0tLS0tLS0KICBwYWdlIGNvdW50ICA9PSBVU0hSVF9NQVgKICByeF9idWZmZXIt
PnBhZ2VjbnRfYmlhcyA9PSBVU0hSVF9NQVggLSAxCgp0MjogQnVmZmVyIGlzIHJlY2VpdmVkLCBh
bmQgcmVkaXJlY3RlZAogICAgICAgICAgICAgICstLS0tLS0tLS0tLS0tLS0KICAgICAgICAgICAg
ICB8IHVwcGVyIGJ1ZmYgKHNrYikKICAgICAgICAgICAgICArLS0tLS0tLS0tLS0tLS0tCnVzZWQg
YnkgTklDIC0+fCBsb3dlciBidWZmZXIKKHJ4X2J1ZmZlcikgICArLS0tLS0tLS0tLS0tLS0tCgpO
b3csIHByaW9yIGNhbGxpbmcgeGRwX2RvX3JlZGlyZWN0KCk6CiAgcGFnZSBjb3VudCAgPT0gVVNI
UlRfTUFYCiAgcnhfYnVmZmVyLT5wYWdlY250X2JpYXMgPT0gVVNIUlRfTUFYIC0gMgoKVGhpcyBt
ZWFucyB0aGF0IGJ1ZmZlciAqY2Fubm90KiBiZSBmbGlwcGVkL3JldXNlZCwgYmVjYXVzZSB0aGUg
c2tiIGlzCnN0aWxsIHVzaW5nIGl0LgoKVGhlIHByb2JsZW0gYXJpc2VzIHdoZW4geGRwX2RvX3Jl
ZGlyZWN0KCkgYWN0dWFsbHkgZnJlZXMgdGhlCnNlZ21lbnQuIFRoZW4gd2UgZ2V0OgogIHBhZ2Ug
Y291bnQgID09IFVTSFJUX01BWCAtIDEKICByeF9idWZmZXItPnBhZ2VjbnRfYmlhcyA9PSBVU0hS
VF9NQVggLSAyCgpGcm9tIGEgcmVjeWNsZSBwZXJzcGVjdGl2ZSwgdGhlIGJ1ZmZlciBjYW4gYmUg
ZmxpcHBlZCBhbmQgcmV1c2VkLAp3aGljaCBtZWFucyB0aGF0IHRoZSBza2IgZGF0YSBhcmVhIGlz
IHBhc3NlZCB0byB0aGUgUnggSFcgcmluZyEKClRvIHdvcmsgYXJvdW5kIHRoaXMsIHRoZSBwYWdl
IGNvdW50IGlzIHN0b3JlZCBwcmlvciBjYWxsaW5nCnhkcF9kb19yZWRpcmVjdCgpLgoKTm90ZSB0
aGF0IHRoaXMgaXMgbm90IG9wdGltYWwsIHNpbmNlIHRoZSBOSUMgY291bGQgYWN0dWFsbHkgcmV1
c2UgdGhlCiJsb3dlciBidWZmZXIiIGFnYWluLiBIb3dldmVyLCB0aGVuIHdlIG5lZWQgdG8gdHJh
Y2sgd2hldGhlcgpYRFBfUkVESVJFQ1QgY29uc3VtZWQgdGhlIGJ1ZmZlciBvciBub3QuIFRoaXMg
c2NlbmFyaW8gaXMgdmVyeSByYXJlLAphbmQgdHJhY2tpbmcgY29uc3VtdGlvbiBzdGF0dXMgd291
bGQgaW50cm9kdWNlIG1vcmUgY29tcGxleGl0eS4KCkEgYmlnIHRoYW5rcyB0byBMaSBSb25nUWlu
ZyBmcm9tIEJhaWR1IGZvciBoYXZpbmcgcGF0aWVuY2Ugd2l0aCBtZQp1bmRlcnN0YW5kaW5nIHRo
YXQgdGhlcmUgd2FzIGEgYnVnLiBJIHdvdWxkIGhhdmUgZ2l2ZW4gdXAgbXVjaAplYXJsaWVyISA6
LSkKCgpDaGVlcnMsCkJqw7ZybgoKdjEtPnYyOiBSZW1vdmVkIHBhZ2UgY291bnQgZnVuY3Rpb24g
aW50byBnZXQgUnggYnVmZmVyIGZ1bmN0aW9uLCBhbmQKICAgICAgICBjaGFuZ2VkIHNjb3BlIG9m
IGF1dG9tYXRpYyB2YXJpYWJsZS4gKE1hY2llaikKCgpCasO2cm4gVMO2cGVsICgzKToKICBpNDBl
OiBhdm9pZCBwcmVtYXR1cmUgUnggYnVmZmVyIHJldXNlCiAgaXhnYmU6IGF2b2lkIHByZW1hdHVy
ZSBSeCBidWZmZXIgcmV1c2UKICBpY2U6IGF2b2lkIHByZW1hdHVyZSBSeCBidWZmZXIgcmV1c2UK
CiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jICAgfCAyNCArKysr
KysrKysrKystLS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMg
ICAgIHwgMjcgKysrKysrKysrKysrLS0tLS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aXhnYmUvaXhnYmVfbWFpbi5jIHwgMjQgKysrKysrKysrKysrLS0tLS0KIDMgZmlsZXMgY2hhbmdl
ZCwgNTIgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0pCgoKYmFzZS1jb21taXQ6IDk5NDA4
YzQyMmQzMzZkYjMyYmZhYjVjYmViYzEwMDM4YTcwY2Y3ZDIKLS0gCjIuMjUuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
