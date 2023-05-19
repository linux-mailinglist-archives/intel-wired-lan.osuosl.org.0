Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD5B70A381
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 May 2023 01:52:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4551612FB;
	Fri, 19 May 2023 23:52:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4551612FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684540331;
	bh=LcWvkZEs7v549MufvhakWLSdjdf3pXz/JisHM6xAkiw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IKc7j8H+JSa4rcAOgV3NZGxKo9DsAO6EzPHiiS49Li5JtMjjhxLei2Xe/EhdheYQQ
	 Edden4q7ycKYo83LTLyxGTdtq7+WRw5V4eKWfq6S6AAceFgz5fhLvpqPJlum5opJvQ
	 JQudWGfnK+M6BoE3TbSucXG8LrKJcG53a4fh9T+qELe4xN+h35aa3tKPu1PXGdBqKL
	 qLbdHcWLCDonbR6yyBVVGS8N/PRGRnHsZ0Rh4p+sh7Ro6oC9vlOwbXmZQPFxTQlPj3
	 VMjLRxTn79bYyTnxsi0n7khhVOS1MvSFYIb3zqy50LrNcviTzDJ5c2jcG3X4RUUsr/
	 FkE1aA/dHGLZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UnWvuh-BzFWx; Fri, 19 May 2023 23:52:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0A20612EB;
	Fri, 19 May 2023 23:52:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0A20612EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1992F1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 18:43:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2AF4408A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 18:43:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2AF4408A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H7W2L_h5Pyab for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 18:43:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8825F405A1
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8825F405A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 18:43:30 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-3f4234f67feso8855e9.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 11:43:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684521808; x=1687113808;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=F7ADbMEeGTow7uzHXVJ7EWjekmJRyxwC2hamfTPH2cU=;
 b=lZSlV+aMBqQA9GJgwGhfrd1KtAg4vo9Rjtzj3a8KCLFY9x2xsH0Li180kiMqhKfYEh
 4A9AcBBNTGd59+xfsyt8QLLWD2jdxJCnO8Kle5POA3PR6Ayt2hOW3+HWeAPSg40ziEfl
 GtIW4ORasfw1S46WnGyds9Iyd9DSL2hdkGs+no5bDGRFc+YTpyBTSavsTjqO7cstUxOE
 0FGTWtFZWSm0eG7XtpUrrFcqrU9RbE801jIuOcgNmgvknd5YGyAFYmAS33bBe8TC6brP
 Myf5I737GrJVRWvh6WmD6FJh5VYtmcx4jqP3+418TA6JpeOyaAKuHbCQdulHSvR1i6SL
 Acgw==
X-Gm-Message-State: AC+VfDzx1k7c2UGeBPQGjKygsAw+OFPkNvEKPvyz/ePDYMpZv6awvQ1p
 4KBe3cA2yZ67oTmgbh6aPApW99DOt4SiYMHyqR3igg==
X-Google-Smtp-Source: ACHHUZ7QKdbpc8HDR/3l7hVDAg0UkTZvkwOPqjBlJ16OdxFgA56o4t1zmyGchaccBrevpKy+XCKwv04xozOwhLg798c=
X-Received: by 2002:a05:600c:6029:b0:3f1:6fe9:4a95 with SMTP id
 az41-20020a05600c602900b003f16fe94a95mr225881wmb.4.1684521808389; Fri, 19 May
 2023 11:43:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230508194326.482-1-emil.s.tantilov@intel.com>
 <20230512023234-mutt-send-email-mst@kernel.org>
 <6a900cd7-470a-3611-c88a-9f901c56c97f@intel.com>
 <20230518130452-mutt-send-email-mst@kernel.org>
 <dba3d773-0834-10fe-01a1-511b4dd263e5@intel.com>
 <20230519013710-mutt-send-email-mst@kernel.org>
 <bb44cf67-3b8c-7cc2-b48e-438cc9af5fdb@intel.com>
 <52826c35-eba1-40fb-bfa9-23a87400bfa4@lunn.ch>
In-Reply-To: <52826c35-eba1-40fb-bfa9-23a87400bfa4@lunn.ch>
From: Willem de Bruijn <willemb@google.com>
Date: Fri, 19 May 2023 14:42:50 -0400
Message-ID: <CA+FuTSfJuVGgU6ce_SSErXUYc584OEgwk=PQS7beu2Tj5Wnu-w@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailman-Approved-At: Fri, 19 May 2023 23:51:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1684521808; x=1687113808;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=F7ADbMEeGTow7uzHXVJ7EWjekmJRyxwC2hamfTPH2cU=;
 b=oYh3TklvbclGO8uY7mRfMrlutFD8Zv4Tr94rAoxiRfulYxTEkpTncCbtsHewRrSv8f
 CMJGjBOFq7LMaPYEGDi4yml/WMODr9buPtIzonh4sOVcV6O1fVhwB7ByjF2jbk/dLJKl
 Bs9vF5aZmg7qvXp2yWYq3rv3LV1r5aL0hfM9+kydBDluQc9slO18PtCGnLcdXNOK5Vkt
 92xA/ST/4lI+YEQVcDFEy6RJ2RKWV3SeZpqENqXi5hV7UahFrLx2n8EIrCbLekKYVlZH
 m+uFf24vy/5TFu6XObP+bV1ppxoULUtVcA32obkezug6vm5qcfcTUUBfdP/9S5EvZj6p
 hhew==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=oYh3Tklv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 00/15] Introduce Intel
 IDPF driver
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
Cc: "Orr, Michael" <michael.orr@intel.com>, pabeni@redhat.com, leon@kernel.org,
 "Michael S. Tsirkin" <mst@redhat.com>, simon.horman@corigine.com,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, decot@google.com, davem@davemloft.net,
 shannon.nelson@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBNYXkgMTksIDIwMjMgYXQgMjoyMuKAr1BNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4gd3JvdGU6Cj4KPiA+ICtjb25maWcgSURQRgo+ID4gKyAgICAgdHJpc3RhdGUgIkludGVs
KFIpIEluZnJhc3RydWN0dXJlIERhdGEgUGF0aCBGdW5jdGlvbiBTdXBwb3J0Igo+ID4gKyAgICAg
ZGVwZW5kcyBvbiBQQ0lfTVNJCj4gPiArICAgICBzZWxlY3QgRElNTElCCj4gPiArICAgICBoZWxw
Cj4gPiArICAgICAgIFRoaXMgZHJpdmVyIHN1cHBvcnRzIEludGVsKFIpIEluZnJhc3RydWN0dXJl
IFByb2Nlc3NpbmcgVW5pdCAoSVBVKQo+ID4gKyAgICAgICBkZXZpY2VzLgo+ID4KPiA+IEl0IGNh
biBiZSB1cGRhdGVkIHdpdGggSW50ZWwgcmVmZXJlbmNlcyByZW1vdmVkIHdoZW4gdGhlIHNwZWMg
YmVjb21lcwo+ID4gc3RhbmRhcmQgYW5kIG1lZXRzIHRoZSBjb21tdW5pdHkgcmVxdWlyZW1lbnRz
Lgo+Cj4gSXMgSVBVIEludGVscyBuYW1lIGZvciB0aGUgaGFyZHdhcmUgd2hpY2ggaW1wbGVtZW50
cyBEUEY/IEkgYXNzdW1lCj4gd2hlbiAnSW50ZWwnIGlzIGRyb3BwZWQsIElQVSB3b3VsZCBhbHNv
IGJlIGRyb3BwZWQ/IFdoaWNoIGxlYXZlcyB0aGUKPiBoZWxwIGVtcHR5Lgo+Cj4gQW5kIGkgYXNz
dW1lIHdoZW4gaXQgaXMgbm8gbG9uZ2VyIHRpZWQgdG8gSW50ZWwsIHRoZSBLY29uZmlnIGVudHJ5
Cj4gd2lsbCBtb3ZlIHNvbWV3aGVyZSBlbHNlLCBiZWNhdXNlIGF0IHRoZSBtb21lbnQsIGl0IGFw
cGVhcnMgdG8gYXBwZWFyCj4gdW5kZXIgSW50ZWwsIHdoZW4gaXQgcHJvYmFibHkgc2hvdWxkIGJl
IGF0IGEgaGlnaGVyIGxldmVsLCBtYXliZQo+ICdOZXR3b3JrIGRldmljZSBzdXBwb3J0Jz8gQW5k
IHdpbGwgdGhlIGNvZGUgbWF5YmUgbW92ZSB0byBuZXQvaWRwZj8KClRoaXMgaGFzIGNvbWUgdXAg
YmVmb3JlLgoKIkRyaXZlcnMgYXJlIG9yZ2FuaXplZCBieSB0aGUgdmVuZG9yIGZvciBiZXR0ZXIg
b3Igd29yc2UuIFdlIGhhdmUgYQpudW1iZXIgb2YgZHJpdmVycyB1bmRlciB0aGUgIndyb25nIGRp
cmVjdGx5IiBhbHJlYWR5LiBDb21wYW5pZXMgbWVyZ2UgLwpidXkgZWFjaCBvdGhlcnMgcHJvZHVj
dCBsaW5lcywgdGhlcmUncyBhbHNvIHNvbWUgY29uZnVzaW9uIGFib3V0IGNvbW1vbgpJUCBkcml2
ZXJzLiBJdCdzIGFsbCBmaW5lLCB3aGF0ZXZlci4iCgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bmV0ZGV2LzIwMjMwNDE0MTUyNzQ0LjRmZDIxOWY5QGtlcm5lbC5vcmcvCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
