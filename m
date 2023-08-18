Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A736780AC5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 13:10:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C34383C15;
	Fri, 18 Aug 2023 11:10:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C34383C15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692357027;
	bh=j7JcLucJZTWgCfMjEH3YxGCmg/2fgAR4igj8FfQdWhw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5dkX+VgJg29KU+gFA0N8XPz9e+sDCQMFs+4xhMDbHtY0wCQWLq5I3E7V2Y8BbL1Ag
	 B9PY/BszF0+w1TUPvLz1rhWzm5xMbyIrnaIBYnixTZDBHhH5CQec89Ii6NT2rWrAXd
	 aSxJ9ryGHDKRqSqvSZgItIPK6FSxqtlNooMH9+vwDQal/NgD5u9znbsM4UeYdMKEVA
	 bi2Hh2h/pshx8ii+Gh8FTJ6PTxaGS+ViF0NPR+tZHJxvS6YK9YLXCMCzGOCpQR4cxm
	 gLRBamEBfFO2HMwfQr9TB5yWuYOJV80JPu5HMvQqb/oO0tQOqTyhzt+UkNmOx+uuNw
	 C38v6eFRQ4xww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ltAv6_nXjzif; Fri, 18 Aug 2023 11:10:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79E6B83C0A;
	Fri, 18 Aug 2023 11:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79E6B83C0A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 221F71BF36E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 11:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E76BA83BFB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 11:10:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E76BA83BFB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c12BroEro0pu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 11:10:20 +0000 (UTC)
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E84D83BF7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 11:10:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E84D83BF7
Received: by mail-yb1-xb29.google.com with SMTP id
 3f1490d57ef6-ccc462deca6so802417276.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 04:10:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692357019; x=1692961819;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Aqcz6+CxleF/o9TEc80m8NBOqId1CND3CqvR2adeCrk=;
 b=LKAP3+2fV6d5gGBx2aF9OIADdDfFvS8rmKfmScz/K64e1I3m7k5ezIEQ0OIY+tv2n0
 YMpZUBTClowIn3GpL/Ejy5+NjoM3DAZM4bHNXJDIfgCGM16Bt/qnFvGADo6i9WShJu59
 rphbax3FHo2hEmKkgLgJKMo9gC+0BAM20Dnclr04AavZUJzXZE35NgYaIVZwNt/h1pGi
 +aHgqCkzl1DFmnILFOpqU4KpDxnBgj3aaz687BBgIx68V5VPHfExs+nyZOhHPqnTXTSd
 onLBXksM8jTQCJbAE4sdAQPpJ3RFcPa26tQ+gxcwwx+EJMP6LdzshsyI3T/j6jeeg1UX
 JV/Q==
X-Gm-Message-State: AOJu0Yxj8wpT6B5zo499lQGuIUdftGd6SO1UIwDJYZg5hF3HM55I3kZ/
 4wVTFWwUkcJyOfLr7C2Bj9q+/2hMdxhShASX2iY=
X-Google-Smtp-Source: AGHT+IFa1lCmf93SIjjWLr4QMBNGshpVNdTOoZk81LOSK8FUfuY3igGAEIXdQX2Sl0YLblLw5xm4pbRe4oUujk7VXSY=
X-Received: by 2002:a05:6902:1890:b0:d4b:6a0:fe2b with SMTP id
 cj16-20020a056902189000b00d4b06a0fe2bmr3171716ybb.36.1692357019061; Fri, 18
 Aug 2023 04:10:19 -0700 (PDT)
MIME-Version: 1.0
References: <20230816140623.452869-2-przemyslaw.kitszel@intel.com>
 <202308170000.YqabIR9D-lkp@intel.com>
 <cfc29063-9e20-5101-d70b-62b5423d2d10@intel.com>
In-Reply-To: <cfc29063-9e20-5101-d70b-62b5423d2d10@intel.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 18 Aug 2023 13:10:07 +0200
Message-ID: <CANiq72m9ZEVkP76FMFOnPYkA8ih4Mq72HtW9AbrJ-JPy9ku3jw@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel test robot <lkp@intel.com>, 
 Yujie Liu <yujie.liu@intel.com>, Philip Li <philip.li@intel.com>, 
 Greg KH <gregkh@linuxfoundation.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692357019; x=1692961819;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Aqcz6+CxleF/o9TEc80m8NBOqId1CND3CqvR2adeCrk=;
 b=bcWLE7GmjLzg5FLTfyj2gS7rzmn6BlMZrKEV189s13CdDRHbeZpltWXq5ZwCq3KoJ4
 RN7Pz6FU5DPcoVurTiZE2ceRXHBZDeMCJBIkH2Snn60xXuYcGTT9H0ud3edgD2HlSeVK
 t269fS0uUu876g7EqY6jOlIv/kuCJecN5bEuRcW4fWAU5OX4TBDeIw67ci9Q2lQbEzWe
 mKeBIk2SSJgrjaLKA0z1GtngW11H6hE064EshncH5hpjTRmlkO2WMe4DDZeBPffFm2ut
 eOjuwYS/8ZsDoG/otYo2huB/FEuTl3Tsyvd7IjstBHwa9DxiVB8ZqeTmCbqQOED6L1LV
 T2Bg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=bcWLE7Gm
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/7] overflow: add
 DEFINE_FLEX() for on-stack allocs
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
Cc: Kees Cook <keescook@chromium.org>, rust-for-linux@vger.kernel.org,
 netdev@vger.kernel.org, llvm@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBBdWcgMTgsIDIwMjMgYXQgMTI6MzjigK9QTSBQcnplbWVrIEtpdHN6ZWwKPHByemVt
eXNsYXcua2l0c3plbEBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gUnVzdCBmb2xrcywgY291bGQgeW91
IHBsZWFzZSB0ZWxsIG1lIGlmIHRoaXMgaXMgc29tZXRoaW5nIEkgc2hvdWxkIGZpeCwKPiBvciBJ
IGp1c3QgdW5jb3ZlcmVkIHNvbWUgZXhpc3RpbmcgYnVnIGluICJ1bnN0YWJsZSIgdGhpbmc/Cj4K
PiBQZXJoYXBzIGl0IGlzIHdvcnRoIHRvIG1lbnRpb24sIGRpZmYgb2YgdjMgdnMgdjIgaXM6Cj4g
bW92ZSBkdW1teSBpbXBsZW1lbnRhdGlvbiBvZiBfX2hhc19idWlsdGluKCkgbWFjcm8gdG8gdGhl
IHRvcCBvZgo+IGNvbXBpbGVyX3R5cGVzLmgsIGp1c3QgYmVmb3JlIGAjaWZuZGVmIEFTU0VNQkxZ
YAoKTm90aGluZyB5b3UgbmVlZCB0byB3b3JyeSBhYm91dCwgaXQgaXMgYW4gaXNzdWUgd2l0aCBv
bGQgYGJpbmRnZW5gIGFuZApMTFZNID49IDE2LCBmaXhlZCBpbiBjb21taXQgMDhhYjc4NjU1NmZm
ICgicnVzdDogYmluZGdlbjogdXBncmFkZSB0bwowLjY1LjEiKSB3aGljaCBpcyBpbiBgcnVzdC1u
ZXh0YCBhdCB0aGUgbW9tZW50LiBTb3JyeSBhYm91dCB0aGF0LCBhbmQKdGhhbmtzIGZvciBwaW5n
aW5nIHVzIQoKTEtQIC8gWXVqaWUgLyBQaGlsaXA6IHNpbmNlIHdlIGdvdCBhIGZldyByZXBvcnRz
IG9uIHRoaXMsIHdvdWxkIGl0IGJlCnBvc3NpYmxlIHRvIGF2b2lkIExMVk0gPj0gMTYgZm9yIFJ1
c3QtZW5hYmxlZCBidWlsZHMgZm9yIGFueSBicmFuY2gKdGhhdCBkb2VzIG5vdCBpbmNsdWRlIHRo
ZSBuZXcgYGJpbmRnZW5gIG9yIGF0IGxlYXN0IDA4YWI3ODY1NTZmZj8gT3IsCmlmIEdyZWcgaXMg
T0sgd2l0aCB0aGF0LCBJIGd1ZXNzIHdlIGNvdWxkIGFsc28gYmFja3BvcnQgdGhlIHVwZ3JhZGUs
CmJ1dCBwZXJoYXBzIGl0IGlzIGEgYml0IHRvbyBtdWNoIGZvciBzdGFibGU/CgpDaGVlcnMsCk1p
Z3VlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
