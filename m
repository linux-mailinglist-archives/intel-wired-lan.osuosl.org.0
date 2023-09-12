Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A1C79D389
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 16:26:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0647F417DE;
	Tue, 12 Sep 2023 14:26:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0647F417DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694528812;
	bh=vwXDfoNh1cHn1fjUee8O6eKyOfeJEKthSwlPprjNCs0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PYzQ/QMPTSJj0k5aZ3P/r8w+UWK++LfupM4R1vYWEaEb+b0NXow1w8Nu1iK/foyeq
	 Gefs/UdezvRwG+XCkxqOX0hGiWd3jqDDber2zi2S2eRvYFxqFyItuyolnX61IFO+9Z
	 eae3NRZxGu3a2+BGHrF4myivhDvQlixqdomrR7PefLyrItYf5KdjnnT67Y4X+19YE0
	 Dkz9XX76kFokHPWOi2kolR9TpqJIsSCKtuk7ra7Q+sNwqL9qZ6ZwzBSvZoTnmFNcRZ
	 v5cLBk++H2tezn/Ligz1WHhYyoffXR3um0BiK0aB+TaEG+78SSxItYDRFyWFOFGrTP
	 qQU/YeNv+LH7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y0AeBZzAy5Yd; Tue, 12 Sep 2023 14:26:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCA5D415BA;
	Tue, 12 Sep 2023 14:26:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCA5D415BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 900991BF358
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 14:26:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 74A9F82163
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 14:26:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74A9F82163
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SItGWINxKKWT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 14:26:44 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A60B81FAD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 14:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A60B81FAD
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 777D43200989;
 Tue, 12 Sep 2023 10:26:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Tue, 12 Sep 2023 10:26:43 -0400
X-ME-Sender: <xms:IXUAZX-XUeuGskZ4UJ3d3N-Bd7GsMPqyByASEHpDVJ51uQ-zeNxmXg>
 <xme:IXUAZTu345JkSFUtUDI0QClydELkYJzqaL2UPrVmeikxq2GchjI_YIDjVNxBztNGM
 XkGZd3SvuXeIHI>
X-ME-Received: <xmr:IXUAZVBeWC21p5Y2_Z0tkq8J9YH0Z5BA6SC1gte24FJtgXMeZ6TCJ8enXJZJY1SroGvJ-W9RGF1FrwDvKk3VXvA0EsAiDg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudeiiedgjeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefkugho
 ucfutghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrg
 htthgvrhhnpeetieevjefgffffkeeivdegfeeivddugfefveeugedvgfetueefveeluedt
 gfelteenucffohhmrghinhepnhhvihguihgrrdgtohhmnecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhr
 gh
X-ME-Proxy: <xmx:IXUAZTd0_0nzNlzdWHAc0pGH-dzAr8NK2wFsSJSM2ngR1_CwdKNfWQ>
 <xmx:IXUAZcOpJRWv7PtTNvox8Sg6U97x_Zfumm98VXXoSdZ0LGPzPs7kFA>
 <xmx:IXUAZVkWOfI2TD_hDFp91EAGjkRzx-kYzkzjtoMZ3PTik_n5lyagYw>
 <xmx:InUAZRqOwhV1ZdacHBIF0MVFoZ_0K2tZhFU_heHQbsqeNok1rEAUmA>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 12 Sep 2023 10:26:40 -0400 (EDT)
Date: Tue, 12 Sep 2023 17:26:37 +0300
From: Ido Schimmel <idosch@idosch.org>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Message-ID: <ZQB1HcpTsB2Sf6Co@shredder>
References: <20230824085459.35998-1-wojciech.drewek@intel.com>
 <20230824083201.79f79513@kernel.org>
 <MW4PR11MB57768054635E8DEF841BB2A9FDE3A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZOsNhgd3ZxXEaEA5@shredder>
 <MW4PR11MB57766C3B9C05C94F51630251FDE7A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZO9dhzhK+psufXqS@shredder>
 <MW4PR11MB5776601FD7C2C577C78576A3FDE4A@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MW4PR11MB5776601FD7C2C577C78576A3FDE4A@MW4PR11MB5776.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1694528802; x=1694615202; bh=A9Yxufzp7Uv3QFjrOPYY9Pejoi6vmjb+Oe0
 p0j5+f/c=; b=lTpEgsYcdZVr1G1p2Li7c1yhtCDgJDTxT75VEApComjwkjteP9u
 aYkEa/imoyVhDiFvfdxU4OlWbSyOfvc1vEvboLKCvzYta9xn6WOECzMIp5LPAMj3
 xCIXhO72YObCXju5oGyO6X9Q8099dy559fiQ5LSuX/GekiDrf25xAnmyG8ByKcfu
 bYOx+fnVbTTUkWf+7MGdvy80PmctyZW1rSS9eWr6/GBOPQduX/tkOW6yvwYSO5nb
 ZVikgGKBdKUoaG6kqrDSDggUEImioAE5Ov/gMQbC4HUKoFKMjCcdvw1jzSIwIjwe
 vtgHNDn0zSI/IBee7OkafwKUvlLcMuEaikQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=lTpEgsYc
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Disable Cage Max
 Power override
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
Cc: Jakub Kicinski <kuba@kernel.org>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBTZXAgMDEsIDIwMjMgYXQgMDE6MzQ6MDRQTSArMDAwMCwgRHJld2VrLCBXb2pjaWVj
aCB3cm90ZToKPiAKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBJ
ZG8gU2NoaW1tZWwgPGlkb3NjaEBpZG9zY2gub3JnPgo+ID4gU2VudDogxZtyb2RhLCAzMCBzaWVy
cG5pYSAyMDIzIDE3OjE3Cj4gPiBUbzogRHJld2VrLCBXb2pjaWVjaCA8d29qY2llY2guZHJld2Vr
QGludGVsLmNvbT4KPiA+IENjOiBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgaW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7Cj4gPiBuZXRkZXZAdmdlci5rZXJuZWwub3Jn
OyBLaXRzemVsLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsKPiA+
IGlkb3NjaEBudmlkaWEuY29tCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXh0IHYyXSBp
Y2U6IERpc2FibGUgQ2FnZSBNYXggUG93ZXIgb3ZlcnJpZGUKPiA+IAo+ID4gT24gVHVlLCBBdWcg
MjksIDIwMjMgYXQgMDk6MTI6MjJBTSArMDAwMCwgRHJld2VrLCBXb2pjaWVjaCB3cm90ZToKPiA+
ID4gSW4gc29tZSBjYXNlcyB1c2VycyBhcmUgdHJ5aW5nIHRvIHVzZSBtZWRpYSB3aXRoIHBvd2Vy
IGV4Y2VlZGluZyBtYXgKPiA+IGFsbG93ZWQgdmFsdWUuCj4gPiA+IFBvcnQgc3BsaXQgcmVxdWly
ZSBzeXN0ZW0gcmVib290IHNvIGl0IGZlZWxzIG5hdHVyYWwgdG8gbWUgdG8gcmVzdG9yZSBkZWZh
dWx0Cj4gPiBzZXR0aW5ncy4KPiA+IAo+ID4gSSBkb24ndCBiZWxpZXZlIGl0J3MgdGhlIGtlcm5l
bCdzIHJlc3BvbnNpYmlsaXR5IHRvIHVuZG8gY2hhbmdlcyBkb25lIGJ5Cj4gPiBleHRlcm5hbCB0
b29scy4gR2l2ZW4gdGhhdCB0aGUgdG9vbCBpcyBhYmxlIHRvIGNoYW5nZSB0aGlzIHNldHRpbmcs
IEkKPiA+IGFzc3VtZSBpdCBjYW4gYWxzbyByZXN0b3JlIGl0IGJhY2sgdG8gZGVmYXVsdC4KPiAK
PiBJIGFncmVlIHdpdGggdGhhdCwgYnV0IHdlIGNhbiBlbmQgdXAgd2l0aCBubyBsaW5rIGlmIHdl
IGRvbid0IHJlc3RvcmUKPiBkZWZhdWx0IHNldHRpbmdzLiBMZXQgbWUgZXhwbGFpbiBob3cuCj4g
Cj4gPiAKPiA+IE1vcmVvdmVyLCBpdCBkb2Vzbid0IHNvdW5kIGxpa2UgcG9ydCBzcGxpdCB3b24n
dCB3b3JrIHdpdGhvdXQgdGhpcwo+ID4gY2hhbmdlLCBzbyBwbGFjaW5nIHRoaXMgY2hhbmdlIHRo
ZXJlIG9ubHkgYmVjYXVzZSB3ZSBhc3N1bWUgdGhhdCBhCj4gPiByZWJvb3Qgd2lsbCBmb2xsb3cg
c2VlbXMgcmFuZG9tLgo+IAo+IEFmdGVyIHBvcnQgc3BsaXQsIHdlIG1pZ2h0IGVuZCB1cCB3aXRo
IG5vIGxpbmsgaW4gb25lIG9mIHRoZSBwb3J0cy4KPiBJbiBkdWFsIHBvcnQgY2FyZCBpZiB3ZSBp
bmNyZWFzZSBtYXggcHdyIG9uIHRoZSAxc3QgY2FnZSB0aGUgMm5kIG9uZQo+IHdpbGwgaGF2ZSBt
YXggcHdyIGRlY3JlYXNlZCBhdXRvbWF0aWNhbGx5LiBUaGlzIG1pZ2h0IGJlIHVzZWZ1bCBpZiB3
ZSBoYXZlIHBvcnQKPiBvcHRpb24gd2l0aCBjb3VudCAxLCB0aGUgc2Vjb25kIGNhZ2UgaXMgbm90
IHVzZWQgaW4gdGhpcyBjYXNlLiBJZiB3ZSB0aGVuIHNwbGl0IGFuZAo+IHVzZSB0d28gcG9ydHMg
bm93LCB0aGUgc2Vjb25kIHBvcnQgd2lsbCB1c2Ugc2Vjb25kIGNhZ2Ugd2hpY2ggaGFzIGRlY3Jl
YXNlZCBtYXggcHdyLCBkZWZhdWx0IG1vZHVsZQo+IHVzZWQgdGhlcmUgd2lsbCBub3Qgd29yay4K
Ck5vdCBzdXJlIEkgdW5kZXJzdGFuZCBob3cgaXQncyByZWxhdGVkIHRvIHBvcnQgc3BsaXQuIFlv
dSBoYXZlIGEgZHVhbApwb3J0IGNhcmQgd2l0aCB0d28gbmV0ZGV2cyAoZS5nLiwgZXRoMCBhbmQg
ZXRoMSkgYW5kIHR3byBjYWdlcy4gWW91IHVzZWQKc29tZSB0b29sIHRvIGluY3JlYXNlIHRoZSBt
YXggcG93ZXIgb24gdGhlIGZpcnN0IGNhZ2Ugd2hpY2ggbWVhbnMgdGhhdAp0aGUgc2Vjb25kIGNh
Z2Ugd2lsbCBoYXZlIGl0cyBtYXggcG93ZXIgZGVjcmVhc2VkLiBOb3cgeW91IHNwbGl0IHRoZQpm
aXJzdCBwb3J0OgoKIyBkZXZsaW5rIHBvcnQgc3BsaXQgZXRoMCBjb3VudCAyCgpldGgwczAgYW5k
IGV0aDBzMSBjb3JyZXNwb25kIHRvIHRoZSBmaXJzdCBjYWdlLiBXaHkgYXJlIHRoZXkgYWZmZWN0
ZWQgYnkKdGhlIHNlY29uZCBjYWdlPwoKSSBoYXZlIGEgZmVlbGluZyB3ZSBtZWFuIGRpZmZlcmVu
dCB0aGluZ3MgYnkgInBvcnQgc3BsaXQiLiBBcyBmYXIgYXMgSSdtCmNvbmNlcm5lZCwgeW91IHNw
bGl0IGEgcG9ydCBpbiBvcmRlciB0byBjb25uZWN0IGEgc3BsaXR0ZXIgY2FibGUgdG8gdGhlCmNh
Z2UuIEZvciBleGFtcGxlOgpodHRwczovL25ldHdvcmsubnZpZGlhLmNvbS9yZWxhdGVkLWRvY3Mv
cHJvZF9jYWJsZXMvUEJfTUNQN0g1MC1WeHh4eXp6XzIwMEdiRV9RU0ZQNTZfdG9fMngxMDBHYkVf
UVNGUDU2X0RBQy5wZGYKCj4gCj4gU28sIHNob3VsZCB3ZSBsZWF2ZSB0aGUgcmVzdG9yYXRpb24g
b2YgdGhlIGRlZmF1bHQgc2V0dGluZ3MgdG8gdGhlIHVzZXI/CgpMZXQncyBmaXJzdCBjbGVhciB1
cCB0aGUgYWJvdmUuIEJUVywgaWYgYSBwb3J0IGRvZXNuJ3QgY29tZSB1cCBiZWNhdXNlCm9mIHBv
d2VyIGlzc3VlcyB5b3UgY2FuIHRyeSBjb21tdW5pY2F0aW5nIGl0IHRvIHVzZXIgc3BhY2UgdXNp
bmcKJ0VUSFRPT0xfTElOS19FWFRfU1RBVEVfUE9XRVJfQlVER0VUX0VYQ0VFREVEJy4KCj4gCj4g
PiAKPiA+IEkgdGhpbmsgdGhlIGJlc3Qgd2F5IGZvcndhcmQgaXMgdG8gZXh0ZW5kIGV0aHRvb2wg
YXMgd2FzIGFscmVhZHkKPiA+IHN1Z2dlc3RlZC4gSXQgc2hvdWxkIGFsbG93IHlvdSB0byBhdm9p
ZCB0aGUgc3BsaXQgYnJhaW4gc2l0dWF0aW9uIHdoZXJlCj4gPiB0aGUgaGFyZHdhcmUgaXMgY29u
ZmlndXJlZCBieSBib3RoIHRoZSBrZXJuZWwgYW5kIGFuIGV4dGVybmFsIHRvb2wuCj4gCj4gSSds
bCB0cnkgdG8gZm9sbG93IHVwIHdpdGggdGhlIGV0aHRvb2wgZXh0ZW5zaW9uLgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
