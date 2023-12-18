Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FC0817A9F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 20:09:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15B774191E;
	Mon, 18 Dec 2023 19:09:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15B774191E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702926544;
	bh=kQqlLSZVmlNVphOGkOTAA1IT9ThNBYRVFdJw7tw9tJg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=57Ft97/paEK6gogKqtnYSNfdQltWJHOHecbPYoh+Ni9q0nG4FaSyccb3CBtBqmpdI
	 naokywa8GpwXCuIn3hIr66q8j9gyOe58ERQ0d8tNr5IJjZlzNjMc9l+fLcnQi2Vc8D
	 7wqLgJVYBjYdo7SNpRlKVAOT6FWlC+Td9v2UQUrlude6PNbPnTD6mHgT++Z7r3LqsI
	 vZl+s9nhRgZ1wNGsMw2wx7rL1BZ/hL8Kia9v3fpyanF9z6VdLT9e6K4WlP8kaqM9gH
	 4Ko1ljOVYhYFkWhsDkqdE4syv7F73TFGZFIa/ow3NAYdQ3gs3U1UCcUgfWUiXgvA66
	 OfXc/PRxJwfAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 14kz-u-YNvzC; Mon, 18 Dec 2023 19:09:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD33F41925;
	Mon, 18 Dec 2023 19:09:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD33F41925
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D537A1BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 19:08:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ABFD360F28
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 19:08:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABFD360F28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mzRie5NaQr3j for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 19:08:55 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 437F860F21
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 19:08:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 437F860F21
Received: by mail-wm1-x332.google.com with SMTP id
 5b1f17b1804b1-40c580ba223so44987365e9.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 11:08:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702926533; x=1703531333;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/VjLnKurb94JOJEc5/JiQM+XH6LAGsKmWg8/mQBR2hU=;
 b=FrsaE2GlIf95t2tei8+KMt8w/cXlcOZmNBGqUe+8dzNLsCbQRmn4UHSuJNt0Bv/cc1
 fwTYN24Gl2aWCoF/6fJ4+5bynpZguHGN1EBDzli+RIAIKpKPcxGOitNUsyC0R70OWn09
 gHTlcOfzShGMpKSbPDzZnBOEOyU3+j6q/9iFKWifXKhh4cMpYTyZMS77cZ35rPqWW/dk
 scBZXKxGsA1MKeqAGhJ+UbOa006/ec9R35vOUjUQnkLcfJn4vEDQqiC1QqcuToPt8/oF
 Py6YU2L5yiq+8n57z/o+4EHz42Ib8DC8MdHwBtM4UTQ2msxPUAAUe07xPpMkXPxxXOBI
 URWQ==
X-Gm-Message-State: AOJu0Yx5mp2YPfpSt/mRFTLYEUriaW/8e92UsdV5IXFDWWINCLt+yatI
 BNhgIiQLmcaXZVHZJ8EBf+W21jN9+IxxeGPtCo2CdA==
X-Google-Smtp-Source: AGHT+IHaFdfIEpO3fZUTL4Wf2Y8HPXZH1xwNOjyaIvh0OcsgRhDmrYh6xFp6oxBL15Pvv/pP34wDIwpN82+DbGf4Bh0=
X-Received: by 2002:a5d:488b:0:b0:333:2fd2:5d2e with SMTP id
 g11-20020a5d488b000000b003332fd25d2emr8604653wrq.96.1702926533113; Mon, 18
 Dec 2023 11:08:53 -0800 (PST)
MIME-Version: 1.0
References: <20231217-i40e-comma-v1-1-85c075eff237@kernel.org>
 <CAKwvOd=ZKV6KsgX0UxBX4Y89YEgpry00jG6K6qSjodwY3DLAzA@mail.gmail.com>
 <20231218190055.GB2863043@dev-arch.thelio-3990X>
In-Reply-To: <20231218190055.GB2863043@dev-arch.thelio-3990X>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 18 Dec 2023 11:08:38 -0800
Message-ID: <CAKwvOd=LjM08FyiXu-Qn7JmtM0oBD7rf4qkr=oo3QKeP+njRUw@mail.gmail.com>
To: Nathan Chancellor <nathan@kernel.org>, Simon Horman <horms@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1702926533; x=1703531333; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/VjLnKurb94JOJEc5/JiQM+XH6LAGsKmWg8/mQBR2hU=;
 b=B0B0/EMvY8ZqoGgRmpUQNXqdSAMCYuuAgPvdcP9IjvIQ7jxCsJLL/xw6TDSb2p11kM
 WW49AR2PpXTrGcxPNLwt02i/+x8QBOdf/PsebvQASXBJJj+Elj2sTDYImxZkurtvH5dZ
 S98rDjMbfjX0uz5vPBppjZWwsilt9cTLxhnMxMoW6k9hFRT4dcflmKikNyAE84s3RQFM
 JRCERguOBFAAr1dPv2k2ZZpe4XjOCnz96ZrEadKE8poZqPM5jj3sx7FCevjjjV/TtYVA
 I9ggC2IHMPHcNBVP51eq0I5nAvCyzTFxz38720mn4WAuGjqf7LHngKodqjDUCi7UMBf+
 +nzw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=B0B0/EMv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Avoid unnecessary use
 of comma operator
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
Cc: intel-wired-lan@lists.osuosl.org, llvm@lists.linux.dev,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Bill Wendling <morbo@google.com>,
 Justin Stitt <justinstitt@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBEZWMgMTgsIDIwMjMgYXQgMTE6MDDigK9BTSBOYXRoYW4gQ2hhbmNlbGxvciA8bmF0
aGFuQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gTW9uLCBEZWMgMTgsIDIwMjMgYXQgMDg6MzI6
MjhBTSAtMDgwMCwgTmljayBEZXNhdWxuaWVycyB3cm90ZToKPiA+IChJcyAtV2NvbW1hIGVuYWJs
ZWQgYnkgLVdhbGw/KQo+Cj4gTm8gYW5kIGxhc3QgdGltZSB0aGF0IEkgbG9va2VkIGludG8gZW5h
YmxpbmcgaXQsIHRoZXJlIHdlcmUgYSBsb3Qgb2YKPiBpbnN0YW5jZXMgaW4gdGhlIGtlcm5lbDoK
Pgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnLzIwMjMwNjMwMTkyODI1LkdBMjc0NTU0OEBkZXYt
YXJjaC50aGVsaW8tMzk5MFgvCj4KPiBJdCBpcyBzdGlsbCBwcm9iYWJseSB3b3J0aCBwdXJzdWlu
ZyBhdCBzb21lIHBvaW50IGJ1dCB0aGF0IGlzIGEgbG90IG9mCj4gaW5zdGFuY2VzIHRvIGNsZWFu
IHVwIChhbG9uZyB3aXRoIHBvdGVudGlhbGx5IGhhdmluZyBhIGRlY2VudCBhbW91bnQgb2YKPiBw
dXNoYmFjayBkZXBlbmRpbmcgb24gdGhlIGNoYW5nZXMgbmVjZXNzYXJ5IHRvIGVsaW1pbmF0ZSBh
bGwgaW5zdGFuY2VzKS4KCkZpbGVkIHRoaXMgdG9kbzoKaHR0cHM6Ly9naXRodWIuY29tL0NsYW5n
QnVpbHRMaW51eC9saW51eC9pc3N1ZXMvMTk2OApJJ2QgYmUgaGFwcHkgaWYgU2ltb24ga2VlcHMg
cG9raW5nIGF0IGdldHRpbmcgdGhhdCB3YXJuaW5nIGVuYWJsZWQuCi0tIApUaGFua3MsCn5OaWNr
IERlc2F1bG5pZXJzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
