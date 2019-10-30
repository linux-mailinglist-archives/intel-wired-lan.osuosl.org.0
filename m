Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3B8E9AAC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2019 12:21:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6D9DE20380;
	Wed, 30 Oct 2019 11:21:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j8BijLSqiZsZ; Wed, 30 Oct 2019 11:21:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9D94D21515;
	Wed, 30 Oct 2019 11:21:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 164DF1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2019 11:21:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1230186C80
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2019 11:21:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v85MqbUuHEIm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2019 11:21:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4A2FF86C7E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2019 11:21:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 04:21:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,247,1569308400"; d="scan'208";a="400110922"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga005.fm.intel.com with ESMTP; 30 Oct 2019 04:21:36 -0700
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20191030090848.20842-1-sasha.neftin@intel.com>
 <090fd6fa-bccd-ff67-8326-6eed7a9d5d56@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <57c07cd2-1a89-f20a-0fd2-2062415edf93@intel.com>
Date: Wed, 30 Oct 2019 13:21:35 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <090fd6fa-bccd-ff67-8326-6eed7a9d5d56@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add scatter gather support
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMzAvMjAxOSAxMTo0MywgUGF1bCBNZW56ZWwgd3JvdGU6Cj4gRGVhciBTYXNoYSwKPiAK
PiAKPiBPbiAzMC4xMC4xOSAxMDowOCwgU2FzaGEgTmVmdGluIHdyb3RlOgo+PiBTY2F0dGVyIGdh
dGhlciBpcyB1c2VkIHRvIGRvIERNQSBkYXRhIHRyYW5zZmVycyBvZiBkYXRhIHRoYXQgaXMgCj4+
IHdyaXR0ZW4gdG8KPj4gbm9uY29udGlndW91cyBhcmVhcyBvZiBtZW1vcnkuCj4+IFRoaXMgcGF0
Y2ggZW5hYmxlIHNjYXR0ZXIgZ2F0aGVyIHN1cHBvcnQuCj4gCj4gZW5hYmxlKnMqCj4gClRoYW5r
cyBQYXVsIC0gSSB3aWxsIGZpeCBpdCBhbmQgc3VibWl0IHYyLgo+IERvIHlvdSBoYXZlIG51bWJl
cnMsIGlmIGFuZCBob3cgdGhpcyBpbXByb3ZlcyBwZXJmb3JtYW5jZT8KPiAKWWVzLCBJJ3ZlIGNo
ZWNrZWQgb24gdHdvIG1hY2hpbmVzIHdpdGggaTIyNSBIVy4gRm9yIGV4YW1wbGUsIEkndmUgCm9i
c2VydmVkIGFzIGZvbGxvdyBhdCAyLjVHYnBzIGxpbmsgc3BlZWQ6CnNnCW9uIAlvZmYKdGNwCTIz
NTIuOTMJMjM0Mi4xOSBzbGlnaHRseSBpbXByb3ZlZAp1ZHAJMjQwMy45NwkyNDAzLjQ5IGFsbW9z
dCBubyBpbXBhY3QKR2VuZXJhbGx5LCBJIHNlZSB0aGUgVENQIHN0cmVhbSBtb3JlIGFmZmVjdGVk
LgpCdXQgeW91IGNvdWxkIG9ic2VydmUgZGlmZmVyZW50IGJlaGF2aW9yIG9uIGRpZmZlcmVudCBt
YWNoaW5lcy4KPiBIb3cgY2FuIHRoaXMgYmUgdGVzdGVkPwo+IAo+IFvigKZdCkkgdXNlZCBuZXRw
ZXJmIG9uIG15IG1hY2hpbmVzLgo+IAo+IAo+IEtpbmQgcmVnYXJkcywKPiAKPiBQYXVsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
