Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F58474A2CC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 19:07:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA35C41598;
	Thu,  6 Jul 2023 17:07:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA35C41598
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688663233;
	bh=WReEJO+AHSc0MRPXYe+b8ud129F0nhyH6mM68fiZm7M=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RKCLNKxPIaUgsczreZx6qMMaKyAgNIHUiKPKX0znBX3ZhyqVt+lSVJAkKhp3f4nhm
	 kl5HcvMka1bjI0bX6DSXGzoMT3A144kJX3tFsIItA21/7FFZkZPHa4GE++TauGJNkc
	 kWJ+X/+ivKSCT2m+RPafKrmu7GB91rjsA28t1YSQD5sJSZOb55SRhZUelcI2cV3RhU
	 wBihicNfVMPKfUsLpHI0VvOxY2EU02S3Ixw3xufVYv66XkkA2YcA4XPaMQV8CUoSY0
	 D/z9f22wMV2A+R2K+OJyIOSOETtwTgerOfzYj/e25nb1RyZ98yq8dRtPePGzPd1wZI
	 R53B4Frtbo54w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0VDYkRUtcEAt; Thu,  6 Jul 2023 17:07:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB89541594;
	Thu,  6 Jul 2023 17:07:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB89541594
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E04301BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 17:07:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C552540A98
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 17:07:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C552540A98
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JjBOpYZJwEI7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 17:07:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 271504023D
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 271504023D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 17:07:07 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id
 41be03b00d2f7-55ae51a45deso566565a12.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Jul 2023 10:07:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688663226; x=1691255226;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Gqf08F2Bb0gKm26BFhXQKsKBfR3DKmsKnAhhQeDa5Qk=;
 b=V1O538RegQi+T2Fc6NMWOex5PKQz2J96cPReiOTiePJqXOmA8EMDtTKiW1+0nrT7tu
 2EiWpDYltdBb25YzP0vG76N5yF2NEG4bdRSOjyUltCNS9R8THAKYGVJYKTdN8B8lAsHK
 9jckdoQ4HrH26cytbbg7bY9jmnkgRHFRk21AZMBUVu7SgnZekgYFbmkbGN6PbJolGgZt
 HFsF57X3hV0hqyzL62upWspMyCyKm1CgnmAZRdG5uds8Q5Gy3c65JljuVqPfTj2/la+K
 sSYDw4ROecJEVTNjS1NZthum4ZRv2MTFaRWcKQSHoE7ObMF5GowbUPA85xVzkPx/q4mO
 H6rg==
X-Gm-Message-State: ABy/qLYmMZXBms5Xbam8DStbe4jqTuo3ugOO7x9xuD5pap3Q0nLNhNj9
 Esvpa55j7ft0siclwedriopWQBto3E72WGgZ++Y=
X-Google-Smtp-Source: APBJJlEwtM6589fW7lB1xzRgrrhcXFmcYSJAgNfP6FCGx9CqmSV9BS66UFTiCE4qQZ3HtMDmhV4F6kydZF+iDiCQPsc=
X-Received: by 2002:a05:6a20:394f:b0:125:4d74:ac77 with SMTP id
 r15-20020a056a20394f00b001254d74ac77mr2205076pzg.42.1688663226296; Thu, 06
 Jul 2023 10:07:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
 <20230705155551.1317583-4-aleksander.lobakin@intel.com>
 <CAKgT0Ue+VvnzNUuKiO1XFW6w3Ka9=SSfGBP_KpkbvR6uzqvg5A@mail.gmail.com>
 <6310c483-8c6e-8d34-763a-487157f6ff0c@intel.com>
In-Reply-To: <6310c483-8c6e-8d34-763a-487157f6ff0c@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 6 Jul 2023 10:06:29 -0700
Message-ID: <CAKgT0UfLBmzhshM5ZsvLaBwGtv2AvXA3n+kbn9FtBWTCocsiDw@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688663226; x=1691255226;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Gqf08F2Bb0gKm26BFhXQKsKBfR3DKmsKnAhhQeDa5Qk=;
 b=Fo8AeDyb6BW9HEaJ/jBmNsnqzldH2H4Pf6eF68ekBCoYeFRmxlNHwTiMBUpLbs8G0J
 fl+zhYfDs+uYNTP+5nqs+s3QORA0oeI0ferfZHZZzs/B6BjWZhMz4gKt7/izlHj35OLN
 6UcEbZKI5sZD/S+g9+txl3AEAy0FyJfXZHkdOKCg4JpiCDmpLovpBvlhwWbMkYqQ8snT
 RPevshBLhoXUeasZIaUtKLkSJgOU4mqS3vtDKnULJn6TQFsYokEdltnCjlTLADZxno8D
 YI3za+NttUc2fcOVQA1p0WKd6LsuYbPVKP2H84cT7lcTt50CO5F77iaCDmvxngNa94+Q
 pnWQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=Fo8AeDyb
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next v4 3/9] iavf: drop page
 splitting and recycling
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Yunsheng Lin <linyunsheng@huawei.com>,
 David Christensen <drc@linux.vnet.ibm.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBKdWwgNiwgMjAyMyBhdCA5OjQ24oCvQU0gQWxleGFuZGVyIExvYmFraW4KPGFsZWtz
YW5kZXIubG9iYWtpbkBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogQWxleGFuZGVyIER1eWNr
IDxhbGV4YW5kZXIuZHV5Y2tAZ21haWwuY29tPgo+IERhdGU6IFRodSwgNiBKdWwgMjAyMyAwNzo0
NzowMyAtMDcwMAo+Cj4gPiBPbiBXZWQsIEp1bCA1LCAyMDIzIGF0IDg6NTfigK9BTSBBbGV4YW5k
ZXIgTG9iYWtpbgo+ID4gPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+IHdyb3RlOgoKWy4u
Ll0KCj4gPj4gQEAgLTE0MzEsMTUgKzEzMDMsMTggQEAgc3RhdGljIGludCBpYXZmX2NsZWFuX3J4
X2lycShzdHJ1Y3QgaWF2Zl9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQo+ID4+ICAgICAgICAg
ICAgICAgICBlbHNlCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgc2tiID0gaWF2Zl9idWls
ZF9za2IocnhfcmluZywgcnhfYnVmZmVyLCBzaXplKTsKPiA+Pgo+ID4+ICsgICAgICAgICAgICAg
ICBpYXZmX3B1dF9yeF9idWZmZXIocnhfcmluZywgcnhfYnVmZmVyKTsKPiA+PiArCj4gPgo+ID4g
VGhpcyBzaG91bGQgc3RheSBiZWxvdyB3aGVyZSBpdCB3YXMuCj4KPiBXYWl0LXdhaXQtd2FpdC4K
Pgo+IGlmICghc2tiKSBicmVhayBicmVha3MgdGhlIGxvb3AuIHB1dF9yeF9idWZmZXIoKSB1bm1h
cHMgdGhlIHBhZ2UuCj4gU28gaW4gb3JkZXIgdG8gZG8gdGhlIGZpcnN0LCB5b3UgbmVlZCB0byBk
byB0aGUgc2Vjb25kIHRvIGF2b2lkIGxlYWtzLgo+IE9yIHlvdSBtZWFudCAid2h5IHVubWFwcGlu
ZyBhbmQgZnJlZWluZyBpZiB3ZSBmYWlsLCBqdXN0IGxlYXZlIGl0IGluCj4gcGxhY2UiPyBUbyBt
YWtlIGl0IGVhc2llciB0byBzd2l0Y2ggdG8gUGFnZSBQb29sLgoKU3BlY2lmaWNhbGx5IHlvdSBk
b24ndCB3YW50IHRvIGJlIHVubWFwcGluZyBhbmQgZnJlZWluZyB0aGlzIHBhZ2UKdW50aWwgYWZ0
ZXIgdGhlICFza2IgY2hlY2suIFRoZSBwcm9ibGVtIGlzIGlmIHNrYiBpcyBOVUxMIHRoZSBza2IK
YWxsb2NhdGlvbiBmYWlsZWQgYW5kIHNvIHByb2Nlc3Npbmcgb2YgUnggaXMgbWVhbnQgdG8gc3Rv
cCBpbiBwbGFjZQp3aXRob3V0IHJlbW92aW5nIHRoZSBwYWdlLiBJdCBpcyB3aGVyZSB3ZSB3aWxs
IHJlc3VtZSBvbiB0aGUgbmV4dCBwYXNzCmFzc3VtaW5nIG1lbW9yeSBoYXMgYmVlbiBmcmVlZCB0
aGF0IGNhbiB0aGVuIGJlIHVzZWQuIFRoZSBwcm9ibGVtIGlzCnRoZSBza2IgYWxsb2NhdGlvbiwg
bm90IHRoZSBwYWdlLiBXZSB1c2VkIHRvIGRvIHRoZSBza2IgYWxsb2NhdGlvbgpiZWZvcmUgd2Ug
d291bGQgYWNxdWlyZSB0aGUgYnVmZmVyLCBidXQgd2l0aCBYRFAgdGhlcmUgYXJlIGNhc2VzIHdo
ZXJlCndlIGFyZW4ndCBzdXBwb3NlZCB0byBhbGxvY2F0ZSBpdCBzbyBpdCBnb3QgbW92ZWQgdG8g
YWZ0ZXIgd2hpY2gKY2F1c2VzIHRoaXMgY29uZnVzaW9uLgoKPiA+Cj4gPj4gICAgICAgICAgICAg
ICAgIC8qIGV4aXQgaWYgd2UgZmFpbGVkIHRvIHJldHJpZXZlIGEgYnVmZmVyICovCj4gPj4gICAg
ICAgICAgICAgICAgIGlmICghc2tiKSB7Cj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgcnhf
cmluZy0+cnhfc3RhdHMuYWxsb2NfYnVmZl9mYWlsZWQrKzsKPiA+PiAtICAgICAgICAgICAgICAg
ICAgICAgICBpZiAocnhfYnVmZmVyICYmIHNpemUpCj4gPj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICByeF9idWZmZXItPnBhZ2VjbnRfYmlhcysrOwo+ID4+ICsgICAgICAgICAgICAg
ICAgICAgICAgIF9fZnJlZV9wYWdlcyhyeF9idWZmZXItPnBhZ2UsCj4gPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGlhdmZfcnhfcGdfb3JkZXIocnhfcmluZykpOwo+ID4+
ICsgICAgICAgICAgICAgICAgICAgICAgIHJ4X2J1ZmZlci0+cGFnZSA9IE5VTEw7Cj4gPj4gICAg
ICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPj4gICAgICAgICAgICAgICAgIH0KPiA+Cj4g
PiBUaGlzIGNvZGUgd2FzIHVuZG9pbmcgdGhlIGlhdmZfZ2V0X3J4X2J1ZmZlciBkZWNyZW1lbnQg
b2YgcGFnZWNudF9iaWFzCj4gPiBhbmQgdGhlbiBiYWlsaW5nIHNpbmNlIHdlIGhhdmUgaGFsdGVk
IGZvcndhcmQgcHJvZ3Jlc3MgZHVlIHRvIGFuIHNrYgo+ID4gYWxsb2NhdGlvbiBmYWlsdXJlLiBB
cyBzdWNoIHdlIHNob3VsZCBqdXN0IGJlIHJlbW92aW5nIHRoZSBpZgo+ID4gc3RhdGVtZW50IGFu
ZCB0aGUgaW5jcmVtZW50IG9mIHBhZ2VjbnRfYmlhcy4KClRoZSBrZXkgYml0IGhlcmUgaXMgdGhl
IGFsbG9jYXRpb24gZmFpbHVyZSBpcyB0aGUgcmVhc29uIHdoeSB3ZSBoYWx0ZWQKcHJvY2Vzc2lu
Zy4gU28gdGhlIHBhZ2UgY29udGFpbnMgdmFsaWQgZGF0YSBhbmQgc2hvdWxkIG5vdCBiZSBmcmVl
ZC4KV2UganVzdCBuZWVkIHRvIGxlYXZlIGl0IGluIHBsYWNlIGFuZCB3YWl0IGZvciBhbiBhbGxv
Y2F0aW9uIHRvCnN1Y2NlZWQgYW5kIHRoZW4gd2UgY2FuIHJlc3VtZSBwcm9jZXNzaW5nLgoKPiA+
Cj4gPj4KPiA+PiAtICAgICAgICAgICAgICAgaWF2Zl9wdXRfcnhfYnVmZmVyKHJ4X3JpbmcsIHJ4
X2J1ZmZlcik7Cj4gPj4gKyAgICAgICAgICAgICAgIHJ4X2J1ZmZlci0+cGFnZSA9IE5VTEw7Cj4g
Pj4gICAgICAgICAgICAgICAgIGNsZWFuZWRfY291bnQrKzsKPiA+Pgo+ID4+ICAgICAgICAgICAg
ICAgICBpZiAoaWF2Zl9pc19ub25fZW9wKHJ4X3JpbmcsIHJ4X2Rlc2MsIHNrYikpCj4gPgo+ID4g
SWYgaWF2Zl9wdXRfcnhfYnVmZmVyIGp1c3QgZG9lcyB0aGUgdW5tYXAgYW5kIGFzc2lnbm1lbnQg
b2YgTlVMTCB0aGVuCj4gPiBpdCBjb3VsZCBqdXN0IGJlIGxlZnQgaGVyZSBhcyBpcy4KPgo+IEkg
Z3Vlc3MgdGhvc2UgdHdvIGFyZSB0aWVkIHdpdGggdGhlIG9uZSBhYm92ZS4KClllYWgsIHRoZSBp
YXZmX3B1dF9yeF9idWZmZXIgc2hvdWxkIGJlIGxlZnQgIGRvd24gaGVyZS4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
