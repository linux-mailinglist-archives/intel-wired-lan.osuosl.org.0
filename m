Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 242DC25DA92
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 15:54:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CEA0886A10;
	Fri,  4 Sep 2020 13:54:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BsjNYSeaf8HL; Fri,  4 Sep 2020 13:54:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF4CE86A5D;
	Fri,  4 Sep 2020 13:54:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 033DA1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F36F186C75
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 52ArEplBorPa for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 13:54:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2139886C70
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:30 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id p37so4374483pgl.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Sep 2020 06:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CJi+EkzTJVtrdukKQRD3YbRAKR4DiANTw+RCP7poH4U=;
 b=QxrCXwLX360vUP9Kvsxo+bukkSWUCqiex301/++ROFdWJDaxvjxvttG78X9cRc19KT
 VmG1qYGEEcHvigEsLhSu90Y+XhklxmvQFfcf8h93d4g+F9qd9yV8r/wGLBPgOxriPjbI
 680b6F9b2Ln9D3sx6zy0z5SnVmlQxbwE6iaQ4N0DQL5pW6tcnX+Uvd8TGy5MxitXz364
 8d2qWpyFmjjLAUZEQhIX2vn7TAcMSgjdnpbRRljzNAqD/lBRTG1T52aX6nVC2+4al9sH
 /YtmyOiA3U66/4GhEgQzn/CqDKRJyM4EnZ0QbLRVIwmCnGimaetCbJOpEKTe6CgwdDoM
 7gtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CJi+EkzTJVtrdukKQRD3YbRAKR4DiANTw+RCP7poH4U=;
 b=npM7heIK2kH7nI/I40dNrKpxw0u3YXhrLuly+qyKTTvjkTDuk8ZiIc93EcfZCvg+Ig
 GsejkGKfYfAk2RZJzOKyjxbOxaj+5dxe42kQD3sPLWqXfga3zD/Cp+RRLNY9p+i+IMCW
 IcVv0PMmv+ZedvloAskwvqKk0elUmWaN7o9mqhFFgNVw64IJN1cXvMdo3nZw5/mhowOM
 GmmAl+kBsQxcFwgjQBoUhkMMW1y5jIRozSWdqeX4WM/qmh6S6Eo7Op5+cGsoop1eW7qO
 v22GrRjrNqos//hE+tGo9EGBB0xviPOYB1Xdw22BzocgeptDh90bRxXW9I2RPuXuLril
 KEcA==
X-Gm-Message-State: AOAM530xYZEbAKe3LTxL8RvABjEPJIZKHLeg/6SiDNAU3EnRZRvbL7om
 l+zFjlymGFoh4LVLan7Q9rk=
X-Google-Smtp-Source: ABdhPJy/nQhhEvXFOw5z1ThFseXe9AUccyxj5amHrf+Q0FPN3Ei2V+6LoD93g//7dqLVidUG6qx6yQ==
X-Received: by 2002:a63:5f8b:: with SMTP id t133mr7522134pgb.238.1599227669730; 
 Fri, 04 Sep 2020 06:54:29 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id g9sm6931239pfr.172.2020.09.04.06.54.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 06:54:29 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Date: Fri,  4 Sep 2020 15:53:29 +0200
Message-Id: <20200904135332.60259-5-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200904135332.60259-1-bjorn.topel@gmail.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH bpf-next 4/6] i40e,
 xsk: finish napi loop if AF_XDP Rx queue is full
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
Cc: hawk@kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKTWFrZSB0aGUgQUZf
WERQIHplcm8tY29weSBwYXRoIGF3YXJlIHRoYXQgdGhlIHJlYXNvbiBmb3IgcmVkaXJlY3QKZmFp
bHVyZSB3YXMgZHVlIHRvIGZ1bGwgUnggcXVldWUuIElmIHNvLCBleGl0IHRoZSBuYXBpIGxvb3Ag
YXMgc29vbiBhcwpwb3NzaWJsZSAoZXhpdCB0aGUgc29mdGlycSBwcm9jZXNzaW5nKSwgc28gdGhh
dCB0aGUgdXNlcnNwYWNlIEFGX1hEUApwcm9jZXNzIGNhbiBob3BlZnVsbHkgZW1wdHkgdGhlIFJ4
IHF1ZXVlLiBUaGlzIG1haW5seSBoZWxwcyB0aGUgIm9uZQpjb3JlIHNjZW5hcmlvIiwgd2hlcmUg
dGhlIHVzZXJsYW5kIHByb2Nlc3MgYW5kIFJ4IHNvZnRpcnEgcHJvY2Vzc2luZwppcyBvbiB0aGUg
c2FtZSBjb3JlLgoKTm90ZSB0aGF0IHRoZSBlYXJseSBleGl0IGNhbiBvbmx5IGJlIHBlcmZvcm1l
ZCBpZiB0aGUgIm5lZWQgd2FrZXVwIgpmZWF0dXJlIGlzIGVuYWJsZWQsIGJlY2F1c2Ugb3RoZXJ3
aXNlIHRoZXJlIGlzIG5vIG5vdGlmaWNhdGlvbgptZWNoYW5pc20gYXZhaWxhYmxlIGZyb20gdGhl
IGtlcm5lbCBzaWRlLgoKVGhpcyByZXF1aXJlcyB0aGF0IHRoZSBkcml2ZXIgc3RhcnRzIHVzaW5n
IHRoZSBuZXdseSBpbnRyb2R1Y2VkCnhkcF9kb19yZWRpcmVjdF9leHQoKSBhbmQgeHNrX2RvX3Jl
ZGlyZWN0X3J4X2Z1bGwoKSBmdW5jdGlvbnMuCgpTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVs
IDxiam9ybi50b3BlbEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX3hzay5jIHwgMjMgKysrKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDE2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCmluZGV4IDJhMTE1M2Q4OTU3Yi4uM2FjODAzZWU4ZDUx
IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMK
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCkBAIC0xNDIs
MTMgKzE0MiwxNSBAQCBpbnQgaTQwZV94c2tfcG9vbF9zZXR1cChzdHJ1Y3QgaTQwZV92c2kgKnZz
aSwgc3RydWN0IHhza19idWZmX3Bvb2wgKnBvb2wsCiAgKiBpNDBlX3J1bl94ZHBfemMgLSBFeGVj
dXRlcyBhbiBYRFAgcHJvZ3JhbSBvbiBhbiB4ZHBfYnVmZgogICogQHJ4X3Jpbmc6IFJ4IHJpbmcK
ICAqIEB4ZHA6IHhkcF9idWZmIHVzZWQgYXMgaW5wdXQgdG8gdGhlIFhEUCBwcm9ncmFtCisgKiBA
ZWFybHlfZXhpdDogdHJ1ZSBtZWFucyB0aGF0IHRoZSBuYXBpIGxvb3Agc2hvdWxkIGV4aXQgZWFy
bHkKICAqCiAgKiBSZXR1cm5zIGFueSBvZiBJNDBFX1hEUF97UEFTUywgQ09OU1VNRUQsIFRYLCBS
RURJUn0KICAqKi8KLXN0YXRpYyBpbnQgaTQwZV9ydW5feGRwX3pjKHN0cnVjdCBpNDBlX3Jpbmcg
KnJ4X3JpbmcsIHN0cnVjdCB4ZHBfYnVmZiAqeGRwKQorc3RhdGljIGludCBpNDBlX3J1bl94ZHBf
emMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgc3RydWN0IHhkcF9idWZmICp4ZHAsIGJvb2wg
KmVhcmx5X2V4aXQpCiB7CiAJaW50IGVyciwgcmVzdWx0ID0gSTQwRV9YRFBfUEFTUzsKIAlzdHJ1
Y3QgaTQwZV9yaW5nICp4ZHBfcmluZzsKKwllbnVtIGJwZl9tYXBfdHlwZSBtYXBfdHlwZTsKIAlz
dHJ1Y3QgYnBmX3Byb2cgKnhkcF9wcm9nOwogCXUzMiBhY3Q7CiAKQEAgLTE2Nyw4ICsxNjksMTMg
QEAgc3RhdGljIGludCBpNDBlX3J1bl94ZHBfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywg
c3RydWN0IHhkcF9idWZmICp4ZHApCiAJCXJlc3VsdCA9IGk0MGVfeG1pdF94ZHBfdHhfcmluZyh4
ZHAsIHhkcF9yaW5nKTsKIAkJYnJlYWs7CiAJY2FzZSBYRFBfUkVESVJFQ1Q6Ci0JCWVyciA9IHhk
cF9kb19yZWRpcmVjdChyeF9yaW5nLT5uZXRkZXYsIHhkcCwgeGRwX3Byb2cpOwotCQlyZXN1bHQg
PSAhZXJyID8gSTQwRV9YRFBfUkVESVIgOiBJNDBFX1hEUF9DT05TVU1FRDsKKwkJZXJyID0geGRw
X2RvX3JlZGlyZWN0X2V4dChyeF9yaW5nLT5uZXRkZXYsIHhkcCwgeGRwX3Byb2csICZtYXBfdHlw
ZSk7CisJCWlmIChlcnIpIHsKKwkJCSplYXJseV9leGl0ID0geHNrX2RvX3JlZGlyZWN0X3J4X2Z1
bGwoZXJyLCBtYXBfdHlwZSk7CisJCQlyZXN1bHQgPSBJNDBFX1hEUF9DT05TVU1FRDsKKwkJfSBl
bHNlIHsKKwkJCXJlc3VsdCA9IEk0MEVfWERQX1JFRElSOworCQl9CiAJCWJyZWFrOwogCWRlZmF1
bHQ6CiAJCWJwZl93YXJuX2ludmFsaWRfeGRwX2FjdGlvbihhY3QpOwpAQCAtMjY4LDggKzI3NSw4
IEBAIGludCBpNDBlX2NsZWFuX3J4X2lycV96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCBp
bnQgYnVkZ2V0KQogewogCXVuc2lnbmVkIGludCB0b3RhbF9yeF9ieXRlcyA9IDAsIHRvdGFsX3J4
X3BhY2tldHMgPSAwOwogCXUxNiBjbGVhbmVkX2NvdW50ID0gSTQwRV9ERVNDX1VOVVNFRChyeF9y
aW5nKTsKKwlib29sIGVhcmx5X2V4aXQgPSBmYWxzZSwgZmFpbHVyZSA9IGZhbHNlOwogCXVuc2ln
bmVkIGludCB4ZHBfcmVzLCB4ZHBfeG1pdCA9IDA7Ci0JYm9vbCBmYWlsdXJlID0gZmFsc2U7CiAJ
c3RydWN0IHNrX2J1ZmYgKnNrYjsKIAogCXdoaWxlIChsaWtlbHkodG90YWxfcnhfcGFja2V0cyA8
ICh1bnNpZ25lZCBpbnQpYnVkZ2V0KSkgewpAQCAtMzE2LDcgKzMyMyw3IEBAIGludCBpNDBlX2Ns
ZWFuX3J4X2lycV96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQogCQko
KmJpKS0+ZGF0YV9lbmQgPSAoKmJpKS0+ZGF0YSArIHNpemU7CiAJCXhza19idWZmX2RtYV9zeW5j
X2Zvcl9jcHUoKmJpLCByeF9yaW5nLT54c2tfcG9vbCk7CiAKLQkJeGRwX3JlcyA9IGk0MGVfcnVu
X3hkcF96YyhyeF9yaW5nLCAqYmkpOworCQl4ZHBfcmVzID0gaTQwZV9ydW5feGRwX3pjKHJ4X3Jp
bmcsICpiaSwgJmVhcmx5X2V4aXQpOwogCQlpZiAoeGRwX3JlcykgewogCQkJaWYgKHhkcF9yZXMg
JiAoSTQwRV9YRFBfVFggfCBJNDBFX1hEUF9SRURJUikpCiAJCQkJeGRwX3htaXQgfD0geGRwX3Jl
czsKQEAgLTMyOSw2ICszMzYsOCBAQCBpbnQgaTQwZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGk0
MGVfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKIAogCQkJY2xlYW5lZF9jb3VudCsrOwogCQkJ
aTQwZV9pbmNfbnRjKHJ4X3JpbmcpOworCQkJaWYgKGVhcmx5X2V4aXQpCisJCQkJYnJlYWs7CiAJ
CQljb250aW51ZTsKIAkJfQogCkBAIC0zNjMsMTIgKzM3MiwxMiBAQCBpbnQgaTQwZV9jbGVhbl9y
eF9pcnFfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKIAlpNDBlX3Vw
ZGF0ZV9yeF9zdGF0cyhyeF9yaW5nLCB0b3RhbF9yeF9ieXRlcywgdG90YWxfcnhfcGFja2V0cyk7
CiAKIAlpZiAoeHNrX3VzZXNfbmVlZF93YWtldXAocnhfcmluZy0+eHNrX3Bvb2wpKSB7Ci0JCWlm
IChmYWlsdXJlIHx8IHJ4X3JpbmctPm5leHRfdG9fY2xlYW4gPT0gcnhfcmluZy0+bmV4dF90b191
c2UpCisJCWlmIChlYXJseV9leGl0IHx8IGZhaWx1cmUgfHwgcnhfcmluZy0+bmV4dF90b19jbGVh
biA9PSByeF9yaW5nLT5uZXh0X3RvX3VzZSkKIAkJCXhza19zZXRfcnhfbmVlZF93YWtldXAocnhf
cmluZy0+eHNrX3Bvb2wpOwogCQllbHNlCiAJCQl4c2tfY2xlYXJfcnhfbmVlZF93YWtldXAocnhf
cmluZy0+eHNrX3Bvb2wpOwogCi0JCXJldHVybiAoaW50KXRvdGFsX3J4X3BhY2tldHM7CisJCXJl
dHVybiBlYXJseV9leGl0ID8gMCA6IChpbnQpdG90YWxfcnhfcGFja2V0czsKIAl9CiAJcmV0dXJu
IGZhaWx1cmUgPyBidWRnZXQgOiAoaW50KXRvdGFsX3J4X3BhY2tldHM7CiB9Ci0tIAoyLjI1LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
