Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 794A61D3374
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2020 16:49:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0AE0E81F27;
	Thu, 14 May 2020 14:49:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ScwwMWNZK2DS; Thu, 14 May 2020 14:49:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A480B85DA4;
	Thu, 14 May 2020 14:49:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C71801BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 08:37:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C37A388B2F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 08:37:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3JbHZfyOuBNK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2020 08:37:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 476F088B61
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 08:37:58 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id u35so971526pgk.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 01:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wEXYgsYD3Y+R+C2BDRDsqzw6Doabf1POTv38ULLKg1A=;
 b=OR3SMSkWc3SZwYrm5NqAbMgi7g//0rCSb/C5gtgbjBs3zIguCqeI5boEpb5mIwyqOJ
 dKPJH6qN3gv8fzhSLX8BMlAWCqBCEcijM/f6GhyLJYnPE2NEHy/YHMLowQGNDxm04eMP
 41tjJgiyxfaIhaGZ8bet9SuslR7uoY25unZlGgyfVPkb8hJ4b3fj+R3NGHUweSEKDL/e
 VD5yJzSer/9CovMy7s6ijUoXXqzKhUZwWKFLQQSctom/CXBSrEHkGOwZSAfSW61iOOv6
 Jh9t5JFGEcAnhQI7oX444JSKDQd2y8pZ0p6sOi578599okDldEAa3fDNIfjsQrosc+Kb
 0+cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wEXYgsYD3Y+R+C2BDRDsqzw6Doabf1POTv38ULLKg1A=;
 b=U1ATivGygo1sVCpD/a/7DlkKWzaFcvO60kDpApMoOvKrnElttT0E+XzfWjwkbtwRdX
 l+cPTNb49td5PNz7nyZ6iWpIalcVyRxPs3D5v3AtYszEO6rlKNUklCny4X7G6Fr/26Ck
 1Bz/CoVDT8HfzGc0SO67pB1pYib1s5Omjg1YG8/IeoLZ2tFhDDD/cAp9SAEd/jATVGZr
 PLy1rOOYNsm83RwuTNlzx5dVx5eLnY7I0A1NfCjlka8BjoZ+zt+fp1o/hWFEHIaApXLt
 p6kUUXrKpoSnYgmgcv1KHQ0zLMu0PUKUzo8I/5+4ks0O866Wf74GDLLrZF9W31yQ3NX8
 9OMA==
X-Gm-Message-State: AOAM533zB6ujDIDXsRkc31Vxp75f6ZL8JLnUTelF+9SgQt4TLAFCzgTp
 JRvfSCVgyppUs2Hji7P3gcw=
X-Google-Smtp-Source: ABdhPJyGhldI1yUgQzAJC5iNDWeXNYM1jsXFvcKW4UQFt3OQccRT9vRvn6wyUe8rujswJbBkfgOZ3w==
X-Received: by 2002:a63:da4c:: with SMTP id l12mr3109499pgj.3.1589445477570;
 Thu, 14 May 2020 01:37:57 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.54.42])
 by smtp.gmail.com with ESMTPSA id k4sm1608058pgg.88.2020.05.14.01.37.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:37:56 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, davem@davemloft.net, kuba@kernel.org,
 hawk@kernel.org, john.fastabend@gmail.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, magnus.karlsson@intel.com, jonathan.lemon@gmail.com,
 jeffrey.t.kirsher@intel.com
Date: Thu, 14 May 2020 10:37:03 +0200
Message-Id: <20200514083710.143394-8-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200514083710.143394-1-bjorn.topel@gmail.com>
References: <20200514083710.143394-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 14 May 2020 14:49:16 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v2 07/14] i40e,
 xsk: migrate to new MEM_TYPE_XSK_BUFF_POOL
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
Cc: maximmi@mellanox.com,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKUmVtb3ZlIE1FTV9U
WVBFX1pFUk9fQ09QWSBpbiBmYXZvciBvZiB0aGUgbmV3IE1FTV9UWVBFX1hTS19CVUZGX1BPT0wK
QVBJcy4gVGhlIEFGX1hEUCB6ZXJvLWNvcHkgcnhfYmkgcmluZyBpcyBub3cgc2ltcGx5IGEgc3Ry
dWN0IHhkcF9idWZmCnBvaW50ZXIuCgpDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5v
cmcKU2lnbmVkLW9mZi1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgfCAgMTkgKy0K
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmggfCAgIDkgKy0KIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYyAgfCAzNTAgKystLS0tLS0t
LS0tLS0tLS0tLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suaCAg
fCAgIDEgLQogNCBmaWxlcyBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspLCAzMzIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21h
aW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMKaW5kZXgg
M2UxNjk1YmI4MjYyLi5lYTczOTViMzkxZTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX21haW4uYwpAQCAtMzI2NiwyMSArMzI2NiwxOSBAQCBzdGF0aWMgaW50IGk0
MGVfY29uZmlndXJlX3J4X3Jpbmcoc3RydWN0IGk0MGVfcmluZyAqcmluZykKIAkJcmV0ID0gaTQw
ZV9hbGxvY19yeF9iaV96YyhyaW5nKTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7Ci0JCXJp
bmctPnJ4X2J1Zl9sZW4gPSByaW5nLT54c2tfdW1lbS0+Y2h1bmtfc2l6ZV9ub2hyIC0KLQkJCQkg
ICBYRFBfUEFDS0VUX0hFQURST09NOworCQlyaW5nLT5yeF9idWZfbGVuID0geHNrX3VtZW1fZ2V0
X3J4X2ZyYW1lX3NpemUocmluZy0+eHNrX3VtZW0pOwogCQkvKiBGb3IgQUZfWERQIFpDLCB3ZSBk
aXNhbGxvdyBwYWNrZXRzIHRvIHNwYW4gb24KIAkJICogbXVsdGlwbGUgYnVmZmVycywgdGh1cyBs
ZXR0aW5nIHVzIHNraXAgdGhhdAogCQkgKiBoYW5kbGluZyBpbiB0aGUgZmFzdC1wYXRoLgogCQkg
Ki8KIAkJY2hhaW5fbGVuID0gMTsKLQkJcmluZy0+emNhLmZyZWUgPSBpNDBlX3pjYV9mcmVlOwog
CQlyZXQgPSB4ZHBfcnhxX2luZm9fcmVnX21lbV9tb2RlbCgmcmluZy0+eGRwX3J4cSwKLQkJCQkJ
CSBNRU1fVFlQRV9aRVJPX0NPUFksCi0JCQkJCQkgJnJpbmctPnpjYSk7CisJCQkJCQkgTUVNX1RZ
UEVfWFNLX0JVRkZfUE9PTCwKKwkJCQkJCSBOVUxMKTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiBy
ZXQ7CiAJCWRldl9pbmZvKCZ2c2ktPmJhY2stPnBkZXYtPmRldiwKLQkJCSAiUmVnaXN0ZXJlZCBY
RFAgbWVtIG1vZGVsIE1FTV9UWVBFX1pFUk9fQ09QWSBvbiBSeCByaW5nICVkXG4iLAorCQkJICJS
ZWdpc3RlcmVkIFhEUCBtZW0gbW9kZWwgTUVNX1RZUEVfWFNLX0JVRkZfUE9PTCBvbiBSeCByaW5n
ICVkXG4iLAogCQkJIHJpbmctPnF1ZXVlX2luZGV4KTsKIAogCX0gZWxzZSB7CkBAIC0zMzUxLDkg
KzMzNDksMTIgQEAgc3RhdGljIGludCBpNDBlX2NvbmZpZ3VyZV9yeF9yaW5nKHN0cnVjdCBpNDBl
X3JpbmcgKnJpbmcpCiAJcmluZy0+dGFpbCA9IGh3LT5od19hZGRyICsgSTQwRV9RUlhfVEFJTChw
Zl9xKTsKIAl3cml0ZWwoMCwgcmluZy0+dGFpbCk7CiAKLQlvayA9IHJpbmctPnhza191bWVtID8K
LQkgICAgIGk0MGVfYWxsb2NfcnhfYnVmZmVyc196YyhyaW5nLCBJNDBFX0RFU0NfVU5VU0VEKHJp
bmcpKSA6Ci0JICAgICAhaTQwZV9hbGxvY19yeF9idWZmZXJzKHJpbmcsIEk0MEVfREVTQ19VTlVT
RUQocmluZykpOworCWlmIChyaW5nLT54c2tfdW1lbSkgeworCQl4c2tfYnVmZl9zZXRfcnhxX2lu
Zm8ocmluZy0+eHNrX3VtZW0sICZyaW5nLT54ZHBfcnhxKTsKKwkJb2sgPSBpNDBlX2FsbG9jX3J4
X2J1ZmZlcnNfemMocmluZywgSTQwRV9ERVNDX1VOVVNFRChyaW5nKSk7CisJfSBlbHNlIHsKKwkJ
b2sgPSAhaTQwZV9hbGxvY19yeF9idWZmZXJzKHJpbmcsIEk0MEVfREVTQ19VTlVTRUQocmluZykp
OworCX0KIAlpZiAoIW9rKSB7CiAJCS8qIExvZyB0aGlzIGluIGNhc2UgdGhlIHVzZXIgaGFzIGZv
cmdvdHRlbiB0byBnaXZlIHRoZSBrZXJuZWwKIAkJICogYW55IGJ1ZmZlcnMsIGV2ZW4gbGF0ZXIg
aW4gdGhlIGFwcGxpY2F0aW9uLgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX3R4cnguaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV90eHJ4LmgKaW5kZXggZDM0MzQ5OGU4ZGU1Li41YzI1NTk3N2ZkNTggMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmgKKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguaApAQCAtMzAxLDEyICszMDEsNiBAQCBz
dHJ1Y3QgaTQwZV9yeF9idWZmZXIgewogCV9fdTE2IHBhZ2VjbnRfYmlhczsKIH07CiAKLXN0cnVj
dCBpNDBlX3J4X2J1ZmZlcl96YyB7Ci0JZG1hX2FkZHJfdCBkbWE7Ci0Jdm9pZCAqYWRkcjsKLQl1
NjQgaGFuZGxlOwotfTsKLQogc3RydWN0IGk0MGVfcXVldWVfc3RhdHMgewogCXU2NCBwYWNrZXRz
OwogCXU2NCBieXRlczsKQEAgLTM1Niw3ICszNTAsNyBAQCBzdHJ1Y3QgaTQwZV9yaW5nIHsKIAl1
bmlvbiB7CiAJCXN0cnVjdCBpNDBlX3R4X2J1ZmZlciAqdHhfYmk7CiAJCXN0cnVjdCBpNDBlX3J4
X2J1ZmZlciAqcnhfYmk7Ci0JCXN0cnVjdCBpNDBlX3J4X2J1ZmZlcl96YyAqcnhfYmlfemM7CisJ
CXN0cnVjdCB4ZHBfYnVmZiAqKnJ4X2JpX3pjOwogCX07CiAJREVDTEFSRV9CSVRNQVAoc3RhdGUs
IF9fSTQwRV9SSU5HX1NUQVRFX05CSVRTKTsKIAl1MTYgcXVldWVfaW5kZXg7CQkvKiBRdWV1ZSBu
dW1iZXIgb2YgcmluZyAqLwpAQCAtNDE4LDcgKzQxMiw2IEBAIHN0cnVjdCBpNDBlX3Jpbmcgewog
CXN0cnVjdCBpNDBlX2NoYW5uZWwgKmNoOwogCXN0cnVjdCB4ZHBfcnhxX2luZm8geGRwX3J4cTsK
IAlzdHJ1Y3QgeGRwX3VtZW0gKnhza191bWVtOwotCXN0cnVjdCB6ZXJvX2NvcHlfYWxsb2NhdG9y
IHpjYTsgLyogWkMgYWxsb2NhdG9yIGFuY2hvciAqLwogfSBfX19fY2FjaGVsaW5lX2ludGVybm9k
ZWFsaWduZWRfaW5fc21wOwogCiBzdGF0aWMgaW5saW5lIGJvb2wgcmluZ191c2VzX2J1aWxkX3Nr
YihzdHJ1Y3QgaTQwZV9yaW5nICpyaW5nKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX3hzay5jCmluZGV4IDRmY2UwNTdmMWVlYy4uNDYwZjUwNTJlMWRiIDEwMDY0NAotLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCkBAIC0yMyw2OCArMjMsMTEgQEAg
dm9pZCBpNDBlX2NsZWFyX3J4X2JpX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcpCiAJICAg
ICAgIHNpemVvZigqcnhfcmluZy0+cnhfYmlfemMpICogcnhfcmluZy0+Y291bnQpOwogfQogCi1z
dGF0aWMgc3RydWN0IGk0MGVfcnhfYnVmZmVyX3pjICppNDBlX3J4X2JpKHN0cnVjdCBpNDBlX3Jp
bmcgKnJ4X3JpbmcsIHUzMiBpZHgpCitzdGF0aWMgc3RydWN0IHhkcF9idWZmICoqaTQwZV9yeF9i
aShzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCB1MzIgaWR4KQogewogCXJldHVybiAmcnhfcmlu
Zy0+cnhfYmlfemNbaWR4XTsKIH0KIAotLyoqCi0gKiBpNDBlX3hza191bWVtX2RtYV9tYXAgLSBE
TUEgbWFwcyBhbGwgVU1FTSBtZW1vcnkgZm9yIHRoZSBuZXRkZXYKLSAqIEB2c2k6IEN1cnJlbnQg
VlNJCi0gKiBAdW1lbTogVU1FTSB0byBETUEgbWFwCi0gKgotICogUmV0dXJucyAwIG9uIHN1Y2Nl
c3MsIDwwIG9uIGZhaWx1cmUKLSAqKi8KLXN0YXRpYyBpbnQgaTQwZV94c2tfdW1lbV9kbWFfbWFw
KHN0cnVjdCBpNDBlX3ZzaSAqdnNpLCBzdHJ1Y3QgeGRwX3VtZW0gKnVtZW0pCi17Ci0Jc3RydWN0
IGk0MGVfcGYgKnBmID0gdnNpLT5iYWNrOwotCXN0cnVjdCBkZXZpY2UgKmRldjsKLQl1bnNpZ25l
ZCBpbnQgaSwgajsKLQlkbWFfYWRkcl90IGRtYTsKLQotCWRldiA9ICZwZi0+cGRldi0+ZGV2Owot
CWZvciAoaSA9IDA7IGkgPCB1bWVtLT5ucGdzOyBpKyspIHsKLQkJZG1hID0gZG1hX21hcF9wYWdl
X2F0dHJzKGRldiwgdW1lbS0+cGdzW2ldLCAwLCBQQUdFX1NJWkUsCi0JCQkJCSBETUFfQklESVJF
Q1RJT05BTCwgSTQwRV9SWF9ETUFfQVRUUik7Ci0JCWlmIChkbWFfbWFwcGluZ19lcnJvcihkZXYs
IGRtYSkpCi0JCQlnb3RvIG91dF91bm1hcDsKLQotCQl1bWVtLT5wYWdlc1tpXS5kbWEgPSBkbWE7
Ci0JfQotCi0JcmV0dXJuIDA7Ci0KLW91dF91bm1hcDoKLQlmb3IgKGogPSAwOyBqIDwgaTsgaisr
KSB7Ci0JCWRtYV91bm1hcF9wYWdlX2F0dHJzKGRldiwgdW1lbS0+cGFnZXNbaV0uZG1hLCBQQUdF
X1NJWkUsCi0JCQkJICAgICBETUFfQklESVJFQ1RJT05BTCwgSTQwRV9SWF9ETUFfQVRUUik7Ci0J
CXVtZW0tPnBhZ2VzW2ldLmRtYSA9IDA7Ci0JfQotCi0JcmV0dXJuIC0xOwotfQotCi0vKioKLSAq
IGk0MGVfeHNrX3VtZW1fZG1hX3VubWFwIC0gRE1BIHVubWFwcyBhbGwgVU1FTSBtZW1vcnkgZm9y
IHRoZSBuZXRkZXYKLSAqIEB2c2k6IEN1cnJlbnQgVlNJCi0gKiBAdW1lbTogVU1FTSB0byBETUEg
bWFwCi0gKiovCi1zdGF0aWMgdm9pZCBpNDBlX3hza191bWVtX2RtYV91bm1hcChzdHJ1Y3QgaTQw
ZV92c2kgKnZzaSwgc3RydWN0IHhkcF91bWVtICp1bWVtKQotewotCXN0cnVjdCBpNDBlX3BmICpw
ZiA9IHZzaS0+YmFjazsKLQlzdHJ1Y3QgZGV2aWNlICpkZXY7Ci0JdW5zaWduZWQgaW50IGk7Ci0K
LQlkZXYgPSAmcGYtPnBkZXYtPmRldjsKLQotCWZvciAoaSA9IDA7IGkgPCB1bWVtLT5ucGdzOyBp
KyspIHsKLQkJZG1hX3VubWFwX3BhZ2VfYXR0cnMoZGV2LCB1bWVtLT5wYWdlc1tpXS5kbWEsIFBB
R0VfU0laRSwKLQkJCQkgICAgIERNQV9CSURJUkVDVElPTkFMLCBJNDBFX1JYX0RNQV9BVFRSKTsK
LQotCQl1bWVtLT5wYWdlc1tpXS5kbWEgPSAwOwotCX0KLX0KLQogLyoqCiAgKiBpNDBlX3hza191
bWVtX2VuYWJsZSAtIEVuYWJsZS9hc3NvY2lhdGUgYSBVTUVNIHRvIGEgY2VydGFpbiByaW5nL3Fp
ZAogICogQHZzaTogQ3VycmVudCBWU0kKQEAgLTk3LDcgKzQwLDYgQEAgc3RhdGljIGludCBpNDBl
X3hza191bWVtX2VuYWJsZShzdHJ1Y3QgaTQwZV92c2kgKnZzaSwgc3RydWN0IHhkcF91bWVtICp1
bWVtLAogCQkJCXUxNiBxaWQpCiB7CiAJc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiA9IHZzaS0+
bmV0ZGV2OwotCXN0cnVjdCB4ZHBfdW1lbV9mcV9yZXVzZSAqcmV1c2VxOwogCWJvb2wgaWZfcnVu
bmluZzsKIAlpbnQgZXJyOwogCkBAIC0xMTEsMTMgKzUzLDcgQEAgc3RhdGljIGludCBpNDBlX3hz
a191bWVtX2VuYWJsZShzdHJ1Y3QgaTQwZV92c2kgKnZzaSwgc3RydWN0IHhkcF91bWVtICp1bWVt
LAogCSAgICBxaWQgPj0gbmV0ZGV2LT5yZWFsX251bV90eF9xdWV1ZXMpCiAJCXJldHVybiAtRUlO
VkFMOwogCi0JcmV1c2VxID0geHNrX3JldXNlcV9wcmVwYXJlKHZzaS0+cnhfcmluZ3NbMF0tPmNv
dW50KTsKLQlpZiAoIXJldXNlcSkKLQkJcmV0dXJuIC1FTk9NRU07Ci0KLQl4c2tfcmV1c2VxX2Zy
ZWUoeHNrX3JldXNlcV9zd2FwKHVtZW0sIHJldXNlcSkpOwotCi0JZXJyID0gaTQwZV94c2tfdW1l
bV9kbWFfbWFwKHZzaSwgdW1lbSk7CisJZXJyID0geHNrX2J1ZmZfZG1hX21hcCh1bWVtLCAmdnNp
LT5iYWNrLT5wZGV2LT5kZXYsIEk0MEVfUlhfRE1BX0FUVFIpOwogCWlmIChlcnIpCiAJCXJldHVy
biBlcnI7CiAKQEAgLTE3MCw3ICsxMDYsNyBAQCBzdGF0aWMgaW50IGk0MGVfeHNrX3VtZW1fZGlz
YWJsZShzdHJ1Y3QgaTQwZV92c2kgKnZzaSwgdTE2IHFpZCkKIAl9CiAKIAljbGVhcl9iaXQocWlk
LCB2c2ktPmFmX3hkcF96Y19xcHMpOwotCWk0MGVfeHNrX3VtZW1fZG1hX3VubWFwKHZzaSwgdW1l
bSk7CisJeHNrX2J1ZmZfZG1hX3VubWFwKHVtZW0sIEk0MEVfUlhfRE1BX0FUVFIpOwogCiAJaWYg
KGlmX3J1bm5pbmcpIHsKIAkJZXJyID0gaTQwZV9xdWV1ZV9wYWlyX2VuYWJsZSh2c2ksIHFpZCk7
CkBAIC0yMDksMTEgKzE0NSw5IEBAIGludCBpNDBlX3hza191bWVtX3NldHVwKHN0cnVjdCBpNDBl
X3ZzaSAqdnNpLCBzdHJ1Y3QgeGRwX3VtZW0gKnVtZW0sCiAgKiovCiBzdGF0aWMgaW50IGk0MGVf
cnVuX3hkcF96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCBzdHJ1Y3QgeGRwX2J1ZmYgKnhk
cCkKIHsKLQlzdHJ1Y3QgeGRwX3VtZW0gKnVtZW0gPSByeF9yaW5nLT54c2tfdW1lbTsKIAlpbnQg
ZXJyLCByZXN1bHQgPSBJNDBFX1hEUF9QQVNTOwogCXN0cnVjdCBpNDBlX3JpbmcgKnhkcF9yaW5n
OwogCXN0cnVjdCBicGZfcHJvZyAqeGRwX3Byb2c7Ci0JdTY0IG9mZnNldDsKIAl1MzIgYWN0Owog
CiAJcmN1X3JlYWRfbG9jaygpOwpAQCAtMjIyLDkgKzE1Niw2IEBAIHN0YXRpYyBpbnQgaTQwZV9y
dW5feGRwX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsIHN0cnVjdCB4ZHBfYnVmZiAqeGRw
KQogCSAqLwogCXhkcF9wcm9nID0gUkVBRF9PTkNFKHJ4X3JpbmctPnhkcF9wcm9nKTsKIAlhY3Qg
PSBicGZfcHJvZ19ydW5feGRwKHhkcF9wcm9nLCB4ZHApOwotCW9mZnNldCA9IHhkcC0+ZGF0YSAt
IHhkcC0+ZGF0YV9oYXJkX3N0YXJ0OwotCi0JeGRwLT5oYW5kbGUgPSB4c2tfdW1lbV9hZGp1c3Rf
b2Zmc2V0KHVtZW0sIHhkcC0+aGFuZGxlLCBvZmZzZXQpOwogCiAJc3dpdGNoIChhY3QpIHsKIAlj
YXNlIFhEUF9QQVNTOgpAQCAtMjUxLDEwNyArMTgyLDI2IEBAIHN0YXRpYyBpbnQgaTQwZV9ydW5f
eGRwX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsIHN0cnVjdCB4ZHBfYnVmZiAqeGRwKQog
CXJldHVybiByZXN1bHQ7CiB9CiAKLS8qKgotICogaTQwZV9hbGxvY19idWZmZXJfemMgLSBBbGxv
Y2F0ZXMgYW4gaTQwZV9yeF9idWZmZXJfemMKLSAqIEByeF9yaW5nOiBSeCByaW5nCi0gKiBAYmk6
IFJ4IGJ1ZmZlciB0byBwb3B1bGF0ZQotICoKLSAqIFRoaXMgZnVuY3Rpb24gYWxsb2NhdGVzIGFu
IFJ4IGJ1ZmZlci4gVGhlIGJ1ZmZlciBjYW4gY29tZSBmcm9tIGZpbGwKLSAqIHF1ZXVlLCBvciB2
aWEgdGhlIHJlY3ljbGUgcXVldWUgKG5leHRfdG9fYWxsb2MpLgotICoKLSAqIFJldHVybnMgdHJ1
ZSBmb3IgYSBzdWNjZXNzZnVsIGFsbG9jYXRpb24sIGZhbHNlIG90aGVyd2lzZQotICoqLwotc3Rh
dGljIGJvb2wgaTQwZV9hbGxvY19idWZmZXJfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywK
LQkJCQkgc3RydWN0IGk0MGVfcnhfYnVmZmVyX3pjICpiaSkKLXsKLQlzdHJ1Y3QgeGRwX3VtZW0g
KnVtZW0gPSByeF9yaW5nLT54c2tfdW1lbTsKLQl2b2lkICphZGRyID0gYmktPmFkZHI7Ci0JdTY0
IGhhbmRsZSwgaHI7Ci0KLQlpZiAoYWRkcikgewotCQlyeF9yaW5nLT5yeF9zdGF0cy5wYWdlX3Jl
dXNlX2NvdW50Kys7Ci0JCXJldHVybiB0cnVlOwotCX0KLQotCWlmICgheHNrX3VtZW1fcGVla19h
ZGRyKHVtZW0sICZoYW5kbGUpKSB7Ci0JCXJ4X3JpbmctPnJ4X3N0YXRzLmFsbG9jX3BhZ2VfZmFp
bGVkKys7Ci0JCXJldHVybiBmYWxzZTsKLQl9Ci0KLQlociA9IHVtZW0tPmhlYWRyb29tICsgWERQ
X1BBQ0tFVF9IRUFEUk9PTTsKLQotCWJpLT5kbWEgPSB4ZHBfdW1lbV9nZXRfZG1hKHVtZW0sIGhh
bmRsZSk7Ci0JYmktPmRtYSArPSBocjsKLQotCWJpLT5hZGRyID0geGRwX3VtZW1fZ2V0X2RhdGEo
dW1lbSwgaGFuZGxlKTsKLQliaS0+YWRkciArPSBocjsKLQotCWJpLT5oYW5kbGUgPSB4c2tfdW1l
bV9hZGp1c3Rfb2Zmc2V0KHVtZW0sIGhhbmRsZSwgdW1lbS0+aGVhZHJvb20pOwotCi0JeHNrX3Vt
ZW1fcmVsZWFzZV9hZGRyKHVtZW0pOwotCXJldHVybiB0cnVlOwotfQotCi0vKioKLSAqIGk0MGVf
YWxsb2NfYnVmZmVyX3Nsb3dfemMgLSBBbGxvY2F0ZXMgYW4gaTQwZV9yeF9idWZmZXJfemMKLSAq
IEByeF9yaW5nOiBSeCByaW5nCi0gKiBAYmk6IFJ4IGJ1ZmZlciB0byBwb3B1bGF0ZQotICoKLSAq
IFRoaXMgZnVuY3Rpb24gYWxsb2NhdGVzIGFuIFJ4IGJ1ZmZlci4gVGhlIGJ1ZmZlciBjYW4gY29t
ZSBmcm9tIGZpbGwKLSAqIHF1ZXVlLCBvciB2aWEgdGhlIHJldXNlIHF1ZXVlLgotICoKLSAqIFJl
dHVybnMgdHJ1ZSBmb3IgYSBzdWNjZXNzZnVsIGFsbG9jYXRpb24sIGZhbHNlIG90aGVyd2lzZQot
ICoqLwotc3RhdGljIGJvb2wgaTQwZV9hbGxvY19idWZmZXJfc2xvd196YyhzdHJ1Y3QgaTQwZV9y
aW5nICpyeF9yaW5nLAotCQkJCSAgICAgIHN0cnVjdCBpNDBlX3J4X2J1ZmZlcl96YyAqYmkpCi17
Ci0Jc3RydWN0IHhkcF91bWVtICp1bWVtID0gcnhfcmluZy0+eHNrX3VtZW07Ci0JdTY0IGhhbmRs
ZSwgaHI7Ci0KLQlpZiAoIXhza191bWVtX3BlZWtfYWRkcl9ycSh1bWVtLCAmaGFuZGxlKSkgewot
CQlyeF9yaW5nLT5yeF9zdGF0cy5hbGxvY19wYWdlX2ZhaWxlZCsrOwotCQlyZXR1cm4gZmFsc2U7
Ci0JfQotCi0JaGFuZGxlICY9IHJ4X3JpbmctPnhza191bWVtLT5jaHVua19tYXNrOwotCi0JaHIg
PSB1bWVtLT5oZWFkcm9vbSArIFhEUF9QQUNLRVRfSEVBRFJPT007Ci0KLQliaS0+ZG1hID0geGRw
X3VtZW1fZ2V0X2RtYSh1bWVtLCBoYW5kbGUpOwotCWJpLT5kbWEgKz0gaHI7Ci0KLQliaS0+YWRk
ciA9IHhkcF91bWVtX2dldF9kYXRhKHVtZW0sIGhhbmRsZSk7Ci0JYmktPmFkZHIgKz0gaHI7Ci0K
LQliaS0+aGFuZGxlID0geHNrX3VtZW1fYWRqdXN0X29mZnNldCh1bWVtLCBoYW5kbGUsIHVtZW0t
PmhlYWRyb29tKTsKLQotCXhza191bWVtX3JlbGVhc2VfYWRkcl9ycSh1bWVtKTsKLQlyZXR1cm4g
dHJ1ZTsKLX0KLQotc3RhdGljIF9fYWx3YXlzX2lubGluZSBib29sCi1fX2k0MGVfYWxsb2Nfcnhf
YnVmZmVyc196YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCB1MTYgY291bnQsCi0JCQkgICBi
b29sIGFsbG9jKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCi0JCQkJICAgICAgc3RydWN0IGk0
MGVfcnhfYnVmZmVyX3pjICpiaSkpCitib29sIGk0MGVfYWxsb2NfcnhfYnVmZmVyc196YyhzdHJ1
Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCB1MTYgY291bnQpCiB7CiAJdTE2IG50dSA9IHJ4X3Jpbmct
Pm5leHRfdG9fdXNlOwogCXVuaW9uIGk0MGVfcnhfZGVzYyAqcnhfZGVzYzsKLQlzdHJ1Y3QgaTQw
ZV9yeF9idWZmZXJfemMgKmJpOworCXN0cnVjdCB4ZHBfYnVmZiAqKmJpLCAqeGRwOworCWRtYV9h
ZGRyX3QgZG1hOwogCWJvb2wgb2sgPSB0cnVlOwogCiAJcnhfZGVzYyA9IEk0MEVfUlhfREVTQyhy
eF9yaW5nLCBudHUpOwogCWJpID0gaTQwZV9yeF9iaShyeF9yaW5nLCBudHUpOwogCWRvIHsKLQkJ
aWYgKCFhbGxvYyhyeF9yaW5nLCBiaSkpIHsKKwkJeGRwID0geHNrX2J1ZmZfYWxsb2Mocnhfcmlu
Zy0+eHNrX3VtZW0pOworCQlpZiAoIXhkcCkgewogCQkJb2sgPSBmYWxzZTsKIAkJCWdvdG8gbm9f
YnVmZmVyczsKIAkJfQotCi0JCWRtYV9zeW5jX3NpbmdsZV9yYW5nZV9mb3JfZGV2aWNlKHJ4X3Jp
bmctPmRldiwgYmktPmRtYSwgMCwKLQkJCQkJCSByeF9yaW5nLT5yeF9idWZfbGVuLAotCQkJCQkJ
IERNQV9CSURJUkVDVElPTkFMKTsKLQotCQlyeF9kZXNjLT5yZWFkLnBrdF9hZGRyID0gY3B1X3Rv
X2xlNjQoYmktPmRtYSk7CisJCSpiaSA9IHhkcDsKKwkJZG1hID0geHNrX2J1ZmZfeGRwX2dldF9k
bWEoeGRwKTsKKwkJcnhfZGVzYy0+cmVhZC5wa3RfYWRkciA9IGNwdV90b19sZTY0KGRtYSk7CisJ
CXJ4X2Rlc2MtPnJlYWQuaGRyX2FkZHIgPSAwOwogCiAJCXJ4X2Rlc2MrKzsKIAkJYmkrKzsKQEAg
LTM2Myw3ICsyMTMsNiBAQCBfX2k0MGVfYWxsb2NfcnhfYnVmZmVyc196YyhzdHJ1Y3QgaTQwZV9y
aW5nICpyeF9yaW5nLCB1MTYgY291bnQsCiAJCQludHUgPSAwOwogCQl9CiAKLQkJcnhfZGVzYy0+
d2IucXdvcmQxLnN0YXR1c19lcnJvcl9sZW4gPSAwOwogCQljb3VudC0tOwogCX0gd2hpbGUgKGNv
dW50KTsKIApAQCAtMzc0LDEyNiArMjIzLDYgQEAgX19pNDBlX2FsbG9jX3J4X2J1ZmZlcnNfemMo
c3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgdTE2IGNvdW50LAogCXJldHVybiBvazsKIH0KIAot
LyoqCi0gKiBpNDBlX2FsbG9jX3J4X2J1ZmZlcnNfemMgLSBBbGxvY2F0ZXMgYSBudW1iZXIgb2Yg
UnggYnVmZmVycwotICogQHJ4X3Jpbmc6IFJ4IHJpbmcKLSAqIEBjb3VudDogVGhlIG51bWJlciBv
ZiBidWZmZXJzIHRvIGFsbG9jYXRlCi0gKgotICogVGhpcyBmdW5jdGlvbiBhbGxvY2F0ZXMgYSBu
dW1iZXIgb2YgUnggYnVmZmVycyBmcm9tIHRoZSByZXVzZSBxdWV1ZQotICogb3IgZmlsbCByaW5n
IGFuZCBwbGFjZXMgdGhlbSBvbiB0aGUgUnggcmluZy4KLSAqCi0gKiBSZXR1cm5zIHRydWUgZm9y
IGEgc3VjY2Vzc2Z1bCBhbGxvY2F0aW9uLCBmYWxzZSBvdGhlcndpc2UKLSAqKi8KLWJvb2wgaTQw
ZV9hbGxvY19yeF9idWZmZXJzX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsIHUxNiBjb3Vu
dCkKLXsKLQlyZXR1cm4gX19pNDBlX2FsbG9jX3J4X2J1ZmZlcnNfemMocnhfcmluZywgY291bnQs
Ci0JCQkJCSAgaTQwZV9hbGxvY19idWZmZXJfc2xvd196Yyk7Ci19Ci0KLS8qKgotICogaTQwZV9h
bGxvY19yeF9idWZmZXJzX2Zhc3RfemMgLSBBbGxvY2F0ZXMgYSBudW1iZXIgb2YgUnggYnVmZmVy
cwotICogQHJ4X3Jpbmc6IFJ4IHJpbmcKLSAqIEBjb3VudDogVGhlIG51bWJlciBvZiBidWZmZXJz
IHRvIGFsbG9jYXRlCi0gKgotICogVGhpcyBmdW5jdGlvbiBhbGxvY2F0ZXMgYSBudW1iZXIgb2Yg
UnggYnVmZmVycyBmcm9tIHRoZSBmaWxsIHJpbmcKLSAqIG9yIHRoZSBpbnRlcm5hbCByZWN5Y2xl
IG1lY2hhbmlzbSBhbmQgcGxhY2VzIHRoZW0gb24gdGhlIFJ4IHJpbmcuCi0gKgotICogUmV0dXJu
cyB0cnVlIGZvciBhIHN1Y2Nlc3NmdWwgYWxsb2NhdGlvbiwgZmFsc2Ugb3RoZXJ3aXNlCi0gKiov
Ci1zdGF0aWMgYm9vbCBpNDBlX2FsbG9jX3J4X2J1ZmZlcnNfZmFzdF96YyhzdHJ1Y3QgaTQwZV9y
aW5nICpyeF9yaW5nLCB1MTYgY291bnQpCi17Ci0JcmV0dXJuIF9faTQwZV9hbGxvY19yeF9idWZm
ZXJzX3pjKHJ4X3JpbmcsIGNvdW50LAotCQkJCQkgIGk0MGVfYWxsb2NfYnVmZmVyX3pjKTsKLX0K
LQotLyoqCi0gKiBpNDBlX2dldF9yeF9idWZmZXJfemMgLSBSZXR1cm4gdGhlIGN1cnJlbnQgUngg
YnVmZmVyCi0gKiBAcnhfcmluZzogUnggcmluZwotICogQHNpemU6IFRoZSBzaXplIG9mIHRoZSBy
eCBidWZmZXIgKHJlYWQgZnJvbSBkZXNjcmlwdG9yKQotICoKLSAqIFRoaXMgZnVuY3Rpb24gcmV0
dXJucyB0aGUgY3VycmVudCwgcmVjZWl2ZWQgUnggYnVmZmVyLCBhbmQgYWxzbwotICogZG9lcyBE
TUEgc3luY2hyb25pemF0aW9uLiAgdGhlIFJ4IHJpbmcuCi0gKgotICogUmV0dXJucyB0aGUgcmVj
ZWl2ZWQgUnggYnVmZmVyCi0gKiovCi1zdGF0aWMgc3RydWN0IGk0MGVfcnhfYnVmZmVyX3pjICpp
NDBlX2dldF9yeF9idWZmZXJfemMoCi0Jc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywKLQljb25z
dCB1bnNpZ25lZCBpbnQgc2l6ZSkKLXsKLQlzdHJ1Y3QgaTQwZV9yeF9idWZmZXJfemMgKmJpOwot
Ci0JYmkgPSBpNDBlX3J4X2JpKHJ4X3JpbmcsIHJ4X3JpbmctPm5leHRfdG9fY2xlYW4pOwotCi0J
Lyogd2UgYXJlIHJldXNpbmcgc28gc3luYyB0aGlzIGJ1ZmZlciBmb3IgQ1BVIHVzZSAqLwotCWRt
YV9zeW5jX3NpbmdsZV9yYW5nZV9mb3JfY3B1KHJ4X3JpbmctPmRldiwKLQkJCQkgICAgICBiaS0+
ZG1hLCAwLAotCQkJCSAgICAgIHNpemUsCi0JCQkJICAgICAgRE1BX0JJRElSRUNUSU9OQUwpOwot
Ci0JcmV0dXJuIGJpOwotfQotCi0vKioKLSAqIGk0MGVfcmV1c2VfcnhfYnVmZmVyX3pjIC0gUmVj
eWNsZSBhbiBSeCBidWZmZXIKLSAqIEByeF9yaW5nOiBSeCByaW5nCi0gKiBAb2xkX2JpOiBUaGUg
UnggYnVmZmVyIHRvIHJlY3ljbGUKLSAqCi0gKiBUaGlzIGZ1bmN0aW9uIHJlY3ljbGVzIGEgZmlu
aXNoZWQgUnggYnVmZmVyLCBhbmQgcGxhY2VzIGl0IG9uIHRoZQotICogcmVjeWNsZSBxdWV1ZSAo
bmV4dF90b19hbGxvYykuCi0gKiovCi1zdGF0aWMgdm9pZCBpNDBlX3JldXNlX3J4X2J1ZmZlcl96
YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAotCQkJCSAgICBzdHJ1Y3QgaTQwZV9yeF9idWZm
ZXJfemMgKm9sZF9iaSkKLXsKLQlzdHJ1Y3QgaTQwZV9yeF9idWZmZXJfemMgKm5ld19iaSA9IGk0
MGVfcnhfYmkocnhfcmluZywKLQkJCQkJCSAgICAgIHJ4X3JpbmctPm5leHRfdG9fYWxsb2MpOwot
CXUxNiBudGEgPSByeF9yaW5nLT5uZXh0X3RvX2FsbG9jOwotCi0JLyogdXBkYXRlLCBhbmQgc3Rv
cmUgbmV4dCB0byBhbGxvYyAqLwotCW50YSsrOwotCXJ4X3JpbmctPm5leHRfdG9fYWxsb2MgPSAo
bnRhIDwgcnhfcmluZy0+Y291bnQpID8gbnRhIDogMDsKLQotCS8qIHRyYW5zZmVyIHBhZ2UgZnJv
bSBvbGQgYnVmZmVyIHRvIG5ldyBidWZmZXIgKi8KLQluZXdfYmktPmRtYSA9IG9sZF9iaS0+ZG1h
OwotCW5ld19iaS0+YWRkciA9IG9sZF9iaS0+YWRkcjsKLQluZXdfYmktPmhhbmRsZSA9IG9sZF9i
aS0+aGFuZGxlOwotCi0Jb2xkX2JpLT5hZGRyID0gTlVMTDsKLX0KLQotLyoqCi0gKiBpNDBlX3pj
YV9mcmVlIC0gRnJlZSBjYWxsYmFjayBmb3IgTUVNX1RZUEVfWkVST19DT1BZIGFsbG9jYXRpb25z
Ci0gKiBAYWxsb2M6IFplcm8tY29weSBhbGxvY2F0b3IKLSAqIEBoYW5kbGU6IEJ1ZmZlciBoYW5k
bGUKLSAqKi8KLXZvaWQgaTQwZV96Y2FfZnJlZShzdHJ1Y3QgemVyb19jb3B5X2FsbG9jYXRvciAq
YWxsb2MsIHVuc2lnbmVkIGxvbmcgaGFuZGxlKQotewotCXN0cnVjdCBpNDBlX3J4X2J1ZmZlcl96
YyAqYmk7Ci0Jc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZzsKLQl1NjQgaHIsIG1hc2s7Ci0JdTE2
IG50YTsKLQotCXJ4X3JpbmcgPSBjb250YWluZXJfb2YoYWxsb2MsIHN0cnVjdCBpNDBlX3Jpbmcs
IHpjYSk7Ci0JaHIgPSByeF9yaW5nLT54c2tfdW1lbS0+aGVhZHJvb20gKyBYRFBfUEFDS0VUX0hF
QURST09NOwotCW1hc2sgPSByeF9yaW5nLT54c2tfdW1lbS0+Y2h1bmtfbWFzazsKLQotCW50YSA9
IHJ4X3JpbmctPm5leHRfdG9fYWxsb2M7Ci0JYmkgPSBpNDBlX3J4X2JpKHJ4X3JpbmcsIG50YSk7
Ci0KLQludGErKzsKLQlyeF9yaW5nLT5uZXh0X3RvX2FsbG9jID0gKG50YSA8IHJ4X3JpbmctPmNv
dW50KSA/IG50YSA6IDA7Ci0KLQloYW5kbGUgJj0gbWFzazsKLQotCWJpLT5kbWEgPSB4ZHBfdW1l
bV9nZXRfZG1hKHJ4X3JpbmctPnhza191bWVtLCBoYW5kbGUpOwotCWJpLT5kbWEgKz0gaHI7Ci0K
LQliaS0+YWRkciA9IHhkcF91bWVtX2dldF9kYXRhKHJ4X3JpbmctPnhza191bWVtLCBoYW5kbGUp
OwotCWJpLT5hZGRyICs9IGhyOwotCi0JYmktPmhhbmRsZSA9IHhza191bWVtX2FkanVzdF9vZmZz
ZXQocnhfcmluZy0+eHNrX3VtZW0sICh1NjQpaGFuZGxlLAotCQkJCQkgICAgcnhfcmluZy0+eHNr
X3VtZW0tPmhlYWRyb29tKTsKLX0KLQogLyoqCiAgKiBpNDBlX2NvbnN0cnVjdF9za2JfemMgLSBD
cmVhdGUgc2tidWZmZiBmcm9tIHplcm8tY29weSBSeCBidWZmZXIKICAqIEByeF9yaW5nOiBSeCBy
aW5nCkBAIC01MDUsNyArMjM0LDYgQEAgdm9pZCBpNDBlX3pjYV9mcmVlKHN0cnVjdCB6ZXJvX2Nv
cHlfYWxsb2NhdG9yICphbGxvYywgdW5zaWduZWQgbG9uZyBoYW5kbGUpCiAgKiBSZXR1cm5zIHRo
ZSBza2IsIG9yIE5VTEwgb24gZmFpbHVyZS4KICAqKi8KIHN0YXRpYyBzdHJ1Y3Qgc2tfYnVmZiAq
aTQwZV9jb25zdHJ1Y3Rfc2tiX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCi0JCQkJCSAg
ICAgc3RydWN0IGk0MGVfcnhfYnVmZmVyX3pjICpiaSwKIAkJCQkJICAgICBzdHJ1Y3QgeGRwX2J1
ZmYgKnhkcCkKIHsKIAl1bnNpZ25lZCBpbnQgbWV0YXNpemUgPSB4ZHAtPmRhdGEgLSB4ZHAtPmRh
dGFfbWV0YTsKQEAgLTUyNCw3ICsyNTIsNyBAQCBzdGF0aWMgc3RydWN0IHNrX2J1ZmYgKmk0MGVf
Y29uc3RydWN0X3NrYl96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAogCWlmIChtZXRhc2l6
ZSkKIAkJc2tiX21ldGFkYXRhX3NldChza2IsIG1ldGFzaXplKTsKIAotCWk0MGVfcmV1c2Vfcnhf
YnVmZmVyX3pjKHJ4X3JpbmcsIGJpKTsKKwl4c2tfYnVmZl9mcmVlKHhkcCk7CiAJcmV0dXJuIHNr
YjsKIH0KIApAQCAtNTQyLDIwICsyNzAsMTcgQEAgaW50IGk0MGVfY2xlYW5fcnhfaXJxX3pjKHN0
cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsIGludCBidWRnZXQpCiAJdW5zaWduZWQgaW50IHhkcF9y
ZXMsIHhkcF94bWl0ID0gMDsKIAlib29sIGZhaWx1cmUgPSBmYWxzZTsKIAlzdHJ1Y3Qgc2tfYnVm
ZiAqc2tiOwotCXN0cnVjdCB4ZHBfYnVmZiB4ZHA7Ci0KLQl4ZHAucnhxID0gJnJ4X3JpbmctPnhk
cF9yeHE7CiAKIAl3aGlsZSAobGlrZWx5KHRvdGFsX3J4X3BhY2tldHMgPCAodW5zaWduZWQgaW50
KWJ1ZGdldCkpIHsKLQkJc3RydWN0IGk0MGVfcnhfYnVmZmVyX3pjICpiaTsKIAkJdW5pb24gaTQw
ZV9yeF9kZXNjICpyeF9kZXNjOworCQlzdHJ1Y3QgeGRwX2J1ZmYgKipiaTsKIAkJdW5zaWduZWQg
aW50IHNpemU7CiAJCXU2NCBxd29yZDsKIAogCQlpZiAoY2xlYW5lZF9jb3VudCA+PSBJNDBFX1JY
X0JVRkZFUl9XUklURSkgewogCQkJZmFpbHVyZSA9IGZhaWx1cmUgfHwKLQkJCQkgICFpNDBlX2Fs
bG9jX3J4X2J1ZmZlcnNfZmFzdF96YyhyeF9yaW5nLAotCQkJCQkJCQkgY2xlYW5lZF9jb3VudCk7
CisJCQkJICAhaTQwZV9hbGxvY19yeF9idWZmZXJzX3pjKHJ4X3JpbmcsCisJCQkJCQkJICAgIGNs
ZWFuZWRfY291bnQpOwogCQkJY2xlYW5lZF9jb3VudCA9IDA7CiAJCX0KIApAQCAtNTczLDkgKzI5
OCwxMCBAQCBpbnQgaTQwZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmlu
ZywgaW50IGJ1ZGdldCkKIAkJCQkJCSAgICAgIHJ4X2Rlc2MtPnJhdy5xd29yZFswXSwKIAkJCQkJ
CSAgICAgIHF3b3JkKTsKIAkJCWJpID0gaTQwZV9yeF9iaShyeF9yaW5nLCByeF9yaW5nLT5uZXh0
X3RvX2NsZWFuKTsKLQkJCWk0MGVfaW5jX250YyhyeF9yaW5nKTsKLQkJCWk0MGVfcmV1c2Vfcnhf
YnVmZmVyX3pjKHJ4X3JpbmcsIGJpKTsKKwkJCXhza19idWZmX2ZyZWUoKmJpKTsKKwkJCSpiaSA9
IE5VTEw7CiAJCQljbGVhbmVkX2NvdW50Kys7CisJCQlpNDBlX2luY19udGMocnhfcmluZyk7CiAJ
CQljb250aW51ZTsKIAkJfQogCkBAIC01ODUsMjIgKzMxMSwxOCBAQCBpbnQgaTQwZV9jbGVhbl9y
eF9pcnFfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKIAkJaWYgKCFz
aXplKQogCQkJYnJlYWs7CiAKLQkJYmkgPSBpNDBlX2dldF9yeF9idWZmZXJfemMocnhfcmluZywg
c2l6ZSk7Ci0JCXhkcC5kYXRhID0gYmktPmFkZHI7Ci0JCXhkcC5kYXRhX21ldGEgPSB4ZHAuZGF0
YTsKLQkJeGRwLmRhdGFfaGFyZF9zdGFydCA9IHhkcC5kYXRhIC0gWERQX1BBQ0tFVF9IRUFEUk9P
TTsKLQkJeGRwLmRhdGFfZW5kID0geGRwLmRhdGEgKyBzaXplOwotCQl4ZHAuaGFuZGxlID0gYmkt
PmhhbmRsZTsKKwkJYmkgPSBpNDBlX3J4X2JpKHJ4X3JpbmcsIHJ4X3JpbmctPm5leHRfdG9fY2xl
YW4pOworCQkoKmJpKS0+ZGF0YV9lbmQgPSAoKmJpKS0+ZGF0YSArIHNpemU7CisJCXhza19idWZm
X2RtYV9zeW5jX2Zvcl9jcHUoKmJpKTsKIAotCQl4ZHBfcmVzID0gaTQwZV9ydW5feGRwX3pjKHJ4
X3JpbmcsICZ4ZHApOworCQl4ZHBfcmVzID0gaTQwZV9ydW5feGRwX3pjKHJ4X3JpbmcsICpiaSk7
CiAJCWlmICh4ZHBfcmVzKSB7Ci0JCQlpZiAoeGRwX3JlcyAmIChJNDBFX1hEUF9UWCB8IEk0MEVf
WERQX1JFRElSKSkgeworCQkJaWYgKHhkcF9yZXMgJiAoSTQwRV9YRFBfVFggfCBJNDBFX1hEUF9S
RURJUikpCiAJCQkJeGRwX3htaXQgfD0geGRwX3JlczsKLQkJCQliaS0+YWRkciA9IE5VTEw7Ci0J
CQl9IGVsc2UgewotCQkJCWk0MGVfcmV1c2VfcnhfYnVmZmVyX3pjKHJ4X3JpbmcsIGJpKTsKLQkJ
CX0KKwkJCWVsc2UKKwkJCQl4c2tfYnVmZl9mcmVlKCpiaSk7CiAKKwkJCSpiaSA9IE5VTEw7CiAJ
CQl0b3RhbF9yeF9ieXRlcyArPSBzaXplOwogCQkJdG90YWxfcnhfcGFja2V0cysrOwogCkBAIC02
MTYsNyArMzM4LDggQEAgaW50IGk0MGVfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpNDBlX3Jpbmcg
KnJ4X3JpbmcsIGludCBidWRnZXQpCiAJCSAqIEJJVChJNDBFX1JYRF9RVzFfRVJST1JfU0hJRlQp
LiBUaGlzIGlzIGR1ZSB0byB0aGF0CiAJCSAqIFNCUCBpcyAqbm90KiBzZXQgaW4gUFJUX1NCUFZT
SSAoZGVmYXVsdCBub3Qgc2V0KS4KIAkJICovCi0JCXNrYiA9IGk0MGVfY29uc3RydWN0X3NrYl96
YyhyeF9yaW5nLCBiaSwgJnhkcCk7CisJCXNrYiA9IGk0MGVfY29uc3RydWN0X3NrYl96YyhyeF9y
aW5nLCAqYmkpOworCQkqYmkgPSBOVUxMOwogCQlpZiAoIXNrYikgewogCQkJcnhfcmluZy0+cnhf
c3RhdHMuYWxsb2NfYnVmZl9mYWlsZWQrKzsKIAkJCWJyZWFrOwpAQCAtNjc0LDEwICszOTcsOSBA
QCBzdGF0aWMgYm9vbCBpNDBlX3htaXRfemMoc3RydWN0IGk0MGVfcmluZyAqeGRwX3JpbmcsIHVu
c2lnbmVkIGludCBidWRnZXQpCiAJCWlmICgheHNrX3VtZW1fY29uc3VtZV90eCh4ZHBfcmluZy0+
eHNrX3VtZW0sICZkZXNjKSkKIAkJCWJyZWFrOwogCi0JCWRtYSA9IHhkcF91bWVtX2dldF9kbWEo
eGRwX3JpbmctPnhza191bWVtLCBkZXNjLmFkZHIpOwotCi0JCWRtYV9zeW5jX3NpbmdsZV9mb3Jf
ZGV2aWNlKHhkcF9yaW5nLT5kZXYsIGRtYSwgZGVzYy5sZW4sCi0JCQkJCSAgIERNQV9CSURJUkVD
VElPTkFMKTsKKwkJZG1hID0geHNrX2J1ZmZfcmF3X2dldF9kbWEoeGRwX3JpbmctPnhza191bWVt
LCBkZXNjLmFkZHIpOworCQl4c2tfYnVmZl9yYXdfZG1hX3N5bmNfZm9yX2RldmljZSh4ZHBfcmlu
Zy0+eHNrX3VtZW0sIGRtYSwKKwkJCQkJCSBkZXNjLmxlbik7CiAKIAkJdHhfYmkgPSAmeGRwX3Jp
bmctPnR4X2JpW3hkcF9yaW5nLT5uZXh0X3RvX3VzZV07CiAJCXR4X2JpLT5ieXRlY291bnQgPSBk
ZXNjLmxlbjsKQEAgLTgzNiwxMyArNTU4LDEzIEBAIHZvaWQgaTQwZV94c2tfY2xlYW5fcnhfcmlu
ZyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nKQogCXUxNiBpOwogCiAJZm9yIChpID0gMDsgaSA8
IHJ4X3JpbmctPmNvdW50OyBpKyspIHsKLQkJc3RydWN0IGk0MGVfcnhfYnVmZmVyX3pjICpyeF9i
aSA9IGk0MGVfcnhfYmkocnhfcmluZywgaSk7CisJCXN0cnVjdCB4ZHBfYnVmZiAqcnhfYmkgPSAq
aTQwZV9yeF9iaShyeF9yaW5nLCBpKTsKIAotCQlpZiAoIXJ4X2JpLT5hZGRyKQorCQlpZiAoIXJ4
X2JpKQogCQkJY29udGludWU7CiAKLQkJeHNrX3VtZW1fZnFfcmV1c2UocnhfcmluZy0+eHNrX3Vt
ZW0sIHJ4X2JpLT5oYW5kbGUpOwotCQlyeF9iaS0+YWRkciA9IE5VTEw7CisJCXhza19idWZmX2Zy
ZWUocnhfYmkpOworCQlyeF9iaSA9IE5VTEw7CiAJfQogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmggYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfeHNrLmgKaW5kZXggZjVlMjkyYzIxOGVlLi5lYTkxOWE3ZDYwZWMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suaAor
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmgKQEAgLTEyLDcg
KzEyLDYgQEAgaW50IGk0MGVfcXVldWVfcGFpcl9kaXNhYmxlKHN0cnVjdCBpNDBlX3ZzaSAqdnNp
LCBpbnQgcXVldWVfcGFpcik7CiBpbnQgaTQwZV9xdWV1ZV9wYWlyX2VuYWJsZShzdHJ1Y3QgaTQw
ZV92c2kgKnZzaSwgaW50IHF1ZXVlX3BhaXIpOwogaW50IGk0MGVfeHNrX3VtZW1fc2V0dXAoc3Ry
dWN0IGk0MGVfdnNpICp2c2ksIHN0cnVjdCB4ZHBfdW1lbSAqdW1lbSwKIAkJCXUxNiBxaWQpOwot
dm9pZCBpNDBlX3pjYV9mcmVlKHN0cnVjdCB6ZXJvX2NvcHlfYWxsb2NhdG9yICphbGxvYywgdW5z
aWduZWQgbG9uZyBoYW5kbGUpOwogYm9vbCBpNDBlX2FsbG9jX3J4X2J1ZmZlcnNfemMoc3RydWN0
IGk0MGVfcmluZyAqcnhfcmluZywgdTE2IGNsZWFuZWRfY291bnQpOwogaW50IGk0MGVfY2xlYW5f
cnhfaXJxX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsIGludCBidWRnZXQpOwogCi0tIAoy
LjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
