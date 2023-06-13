Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C792372E3FE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 15:24:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BD3A61151;
	Tue, 13 Jun 2023 13:24:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BD3A61151
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686662671;
	bh=QfG5rr+aJ/iQCR5oDGl1FbNFuv0VhvIWJIVOWVrIC/c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v5y1AHIM7p7bK67NzT8ly/2bTFiwhsLfFMPFhpvvKmQK4i+TEIdn13igfNUm5ViFu
	 cYKwU/3nZvREATdailJfqwJCy7cFp2jJOmKmgQdpSEWRyeme04Zug5d+2pdizhWFRh
	 TjAccLJQEN6mwVUs6hDD3aLMOqY/PyKI0CQKwzAyhtF0TR/nyydcczi0YNK5mONroQ
	 jJAe1J+eXkIouDEV4kFH09QwWoOjZpChVBLhCYqCiGBPhPXYPESGlo5vXEC1SwNIfk
	 zGYx76hH3g5tyHdYBpr58tNqUNpGmF7/HFymhzss5PwlECVqVJMTlBuBBkVwa8CzB3
	 TpKpNimlTz8bQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zKj1GMk9Ju-o; Tue, 13 Jun 2023 13:24:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C32A60FEB;
	Tue, 13 Jun 2023 13:24:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C32A60FEB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6042A1BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 13:24:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 33DB64089F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 13:24:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33DB64089F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rAqglbmMo3LY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 13:24:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D56CD40889
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D56CD40889
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 13:24:22 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2DBED61E5FE01;
 Tue, 13 Jun 2023 15:23:31 +0200 (CEST)
Message-ID: <1e2404ff-232b-5999-cdb2-4205c58b071f@molgen.mpg.de>
Date: Tue, 13 Jun 2023 15:23:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Piotr Gardocki <piotrx.gardocki@intel.com>
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
 <20230613122420.855486-2-piotrx.gardocki@intel.com> <ZIhq4Mb7+jGxIdAn@boxer>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <ZIhq4Mb7+jGxIdAn@boxer>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] net: add check for
 current MAC address in dev_set_mac_address
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, kuba@kernel.org,
 simon.horman@corigine.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNYWNpZWosCgoKQW0gMTMuMDYuMjMgdW0gMTU6MTAgc2NocmllYiBNYWNpZWogRmlqYWxr
b3dza2k6Cj4gT24gVHVlLCBKdW4gMTMsIDIwMjMgYXQgMDI6MjQ6MThQTSArMDIwMCwgUGlvdHIg
R2FyZG9ja2kgd3JvdGU6Cj4+IEluIHNvbWUgY2FzZXMgaXQgaXMgcG9zc2libGUgZm9yIGtlcm5l
bCB0byBjb21lIHdpdGggcmVxdWVzdAo+PiB0byBjaGFuZ2UgcHJpbWFyeSBNQUMgYWRkcmVzcyB0
byB0aGUgYWRkcmVzcyB0aGF0IGlzIGFscmVhZHkKPj4gc2V0IG9uIHRoZSBnaXZlbiBpbnRlcmZh
Y2UuCj4+Cj4+IFRoaXMgcGF0Y2ggYWRkcyBwcm9wZXIgY2hlY2sgdG8gcmV0dXJuIGZhc3QgZnJv
bSB0aGUgZnVuY3Rpb24KPj4gaW4gdGhlc2UgY2FzZXMuCj4gCj4gUGxlYXNlIHVzZSBpbXBlcmF0
aXZlIG1vb2QgaGVyZSAtICJhZGQgcHJvcGVyIGNoZWNrLi4uIgoKSnVzdCBhIG5vdGUsIHRoYXQg
aW4g4oCcYWRkIGNoZWNrIOKApuKAnSB0aGUgdmVyYiAqYWRkKiBpcyBhbHJlYWR5IGluIAppbXBl
cmF0aXZlIG1vb2QuIChZb3UgY2FuIHNob3J0ZW4g4oCcYWRkIG5vdW4g4oCm4oCdIG9mdGVuIHRv
IGp1c3QgdXNlIHRoZSAKdmVyYiBmb3IgdGhlIG5vdW4uIEluIHRoaXMgY2FzZToKCkNoZWNrIGN1
cnJlbnQgTUFDIGFkZHJlc3MgaW4gYGRldl9zZXRfbWFjX2FkZHJlc3NgCgpCdXQgaXTigJlzIG5v
dCBzcGVjaWZpYyBlbm91Z2guIE1heWJlOgoKQXZvaWQgc2V0dGluZyBzYW1lIE1BQyBhZGRyZXNz
CgoKS2luZCByZWdhcmRzLAoKUGF1bAoKCj4+IEFuIGV4YW1wbGUgb2Ygc3VjaCBjYXNlIGlzIGFk
ZGluZyBhbiBpbnRlcmZhY2UgdG8gYm9uZGluZwo+PiBjaGFubmVsIGluIGJhbGFuY2UtYWxiIG1v
ZGU6Cj4+IG1vZHByb2JlIGJvbmRpbmcgbW9kZT1iYWxhbmNlLWFsYiBtaWltb249MTAwIG1heF9i
b25kcz0xCj4+IGlwIGxpbmsgc2V0IGJvbmQwIHVwCj4+IGlmZW5zbGF2ZSBib25kMCA8ZXRoPgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBQaW90ciBHYXJkb2NraSA8cGlvdHJ4LmdhcmRvY2tpQGludGVs
LmNvbT4KPiAKPiBJJ2xsIGxldCBLdWJhIGFjayBpdC4KPiAKPj4gLS0tCj4+ICAgbmV0L2NvcmUv
ZGV2LmMgfCAyICsrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvbmV0L2NvcmUvZGV2LmMgYi9uZXQvY29yZS9kZXYuYwo+PiBpbmRleCBjMjQ1
NmIzNjY3ZmUuLjhmMWM0OWFiMTdkZiAxMDA2NDQKPj4gLS0tIGEvbmV0L2NvcmUvZGV2LmMKPj4g
KysrIGIvbmV0L2NvcmUvZGV2LmMKPj4gQEAgLTg3NTQsNiArODc1NCw4IEBAIGludCBkZXZfc2V0
X21hY19hZGRyZXNzKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsIHN0cnVjdCBzb2NrYWRkciAqc2Es
Cj4+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPj4gICAJaWYgKCFuZXRpZl9kZXZpY2VfcHJlc2VudChk
ZXYpKQo+PiAgIAkJcmV0dXJuIC1FTk9ERVY7Cj4+ICsJaWYgKCFtZW1jbXAoZGV2LT5kZXZfYWRk
ciwgc2EtPnNhX2RhdGEsIGRldi0+YWRkcl9sZW4pKQo+PiArCQlyZXR1cm4gMDsKPj4gICAJZXJy
ID0gZGV2X3ByZV9jaGFuZ2VhZGRyX25vdGlmeShkZXYsIHNhLT5zYV9kYXRhLCBleHRhY2spOwo+
PiAgIAlpZiAoZXJyKQo+PiAgIAkJcmV0dXJuIGVycjsKPj4gLS0gCj4+IDIuMzQuMQo+PgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
