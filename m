Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2574CF547
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 10:48:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7A0886AFE;
	Tue,  8 Oct 2019 08:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VaqgXHclFQIb; Tue,  8 Oct 2019 08:48:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0215C87609;
	Tue,  8 Oct 2019 08:48:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 196731BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:48:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1597386055
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:48:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FRXg74gUY_Ir for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 08:48:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 80F0986054
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:48:24 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id u40so23994770qth.11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Oct 2019 01:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MY4d1ba2zC1BN01TeBYHV60s3GX0/irz8Swh1uPMXP8=;
 b=aCJ8pSVtQ/U1L8wcP9oHKAbjxpiP8iI8fn1kXix2WytIIRPrEu8v53j3T9naHLdP8Q
 kHKOMWUJGa+RljS2uB2PX1v4+gvcaE+bNHLCuFC/f+5SxGEj0S8ktoF6ACGn2Ord30f7
 SlgrsuV6p3oZZvJIIbTbURYoVVPKBc+tMa/co/759O+nGWw801HwHT4kvpzwzpuWeuyF
 vebalQ9HJDcKqOakm3esCTS/0aLlP5/6oKC7rFZsvQLOzD//PLdnOcEdENI3JylArZ4p
 /oWAl8eIMdQ7ccLtkBe369YFHwWLVSZNZXc484m+ftNDYRsKxQJ/oFvFcxmQcmm/+nZD
 xMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MY4d1ba2zC1BN01TeBYHV60s3GX0/irz8Swh1uPMXP8=;
 b=AWcoiRydBO8vBV0V3F2+knT5rrbLVHMVmyVJxp92jDuOUGJKdUQPFQsUX7WD4jxo6r
 GDHTKHG7U7pVeQykvZrKSMRE9YoOgnbbhDpp0jDLLy/+zM7egU5UjA4g7ZEXFx79Swi9
 JbTkmdj9XI9wiZdfvO8u/nMfv+YMef98xiEdjncQyYFhlIvqlvgfpv9AJya/+xU6SiN8
 D2XBpwmJDCS2qig3T4aBHJPGd5yXuOlDXcEKUSgvv8m1JD6mayor9uU1x0EQJK7zdRi6
 oQlqSjuEeRjFb1Knnr0hcGQ9cDaP5sNxstlldsZ4S5AxeqE4weHSU65Yn/u0T+1SLY7k
 /0Sg==
X-Gm-Message-State: APjAAAUNhO956QUZDK7glI22qeDQHqfA6T3T/izu8QGuGKVyYDYgNmvJ
 NKFZiURW1UcyzaR8wISaNtvj5lgV8SP+8yAJjT8=
X-Google-Smtp-Source: APXvYqyOh6QlIbokS5MEgFiaev+14npMRHwMv+J5TDQiMb2e7DxPxPjQ2ryPNAmkHP6KwX7zfLRFdCSSy6mqY23kmx0=
X-Received: by 2002:ac8:3f96:: with SMTP id d22mr35343389qtk.36.1570524503583; 
 Tue, 08 Oct 2019 01:48:23 -0700 (PDT)
MIME-Version: 1.0
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
 <875zkzn2pj.fsf@toke.dk>
 <CAJ+HfNhcvRP34L3px6ipAsCiZdvLXG02brecwB=T-sXMaT5yRw@mail.gmail.com>
In-Reply-To: <CAJ+HfNhcvRP34L3px6ipAsCiZdvLXG02brecwB=T-sXMaT5yRw@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 8 Oct 2019 10:48:12 +0200
Message-ID: <CAJ+HfNgEC=3MOe4YK_NNzRu6g_srKjWOCaCt09cU51avhWJKMg@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/4] xsk: allow AF_XDP
 sockets to receive packets directly from a queue
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
Cc: maciej.fijalkowski@intel.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, tom.herbert@intel.com,
 Netdev <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCA4IE9jdCAyMDE5IGF0IDEwOjQ3LCBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBn
bWFpbC5jb20+IHdyb3RlOgo+ClsuLi5dCj4KPiBUaGUgZGVwZW5kZW50LXJlYWQtYmFycmllciBp
biBSRUFEX09OQ0U/IEFub3RoZXIgYnJhbmNoIC0tIGxlYXZlIHRoYXQKPiB0byB0aGUgYnJhbmNo
LXByZWRpY3RvciBhbHJlYWR5ISA7LSkgTm8sIHlvdSdyZSByaWdodCwgcGVyZm9ybWFuY2UKPiBp
bXBhY3QgaGVyZSBpcyBpbnRlcmVzdGluZy4gSSBndWVzcyB0aGUgc2FtZSBzdGF0aWNfYnJhbmNo
IGNvdWxkIGJlCj4gdXNlZCBoZXJlIGFzIHdlbGwuLi4KPgoKLi4uYW5kIEkgdGhpbmsgdGhlIFJF
QURfT05DRSBjYW4gYmUgb21pdHRlZC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
