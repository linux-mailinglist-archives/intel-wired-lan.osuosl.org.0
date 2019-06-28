Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1C85A5A2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 22:08:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 40B1984778;
	Fri, 28 Jun 2019 20:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CZIaj0BLZSBR; Fri, 28 Jun 2019 20:08:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 002148689B;
	Fri, 28 Jun 2019 20:08:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0AA71BF343
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 20:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB17D203E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 20:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sdS2XHJr71bl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 20:08:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 60933203DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 20:08:08 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id l128so5964102qke.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 13:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=lLlyQ5kaVdrnVnTcB00toGJYu3J4KQ63Sf7wJuxSF38=;
 b=lAImNVy2wuKqDzk0eT7Y0yCpet+4NuMsmicwG6h5GYWdn/DM1hGMDyXRHePbMaSCFp
 ZZMOQAYxt+Lw9TuVKgKb58swI2j23U9jmuYEwIGvxAfMEEV1z+OKV3+k9xlB59KjFtBP
 AoPNT3o2l3v1rFC0i8j+vdzqPtBYoTj4/pzSnQcxo6k7h9EOuwkLvOxPBlqLY2uxZvbp
 XzO/F3137NVDib6689Vp72u9Xej86GPp4cgsbKKrXZjN8c2UZoQg+kpDcRpDhL1A4fEN
 zMpyf07IKJyTOhWPleaGZwIC+6gEwVtdS/81cyoNaiE7pdbFiYfnNjoo9CiGpGCGR5Yg
 1DUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=lLlyQ5kaVdrnVnTcB00toGJYu3J4KQ63Sf7wJuxSF38=;
 b=C/y1i2Gx1AzhP0tAViFrpEw0C3Q9CH0th4dQxwZdWdz+Gy1dmQYL08RC9H6DeznYwR
 ksm5aZnrVTFthTYqd6lEgSEAUp78DpWQ/kWucSq6/23VKg0IkIntQIk1CTs6Ek3jstF/
 dL4P0k5r9TSYhE+sbNSs92jziDlUqYgzhB9b6aWCQorBaBaNRrpKW27Nz/mk82tIjjp7
 UHV+cXq+HYZGTVD/FAX2ZgNyHqY3zosdOlbhs6k489NAu7KUTMmExfKwuiUKZ22lcezt
 2s6dqRwmkOf7COHSWXJfm+Yj+XzSelItiRdFmx+RmHtdkBR4KstrvT28dIjqHqnBxlHD
 eDpA==
X-Gm-Message-State: APjAAAXBbghyY+Kw15eLQsbxmiyO02Qfo444sPgPnm5A8Ij/ad/pkDvS
 etYqGIJ85iF4fzZsCnO1YQVSfg==
X-Google-Smtp-Source: APXvYqzPVSl9Mlk2IgUzorxAnmeH0zfdmUjZNznUbKqTU35x+liTQL1dOpc7XAVjQlCoP/VzppdApg==
X-Received: by 2002:a37:bc84:: with SMTP id m126mr4150878qkf.303.1561752487472; 
 Fri, 28 Jun 2019 13:08:07 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id a19sm1734793qka.103.2019.06.28.13.08.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 13:08:07 -0700 (PDT)
Date: Fri, 28 Jun 2019 13:08:02 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <20190628130802.24a6f22b@cakuba.netronome.com>
In-Reply-To: <f6fb0870-b5b4-9aba-bfb5-b4248a95da79@intel.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
 <FA8389B9-F89C-4BFF-95EE-56F702BBCC6D@gmail.com>
 <ef7e9469-e7be-647b-8bb1-da29bc01fa2e@intel.com>
 <20190627142534.4f4b8995@cakuba.netronome.com>
 <f0ca817a-02b4-df22-d01b-7bc07171a4dc@intel.com>
 <f6fb0870-b5b4-9aba-bfb5-b4248a95da79@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 00/11] XDP unaligned chunk placement
 support
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
Cc: daniel@iogearbox.net, "Laatz, Kevin" <kevin.laatz@intel.com>,
 ciara.loftus@intel.com, Jonathan Lemon <jonathan.lemon@gmail.com>,
 ast@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 bruce.richardson@intel.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAyOCBKdW4gMjAxOSAxODo1MTozNyArMDIwMCwgQmrDtnJuIFTDtnBlbCB3cm90ZToK
PiBJbiB5b3VyIGV4YW1wbGUgSmFrdWIsIGhvdyB3b3VsZCB0aGlzIGxvb2sgaW4gWERQPyBXb3Vs
ZG4ndCB0aGUKPiB0aW1lc3RhbXAgYmUgcGFydCBvZiB0aGUgbWV0YWRhdGEgKHhkcF9tZC5kYXRh
X21ldGEpPyBJc24ndAo+IGRhdGEtZGF0YV9tZXRhIChpZiB2YWxpZCkgPD0gWERQX1BBQ0tFVF9I
RUFEUk9PTT8gVGhhdCB3YXMgbXkgYXNzdW1wdGlvbi4KClRoZSBkcml2ZXIgcGFyc2VzIHRoZSBt
ZXRhZGF0YSBhbmQgY29waWVzIGl0IG91dHNpZGUgb2YgdGhlIHByZXBlbmQKYmVmb3JlIFhEUCBy
dW5zLiAgVGhlbiBYRFAgcnVucyB1bmF3YXJlIG9mIHRoZSBwcmVwZW5kIGNvbnRlbnRzLiAgClRo
YXQncyB0aGUgY3VycmVudCBzaXR1YXRpb24uCgpYRFBfUEFDS0VUX0hFQURST09NIGlzIGJlZm9y
ZSB0aGUgZW50aXJlIGZyYW1lLiAgTGlrZSB0aGlzOgoKICAgIGJ1ZmZlciBzdGFydAogIC8gICAg
ICAgICAgICAgICBETUEgYWRkciBnaXZlbiB0byB0aGUgZGV2aWNlCiAvICAgICAgICAgICAgICAv
CnYgICAgICAgICAgICAgIHYKfCBYRFBfSEVBRFJPT00gfCBtZXRhIGRhdGEgfCBwYWNrZXQgZGF0
YSB8CgpMZW5ndGggb2YgbWV0YSBkYXRhIGNvbWVzIGluIHRoZSBzdGFuZGFyZCBmaXhlZCBzaXpl
IGRlc2NyaXB0b3IuCgpUaGUgbWV0YWRhdGEgcHJlcGVuZCBpcyBpbiBUViBmb3JtICgiVExWIHdp
dGggbm8gbGVuZ3RoIGZpZWxkIiwgbGVuZ3RoJ3MKaW1wbGllZCBieSB0eXBlKS4KCj4gVGhlcmUg
d2VyZSBzb21lIGRpc2N1c3Npb24gb24gaGF2aW5nIG1ldGEgZGF0YSBsZW5ndGggaW4gdGhlIHN0
cnVjdAo+IHhkcF9kZXNjLCBiZWZvcmUgQUZfWERQIHdhcyBtZXJnZWQsIGJ1dCB0aGUgY29uY2x1
c2lvbiB3YXMgdGhhdCB0aGlzIHdhcwo+ICpub3QqIG5lZWRlZCwgYmVjYXVzZSBBRl9YRFAgYW5k
IHRoZSBYRFAgcHJvZ3JhbSBoYWQgYW4gaW1wbGljaXQKPiBjb250cmFjdC4gSWYgeW91J3JlIHJ1
bm5pbmcgQUZfWERQLCB5b3UgYWxzbyBoYXZlIGFuIFhEUCBwcm9ncmFtIHJ1bm5pbmcKPiBhbmQg
eW91IGNhbiBkZXRlcm1pbmUgdGhlIG1ldGEgZGF0YSBsZW5ndGggKGFuZCBhbHNvIGdldHRpbmcg
YmFjayB0aGUKPiBvcmlnaW5hbCBidWZmZXIpLgo+IAo+IFNvLCB0b2RheSBpbiBBRl9YRFAgaWYg
WERQIG1ldGFkYXRhIGlzIGFkZGVkLCB0aGUgdXNlcmxhbmQgYXBwbGljYXRpb24KPiBjYW4gbG9v
ayBpdCB1cCBiZWZvcmUgdGhlIHhkcF9kZXNjLmFkZHIgKGp1c3QgbGlrZSByZWd1bGFyIFhEUCks
IGFuZCBob3cKPiB0aGUgWERQL0FGX1hEUCBhcHBsaWNhdGlvbiBkZXRlcm1pbmVzIGxlbmd0aC9s
YXlvdXQgb2YgdGhlIG1ldGFkYXRhIGkKPiBvdXQtb2YtYmFuZC9ub3Qgc3BlY2lmaWVkLgo+IAo+
IFRoaXMgaXMgYSBiaXQgbWVzc3kvaGFuZHdhdnkgVEJILCBzbyBtYXliZSBhZGRpbmcgdGhlIGxl
bmd0aCB0byB0aGUKPiBkZXNjcmlwdG9yICppcyogYSBnb29kIGlkZWEgKGV4dGVuZGluZyB0aGUg
b3B0aW9ucyBwYXJ0IG9mIHRoZQo+IHhkcF9kZXNjKT8gTGVzcyBjbGVhbiB0aG91Z2guIE9UT0gg
dGhlIGxheW91dCBvZiB0aGUgbWV0YSBkYXRhIHN0aWxsCj4gbmVlZCB0byBiZSBkZXRlcm1pbmVk
LgoKUmlnaHQsIHRoZSBkZXZpY2UgcHJlcGVuZCBpcyBub3QgZXhwb3NlZCBhcyBtZXRhZGF0YSB0
byBYRFAuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
