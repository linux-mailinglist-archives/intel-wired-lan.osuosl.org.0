Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FAC753109
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jul 2023 07:19:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33E6E416ED;
	Fri, 14 Jul 2023 05:19:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33E6E416ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689311949;
	bh=NHUx/2E/yqmVmDFgjRYhMurmVfWfkoLr3WVTlLO3sJ0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BWilNb4/ILaOYwtYqrYK8LLg6ofVkfg9E69dfJTWvSALKMov1SgcjaQTMSunaditL
	 /Hy1QsrLvmPSxRnIWjkKboqL193xKWrJJ55MhWd3tfS6hvZmW9Go/ojJoz/MzfdPuC
	 OWQxXOBgmA3wxAOw28SskoyAJhzSuyvW1dGscZTlAafNRiaf7U9FmR4Lfgfx0jlUuZ
	 oe40SXrxvVzCbfzUXUhXyT5SRag7+40JbjmEjUzFOOC2+mrXcHPtyuOmnN+/otd58S
	 VAVxG8bc3UuvTPYAuYfzg8ArCc/7C66Se5GjyADeF7TSzwNLeRi96JCWu2ZoJzFt6C
	 K6PvTZ+YGgo1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BAHHXuVj-BRQ; Fri, 14 Jul 2023 05:19:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E3789416CA;
	Fri, 14 Jul 2023 05:19:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3789416CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98B961BF37F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 05:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7078C41476
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 05:19:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7078C41476
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cQFuRZgPcTda for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jul 2023 05:19:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E84B40150
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E84B40150
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 05:19:01 +0000 (UTC)
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 6AA273F734
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 05:18:57 +0000 (UTC)
Received: by mail-pj1-f70.google.com with SMTP id
 98e67ed59e1d1-262e2cb725eso973683a91.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 22:18:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689311936; x=1691903936;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4RwCmrifjQAszMSdyafC6AItguqTd3yShrJPY3GuzKo=;
 b=b56KIRUBk4dDb46azFx6DhIhnwsyzVWJmdE3tPVttCny5NM7NzgijCQFHchkhcJCKk
 +Xu8ipjbmaOMf7PXwWlVOitDd2s6Ct+dO0XRmw2NuyQdVw95638Ne3DMzMPd+o52jWNT
 kIFEjGG3+hMlaKwC1I6xygBNqYldxU0fiHllg0J8KVUsKHNGDMouwdknIdPKOjp/nm0X
 EAmFquPt99dddpMjxfVCZsU5KMLNEAFs0d95cHSwREeDcj73v50vB+xeWtO2n3psJ3KJ
 MXys68rtD89yhf2fwvbVIz6nE88ntEIKdbI3mPnWIscnT2l2O8B386qyNItP+tRVh0g0
 MhnA==
X-Gm-Message-State: ABy/qLY9ZZP/7dSKxMhVvYYAb6jU8RQQQewjQ2MULP9xkD73t338nbIc
 tnFE/uHyRI6CTsaEykdHdkwpwHZJPPVMKipiZ70awL5aiYOxtC4kstPs4W5VkWsytDXgB+6j1lD
 HQSCujaIIO7ZQLv4my4qws0xad7jb79hjE8JzNRdSWGrk/P/0LqDLBCoqSb75FYo=
X-Received: by 2002:a17:90b:1643:b0:261:110e:30c1 with SMTP id
 il3-20020a17090b164300b00261110e30c1mr2428910pjb.4.1689311935773; 
 Thu, 13 Jul 2023 22:18:55 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFPTMsnX8dr5FIZHQ03Hx09Ztz5Lxo0FqHU0UBxtvQNOQK3SfMNeJz5gWDCMTOZ2rKIk09TKJd+otiXntG6fG0=
X-Received: by 2002:a17:90b:1643:b0:261:110e:30c1 with SMTP id
 il3-20020a17090b164300b00261110e30c1mr2428889pjb.4.1689311935452; Thu, 13 Jul
 2023 22:18:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230526163001.67626-1-aaron.ma@canonical.com>
 <20230607015646.558534-1-aaron.ma@canonical.com>
In-Reply-To: <20230607015646.558534-1-aaron.ma@canonical.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Fri, 14 Jul 2023 13:18:44 +0800
Message-ID: <CAAd53p4V36qjyL1fMF20pY9wD4sLXWLQyJVib5Zt4NGOgnF5yg@mail.gmail.com>
To: Aaron Ma <aaron.ma@canonical.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1689311937;
 bh=4RwCmrifjQAszMSdyafC6AItguqTd3yShrJPY3GuzKo=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=QQ3gBCdpdBSQygt0xnQGzNjc3esGtiEn5Dz4L/ojvbVzFQIBoOVIXcAaLqzSdXjhO
 P/JzhH7RcYPksfPpoa5PQ5yx+K0RJ8OLThkEodqZndS0Rdjc4Q7UajM8anZg4jx6r7
 IhbQy1HgR5JJjIACCRq48cKLoUEe12U+QuTE5gCgDumxwuWTWNK9OgvUaK0nbPnFga
 EGks8trJzDzp7+Kkr2tlATWCLXZ03Kss0rsb6couo3cBfEOfGTpgsKS6FV/g5Rsa5+
 3cSQsWwY3jV/ztKAzZzjI8y0/pbu9LPM2La/B8FmYjWvU2c297aclS5FFaxoarV6ul
 OoPNrIa0KE8rA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=QQ3gBCdp
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: fix hang issue of AER
 error during resume
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
Cc: Auke Kok <auke-jan.h.kok@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jeff Garzik <jgarzik@redhat.com>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgQWFyb24sCgpPbiBXZWQsIEp1biA3LCAyMDIzIGF0IDk6NTbigK9BTSBBYXJvbiBNYSA8YWFy
b24ubWFAY2Fub25pY2FsLmNvbT4gd3JvdGU6Cj4KPiBQQ0llIEFFUiBlcnJvcl9kZXRlY3RlZCBj
YXVzZWQgYSByYWNlIGlzc3VlIHdpdGggaWdiX3Jlc3VtZS4KPiBQcm90ZWN0IGVycm9yX2RldGVj
dGVkIHdoZW4gaWdiIGlzIGluIGRvd24gc3RhdGUuCj4KPiBFcnJvciBsb2dzOgo+IGtlcm5lbDog
aWdiIDAwMDA6MDI6MDAuMDogZGlzYWJsaW5nIGFscmVhZHktZGlzYWJsZWQgZGV2aWNlCj4ga2Vy
bmVsOiBXQVJOSU5HOiBDUFU6IDAgUElEOiAyNzcgYXQgZHJpdmVycy9wY2kvcGNpLmM6MjI0OCBw
Y2lfZGlzYWJsZV9kZXZpY2UrMHhjNC8weGYwCj4ga2VybmVsOiBSSVA6IDAwMTA6cGNpX2Rpc2Fi
bGVfZGV2aWNlKzB4YzQvMHhmMAo+IGtlcm5lbDogQ2FsbCBUcmFjZToKPiBrZXJuZWw6ICA8VEFT
Sz4KPiBrZXJuZWw6ICBpZ2JfaW9fZXJyb3JfZGV0ZWN0ZWQrMHgzZS8weDYwCj4ga2VybmVsOiAg
cmVwb3J0X2Vycm9yX2RldGVjdGVkKzB4ZDYvMHgxYzAKPiBrZXJuZWw6ICA/IF9fcGZ4X3JlcG9y
dF9ub3JtYWxfZGV0ZWN0ZWQrMHgxMC8weDEwCj4ga2VybmVsOiAgcmVwb3J0X25vcm1hbF9kZXRl
Y3RlZCsweDE2LzB4MzAKPiBrZXJuZWw6ICBwY2lfd2Fsa19idXMrMHg3NC8weGEwCj4ga2VybmVs
OiAgcGNpZV9kb19yZWNvdmVyeSsweGI5LzB4MzQwCj4ga2VybmVsOiAgPyBfX3BmeF9hZXJfcm9v
dF9yZXNldCsweDEwLzB4MTAKPiBrZXJuZWw6ICBhZXJfcHJvY2Vzc19lcnJfZGV2aWNlcysweDE2
OC8weDIyMAo+IGtlcm5lbDogIGFlcl9pc3IrMHgxYjUvMHgxZTAKPiBrZXJuZWw6ICA/IF9fcGZ4
X2lycV90aHJlYWRfZm4rMHgxMC8weDEwCj4ga2VybmVsOiAgaXJxX3RocmVhZF9mbisweDIxLzB4
NzAKPiBrZXJuZWw6ICBpcnFfdGhyZWFkKzB4ZjgvMHgxYzAKPiBrZXJuZWw6ICA/IF9fcGZ4X2ly
cV90aHJlYWRfZHRvcisweDEwLzB4MTAKPiBrZXJuZWw6ICA/IF9fcGZ4X2lycV90aHJlYWQrMHgx
MC8weDEwCj4ga2VybmVsOiAga3RocmVhZCsweGVmLzB4MTIwCj4ga2VybmVsOiAgPyBfX3BmeF9r
dGhyZWFkKzB4MTAvMHgxMAo+IGtlcm5lbDogIHJldF9mcm9tX2ZvcmsrMHgyOS8weDUwCj4ga2Vy
bmVsOiAgPC9UQVNLPgo+IGtlcm5lbDogLS0tWyBlbmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAwMCBd
LS0tCj4KPiBMaW5rOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lk
PTIxNzQ0Ngo+IEZpeGVzOiA5ZDVjODI0Mzk5ZGUgKCJpZ2I6IFBDSS1FeHByZXNzIDgyNTc1IEdp
Z2FiaXQgRXRoZXJuZXQgZHJpdmVyIikKPiBTaWduZWQtb2ZmLWJ5OiBBYXJvbiBNYSA8YWFyb24u
bWFAY2Fub25pY2FsLmNvbT4KPiBSZXZpZXdlZC1ieTogTWF0ZXVzeiBQYWxjemV3c2tpIDxtYXRl
dXN6LnBhbGN6ZXdza2lAaW50ZWwuY29tPgoKQ2FuIHlvdSBwbGVhc2UgZ2l2ZSBbMV0gYSB0cnk/
CkkgdGhpbmsgYXZvaWQgdXNpbmcgcnRubF9sb2NrKCkgaXMgbW9yZSBpZGVhbC4KClsxXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9pbnRlbC13aXJlZC1sYW4vMjAyMzA3MTQwNTA1NDEuMjc2NTI0
Ni0xLWthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbS8KCkthaS1IZW5nCgo+IC0tLQo+IFYxLT5W
MjogQWRkIHRhcmdldCB0cmVlIHRhZyBuZXQgYW5kIEZpeGVzIHRhZy4KPgo+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYyB8IDkgKysrKysrKystCj4gIDEgZmlsZSBj
aGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCj4gaW5kZXggNTg4NzJhNGMyNTQwLi44MzMzZDRh
YzgxNjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9t
YWluLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYwo+
IEBAIC05NTgxLDE0ICs5NTgxLDIxIEBAIHN0YXRpYyBwY2lfZXJzX3Jlc3VsdF90IGlnYl9pb19l
cnJvcl9kZXRlY3RlZChzdHJ1Y3QgcGNpX2RldiAqcGRldiwKPiAgICAgICAgIHN0cnVjdCBuZXRf
ZGV2aWNlICpuZXRkZXYgPSBwY2lfZ2V0X2RydmRhdGEocGRldik7Cj4gICAgICAgICBzdHJ1Y3Qg
aWdiX2FkYXB0ZXIgKmFkYXB0ZXIgPSBuZXRkZXZfcHJpdihuZXRkZXYpOwo+Cj4gKyAgICAgICBp
ZiAodGVzdF9iaXQoX19JR0JfRE9XTiwgJmFkYXB0ZXItPnN0YXRlKSkKPiArICAgICAgICAgICAg
ICAgcmV0dXJuIFBDSV9FUlNfUkVTVUxUX0RJU0NPTk5FQ1Q7Cj4gKwo+ICsgICAgICAgcnRubF9s
b2NrKCk7Cj4gICAgICAgICBuZXRpZl9kZXZpY2VfZGV0YWNoKG5ldGRldik7Cj4KPiAtICAgICAg
IGlmIChzdGF0ZSA9PSBwY2lfY2hhbm5lbF9pb19wZXJtX2ZhaWx1cmUpCj4gKyAgICAgICBpZiAo
c3RhdGUgPT0gcGNpX2NoYW5uZWxfaW9fcGVybV9mYWlsdXJlKSB7Cj4gKyAgICAgICAgICAgICAg
IHJ0bmxfdW5sb2NrKCk7Cj4gICAgICAgICAgICAgICAgIHJldHVybiBQQ0lfRVJTX1JFU1VMVF9E
SVNDT05ORUNUOwo+ICsgICAgICAgfQo+Cj4gICAgICAgICBpZiAobmV0aWZfcnVubmluZyhuZXRk
ZXYpKQo+ICAgICAgICAgICAgICAgICBpZ2JfZG93bihhZGFwdGVyKTsKPiAgICAgICAgIHBjaV9k
aXNhYmxlX2RldmljZShwZGV2KTsKPiArICAgICAgIHJ0bmxfdW5sb2NrKCk7Cj4KPiAgICAgICAg
IC8qIFJlcXVlc3QgYSBzbG90IHJlc2V0LiAqLwo+ICAgICAgICAgcmV0dXJuIFBDSV9FUlNfUkVT
VUxUX05FRURfUkVTRVQ7Cj4gLS0KPiAyLjM0LjEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdAo+
IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4gaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
