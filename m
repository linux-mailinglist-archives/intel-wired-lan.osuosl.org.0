Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DDF29D00F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 14:35:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D41F86A02;
	Wed, 28 Oct 2020 13:35:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yUMy3vTtXsS4; Wed, 28 Oct 2020 13:35:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD79086A08;
	Wed, 28 Oct 2020 13:35:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE2161BF857
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C76CD204E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id opI6NOE2ae-C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 13:35:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id BB758204D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:27 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id b12so2489240plr.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 06:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y6HWVZiVbe0DlTeVilFZZF5KBmHXDNnXyxJw5KGNE18=;
 b=Q9pVa6xIH+HoZ+K1VGiQHxhDmSJCKl7x7+ZbKUN+1xgaFlZPQuHBPSYv5HYuTA0sjG
 LaBrJYUGQdfYPMrxeuLTCcoLcIdvfoyLKCgD7ctg9GhjENImdx+SP4vUIz3jxNzJax00
 KzTrt0WGUUcaVDXm2LnN12lN30pJptzbO0zN4RL/FSLHYsv/H9aUFTnj4kX35RAW+xzI
 2kQ0qioK0hLQ7eZDqfUs3BDOnpbhE3mkNc//l4MlMpMe0/e86tfXaORAtZ5ZT7v/WJUH
 LxhfRoWvRFmbHww3nS6kAmBDTl5Gc5meNz4ZAo/GWNGbR/0ivPMwYTrnoTIqxcUZ4uSV
 mC1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y6HWVZiVbe0DlTeVilFZZF5KBmHXDNnXyxJw5KGNE18=;
 b=kmXUleYVscGGrxDg7pyNwXR/TDocbCg/PC8vxrjdxLC55ZyzU+AOhr+lmFyj5uurFb
 wOp8VyK1FH0jYNMPmPE0FPIVh15r/Sgj+QbdgSs/KIdmT07MC9/oclHpITujdrusm7hZ
 P/VEGyUFDWWXSXBXP1Mb6j4yw1Jp+gjuLjjTjsBT0wvqrMIj92p4ElAupNtdKEJYUUAv
 +gam1JCkl26qV9/cBpkzJPpxTVvo0Rr/mVPAUT0ecDBCE+He1XF/gzRMVJUnDVCisCb8
 P77JK70WeLSKyXes5IOupceOXUqprkIu0g50duN+6FhMub8KgW8IgqgZ8OB/vhm0GsIl
 KCAw==
X-Gm-Message-State: AOAM530QSRf/PlI3QZbnLFxxLi6VdLWdrdcxxmcU0wHuXNkiORAGOw9g
 fk8OYwn1DfKcpKkJHXA91fM=
X-Google-Smtp-Source: ABdhPJyLrY/Dmb/oakRjXGVfkc2hQL0ea2nhABJdqF8y6eKgUaX7nxSXT40wSwQ545JBnNZK8RbSXQ==
X-Received: by 2002:a17:90b:204:: with SMTP id
 fy4mr7400019pjb.156.1603892127374; 
 Wed, 28 Oct 2020 06:35:27 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id q14sm5935393pjp.43.2020.10.28.06.35.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:35:26 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Wed, 28 Oct 2020 14:34:32 +0100
Message-Id: <20201028133437.212503-5-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201028133437.212503-1-bjorn.topel@gmail.com>
References: <20201028133437.212503-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next 4/9] xsk: check need wakeup
 flag in sendmsg()
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
Cc: daniel@iogearbox.net, jonathan.lemon@gmail.com, ast@kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, qi.z.zhang@intel.com,
 kuba@kernel.org, =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKQWRkIGEgY2hlY2sg
Zm9yIG5lZWQgd2FrZSB1cCBpbiBzZW5kbXNnKCksIHNvIHRoYXQgaWYgYSB1c2VyIGNhbGxzCnNl
bmRtc2coKSB3aGVuIG5vIHdha2V1cCBpcyBuZWVkZWQsIGRvIG5vdCB0cmlnZ2VyIGEgd2FrZXVw
LgoKVG8gc2ltcGxpZnkgdGhlIG5lZWQgd2FrZXVwIGNoZWNrIGluIHRoZSBzeXNjYWxsLCB1bmNv
bmRpdGlvbmFsbHkKZW5hYmxlIHRoZSBuZWVkIHdha2V1cCBmbGFnIGZvciBUeC4gVGhpcyBoYXMg
YSBzaWRlLWVmZmVjdCBmb3IgcG9sbCgpOwpJZiBwb2xsKCkgaXMgY2FsbGVkIGZvciBhIHNvY2tl
dCB3aXRob3V0IGVuYWJsZWQgbmVlZCB3YWtldXAsIGEgVHgKd2FrZXVwIGlzIHVuY29uZGl0aW9u
YWxseSBwZXJmb3JtZWQuCgpUaGUgd2FrZXVwIG1hdHJpeCBmb3IgQUZfWERQIG5vdyBsb29rcyBs
aWtlOgoKbmVlZCB3YWtldXAgfCBwb2xsKCkgICAgICAgICAgICAgICAgIHwgc2VuZG1zZygpICAg
ICAgICAgICB8IHJlY3Ztc2coKQotLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0KZGlzYWJsZWQgICAg
fCB3YWtlIFR4ICAgICAgICAgICAgICAgIHwgd2FrZSBUeCAgICAgICAgICAgICB8IG5vcAplbmFi
bGVkICAgICB8IGNoZWNrIGZsYWc7IHdha2UgVHgvUnggfCBjaGVjayBmbGFnOyB3YWtlIFR4IHwg
Y2hlY2sgZmxhZzsgd2FrZSBSeAoKU2lnbmVkLW9mZi1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4u
dG9wZWxAaW50ZWwuY29tPgotLS0KIG5ldC94ZHAveHNrLmMgICAgICAgICAgIHwgIDYgKysrKyst
CiBuZXQveGRwL3hza19idWZmX3Bvb2wuYyB8IDEzICsrKysrKy0tLS0tLS0KIDIgZmlsZXMgY2hh
bmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9uZXQv
eGRwL3hzay5jIGIvbmV0L3hkcC94c2suYwppbmRleCAxN2Q1MWQxYTU3NTIuLjJlNWI5ZjI3Yzdh
MyAxMDA2NDQKLS0tIGEvbmV0L3hkcC94c2suYworKysgYi9uZXQveGRwL3hzay5jCkBAIC00NjUs
MTMgKzQ2NSwxNyBAQCBzdGF0aWMgaW50IHhza19zZW5kbXNnKHN0cnVjdCBzb2NrZXQgKnNvY2ss
IHN0cnVjdCBtc2doZHIgKm0sIHNpemVfdCB0b3RhbF9sZW4pCiAJYm9vbCBuZWVkX3dhaXQgPSAh
KG0tPm1zZ19mbGFncyAmIE1TR19ET05UV0FJVCk7CiAJc3RydWN0IHNvY2sgKnNrID0gc29jay0+
c2s7CiAJc3RydWN0IHhkcF9zb2NrICp4cyA9IHhkcF9zayhzayk7CisJc3RydWN0IHhza19idWZm
X3Bvb2wgKnBvb2w7CiAKIAlpZiAodW5saWtlbHkoIXhza19pc19ib3VuZCh4cykpKQogCQlyZXR1
cm4gLUVOWElPOwogCWlmICh1bmxpa2VseShuZWVkX3dhaXQpKQogCQlyZXR1cm4gLUVPUE5PVFNV
UFA7CiAKLQlyZXR1cm4gX194c2tfc2VuZG1zZyhzayk7CisJcG9vbCA9IHhzLT5wb29sOworCWlm
IChwb29sLT5jYWNoZWRfbmVlZF93YWtldXAgJiBYRFBfV0FLRVVQX1RYKQorCQlyZXR1cm4gX194
c2tfc2VuZG1zZyhzayk7CisJcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBpbnQgeHNrX3JlY3Ztc2co
c3RydWN0IHNvY2tldCAqc29jaywgc3RydWN0IG1zZ2hkciAqbSwgc2l6ZV90IGxlbiwgaW50IGZs
YWdzKQpkaWZmIC0tZ2l0IGEvbmV0L3hkcC94c2tfYnVmZl9wb29sLmMgYi9uZXQveGRwL3hza19i
dWZmX3Bvb2wuYwppbmRleCA2NGM5ZTU1ZDRkNGUuLmE0YWNiNWU5NTc2ZiAxMDA2NDQKLS0tIGEv
bmV0L3hkcC94c2tfYnVmZl9wb29sLmMKKysrIGIvbmV0L3hkcC94c2tfYnVmZl9wb29sLmMKQEAg
LTE0NCwxNCArMTQ0LDEzIEBAIHN0YXRpYyBpbnQgX194cF9hc3NpZ25fZGV2KHN0cnVjdCB4c2tf
YnVmZl9wb29sICpwb29sLAogCWlmIChlcnIpCiAJCXJldHVybiBlcnI7CiAKLQlpZiAoZmxhZ3Mg
JiBYRFBfVVNFX05FRURfV0FLRVVQKSB7CisJaWYgKGZsYWdzICYgWERQX1VTRV9ORUVEX1dBS0VV
UCkKIAkJcG9vbC0+dXNlc19uZWVkX3dha2V1cCA9IHRydWU7Ci0JCS8qIFR4IG5lZWRzIHRvIGJl
IGV4cGxpY2l0bHkgd29rZW4gdXAgdGhlIGZpcnN0IHRpbWUuCi0JCSAqIEFsc28gZm9yIHN1cHBv
cnRpbmcgZHJpdmVycyB0aGF0IGRvIG5vdCBpbXBsZW1lbnQgdGhpcwotCQkgKiBmZWF0dXJlLiBU
aGV5IHdpbGwgYWx3YXlzIGhhdmUgdG8gY2FsbCBzZW5kdG8oKS4KLQkJICovCi0JCXBvb2wtPmNh
Y2hlZF9uZWVkX3dha2V1cCA9IFhEUF9XQUtFVVBfVFg7Ci0JfQorCS8qIFR4IG5lZWRzIHRvIGJl
IGV4cGxpY2l0bHkgd29rZW4gdXAgdGhlIGZpcnN0IHRpbWUuICBBbHNvCisJICogZm9yIHN1cHBv
cnRpbmcgZHJpdmVycyB0aGF0IGRvIG5vdCBpbXBsZW1lbnQgdGhpcworCSAqIGZlYXR1cmUuIFRo
ZXkgd2lsbCBhbHdheXMgaGF2ZSB0byBjYWxsIHNlbmR0bygpIG9yIHBvbGwoKS4KKwkgKi8KKwlw
b29sLT5jYWNoZWRfbmVlZF93YWtldXAgPSBYRFBfV0FLRVVQX1RYOwogCiAJZGV2X2hvbGQobmV0
ZGV2KTsKIAotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
