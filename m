Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 928D52A7BC2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Nov 2020 11:29:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4335D810FD;
	Thu,  5 Nov 2020 10:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hSqHTOkjSUpV; Thu,  5 Nov 2020 10:29:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC56686151;
	Thu,  5 Nov 2020 10:28:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 870341BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:28:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 82FFA8613C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:28:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 66AM6tnWK0AZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Nov 2020 10:28:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D194286130
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:28:57 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id u4so1109763pgr.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Nov 2020 02:28:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q3bRujA0ZEsvdVE3nlPl8w/UbQx3Egjm7KQDsrceDhQ=;
 b=uI17Aq7jATgc2MGuD1Oo73V558Bkwp+JfWCmHbgyU3TEDBQ4BKH4Hj/sQAXo+/dlSq
 o7SXAV1SV0agKvlurxbNACO6f62k+ygulDSZgFx2MU8TEfobQaplu/P8pUVEt8CxhB+x
 tflkJjdo6LYXHaPyFMavj9OSdcl/zSrhqMXjgC0wnSTdsy//rLNBy8fHAUKewa7h2bzN
 XDtFkmqtFwG/kZWkgl1IJhxUVrr5guSWbsrVE2j7fZUg90XjvCMtIAjJnI4lPMHOGKvk
 C6qz++KT/mIQwfIevAgL7oS4NO0j6WC84B/4bJGnh6ZQBSLWPeXqJUnDYfBLBa2MDJEE
 uriA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q3bRujA0ZEsvdVE3nlPl8w/UbQx3Egjm7KQDsrceDhQ=;
 b=YBWMEPNiK38eSLTWAN9WqcIRnzWfQnSbvoT4+W4dw1+Z71aGCP8zxAVtlEOsS17hwj
 hutuum8Iy4R5mlJF+Xg1BehBru+8e7qFSmShjKqGdpaTC2Wonnkso0iMb2QxFSFxUqQm
 EGJ0Z51pnp+Tx2sU1rRyMS5i/lHFTdrblRicgdUZciS8lmzR47VgJwAWcbNtvLQtYHJh
 eIv4t548IO+ZmbMRTyfculNwVQ8NI9Yok/siULC5OSYQS91cjEKR0w7Cp2AoyCiDUgdy
 XHZxWdusawcQ3qmAJql4UrYcLC90i+81WbR/kqNEGKFIo+75MPtHp94FY5tnnUwswp8d
 /9sg==
X-Gm-Message-State: AOAM53058YUn8qSVlLk8EQWjWPhBBVwimB1ENaO+MDinn2W/EoNgRMGR
 kAO+i0PkvuyptvcERp7ypoA=
X-Google-Smtp-Source: ABdhPJyS7IkdyRraXLHIRhrweqgSk9iYK4Py7bZeMndru8veJTHua7VNfUMxtyK9ZTLLB+RIcesPxA==
X-Received: by 2002:a17:90b:ec9:: with SMTP id
 gz9mr1784134pjb.105.1604572137531; 
 Thu, 05 Nov 2020 02:28:57 -0800 (PST)
Received: from btopel-mobl.ger.intel.com (fmdmzpr03-ext.fm.intel.com.
 [192.55.54.38])
 by smtp.gmail.com with ESMTPSA id 192sm2050117pfz.200.2020.11.05.02.28.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Nov 2020 02:28:56 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Thu,  5 Nov 2020 11:28:07 +0100
Message-Id: <20201105102812.152836-5-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201105102812.152836-1-bjorn.topel@gmail.com>
References: <20201105102812.152836-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next v2 4/9] xsk: check need
 wakeup flag in sendmsg()
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
aWtlOgoKbmVlZCB3YWtldXAgfCBwb2xsKCkgICAgICAgfCBzZW5kbXNnKCkgICB8IHJlY3Ztc2co
KQotLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0K
ZGlzYWJsZWQgICAgfCB3YWtlIFR4ICAgICAgfCB3YWtlIFR4ICAgICB8IG5vcAplbmFibGVkICAg
ICB8IGNoZWNrIGZsYWc7ICB8IGNoZWNrIGZsYWc7IHwgY2hlY2sgZmxhZzsKICAgICAgICAgICAg
fCAgIHdha2UgVHgvUnggfCAgIHdha2UgVHggICB8ICAgd2FrZSBSeAoKU2lnbmVkLW9mZi1ieTog
QmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgotLS0KIG5ldC94ZHAveHNrLmMg
ICAgICAgICAgIHwgIDYgKysrKystCiBuZXQveGRwL3hza19idWZmX3Bvb2wuYyB8IDEzICsrKysr
Ky0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9uZXQveGRwL3hzay5jIGIvbmV0L3hkcC94c2suYwppbmRleCAxN2Q1
MWQxYTU3NTIuLjJlNWI5ZjI3YzdhMyAxMDA2NDQKLS0tIGEvbmV0L3hkcC94c2suYworKysgYi9u
ZXQveGRwL3hzay5jCkBAIC00NjUsMTMgKzQ2NSwxNyBAQCBzdGF0aWMgaW50IHhza19zZW5kbXNn
KHN0cnVjdCBzb2NrZXQgKnNvY2ssIHN0cnVjdCBtc2doZHIgKm0sIHNpemVfdCB0b3RhbF9sZW4p
CiAJYm9vbCBuZWVkX3dhaXQgPSAhKG0tPm1zZ19mbGFncyAmIE1TR19ET05UV0FJVCk7CiAJc3Ry
dWN0IHNvY2sgKnNrID0gc29jay0+c2s7CiAJc3RydWN0IHhkcF9zb2NrICp4cyA9IHhkcF9zayhz
ayk7CisJc3RydWN0IHhza19idWZmX3Bvb2wgKnBvb2w7CiAKIAlpZiAodW5saWtlbHkoIXhza19p
c19ib3VuZCh4cykpKQogCQlyZXR1cm4gLUVOWElPOwogCWlmICh1bmxpa2VseShuZWVkX3dhaXQp
KQogCQlyZXR1cm4gLUVPUE5PVFNVUFA7CiAKLQlyZXR1cm4gX194c2tfc2VuZG1zZyhzayk7CisJ
cG9vbCA9IHhzLT5wb29sOworCWlmIChwb29sLT5jYWNoZWRfbmVlZF93YWtldXAgJiBYRFBfV0FL
RVVQX1RYKQorCQlyZXR1cm4gX194c2tfc2VuZG1zZyhzayk7CisJcmV0dXJuIDA7CiB9CiAKIHN0
YXRpYyBpbnQgeHNrX3JlY3Ztc2coc3RydWN0IHNvY2tldCAqc29jaywgc3RydWN0IG1zZ2hkciAq
bSwgc2l6ZV90IGxlbiwgaW50IGZsYWdzKQpkaWZmIC0tZ2l0IGEvbmV0L3hkcC94c2tfYnVmZl9w
b29sLmMgYi9uZXQveGRwL3hza19idWZmX3Bvb2wuYwppbmRleCA2NGM5ZTU1ZDRkNGUuLmE0YWNi
NWU5NTc2ZiAxMDA2NDQKLS0tIGEvbmV0L3hkcC94c2tfYnVmZl9wb29sLmMKKysrIGIvbmV0L3hk
cC94c2tfYnVmZl9wb29sLmMKQEAgLTE0NCwxNCArMTQ0LDEzIEBAIHN0YXRpYyBpbnQgX194cF9h
c3NpZ25fZGV2KHN0cnVjdCB4c2tfYnVmZl9wb29sICpwb29sLAogCWlmIChlcnIpCiAJCXJldHVy
biBlcnI7CiAKLQlpZiAoZmxhZ3MgJiBYRFBfVVNFX05FRURfV0FLRVVQKSB7CisJaWYgKGZsYWdz
ICYgWERQX1VTRV9ORUVEX1dBS0VVUCkKIAkJcG9vbC0+dXNlc19uZWVkX3dha2V1cCA9IHRydWU7
Ci0JCS8qIFR4IG5lZWRzIHRvIGJlIGV4cGxpY2l0bHkgd29rZW4gdXAgdGhlIGZpcnN0IHRpbWUu
Ci0JCSAqIEFsc28gZm9yIHN1cHBvcnRpbmcgZHJpdmVycyB0aGF0IGRvIG5vdCBpbXBsZW1lbnQg
dGhpcwotCQkgKiBmZWF0dXJlLiBUaGV5IHdpbGwgYWx3YXlzIGhhdmUgdG8gY2FsbCBzZW5kdG8o
KS4KLQkJICovCi0JCXBvb2wtPmNhY2hlZF9uZWVkX3dha2V1cCA9IFhEUF9XQUtFVVBfVFg7Ci0J
fQorCS8qIFR4IG5lZWRzIHRvIGJlIGV4cGxpY2l0bHkgd29rZW4gdXAgdGhlIGZpcnN0IHRpbWUu
ICBBbHNvCisJICogZm9yIHN1cHBvcnRpbmcgZHJpdmVycyB0aGF0IGRvIG5vdCBpbXBsZW1lbnQg
dGhpcworCSAqIGZlYXR1cmUuIFRoZXkgd2lsbCBhbHdheXMgaGF2ZSB0byBjYWxsIHNlbmR0bygp
IG9yIHBvbGwoKS4KKwkgKi8KKwlwb29sLT5jYWNoZWRfbmVlZF93YWtldXAgPSBYRFBfV0FLRVVQ
X1RYOwogCiAJZGV2X2hvbGQobmV0ZGV2KTsKIAotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
