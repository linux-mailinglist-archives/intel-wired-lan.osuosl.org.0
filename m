Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9226C755BBF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 08:32:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8223B40F4E;
	Mon, 17 Jul 2023 06:32:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8223B40F4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689575570;
	bh=fgudTlvYyjoG6jkuCTCG2N22anL1P9DPrDI5yZVQQTI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=By1Zxz2fQsuwVB/wa4C+RsviV4MEwbDgoUxZTia0s4iiWRXy+n11J+QuQWQveBvLl
	 JOhHoKIknsvD3ZDKWroB++n+GUdEGhrQxuex9Osk9INFN9FCDPA5pH4P8ZXZHdBF/H
	 8XiBvs4BUMWuzI2iIie4wjgdPADyaNRsYS82aZ1e8bvUb1+oYc+ZDj8ADOHiI3lLrP
	 u6CKDYN+fTkObjp8JCjMQOhMOuunkIDm8JDZF8Dw8F2x3d8MAtldeIZ69w0kUuUk7S
	 QEb8cXiAq1V/Hv2cuUII7teFUOOPxO2mLJ2qoavsTuiHE324LyxvvqWYa+qYu19wRJ
	 92UbfHOHTKk9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-mX-7y7m2oN; Mon, 17 Jul 2023 06:32:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F12940E46;
	Mon, 17 Jul 2023 06:32:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F12940E46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1FED71BF306
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 06:32:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0297D40E46
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 06:32:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0297D40E46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xUBwIPM5vrnn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 06:32:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57A2A40A01
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57A2A40A01
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 06:32:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="350721121"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="350721121"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2023 23:32:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="788532240"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="788532240"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.54])
 ([10.13.12.54])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2023 23:32:36 -0700
Message-ID: <68dcdf3c-226c-9a94-0860-68c6d4b8ca0e@linux.intel.com>
Date: Mon, 17 Jul 2023 09:32:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Florian Kauer <florian.kauer@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vedang Patel <vedang.patel@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>, Andre Guedes
 <andre.guedes@intel.com>, Simon Horman <simon.horman@corigine.com>
References: <20230630120306.8534-1-florian.kauer@linutronix.de>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230630120306.8534-1-florian.kauer@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689575562; x=1721111562;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=UIvScjBMq2tJ7obc7FO/ZTmBFLS/+sEbi6AjYJ3oqcc=;
 b=BT/9+IXhbgKgcCBzQy6mYEkMXdirLWUm5Ya6iv46LOb7zqr7u/8Ow33c
 k3Fu3ZGWAV0R+uFE5IcNxzKiORB9hXy/40hkOPotLGlb0sZAbnLtUxU9P
 uVpklhfVZkVfbsgfBIN8srS7by6ZZL50whXKWeNGrfL/FAV+Z6kn/OQTr
 OzbezQAfpc7A3OFquHML5ZyQt04GqzHOMun7PQ3X3ZWTJcJPMJdrUsU9S
 BaXYtewzNhqRSyIERskt6VYh3alCGMXSMbTXrBTT4UwOFhZ0iabj/dwof
 VQiace8CR+dHfvhHo1bm8z+I8dOMCIKZSDWw6nM2al1suKn1UBFPTN9bk
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BT/9+IXh
Subject: Re: [Intel-wired-lan] [PATCH net v3] igc: Prevent garbled TX queue
 with XDP ZEROCOPY
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNi8zMC8yMDIzIDE1OjAzLCBGbG9yaWFuIEthdWVyIHdyb3RlOgo+IEluIG5vcm1hbCBvcGVy
YXRpb24sIGVhY2ggcG9wdWxhdGVkIHF1ZXVlIGl0ZW0gaGFzCj4gbmV4dF90b193YXRjaCBwb2lu
dGluZyB0byB0aGUgbGFzdCBUWCBkZXNjIG9mIHRoZSBwYWNrZXQsCj4gd2hpbGUgZWFjaCBjbGVh
bmVkIGl0ZW0gaGFzIGl0IHNldCB0byAwLiBJbiBwYXJ0aWN1bGFyLAo+IG5leHRfdG9fdXNlIHRo
YXQgcG9pbnRzIHRvIHRoZSBuZXh0IChuZWNlc3NhcmlseSBjbGVhbikKPiBpdGVtIHRvIHVzZSBo
YXMgbmV4dF90b193YXRjaCBzZXQgdG8gMC4KPiAKPiBXaGVuIHRoZSBUWCBxdWV1ZSBpcyB1c2Vk
IGJvdGggYnkgYW4gYXBwbGljYXRpb24gdXNpbmcKPiBBRl9YRFAgd2l0aCBaRVJPQ09QWSBhcyB3
ZWxsIGFzIGEgc2Vjb25kIG5vbi1YRFAgYXBwbGljYXRpb24KPiBnZW5lcmF0aW5nIGhpZ2ggdHJh
ZmZpYywgdGhlIHF1ZXVlIHBvaW50ZXJzIGNhbiBnZXQgaW4KPiBhbiBpbnZhbGlkIHN0YXRlIHdo
ZXJlIG5leHRfdG9fdXNlIHBvaW50cyB0byBhbiBpdGVtCj4gd2hlcmUgbmV4dF90b193YXRjaCBp
cyBOT1Qgc2V0IHRvIDAuCj4gCj4gSG93ZXZlciwgdGhlIGltcGxlbWVudGF0aW9uIGFzc3VtZXMg
YXQgc2V2ZXJhbCBwbGFjZXMKPiB0aGF0IHRoaXMgaXMgbmV2ZXIgdGhlIGNhc2UsIHNvIGlmIGl0
IGRvZXMgaG9sZCwKPiBiYWQgdGhpbmdzIGhhcHBlbi4gSW4gcGFydGljdWxhciwgd2l0aGluIHRo
ZSBsb29wIGluc2lkZQo+IG9mIGlnY19jbGVhbl90eF9pcnEoKSwgbmV4dF90b19jbGVhbiBjYW4g
b3ZlcnRha2UgbmV4dF90b191c2UuCj4gRmluYWxseSwgdGhpcyBwcmV2ZW50cyBhbnkgZnVydGhl
ciB0cmFuc21pc3Npb24gdmlhCj4gdGhpcyBxdWV1ZSBhbmQgaXQgbmV2ZXIgZ2V0cyB1bmJsb2Nr
ZWQgb3Igc2lnbmFsZWQuCj4gU2Vjb25kbHksIGlmIHRoZSBxdWV1ZSBpcyBpbiB0aGlzIGdhcmJs
ZWQgc3RhdGUsCj4gdGhlIGlubmVyIGxvb3Agb2YgaWdjX2NsZWFuX3R4X3JpbmcoKSB3aWxsIG5l
dmVyIHRlcm1pbmF0ZSwKPiBjb21wbGV0ZWx5IGhvZ2dpbmcgYSBDUFUgY29yZS4KPiAKPiBUaGUg
cmVhc29uIGlzIHRoYXQgaWdjX3hkcF94bWl0X3pjKCkgcmVhZHMgbmV4dF90b191c2UKPiBiZWZv
cmUgYWNxdWlyaW5nIHRoZSBsb2NrLCBhbmQgd3JpdGluZyBpdCBiYWNrCj4gKHBvdGVudGlhbGx5
IHVubW9kaWZpZWQpIGxhdGVyLiBJZiBpdCBnb3QgbW9kaWZpZWQKPiBiZWZvcmUgbG9ja2luZywg
dGhlIG91dGRhdGVkIG5leHRfdG9fdXNlIGlzIHdyaXR0ZW4KPiBwb2ludGluZyB0byBhbiBpdGVt
IHRoYXQgd2FzIGFscmVhZHkgdXNlZCBlbHNld2hlcmUKPiAoYW5kIHRodXMgbmV4dF90b193YXRj
aCBnb3Qgd3JpdHRlbikuCj4gCj4gRml4ZXM6IDlhY2Y1OWE3NTJkNCAoImlnYzogRW5hYmxlIFRY
IHZpYSBBRl9YRFAgemVyby1jb3B5IikKPiBTaWduZWQtb2ZmLWJ5OiBGbG9yaWFuIEthdWVyIDxm
bG9yaWFuLmthdWVyQGxpbnV0cm9uaXguZGU+Cj4gUmV2aWV3ZWQtYnk6IEt1cnQgS2FuemVuYmFj
aCA8a3VydEBsaW51dHJvbml4LmRlPgo+IFRlc3RlZC1ieTogS3VydCBLYW56ZW5iYWNoIDxrdXJ0
QGxpbnV0cm9uaXguZGU+Cj4gQWNrZWQtYnk6IFZpbmljaXVzIENvc3RhIEdvbWVzIDx2aW5pY2l1
cy5nb21lc0BpbnRlbC5jb20+Cj4gLS0tCj4gCj4gdjIgLT4gdjM6Cj4gUmVzb2x2ZSBtZXJnZSBj
b25mbGljdAo+IAo+IHYxIC0+IHYyOgo+IEkgYWRkZWQgc29tZSBtb3JlIGNvbnRleHQgZm9yIGZ1
cnRoZXIgY2xhcmlmaWNhdGlvbiwKPiBidXQgaXQgaXMgYWxzbyBqdXN0IGhvdyBJIGludGVycHJl
dCB0aGUgY29kZS4KPiBBbHNvIHRoZSB0eXBvIGlzIGZpeGVkIGFuZCBpdCBpcyByZXZlcnNlIGNo
cmlzdG1hcyBhZ2FpbiDwn5iJCj4gCj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2MvaWdjX21haW4uYyB8IDQgKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKClRlc3RlZC1ieTogTmFhbWEgTWVpciA8bmFhbWF4Lm1laXJA
bGludXguaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
