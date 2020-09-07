Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07ED525FB83
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Sep 2020 15:37:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1E7B861C5;
	Mon,  7 Sep 2020 13:37:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2bT4N2mG8uaw; Mon,  7 Sep 2020 13:37:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE742861CE;
	Mon,  7 Sep 2020 13:37:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19C7E1BF362
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 13:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 09A02867C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 13:37:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l-hVz7MvMpnx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Sep 2020 13:37:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 74583867C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 13:37:48 +0000 (UTC)
IronPort-SDR: Oyee6Dc32ZBgFeCBeWuLtOMk8ReCp5/VaJHg2NdVqUvoztARLlxlcCAU97FFIq/utqmweu0Vkg
 1/xZrBScWV9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9736"; a="158982501"
X-IronPort-AV: E=Sophos;i="5.76,401,1592895600"; d="scan'208";a="158982501"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2020 06:37:47 -0700
IronPort-SDR: MXbziBHXdLofMRVjhmFogHuU7akOLzGtpfMQCHdquu/U/fDRatsd7XICx8Fn931ptEmH5CxKBM
 MUZVua/bUfcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,401,1592895600"; d="scan'208";a="333166580"
Received: from clroth-mobl2.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.57.7])
 by orsmga008.jf.intel.com with ESMTP; 07 Sep 2020 06:37:41 -0700
To: Jakub Kicinski <kuba@kernel.org>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <20200904162751.632c4443@carbon>
 <27e05518-99c6-15e2-b801-cbc0310630ef@intel.com>
 <20200904165837.16d8ecfd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <1d2e781e-b26d-4cf0-0178-25b8835dbe26@intel.com>
Date: Mon, 7 Sep 2020 15:37:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200904165837.16d8ecfd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/6] xsk: exit NAPI loop when
 AF_XDP Rx ring is full
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
Cc: Eric Dumazet <eric.dumazet@gmail.com>, daniel@iogearbox.net,
 Jesper Dangaard Brouer <brouer@redhat.com>, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0wNSAwMTo1OCwgSmFrdWIgS2ljaW5za2kgd3JvdGU6CiA+IE9uIEZyaSwgNCBT
ZXAgMjAyMCAxNjozMjo1NiArMDIwMCBCasO2cm4gVMO2cGVsIHdyb3RlOgogPj4gT24gMjAyMC0w
OS0wNCAxNjoyNywgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKID4+PiBPbiBGcmksICA0
IFNlcCAyMDIwIDE1OjUzOjI1ICswMjAwCiA+Pj4gQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxA
Z21haWwuY29tPiB3cm90ZToKID4+PgogPj4+PiBPbiBteSBtYWNoaW5lIHRoZSAib25lIGNvcmUg
c2NlbmFyaW8gUnggZHJvcCIgcGVyZm9ybWFuY2Ugd2VudCBmcm9tCiA+Pj4+IH42NUtwcHMgdG8g
MjFNcHBzLiBJbiBvdGhlciB3b3JkcywgZnJvbSAibm90IHVzYWJsZSIgdG8KID4+Pj4gInVzYWJs
ZSIuIFlNTVYuCiA+Pj4KID4+PiBXZSBoYXZlIG9ic2VydmVkIHRoaXMga2luZCBvZiBkcm9wcGlu
ZyBvZmYgYW4gZWRnZSBiZWZvcmUgd2l0aCBzb2Z0aXJxCiA+Pj4gKHdoZW4gdXNlcnNwYWNlIHBy
b2Nlc3MgcnVucyBvbiBzYW1lIFJYLUNQVSksIGJ1dCBJIHRob3VnaHQgdGhhdCBFcmljCiA+Pj4g
RHVtYXpldCBzb2x2ZWQgaXQgaW4gNGNkMTNjMjFiMjA3ICgic29mdGlycTogTGV0IGtzb2Z0aXJx
ZCBkbyBpdHMgCmpvYiIpLgogPj4+CiA+Pj4gSSB3b25kZXIgd2hhdCBtYWtlcyBBRl9YRFAgZGlm
ZmVyZW50IG9yIGlmIHRoZSBwcm9ibGVtIGhhdmUgY29tZSBiYWNrPwogPj4+CiA+PgogPj4gSSB3
b3VsZCBzYXkgdGhpcyBpcyBub3QgdGhlIHNhbWUgaXNzdWUuIFRoZSBwcm9ibGVtIGlzIHRoYXQg
dGhlIHNvZnRpcnEKID4+IGlzIGJ1c3kgZHJvcHBpbmcgcGFja2V0cyBzaW5jZSB0aGUgQUZfWERQ
IFJ4IGlzIGZ1bGwuIFNvLCB0aGUgY3ljbGVzCiA+PiAqYXJlKiBzcGxpdCA1MC81MCwgd2hpY2gg
aXMgbm90IHdoYXQgd2Ugd2FudCBpbiB0aGlzIGNhc2UuIDotKQogPj4KID4+IFRoaXMgaXNzdWUg
aXMgbW9yZSBvZiBhICJJbnRlbCBBRl9YRFAgWkMgZHJpdmVycyBkb2VzIHN0dXBpZCB3b3JrIiwg
dGhhbgogPj4gZmFpcm5lc3MuIElmIHRoZSBSeCByaW5nIGlzIGZ1bGwsIHRoZW4gdGhlcmUgaXMg
cmVhbGx5IG5vIHVzZSB0byBsZXQgdGhlCiA+PiBOQVBJIGxvb3AgY29udGludWUuCiA+PgogPj4g
V291bGQgeW91IGFncmVlLCBvciBhbSBJIHJhbWJsaW5nPyA6LVAKID4KID4gSSB3b25kZXIgaWYg
a3NvZnRpcnFkIG5ldmVyIGtpY2tzIGluIGJlY2F1c2Ugd2UgYXJlIGFibGUgdG8gZGlzY2FyZAog
PiB0aGUgZW50aXJlIHJpbmcgYmVmb3JlIHdlIHJ1biBvdXQgb2Ygc29mdGlycSAic2xpY2UiLgog
PgoKVGhpcyBpcyBleGFjdGx5IHdoYXQncyBoYXBwZW5pbmcsIHNvIHdlJ3JlIGVudGVyaW5nIGEg
ImJ1c3kgcG9sbCBsaWtlIgpiZWhhdmlvcjsgc3lzY2FsbCwgcmV0dXJuIGZyb20gc3lzY2FsbCBz
b2Z0aXJxL25hcGksIHVzZXJsYW5kLgoKID4KID4gSSd2ZSBiZWVuIHBvbmRlcmluZyB0aGUgZXhh
Y3QgcHJvYmxlbSB5b3UncmUgc29sdmluZyB3aXRoIE1hY2llagogPiByZWNlbnRseS4gVGhlIGVm
ZmljaWVuY3kgb2YgQUZfWERQIG9uIG9uZSBjb3JlIHdpdGggdGhlIE5BUEkgcHJvY2Vzc2luZy4K
ID4KID4gWW91ciBzb2x1dGlvbiAoZXZlbiB0aG91Z2ggaXQgYWRtaXR0ZWRseSBoZWxwcywgYW5k
IGlzIHF1aXRlIHNpbXBsZSkKID4gc3RpbGwgaGFzIHRoZSBhcHBsaWNhdGlvbiBwb3RlbnRpYWxs
eSBub3QgYWJsZSB0byBwcm9jZXNzIHBhY2tldHMKID4gdW50aWwgdGhlIHF1ZXVlIGZpbGxzIHVw
LiBUaGlzIHdpbGwgYmUgYmFkIGZvciBsYXRlbmN5LgogPgogPiBXaHkgZG9uJ3Qgd2UgbW92ZSBj
bG9zZXIgdG8gYXBwbGljYXRpb24gcG9sbGluZz8gTmV2ZXIgcmUtYXJtIHRoZSBOQVBJCiA+IGFm
dGVyIFJYLCBsZXQgdGhlIGFwcGxpY2F0aW9uIGFzayBmb3IgcGFja2V0cywgcmUtYXJtIGlmIDAg
cG9sbGVkLgogPiBZb3UnZCBnZXQgbWF4IGJhdGNoaW5nLCBtaW4gbGF0ZW5jeS4KID4KID4gV2hv
J3MgdGhlIHJhbWJsaW5nIG9uZSBub3c/IDotRAogPgoKOi1EIE5vLCB0aGVzZSBhcmUgYWxsIHZl
cnkgZ29vZCBpZGVhcyEgV2UndmUgYWN0dWFsbHkgZXhwZXJpbWVudGVkCndpdGggaXQgd2l0aCB0
aGUgYnVzeS1wb2xsIHNlcmllcyBhIHdoaWxlIGJhY2sgLS0gTkFQSSBidXN5LXBvbGxpbmcKZG9l
cyBleGFjdGx5ICJhcHBsaWNhdGlvbiBwb2xsaW5nIi4KCkhvd2V2ZXIsIEkgd29uZGVyIGlmIHRo
ZSBidXN5LXBvbGxpbmcgd291bGQgaGF2ZSBiZXR0ZXIgcGVyZm9ybWFuY2UKdGhhbiB0aGUgc2Nl
bmFyaW8gYWJvdmUgKGkuZS4gd2hlbiB0aGUga3NvZnRpcnFkIG5ldmVyIGtpY2tzIGluKT8KRXhl
Y3V0aW5nIHRoZSBOQVBJIHBvbGwgKmV4cGxpY2l0bHkqIGluIHRoZSBzeXNjYWxsLCBvciBpbXBs
aWNpdGx5CmZyb20gdGhlIHNvZnRpcnEuCgpIbW0sIHRoaW5raW5nIG91dCBsb3VkIGhlcmUuIEEg
c2ltcGxlKHIpIHBhdGNoIGVuYWJsaW5nIGJ1c3kgcG9sbDsKRXhwb3J0aW5nIHRoZSBuYXBpX2lk
IHRvIHRoZSBBRl9YRFAgc29ja2V0ICh4ZHAtPnJ4cS0+bmFwaV9pZCB0bwpzay0+c2tfbmFwaV9p
ZCksIGFuZCBkbyB0aGUgc2tfYnVzeV9wb2xsX2xvb3AoKSBpbiBzZW5kbXNnLgoKT3IgZGlkIHlv
dSBoYXZlIHNvbWV0aGluZyBjb21wbGV0ZWx5IGRpZmZlcmVudCBpbiBtaW5kPwoKQXMgZm9yIHRo
aXMgcGF0Y2ggc2V0LCBJIHRoaW5rIGl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gcHVsbCBpdCBpbiBz
aW5jZQppdCBtYWtlcyB0aGUgc2luZ2xlLWNvcmUgc2NlbmFyaW8gKm11Y2gqIGJldHRlciwgYW5k
IGl0IGlzIHByZXR0eQpzaW1wbGUuIFRoZW4gZG8gdGhlIGFwcGxpY2F0aW9uIHBvbGxpbmcgYXMg
YW5vdGhlciwgcG90ZW50aWFsbHksCmltcHJvdmVtZW50IHNlcmllcy4KCgpUaG91Z2h0cz8gVGhh
bmtzIGEgbG90IGZvciB0aGUgZmVlZGJhY2shCkJqw7ZybgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
