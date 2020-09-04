Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DFD25DA8C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 15:54:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4AFCC2E18F;
	Fri,  4 Sep 2020 13:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vA1wTA3lkVSP; Fri,  4 Sep 2020 13:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7A9D82E1A1;
	Fri,  4 Sep 2020 13:54:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9BFAB1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9719787500
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7hOq7O-VPD3w for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 13:54:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A268874FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:10 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id o16so3236377pjr.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Sep 2020 06:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2aCjamiYVf5Fz4JcQ9yUML0QnDOk7OXiiU5nDXWEwD0=;
 b=puo0JhpFM/7egg5fp7hRaI8LDpHmsLvXJv7riq9oNdHutC17OsH/HaGt09Qdfho+iO
 ZuXgAcjON8xjCojcMtVrta52BIVNECoc1wvjQoInsk5sR+P4m3qxxvKOQmV67+syZwy8
 ajsrBDj98PNiaaPd59YLt5UIEy+BO3IPWYRMgKTKGqUjVBzMU0ZzMuVs7KidXjCFzbaM
 R+JaVn971EJHeA5Hkd8ukyC48yko5ArskqvG/qx3Jc2q8MkQNoVBJ9X0moWDG12w+V5C
 AXFPXOtpfIG1R6/L83pQBRslDUq3tIeaOr+Y74mwjoZXjEknXHRy/bnaChvTEW2aTdQ3
 gkpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2aCjamiYVf5Fz4JcQ9yUML0QnDOk7OXiiU5nDXWEwD0=;
 b=bO+pl/4Uk322WtfeMwQDvMQSnPyil5hPtSu0fSfawBUFBGrRzCvCEdodEm/jDiyCfo
 p5IuoZQVHKPw0g12D+Jbw2S21QRuzROsBr6QRPPcTy9tB2JvkrZUNLKsMlPHOSUBEa+A
 k0/Z3zl8YJtT1q2IzozBOoa4Dx+nL0QooDhUFUqFJpMMwPP1d7gm3vmXoFUWJTithjfN
 aQ75FMHQaY4+6lQM0MjJZ1o0ennbzVUs9aAQeeitLCq41cr+/TZeKJcHT2snZNgX8MuY
 UAh53kkYKKuhKT6fKeXh76pQoob31XOa0lFuCVLgRILMenSKukVd7QaxLQLRxRZXsPAt
 cm0g==
X-Gm-Message-State: AOAM532h+y1kX6xETYMHWyHRba7vNeOB+BM055dyMxTMh41SyukrbeSD
 6oABbcDaO+lf6UtEbPgeY50=
X-Google-Smtp-Source: ABdhPJxZgvJHgq3RHHk1C3vHyPEaKjSQXka5JtO6smUfKJcJRynh77CPs2qFRIPnqjv1dUCbwUdbMw==
X-Received: by 2002:a17:902:8eca:: with SMTP id
 x10mr8823985plo.129.1599227649496; 
 Fri, 04 Sep 2020 06:54:09 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id g9sm6931239pfr.172.2020.09.04.06.54.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 06:54:08 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Date: Fri,  4 Sep 2020 15:53:25 +0200
Message-Id: <20200904135332.60259-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH bpf-next 0/6] xsk: exit NAPI loop when
 AF_XDP Rx ring is full
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
 bjorn.topel@intel.com, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhpcyBzZXJpZXMgYWRkcmVzc2VzIGEgcHJvYmxlbSB0aGF0IGFyaXNlcyB3aGVuIEFGX1hEUCB6
ZXJvLWNvcHkgaXMKZW5hYmxlZCwgYW5kIHRoZSBrZXJuZWwgc29mdGlycSBSeCBwcm9jZXNzaW5n
IGFuZCB1c2VybGFuZCBwcm9jZXNzIGlzCnJ1bm5pbmcgb24gdGhlIHNhbWUgY29yZS4KCkluIGNv
bnRyYXN0IHRvIHRoZSB0d28tY29yZSBjYXNlLCB3aGVuIHRoZSB1c2VybGFuZCBwcm9jZXNzL1J4
IHNvZnRpcnEKc2hhcmVzIG9uZSBjb3JlLCBpdCBpdCB2ZXJ5IGltcG9ydGFudCB0aGF0IHRoZSBr
ZXJuZWwgaXMgbm90IGRvaW5nCnVubmVjZXNzYXJ5IHdvcmssIGJ1dCBpbnN0ZWFkIGxldCB0aGUg
dXNlcmxhbmQgcHJvY2VzcyBydW4uIFRoaXMgaGFzCm5vdCBiZWVuIHRoZSBjYXNlLgoKRm9yIHRo
ZSBJbnRlbCBkcml2ZXJzLCB3aGVuIHRoZSBYRFBfUkVESVJFQ1QgZmFpbHMgZHVlIHRvIGEgZnVs
bCBSeApyaW5nLCB0aGUgTkFQSSBsb29wIHdpbGwgc2ltcGx5IGRyb3AgdGhlIHBhY2tldCBhbmQg
Y29udGludWUKcHJvY2Vzc2luZyB0aGUgbmV4dCBwYWNrZXQuIFRoZSBYRFBfUkVESVJFQ1Qgb3Bl
cmF0aW9uIHdpbGwgdGhlbiBmYWlsCmFnYWluLCBzaW5jZSB1c2VybGFuZCBoYXMgbm90IGJlZW4g
YWJsZSB0byBlbXB0eSB0aGUgZnVsbCBSeCByaW5nLgoKVGhlIGZpeCBmb3IgdGhpcyBpcyBsZXR0
aW5nIHRoZSBOQVBJIGxvb3AgZXhpdCBlYXJseSwgaWYgdGhlIEFGX1hEUApzb2NrZXQgUnggcmlu
ZyBpcyBmdWxsLgoKVGhlIG91dGxpbmUgaXMgYXMgZm9sbG93aW5nOyBUaGUgZmlyc3QgcGF0Y2gg
Y2xlYW5zIHVwIHRoZSBlcnJvciBjb2RlcwpyZXR1cm5lZCBieSB4ZHBfZG9fcmVkaXJlY3QoKSwg
c28gdGhhdCBhIGRyaXZlciBjYW4gZmlndXJlIG91dCB3aGVuCnRoZSBSeCByaW5nIGlzIGZ1bGwg
KEVOT0JVRlMpLiBQYXRjaCB0d28gYWRkcyBhbiBleHRlbmRlZAp4ZHBfZG9fcmVkaXJlY3QoKSB2
YXJpYW50IHRoYXQgcmV0dXJucyB3aGF0IGtpbmQgb2YgbWFwIHRoYXQgd2FzIHVzZWQKaW4gdGhl
IFhEUF9SRURJUkVDVCBhY3Rpb24uIFRoZSB0aGlyZCBwYXRjaCBhZGRzIGFuIEFGX1hEUCBkcml2
ZXIKaGVscGVyIHRvIGZpZ3VyZSBvdXQgaWYgdGhlIFJ4IHJpbmcgd2FzIGZ1bGwuIEZpbmFsbHks
IHRoZSBsYXN0IHRocmVlCnBhdGNoZXMgaW1wbGVtZW50cyB0aGUgImVhcmx5IGV4aXQiIHN1cHBv
cnQgZm9yIEludGVsLgoKT24gbXkgbWFjaGluZSB0aGUgIm9uZSBjb3JlIHNjZW5hcmlvIFJ4IGRy
b3AiIHBlcmZvcm1hbmNlIHdlbnQgZnJvbQp+NjVLcHBzIHRvIDIxTXBwcy4gSW4gb3RoZXIgd29y
ZHMsIGZyb20gIm5vdCB1c2FibGUiIHRvCiJ1c2FibGUiLiBZTU1WLgoKSSBwcmVmZXIgdG8gcm91
dGUgdGhpcyBzZXJpZXMgdmlhIGJwZi1uZXh0LCBzaW5jZSBpdCBpbmNsdWRlIGNvcmUKY2hhbmdl
cywgYW5kIG5vdCBvbmx5IGRyaXZlciBjaGFuZ2VzLgoKCkhhdmUgYSBuaWNlIHdlZWtlbmQhCkJq
w7ZybgoKQmrDtnJuIFTDtnBlbCAoNik6CiAgeHNrOiBpbXByb3ZlIHhkcF9kb19yZWRpcmVjdCgp
IGVycm9yIGNvZGVzCiAgeGRwOiBpbnRyb2R1Y2UgeGRwX2RvX3JlZGlyZWN0X2V4dCgpIGZ1bmN0
aW9uCiAgeHNrOiBpbnRyb2R1Y2UgeHNrX2RvX3JlZGlyZWN0X3J4X2Z1bGwoKSBoZWxwZXIKICBp
NDBlLCB4c2s6IGZpbmlzaCBuYXBpIGxvb3AgaWYgQUZfWERQIFJ4IHF1ZXVlIGlzIGZ1bGwKICBp
Y2UsIHhzazogZmluaXNoIG5hcGkgbG9vcCBpZiBBRl9YRFAgUnggcXVldWUgaXMgZnVsbAogIGl4
Z2JlLCB4c2s6IGZpbmlzaCBuYXBpIGxvb3AgaWYgQUZfWERQIFJ4IHF1ZXVlIGlzIGZ1bGwKCiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMgICB8IDIzICsrKysrKysr
KysrKysrLS0tLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hzay5jICAg
ICB8IDIzICsrKysrKysrKysrKysrLS0tLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
eGdiZS9peGdiZV94c2suYyB8IDIzICsrKysrKysrKysrKysrLS0tLS0tCiBpbmNsdWRlL2xpbnV4
L2ZpbHRlci5oICAgICAgICAgICAgICAgICAgICAgICB8ICAyICsrCiBpbmNsdWRlL25ldC94ZHBf
c29ja19kcnYuaCAgICAgICAgICAgICAgICAgICB8ICA5ICsrKysrKysrCiBuZXQvY29yZS9maWx0
ZXIuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDE2ICsrKysrKysrKysrKy0tCiBuZXQv
eGRwL3hzay5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCiBuZXQveGRw
L3hza19xdWV1ZS5oICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCiA4IGZpbGVzIGNo
YW5nZWQsIDc1IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQoKCmJhc2UtY29tbWl0OiA4
ZWI2Mjk1ODVkMjIzMWU5MDExMjE0ODAwOWUyYTExYjA5NzljYTM4Ci0tIAoyLjI1LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
