Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF76C25DA93
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 15:54:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7225B86D70;
	Fri,  4 Sep 2020 13:54:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3kTsauXzNdre; Fri,  4 Sep 2020 13:54:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 37ED186D53;
	Fri,  4 Sep 2020 13:54:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A64271BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9C20B2034C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rv7eCchaligB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 13:54:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 7D7C220115
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:35 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id w186so4357794pgb.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Sep 2020 06:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3Br4mU3YiIC4VRDX0+F3OpOlmSyiXlfba1PWnn12174=;
 b=eEtCcZfJUz2RsWJUBs5W2X/s5sEfMqXT4rlVpRRcCoJmiqFZPRb85GFIko7b/IbW9o
 gCz6V+k7YM0Bzo7A/sqeM/YUNVTmUimNxL9DQuu5S+y4PV8Y/r4bQrlr4kGsj55JMdjg
 5lwGPxhAIgKaGL/4OpmwbBt7yqDDBojMoJYXOFCdXbra5W5aAjCE9BKog3w8T55uAyAt
 9iL6r7s5sd8bsSwW2uESigaZAuY+gE1ZLnkkECL7dW5pIExz2bG/N54U2/XyQq5ReNB4
 /bwo5DD0ns2bQa3Z1ZKhdNyx5aw1TXwzwiTeRmHjlEtaSXzFb5AOmvcWmIGAEv1YBNln
 m0VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Br4mU3YiIC4VRDX0+F3OpOlmSyiXlfba1PWnn12174=;
 b=aIb3okmHYpn6iNGd6Sh5GRGJLCdG6+D+l+5uKkcmQV6Uo27XZsWnraK+GLiVRXqf5z
 FAZz/pmtqAXB8EsP5zfSU/3+RGsrEq1Mv2uG6Uq6yyW0qOTpp1e0ktPearLjddRHwQFt
 2DaFTmlSpx94ZHOIB1whgL6aubRDuIttSDrMCKlAR0TIlENTRunJwRCoDS3/q1ENUseB
 70WMwvq/NhL2MF5LP0BnwxTgdpjxSzIMDf82mfEKrIr40JiVYNTB4Z9+9ZoTI2PCqLvq
 Lvmt4m4in4SMG9h1/l3CZK+IeUJScSYAD3zB16YLfNyTRcEm5koc6qrS7xgkEmlDbdJG
 gmfg==
X-Gm-Message-State: AOAM532vZRrl8cRGdgsQp6BKirO5j6BpR2cOWHPNL1CFktQex8Mt9I/e
 NK6CHCvkSlouv28HyLAbu/M=
X-Google-Smtp-Source: ABdhPJyi17LWympwfyGZ/fupgfwzB/WqdpEYgSTY9m58p2VgIMdE2I7itIooXJ3yJtNtKqvns2tY/A==
X-Received: by 2002:a63:2d42:: with SMTP id t63mr7458188pgt.450.1599227675061; 
 Fri, 04 Sep 2020 06:54:35 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id g9sm6931239pfr.172.2020.09.04.06.54.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 06:54:34 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Date: Fri,  4 Sep 2020 15:53:30 +0200
Message-Id: <20200904135332.60259-6-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200904135332.60259-1-bjorn.topel@gmail.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH bpf-next 5/6] ice,
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
aWNlL2ljZV94c2suYyB8IDIzICsrKysrKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMTYgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hzay5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV94c2suYwppbmRleCA3OTc4ODY1MjQwNTQuLmY2OThkMDE5OWIwYSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV94c2suYworKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hzay5jCkBAIC01MDIsMTMgKzUwMiwx
NSBAQCBpY2VfY29uc3RydWN0X3NrYl96YyhzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3JpbmcsIHN0cnVj
dCBpY2VfcnhfYnVmICpyeF9idWYpCiAgKiBpY2VfcnVuX3hkcF96YyAtIEV4ZWN1dGVzIGFuIFhE
UCBwcm9ncmFtIGluIHplcm8tY29weSBwYXRoCiAgKiBAcnhfcmluZzogUnggcmluZwogICogQHhk
cDogeGRwX2J1ZmYgdXNlZCBhcyBpbnB1dCB0byB0aGUgWERQIHByb2dyYW0KKyAqIEBlYXJseV9l
eGl0OiB0cnVlIG1lYW5zIHRoYXQgdGhlIG5hcGkgbG9vcCBzaG91bGQgZXhpdCBlYXJseQogICoK
ICAqIFJldHVybnMgYW55IG9mIElDRV9YRFBfe1BBU1MsIENPTlNVTUVELCBUWCwgUkVESVJ9CiAg
Ki8KIHN0YXRpYyBpbnQKLWljZV9ydW5feGRwX3pjKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywg
c3RydWN0IHhkcF9idWZmICp4ZHApCitpY2VfcnVuX3hkcF96YyhzdHJ1Y3QgaWNlX3JpbmcgKnJ4
X3JpbmcsIHN0cnVjdCB4ZHBfYnVmZiAqeGRwLCBib29sICplYXJseV9leGl0KQogewogCWludCBl
cnIsIHJlc3VsdCA9IElDRV9YRFBfUEFTUzsKKwllbnVtIGJwZl9tYXBfdHlwZSBtYXBfdHlwZTsK
IAlzdHJ1Y3QgYnBmX3Byb2cgKnhkcF9wcm9nOwogCXN0cnVjdCBpY2VfcmluZyAqeGRwX3Jpbmc7
CiAJdTMyIGFjdDsKQEAgLTUyOSw4ICs1MzEsMTMgQEAgaWNlX3J1bl94ZHBfemMoc3RydWN0IGlj
ZV9yaW5nICpyeF9yaW5nLCBzdHJ1Y3QgeGRwX2J1ZmYgKnhkcCkKIAkJcmVzdWx0ID0gaWNlX3ht
aXRfeGRwX2J1ZmYoeGRwLCB4ZHBfcmluZyk7CiAJCWJyZWFrOwogCWNhc2UgWERQX1JFRElSRUNU
OgotCQllcnIgPSB4ZHBfZG9fcmVkaXJlY3QocnhfcmluZy0+bmV0ZGV2LCB4ZHAsIHhkcF9wcm9n
KTsKLQkJcmVzdWx0ID0gIWVyciA/IElDRV9YRFBfUkVESVIgOiBJQ0VfWERQX0NPTlNVTUVEOwor
CQllcnIgPSB4ZHBfZG9fcmVkaXJlY3RfZXh0KHJ4X3JpbmctPm5ldGRldiwgeGRwLCB4ZHBfcHJv
ZywgJm1hcF90eXBlKTsKKwkJaWYgKGVycikgeworCQkJKmVhcmx5X2V4aXQgPSB4c2tfZG9fcmVk
aXJlY3RfcnhfZnVsbChlcnIsIG1hcF90eXBlKTsKKwkJCXJlc3VsdCA9IElDRV9YRFBfQ09OU1VN
RUQ7CisJCX0gZWxzZSB7CisJCQlyZXN1bHQgPSBJQ0VfWERQX1JFRElSOworCQl9CiAJCWJyZWFr
OwogCWRlZmF1bHQ6CiAJCWJwZl93YXJuX2ludmFsaWRfeGRwX2FjdGlvbihhY3QpOwpAQCAtNTU4
LDggKzU2NSw4IEBAIGludCBpY2VfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpY2VfcmluZyAqcnhf
cmluZywgaW50IGJ1ZGdldCkKIHsKIAl1bnNpZ25lZCBpbnQgdG90YWxfcnhfYnl0ZXMgPSAwLCB0
b3RhbF9yeF9wYWNrZXRzID0gMDsKIAl1MTYgY2xlYW5lZF9jb3VudCA9IElDRV9ERVNDX1VOVVNF
RChyeF9yaW5nKTsKKwlib29sIGVhcmx5X2V4aXQgPSBmYWxzZSwgZmFpbHVyZSA9IGZhbHNlOwog
CXVuc2lnbmVkIGludCB4ZHBfeG1pdCA9IDA7Ci0JYm9vbCBmYWlsdXJlID0gZmFsc2U7CiAKIAl3
aGlsZSAobGlrZWx5KHRvdGFsX3J4X3BhY2tldHMgPCAodW5zaWduZWQgaW50KWJ1ZGdldCkpIHsK
IAkJdW5pb24gaWNlXzMyYl9yeF9mbGV4X2Rlc2MgKnJ4X2Rlc2M7CkBAIC01OTcsNyArNjA0LDcg
QEAgaW50IGljZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCBpbnQg
YnVkZ2V0KQogCQlyeF9idWYtPnhkcC0+ZGF0YV9lbmQgPSByeF9idWYtPnhkcC0+ZGF0YSArIHNp
emU7CiAJCXhza19idWZmX2RtYV9zeW5jX2Zvcl9jcHUocnhfYnVmLT54ZHAsIHJ4X3JpbmctPnhz
a19wb29sKTsKIAotCQl4ZHBfcmVzID0gaWNlX3J1bl94ZHBfemMocnhfcmluZywgcnhfYnVmLT54
ZHApOworCQl4ZHBfcmVzID0gaWNlX3J1bl94ZHBfemMocnhfcmluZywgcnhfYnVmLT54ZHAsICZl
YXJseV9leGl0KTsKIAkJaWYgKHhkcF9yZXMpIHsKIAkJCWlmICh4ZHBfcmVzICYgKElDRV9YRFBf
VFggfCBJQ0VfWERQX1JFRElSKSkKIAkJCQl4ZHBfeG1pdCB8PSB4ZHBfcmVzOwpAQCAtNjEwLDYg
KzYxNyw4IEBAIGludCBpY2VfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpY2VfcmluZyAqcnhfcmlu
ZywgaW50IGJ1ZGdldCkKIAkJCWNsZWFuZWRfY291bnQrKzsKIAogCQkJaWNlX2J1bXBfbnRjKHJ4
X3JpbmcpOworCQkJaWYgKGVhcmx5X2V4aXQpCisJCQkJYnJlYWs7CiAJCQljb250aW51ZTsKIAkJ
fQogCkBAIC02NDYsMTIgKzY1NSwxMiBAQCBpbnQgaWNlX2NsZWFuX3J4X2lycV96YyhzdHJ1Y3Qg
aWNlX3JpbmcgKnJ4X3JpbmcsIGludCBidWRnZXQpCiAJaWNlX3VwZGF0ZV9yeF9yaW5nX3N0YXRz
KHJ4X3JpbmcsIHRvdGFsX3J4X3BhY2tldHMsIHRvdGFsX3J4X2J5dGVzKTsKIAogCWlmICh4c2tf
dXNlc19uZWVkX3dha2V1cChyeF9yaW5nLT54c2tfcG9vbCkpIHsKLQkJaWYgKGZhaWx1cmUgfHwg
cnhfcmluZy0+bmV4dF90b19jbGVhbiA9PSByeF9yaW5nLT5uZXh0X3RvX3VzZSkKKwkJaWYgKGVh
cmx5X2V4aXQgfHwgZmFpbHVyZSB8fCByeF9yaW5nLT5uZXh0X3RvX2NsZWFuID09IHJ4X3Jpbmct
Pm5leHRfdG9fdXNlKQogCQkJeHNrX3NldF9yeF9uZWVkX3dha2V1cChyeF9yaW5nLT54c2tfcG9v
bCk7CiAJCWVsc2UKIAkJCXhza19jbGVhcl9yeF9uZWVkX3dha2V1cChyeF9yaW5nLT54c2tfcG9v
bCk7CiAKLQkJcmV0dXJuIChpbnQpdG90YWxfcnhfcGFja2V0czsKKwkJcmV0dXJuIGVhcmx5X2V4
aXQgPyAwIDogKGludCl0b3RhbF9yeF9wYWNrZXRzOwogCX0KIAogCXJldHVybiBmYWlsdXJlID8g
YnVkZ2V0IDogKGludCl0b3RhbF9yeF9wYWNrZXRzOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
