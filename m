Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF8A730336
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 17:14:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BCEF61366;
	Wed, 14 Jun 2023 15:14:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BCEF61366
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686755686;
	bh=ZF/tF5EX6GobNtbMz4WP22kILnw8CfSILV1e1YQyuVI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M2Y6SWImkvueKYj+65dXiXCaS3Db4BzMNckxYxd6TK9C1wnY/DKlXmPG3o02S6TBp
	 WYDgqDrqrbfIolYtz15Z09+QlE548aVvlbs2qNr9IGclfe0rkKPdBTN9qoItjQqUMM
	 PTL5IKe19Rhhg2RaaLBBENqO4xRpJlAHYEvb1DamLU+BoY+Lv6YUM1su8h4BytGF8I
	 JCI7RPMzKvF7JHakvs4K/A3tB7bXD91TX9qfgaOc49zysIh3vGNLRHPx50w9HBWo8l
	 x8VIBJVh+6trhbigqanOa2yvWNvjsHPKo+5MzgqoVJ0C5yTJx4QDEjNF1znOqVWahi
	 r5nvV/W7er2Jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bla1eqw0N_js; Wed, 14 Jun 2023 15:14:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B08546133C;
	Wed, 14 Jun 2023 15:14:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B08546133C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ADB301BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 13:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 84F8641792
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 13:45:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84F8641792
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ze4xb8dDOYAr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 13:45:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 334CA4064C
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 334CA4064C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 13:45:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D1B4463C20;
 Wed, 14 Jun 2023 13:45:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12A07C433C8;
 Wed, 14 Jun 2023 13:45:05 +0000 (UTC)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 12083BBEBB7; Wed, 14 Jun 2023 15:42:29 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>
In-Reply-To: <ZIm3lHaa3Rjl2xRe@boxer>
References: <20230613151005.337462-1-maciej.fijalkowski@intel.com>
 <9eee635f-0898-f9d3-f3ba-f6da662c90cc@intel.com> <ZIiJOVMs4qK+PDsp@boxer>
 <874jnbxmye.fsf@toke.dk> <16f10691-3339-0a18-402a-dc54df5a2e21@intel.com>
 <ZIm3lHaa3Rjl2xRe@boxer>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 14 Jun 2023 15:42:29 +0200
Message-ID: <87v8fqjh2y.fsf@toke.dk>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 14 Jun 2023 15:14:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686750305;
 bh=xSFFVMHAsN7TXbEJj6G0rLspoDICTsX+VxgYjqegLgI=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=tgQEjky3m9agkRBia5HsmccdZKEmAhQT3vL3Cg3osKdGwn6SpXd/lyBHnefYE+FnJ
 mZa2i73InoRT3fgi2csrN+nt7VqKEDb1jH2zgGlyTPMZw+loseeFQKOxBVkY1bGKc1
 WlLtRWzQtJ2XoyK3qkkG5XjWxyPFic2BA1c07ajoJwa1c8mSwneqBvTVimu4iMsPLi
 3XxEyPqncde2VBy3/z1K5VKb8H6hXW+au0bgBdrMxU17eb5MbHwKq/AaBRkfN2ckji
 NM0Sop9mtlqnNxpu0wwWP/10xisuTblMZV3S/YGSBkgY8nQa+kaxuQN2fpID329I8X
 P4gFsZrRTczpQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tgQEjky3
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: allow hot-swapping XDP
 programs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, fred@cloudflare.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPiB3cml0ZXM6
Cgo+IE9uIFdlZCwgSnVuIDE0LCAyMDIzIGF0IDAyOjQwOjA3UE0gKzAyMDAsIEFsZXhhbmRlciBM
b2Jha2luIHdyb3RlOgo+PiBGcm9tOiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAa2Vy
bmVsLm9yZz4KPj4gRGF0ZTogVHVlLCAxMyBKdW4gMjAyMyAxOTo1OTozNyArMDIwMAo+PiAKPj4g
PiBNYWNpZWogRmlqYWxrb3dza2kgPG1hY2llai5maWphbGtvd3NraUBpbnRlbC5jb20+IHdyaXRl
czoKPj4gPiAKPj4gPj4gT24gVHVlLCBKdW4gMTMsIDIwMjMgYXQgMDU6MTU6MTVQTSArMDIwMCwg
QWxleGFuZGVyIExvYmFraW4gd3JvdGU6Cj4+ID4+PiBGcm9tOiBNYWNpZWogRmlqYWxrb3dza2kg
PG1hY2llai5maWphbGtvd3NraUBpbnRlbC5jb20+Cj4+ID4+PiBEYXRlOiBUdWUsIDEzIEp1biAy
MDIzIDE3OjEwOjA1ICswMjAwCj4+IAo+PiBbLi4uXQo+PiAKPj4gPj4gU2luY2Ugd2UgcmVtb3Zl
ZCByY3Ugc2VjdGlvbnMgZnJvbSBkcml2ZXIgc2lkZXMgYW5kIGdpdmVuIGFuIGFzc3VtcHRpb24K
Pj4gPj4gdGhhdCBsb2NhbF9iaF97ZGlzLGVufWFibGUoKSBwYWlyIHNlcnZlcyB0aGlzIHB1cnBv
c2Ugbm93IGkgYmVsaWV2ZSB0aGlzCj4+ID4+IGlzIHNhZmUuIEFyZSB5b3UgYXdhcmUgb2Y6Cj4+
ID4+Cj4+ID4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2JwZi8yMDIxMDYyNDE2MDYwOS4yOTIz
MjUtMS10b2tlQHJlZGhhdC5jb20vCj4+IAo+PiBXaHkgWzBdIHRoZW4/IEFkZGVkIGluIFsxXSBw
cmVjaXNlbHkgZm9yIHRoZSBzYWtlIG9mIHNhZmUgWERQIHByb2cKPj4gYWNjZXNzIGFuZCB3YXNu
J3QgcmVtb3ZlZCA6cyBJIHdhcyByZWx5aW5nIG9uIHRoYXQgb25lIGluIG15IHN1Z2dlc3Rpb25z
Cj4+IGFuZCBjb2RlIDpECj4+IAo+PiA+IAo+PiA+IEFzIHRoZSBhdXRob3Igb2YgdGhhdCBzZXJp
ZXMsIEkgYWdyZWUgdGhhdCBpdCdzIG5vdCBuZWNlc3NhcnkgdG8gYWRkCj4+ID4gYWRkaXRpb25h
bCBSQ1UgcHJvdGVjdGlvbi4gaWNlX3ZzaV9hc3NpZ25fYnBmX3Byb2coKSBhbHJlYWR5IHVzZXMg
eGNoZygpCj4+ID4gYW5kIFdSSVRFX09OQ0UoKSB3aGljaCBzaG91bGQgcHJvdGVjdCBhZ2FpbnN0
IHRlYXJpbmcsIGFuZCB0aGUgeGRwX3Byb2cKPj4gPiBwb2ludGVyIGJlaW5nIHBhc3NlZCB0byBp
Y2VfcnVuX3hkcCgpIGlzIGEgY29weSByZXNpZGluZyBvbiB0aGUgc3RhY2ssCj4+ID4gc28gaXQg
d2lsbCBvbmx5IGJlIHJlYWQgb25jZSBwZXIgTkFQSSBjeWNsZSBhbnl3YXkgKHdoaWNoIGlzIGlu
IGxpbmUKPj4gPiB3aXRoIGhvdyBtb3N0IG90aGVyIGRyaXZlcnMgZG8gaXQpLgo+PiAKPj4gV2hh
dCBpZiBhIE5BUEkgcG9sbGluZyBjeWNsZSBpcyBiZWluZyBydW4gb24gb25lIGNvcmUgd2hpbGUg
YXQgdGhlIHZlcnkKPj4gc2FtZSBtb21lbnQgSSdtIHJlcGxhY2luZyB0aGUgWERQIHByb2cgb24g
YW5vdGhlciBjb3JlPyBOb3QgaW4gdGVybXMgb2YKPj4gcG9pbnRlciB0ZWFyaW5nLCBJIHNlZSBu
b3cgdGhhdCB0aGlzIGlzIGhhbmRsZWQgY29ycmVjdGx5LCBidXQgaW4gdGVybXMKPj4gb2YgcmVm
Y291bnRzPyBDYW4ndCBicGZfcHJvZ19wdXQoKSBmcmVlIGl0IHdoaWxlIHRoZSBwb2xsaW5nIGlz
IHN0aWxsCj4+IGFjdGl2ZT8KPgo+IEhtbSB5b3UgbWVhbiB3ZSBzaG91bGQgZG8gYnBmX3Byb2df
cHV0KCkgKmFmdGVyKiB3ZSB1cGRhdGUgYnBmX3Byb2cgb24KPiBpY2VfcnhfcmluZz8gSSB0aGlu
ayB0aGlzIGlzIGEgZmFpciBwb2ludCBhcyB3ZSBkb24ndCBidW1wIHRoZSByZWZjb3VudAo+IHBl
ciBlYWNoIFJ4IHJpbmcgdGhhdCBob2xkcyB0aGUgcHRyIHRvIGJwZl9wcm9nLCB3ZSBqdXN0IHJl
bHkgb24gdGhlIG1haW4KPiBvbmUgZnJvbSBWU0kuCgpZZXMsIHRoYXQncyB0cnVlLCB0aGUgZHVw
bGljYXRpb24gb2YgdGhlIHBvaW50ZXIgaW4gYWxsIHRoZSByaW5nCnN0cnVjdHVyZXMgY2FuIGxl
YWQgdG8gcHJvYmxlbXMgdGhlcmUgKHdoeSBpcyB0aGF0IGRvbmUgaW4gdGhlIGZpcnN0CnBsYWNl
PykuIEkgYWdyZWUgdGhhdCBzd2FwcGluZyB0aGUgb3JkZXIgb2YgdGhlIHBvaW50ZXIgYXNzaWdu
bWVudHMKc2hvdWxkIGJlIGVub3VnaCB0byBmaXggdGhpcy4KCj4+ID4gSXQgKndvdWxkKiBiZSBu
aWNlIHRvIGFkZCBhbiBfX3JjdSBhbm5vdGF0aW9uIHRvIGljZV92c2ktPnhkcF9wcm9nIGFuZAo+
PiA+IGljZV9yeF9yaW5nLT54ZHBfcHJvZyAoYW5kIG1vdmUgdG8gdXNpbmcgcmN1X2RlcmVmZXJl
bmNlKCksCj4+ID4gcmN1X2Fzc2lnbl9wb2ludGVyKCkgZXRjKSwgYnV0IHRoaXMgaXMgbW9yZSBh
IGRvY3VtZW50YXRpb24vc3RhdGljCj4+ID4gY2hlY2tlciB0aGluZyB0aGFuIGl0J3MgYSAiY29y
cmVjdG5lc3Mgb2YgdGhlIGdlbmVyYXRlZCBjb2RlIiB0aGluZyA6KQo+Cj4gQWdyZWUgYnV0IEkg
d291bGQgcmF0aGVyIGFkZHJlc3MgdGhlIHJlc3Qgb2YgSW50ZWwgZHJpdmVycyBpbiB0aGUKPiBz
ZXJpZXMuCgpUaGF0J3MgZmFpciA6KQoKLVRva2UKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4K
