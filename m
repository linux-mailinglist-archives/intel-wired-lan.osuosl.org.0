Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 641F1261083
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 13:12:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D08728698E;
	Tue,  8 Sep 2020 11:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O8Ma9X8gKq5t; Tue,  8 Sep 2020 11:12:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3EC2886998;
	Tue,  8 Sep 2020 11:12:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D65231BF82B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:12:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D149D8620B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:12:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id frKKJe5NRABD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 11:12:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0C97A8698E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:12:16 +0000 (UTC)
IronPort-SDR: 8ETBSxm7GlwuXsEp3Io/EQE52ol4wIpyGTeWhuUzoV8VS1nv5kR7fQYg76EbDZVILa9VVL7yYq
 iGo0hJX61rGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="155512296"
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="155512296"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 04:12:15 -0700
IronPort-SDR: ebvqiBbYWXapEz4ci64bdBQOaYcK2mF5S/5oFyorAuRylRf//LSSu5CczC0iF3r2Si+jwAY83+
 zoimXcqZvq6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="284479300"
Received: from pgierasi-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.39.2])
 by fmsmga007.fm.intel.com with ESMTP; 08 Sep 2020 04:12:13 -0700
To: Paul Menzel <pmenzel@molgen.mpg.de>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>, ast@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, bpf@vger.kernel.org
References: <20200907150217.30888-1-bjorn.topel@gmail.com>
 <20200907150217.30888-5-bjorn.topel@gmail.com>
 <82901368-8e17-a63d-0e46-2434b5777c04@molgen.mpg.de>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <0fb03a39-d098-8fc9-ba70-e919ef8e091e@intel.com>
Date: Tue, 8 Sep 2020 13:12:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <82901368-8e17-a63d-0e46-2434b5777c04@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 4/4] ixgbe,
 xsk: use XSK_NAPI_WEIGHT as NAPI poll budget
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
Cc: kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0wOCAxMjoxMiwgUGF1bCBNZW56ZWwgd3JvdGU6Cj4gRGVhciBCasO2cm4sCj4g
Cj4gCj4gQW0gMDcuMDkuMjAgdW0gMTc6MDIgc2NocmllYiBCasO2cm4gVMO2cGVsOgo+PiBGcm9t
OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cj4+Cj4+IFN0YXJ0IHVzaW5n
IFhTS19OQVBJX1dFSUdIVCBhcyBOQVBJIHBvbGwgYnVkZ2V0IGZvciB0aGUgQUZfWERQIFJ4Cj4+
IHplcm8tY29weSBwYXRoLgo+IAo+IENvdWxkIHlvdSBwbGVhc2UgYWRkIHRoZSBkZXNjcmlwdGlv
biBmcm9tIHRoZSBwYXRjaCBzZXJpZXMgY292ZXIgbGV0dGVyIAo+IHRvIHRoaXMgY29tbWl0IHRv
bz8gVG8gbXkga25vd2xlZGdlLCB0aGUgbWVzc2FnZSBpbiB0aGUgY292ZXIgbGV0dGVyIAo+IHdv
buKAmXQgYmUgc3RvcmVkIGluIHRoZSBnaXQgcmVwb3NpdG9yeS4KPgoKUGF1bCwgdGhhbmtzIGZv
ciB0aGUgaW5wdXQhIFRoZSBuZXRkZXYvYnBmIHRyZWVzIGFsd2F5cyBpbmNsdWRlIHRoZSAKY292
ZXIgbGV0dGVyIGluIHRoZSBtZXJnZSBjb21taXQuCgoKQ2hlZXJzLApCasO2cm4KCj4+IFNpZ25l
ZC1vZmYtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPj4gLS0tCj4+
IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jIHwgMiArLQo+
PiDCoCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBb
4oCmXQo+IAo+IAo+IEtpbmQgcmVnYXJkcywKPiAKPiBQYXVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
