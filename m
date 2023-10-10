Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D372B7C765B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 661056133E;
	Thu, 12 Oct 2023 19:08:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 661056133E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137715;
	bh=Xawaw9Jq2DX/7bMEnE58Lkk9P4djufddP1yZAHrmmvA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GvmN3DJJ1D2wuYOYS1J/vapKh7JVm5bps7BB/8B8WrtvUnMV7OipaJnn8pA6rbd62
	 k4NQXa/ux1owSzX37Am61NPOGseizww3B+gwr9bSmAhF5Ec2m0dd0twEGxFSFxp7c+
	 n5fO3XXYvHBOZhCUC8OqGbu6jKvMPkvY+hqou15OEKuLfaeqInEnH2nNgrkkVxE8O0
	 qvXYbWUaZqcogILMH1I3CqApR1OkY9Bi5H9XY4aDBv+0qoIi2SIUlO/UvcEPa+xZZs
	 Nj5BOA5iw9NYK7mZcIv1kSjKzc/6oAY715BCBOxIbcJwMrQG3Ht1ko6ls2iZI5nftX
	 fs7OZ8jaHAJ/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2H_49OEOS2-s; Thu, 12 Oct 2023 19:08:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A0BD610C7;
	Thu, 12 Oct 2023 19:08:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A0BD610C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 07A411BF83C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 23:23:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D09C7415B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 23:22:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D09C7415B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uy4E3KheP2Uf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 23:22:58 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A68A040012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 23:22:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A68A040012
Received: by mail-ed1-x530.google.com with SMTP id
 4fb4d7f45d1cf-53db360294fso974271a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 16:22:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696980177; x=1697584977;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hPvi0L7FMz0a4O2DqWnfcamp8uZvbVMLd2V0ja/dStw=;
 b=iyBvwdY3bD8S2F98UyT0I+SlAhfEVtAOD49IvKuQzT/wijKL/FEjAObCUf9DebNDtX
 O+wJoHlG/qhCLp+r23RnD+0Ml23HEXbAYfkUxT1l3i/41jYketMQPkMABxI7jnJFV35C
 qLo1HKzXLrKf9uT+NLLnPWhNKkseAnEPbIxA2qNdu2ODVXuaE9QGs30uyWYGsTH/LHx1
 719L68dU7z50DzyBBmrpTtnj4a+xAr5pLSvL9iDDLoQ/3ABLHZqGhbu8+Hy29ntru0+i
 LQvI89cjWKieVCtJovs9oBMh4/SGQFrIfrvdPSYuPsYariAOflvHfjS/307yHEWuejMa
 5O8g==
X-Gm-Message-State: AOJu0Yws2RNPZH0d9nSCkOLBMysCyIc7vSLY0wmb7W6qLccaA753eUgl
 bUBwsYJzC8ue4a5pIh/uRNFXBgO+UGmC1UDoq5BZRg==
X-Google-Smtp-Source: AGHT+IEJChFsbAup1enHy98cd4OYKs1F1JHVG9lgsLEhDADJM6SkfGrgSjsiomi0yma0H29NDkjf/IVCDKiHB7N/gNw=
X-Received: by 2002:a05:6402:344a:b0:52e:3262:e6c9 with SMTP id
 l10-20020a056402344a00b0052e3262e6c9mr17278593edc.33.1696980176775; Tue, 10
 Oct 2023 16:22:56 -0700 (PDT)
MIME-Version: 1.0
References: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
 <d84f2d4d-40d7-af15-0049-f8e1efed1eba@intel.com>
In-Reply-To: <d84f2d4d-40d7-af15-0049-f8e1efed1eba@intel.com>
From: Justin Stitt <justinstitt@google.com>
Date: Tue, 10 Oct 2023 16:22:44 -0700
Message-ID: <CAFhGd8pR4EdjVzHLKwxtH=OHNO1rLsuWAs=ZHX7hWohhE8Kcjg@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696980177; x=1697584977; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hPvi0L7FMz0a4O2DqWnfcamp8uZvbVMLd2V0ja/dStw=;
 b=3K5YL6eZ/RN6PiZWCrEz0LVr130fd/B1cKCWm+L0oaMimlyTELpPqlIL6dFf91knm1
 2gJVi8EqfD4ydmd/Y0B9QudDvv7/KRwLIXO5Z9YPfJX20Gd0l/hKhruWOIsJSQTMkunp
 X1/TUKEhBYWsT0aFnQHbXm2Vn1o8n29UZ9P3D2B7BvSvlHUfS1AWS5+7tcooLLP/w25S
 JLQJtFhhQLtNWDlQvMgIOsfxz+pGII9EeFL4Pc78/mR0Zabr67btq0jg8oC+j6XHWT6z
 n7yaWpVUhqeWyK8U1k829qeshyUiyCNhV58qfs6ftjrHh8/FKl6FpniHI7bqd15nCKMt
 TuEQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=3K5YL6eZ
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/7] net: intel: replace
 deprecated strncpy uses
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBPY3QgMTAsIDIwMjMgYXQgNDoxOeKAr1BNIEplc3NlIEJyYW5kZWJ1cmcKPGplc3Nl
LmJyYW5kZWJ1cmdAaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIDEwLzEwLzIwMjMgMzoyNiBQTSwg
SnVzdGluIFN0aXR0IHdyb3RlOgo+ID4gSGksCj4gPgo+ID4gVGhpcyBzZXJpZXMgYWltcyB0byBl
bGltaW5hdGUgdXNlcyBvZiBzdHJuY3B5KCkgYXMgaXQgaXMgYSBkZXByZWNhdGVkCj4gPiBpbnRl
cmZhY2UgWzFdIHdpdGggbWFueSB2aWFibGUgcmVwbGFjZW1lbnRzIGF2YWlsYWJsZS4KPiA+Cj4g
PiBQcmVkb21pbmFudGx5LCBzdHJzY3B5KCkgaXMgdGhlIGdvLXRvIHJlcGxhY2VtZW50IGFzIGl0
IGd1YXJhbnRlZXMKPiA+IE5VTC10ZXJtaW5hdGlvbiBvbiB0aGUgZGVzdGluYXRpb24gYnVmZmVy
ICh3aGljaCBzdHJuY3B5IGRvZXMgbm90KS4gV2l0aAo+ID4gdGhhdCBiZWluZyBzYWlkLCBJIGRp
ZCBub3QgaWRlbnRpZnkgYW55IGJ1ZmZlciBvdmVycmVhZCBwcm9ibGVtcyBhcyB0aGUKPiA+IHNp
emUgYXJndW1lbnRzIHdlcmUgY2FyZWZ1bGx5IG1lYXN1cmVkIHRvIGxlYXZlIHJvb20gZm9yIHRy
YWlsaW5nCj4gPiBOVUwtYnl0ZXMuIE5vbmV0aGVsZXNzLCB3ZSBzaG91bGQgZmF2b3IgbW9yZSBy
b2J1c3QgYW5kIGxlc3MgYW1iaWd1b3VzCj4gPiBpbnRlcmZhY2VzLgo+ID4KPiA+IFByZXZpb3Vz
bHksIGVhY2ggb2YgdGhlc2UgcGF0Y2hlcyB3YXMgc2VudCBpbmRpdmlkdWFsbHkgYXQ6Cj4gPiAx
KSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzEwMDktc3RybmNweS1kcml2ZXJzLW5l
dC1ldGhlcm5ldC1pbnRlbC1lMTAwLWMtdjEtMS1jYTBmZjk2ODY4YTNAZ29vZ2xlLmNvbS8KPiA+
IDIpIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIzMTAxMC1zdHJuY3B5LWRyaXZlcnMt
bmV0LWV0aGVybmV0LWludGVsLWUxMDAwLWUxMDAwX21haW4tYy12MS0xLWIxZDY0NTgxZjk4M0Bn
b29nbGUuY29tLwo+ID4gMykgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMxMDEwLXN0
cm5jcHktZHJpdmVycy1uZXQtZXRoZXJuZXQtaW50ZWwtZm0xMGstZm0xMGtfZXRodG9vbC1jLXYx
LTEtZGJkYzQ1NzBjNWE2QGdvb2dsZS5jb20vCj4gPiA0KSBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvMjAyMzEwMTAtc3RybmNweS1kcml2ZXJzLW5ldC1ldGhlcm5ldC1pbnRlbC1pNDBlLWk0
MGVfZGRwLWMtdjEtMS1mMDFhMjMzOTRlYWJAZ29vZ2xlLmNvbS8KPiA+IDUpIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC8yMDIzMTAxMC1zdHJuY3B5LWRyaXZlcnMtbmV0LWV0aGVybmV0LWlu
dGVsLWlnYi1pZ2JfbWFpbi1jLXYxLTEtZDc5NjIzNGE4YWJmQGdvb2dsZS5jb20vCj4gPiA2KSBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzEwMTAtc3RybmNweS1kcml2ZXJzLW5ldC1l
dGhlcm5ldC1pbnRlbC1pZ2J2Zi1uZXRkZXYtYy12MS0xLTY5Y2NmYjJjMmFhNUBnb29nbGUuY29t
Lwo+ID4gNykgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMxMDEwLXN0cm5jcHktZHJp
dmVycy1uZXQtZXRoZXJuZXQtaW50ZWwtaWdjLWlnY19tYWluLWMtdjEtMS1mMWY1MDdlY2M0NzZA
Z29vZ2xlLmNvbS8KPiA+Cj4gPiBDb25zaWRlciB0aGVzZSBkZWFkIGFzIHRoaXMgc2VyaWVzIGlz
IHRoZWlyIG5ldyBob21lIDopCj4gPgo+ID4gSSBmb3VuZCBhbGwgdGhlc2UgaW5zdGFuY2VzIHdp
dGg6ICQgcmcgInN0cm5jcHlcKCIKPiA+Cj4gPiBUaGlzIHNlcmllcyBtYXkgY29sbGlkZSBpbiBh
IG5vdC1zby1uaWNlIHdheSB3aXRoIFszXS4gVGhpcyBzZXJpZXMgY2FuCj4gPiBnbyBpbiBhZnRl
ciB0aGF0IG9uZSB3aXRoIGEgcmViYXNlLiBJJ2xsIHNlbmQgYSB2MiBpZiBuZWNlc3NhcnkuCj4g
Pgo+ID4gWzNdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMzEwMDMxODM2MDMu
Mzg4NzU0Ni0xLWplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tLwo+ID4KPiA+IExpbms6IGh0dHBz
Oi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3MvZGVwcmVjYXRlZC5odG1s
I3N0cm5jcHktb24tbnVsLXRlcm1pbmF0ZWQtc3RyaW5ncyBbMV0KPiA+IExpbms6IGh0dHBzOi8v
bWFucGFnZXMuZGViaWFuLm9yZy90ZXN0aW5nL2xpbnV4LW1hbnVhbC00Ljgvc3Ryc2NweS45LmVu
Lmh0bWwgWzJdCj4gPiBMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vS1NQUC9saW51eC9pc3N1ZXMv
OTAKPiA+IFNpZ25lZC1vZmYtYnk6IEp1c3RpbiBTdGl0dCA8anVzdGluc3RpdHRAZ29vZ2xlLmNv
bT4KPgo+IFRoYW5rcyBKdXN0aW4gZm9yIGZpeGluZyBhbGwgdGhlc2UhCj4KPiBGb3IgdGhlIHNl
cmllczoKPiBSZXZpZXdlZC1ieTogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0Bp
bnRlbC5jb20+Cj4KPiBQUzogaGF2ZSB5b3UgY29uc2lkZXJlZCBhZGRpbmcgYSBzY3JpcHQgdG8g
c2NyaXB0cy9jb2NjaW5lbGxlL2FwaSB3aGljaAo+IG1pZ2h0IGNhdGNoIGFuZCB0cnkgdG8gZml4
IGZ1dHVyZSAoYWIpdXNlcnMgb2Ygc3RybmNweT8KClRoZXJlIGlzIGEgY2hlY2twYXRjaCByb3V0
aW5lIGZvciBpdC4gQWxzbywgdGhlIGRvY3MgYXJlIGxpdHRlcmVkIHdpdGgKYXZlcnNpb25zIHRv
IHN0cm5jcHkuIFdpdGggdGhhdCBiZWluZyBzYWlkLCBJIHdvdWxkIG5vdCBiZSBvcHBvc2VkCnRv
IGFkZGluZyBtb3JlIGNoZWNrcywgdGhvdWdoLgoKT25jZSBJJ20gbW9yZSBjYXVnaHQgdXAgb24g
YWxsIHRoZSBvdXRzdGFuZGluZyBzdHJuY3B5IHVzZXMsCkknbGwgbG9vayBpbnRvIGFkZGluZyBz
b21lIGNvY2NpbmVsbGUgc3VwcG9ydC4KCj4KClRoYW5rcwpKdXN0aW4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
