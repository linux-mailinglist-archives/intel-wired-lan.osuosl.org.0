Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 640DF447333
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Nov 2021 15:08:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92F5880C6C;
	Sun,  7 Nov 2021 14:08:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PPRKlx9hUbLw; Sun,  7 Nov 2021 14:08:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 610E880C3E;
	Sun,  7 Nov 2021 14:08:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79CF91BF426
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Nov 2021 14:08:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 751BE40250
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Nov 2021 14:08:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id orieNzCoKd5b for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Nov 2021 14:08:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A518540288
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Nov 2021 14:08:48 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id BFDE0580870;
 Sun,  7 Nov 2021 09:08:47 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Sun, 07 Nov 2021 09:08:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; bh=LPXxBZ9hcKFsIAG6Gh0OKT3ko6pm8TaBuYfdcJ5X5
 eY=; b=cp9wxbFACt6kl6FJUezJwPTN6VfQwO8PU1xNaWhgh1o3d1T5TYslJchq4
 HzzSx+NEKk7a64V8D3Z0tPKGR4Q7CNMrYtFczQn7ysuCJcP3T6bMmKgmGf62xWvs
 Rdcjd8gXx91X+vDk9OJDv+0Ai5FonJM9/FwSpMKD8UcqEnl3FtqZ2TRicxAV0in5
 79kvVkbCwm2Mo9sxaepsqSjYXG1RJOlrxKoMvCV4RHZiqW36JMBJ9YSxr6gRJYRB
 etZXCsy4/hNrYTDK2F5EAkjz9cRq3IRaB66J8ULvTHu8JP03bd/pqxTfyt2tW/Rr
 l7zbX8aoIuoolZzT6uvAvdD4b0p9A==
X-ME-Sender: <xms:792HYXl2hKbk2AAteLcXf16AXazh7FalS3YinUwZ0eCOAuC0sgeHWw>
 <xme:792HYa1DWVZ_hSyjWDeu_AAicJCOimXrP6BMpIRfK1wrMfkccUWA9qO0pZd8IEiYD
 g1bt2CyDUdrZC8>
X-ME-Received: <xmr:792HYdqWq1ca-d0tBvdQe6Knu4FS5ArbsXN9eunr6nTXlBxMqrV-FDlrc-98>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddruddtgdeitdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpeeugfejfeeviedvkedtgfeghfegvedugeevgfetudfgteevveeutdfghfekgfeg
 gfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:792HYfmCct8Si5lLS7pgXiKTnv0c6VZy6YjnNcocJG1gIFwiTkTYdg>
 <xmx:792HYV0-Pe0BR919C3pojr7m73QPXVcsBtBAXom6aTZg6xoq2iRGtA>
 <xmx:792HYeu3va0dvHylOGh1Mq-qlRXeANfguIsvEF1akjm4j-_tiJmchQ>
 <xmx:792HYfxTAncxmaimRXKiLOyTqaYm3yd2fQCuydeJMeGfJ2D4giUu4A>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Nov 2021 09:08:46 -0500 (EST)
Date: Sun, 7 Nov 2021 16:08:44 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <YYfd7DCFFtj/x+zQ@shredder>
References: <20211105205331.2024623-1-maciej.machnikowski@intel.com>
 <20211105205331.2024623-7-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211105205331.2024623-7-maciej.machnikowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 6/6] docs: net: Add
 description of SyncE interfaces
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
Cc: mkubecek@suse.cz, abyagowi@fb.com, netdev@vger.kernel.org,
 richardcochran@gmail.com, saeed@kernel.org, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, michael.chan@broadcom.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBOb3YgMDUsIDIwMjEgYXQgMDk6NTM6MzFQTSArMDEwMCwgTWFjaWVqIE1hY2huaWtv
d3NraSB3cm90ZToKPiBBZGQgRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3N5bmNlLnJzdCBkZXNj
cmliaW5nIG5ldyBSVE5MIG1lc3NhZ2VzCj4gYW5kIHJlc3BlY3RpdmUgTkRPIG9wcyBzdXBwb3J0
aW5nIFN5bmNFIChTeW5jaHJvbm91cyBFdGhlcm5ldCkuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFj
aWVqIE1hY2huaWtvd3NraSA8bWFjaWVqLm1hY2huaWtvd3NraUBpbnRlbC5jb20+Cj4gLS0tCj4g
IERvY3VtZW50YXRpb24vbmV0d29ya2luZy9zeW5jZS5yc3QgfCAxMTcgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDExNyBpbnNlcnRpb25zKCspCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvc3luY2UucnN0Cj4gCj4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9zeW5jZS5yc3QgYi9Eb2N1bWVu
dGF0aW9uL25ldHdvcmtpbmcvc3luY2UucnN0Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjRjYTQxZmI5YTQ4MQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1
bWVudGF0aW9uL25ldHdvcmtpbmcvc3luY2UucnN0Cj4gQEAgLTAsMCArMSwxMTcgQEAKPiArLi4g
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiArCj4gKz09PT09PT09PT09PT09PT09
PT09Cj4gK1N5bmNocm9ub3VzIEV0aGVybmV0Cj4gKz09PT09PT09PT09PT09PT09PT09Cj4gKwo+
ICtTeW5jaHJvbm91cyBFdGhlcm5ldCBuZXR3b3JrcyB1c2UgYSBwaHlzaWNhbCBsYXllciBjbG9j
ayB0byBzeW50b25pemUKPiArdGhlIGZyZXF1ZW5jeSBhY3Jvc3MgZGlmZmVyZW50IG5ldHdvcmsg
ZWxlbWVudHMuCj4gKwo+ICtCYXNpYyBTeW5jRSBub2RlIGRlZmluZWQgaW4gdGhlIElUVS1UIEcu
ODI2NCBjb25zaXN0IG9mIGFuIEV0aGVybmV0Cj4gK0VxdWlwbWVudCBDbG9jayAoRUVDKSBhbmQg
YSBQSFkgdGhhdCBoYXMgZGVkaWNhdGVkIG91dHB1dHMgb2YgcmVjb3ZlcmVkIGNsb2Nrcwo+ICth
bmQgYSBkZWRpY2F0ZWQgVFggY2xvY2sgaW5wdXQgdGhhdCBpcyB1c2VkIGFzIHRvIHRyYW5zbWl0
IGRhdGEgdG8gb3RoZXIgbm9kZXMuCj4gKwo+ICtUaGUgU3luY0UgY2FwYWJsZSBQSFkgaXMgYWJs
ZSB0byByZWNvdmVyIHRoZSBpbmNvbW5pbmcgZnJlcXVlbmN5IG9mIHRoZSBkYXRhCj4gK3N0cmVh
bSBvbiBSWCBsYW5lcyBhbmQgcmVkaXJlY3QgaXQgKHNvbWV0aW1lcyBkaXZpZGluZyBpdCkgdG8g
cmVjb3ZlcmVkCj4gK2Nsb2NrIG91dHB1dHMuIEluIFN5bmNFIFBIWSB0aGUgVFggZnJlcXVlbmN5
IGlzIGRpcmVjdGx5IGRlcGVuZGVudCBvbiB0aGUKPiAraW5wdXQgZnJlcXVlbmN5IC0gZWl0aGVy
IG9uIHRoZSBQSFkgQ0xLIGlucHV0LCBvciBvbiBhIGRlZGljYXRlZAo+ICtUWCBjbG9jayBpbnB1
dC4KPiArCj4gKyAgICAgIOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUrOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUkAo+ICsgICAgICDilIIgUlggICAgICAgIOKU
giBUWCAgICAgICDilIIKPiArICAxICAg4pSCIGxhbmVzICAgICDilIIgbGFuZXMgICAg4pSCIDEK
PiArICDilIDilIDilIDilrrilJzilIDilIDilIDilIDilIDilIDilJAgICAg4pSCICAgICAgICAg
IOKUnOKUgOKUgOKUgOKUgOKUgOKWugo+ICsgIDIgICDilIIgICAgICDilIIgICAg4pSCICAgICAg
ICAgIOKUgiAyCj4gKyAg4pSA4pSA4pSA4pa64pSc4pSA4pSA4pSQICAg4pSCICAgIOKUgiAgICAg
ICAgICDilJzilIDilIDilIDilIDilIDilroKPiArICAzICAg4pSCICDilIIgICDilIIgICAg4pSC
ICAgICAgICAgIOKUgiAzCj4gKyAg4pSA4pSA4pSA4pa64pSc4pSA4pa84pa8ICAg4pa8ICAgIOKU
giAgICAgICAgICDilJzilIDilIDilIDilIDilIDilroKPiArICAgICAg4pSCIOKUgOKUgOKUgOKU
gOKUgOKUgCAgICDilIIgICAgICAgICAg4pSCCj4gKyAgICAgIOKUgiBcX19fXy8gICAg4pSCICAg
ICAgICAgIOKUggo+ICsgICAgICDilJTilIDilIDilLzilIDilIDilLzilIDilIDilIDilIDilIDi
lLTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJgKPiArICAgICAgICAx4pSCIDLilIIg
ICAgICAgIOKWsgo+ICsgUkNMSyBvdXTilIIgIOKUgiAgICAgICAg4pSCIFRYIENMSyBpbgo+ICsg
ICAgICAgICDilrwgIOKWvCAgICAgICAg4pSCCj4gKyAgICAgICDilIzilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilLTilIDilIDilIDilJAKPiArICAgICAgIOKUgiAgICAg
ICAgICAgICAgICAg4pSCCj4gKyAgICAgICDilIIgICAgICAgRUVDICAgICAgIOKUggo+ICsgICAg
ICAg4pSCICAgICAgICAgICAgICAgICDilIIKPiArICAgICAgIOKUlOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUmAo+ICsKPiArVGhlIEVFQyBjYW4g
c3luY2hyb25pemUgaXRzIGZyZXF1ZW5jeSB0byBvbmUgb2YgdGhlIHN5bmNocm9uaXphdGlvbiBp
bnB1dHMKPiArZWl0aGVyIGNsb2NrcyByZWNvdmVyZWQgb24gdHJhZmZpYyBpbnRlcmZhY2VzIG9y
IChpbiBhZHZhbmNlZCBkZXBsb3ltZW50cykKPiArZXh0ZXJuYWwgZnJlcXVlbmN5IHNvdXJjZXMu
Cj4gKwo+ICtTb21lIEVFQyBpbXBsZW1lbnRhdGlvbnMgY2FuIHNlbGVjdCBzeW5jaHJvbml6YXRp
b24gc291cmNlIHRocm91Z2gKPiArcHJpb3JpdHkgdGFibGVzIGFuZCBzeW5jaHJvbml6YXRpb24g
c3RhdHVzIG1lc3NhZ2luZyBhbmQgcHJvdmlkZSBuZWNlc3NhcnkKPiArZmlsdGVyaW5nIGFuZCBo
b2xkb3ZlciBjYXBhYmlsaXRpZXMuCj4gKwo+ICtUaGUgZm9sbG93aW5nIGludGVyZmFjZSBjYW4g
YmUgYXBwbGljYWJsZSB0byBkaWZmZmVyZW50IHBhY2tldCBuZXR3b3JrIHR5cGVzCj4gK2ZvbGxv
d2luZyBJVFUtVCBHLjgyNjEvRy44MjYyIHJlY29tbWVuZGF0aW9ucy4KPiArCj4gK0ludGVyZmFj
ZQo+ICs9PT09PT09PT0KPiArCj4gK1RoZSBmb2xsb3dpbmcgUlROTCBtZXNzYWdlcyBhcmUgdXNl
ZCB0byByZWFkL2NvbmZpZ3VyZSBTeW5jRSByZWNvdmVyZWQKPiArY2xvY2tzLgo+ICsKPiArUlRN
X0dFVFJDTEtSQU5HRQo+ICstLS0tLS0tLS0tLS0tLS0tLQo+ICtSZWFkcyB0aGUgYWxsb3dlZCBw
aW4gaW5kZXggcmFuZ2UgZm9yIHRoZSByZWNvdmVyZWQgY2xvY2sgb3V0cHV0cy4KPiArVGhpcyBj
YW4gYmUgYWxpZ25lZCB0byBQSFkgb3V0cHV0cyBvciB0byBFRUMgaW5wdXRzLCB3aGljaGV2ZXIg
aXMKPiArYmV0dGVyIGZvciBhIGdpdmVuIGFwcGxpY2F0aW9uLgoKQ2FuIHlvdSBleHBsYWluIHRo
ZSBkaWZmZXJlbmNlIGJldHdlZW4gUEhZIG91dHB1dHMgYW5kIEVFQyBpbnB1dHM/IEl0IGlzCm5v
IGNsZWFyIHRvIG1lIGZyb20gdGhlIGRpYWdyYW0uCgpIb3cgd291bGQgdGhlIGRpYWdyYW0gbG9v
ayBpbiBhIG11bHRpLXBvcnQgYWRhcHRlciB3aGVyZSB5b3UgaGF2ZSBhCnNpbmdsZSBFRUM/Cgo+
ICtXaWxsIGNhbGwgdGhlIG5kb19nZXRfcmNsa19yYW5nZSBmdW5jdGlvbiB0byByZWFkIHRoZSBh
bGxvd2VkIHJhbmdlCj4gK29mIG91dHB1dCBwaW4gaW5kZXhlcy4KPiArV2lsbCBjYWxsIG5kb19n
ZXRfcmNsa19yYW5nZSB0byBkZXRlcm1pbmUgdGhlIGFsbG93ZWQgcmVjb3ZlcmVkIGNsb2NrCj4g
K3JhbmdlIGFuZCByZXR1cm4gdGhlbSBpbiB0aGUgSUZMQV9SQ0xLX1JBTkdFX01JTl9QSU4gYW5k
IHRoZQo+ICtJRkxBX1JDTEtfUkFOR0VfTUFYX1BJTiBhdHRyaWJ1dGVzCgpUaGUgZmlyc3Qgc2Vu
dGVuY2Ugc2VlbXMgdG8gYmUgcmVkdW5kYW50Cgo+ICsKPiArUlRNX0dFVFJDTEtTVEFURQo+ICst
LS0tLS0tLS0tLS0tLS0tLQo+ICtSZWFkIHRoZSBzdGF0ZSBvZiByZWNvdmVyZWQgcGlucyB0aGF0
IG91dHB1dCByZWNvdmVyZWQgY2xvY2sgZnJvbQo+ICthIGdpdmVuIHBvcnQuIFRoZSBtZXNzYWdl
IHdpbGwgY29udGFpbiB0aGUgbnVtYmVyIG9mIGFzc2lnbmVkIGNsb2Nrcwo+ICsoSUZMQV9SQ0xL
X1NUQVRFX0NPVU5UKSBhbmQgYW4gTiBwaW4gaW5kZXhlcyBpbiBJRkxBX1JDTEtfU1RBVEVfT1VU
X0lEWAo+ICtUbyBzdXBwb3J0IG11bHRpcGxlIHJlY292ZXJlZCBjbG9jayBvdXRwdXRzIGZyb20g
dGhlIHNhbWUgcG9ydCwgdGhpcyBtZXNzYWdlCj4gK3dpbGwgcmV0dXJuIHRoZSBJRkxBX1JDTEtf
U1RBVEVfQ09VTlQgYXR0cmlidXRlIGNvbnRhaW5pbmcgdGhlIG51bWJlciBvZgo+ICthY3RpdmUg
cmVjb3ZlcmVkIGNsb2NrIG91dHB1dHMgKE4pIGFuZCBOIElGTEFfUkNMS19TVEFURV9PVVRfSURY
IGF0dHJpYnV0ZXMKPiArbGlzdGluZyB0aGUgYWN0aXZlIG91dHB1dCBpbmRleGVzLgo+ICtUaGlz
IG1lc3NhZ2Ugd2lsbCBjYWxsIHRoZSBuZG9fZ2V0X3JjbGtfcmFuZ2UgdG8gZGV0ZXJtaW5lIHRo
ZSBhbGxvd2VkCj4gK3JlY292ZXJlZCBjbG9jayBpbmRleGVzIGFuZCB0aGVuIHdpbGwgbG9vcCB0
aHJvdWdoIHRoZW0sIGNhbGxpbmcKPiArdGhlIG5kb19nZXRfcmNsa19zdGF0ZSBmb3IgZWFjaCBv
ZiB0aGVtLgoKV2h5IGRvIHlvdSBuZWVkIGJvdGggUlRNX0dFVFJDTEtSQU5HRSBhbmQgUlRNX0dF
VFJDTEtTVEFURT8gSXNuJ3QKUlRNX0dFVFJDTEtTVEFURSBlbm91Z2g/IEluc3RlYWQgb2Ygc2tp
cHBpbmcgb3ZlciAiZGlzYWJsZWQiIHBpbnMgaW4gdGhlCnJhbmdlIElGTEFfUkNMS19SQU5HRV9N
SU5fUElOLi5JRkxBX1JDTEtfUkFOR0VfTUFYX1BJTiwganVzdCByZXBvcnQgdGhlCnN0YXRlIChl
bmFibGVkIC8gZGlzYWJsZSkgZm9yIGFsbAoKPiArCj4gK1JUTV9TRVRSQ0xLU1RBVEUKPiArLS0t
LS0tLS0tLS0tLS0tLS0KPiArU2V0cyB0aGUgcmVkaXJlY3Rpb24gb2YgdGhlIHJlY292ZXJlZCBj
bG9jayBmb3IgYSBnaXZlbiBwaW4uIFRoaXMgbWVzc2FnZQo+ICtleHBlY3RzIG9uZSBhdHRyaWJ1
dGU6Cj4gK3N0cnVjdCBpZl9zZXRfcmNsa19tc2cgewo+ICsJX191MzIgaWZpbmRleDsgLyogaW50
ZXJmYWNlIGluZGV4ICovCj4gKwlfX3UzMiBvdXRfaWR4OyAvKiBvdXRwdXQgaW5kZXggKGZyb20g
YSB2YWxpZCByYW5nZSkKPiArCV9fdTMyIGZsYWdzOyAvKiBjb25maWd1cmF0aW9uIGZsYWdzICov
Cj4gK307Cj4gKwo+ICtTdXBwb3J0ZWQgZmxhZ3MgYXJlOgo+ICtTRVRfUkNMS19GTEFHU19FTkEg
LSBpZiBzZXQgaW4gZmxhZ3MgLSB0aGUgZ2l2ZW4gb3V0cHV0IHdpbGwgYmUgZW5hYmxlZCwKPiAr
CQkgICAgIGlmIGNsZWFyIC0gdGhlIG91dHB1dCB3aWxsIGJlIGRpc2FibGVkLgoKSW4gdGhlIGRp
YWdyYW0geW91IGhhdmUgdHdvIHJlY292ZXJlZCBjbG9jayBvdXRwdXRzIGdvaW5nIGludG8gdGhl
IEVFQy4KQWNjb3JkaW5nIHRvIHdoaWNoIHRoZSBFRUMgaXMgc3luY2hyb25pemVkPwoKSG93IGRv
ZXMgdXNlciBzcGFjZSBrbm93IHdoaWNoIHBpbnMgdG8gZW5hYmxlPwoKPiArCj4gK1JUTV9HRVRF
RUNTVEFURQo+ICstLS0tLS0tLS0tLS0tLS0tCj4gK1JlYWRzIHRoZSBzdGF0ZSBvZiB0aGUgRUVD
IG9yIGVxdWl2YWxlbnQgcGh5c2ljYWwgY2xvY2sgc3luY2hyb25pemVyLgo+ICtUaGlzIG1lc3Nh
Z2UgcmV0dXJucyB0aGUgZm9sbG93aW5nIGF0dHJpYnV0ZXM6Cj4gK0lGTEFfRUVDX1NUQVRFIC0g
Y3VycmVudCBzdGF0ZSBvZiB0aGUgRUVDIG9yIGVxdWl2YWxlbnQgY2xvY2sgZ2VuZXJhdG9yLgo+
ICsJCSBUaGUgc3RhdGVzIHJldHVybmVkIGluIHRoaXMgYXR0cmlidXRlIGFyZSBhbGlnbmVkIHRv
IHRoZQo+ICsJCSBJVFUtVCBHLjc4MSBhbmQgYXJlOgo+ICsJCSAgSUZfRUVDX1NUQVRFX0lOVkFM
SUQgLSBzdGF0ZSBpcyBub3QgdmFsaWQKPiArCQkgIElGX0VFQ19TVEFURV9GUkVFUlVOIC0gY2xv
Y2sgaXMgZnJlZS1ydW5uaW5nCj4gKwkJICBJRl9FRUNfU1RBVEVfTE9DS0VEIC0gY2xvY2sgaXMg
bG9ja2VkIHRvIHRoZSByZWZlcmVuY2UsCj4gKwkJICAgICAgICAgICAgICAgICAgICAgICAgYnV0
IHRoZSBob2xkb3ZlciBtZW1vcnkgaXMgbm90IHZhbGlkCj4gKwkJICBJRl9FRUNfU1RBVEVfTE9D
S0VEX0hPX0FDUSAtIGNsb2NrIGlzIGxvY2tlZCB0byB0aGUgcmVmZXJlbmNlCj4gKwkJICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGFuZCBob2xkb3ZlciBtZW1vcnkgaXMgdmFsaWQKPiAr
CQkgIElGX0VFQ19TVEFURV9IT0xET1ZFUiAtIGNsb2NrIGlzIGluIGhvbGRvdmVyIG1vZGUKPiAr
U3RhdGUgaXMgcmVhZCBmcm9tIHRoZSBuZXRkZXYgY2FsbGluZyB0aGU6Cj4gK2ludCAoKm5kb19n
ZXRfZWVjX3N0YXRlKShzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LCBlbnVtIGlmX2VlY19zdGF0ZSAq
c3RhdGUsCj4gKwkJCSB1MzIgKnNyY19pZHgsIHN0cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFj
ayk7Cj4gKwo+ICtJRkxBX0VFQ19TUkNfSURYIC0gb3B0aW9uYWwgYXR0cmlidXRlIHJldHVybmlu
ZyB0aGUgaW5kZXggb2YgdGhlIHJlZmVyZW5jZSB0aGF0Cj4gKwkJICAgaXMgdXNlZCBmb3IgdGhl
IGN1cnJlbnQgSUZMQV9FRUNfU1RBVEUsIGkuZS4sIHRoZSBpbmRleCBvZgo+ICsJCSAgIHRoZSBw
aW4gdGhhdCB0aGUgRUVDIGlzIGxvY2tlZCB0by4KPiArCj4gK1dpbGwgYmUgcmV0dXJuZWQgb25s
eSBpZiB0aGUgbmRvX2dldF9lZWNfc3JjIGlzIGltcGxlbWVudGVkLgo+IFwgTm8gbmV3bGluZSBh
dCBlbmQgb2YgZmlsZQo+IC0tIAo+IDIuMjYuMwo+IApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
