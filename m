Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CDF12339B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2019 18:33:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BDD087E62;
	Tue, 17 Dec 2019 17:33:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y6kLKtz7khSS; Tue, 17 Dec 2019 17:33:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1306D87E55;
	Tue, 17 Dec 2019 17:33:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 345E21BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 17:33:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F7D687E38
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 17:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w+llZxVZBd5q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2019 17:33:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6219887E30
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 17:33:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 09:33:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="227570830"
Received: from kprakasa-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.49.247])
 by orsmga002.jf.intel.com with ESMTP; 17 Dec 2019 09:33:15 -0800
To: Maxim Mikityanskiy <maximmi@mellanox.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <20191217162023.16011-1-maximmi@mellanox.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <cfe64691-7a0f-5b8a-d511-ebe742cec3c0@intel.com>
Date: Tue, 17 Dec 2019 18:33:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191217162023.16011-1-maximmi@mellanox.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf v2 0/4] Fix concurrency issues
 between XSK wakeup and control path using RCU
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAxOS0xMi0xNyAxNzoyMCwgTWF4aW0gTWlraXR5YW5za2l5IHdyb3RlOgo+IFRoaXMgc2Vy
aWVzIGFkZHJlc3NlcyB0aGUgaXNzdWUgZGVzY3JpYmVkIGluIHRoZSBjb21taXQgbWVzc2FnZSBv
ZiB0aGUKPiBmaXJzdCBwYXRjaDogbGFjayBvZiBzeW5jaHJvbml6YXRpb24gYmV0d2VlbiBYU0sg
d2FrZXVwIGFuZCBkZXN0cm95aW5nCj4gdGhlIHJlc291cmNlcyB1c2VkIGJ5IFhTSyB3YWtldXAu
IFRoZSBpZGVhIGlzIHNpbWlsYXIgdG8KPiBuYXBpX3N5bmNocm9uaXplLiBUaGUgc2VyaWVzIGNv
bnRhaW5zIGZpeGVzIGZvciB0aGUgZHJpdmVycyB0aGF0Cj4gaW1wbGVtZW50IFhTSy4gSSBoYXZl
bid0IHRlc3RlZCB0aGUgY2hhbmdlcyB0byBJbnRlbCdzIGRyaXZlcnMsIHNvLAo+IEludGVsIGd1
eXMsIHBsZWFzZSByZXZpZXcgdGhlbS4KPgoKTWF4LCB0aGFua3MgYSBsb3QgZm9yIGNvbXBpbGlu
ZyB0aGUgc2VyaWVzIG9uIHlvdXIgdmFjYXRpb24hCgoKQ2hlZXJzLApCasO2cm4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
