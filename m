Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C3D7FF9FD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 19:49:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEFB441F57;
	Thu, 30 Nov 2023 18:49:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEFB441F57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701370185;
	bh=mhTRRyOsT+p4bEKmOZCOfPvNfBsAb0kcwA7+BfAqZhM=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=gfDFlxyotZIjIZz1DWuyfnmHkTm31ZQdt6G+mywIU4Y6t/MFebjv0ueK2rXFNf3jP
	 88XtYsgmVdPt04HzVszvsUvypj6HO3SQ5bLGPGzpFtFjZdJUeD/+ITsINlRHwBGioB
	 HTXE6b5T5PIFVJVPLRxmfMU8bMD24sFFvRYgjByuAhXYYNBLEyRvPxdKAn7vCrGvPM
	 DnseXi+zSVPpEbMRU/Uldz3OuhzMSgn4dANoG9V/CNeoYBFCaYua6E2Xy/pwe/aFn/
	 /B9nJxE5ozQ/D6uOMTu+QrUya/jE1yfD7aAx0DHNjapwU/as5weB63M00veqggFrPU
	 Nk35iH2kvdd+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UmhZXc_i8Erj; Thu, 30 Nov 2023 18:49:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8487A41EE4;
	Thu, 30 Nov 2023 18:49:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8487A41EE4
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A55591BF476
 for <intel-wired-lan@osuosl.org>; Thu, 30 Nov 2023 18:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C30A41EE4
 for <intel-wired-lan@osuosl.org>; Thu, 30 Nov 2023 18:49:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C30A41EE4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ALr6FzAwJstW for <intel-wired-lan@osuosl.org>;
 Thu, 30 Nov 2023 18:49:37 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EE1641E86
 for <intel-wired-lan@osuosl.org>; Thu, 30 Nov 2023 18:49:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EE1641E86
Received: by mail-lf1-x130.google.com with SMTP id
 2adb3069b0e04-50bc8b7d8ffso1882006e87.0
 for <intel-wired-lan@osuosl.org>; Thu, 30 Nov 2023 10:49:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701370175; x=1701974975;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gEvkF6nvwulydmQg+T8+i4YwptKZdW2oirLeIWgykKU=;
 b=Y3WDbXitr/1QVEU1aBkevxmyYFQsPmcUgMuuQ0V018lYLGnrKX+L9l7zJaWQ0xGIhe
 pnPSEL8+Sccxt1RYrqrlGy9PTDMJc+dzgx78kqyZAUGxPwhjvpxGyRdHbb1M8/v7gDId
 NJAzspfRISbT6/3PMYpd+ON6t1bBWdKnuqlcY7ro0mCfJfRxJSnDErMuOnTPkd2YIq6d
 Jl5rFDObjPF4I3YW+JoNymvGpoMP9cDSOqDn+t2PVm+cRgvn7QmuIWif09kFQYdG2Yhl
 SI9zCNPiqTKuavIF9/fhMj2FTC5SiWItWALmoOfBWdurzcnvNBfg1DePgJZ+yrrVvHCP
 TM4A==
X-Gm-Message-State: AOJu0YyfSBOTlVb5j2q/+lz0Q7wYcTR0ZEz82sklh5HECq/zklvexhFw
 NXabdSivTkXFzSPfjlC73QPGmmhTF/bTqVvPzitwR+tK5w==
X-Google-Smtp-Source: AGHT+IHkeMmjWRpH180La7bdrWLgMUJotIyVPrCUHl9vOSNLsNv8KgrWxu81TPJvPSycutY0qpWuiijdaG5cSEK05X0=
X-Received: by 2002:ac2:4f05:0:b0:50b:d764:28ea with SMTP id
 k5-20020ac24f05000000b0050bd76428eamr2632lfr.130.1701370162740; Thu, 30 Nov
 2023 10:49:22 -0800 (PST)
MIME-Version: 1.0
From: tedheadster <tedheadster@gmail.com>
Date: Thu, 30 Nov 2023 13:49:10 -0500
Message-ID: <CAP8WD_ZLjaAF+xZ4AA8o250ckq6naRhMMfeWQ9TFi70Rhuo00w@mail.gmail.com>
To: intel-wired-lan@osuosl.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701370175; x=1701974975; darn=osuosl.org;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=gEvkF6nvwulydmQg+T8+i4YwptKZdW2oirLeIWgykKU=;
 b=DilamWmgAo8QuqL307EZMe6/pSi/zhWem+6FbuedUU/jy2xFbl0Yd7jqHbkSqsjL15
 mQr3fAt3579JaVSoLIsWBspIHBz8vCTV0MeqKw3WROy7yMELsJ5cdxaVMVFQz5EGo6pN
 C9ygNhdlPHpEIBYMuHSs0uVuvTkqBX4/WiF+/LJ9RPp6plQMzkL6623k3vkODAdw7RDc
 Wc8GaaM7ieQXZpQPiXR+tTtKg+AfK5rrZCgNyJZQ7Z6+u+a7JTmNHUgrlLvL7BUJ4p33
 0rkAj7y1PstJbQ2Do3jk0ehVAjAA1mt9Xqrq6pxqdVJwbqZilAHPbWyHKjNFm2vru41V
 se0w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=DilamWmg
Subject: [Intel-wired-lan] Compile of out-of-tree 'ice' driver fails on 32
 bit
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
Reply-To: whiteheadm@acm.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGFzIGFueW9uZSB0cmllZCBjb21waWxpbmcgdGhlIG91dC1vZi10cmVlIGtlcm5lbCBuZXR3b3Jr
IHNvZnR3YXJlCmZvciB0aGUgJ2ljZScgZHJpdmVyIG9uIDMyIGJpdCBpMzg2PyBJIHRyaWVkIGl0
IGZvciB0aGUKbG9uZy10ZXJtLXN1cHBvcnQgNS4xMC4xOTcga2VybmVsIGFuZCBnb3QgdGhlc2Ug
Y29tcGlsZSB0aW1lIGVycm9yczoKCiQgbWFrZSBBUkNIPWkzODYgQ0ZMQUdTX0VYVFJBPSItREdO
U1NfU1VQUE9SVCIKbWFrZSAgY2NmbGFncy15PSItREdOU1NfU1VQUE9SVCAtRFVTRV9JTlRFTF9B
VVhfQlVTIiAtQwoiL2xpYi9tb2R1bGVzLzUuMTAuMTk3Lmk2ODYtcGVudGl1bTQtbXBlbnRpdW00
LWxlbm92by9zb3VyY2UiCkNPTkZJR19JQ0U9bSBDT05GSUdfTU9EVUxFX1NJRz1uIENPTkZJR19N
T0RVTEVfU0lHX0FMTD0KTT0iL3RtcC9pY2UtMS4xMS4xNC9zcmMiICAgTkVFRF9BVVhfQlVTPSIy
IiAgbW9kdWxlcwogIENDIFtNXSAgL3RtcC9pY2UtMS4xMS4xNC9zcmMvaWNlX21haW4ubwpJbiBm
aWxlIGluY2x1ZGVkIGZyb20gL3RtcC9pY2UtMS4xMS4xNC9zcmMva2NvbXBhdC5oOjMzNTEsCiAg
ICAgICAgICAgICAgICAgZnJvbSAvdG1wL2ljZS0xLjExLjE0L3NyYy9pY2UuaDo3LAogICAgICAg
ICAgICAgICAgIGZyb20gL3RtcC9pY2UtMS4xMS4xNC9zcmMvaWNlX21haW4uYzo4OgovdG1wL2lj
ZS0xLjExLjE0L3NyYy9rY29tcGF0X2ltcGwuaDo4NTE6MjA6IGVycm9yOiByZWRlZmluaXRpb24g
b2YK4oCYZXRoX2h3X2FkZHJfc2V04oCZCiAgODUxIHwgc3RhdGljIGlubGluZSB2b2lkIGV0aF9o
d19hZGRyX3NldChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LApjb25zdCB1OCAqYWRkcikKICAgICAg
fCAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+CkluIGZpbGUgaW5jbHVkZWQgZnJv
bSAvdG1wL2ljZS0xLjExLjE0L3NyYy9rY29tcGF0Lmg6MTY6Ci4vaW5jbHVkZS9saW51eC9ldGhl
cmRldmljZS5oOjMwOToyMDogbm90ZTogcHJldmlvdXMgZGVmaW5pdGlvbiBvZgrigJhldGhfaHdf
YWRkcl9zZXTigJkgd2l0aCB0eXBlIOKAmHZvaWQoc3RydWN0IG5ldF9kZXZpY2UgKiwgY29uc3Qg
dTggKinigJkKe2FrYSDigJh2b2lkKHN0cnVjdCBuZXRfZGV2aWNlICosIGNvbnN0IHVuc2lnbmVk
IGNoYXIgKinigJl9CiAgMzA5IHwgc3RhdGljIGlubGluZSB2b2lkIGV0aF9od19hZGRyX3NldChz
dHJ1Y3QgbmV0X2RldmljZSAqZGV2LApjb25zdCB1OCAqYWRkcikKICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgXn5+fn5+fn5+fn5+fn5+CkluIGZpbGUgaW5jbHVkZWQgZnJvbSAuL2luY2x1ZGUv
bGludXgvYml0cy5oOjYsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYml0
b3BzLmg6NSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9rZXJuZWwuaDox
MiwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9hc20tZ2VuZXJpYy9idWcuaDoyMCwK
ICAgICAgICAgICAgICAgICBmcm9tIC4vYXJjaC94ODYvaW5jbHVkZS9hc20vYnVnLmg6OTMsCiAg
ICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYnVnLmg6NSwKICAgICAgICAgICAg
ICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9pby5oOjExLAogICAgICAgICAgICAgICAgIGZyb20g
L3RtcC9pY2UtMS4xMS4xNC9zcmMva2NvbXBhdC5oOjEzOgovdG1wL2ljZS0xLjExLjE0L3NyYy9p
Y2VfbWFpbi5jOiBJbiBmdW5jdGlvbiDigJhpY2VfcGZfZndsb2dfaXNfaW5wdXRfdmFsaWTigJk6
Ci4vaW5jbHVkZS92ZHNvL2JpdHMuaDo3OjQwOiB3YXJuaW5nOiBsZWZ0IHNoaWZ0IGNvdW50ID49
IHdpZHRoIG9mIHR5cGUKWy1Xc2hpZnQtY291bnQtb3ZlcmZsb3ddCiAgICA3IHwgI2RlZmluZSBC
SVQobnIpICAgICAgICAgICAgICAgICAoVUwoMSkgPDwgKG5yKSkKICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefgovdG1wL2ljZS0xLjExLjE0L3NyYy9pY2Vf
bWFpbi5jOjU5OTI6MjM6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhCSVTigJkKIDU5
OTIgfCAgICAgICAgIGlmIChldmVudHMgPj0gQklUKElDRV9BUUNfRldfTE9HX0lEX01BWCkpIHsK
ICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgXn5+Ci4vaW5jbHVkZS92ZHNvL2JpdHMuaDo3
OjQwOiB3YXJuaW5nOiBsZWZ0IHNoaWZ0IGNvdW50ID49IHdpZHRoIG9mIHR5cGUKWy1Xc2hpZnQt
Y291bnQtb3ZlcmZsb3ddCiAgICA3IHwgI2RlZmluZSBCSVQobnIpICAgICAgICAgICAgICAgICAo
VUwoMSkgPDwgKG5yKSkKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBefgouL2luY2x1ZGUvbGludXgvZGV2X3ByaW50ay5oOjExMjozOTogbm90ZTogaW4gZXhw
YW5zaW9uIG9mIG1hY3JvIOKAmEJJVOKAmQogIDExMiB8ICAgICAgICAgX2Rldl9lcnIoZGV2LCBk
ZXZfZm10KGZtdCksICMjX19WQV9BUkdTX18pCiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fgovdG1wL2ljZS0xLjExLjE0L3NyYy9pY2VfbWFp
bi5jOjU5OTM6MTc6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhkZXZfZXJy4oCZCiA1
OTkzIHwgICAgICAgICAgICAgICAgIGRldl9lcnIoaWNlX3BmX3RvX2RldihwZiksICJJbnZhbGlk
IEZXIGxvZwpldmVudHMgMHglbHgsIGFsbCBGVyBsb2cgZXZlbnQgYml0cyA+PSAweCVseCBhcmUg
aW52YWxpZFxuIiwKICAgICAgfCAgICAgICAgICAgICAgICAgXn5+fn5+fgptYWtlWzJdOiAqKiog
W3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6Mjg2OgovdG1wL2ljZS0xLjExLjE0L3NyYy9pY2VfbWFp
bi5vXSBFcnJvciAxCm1ha2VbMV06ICoqKiBbTWFrZWZpbGU6MTgzMjogL3RtcC9pY2UtMS4xMS4x
NC9zcmNdIEVycm9yIDIKbWFrZTogKioqIFtNYWtlZmlsZToxNDk6IGFsbF0gRXJyb3IgMgoKSSBr
bm93IDMyYml0IGlzIG9mZmljaWFsbHkgdW5zdXBwb3J0ZWQsIGJ1dCBpdCBzZWVtcyBsaWtlIGl0
IHNob3VsZApub3QgYnJlYWsgdGhlIGNvbXBpbGUgdGhpcyBiYWRseS4gSSdtIHJ1bm5pbmcgb24g
MzJiaXQgYXMgYSBHTlNTIHRpbWUKc2VydmVyLCBJJ20gbm90IHRyeWluZyB0byB1c2UgdGhlIGhp
Z2ggc3BlZWQgY2FwYWJpbGl0aWVzIG9mIHRoZSBOSUMuCgotIE1hdHRoZXcKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
