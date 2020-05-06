Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8EC1C71C4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 May 2020 15:30:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A1D4D81C62;
	Wed,  6 May 2020 13:30:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7PSQuSaBMezX; Wed,  6 May 2020 13:30:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5001F88699;
	Wed,  6 May 2020 13:30:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39EF51BF866
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2020 13:30:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3332A8781C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2020 13:30:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ibH-7WFxj43 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2020 13:30:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 71242877FC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2020 13:30:43 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id g12so2670195wmh.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 May 2020 06:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=eGbUjj7xmat9PL/sritRCTmmW9E9RIeK79ieEsmnZCI=;
 b=STM5prq/OE+8ZUKHrIsM9sesQYmLIGNTPj1JfFK61PMGuVPdUWfra/c9bi6le29iuM
 JOB/MyT41rkLlbqdwIpVygWXO96EQLjxj4d3klow6pbRofQA35fZLpG/6CusaNIFcVeM
 jS4Ql9XHwqNtK79Yz/AoGgsMfxTr8i76xArnZnl/JUcCer/RLw/SceoAksVrBV5Hc3rs
 o4JdjP5tXZuKrO2/gZK7IOHEhmkcg8Vw4DXlJGbQQ7Cbd/gd+/S++oUeaAl66z0roGlx
 dB5ddmZaArKoZDRicN75bw4Jaou8rwEVMyWSUhPrwOuh59cvXZMY0u8ECL4I4MMRLX3t
 cKWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=eGbUjj7xmat9PL/sritRCTmmW9E9RIeK79ieEsmnZCI=;
 b=n1/hnb9JgP4xGcbAhbxi+8hjAYINumUJnKpHnFk8lTgSFYPWB0f0TKbGXVgSUCnHmJ
 6+a45ghDoNqCRhz/ozNcUCZUAeEI8BbACjEBExgfqHuQ8zTlPrBFKLBSEWc8s7BnTdHX
 tYs+2OA4M1+PnGWMbJsZLtgOY5ohnpub6i10/te38mCoQUqCpNRe/uGrnm9RxgoS3Kbj
 h2w+O4a0xzFlIo6rvna74vhejQaGA+lRkwMWvUubLh0XYE0SDjpsPmwB8bVoiy8+3ruQ
 C1ejJp1Aj3ej8Cyz/XdbXnH0UBCRgQOcx6t2WpP6+a9t6dz3AuE98LoxtGFpYAwinrdV
 qVbA==
X-Gm-Message-State: AGi0PuZZE6c2u6cX3ZZpMPhxk0ito0a/nGn2nhpJbjpfI4O1zHbpMfX+
 6bLcn3tdA5RBKsVWeEn/oMIXDpVnPoQolZmNqME=
X-Google-Smtp-Source: APiQypLuDfpr8CwOXCCJ77RNUhxHobq5a8jqHn8B24TsZAN8tOrYz2VoWpz8bXEZyEVJxal5WaxxpCPcLJUfQ7igHTw=
X-Received: by 2002:a7b:c0d5:: with SMTP id s21mr4358223wmh.107.1588771841885; 
 Wed, 06 May 2020 06:30:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200506132746.526188-1-bjorn.topel@gmail.com>
 <20200506132746.526188-6-bjorn.topel@gmail.com>
In-Reply-To: <20200506132746.526188-6-bjorn.topel@gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Wed, 6 May 2020 15:30:30 +0200
Message-ID: <CAJ+HfNg4KkiqpG8Kgz9wuSSnZFpZaH_2F9HYLyXo4AGGe-PAGw@mail.gmail.com>
To: Maxim Mikityanskiy <maximmi@mellanox.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next pre-v1 MAXONLY 05/14] i40e:
 refactor rx_bi accesses
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCA2IE1heSAyMDIwIGF0IDE1OjI4LCBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50
ZWwuY29tPgo+Cj4gQXMgYSBmaXJzdCBzdGVwIHRvIG1pZ3JhdGUgaTQwZSB0byB0aGUgbmV3IE1F
TV9UWVBFX1hTS19CVUZGX1BPT0wKPiBBUElzLCBjb2RlIHRoYXQgYWNjZXNzZXMgdGhlIHJ4X2Jp
IChTVy9zaGFkb3cgcmluZykgaXMgcmVmYWN0b3JlZCB0bwo+IHVzZSBhbiBhY2Nlc3NvciBmdW5j
dGlvbi4KPgoKQW5kIGMqKnAuIFNvIG11Y2ggZm9yICJubyBDYyIuIFNvcnJ5IGZvciB0aGUgbm9p
c2UgaW50ZWwtd2lyZWQtbGFuLgoKCkJqw7ZybgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
