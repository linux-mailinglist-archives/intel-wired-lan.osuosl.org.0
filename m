Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D737D6A9CF7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Mar 2023 18:15:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A7A6415D6;
	Fri,  3 Mar 2023 17:15:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A7A6415D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677863739;
	bh=HCaYgaAMkLr/G8dwjRZuSn5Cn7O9/VVKJQQelpq55nk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m34U6As4H+3qQ4AdGlu1mwBpDUnCic4dC4QyK8kQ+xKBYqrRCIEMvgciXQH32DbW7
	 efMwj/plTxLck8xhWC0eGBff6LPKLyIzJqhVbcU2H+cbHReS4GYHpbWyUbxXEtt1L1
	 wkyDDmY0aZtO5Tdf2wQiKT57XmMiZ4XtbMc/77zXgCRpoCeMd0SJKYeYw4VWkKrtTo
	 jGOe9Tgf4kjyr6aB590CSmwgRltIeI87kqmf3gZQpMyl+19e31hlJiwlgXbydgPubI
	 IzP3im7tJ4gghdiO3Z+yfNd8F33o2pbCtSMkbDuceieD6uyEo64O4EV/PZyNVztO4S
	 /KrhzV5uiDrsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MphPPQNWqpk4; Fri,  3 Mar 2023 17:15:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7857E415C4;
	Fri,  3 Mar 2023 17:15:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7857E415C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D9171BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 17:15:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E44B441D10
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 17:15:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E44B441D10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VigZwVjIfZHe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 17:15:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDE1A41CED
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CDE1A41CED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 17:15:30 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id s11so13042531edy.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Mar 2023 09:15:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1677863728;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Dejo+taKqFXKEPsJAmGlrOgHL3TO5mxqXJfByirse6o=;
 b=0iBa6FQTx9C82BoniMjkh/mqIGOYwt9oy4pcuOPsrTyUv/dV1X/ZsplRfLhDRTT+0g
 mcZpWVoAikml1AXxAhg6q/jD1ARQTQkueXTH0G41TpvX3ODpzKBxy3dmcgzqYPpaKBV+
 q0YqJfgYa+sp1WLqGqCrKZzsTdRHTjrp1++CscT31LZFDa0lNnW06xPXOWZ71HzlvPjZ
 O+PQXiu4psTdYSQtBvyQG+3nzuGKWg+kuyKLkQ5tNASIgzKmyh0RNo8LhwrhpIgA29Zf
 BQeZwZ+YCgAjdD8GsxDbL2ynIKKEnA7Qjryjut9E+tyInn5X5Df+8ccaF79Tc9V5kAVu
 BAxw==
X-Gm-Message-State: AO0yUKXl2PQsEbrHg6nVsCkXJ7bu3eCp3EpLnDb8VRhnHAf5LbEoPYRU
 6VgteBwgjxkQzLDxDPtjVArWSW/PIEQGY+T9gCbcxQ==
X-Google-Smtp-Source: AK7set/hmgRXTOpo7OPs/H7MZeVxo6VIWKZyiD7LjkYAdcFDf5sPb8Dqwo2obcmIvsLph+B7cFUpHg==
X-Received: by 2002:a17:906:af18:b0:8aa:c155:9233 with SMTP id
 lx24-20020a170906af1800b008aac1559233mr2554678ejb.26.1677863728489; 
 Fri, 03 Mar 2023 09:15:28 -0800 (PST)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com.
 [209.85.208.42]) by smtp.gmail.com with ESMTPSA id
 gq15-20020a170906e24f00b008b17b123a47sm1128979ejb.208.2023.03.03.09.15.27
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Mar 2023 09:15:27 -0800 (PST)
Received: by mail-ed1-f42.google.com with SMTP id g3so13195321eda.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Mar 2023 09:15:27 -0800 (PST)
X-Received: by 2002:a50:8750:0:b0:4c2:ed2:1196 with SMTP id
 16-20020a508750000000b004c20ed21196mr1507287edv.5.1677863727416; Fri, 03 Mar
 2023 09:15:27 -0800 (PST)
MIME-Version: 1.0
References: <20230303150818.132386-1-vincenzopalazzodev@gmail.com>
In-Reply-To: <20230303150818.132386-1-vincenzopalazzodev@gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 3 Mar 2023 09:15:10 -0800
X-Gmail-Original-Message-ID: <CAHk-=wiS+QhwBa6iZcTtiK-zSCR0BhyC8u7x41g=X2=K==2sHg@mail.gmail.com>
Message-ID: <CAHk-=wiS+QhwBa6iZcTtiK-zSCR0BhyC8u7x41g=X2=K==2sHg@mail.gmail.com>
To: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1677863728;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Dejo+taKqFXKEPsJAmGlrOgHL3TO5mxqXJfByirse6o=;
 b=KRvqO6Lh/gDFsuJcFUdeZSciPr/ij4riozGWTQ64nV1uut/eUd+jcrasdB2/rKvZ5R
 3/e/JWbJWNYq8Ffh5RfSmlTCVrYNmFmCvPYsr4HQWifCpIM/dOlDjYMtqwaxcclkfJTm
 IARTe4wV8jqo0KaWjGNL682ywgADFPaRHIbBk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=linux-foundation.org
 header.i=@linux-foundation.org header.a=rsa-sha256 header.s=google
 header.b=KRvqO6Lh
Subject: Re: [Intel-wired-lan] [PATCH v1] netdevice: use ifmap isteand of
 plain fields
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBNYXIgMywgMjAyMyBhdCA3OjA54oCvQU0gVmluY2Vuem8gUGFsYXp6bwo8dmluY2Vu
em9wYWxhenpvZGV2QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBQLlM6IEknbSBnaXZpbmcgY3JlZGl0
IHRvIHRoZSBhdXRob3Igb2YgdGhlIEZJWE1FIGNvbW1pdC4KClRoYXQgaXNuJ3QgYWN0dWFsbHkg
bWUuCgpZZXMsICdnaXQgYmxhbWUnIGNsYWltcyBpdCdzIG1lLCBidXQgdGhhdCdzIGp1c3QgYmVj
YXVzZSB0aGUgY29tbWVudApnb2VzIGJhY2sgdG8gdGhlIG9yaWdpbmFsIGdpdCBpbXBvcnQuCgpJ
biBmYWN0LCBpdCBnb2VzIGJhY2sgZXZlbiB0byBiZWZvcmUgdGhlIEJpdEtlZXBlciBkYXlzLCBz
byBpdCBnb2VzCmJhY2sgdG8gc29tZSB0aW1lIGJlZm9yZSAyMDAyLiBJdCBtaWdodCBiZSBkaXNj
b3ZlcmFibGUgdGhyb3VnaCBzb21lCm9sZCBuZXR3b3JraW5nIGNvZGUgQ1ZTIHRyZWUgb3IgdHJh
d2xpbmcgb2xkIG5ld3Nncm91cHMgZm9yIHRoZQpvcmlnaW5hbCBwYXRjaCBiZWZvcmUgMjAwMiBv
ciBzb21ldGhpbmcgbGlrZSB0aGF0LCBidXQgdGhhdCdzIG1vcmUKYXJjaGFlb2xvZ3kgdGhhbiBJ
J20gd2lsbGluZyB0byBkby4KCiAgICAgICAgICAgICAgIExpbnVzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
