Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2642C6DE769
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 00:42:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAE8760BA1;
	Tue, 11 Apr 2023 22:42:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAE8760BA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681252952;
	bh=xOk2C3oHMdrQJkLHIFV+Lqp8BD+ngOK3g9WPNz/+woI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sFH/3QOvYHMO3rFU1fHZlsqqCERkkHUUh3IbL1Sqr0hj9t88T6SNjhHv82bKj9Hne
	 ylYVuRIa5v1IL0McM1oZBEu2GaUtU+ytdGYnZ941cFEmT/qWoVt8hM/3ov6tAiBEv1
	 +0OOAVS/EJtNQpHrs7QTJoGmW/EI5MLClqfzIf1jPHPkAVPfk+roHXxgxlakQDjnkt
	 kfYuWmCXvT9opRIzS5xIj9K0LpgVpjrUBb7fA8uFZ74/A0eLgE4m/2RbghWGgwgXab
	 m6Dhg2khBHUOt8EQzsKepR8ctB9LaCBBYwGKpSF1MUVcVI7wB8kLyjv9iebGOKPsts
	 gfEWJX+W990Mw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WIpPEMYGJ1Fc; Tue, 11 Apr 2023 22:42:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF884605E3;
	Tue, 11 Apr 2023 22:42:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF884605E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E67BA1C3BE3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 22:42:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BDC7F40499
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 22:42:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDC7F40499
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oLtVOmiD7gVF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Apr 2023 22:42:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E96DC40286
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E96DC40286
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 22:42:25 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id kh6so7785991plb.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 15:42:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681252945;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=E0xO9Bx9i5tldfd7adzq3NuOgykDM+T3WB8seKN/9fM=;
 b=ovgNsn4QMQ1FiQZAyq9QCcoEDTPM3ZH7o8/Mllz9DwKZfEbam05GZekJ57Gjy0sqSk
 0RBiji4y2ih9a9pDRcNwlAAb/pCkq28fjLdje63HJepu1h6F7+z+Frc+Xl7nOX8VB93+
 UwKgdL9ZQT8Mb0vpyezQYVq6bwgA0ldaRLLay3Inmjxca+Y0L2JrEpqOs1TdGn9e5Z5Q
 pPeCoNMFWRORv4AqVkyIgHgRs0YNpNRwvOudDXxyQ1Dlm3Q4fpc1/DrMxezDcZiCsJKP
 +ejBaFRS4LqLx7IP233gnCNPZS1cccxocT1wGhiHevDRdf0r9fndlUA5iu6PpaKWK2o0
 K/2w==
X-Gm-Message-State: AAQBX9coY6Wa0wSNaPwhI21nLmuKr/l3+WT5lIeGDqmPnHsIGm5du+I4
 ex78mIenGLdS987uaZzpdy25uVgXqe+vhsMFV48dcg==
X-Google-Smtp-Source: AKy350Yke3xHvPIcVDrfJDNbsXAC8S4tRog/pB48r6EGnMKgP8FWKKWc/STPyg9eHg7eVsBk44WhbqLGoyLPXsVzwRk=
X-Received: by 2002:a17:90a:6bc3:b0:23b:36cc:f347 with SMTP id
 w61-20020a17090a6bc300b0023b36ccf347mr3906797pjj.9.1681252945157; Tue, 11 Apr
 2023 15:42:25 -0700 (PDT)
MIME-Version: 1.0
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
 <168098188134.96582.7870014252568928901.stgit@firesoul>
In-Reply-To: <168098188134.96582.7870014252568928901.stgit@firesoul>
From: Stanislav Fomichev <sdf@google.com>
Date: Tue, 11 Apr 2023 15:42:13 -0700
Message-ID: <CAKH8qBu2ieR+puSkF30-df3YikOvDZErxc2qjjVXPPAvCecihA@mail.gmail.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1681252945;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=E0xO9Bx9i5tldfd7adzq3NuOgykDM+T3WB8seKN/9fM=;
 b=uKwy/ailVcOdYbsnJvdxytCFTrv0n9YS+0ARjJFB00iUjwbkqRfGDfF4iYzZ1iG9Kv
 82FGZ/RpThSY7QFxdhSjPl4N6pfaAYAQMd9Ex1gbWk6CB/OpsWHbkyHE5HbkBtCln6AE
 CCetfIcGqIF201lBE0Y2PEFqvyxG/rYdrihtSshNnCdmy+JT1Jp8YKvBWU+bzR94zy3Y
 gb0f4CVOuc7NI5ZIKEg3JU+1EpjqKZ28E3JxVlDdNU6OSXDzHwfO/rXmhyT3vdqjpb9S
 lWZdb+Ngq9YKJhhVvmPUq+K8pUbhytxE29NwfYYWpcUSUjgY+3DZpEWJQCeBrv1S5tuK
 3KDA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=uKwy/ail
Subject: Re: [Intel-wired-lan] [PATCH bpf V7 1/7] selftests/bpf:
 xdp_hw_metadata default disable bpf_printk
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, martin.lau@kernel.org, larysa.zaremba@intel.com,
 leon@kernel.org, netdev@vger.kernel.org,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU2F0LCBBcHIgOCwgMjAyMyBhdCAxMjoyNOKAr1BNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIK
PGJyb3VlckByZWRoYXQuY29tPiB3cm90ZToKPgo+IFRoZSB0b29sIHhkcF9od19tZXRhZGF0YSBj
YW4gYmUgdXNlZCBieSBkcml2ZXIgZGV2ZWxvcGVycwo+IGltcGxlbWVudGluZyBYRFAtaGludHMg
a2Z1bmNzLiAgVGhlIHRvb2wgdHJhbnNmZXJzIHRoZQo+IFhEUC1oaW50cyB2aWEgbWV0YWRhdGEg
aW5mb3JtYXRpb24gdG8gYW4gQUZfWERQIHVzZXJzcGFjZQo+IHByb2Nlc3MuIFdoZW4gZXZlcnl0
aGluZyB3b3JrcyB0aGUgYnBmX3ByaW50ayBjYWxscyBhcmUKPiB1bm5jZXNzc2FyeS4gIFRodXMs
IGRpc2FibGUgYnBmX3ByaW50ayBieSBkZWZhdWx0LCBidXQKPiBtYWtlIGl0IGVhc3kgdG8gcmVl
bmFibGUgZm9yIGRyaXZlciBkZXZlbG9wZXJzIHRvIHVzZQo+IHdoZW4gZGVidWdnaW5nIHRoZWly
IGRyaXZlciBpbXBsZW1lbnRhdGlvbi4KPgo+IFRoaXMgYWxzbyBjb252ZXJ0cyBicGZfcHJpbnRr
ICJmb3J3YXJkaW5nIFVEUDo5MDkxIHRvIEFGX1hEUCIKPiBpbnRvIGEgY29kZSBjb21tZW50LiAg
VGhlIGJwZl9wcmludGsncyB0aGF0IGFyZSBpbXBvcnRhbnQKPiB0byB0aGUgZHJpdmVyIGRldmVs
b3BlcnMgaXMgd2hlbiBicGZfeGRwX2FkanVzdF9tZXRhIGZhaWxzLgo+IFRoZSBsaWtlbHkgbWlz
dGFrZSBmcm9tIGRyaXZlciBkZXZlbG9wZXJzIGlzIGV4cGVjdGVkIHRvCj4gYmUgdGhhdCB0aGV5
IGRpZG4ndCBpbXBsZW1lbnQgWERQIG1ldGFkYXRhIGFkanVzdCBzdXBwb3J0Lgo+Cj4gU2lnbmVk
LW9mZi1ieTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+Cj4gLS0t
Cj4gIC4uLi90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMgIHwg
ICAxNiArKysrKysrKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3Rz
L2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2Jw
Zi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+IGluZGV4IDRjNTViNGQ3OWQzZC4uOTgwZWI2MGQ4
ZTViIDEwMDY0NAo+IC0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBf
aHdfbWV0YWRhdGEuYwo+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94
ZHBfaHdfbWV0YWRhdGEuYwo+IEBAIC01LDYgKzUsMTkgQEAKPiAgI2luY2x1ZGUgPGJwZi9icGZf
aGVscGVycy5oPgo+ICAjaW5jbHVkZSA8YnBmL2JwZl9lbmRpYW4uaD4KPgo+ICsvKiBQZXIgZGVm
YXVsdCBiZWxvdyBicGZfcHJpbnRrKCkgY2FsbHMgYXJlIGRpc2FibGVkLiAgQ2FuIGJlCj4gKyAq
IHJlZW5hYmxlZCBtYW51YWxseSBmb3IgY29udmVuaWVuY2UgYnkgWERQLWhpbnRzIGRyaXZlciBk
ZXZlbG9wZXIsCj4gKyAqIHdoZW4gdHJvdWJsc2hvb3RpbmcgdGhlIGRyaXZlcnMga2Z1bmNzIGlt
cGxlbWVudGF0aW9uIGRldGFpbHMuCj4gKyAqCj4gKyAqIFJlbWVtYmVyIEJQRi1wcm9nIGJwZl9w
cmludGsgaW5mbyBvdXRwdXQgY2FuIGJlIGFjY2VzcyB2aWE6Cj4gKyAqICAvc3lzL2tlcm5lbC9k
ZWJ1Zy90cmFjaW5nL3RyYWNlX3BpcGUKPiArICovCj4gKy8vI2RlZmluZSBERUJVRyAgICAgICAg
MQo+ICsjaWZuZGVmIERFQlVHCj4gKyN1bmRlZiAgYnBmX3ByaW50awo+ICsjZGVmaW5lIGJwZl9w
cmludGsoZm10LCAuLi4pICh7fSkKPiArI2VuZGlmCgpBcmUgeW91IHBsYW5uaW5nIHRvIGV2ZW50
dWFsbHkgZG8gc29tZXRoaWtlIHNpbWlsYXIgdG8gd2hhdCBJJ3ZlCm1lbnRpb25lZCBpbiBbMF0/
IElmIG5vdCwgc2hvdWxkIEkgdHJ5IHRvIHNlbmQgYSBwYXRjaD8KCjA6IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL25ldGRldi9DQUtIOHFCdXBSWUVnK1NQTVRNYjRoNTMyR0VTRzdQMVFkYUZKLSt6
cmJBUlZOOXhyZEFAbWFpbC5nbWFpbC5jb20vCgo+ICsKPiAgc3RydWN0IHsKPiAgICAgICAgIF9f
dWludCh0eXBlLCBCUEZfTUFQX1RZUEVfWFNLTUFQKTsKPiAgICAgICAgIF9fdWludChtYXhfZW50
cmllcywgMjU2KTsKPiBAQCAtNDksMTEgKzYyLDEwIEBAIGludCByeChzdHJ1Y3QgeGRwX21kICpj
dHgpCj4gICAgICAgICBpZiAoIXVkcCkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIFhEUF9QQVNT
Owo+Cj4gKyAgICAgICAvKiBGb3J3YXJkaW5nIFVEUDo5MDkxIHRvIEFGX1hEUCAqLwo+ICAgICAg
ICAgaWYgKHVkcC0+ZGVzdCAhPSBicGZfaHRvbnMoOTA5MSkpCj4gICAgICAgICAgICAgICAgIHJl
dHVybiBYRFBfUEFTUzsKPgo+IC0gICAgICAgYnBmX3ByaW50aygiZm9yd2FyZGluZyBVRFA6OTA5
MSB0byBBRl9YRFAiKTsKPiAtCj4gICAgICAgICByZXQgPSBicGZfeGRwX2FkanVzdF9tZXRhKGN0
eCwgLShpbnQpc2l6ZW9mKHN0cnVjdCB4ZHBfbWV0YSkpOwo+ICAgICAgICAgaWYgKHJldCAhPSAw
KSB7Cj4gICAgICAgICAgICAgICAgIGJwZl9wcmludGsoImJwZl94ZHBfYWRqdXN0X21ldGEgcmV0
dXJuZWQgJWQiLCByZXQpOwo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
