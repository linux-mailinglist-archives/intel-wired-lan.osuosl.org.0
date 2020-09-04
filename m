Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42B525DA95
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 15:54:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5696087517;
	Fri,  4 Sep 2020 13:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GVo4RDsQBRwO; Fri,  4 Sep 2020 13:54:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8998887507;
	Fri,  4 Sep 2020 13:54:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 891A61BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 853CD20341
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9QYdVQKPouQ1 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 13:54:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id D42F520115
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:39 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id b16so3239550pjp.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Sep 2020 06:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=00gl+iNRqCD/06CwSuYnvYFJj+D6FqLV6Ha+6OdW5o0=;
 b=Gwve0xHqOESk5XRj2J5YoY/XY0pDvDUcYxoL58FBqKdVN1BIs4zdd3sOpy+MeOKCOM
 oFUMmc2jeF89PGEwjJk54Aq7DvFkrtBJaUrQAu/6cg5ZqpwcAyaUzRnIzi1mnOPOKzhM
 TdUu2VW1//Sla4CybPIA4ma6sT3pTurtil5ZXLUzT3E9wJNG0pa8faFRZxREJhGK9H4+
 ZvkyrdGYwQdVwHDldV6Jeqjo/+uwN9ye5WE75ZrlcoO4ZjjndDjAUu07DyqYzXc6xebk
 p8UlENYIAZvWRB0tHx82snhOYmp45rfSS48WmgAAtNxEn/5EjaCQ/7VRbIF33Nn1A1Cv
 wN8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=00gl+iNRqCD/06CwSuYnvYFJj+D6FqLV6Ha+6OdW5o0=;
 b=eWgCXsz2UBH6fAnjON8Hc9iCYfSXrwPn0EJZQBuQxRjU29On5c34pn0OSvpvl72mmv
 9QYxgWYq6DfjVABvzys86QS7OPQk9zreQwZ6clmGUK830tZrUP7qV0Y0ZiC4YmHOsEgM
 e6BqR2pMx82UrKNgkURpE3EnjTl3BtG9TDoAE2+BXjIG+rkmupI5cIqtZqREz+jbyKEU
 JKPbDwffGaifSGCEmeRD/bZvnqLYhQgUMj+U6etFBiPMS/VnlCzveADPIHK586b2mcqR
 XTicW7znpCbRCB2pyJ2eX/lx+DtIRvBBcxucH8my2L/p3sY2CfG/pqXtWM++EKrhgkfx
 ExKw==
X-Gm-Message-State: AOAM533zmMdSqb6ygIEhG13NSyBNpKgfpfzn9ES9hL9hjCBNOXeO9cDq
 Bcx/OBdy+DzeuktRawsFohk=
X-Google-Smtp-Source: ABdhPJzJbE5rpgp1DiX2blOXUdtGirT7ZFHRnzhE+YUtNvIjD9OForeut3ciweX78vAgCcr9gajPjA==
X-Received: by 2002:a17:90a:ca03:: with SMTP id
 x3mr8376030pjt.92.1599227679442; 
 Fri, 04 Sep 2020 06:54:39 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id g9sm6931239pfr.172.2020.09.04.06.54.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 06:54:38 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Date: Fri,  4 Sep 2020 15:53:31 +0200
Message-Id: <20200904135332.60259-7-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200904135332.60259-1-bjorn.topel@gmail.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH bpf-next 6/6] ixgbe,
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
aXhnYmUvaXhnYmVfeHNrLmMgfCAyMyArKysrKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDE2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2suYwppbmRleCAzNzcxODU3Y2Y4ODcuLmE0YWViZmQ5
ODZiMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVf
eHNrLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMK
QEAgLTkzLDkgKzkzLDExIEBAIGludCBpeGdiZV94c2tfcG9vbF9zZXR1cChzdHJ1Y3QgaXhnYmVf
YWRhcHRlciAqYWRhcHRlciwKIAogc3RhdGljIGludCBpeGdiZV9ydW5feGRwX3pjKHN0cnVjdCBp
eGdiZV9hZGFwdGVyICphZGFwdGVyLAogCQkJICAgIHN0cnVjdCBpeGdiZV9yaW5nICpyeF9yaW5n
LAotCQkJICAgIHN0cnVjdCB4ZHBfYnVmZiAqeGRwKQorCQkJICAgIHN0cnVjdCB4ZHBfYnVmZiAq
eGRwLAorCQkJICAgIGJvb2wgKmVhcmx5X2V4aXQpCiB7CiAJaW50IGVyciwgcmVzdWx0ID0gSVhH
QkVfWERQX1BBU1M7CisJZW51bSBicGZfbWFwX3R5cGUgbWFwX3R5cGU7CiAJc3RydWN0IGJwZl9w
cm9nICp4ZHBfcHJvZzsKIAlzdHJ1Y3QgeGRwX2ZyYW1lICp4ZHBmOwogCXUzMiBhY3Q7CkBAIC0x
MTYsOCArMTE4LDEzIEBAIHN0YXRpYyBpbnQgaXhnYmVfcnVuX3hkcF96YyhzdHJ1Y3QgaXhnYmVf
YWRhcHRlciAqYWRhcHRlciwKIAkJcmVzdWx0ID0gaXhnYmVfeG1pdF94ZHBfcmluZyhhZGFwdGVy
LCB4ZHBmKTsKIAkJYnJlYWs7CiAJY2FzZSBYRFBfUkVESVJFQ1Q6Ci0JCWVyciA9IHhkcF9kb19y
ZWRpcmVjdChyeF9yaW5nLT5uZXRkZXYsIHhkcCwgeGRwX3Byb2cpOwotCQlyZXN1bHQgPSAhZXJy
ID8gSVhHQkVfWERQX1JFRElSIDogSVhHQkVfWERQX0NPTlNVTUVEOworCQllcnIgPSB4ZHBfZG9f
cmVkaXJlY3RfZXh0KHJ4X3JpbmctPm5ldGRldiwgeGRwLCB4ZHBfcHJvZywgJm1hcF90eXBlKTsK
KwkJaWYgKGVycikgeworCQkJKmVhcmx5X2V4aXQgPSB4c2tfZG9fcmVkaXJlY3RfcnhfZnVsbChl
cnIsIG1hcF90eXBlKTsKKwkJCXJlc3VsdCA9IElYR0JFX1hEUF9DT05TVU1FRDsKKwkJfSBlbHNl
IHsKKwkJCXJlc3VsdCA9IElYR0JFX1hEUF9SRURJUjsKKwkJfQogCQlicmVhazsKIAlkZWZhdWx0
OgogCQlicGZfd2Fybl9pbnZhbGlkX3hkcF9hY3Rpb24oYWN0KTsKQEAgLTIzNSw4ICsyNDIsOCBA
QCBpbnQgaXhnYmVfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpeGdiZV9xX3ZlY3RvciAqcV92ZWN0
b3IsCiAJdW5zaWduZWQgaW50IHRvdGFsX3J4X2J5dGVzID0gMCwgdG90YWxfcnhfcGFja2V0cyA9
IDA7CiAJc3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIgPSBxX3ZlY3Rvci0+YWRhcHRlcjsK
IAl1MTYgY2xlYW5lZF9jb3VudCA9IGl4Z2JlX2Rlc2NfdW51c2VkKHJ4X3JpbmcpOworCWJvb2wg
ZWFybHlfZXhpdCA9IGZhbHNlLCBmYWlsdXJlID0gZmFsc2U7CiAJdW5zaWduZWQgaW50IHhkcF9y
ZXMsIHhkcF94bWl0ID0gMDsKLQlib29sIGZhaWx1cmUgPSBmYWxzZTsKIAlzdHJ1Y3Qgc2tfYnVm
ZiAqc2tiOwogCiAJd2hpbGUgKGxpa2VseSh0b3RhbF9yeF9wYWNrZXRzIDwgYnVkZ2V0KSkgewpA
QCAtMjg4LDcgKzI5NSw3IEBAIGludCBpeGdiZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGl4Z2Jl
X3FfdmVjdG9yICpxX3ZlY3RvciwKIAogCQliaS0+eGRwLT5kYXRhX2VuZCA9IGJpLT54ZHAtPmRh
dGEgKyBzaXplOwogCQl4c2tfYnVmZl9kbWFfc3luY19mb3JfY3B1KGJpLT54ZHAsIHJ4X3Jpbmct
Pnhza19wb29sKTsKLQkJeGRwX3JlcyA9IGl4Z2JlX3J1bl94ZHBfemMoYWRhcHRlciwgcnhfcmlu
ZywgYmktPnhkcCk7CisJCXhkcF9yZXMgPSBpeGdiZV9ydW5feGRwX3pjKGFkYXB0ZXIsIHJ4X3Jp
bmcsIGJpLT54ZHAsICZlYXJseV9leGl0KTsKIAogCQlpZiAoeGRwX3JlcykgewogCQkJaWYgKHhk
cF9yZXMgJiAoSVhHQkVfWERQX1RYIHwgSVhHQkVfWERQX1JFRElSKSkKQEAgLTMwMiw2ICszMDks
OCBAQCBpbnQgaXhnYmVfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpeGdiZV9xX3ZlY3RvciAqcV92
ZWN0b3IsCiAKIAkJCWNsZWFuZWRfY291bnQrKzsKIAkJCWl4Z2JlX2luY19udGMocnhfcmluZyk7
CisJCQlpZiAoZWFybHlfZXhpdCkKKwkJCQlicmVhazsKIAkJCWNvbnRpbnVlOwogCQl9CiAKQEAg
LTM0NiwxMiArMzU1LDEyIEBAIGludCBpeGdiZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGl4Z2Jl
X3FfdmVjdG9yICpxX3ZlY3RvciwKIAlxX3ZlY3Rvci0+cngudG90YWxfYnl0ZXMgKz0gdG90YWxf
cnhfYnl0ZXM7CiAKIAlpZiAoeHNrX3VzZXNfbmVlZF93YWtldXAocnhfcmluZy0+eHNrX3Bvb2wp
KSB7Ci0JCWlmIChmYWlsdXJlIHx8IHJ4X3JpbmctPm5leHRfdG9fY2xlYW4gPT0gcnhfcmluZy0+
bmV4dF90b191c2UpCisJCWlmIChlYXJseV9leGl0IHx8IGZhaWx1cmUgfHwgcnhfcmluZy0+bmV4
dF90b19jbGVhbiA9PSByeF9yaW5nLT5uZXh0X3RvX3VzZSkKIAkJCXhza19zZXRfcnhfbmVlZF93
YWtldXAocnhfcmluZy0+eHNrX3Bvb2wpOwogCQllbHNlCiAJCQl4c2tfY2xlYXJfcnhfbmVlZF93
YWtldXAocnhfcmluZy0+eHNrX3Bvb2wpOwogCi0JCXJldHVybiAoaW50KXRvdGFsX3J4X3BhY2tl
dHM7CisJCXJldHVybiBlYXJseV9leGl0ID8gMCA6IChpbnQpdG90YWxfcnhfcGFja2V0czsKIAl9
CiAJcmV0dXJuIGZhaWx1cmUgPyBidWRnZXQgOiAoaW50KXRvdGFsX3J4X3BhY2tldHM7CiB9Ci0t
IAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
