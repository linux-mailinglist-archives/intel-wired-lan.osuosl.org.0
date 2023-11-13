Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129227EA159
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Nov 2023 17:37:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9208A41703;
	Mon, 13 Nov 2023 16:37:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9208A41703
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699893477;
	bh=IpZGZtyMmnUm7WjK9V+6QXRhiKyQTAHKaOkvPEAyOgU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AmnD6E1/YIfGK3ycLmBqM9+SmpX8OrJ1ji1Qh8uxelETX30kwJQmwkOqN3WL+yr8b
	 fuL5xI9maRrf9sqlCJmFMsQ0PtIJLTwZwEpuqHQtUiNH8Z43+PZRCXfSsVkeXZA+cM
	 33wt1EWydSSDtV+6xpRaMHP7BL25UWHF3Cfzuzkzg22rdFiDcuHvlRmJ7hbu5V7Sj4
	 xwpwLkqeT85K/obyzmaY2qBzryekH9l8iuL3f6o847FOkczsCsWFDmI5X7fpaMPmk4
	 VKgwAsaJMsMvYe1Zi9aHJ/ZGClFMzNXv/0ZSwnUW824aECUhuaIucMUd3fPV4brQER
	 +J5LhY5Ki/Qzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wg07k1bHgDCs; Mon, 13 Nov 2023 16:37:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A01B4176C;
	Mon, 13 Nov 2023 16:37:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A01B4176C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A62331BF355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 16:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BBB04116C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 16:37:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BBB04116C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wjSVc9zJnxKO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Nov 2023 16:37:49 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 14BE640B2F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 16:37:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14BE640B2F
Received: by mail-pl1-x632.google.com with SMTP id
 d9443c01a7336-1cc1e1e74beso41411265ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 08:37:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699893468; x=1700498268;
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=b/zDy4z5ugRk2uNsJVlQX88O3sqhhNAT4YSRXGEkg5w=;
 b=Bqqtafai+WFyGrdgEYKuLSBr2pdNpIwsl5A5fDlu3/2fhqhC9/Zg1s8mSsaAGU2jKH
 PmeMID/WgtD+j6egqyVYNQElSYp/KLzSWhsVS0oGcfiDfWiLHHFRTwHSY3Ro4ZrACtbf
 2WI8MEBOamC4obe7WZa1v8asi80zRpuX+bg7tJfpESb6uxBNz7cQEp3PTCOmegtq9R9U
 oyj3+yIcPt3gLcyEwF/YNN8wYUAiE0DX2QG7vXJqHEbA0tQutPh1oWPrCdytn5k6t9y4
 g8oEEhW4Wr8fPVvyIERHRgRJZOU8Od6TJrRYqQ4xPxaGv+X2YmnFm0hogUHgoYT939aD
 uM9Q==
X-Gm-Message-State: AOJu0YzBcN+/RMihBKntDP51PUCA+hitcztHFd2zVYX415/XHib+v/+2
 U/of1ObYdmtNMd2fRsteXrV76qlWKlWmOVoJnp8=
X-Google-Smtp-Source: AGHT+IEz3ptqVk2PgAfgXgpQLWooNXIx+kFtg2NRGNK7jAyAXFOlHW1BYA2kMt2vUVNx1E7ZCr8R6A==
X-Received: by 2002:a17:903:124a:b0:1cc:3f10:4175 with SMTP id
 u10-20020a170903124a00b001cc3f104175mr84002plh.28.1699893468049; 
 Mon, 13 Nov 2023 08:37:48 -0800 (PST)
Received: from hermes.local (204-195-123-141.wavecable.com. [204.195.123.141])
 by smtp.gmail.com with ESMTPSA id
 u6-20020a170902e5c600b001ca21e05c69sm4208472plf.109.2023.11.13.08.37.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Nov 2023 08:37:47 -0800 (PST)
Date: Mon, 13 Nov 2023 08:37:46 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
Message-ID: <20231113083746.5e02f8b0@hermes.local>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1699893468;
 x=1700498268; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=b/zDy4z5ugRk2uNsJVlQX88O3sqhhNAT4YSRXGEkg5w=;
 b=PYojEp/QNEdElOyN5oocHVeIpbexLYFEzk0WLiwmf8v5v+5f/jV6vAJ2rZcjxeQqgo
 wgMRcgD6JGy3vAcSkkc6tXyf4uytcVuKm/ZHFc3YLsmsZzdjtj4G6n6pRnRrhE0LgKVE
 k4g+JA1RR6cASgUVE75KkjMUkQ/M1kvkKjPaqXskhjexaO7B4pF/ecqrv5SJcA2Vtw2y
 UFtp1nQ9qnzKkSVM1eclrSV0vocvjZTPVhN6XNTmOgpJNXh53BVSQqBAPwGapOPO3RC7
 M2xWul5QLEqmeW4qi9l9lX4k/u95apvbPlf1YlrDvjLTIkK6TV7xp8crEIxM+b17N/oR
 TVng==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20230601.gappssmtp.com
 header.i=@networkplumber-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=PYojEp/Q
Subject: [Intel-wired-lan] Fw: [Bug 218139] New: Linux LACP bonding not
 working with sr-iov enable on Ethernet controller: Intel Corporation
 Ethernet Controller E810-C for QSFP (rev 02)
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpCZWdpbiBmb3J3YXJkZWQgbWVzc2FnZToKCkRhdGU6IE1vbiwgMTMgTm92IDIwMjMgMDU6MDY6
NTAgKzAwMDAKRnJvbTogYnVnemlsbGEtZGFlbW9uQGtlcm5lbC5vcmcKVG86IHN0ZXBoZW5AbmV0
d29ya3BsdW1iZXIub3JnClN1YmplY3Q6IFtCdWcgMjE4MTM5XSBOZXc6IExpbnV4IExBQ1AgYm9u
ZGluZyBub3Qgd29ya2luZyB3aXRoIHNyLWlvdiBlbmFibGUgb24gRXRoZXJuZXQgY29udHJvbGxl
cjogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgQ29udHJvbGxlciBFODEwLUMgZm9yIFFTRlAg
KHJldiAwMikKCgpodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIx
ODEzOQoKICAgICAgICAgICAgQnVnIElEOiAyMTgxMzkKICAgICAgICAgICBTdW1tYXJ5OiBMaW51
eCBMQUNQIGJvbmRpbmcgbm90IHdvcmtpbmcgd2l0aCBzci1pb3YgZW5hYmxlIG9uCiAgICAgICAg
ICAgICAgICAgICAgRXRoZXJuZXQgY29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJu
ZXQKICAgICAgICAgICAgICAgICAgICBDb250cm9sbGVyIEU4MTAtQyBmb3IgUVNGUCAocmV2IDAy
KQogICAgICAgICAgIFByb2R1Y3Q6IE5ldHdvcmtpbmcKICAgICAgICAgICBWZXJzaW9uOiAyLjUK
ICAgICAgICAgIEhhcmR3YXJlOiBJbnRlbAogICAgICAgICAgICAgICAgT1M6IExpbnV4CiAgICAg
ICAgICAgIFN0YXR1czogTkVXCiAgICAgICAgICBTZXZlcml0eTogYmxvY2tpbmcKICAgICAgICAg
IFByaW9yaXR5OiBQMwogICAgICAgICBDb21wb25lbnQ6IElQVjQKICAgICAgICAgIEFzc2lnbmVl
OiBzdGVwaGVuQG5ldHdvcmtwbHVtYmVyLm9yZwogICAgICAgICAgUmVwb3J0ZXI6IGFuaWxjaGFi
YmFAZ21haWwuY29tCiAgICAgICAgUmVncmVzc2lvbjogTm8KClRpbGwgbGlua3gga2VybmVsIDYu
NS43IGl0IGlzIHdvcmtpbmcgZmluZSwgYnV0IGFmdGVyIHVwZ3JhZGluZyB0byA2LjYuMSBwaW5n
CnN0b3Agd29ya2luZyB3aXRoIExBQ1AgYm9uZGluZy4KV2hlbiB3ZSBkaXNhYmxlIFNSLUlPViBm
cm9tIGJpb3MgLCBldmVyeXRoaW5nIHdvcmtpbmcgZmluZQoKQWxzbyB3ZSBhcmUgbm90IGFibGUg
dG8gY29tcGlsZSAKZHJpdmVyOiBpY2UKdmVyc2lvbjogMS4xMi42CldlIGFyZSBnZXR0aW5nIGZv
bGxvd2luZyBlcnJvci4KCgoKV2l0aCBpbnRlciBkcml2ZXIgY29kZSh2ZXJzaW9uIDEuMTIuNikg
d2hpbGUgY29tcGxhaW5pbmcgSSBhbSBnZXR0aW5nIGZvbGxvd2luZwplcnJvci4KL3Jvb3QvMS4x
Mi42L2J1aWxkL3NyYy9pY2VfdHhyeC5oOjM2MzoyOTogZXJyb3I6IGZpZWxkIOKAmHhkcF9yeHHi
gJkgaGFzIGluY29tcGxldGUKdHlwZQogIDM2MyB8ICAgICAgICAgc3RydWN0IHhkcF9yeHFfaW5m
byB4ZHBfcnhxOwogICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+Ci9y
b290LzEuMTIuNi9idWlsZC9zcmMvaWNlX21haW4uYzogSW4gZnVuY3Rpb24g4oCYaWNlX3JlbW92
ZV9yZWNvdmVyeV9tb2Rl4oCZOgovcm9vdC8xLjEyLjYvYnVpbGQvc3JjL2ljZV9tYWluLmM6MTU0
MDo5OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YKZnVuY3Rpb24g4oCYcGNpX2Rpc2Fi
bGVfcGNpZV9lcnJvcl9yZXBvcnRpbmfigJkKWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVj
bGFyYXRpb25dCiAxNTQwIHwgICAgICAgICBwY2lfZGlzYWJsZV9wY2llX2Vycm9yX3JlcG9ydGlu
ZyhwZi0+cGRldik7CiAgICAgIHwgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fgovcm9vdC8xLjEyLjYvYnVpbGQvc3JjL2ljZV9tYWluLmM6IEluIGZ1bmN0aW9uIOKAmGlj
ZV9wcm9iZeKAmToKL3Jvb3QvMS4xMi42L2J1aWxkL3NyYy9pY2VfbWFpbi5jOjcwNDY6OTogZXJy
b3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mCmZ1bmN0aW9uIOKAmHBjaV9lbmFibGVfcGNpZV9l
cnJvcl9yZXBvcnRpbmfigJkKWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25d
CiA3MDQ2IHwgICAgICAgICBwY2lfZW5hYmxlX3BjaWVfZXJyb3JfcmVwb3J0aW5nKHBkZXYpOwog
ICAgICB8ICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgpjYzE6IHNvbWUg
d2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKbWFrZVszXTogKioqIFtzY3JpcHRzL01h
a2VmaWxlLmJ1aWxkOjI0MzogL3Jvb3QvMS4xMi42L2J1aWxkL3NyYy9pY2VfbWFpbi5vXQpFcnJv
ciAxCm1ha2VbMl06ICoqKiBbL3Vzci9zcmMvbGludXgtaGVhZGVycy02LjYuMC1yYzctdmR4L01h
a2VmaWxlOjE5MTM6Ci9yb290LzEuMTIuNi9idWlsZC9zcmNdIEVycm9yIDIKbWFrZVsxXTogKioq
IFtNYWtlZmlsZToyMzQ6IF9fc3ViLW1ha2VdIEVycm9yIDIKbWFrZVsxXTogTGVhdmluZyBkaXJl
Y3RvcnkgJy91c3Ivc3JjL2xpbnV4LWhlYWRlcnMtNi42LjAtcmM3LXZkeCcKbWFrZTogKioqIFtN
YWtlZmlsZToxNzQ6IGFsbF0gRXJyb3IgMgoKClRoYW5rcywKQW5pbAoKLS0gCllvdSBtYXkgcmVw
bHkgdG8gdGhpcyBlbWFpbCB0byBhZGQgYSBjb21tZW50LgoKWW91IGFyZSByZWNlaXZpbmcgdGhp
cyBtYWlsIGJlY2F1c2U6CllvdSBhcmUgdGhlIGFzc2lnbmVlIGZvciB0aGUgYnVnLgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
