Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC54B1409C7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2020 13:32:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D3C7874C5;
	Fri, 17 Jan 2020 12:32:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EXE6jnaMWXc2; Fri, 17 Jan 2020 12:32:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32A9187B62;
	Fri, 17 Jan 2020 12:32:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B9A491BF331
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2020 12:32:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B2050869CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2020 12:32:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sjqc4YdtW3b1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2020 12:32:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CA5CD869BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2020 12:32:19 +0000 (UTC)
Received: by mail-qk1-f178.google.com with SMTP id x129so22453140qke.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2020 04:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bDo76dKOnuzMEZoozXWQMHwLc/1xlavJZ+W7DLl98cA=;
 b=Zuu0U+4k8U3TD77N2gxENMofYswGIX7cAUtVza5colFEksaX5SB4mO8RaFQiZ0sz6I
 f/QfQjY00+2cPnqGozgWSiBjafKbOzsDuH+OEtrfBZBYGWEYKPhW/klR4C4LvXCSAz5r
 xnDht5j6I8hjqzR8NUNkUkzeecoKkD6XTJJt9AiRk33yuyQNdHfBMDydVVLE48k4r3cD
 8Bi78ttsu2qI5QpkioiQ7M0kuPUOXz4GT73zqyXUmXMAqDvQD2KSoj7mfDU8CRHHWHNk
 GjeBExZ2Qp8OTx/xVe+ZqTqJBUVhgFTO+T2xckmvSAPOdALBSJTIbDkrymed+Uy4ndF1
 0iRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bDo76dKOnuzMEZoozXWQMHwLc/1xlavJZ+W7DLl98cA=;
 b=rsGLSK2U0E9iMf6v/yd/LYQAM6pIBHDdC93freMj80H88EWBMJutx8IERDDzBhj36C
 jSkhm1Gjkbu2EHabmW6Fd01gOWy7eSqWGQKBWUCC1j5Cw1PxQB5KPIE9xeoQxAXzkVHu
 QoV8EIaP151Sp7tAbME55eqSb6uH2NSygxwUOm8Fq5OM03693qvbB0w4grA5gk4OmrL8
 f75spnt3y/6MwAYb9macZ87wOI5Mn2mevzTqMc02x6Dq6HWZz+yk4MGe2ianjacF6cCy
 mLwo7MauZO8ujhwyZ3Nm7nMFol8P9K7aS7KvZmq5NbjcSwyEZ2Yab8UNUuWCgTc4QHNy
 OLeA==
X-Gm-Message-State: APjAAAU80yAAYLlxS2SN28/EDw4FWYow8xH5VDD9OwsFrREUPxm9Kdvt
 Zq8jG67FGZhAq8nUqUMQM90LpcfzihSyJTH86QU=
X-Google-Smtp-Source: APXvYqxTXWA54rmWZpLP6uGDCWOlZc+r+yABTf9LKI9AozCp3AplLW8CMhCxgL+4K2WT73qjLAzt1DUkxLTE72V/ueE=
X-Received: by 2002:ae9:ee11:: with SMTP id i17mr38169903qkg.333.1579264338781; 
 Fri, 17 Jan 2020 04:32:18 -0800 (PST)
MIME-Version: 1.0
References: <14f9e1bf5c3a41dbaec53f83cb5f0564@isi.edu>
In-Reply-To: <14f9e1bf5c3a41dbaec53f83cb5f0564@isi.edu>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Fri, 17 Jan 2020 13:32:07 +0100
Message-ID: <CAJ+HfNhdPEe34DVUAj4eHxLkBUSTo2CXbLHoWu+dwFCp753oMg@mail.gmail.com>
To: Ryan Goodfellow <rgoodfel@isi.edu>
Subject: Re: [Intel-wired-lan] zero-copy between interfaces
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
Cc: "xdp-newbies@vger.kernel.org" <xdp-newbies@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAxMyBKYW4gMjAyMCBhdCAwMToyOCwgUnlhbiBHb29kZmVsbG93IDxyZ29vZGZlbEBp
c2kuZWR1PiB3cm90ZToKPgpbLi4uXQo+Cj4gSSBjb3VsZCBub3QgZ2V0IHplcm8tY29weSB0byB3
b3JrIHdpdGggdGhlIGk0MGUgZHJpdmVyIGFzIGl0IHdvdWxkIGNyYXNoLiBJJ3ZlCj4gYXR0YWNo
ZWQgdGhlIGNvcnJlc3BvbmRpbmcgdHJhY2VzIGZyb20gZG1lc2cuCgpUaGFua3MgUnlhbiEgSSBo
YWQgYSBsb29rIGF0IHRoZSBjcmFzaCwgYW5kIGl0J3MgaW4gdGhlIFhEUCBzZXR1cDoKCmk0MGVf
eGRwX3NldHVwOgouLi4KIGZvciAoaSA9IDA7IGkgPCB2c2ktPm51bV9xdWV1ZV9wYWlyczsgaSsr
KQogICAgIFdSSVRFX09OQ0UodnNpLT5yeF9yaW5nc1tpXS0+eGRwX3Byb2csIHZzaS0+eGRwX3By
b2cpOwoKYW5kIHRoZSB2c2ktPnJ4X3JpbmdbMF0gaXMgTlVMTC4gVGhpcyBpcyBjbGVhcmx5IGJy
b2tlbi4KCkl0IHdvdWxkIGhlbHAgd2l0aCBtb3JlIGxpbmVzIGZyb20geW91ciBkbWVzZzogdGhl
IGN1dCBpNDBlIGxvZyBoaW50cwp0aGF0IHNvbWV0aGluZyBpcyByZWFsbHkgYnJva2VuOgoKWyAg
MzI4LjU3OTE1NF0gaTQwZSAwMDAwOmI3OjAwLjI6IGZhaWxlZCB0byBnZXQgdHJhY2tpbmcgZm9y
IDI1NgpxdWV1ZXMgZm9yIFZTSSAwIGVyciAtMTIKWyAgMzI4LjU3OTI4MF0gaTQwZSAwMDAwOmI3
OjAwLjI6IHNldHVwIG9mIE1BSU4gVlNJIGZhaWxlZApbICAzMjguNTc5MzY3XSBpNDBlIDAwMDA6
Yjc6MDAuMjogY2FuJ3QgcmVtb3ZlIFZFQiAxNjIgd2l0aCAwIFZTSXMgbGVmdAoKSXMgaXQgcG9z
c2libGUgdG8gZGlnIG91dCB0aGUgY29tcGxldGUgbG9nPwoKVGhhbmtzIQpCasO2cm4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
