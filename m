Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F239176BB78
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 19:39:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D9DA405D9;
	Tue,  1 Aug 2023 17:39:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D9DA405D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690911577;
	bh=CUNI8sWWqOuG5jcPikytAltHM4guBNVRlUyFxQr1a88=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3qF8ZHfHtZucN1LNlrB0x4iWl4nFKPRi7h+vZp4yBXkpZ2AXxnDpsQKQdNCrIovEz
	 a+sTJ4se2/LTBciZYLjIjqajAs00QZecwn4/WoQtpNnvWTsn32ysg6CWipRVsAvqic
	 gJzqI15kUNq++EeLa1UthtuTVmX2Jbu860S/ewoLkB1tEPxeA578Yiuvc3pTcenaZZ
	 u085MUZtYHa+tI3X89LgEsS3ukM8h+1RlUFnFO3JWXI/8o2JNxyJAfTc8dvSspFs+c
	 dQv9XslpcqliTrkok+6/27nXsf+AAIcZCD/VuBbFcW1SDfS1mY9bKdWO+4fqPOrYGy
	 J0b1ErIdj/Uag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VF7NKHqzALqK; Tue,  1 Aug 2023 17:39:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 305A340432;
	Tue,  1 Aug 2023 17:39:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 305A340432
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CC231BF97F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 17:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8D58360BA5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 17:39:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D58360BA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g-BBpkdRENqD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 17:39:26 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F814606C6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 17:39:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F814606C6
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="368270375"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="368270375"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 10:39:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="872149547"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.17])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 10:39:26 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20230801164534.2nklcql2nh6x6p7y@skbuf>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
 <20230613215440.2465708-8-vladimir.oltean@nxp.com>
 <877cs5twqn.fsf@intel.com> <20230801164534.2nklcql2nh6x6p7y@skbuf>
Date: Tue, 01 Aug 2023 10:39:23 -0700
Message-ID: <87o7jq64s4.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690911566; x=1722447566;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=UonUIoBUCNktB5rB1/gE9ziHWmQHQrb//uJtkHY7PGw=;
 b=JbW6xC4mbgOkiN3fCQbCHRq1S9r3MKBTb9uZz+wEZfhPgfwmU/syYORi
 /OMuJAKaAfF3lwE+qQaE+C14kTsxhNuoCbpejZdUce8ri9r073jMcMPFU
 kdJhquhbkoXbMTd8gh+fD/1WgrEEzb+gyv9pQi8k+6odMcHjjowCXK3Yg
 ZIoaG4A/4AZ9YMtdxsadm2bw1Rqv/ZEQFgqEKoBQ+qHt0IrUqzbpaEtJh
 nTq1MOTeJqlkAIwzx+1gS0kbWhr4YwKuxcFTy1nnQeiha1vGh119/JB8b
 Vfc6qw1rcwZ/YYpHpTTq0sTxU89JidtwC5JjhdpZNgt0QxDsnLbec+4uR
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JbW6xC4m
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 7/9] net: netdevsim: mimic
 tc-taprio offload
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Maxim Georgiev <glipus@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhengchao Shao <shaozhengchao@huawei.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgVmxhZGltaXIsCgpWbGFkaW1pciBPbHRlYW4gPHZsYWRpbWlyLm9sdGVhbkBueHAuY29tPiB3
cml0ZXM6Cgo+IE9uIFdlZCwgSnVuIDE0LCAyMDIzIGF0IDA1OjA2OjI0UE0gLTA3MDAsIFZpbmlj
aXVzIENvc3RhIEdvbWVzIHdyb3RlOgo+PiA+ICtzdGF0aWMgaW50IG5zaW1fc2V0dXBfdGNfdGFw
cmlvKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsCj4+ID4gKwkJCQlzdHJ1Y3QgdGNfdGFwcmlvX3Fv
cHRfb2ZmbG9hZCAqb2ZmbG9hZCkKPj4gPiArewo+PiA+ICsJaW50IGVyciA9IDA7Cj4+ID4gKwo+
PiA+ICsJc3dpdGNoIChvZmZsb2FkLT5jbWQpIHsKPj4gPiArCWNhc2UgVEFQUklPX0NNRF9SRVBM
QUNFOgo+PiA+ICsJY2FzZSBUQVBSSU9fQ01EX0RFU1RST1k6Cj4+ID4gKwkJYnJlYWs7Cj4+IAo+
PiBJIHdhcyB0aGlua2luZyBhYm91dCBob3cgdXNlZnVsIHdvdWxkIHByb3BlciB2YWxpZGF0aW9u
IG9mIHRoZQo+PiBwYXJhbWV0ZXJzIGJlPyBUaGlua2luZyB0aGF0IHdlIGNvdWxkIGRldGVjdCAi
ZHJpdmVyIEFQSSIgYnJlYWthZ2VzCj4+IGVhcmxpZXIsIGFuZCB3ZSB3YW50IGl0IGRvY3VtZW50
ZWQgdGhhdCB0aGUgZHJpdmVycyBzaG91bGQgY2hlY2sgZm9yIHRoZQo+PiB0aGluZ3MgdGhhdCBp
dCBzdXBwb3J0cy4KPj4gCj4+IE1ha2VzIHNlbnNlPwo+Cj4gU29ycnksIEkgbGFjayBpbWFnaW5h
dGlvbiBhcyB0byB3aGF0IHRoZSBuZXRkZXZzaW0gZHJpdmVyIG1heSBjaGVjayBmb3IuCj4gVGhl
IHRhcHJpbyBvZmZsb2FkIHBhcmFtZXRlcnMgc2hvdWxkIGFsd2F5cyBiZSB2YWxpZCwgcHJvcGVy
bHkgc3BlYWtpbmcsCj4gb3RoZXJ3aXNlIHRoZSBRZGlzYyB3b3VsZG4ndCBiZSBwYXNzaW5nIHRo
ZW0gb24gdG8gdGhlIGRyaXZlci4gQXQgbGVhc3QKPiB0aGF0IHdvdWxkIGJlIHRoZSBpbnRlbnRp
b24uIFRoZSByZXN0IGFyZSBoYXJkd2FyZSBzcGVjaWZpYyBjaGVja3MgZm9yCj4gaGFyZHdhcmUg
c3BlY2lmaWMgbGltaXRhdGlvbnMuIEhlcmUgdGhlcmUgaXMgbm8gaGFyZHdhcmUuCj4KClRyeWlu
ZyB0byByZW1lbWJlciB3aGF0IHdhcyBnb2luZyB0aHJvdWdoIG15IG1pbmQgd2hlbiBJIHNhaWQg
dGhhdC4KCldoYXQgSSBzZWVtIHRvIHJlY2FsbCBpcyBzb21ldGhpbmcgdGhhdCB3b3VsZCBoZWxw
IHVzICJrZWVwIGhvbmVzdCI6Ckkgd2FzIHdvcnJ5aW5nIGFib3V0IHNvbWVvbmUgKHBlcmhhcHMg
bXlzZWxmIDstKSBzbmVha2luZyBhIG5ldyBmZWF0dXJlCmluIHRhcHJpbyBhbmQgZm9yZ2V0dGlu
ZyB0byB1cGRhdGUgb3RoZXIgZHJpdmVycy4KCkkgdGhvdWdodCB0aGF0IGFkZGluZyBhIGNoZWNr
IGZvciB0aGUgZXhpc3RpbmcgcGFyYW1ldGVycyB3b3VsZCBoZWxwCmRldGVjdCB0aG9zZSBraW5k
IG9mIHRoaW5ncy4gSWYgYW55dGhpbmcgdW5rbm93biB3YXMgdGhlcmUgaW4gdGhlCm9mZmxvYWQg
c3RydWN0LCBuZXRkZXZzaW0gd291bGQgY29tcGxhaW4gbG91ZGx5LgoKUGVyaGFwcyBJIHdhcyB3
b3JyeWluZyB0b28gbXVjaC4gQW5kIHRoZSB3YXkgdG8gc29sdmUgdGhhdCBpcyB0byBrZWVwCmFj
dGl2ZSBhdHRlbnRpb24gYWdhaW5zdCB0aGF0IGR1cmluZyByZXZpZXcuCgo+IFRoZSBwYXJhbWV0
ZXJzIHBhc3NlZCB0byBUQVBSSU9fQ01EX1JFUExBQ0UgYXJlOgo+Cj4gc3RydWN0IHRjX21xcHJp
b19xb3B0X29mZmxvYWQgbXFwcmlvOgo+IAlzdHJ1Y3QgdGNfbXFwcmlvX3FvcHQgcW9wdDogdmFs
aWRhdGVkIGJ5IHRhcHJpb19wYXJzZV9tcXByaW9fb3B0KCkgZm9yIGZsYWdzIDB4Mgo+IAl1MTYg
bW9kZTogYWx3YXlzIHNldCB0byBUQ19NUVBSSU9fTU9ERV9EQ0IKPiAJdTE2IHNoYXBlcjogYWx3
YXlzIHNldCB0byBUQ19NUVBSSU9fU0hBUEVSX0RDQgo+IAl1MzIgZmxhZ3M6IGFsd2F5cyBzZXQg
dG8gMAo+IAl1NjQgbWluX3JhdGVbVENfUU9QVF9NQVhfUVVFVUVdOiBhbHdheXMgc2V0IHRvIFsw
LF0KPiAJdTY0IG1heF9yYXRlW1RDX1FPUFRfTUFYX1FVRVVFXTogYWx3YXlzIHNldCB0byBbMCxd
Cj4gCXVuc2lnbmVkIGxvbmcgcHJlZW1wdGlibGVfdGNzOiBhbHdheXMgc2V0IHRvIDAsIGJlY2F1
c2UgZXRodG9vbF9kZXZfbW1fc3VwcG9ydGVkKCkgcmV0dXJucyBmYWxzZQo+Cj4ga3RpbWVfdCBi
YXNlX3RpbWU6IGFueSB2YWx1ZSBpcyB2YWxpZAo+Cj4gdTY0IGN5Y2xlX3RpbWU6IGFueSB2YWx1
ZSBpcyB2YWxpZAo+Cj4gdTY0IGN5Y2xlX3RpbWVfZXh0ZW5zaW9uOiBhbnkgdmFsdWUgPD0gY3lj
bGVfdGltZSBpcyB2YWxpZC4gQWNjb3JkaW5nIHRvIDgwMi4xUQo+IAkJCSAgIlEuNSBDeWNsZVRp
bWVFeHRlbnNpb24gdmFyaWFibGVzIiwgaXQncyB0aGUgbWF4aW11bQo+IAkJCSAgYW1vdW50IGJ5
IHdoaWNoIHRoZSBwZW51bHRpbWF0ZSBjeWNsZSBjYW4gYmUgZXh0ZW5kZWQKPiAJCQkgIHRvIGF2
b2lkIGEgdmVyeSBzaG9ydCBjeWNsZSB1cG9uIGEgQ29uZmlnQ2hhbmdlIGV2ZW50Lgo+IAkJCSAg
QnV0IGlmIEN5Y2xlVGltZUV4dGVuc2lvbiBpcyBsYXJnZXIgdGhhbiBvbmUgQ3ljbGVUaW1lLAo+
IAkJCSAgdGhlbiB3ZSdyZSBub3QgZXZlbiB0YWxraW5nIGFib3V0IHRoZSBwZW51bHRpbWF0ZSBj
eWNsZQo+IAkJCSAgYW55bW9yZSwgYnV0IGFib3V0IG9uZXMgcHJldmlvdXMgdG8gdGhhdD8hIE1h
eWJlIHRoaXMKPiAJCQkgIHNob3VsZCBiZSBsaW1pdGVkIHRvIDAgPD0gY3ljbGVfdGltZV9leHRl
bnNpb24gPD0gY3ljbGVfdGltZQo+IAkJCSAgYnkgdGFwcmlvLCBjZXJ0YWlubHkgbm90IGJ5IG9m
ZmxvYWRpbmcgZHJpdmVycy4KPgoKR29vZCBwb2ludC4gSSBoYXZlIHRvIHJldmlldyA4MDIuMVEs
IGJ1dCBmcm9tIHdoYXQgSSByZW1lbWJlciB0aGF0CnNvdW5kcyByaWdodCwgY3ljbGVfdGltZV9l
eHRlbnNpb24gZ3JlYXRlciB0aGFuIGN5Y2xlX3RpbWUgZG9lc24ndCBtYWtlCm11Y2ggc2Vuc2Uu
IEhhdmluZyBhIGNoZWNrIGZvciBpdCBpbiB0YXByaW8gaXRzZWxmIHNvdW5kcyBnb29kLgoKPiB1
MzIgbWF4X3NkdVtUQ19NQVhfUVVFVUVdOiBsaW1pdGVkIHRvIGEgdmFsdWUgPD0gZGV2LT5tYXhf
bXR1IGJ5IHRhcHJpbwo+Cj4gc2l6ZV90IG51bV9lbnRyaWVzOiBhbnkgdmFsdWUgaXMgdmFsaWQK
Pgo+IHN0cnVjdCB0Y190YXByaW9fc2NoZWRfZW50cnkgZW50cmllc1tdOgo+IAl1OCBjb21tYW5k
OiB3aWxsIGJlIGVpdGhlciBvbmUgb2Y6IFRDX1RBUFJJT19DTURfU0VUX0dBVEVTLCBUQ19UQVBS
SU9fQ01EX1NFVF9BTkRfSE9MRAo+IAkJICAgIG9yIFRDX1RBUFJJT19DTURfU0VUX0FORF9SRUxF
QVNFLiBIb3dldmVyIDgwMi4xUSAiVGFibGUgOC034oCUR2F0ZSBvcGVyYXRpb25zIgo+IAkJICAg
IHNheXMgIklmIGZyYW1lIHByZWVtcHRpb24gaXMgbm90IHN1cHBvcnRlZCBvciBub3QgZW5hYmxl
ZCAocHJlZW1wdGlvbkFjdGl2ZSBpcwo+IAkJICAgIEZBTFNFKSwgdGhpcyBvcGVyYXRpb24gYmVo
YXZlcyB0aGUgc2FtZSBhcyBTZXRHYXRlU3RhdGVzLiIuIFNvIEkKPiAJCSAgICBzZWUgbm8gcmVh
c29uIHRvIGVuZm9yY2UgYW55IHJlc3RyaWN0aW9uIGhlcmUgZWl0aGVyPwo+Cj4gCXUzMiBnYXRl
X21hc2s6IHRlY2huaWNhbGx5IGNhbiBoYXZlIGJpdHMgc2V0LCB3aGljaCBjb3JyZXNwb25kCj4g
CQkgICAgICAgdG8gdHJhZmZpYyBjbGFzc2VzIGxhcmdlciB0aGFuIGRldi0+bnVtX3RjLgo+IAkJ
ICAgICAgIFRhcHJpbyBjYW4gZW5mb3JjZSB0aGlzLCBzbyBJIHdvdWxkbid0IHNlZQo+IAkJICAg
ICAgIGRyaXZlcnMgYmVnaW5uaW5nIHRvIGZlZWwgcGFyYW5vaWQgYWJvdXQgaXQuCj4gCQkgICAg
ICAgQWN0dWFsbHkgSSBoYWQgYSBwYXRjaCBhYm91dCB0aGlzOgo+IAkJICAgICAgIGh0dHBzOi8v
cGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9uZXRkZXZicGYvcGF0Y2gvMjAyMzAxMzAxNzMx
NDUuNDc1OTQzLTE1LXZsYWRpbWlyLm9sdGVhbkBueHAuY29tLwo+IAkJICAgICAgIGJ1dCBJIGRl
Y2lkZWQgdG8gZHJvcCBpdCBiZWNhdXNlIEkgZGlkbid0IGhhdmUKPiAJCSAgICAgICBhbnkgc3Ry
b25nIGNhc2UgZm9yIGl0Lgo+IAl1MzIgaW50ZXJ2YWw6IGFueSB2YWx1ZSBpcyB2YWxpZC4gSWYg
dGhlIHN1bSBvZiBlbnRyeSBpbnRlcnZhbHMKPiAJCSAgICAgIGlzIGxlc3MgdGhhbiB0aGUgY3lj
bGVfdGltZSwgYWdhaW4gdGhhdCdzIHRhcHJpbydzCj4gCQkgICAgICBwcm9ibGVtIHRvIGNoZWNr
IGZvciwgaW4gaXRzIG5ldGxpbmsgYXR0cmlidXRlCj4gCQkgICAgICB2YWxpZGF0aW9uIG1ldGhv
ZCByYXRoZXIgdGhhbiBvZmZsb2FkaW5nIGRyaXZlcnMuCj4KClRoYW5rIHlvdSBmb3IgdGhlIHRp
bWUgaXQgdG9vayB0byBnaXZlIHRoaXMgYW1vdW50IG9mIGRldGFpbC4KCgpDaGVlcnMsCi0tIApW
aW5pY2l1cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
