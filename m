Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BA8784622
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 17:48:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2DE840272;
	Tue, 22 Aug 2023 15:48:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2DE840272
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692719304;
	bh=ZJfduAw4Jo1+f/2hg2gep7PsXpFlBQjrRs2W1gu4FrI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Gvc0OWZ9ABuhkiKfWK0RGcDDpbKidxcsb0kRvL/1MbkBCCalG4h93bD9/JjTFpHQb
	 C8mtUT2I45tI/u1W4A65NXJlb5oGDcnVXO3Z98lwuLitmVAkxaZVbD94bxFCzxu/SG
	 N87cosWsfx9Ln9PxpgXUg1Ku4TBTHGsm+QvDomxJYnzWqkFES64XS9mXLK9ef2ZXrV
	 ZrKgnIw95fs3n/TlhEH7nX3plzogix5Ka1OogLWadP+49L0EBzdnZ+KTHzyaOUeFAl
	 Iewx/qCikwGh6hLbc5513ufmGzcdrdTLmQSHGitkvBH4Olk38U75JQPIPhUs1/Z/8V
	 +cDXkbg560gtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YULsoqu_SmVO; Tue, 22 Aug 2023 15:48:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 769834014D;
	Tue, 22 Aug 2023 15:48:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 769834014D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 910801BF31C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:48:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A3374014D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:48:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A3374014D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dEbqHHZhKBaf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 15:48:17 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2105C4012F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:48:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2105C4012F
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0669765A88;
 Tue, 22 Aug 2023 15:48:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5DBDC433C7;
 Tue, 22 Aug 2023 15:48:14 +0000 (UTC)
Date: Tue, 22 Aug 2023 18:48:10 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20230822154810.GM6029@unreal>
References: <20230817141746.18726-1-karol.kolacinski@intel.com>
 <20230817141746.18726-2-karol.kolacinski@intel.com>
 <20230819115249.GP22185@unreal>
 <20230822070211.GH2711035@kernel.org>
 <20230822141348.GH6029@unreal>
 <f497dc97-76bb-7526-7d19-d6886a3f3a65@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f497dc97-76bb-7526-7d19-d6886a3f3a65@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692719295;
 bh=NDGFu/pTIVIyyOPIqvM18RTysR3Zdf/N4m4xwaHNrcE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gLeBG9DXntKZLOvO19QvIy+1SRFhAT2sP7naVNH7joTxG6R8hV1xQQMamH9EkW/H2
 8wAL8mYz7QNELpHfBRxZ29NhhwB/rjUo2nl1/EFYOSa+AClsRh6qnhA9K7WP6l5rcq
 Mkx42oIY39moynpRjwsVaO6KAZ15Zhf4KKZASHwdid0TdDL/rapY3sGYpt4SQCgqEn
 EPmDfurWUSt7rXcdfj6zzgmf34epT48g4qQHP6B8x2t7EIFDcZvNTACahQOwaImQpn
 MK0uL+q1ALtoywraGn1emwGLH99/VYk3JjZ/P6/8PJZJe9xFqYpjkDySYndd3ablpe
 XnRwGQ+mnPqug==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gLeBG9DX
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/9] ice: use
 ice_pf_src_tmr_owned where available
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>,
 anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBBdWcgMjIsIDIwMjMgYXQgMDQ6NDQ6MjlQTSArMDIwMCwgUHJ6ZW1layBLaXRzemVs
IHdyb3RlOgo+IE9uIDgvMjIvMjMgMTY6MTMsIExlb24gUm9tYW5vdnNreSB3cm90ZToKPiA+IE9u
IFR1ZSwgQXVnIDIyLCAyMDIzIGF0IDA5OjAyOjExQU0gKzAyMDAsIFNpbW9uIEhvcm1hbiB3cm90
ZToKPiA+ID4gT24gU2F0LCBBdWcgMTksIDIwMjMgYXQgMDI6NTI6NDlQTSArMDMwMCwgTGVvbiBS
b21hbm92c2t5IHdyb3RlOgo+ID4gPiA+IE9uIFRodSwgQXVnIDE3LCAyMDIzIGF0IDA0OjE3OjM4
UE0gKzAyMDAsIEthcm9sIEtvbGFjaW5za2kgd3JvdGU6Cj4gPiA+ID4gPiBUaGUgaWNlX3BmX3Ny
Y190bXJfb3duZWQoKSBtYWNybyBleGlzdHMgdG8gY2hlY2sgdGhlIGZ1bmN0aW9uIGNhcGFiaWxp
dHkKPiA+ID4gPiA+IGJpdCBpbmRpY2F0aW5nIGlmIHRoZSBjdXJyZW50IGZ1bmN0aW9uIG93bnMg
dGhlIFBUUCBoYXJkd2FyZSBjbG9jay4KPiA+ID4gPiAKPiA+ID4gPiBUaGlzIGlzIGZpcnN0IHBh
dGNoIGluIHRoZSBzZXJpZXMsIGJ1dCBJIGNhbid0IGZpbmQgbWVudGlvbmVkIG1hY3JvLgo+ID4g
PiA+IE15IG5ldC1uZXh0IGlzIGJhc2VkIG9uIDViMGExNDE0ZTBiMCAoIk1lcmdlIGJyYW5jaCAn
c21jLWZlYXR1cmVzJyIpCj4gPiA+ID4g4p6cICBrZXJuZWwgZ2l0OihuZXQtbmV4dCkgZ2l0IGdy
ZXAgaWNlX3BmX3NyY190bXJfb3duZWQKPiA+ID4gPiBzaG93cyBub3RoaW5nLgo+ID4gPiA+IAo+
ID4gPiA+IE9uIHdoaWNoIGJyYW5jaCBpcyBpdCBiYXNlZD8KPiA+ID4gCj4gPiA+IEhpIExlb24s
Cj4gPiA+IAo+ID4gPiBNeSBhc3N1bXB0aW9uIGlzIHRoYXQgaXQgaXMgYmFzZWQgb24gdGhlIGRl
di1xdWV1ZSBicmFuY2ggb2YKPiA+ID4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvdG5ndXkvbmV4dC1xdWV1ZS5naXQKPiA+IAo+ID4gU28gc2hvdWxkIG5l
dGRldiByZWFkZXJzIHJldmlldyBpdCBvciB3YWl0IHRpbGwgSW50ZWwgZm9sa3MgcGVyZm9ybQo+
ID4gZmlyc3QgcGFzcyBvbiBpdD8KPiAKPiBNb3N0IG9mIHRoZSB0aW1lIEludGVsIGZvbGtzIHdv
dWxkIGJlIGZpcnN0IHRvIHJldmlldywgaWYgb25seSBiZWNhdXNlIG9mCj4gb3VyIHByZS1JV0wg
cHJvY2Vzc2VzIG9yIHB1cmUgZmFtaWxpYXJpdHkvaW50ZXJlc3QgaW4gZ2l2ZW4gcGllY2UuCj4g
Cj4gRm9yIHRoaXMgcGFydGljdWxhciBzZXJpZXMsIGl0IGlzIGFib3V0IHJpZ2h0ICJjb2Rld2lz
ZSIgc2luY2UgdjEsIHNvIHlvdQo+IGFyZSB3ZWxjb21lIGZvciBhbiBpbnNpZ2h0ZnVsIGxvb2sg
YXQgdjMKPiAoSSBkaWRuJ3QgcHJvdmlkZWQgbXkgUkJzIHNvIGZhciBiZWNhdXNlIG9mICJtZXRh
ZGF0YSIgaXNzdWVzIDopLAo+IHdpbGwgdGFrZSBhIGZyZXNoIGxvb2ssIGJ1dCB5b3UgZG9uJ3Qg
bmVlZCB0byB3YWl0KS4KPiAKPiAKPiBHZW5lcmFsIGlkZWEgZm9yIENDJ2luZyBuZXRkZXYgZm9y
IElXTC10YXJnZXRlZCBwYXRjaGVzIGlzIHRvIGhhdmUgb3Blbgo+IGRldmVsb21wZW50IHByb2Nl
c3MuCj4gUXVhbGl0eSBzaG91bGQgYmUgYWxyZWFkeSBhcyBmb3IgbmV0ZGV2IHBvc3RpbmcuCj4g
T3VyIFZBTCBwaWNrcyB1cCBwYXRjaGVzIGZvciB0ZXN0aW5nIGZyb20gaGVyZSB3aGVuIFRvbnkg
bWFya3MgdGhlbSBzby4KPiAKPiBUaGF0J3Mgd2hhdCBJIGNvdWxkIHNheSBmb3IgcmV2aWV3IHBy
b2Nlc3MuCj4gCj4gIk1haW50YWluZXJzIHN0dWZmIiwgSSAqZ3Vlc3MqLCBpczoKPiBhZnRlciBy
ZXZpZXcmdGVzdCBUb255IFJlcXVlc3RzIG5ldGRldiBNYWludGFpbmVycyB0byBQdWxsCj4gKGFu
ZCB0aHJvdHRsZXMgb3V0Z29pbmcgc3R1ZmYgYnkgZG9pbmcgc28gdG8gcGFjZSBhZ3JlZWQgdXBv
bikuCj4gQXQgdGhhdCBzdGFnZSBpcyBhIGxhc3QgbW9tZW50IGZvciAobGF0ZT8pIHJldmlldywg
d2VsY29tZWQgYXMgYWx3YXlzLgoKSXQgbWVhbnMgdGhhdCB3ZSAobmV0ZGV2QC4uLiApIHdpbGwg
c2VlICJzYW1lIiBwYXRjaGVzIHR3aWNlLCBhbSBJIHJpZ2h0PwoKVGhhbmtzCgo+IAo+IAo+IAo+
ID4gCj4gPiBUaGFua3MKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gPiBJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCj4gCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
