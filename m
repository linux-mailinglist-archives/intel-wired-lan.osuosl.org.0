Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA55D800C65
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 14:42:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3518A6FA9F;
	Fri,  1 Dec 2023 13:42:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3518A6FA9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701438129;
	bh=PiLhUyWQg7MI8bizWOflfsIGev+fo6NCia4Ml+o/4J4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=cXVlEz79bdhvSv17I/e5Abs2KgxZZTcE7On1yUbQ1DehhQcDY3TBzDeAGAdOG4DJw
	 C4gVAVRP5oldD+eofgwz79IKOmjLRykKa0M2/9YfOTupB1u+6PtoR8FMVmgoK/84oc
	 mpHRVGNkMsrZ0CKJIjoRRB02z4m1bkMiK1mz8iy35gf6idpew80Dkhbrl/YmUBrEb6
	 HYOy9ifrY3MUgMzXVXFLVVUYJvCKuxOc87+PkLOklz53wWMYD+d442kH0DcHghxKAg
	 28BqhxWTWHsDgWmvWsQ2o0MOS/vt+jKwArj4Ax59jcjyUlYN9b1KM6f0dDErOvRg4a
	 uxJMxgJXoJYUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RgvtvDo0A3pc; Fri,  1 Dec 2023 13:42:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2F156FA95;
	Fri,  1 Dec 2023 13:42:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2F156FA95
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B44A1BF5E9
 for <intel-wired-lan@osuosl.org>; Fri,  1 Dec 2023 13:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 366C284817
 for <intel-wired-lan@osuosl.org>; Fri,  1 Dec 2023 13:42:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 366C284817
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iqFjV2V68tsf for <intel-wired-lan@osuosl.org>;
 Fri,  1 Dec 2023 13:42:02 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E619847E0
 for <intel-wired-lan@osuosl.org>; Fri,  1 Dec 2023 13:42:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E619847E0
Received: by mail-ed1-x52f.google.com with SMTP id
 4fb4d7f45d1cf-54c54a3b789so1182323a12.0
 for <intel-wired-lan@osuosl.org>; Fri, 01 Dec 2023 05:42:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701438120; x=1702042920;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :reply-to:in-reply-to:references:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=l6qEaAeBU/IXjHWP5YAo3inTVKQfd+nMx4/y8cw88ag=;
 b=Z4B7aiJZlnFQl/QKxW72pVpwRWUogA4XPAIwf+j2krTypvj3MQlGyq0BSWzq6rflF8
 3cLQcKSyyf94TZJIxhvXBDV7akp93a0JEQm0MZ6/Je3vOB1Vn0+DmT7Wrha3MAATAQq/
 yyhcfPIpOfsZEdH2tyXDwweYOUlarZegngVX+UpUU2NVfE5liTmDMMNPt39gCa3dgRr5
 2gB9t3uok4EQ7spQceBMd4r+RtntAJD1KfqZGpMnRFUJL19M1shANSbyAF/QXYmTEErg
 OvY8xQCdggOY+/Qpkq5KoBQiSyEEkxGdprTNm2FA6motrtukdUn98AePySPF3YeOX3BM
 fCcQ==
X-Gm-Message-State: AOJu0YwrQP4Bs+E8C2AScHk/91PS7vKf1hc/VTu0H8Uwcw0A70vTit6E
 joP6GAFCnfA+gE6DYyDWCDze+s9fqyNJa+36ZQ==
X-Google-Smtp-Source: AGHT+IH/97UEJUiVulY6IOLupyHXOgJw4OzMP0N8SRgFPJAdO/6dDYFkd2fP7PdHLsZLzKAt/o3l5sdB5XbLRE6LLXo=
X-Received: by 2002:a05:6402:180a:b0:54a:f411:9a2e with SMTP id
 g10-20020a056402180a00b0054af4119a2emr1381230edy.0.1701438119868; Fri, 01 Dec
 2023 05:41:59 -0800 (PST)
MIME-Version: 1.0
References: <CAP8WD_ZLjaAF+xZ4AA8o250ckq6naRhMMfeWQ9TFi70Rhuo00w@mail.gmail.com>
 <acb99fc5-035a-1191-89c1-f4b3b073c94e@intel.com>
In-Reply-To: <acb99fc5-035a-1191-89c1-f4b3b073c94e@intel.com>
From: tedheadster <tedheadster@gmail.com>
Date: Fri, 1 Dec 2023 08:41:48 -0500
Message-ID: <CAP8WD_bBka2G2uoaWR=TfmGVkMVPL1Nz21wTgs18KaOeU2PHbQ@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701438120; x=1702042920; darn=osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :reply-to:in-reply-to:references:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=l6qEaAeBU/IXjHWP5YAo3inTVKQfd+nMx4/y8cw88ag=;
 b=Fz4CGdkwcF79XHlKwf5xilC25bZvIQxxVitg9McCxgzDTfFYQg0l3OMwJ2psTIII7o
 piwuzJrEEwm0qDTjnqiH1H9yx3Grn5pmPPXHfIRNjt5b4gh3d8x0p4L6CxVw9HQAheMF
 Iv1y6BMj3fR2UyZIyfKhhrVAy+q40qhIbqlQiBcKsF3X5Qao1EtwpYHZQP8ZA1xeIaZU
 yImitdIQ6jpLIpnilOkhe3mLuUaOPtslK0pj0Boas7kM7KEq9pjSZyX6ozcIZAftkjf0
 JEYPbcneGiyYihymvLkW4J1NUDqIoVv0c8ZUp7OU2511LhpynEgsgn3NH+cWcCRmLKwN
 aQhQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Fz4CGdkw
Subject: Re: [Intel-wired-lan] Compile of out-of-tree 'ice' driver fails on
 32 bit
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
Cc: intel-wired-lan@osuosl.org, whiteheadm@acm.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiA+IEhhcyBhbnlvbmUgdHJpZWQgY29tcGlsaW5nIHRoZSBvdXQtb2YtdHJlZSBrZXJuZWwgbmV0
d29yayBzb2Z0d2FyZQo+ID4gZm9yIHRoZSAnaWNlJyBkcml2ZXIgb24gMzIgYml0IGkzODY/IEkg
dHJpZWQgaXQgZm9yIHRoZQo+ID4gbG9uZy10ZXJtLXN1cHBvcnQgNS4xMC4xOTcga2VybmVsIGFu
ZCBnb3QgdGhlc2UgY29tcGlsZSB0aW1lIGVycm9yczoKPgo+IEFyZSB0aG9zZSByZWdyZXNzaW9u
cz8KPiBIYXZlIHlvdSB0cmllZCAxLjEyLng/Cj4gV2Ugd2lsbCBhbHNvIHNvb24gcmVsZWFzZSBh
bHNvIDEuMTMueAoKSSBqdXN0IHRyaWVkIDEuMTEuMTQsIDEuMTEuMTcuMSwgYW5kIDEuMTIuNy4g
VGhleSBhbGwgaGFkIHNpbWlsYXIKY29tcGlsZSBmYWlsdXJlcy4KCiA+ICQgbWFrZSBBUkNIPWkz
ODYgQ0ZMQUdTX0VYVFJBPSItREdOU1NfU1VQUE9SVCIKPiA+IG1ha2UgIGNjZmxhZ3MteT0iLURH
TlNTX1NVUFBPUlQgLURVU0VfSU5URUxfQVVYX0JVUyIgLUMKPiA+ICIvbGliL21vZHVsZXMvNS4x
MC4xOTcuaTY4Ni1wZW50aXVtNC1tcGVudGl1bTQtbGVub3ZvL3NvdXJjZSIKPiA+IENPTkZJR19J
Q0U9bSBDT05GSUdfTU9EVUxFX1NJRz1uIENPTkZJR19NT0RVTEVfU0lHX0FMTD0KPiA+IE09Ii90
bXAvaWNlLTEuMTEuMTQvc3JjIiAgIE5FRURfQVVYX0JVUz0iMiIgIG1vZHVsZXMKPiA+ICAgIEND
IFtNXSAgL3RtcC9pY2UtMS4xMS4xNC9zcmMvaWNlX21haW4ubwo+ID4gSW4gZmlsZSBpbmNsdWRl
ZCBmcm9tIC90bXAvaWNlLTEuMTEuMTQvc3JjL2tjb21wYXQuaDozMzUxLAo+ID4gICAgICAgICAg
ICAgICAgICAgZnJvbSAvdG1wL2ljZS0xLjExLjE0L3NyYy9pY2UuaDo3LAo+ID4gICAgICAgICAg
ICAgICAgICAgZnJvbSAvdG1wL2ljZS0xLjExLjE0L3NyYy9pY2VfbWFpbi5jOjg6Cj4gPiAvdG1w
L2ljZS0xLjExLjE0L3NyYy9rY29tcGF0X2ltcGwuaDo4NTE6MjA6IGVycm9yOiByZWRlZmluaXRp
b24gb2YKPiA+IOKAmGV0aF9od19hZGRyX3NldOKAmQo+ID4gICAgODUxIHwgc3RhdGljIGlubGlu
ZSB2b2lkIGV0aF9od19hZGRyX3NldChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAo+ID4gY29uc3Qg
dTggKmFkZHIpCj4gPiAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
Cj4gPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gL3RtcC9pY2UtMS4xMS4xNC9zcmMva2NvbXBhdC5o
OjE2Ogo+ID4gLi9pbmNsdWRlL2xpbnV4L2V0aGVyZGV2aWNlLmg6MzA5OjIwOiBub3RlOiBwcmV2
aW91cyBkZWZpbml0aW9uIG9mCj4gPiDigJhldGhfaHdfYWRkcl9zZXTigJkgd2l0aCB0eXBlIOKA
mHZvaWQoc3RydWN0IG5ldF9kZXZpY2UgKiwgY29uc3QgdTggKinigJkKPiA+IHtha2Eg4oCYdm9p
ZChzdHJ1Y3QgbmV0X2RldmljZSAqLCBjb25zdCB1bnNpZ25lZCBjaGFyICop4oCZfQo+ID4gICAg
MzA5IHwgc3RhdGljIGlubGluZSB2b2lkIGV0aF9od19hZGRyX3NldChzdHJ1Y3QgbmV0X2Rldmlj
ZSAqZGV2LAo+ID4gY29uc3QgdTggKmFkZHIpCj4KPiBUaGF0IHBhcnRpY3VsYXIgdGhpbmcgY291
bGQgYmUgcmF0aGVyIGVhc2lseSBzb2x2ZWQsCj4gZm9yIG9mZmljaWFsIGZpeCwgMS4xNCB3b3Vs
ZCBiZSB0aGUgZWFybGllc3QsIGJ1dCBsZXQgbWUga25vdyBob3cgaXQKPiB3b3JrcyB3aXRoIDEu
MTIueCBzbyBJIGNvdWxkIHByZXBhcmUgc29tZSBwYXRjaCBmb3IgeW91Lgo+Cj4gPiAgICAgICAg
fCAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+Cj4gPiBJbiBmaWxlIGluY2x1ZGVk
IGZyb20gLi9pbmNsdWRlL2xpbnV4L2JpdHMuaDo2LAo+ID4gICAgICAgICAgICAgICAgICAgZnJv
bSAuL2luY2x1ZGUvbGludXgvYml0b3BzLmg6NSwKPiA+ICAgICAgICAgICAgICAgICAgIGZyb20g
Li9pbmNsdWRlL2xpbnV4L2tlcm5lbC5oOjEyLAo+ID4gICAgICAgICAgICAgICAgICAgZnJvbSAu
L2luY2x1ZGUvYXNtLWdlbmVyaWMvYnVnLmg6MjAsCj4gPiAgICAgICAgICAgICAgICAgICBmcm9t
IC4vYXJjaC94ODYvaW5jbHVkZS9hc20vYnVnLmg6OTMsCj4gPiAgICAgICAgICAgICAgICAgICBm
cm9tIC4vaW5jbHVkZS9saW51eC9idWcuaDo1LAo+ID4gICAgICAgICAgICAgICAgICAgZnJvbSAu
L2luY2x1ZGUvbGludXgvaW8uaDoxMSwKPiA+ICAgICAgICAgICAgICAgICAgIGZyb20gL3RtcC9p
Y2UtMS4xMS4xNC9zcmMva2NvbXBhdC5oOjEzOgo+ID4gL3RtcC9pY2UtMS4xMS4xNC9zcmMvaWNl
X21haW4uYzogSW4gZnVuY3Rpb24g4oCYaWNlX3BmX2Z3bG9nX2lzX2lucHV0X3ZhbGlk4oCZOgo+
ID4gLi9pbmNsdWRlL3Zkc28vYml0cy5oOjc6NDA6IHdhcm5pbmc6IGxlZnQgc2hpZnQgY291bnQg
Pj0gd2lkdGggb2YgdHlwZQo+ID4gWy1Xc2hpZnQtY291bnQtb3ZlcmZsb3ddCj4gPiAgICAgIDcg
fCAjZGVmaW5lIEJJVChucikgICAgICAgICAgICAgICAgIChVTCgxKSA8PCAobnIpKQo+ID4gICAg
ICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn4KPiA+IC90bXAv
aWNlLTEuMTEuMTQvc3JjL2ljZV9tYWluLmM6NTk5MjoyMzogbm90ZTogaW4gZXhwYW5zaW9uIG9m
IG1hY3JvIOKAmEJJVOKAmQo+ID4gICA1OTkyIHwgICAgICAgICBpZiAoZXZlbnRzID49IEJJVChJ
Q0VfQVFDX0ZXX0xPR19JRF9NQVgpKSB7Cj4gPiAgICAgICAgfCAgICAgICAgICAgICAgICAgICAg
ICAgXn5+Cj4gPiAuL2luY2x1ZGUvdmRzby9iaXRzLmg6Nzo0MDogd2FybmluZzogbGVmdCBzaGlm
dCBjb3VudCA+PSB3aWR0aCBvZiB0eXBlCj4gPiBbLVdzaGlmdC1jb3VudC1vdmVyZmxvd10KPiA+
ICAgICAgNyB8ICNkZWZpbmUgQklUKG5yKSAgICAgICAgICAgICAgICAgKFVMKDEpIDw8IChucikp
Cj4gPiAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefgo+
ID4gLi9pbmNsdWRlL2xpbnV4L2Rldl9wcmludGsuaDoxMTI6Mzk6IG5vdGU6IGluIGV4cGFuc2lv
biBvZiBtYWNybyDigJhCSVTigJkKPiA+ICAgIDExMiB8ICAgICAgICAgX2Rldl9lcnIoZGV2LCBk
ZXZfZm10KGZtdCksICMjX19WQV9BUkdTX18pCj4gPiAgICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+Cj4gPiAvdG1wL2ljZS0xLjExLjE0L3Ny
Yy9pY2VfbWFpbi5jOjU5OTM6MTc6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhkZXZf
ZXJy4oCZCj4gPiAgIDU5OTMgfCAgICAgICAgICAgICAgICAgZGV2X2VycihpY2VfcGZfdG9fZGV2
KHBmKSwgIkludmFsaWQgRlcgbG9nCj4gPiBldmVudHMgMHglbHgsIGFsbCBGVyBsb2cgZXZlbnQg
Yml0cyA+PSAweCVseCBhcmUgaW52YWxpZFxuIiwKPiA+ICAgICAgICB8ICAgICAgICAgICAgICAg
ICBefn5+fn5+Cj4gPiBtYWtlWzJdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6Mjg2Ogo+
ID4gL3RtcC9pY2UtMS4xMS4xNC9zcmMvaWNlX21haW4ub10gRXJyb3IgMQo+ID4gbWFrZVsxXTog
KioqIFtNYWtlZmlsZToxODMyOiAvdG1wL2ljZS0xLjExLjE0L3NyY10gRXJyb3IgMgo+ID4gbWFr
ZTogKioqIFtNYWtlZmlsZToxNDk6IGFsbF0gRXJyb3IgMgo+ID4KPiA+IEkga25vdyAzMmJpdCBp
cyBvZmZpY2lhbGx5IHVuc3VwcG9ydGVkLCBidXQgaXQgc2VlbXMgbGlrZSBpdCBzaG91bGQKPiA+
IG5vdCBicmVhayB0aGUgY29tcGlsZSB0aGlzIGJhZGx5Lgo+Cj4gSSB3b3VsZCBzYXkgaXQncyBi
ZXR0ZXIgdG8gZmFpbCBhdCB0aGF0IHN0YWdlIHRoYXQgcmVuZGVyIG91dC1vZi1ib3VuZAo+IHdy
aXRlcyBvciBvdGhlciBlcnJvcnMuCj4KPiBsb29rcyBsaWtlIEludGVsIE9PVCBCSVQoKSBtYWNy
byBhc3N1bWVzIDY0Yml0IGFyY2gsIHBlcmhhcHMgdGhpcyBjb3VsZAo+IGJlIGZpeGVkIGluIGdl
bmVyYWwsIGJ1dCBJJ20gbm90IHByb21pc2luZyBhbnl0aGluZyBoZXJlLgo+CgpNYXliZSB0aGV5
IHNob3VsZCBkZWNsYXJlIHRoZSB2YXJpYWJsZSBhcyB1NjQgaW5zdGVhZCBvZiB1bnNpZ25lZAps
b25nPyBUaGUgbWFjcm8gQklUIGluIGluY2x1ZGUvdmRzby9iaXRzLmggaXMgZGVmaW5lZCBhczoK
CiNkZWZpbmUgQklUKG5yKSAoVUwoMSkgPDwgKG5yKSkKClNvIHlvdSBnZXQgd2hhdGV2ZXIgYW4g
dW5zaWduZWQgbG9uZyBpcyBwZXIgYXJjaGl0ZWN0dXJlLCB3aGljaApvYnZpb3VzbHkgdmFyaWVz
LgoKLSBNYXR0aGV3Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
