Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F80756FF6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 00:43:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41B7960F5E;
	Mon, 17 Jul 2023 22:43:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41B7960F5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689633785;
	bh=9W/IAXWBdAKMOVZU3GPHelwKrgWoo0CyiI8I0cr3iRI=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=oyoFkc7Yj+tmYdkoMKXKD3/JKyfSYzVi2PQiuHdjqc8Klj6tJ457RCBQj78TsYdhE
	 hVx/cAwEC0kk/H6Hi9O13wPz14rAvV6bvP9vblyHtkAvyUekD02TVY3YfLiDK4Twt7
	 lFLGvFnx3LeTYQKaIENAJ6lRkdT2rSfjOiQeuNgJ+TWktYD3LmyPpb7ZB/xqG3CIV6
	 X2iNRkfT6tQ0iyfAeLJf3uLGTGI1DSnthsnsDTncIpEd2pFv3h+X2rqGPedhMzF5AJ
	 i6m079fvipHGzl2ik8+Q/dYIXE+PKGSSYuckqegio0FJr5V4/CA9vvEwCm1O636ZGd
	 QWLbHYqrG7EhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S94t4Qo5LdtO; Mon, 17 Jul 2023 22:43:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8C5F60F37;
	Mon, 17 Jul 2023 22:43:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8C5F60F37
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 511871BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 22:42:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D6284055F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 22:42:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D6284055F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7BC1a7i4uaoZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 22:42:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1B19400AB
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1B19400AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 22:42:56 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A5A41612D6;
 Mon, 17 Jul 2023 22:42:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3A66C433C8;
 Mon, 17 Jul 2023 22:42:54 +0000 (UTC)
Date: Mon, 17 Jul 2023 17:42:52 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Message-ID: <20230717224252.GA461492@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAd53p4Owt_ygt2f=38M0X2MxnPsXv=BHzSLRbprwW208MUVdQ@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1689633775;
 bh=BWnev0VZCcMTwzzFzXjWACsLpmchQGgvzMThaGbhnZs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=jfiWG9EutL1bzGEC2jcUAMASWaHuLmrKizWWsctHIdUfPh1pCkE6GGk2lcfb9Oh44
 avuJ8wlTmrQ9BAqMCyfjZiQLIj9uPADnfPkFkQW0JW+oOr3mskr4QmN6fZQ6iudIrr
 P+nUTwc8xO3L0oIBNzWmMxkqoI1kTApd+me7P/jg8GTANk0C7lAjksJWedNDqz8muK
 SxSORvwS1UhXnfnPTu8Jio73vej+vwQlpQqF/KdxfP16Eohoyg3T5rca1jWUj6K2Gm
 1TpmDEZ3shEuNqKslpkOig4IT48xEn91VhxaixfrrIsMos84LWXDl+XLP4MO7CxKFg
 aO8NSyH9y2nLg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jfiWG9Eu
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Ignore AER reset when device
 is suspended
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, "Guilherme G . Piccoli" <gpiccoli@igalia.com>,
 Eric Dumazet <edumazet@google.com>, anthony.l.nguyen@intel.com,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, Aaron Ma <aaron.ma@canonical.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBKdWwgMTcsIDIwMjMgYXQgMDM6Mzg6MDlQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPiBPbiBGcmksIEp1bCAxNCwgMjAyMyBhdCAxMDo1NOKAr1BNIEJqb3JuIEhlbGdhYXMg
PGhlbGdhYXNAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiBPbiBGcmksIEp1bCAxNCwgMjAyMyBhdCAw
MTowNTo0MVBNICswODAwLCBLYWktSGVuZyBGZW5nIHdyb3RlOgo+ID4gPiBXaGVuIGEgc3lzdGVt
IHRoYXQgY29ubmVjdHMgdG8gYSBUaHVuZGVyYm9sdCBkb2NrIGVxdWlwcGVkIHdpdGggSTIyNSwK
PiA+ID4gbGlrZSBIUCBUaHVuZGVyYm9sdCBEb2NrIEc0LCBJMjI1IHN0b3BzIHdvcmtpbmcgYWZ0
ZXIgUzMgcmVzdW1lOgo+ID4gPiAuLi4KPiA+Cj4gPiA+IFRoZSBpc3N1ZSBpcyB0aGF0IHRoZSBQ
VE0gcmVxdWVzdHMgYXJlIHNlbmRpbmcgYmVmb3JlIGRyaXZlciByZXN1bWVzIHRoZQo+ID4gPiBk
ZXZpY2UuIFNpbmNlIHRoZSBpc3N1ZSBjYW4gYWxzbyBiZSBvYnNlcnZlZCBvbiBXaW5kb3dzLCBp
dCdzIHF1aXRlCj4gPiA+IGxpa2VseSBhIGZpcm13YXJlL2hhcmR3YXJlIGxpbWl0YXRpb24uCj4g
Pgo+ID4gRG9lcyB0aGlzIG1lYW4gd2UgZGlkbid0IGRpc2FibGUgUFRNIGNvcnJlY3RseSBvbiBz
dXNwZW5kPyAgT3IgaXMgdGhlCj4gCj4gUFRNIGdldHMgZGlzYWJsZWQgY29ycmVjdGx5IGR1cmlu
ZyBzdXNwZW5kLCBieSBjb21taXQgYzAxMTYzZGJkMWI4Cj4gKCJQQ0kvUE06IEFsd2F5cyBkaXNh
YmxlIFBUTSBmb3IgYWxsIGRldmljZXMgZHVyaW5nIHN1c3BlbmQiKS4KPiBCZWZvcmUgdGhhdCBj
b21taXQgdGhlIHN1c3BlbmQgd2lsbCBmYWlsLgo+IAo+ID4gZGV2aWNlIGRlZmVjdGl2ZSBhbmQg
c2VuZGluZyBQVE0gcmVxdWVzdHMgZXZlbiB0aG91Z2ggUFRNIGlzIGRpc2FibGVkPwo+IAo+IFll
cy4gV2hlbiBTMyByZXN1bWUsIEkgZ3Vlc3MgdGhlIGZpcm13YXJlIHJlc2V0cyB0aGUgZG9jayBh
bmQvb3IgSTIyNQo+IHNvIFBUTSByZXF1ZXN0IHN0YXJ0cyBldmVuIGJlZm9yZSB0aGUgT1MgaXMg
cmVzdW1lZC4KPiBBRkFJSyB0aGUgaXNzdWUgZG9lc24ndCBoYXBwZW4gd2hlbiBzMklkbGUgaXMg
dXNlZC4KCkEgcmVzZXQgc2hvdWxkIGRpc2FibGUgUFRNLiAgSSB3b25kZXIgaWYgZG9jayBmaXJt
d2FyZSBjb3VsZCBiZQplbmFibGluZyBQVE0/ICBUaGF0IHdvdWxkIHNlZW0gbGlrZSBhIGRlZmVj
dCB0byBtZSwgYmVjYXVzZSB0aGUgZG9jawpjYW4ndCBrbm93IHdoZXRoZXIgdGhlIERvd25zdHJl
YW0gUG9ydCBpbiB0aGUgbGFwdG9wIGhhcyBQVE0gZW5hYmxlZC4KCj4gPiBJZiB0aGUgbGF0dGVy
LCBJIHZvdGUgZm9yIGEgcXVpcmsgdGhhdCBqdXN0IGRpc2FibGVzIFBUTSBjb21wbGV0ZWx5Cj4g
PiBmb3IgdGhpcyBkZXZpY2UuCj4gCj4gVGhlIFMzIHJlc3VtZSBlbmFibGVzIFBUTSByZWdhcmRs
ZXNzIG9mIE9TIGludm9sdmVtZW50LiBTbyBJIGRvbid0Cj4gdGhpbmsgdGhpcyB3aWxsIHdvcmsu
CgpUaGF0J3MgLi4uIHdlaXJkLiAgU28gc29tZXRoaW5nIG90aGVyIHRoYW4gdGhlIE9TIGVuYWJs
ZXMgUFRNPyAgTm90CnN1cmUgaG93IHdlIGNhbiBkZWFsIHdpdGggdGhhdC4gIFNvbWUgKHByb2Jh
Ymx5IG1vc3QpIGxhcHRvcCBSb290ClBvcnRzIGRvbid0IHN1cHBvcnQgUFRNIGF0IGFsbCwgc28g
cGx1Z2dpbmcgdGhlIGRvY2sgaW50byBvbmUgb2YgdGhvc2UKd291bGQgYWx3YXlzIGNhdXNlIGVy
cm9ycy4KCj4gPiBUaGlzIGNoZWNrIGluIC5lcnJvcl9kZXRlY3RlZCgpIGxvb2tzIG91dCBvZiBw
bGFjZSB0byBtZSBiZWNhdXNlCj4gPiB0aGVyZSdzIG5vIGNvbm5lY3Rpb24gYmV0d2VlbiBBRVIg
YW5kIFBUTSwgdGhlcmUncyBubyBjb25uZWN0aW9uCj4gPiBiZXR3ZWVuIFBUTSBhbmQgdGhlIGRl
dmljZSBiZWluZyBlbmFibGVkLCBhbmQgdGhlIGNvbm5lY3Rpb24gYmV0d2Vlbgo+ID4gdGhlIGRl
dmljZSBiZWluZyBlbmFibGVkIGFuZCBiZWluZyBmdWxseSByZXN1bWVkIGlzIGEgbGl0dGxlIHRl
bnVvdXMuCj4gCj4gVHJ1ZS4gVGhpcyBwYXRjaCBpcyBqdXN0IGEgd29ya2Fyb3VuZC4KPiAKPiBI
YXZlIHlvdSBjb25zaWRlcmVkIG15IG90aGVyIHByb3Bvc2VkIGFwcHJvYWNoPyBMaWtlIGRpc2Fi
bGUgQUVSCj4gY29tcGxldGVseSBkdXJpbmcgc3VzcGVuZCwgb3IgZXZlbiBkZWZlciB0aGUgcmVz
dW1pbmcgb2YgUENJZSBzZXJ2aWNlcwo+IGFmdGVyIHRoZSBlbnRpcmUgaGllcmFyY2h5IGlzIHJl
c3VtZWQ/CgpXZSBtaWdodCBuZWVkIHRvIGRpc2FibGUgQUVSIGluIGNlcnRhaW4gY2FzZXMgd2hl
cmUgZXJyb3JzIGFyZQp1bmF2b2lkYWJsZSwgbGlrZSBhIHN1cnByaXNlIHVucGx1ZyB0aGF0IGNh
dXNlcyBkYXRhIGxpbmsgZXJyb3JzIHdoZW4KdGhlIHBsdWcgZ2V0cyB5YW5rZWQgb3V0LgoKQnV0
IHRoaXMgUFRNIHRoaW5nIGlzIG5vdCBsaWtlIHRoYXQgLS0gdGhpcyBpcyBhIGNvbmZpZ3VyYXRp
b24gZXJyb3IsCmFuZCBJIHRoaW5rIHdlIHNob3VsZCBmaXggdGhlIGNvbmZpZ3VyYXRpb24gaW5z
dGVhZCBvZiBpZ25vcmluZyB0aGUKZXJyb3IuCgo+ID4gPiBTbyBhdm9pZCByZXNldHRpbmcgdGhl
IGRldmljZSBpZiBpdCdzIG5vdCByZXN1bWVkLiBPbmNlIHRoZSBkZXZpY2UgaXMKPiA+ID4gZnVs
bHkgcmVzdW1lZCwgdGhlIGRldmljZSBjYW4gd29yayBub3JtYWxseS4KCkknbSBhIGxpdHRsZSBj
b25mdXNlZCBhYm91dCBob3cgdGhpcyB3b3JrYXJvdW5kIHdvcmtzLiAgVGhlIHN1YmplY3QKc2F5
cyAiaWdub3JlIEFFUiByZXNldCIsIGJ1dCBoZXJlIHlvdSBzYXkgKmF2b2lkKiByZXNldHRpbmcg
dGhlCmRldmljZS4KCkkgdGhpbmsgd2Ugb25seSByZXNldCB0aGluZ3MgaW4gdGhlIEFFUl9GQVRB
TCBjYXNlLCBhbmQgdGhlIFBUTSBVUiBpcwphbiBBRVJfTk9ORkFUQUwgZXJyb3IsIHNvIEknbSBu
b3Qgc3VyZSB3aGF0IHRoZSBlZmZlY3Qgb2YgdGhpcyBwYXRjaAppcy4KCkFsc28sIGlnY19pb19l
cnJvcl9kZXRlY3RlZCgpIG5lZWRzIHRvIHJldHVybiBvbmUgb2YgdGhlCnBjaV9lcnNfcmVzdWx0
IHZhbHVlcywgbm90IHplcm8uICBaZXJvIGlzbid0IGEgdmFsaWQgcmV0dXJuIHZhbHVlLCBzbwp3
ZSBjYW4ndCByZWx5IG9uIGhvdyBwY2llX2RvX3JlY292ZXJ5KCkgaGFuZGxlcyBpdC4KCj4gPiA+
IExpbms6IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjE2ODUw
Cj4gPiA+IFJldmlld2VkLWJ5OiBHdWlsaGVybWUgRy4gUGljY29saSA8Z3BpY2NvbGlAaWdhbGlh
LmNvbT4KPiA+ID4gQWNrZWQtYnk6IFZpbmljaXVzIENvc3RhIEdvbWVzIDx2aW5pY2l1cy5nb21l
c0BpbnRlbC5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEthaS1IZW5nIEZlbmcgPGthaS5oZW5n
LmZlbmdAY2Fub25pY2FsLmNvbT4KPiA+ID4KPiA+ID4gLS0tCj4gPiA+IHYyOgo+ID4gPiAgLSBG
aXggdHlwby4KPiA+ID4gIC0gTWVudGlvbiB0aGUgcHJvZHVjdCBuYW1lLgo+ID4gPgo+ID4gPiAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgfCAzICsrKwo+ID4gPiAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+ID4gPiBpbmRleCA5ZjkzZjBmNGY3NTIuLjhj
MzZiYmU1ZTQyOCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdjL2lnY19tYWluLmMKPiA+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdj
L2lnY19tYWluLmMKPiA+ID4gQEAgLTcxMTUsNiArNzExNSw5IEBAIHN0YXRpYyBwY2lfZXJzX3Jl
c3VsdF90IGlnY19pb19lcnJvcl9kZXRlY3RlZChzdHJ1Y3QgcGNpX2RldiAqcGRldiwKPiA+ID4g
ICAgICAgc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiA9IHBjaV9nZXRfZHJ2ZGF0YShwZGV2KTsK
PiA+ID4gICAgICAgc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYobmV0
ZGV2KTsKPiA+ID4KPiA+ID4gKyAgICAgaWYgKCFwY2lfaXNfZW5hYmxlZChwZGV2KSkKPiA+ID4g
KyAgICAgICAgICAgICByZXR1cm4gMDsKPiA+ID4gKwo+ID4gPiAgICAgICBuZXRpZl9kZXZpY2Vf
ZGV0YWNoKG5ldGRldik7Cj4gPiA+Cj4gPiA+ICAgICAgIGlmIChzdGF0ZSA9PSBwY2lfY2hhbm5l
bF9pb19wZXJtX2ZhaWx1cmUpCj4gPiA+IC0tCj4gPiA+IDIuMzQuMQo+ID4gPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdAo+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4gaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
