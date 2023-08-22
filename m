Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E371E78468D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 18:07:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6AEE3403FD;
	Tue, 22 Aug 2023 16:07:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AEE3403FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692720424;
	bh=rWwjlhmNTqVmiFc1dOsTA7/j02d6nxs6AJz2yvQMAdc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bg4GP2YznmGM6d1viTFg43kIChQVmuxtACYFMVf/qPIseS9wsdr9K/Xg8cWphLeVD
	 qcypzQ3F1Om+GchbFQnoVb/SdSK668Ygp9G4GdO6j14BT9Q5xhnAkVFR7t9uzH1Q8y
	 6cwYv9lsjXiRRwWs0bfo+WTmvJ6As08CZi4O7DlymW5E44Gqq3kygm4yCswVx3ZP5g
	 m0KCnl2pJfWJVAr59NgDXjsYmqNtxbdFTtqGTtsks1l3yc1iFH7AkukR5MhMP1NsWq
	 bPAbr5gBKoH97UVkBJn/gTv2b/ZuM3o3FcFtA0oFT2o45X/2I//9VKeNG0Cs5L/bIo
	 mnh8b5VHttTnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8EUx5i8Ied96; Tue, 22 Aug 2023 16:07:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 409FD40272;
	Tue, 22 Aug 2023 16:07:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 409FD40272
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A9C8A1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 16:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8A9A4408BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 16:06:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A9A4408BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7aB8MeLJFiDo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 16:06:57 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4210A408AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 16:06:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4210A408AA
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 796AB624D6;
 Tue, 22 Aug 2023 16:06:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6261FC433C8;
 Tue, 22 Aug 2023 16:06:55 +0000 (UTC)
Date: Tue, 22 Aug 2023 19:06:51 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 anthony.l.nguyen@intel.com, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Message-ID: <20230822160651.GN6029@unreal>
References: <20230817141746.18726-1-karol.kolacinski@intel.com>
 <20230817141746.18726-2-karol.kolacinski@intel.com>
 <20230819115249.GP22185@unreal>
 <20230822070211.GH2711035@kernel.org>
 <20230822141348.GH6029@unreal>
 <f497dc97-76bb-7526-7d19-d6886a3f3a65@intel.com>
 <20230822154810.GM6029@unreal>
 <8a0e05ed-ae10-ba2f-5859-003cd02fba9c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a0e05ed-ae10-ba2f-5859-003cd02fba9c@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692720415;
 bh=1V7w5fj4v1tLII5zZTBA1w3oKQjMiTF1veCGb3+VCYo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Hb9YUpXluU/qkdIVPn5jGONVx8yj//QL2hQAmzhL/mrITbjMYzNGxpMfnPNJT0cx2
 CGGf8gpIM+m/XMN5QRgwTvQ+cBl5sx9lT19gBg0HDh2AhoVx8IwXGT3oHrCAzfmMba
 3aEG1rDsvICZlWzzM7qhTdCh1ZC4Do0NFjSlOTfN8EgawbHqBP7Fxh6qi2RODTDHTe
 afhS/CQNyTmtStFor5ABkoW2aED9KRNHUCeqk88n/wgaNesHNN1JWTv0iQSKUyJzLU
 vzRN3Cu9T55sz6Cv5vwnTJUvFqs8yF+2fKwE84mBrkGQUyzTe4pkLx2m8j7KXQjND5
 BCPGhuw1K1hnA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Hb9YUpXl
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
 Jiri Pirko <jiri@nvidia.com>, anthony.l.nguyen@intel.com,
 Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBBdWcgMjIsIDIwMjMgYXQgMDU6NTY6MjVQTSArMDIwMCwgUHJ6ZW1layBLaXRzemVs
IHdyb3RlOgo+IE9uIDgvMjIvMjMgMTc6NDgsIExlb24gUm9tYW5vdnNreSB3cm90ZToKPiA+IE9u
IFR1ZSwgQXVnIDIyLCAyMDIzIGF0IDA0OjQ0OjI5UE0gKzAyMDAsIFByemVtZWsgS2l0c3plbCB3
cm90ZToKPiA+ID4gT24gOC8yMi8yMyAxNjoxMywgTGVvbiBSb21hbm92c2t5IHdyb3RlOgo+ID4g
PiA+IE9uIFR1ZSwgQXVnIDIyLCAyMDIzIGF0IDA5OjAyOjExQU0gKzAyMDAsIFNpbW9uIEhvcm1h
biB3cm90ZToKPiA+ID4gPiA+IE9uIFNhdCwgQXVnIDE5LCAyMDIzIGF0IDAyOjUyOjQ5UE0gKzAz
MDAsIExlb24gUm9tYW5vdnNreSB3cm90ZToKPiA+ID4gPiA+ID4gT24gVGh1LCBBdWcgMTcsIDIw
MjMgYXQgMDQ6MTc6MzhQTSArMDIwMCwgS2Fyb2wgS29sYWNpbnNraSB3cm90ZToKPiA+ID4gPiA+
ID4gPiBUaGUgaWNlX3BmX3NyY190bXJfb3duZWQoKSBtYWNybyBleGlzdHMgdG8gY2hlY2sgdGhl
IGZ1bmN0aW9uIGNhcGFiaWxpdHkKPiA+ID4gPiA+ID4gPiBiaXQgaW5kaWNhdGluZyBpZiB0aGUg
Y3VycmVudCBmdW5jdGlvbiBvd25zIHRoZSBQVFAgaGFyZHdhcmUgY2xvY2suCj4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiBUaGlzIGlzIGZpcnN0IHBhdGNoIGluIHRoZSBzZXJpZXMsIGJ1dCBJIGNh
bid0IGZpbmQgbWVudGlvbmVkIG1hY3JvLgo+ID4gPiA+ID4gPiBNeSBuZXQtbmV4dCBpcyBiYXNl
ZCBvbiA1YjBhMTQxNGUwYjAgKCJNZXJnZSBicmFuY2ggJ3NtYy1mZWF0dXJlcyciKQo+ID4gPiA+
ID4gPiDinpwgIGtlcm5lbCBnaXQ6KG5ldC1uZXh0KSBnaXQgZ3JlcCBpY2VfcGZfc3JjX3Rtcl9v
d25lZAo+ID4gPiA+ID4gPiBzaG93cyBub3RoaW5nLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
T24gd2hpY2ggYnJhbmNoIGlzIGl0IGJhc2VkPwo+ID4gPiA+ID4gCj4gPiA+ID4gPiBIaSBMZW9u
LAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBNeSBhc3N1bXB0aW9uIGlzIHRoYXQgaXQgaXMgYmFzZWQg
b24gdGhlIGRldi1xdWV1ZSBicmFuY2ggb2YKPiA+ID4gPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RuZ3V5L25leHQtcXVldWUuZ2l0Cj4gPiA+ID4g
Cj4gPiA+ID4gU28gc2hvdWxkIG5ldGRldiByZWFkZXJzIHJldmlldyBpdCBvciB3YWl0IHRpbGwg
SW50ZWwgZm9sa3MgcGVyZm9ybQo+ID4gPiA+IGZpcnN0IHBhc3Mgb24gaXQ/Cj4gPiA+IAo+ID4g
PiBNb3N0IG9mIHRoZSB0aW1lIEludGVsIGZvbGtzIHdvdWxkIGJlIGZpcnN0IHRvIHJldmlldywg
aWYgb25seSBiZWNhdXNlIG9mCj4gPiA+IG91ciBwcmUtSVdMIHByb2Nlc3NlcyBvciBwdXJlIGZh
bWlsaWFyaXR5L2ludGVyZXN0IGluIGdpdmVuIHBpZWNlLgo+ID4gPiAKPiA+ID4gRm9yIHRoaXMg
cGFydGljdWxhciBzZXJpZXMsIGl0IGlzIGFib3V0IHJpZ2h0ICJjb2Rld2lzZSIgc2luY2UgdjEs
IHNvIHlvdQo+ID4gPiBhcmUgd2VsY29tZSBmb3IgYW4gaW5zaWdodGZ1bCBsb29rIGF0IHYzCj4g
PiA+IChJIGRpZG4ndCBwcm92aWRlZCBteSBSQnMgc28gZmFyIGJlY2F1c2Ugb2YgIm1ldGFkYXRh
IiBpc3N1ZXMgOiksCj4gPiA+IHdpbGwgdGFrZSBhIGZyZXNoIGxvb2ssIGJ1dCB5b3UgZG9uJ3Qg
bmVlZCB0byB3YWl0KS4KPiA+ID4gCj4gPiA+IAo+ID4gPiBHZW5lcmFsIGlkZWEgZm9yIENDJ2lu
ZyBuZXRkZXYgZm9yIElXTC10YXJnZXRlZCBwYXRjaGVzIGlzIHRvIGhhdmUgb3Blbgo+ID4gPiBk
ZXZlbG9tcGVudCBwcm9jZXNzLgo+ID4gPiBRdWFsaXR5IHNob3VsZCBiZSBhbHJlYWR5IGFzIGZv
ciBuZXRkZXYgcG9zdGluZy4KPiA+ID4gT3VyIFZBTCBwaWNrcyB1cCBwYXRjaGVzIGZvciB0ZXN0
aW5nIGZyb20gaGVyZSB3aGVuIFRvbnkgbWFya3MgdGhlbSBzby4KPiA+ID4gCj4gPiA+IFRoYXQn
cyB3aGF0IEkgY291bGQgc2F5IGZvciByZXZpZXcgcHJvY2Vzcy4KPiA+ID4gCj4gPiA+ICJNYWlu
dGFpbmVycyBzdHVmZiIsIEkgKmd1ZXNzKiwgaXM6Cj4gPiA+IGFmdGVyIHJldmlldyZ0ZXN0IFRv
bnkgUmVxdWVzdHMgbmV0ZGV2IE1haW50YWluZXJzIHRvIFB1bGwKPiA+ID4gKGFuZCB0aHJvdHRs
ZXMgb3V0Z29pbmcgc3R1ZmYgYnkgZG9pbmcgc28gdG8gcGFjZSBhZ3JlZWQgdXBvbikuCj4gPiA+
IEF0IHRoYXQgc3RhZ2UgaXMgYSBsYXN0IG1vbWVudCBmb3IgKGxhdGU/KSByZXZpZXcsIHdlbGNv
bWVkIGFzIGFsd2F5cy4KPiA+IAo+ID4gSXQgbWVhbnMgdGhhdCB3ZSAobmV0ZGV2QC4uLiApIHdp
bGwgc2VlICJzYW1lIiBwYXRjaGVzIHR3aWNlLCBhbSBJIHJpZ2h0Pwo+IAo+IFRoYXQncyB0cnVl
LgoKQ2FuIEkgc3VnZ2VzdCBjaGFuZ2UgaW4gdGhlIHByb2Nlc3M/CjEuIFBlcmZvcm0gdmFsaWRh
dGlvbiBiZWZvcmUgcG9zdGluZwoyLiBJbnRlbCB3aWxsIHBvc3QgdGhlaXIgcGF0Y2hlcyB0byB0
aGUgbmV0ZGV2QCBNTC4KMy4gVG9ueSB3aWxsIGNvbGxlY3QgcmV2aWV3ZWQgcGF0Y2hlcyBmcm9t
IG5ldGRldkAKNC4gVG9ueSB3aWxsIHNlbmQgY2xlYW4gUFJzICh3aXRob3V0IHBhdGNoZXMpIGZy
b20gdGltZSB0byB0aW1lIHRvCm5ldGRldiBtYWludGFpbmVycyBmb3IgYWNjZXB0YW5jZS4KCkl0
IHdpbGwgYWxsb3cgdG8gYWxsIG9mIHVzIChJbnRlbCwgTnZpZGlhIGUudC5jKSB0byBoYXZlIHNh
bWUgc3VibWlzc2lvbgpmbG93IHdpdGhvdXQgc2FjcmlmaWNpbmcgb3BlbiBuZXRkZXZAIHJldmll
dyB3aGljaCB3aWxsIGJlIGRvbmUgb25seSBvbmNlLgoKSmFrdWIvRGF2ZSwgaXMgaXQgcG9zc2li
bGU/CgpUaGFua3MKCj4gCj4gPiAKPiA+IFRoYW5rcwo+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4g
Cj4gPiA+ID4gCj4gPiA+ID4gVGhhbmtzCj4gPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0Cj4gPiA+ID4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiA+ID4gPiBodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KPiA+ID4gCj4g
PiA+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
