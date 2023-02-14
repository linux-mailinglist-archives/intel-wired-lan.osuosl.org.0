Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC4F696784
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 16:01:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D398409AA;
	Tue, 14 Feb 2023 15:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D398409AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676386865;
	bh=mHsyBteW+41yblsLWnebTxsJkamwFT8PmgQY3tARmRM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5KdOsghNVgmRYAEugJSzq4wdc2u7GwuM8asbZ8w4Uue3uckIufnJM9sICik80Gg8e
	 /Wy+f6ehl0+g6uSTnW/0vMVdSLRyXcjOcuFthgMFlLlXuOOyeKrjvZoiQiYT0SB9u0
	 B2q+gc/RBz3okiaJh0SukL46iYF2oO1tGOxBQ91bPjs1IZWKYrDj0a4/+Eadplij8f
	 MZWDElXzU6i8pnRQFcVVeYDhEsIOTOEk98S4M/npV9KtfyWSwSoCUa/QgukOYO4V68
	 MwyLT0DkGoe1ulKYfHP6xmjSV9i9ANUE6znWtfwJVjSFawXAYwteBh4BdL0T1mn4/M
	 aZqoFrRSje8fA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MBtBwWOfREET; Tue, 14 Feb 2023 15:01:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12AE54098F;
	Tue, 14 Feb 2023 15:01:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12AE54098F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ABB101BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 15:00:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8407781CE3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 15:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8407781CE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f7MBuQxGnqYl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 15:00:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33D4781B0A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 33D4781B0A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 15:00:55 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id AA34F60027FD9;
 Tue, 14 Feb 2023 16:00:52 +0100 (CET)
Message-ID: <6a5ded96-2425-ff9b-c1b1-eca1c103164c@molgen.mpg.de>
Date: Tue, 14 Feb 2023 16:00:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Jesper Dangaard Brouer <brouer@redhat.com>
References: <167604167956.1726972.7266620647404438534.stgit@firesoul>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <167604167956.1726972.7266620647404438534.stgit@firesoul>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V1] igc: enable and fix RX
 hash usage by netstack
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, ast@kernel.org, anthony.l.nguyen@intel.com,
 Stanislav Fomichev <sdf@google.com>, yoong.siang.song@intel.com,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKZXNwZXIsCgoKVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgeW91ciBwYXRjaC4KCkFtIDEw
LjAyLjIzIHVtIDE2OjA3IHNjaHJpZWIgSmVzcGVyIERhbmdhYXJkIEJyb3VlcjoKPiBXaGVuIGZ1
bmN0aW9uIGlnY19yeF9oYXNoKCkgd2FzIGludHJvZHVjZWQgaW4gdjQuMjAgdmlhIGNvbW1pdCAw
NTA3ZWY4YTAzNzIKPiAoImlnYzogQWRkIHRyYW5zbWl0IGFuZCByZWNlaXZlIGZhc3RwYXRoIGFu
ZCBpbnRlcnJ1cHQgaGFuZGxlcnMiKSwgdGhlCj4gaGFyZHdhcmUgd2Fzbid0IGNvbmZpZ3VyZWQg
dG8gcHJvdmlkZSBSU1MgaGFzaCwgdGh1cyBpdCBtYWRlIHNlbnNlIHRvIG5vdAo+IGVuYWJsZSBu
ZXRfZGV2aWNlIE5FVElGX0ZfUlhIQVNIIGZlYXR1cmUgYml0Lgo+IAo+IFRoZSBOSUMgaGFyZHdh
cmUgd2FzIGNvbmZpZ3VyZWQgdG8gZW5hYmxlIFJTUyBoYXNoIGluZm8gaW4gdjUuMiB2aWEgY29t
bWl0Cj4gMjEyMWMyNzEyZjgyICgiaWdjOiBBZGQgbXVsdGlwbGUgcmVjZWl2ZSBxdWV1ZXMgY29u
dHJvbCBzdXBwb3J0aW5nIiksIGJ1dAo+IGZvcmdvdCB0byBzZXQgdGhlIE5FVElGX0ZfUlhIQVNI
IGZlYXR1cmUgYml0Lgo+IAo+IFRoZSBvcmlnaW5hbCBpbXBsZW1lbnRhdGlvbiBvZiBpZ2Nfcnhf
aGFzaCgpIGRpZG4ndCBleHRyYWN0IHRoZSBhc3NvY2lhdGVkCj4gcGt0X2hhc2hfdHlwZSwgYnV0
IHN0YXRpY2FsbHkgc2V0IFBLVF9IQVNIX1RZUEVfTDMuIFRoZSBsYXJnZXN0IHBvcnRpb25zIG9m
Cj4gdGhpcyBwYXRjaCBhcmUgYWJvdXQgZXh0cmFjdGluZyB0aGUgUlNTIFR5cGUgZnJvbSB0aGUg
aGFyZHdhcmUgYW5kIG1hcHBpbmcKPiB0aGlzIHRvIGVudW0gcGt0X2hhc2hfdHlwZXMuIFRoaXMg
d2VyZSBiYXNlZCBvbiBGb3h2aWxsZSBpMjI1IHNvZnR3YXJlIHVzZXIKCnMvVGhpcyB3ZXJlL1Ro
aXMgd2FzLwoKPiBtYW51YWwgcmV2LTEuMy4xIGFuZCB0ZXN0ZWQgb24gSW50ZWwgRXRoZXJuZXQg
Q29udHJvbGxlciBJMjI1LUxNIChyZXYgMDMpLgo+IAo+IEZvciBVRFAgaXQncyB3b3J0aCBub3Rp
bmcgdGhhdCBSU1MgKHR5cGUpIGhhc2hpbmcgaGF2ZSBiZWVuIGRpc2FibGVkIGJvdGggZm9yCj4g
SVB2NCBhbmQgSVB2NiAoc2VlIElHQ19NUlFDX1JTU19GSUVMRF9JUFY0X1VEUCArIElHQ19NUlFD
X1JTU19GSUVMRF9JUFY2X1VEUCkKPiBiZWNhdXNlIGhhcmR3YXJlIFJTUyBkb2Vzbid0IGhhbmRs
ZSBmcmFnbWVudGVkIHBrdHMgd2VsbCB3aGVuIGVuYWJsZWQgKGNhbgo+IGNhdXNlIG91dC1vZi1v
cmRlcikuIFRoaXMgcmVzdWx0IGluIFBLVF9IQVNIX1RZUEVfTDMgZm9yIFVEUCBwYWNrZXRzLCBh
bmQKCnJlc3VsdCpzKgoKPiBoYXNoIHZhbHVlIGRvZXNuJ3QgaW5jbHVkZSBVRFAgcG9ydCBudW1i
ZXJzLiBOb3QgYmVpbmcgUEtUX0hBU0hfVFlQRV9MNCwgaGF2ZQo+IHRoZSBlZmZlY3QgdGhhdCBu
ZXRzdGFjayB3aWxsIGRvIGEgc29mdHdhcmUgYmFzZWQgaGFzaCBjYWxjIGNhbGxpbmcgaW50bwo+
IGZsb3dfZGlzc2VjdCwgYnV0IG9ubHkgd2hlbiBjb2RlIGNhbGxzIHNrYl9nZXRfaGFzaCgpLCB3
aGljaCBkb2Vzbid0Cj4gbmVjZXNzYXJ5IGhhcHBlbiBmb3IgbG9jYWwgZGVsaXZlcnkuCgpFeGN1
c2UgbXkgaWdub3JhbmNlLCBidXQgaXMgdGhhdCBidWcgdmlzaWJsZSBpbiBwcmFjdGljZSBieSB1
c2VycyAKKHBlcmZvcm1hbmNlPykgb3IgaXMgdGhhdCBmaXggbmVlZGVkIGZvciBmdXR1cmUgd29y
az8KCj4gRml4ZXM6IDIxMjFjMjcxMmY4MiAoImlnYzogQWRkIG11bHRpcGxlIHJlY2VpdmUgcXVl
dWVzIGNvbnRyb2wgc3VwcG9ydGluZyIpCj4gU2lnbmVkLW9mZi1ieTogSmVzcGVyIERhbmdhYXJk
IEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjLmggICAgICB8ICAgNTIgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIHwgICAzNSAr
KysrKysrKysrKysrKysrKy0tLQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA4MyBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2MvaWdjLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjLmgKPiBp
bmRleCBkZjNlMjZjMGNmMDEuLmExMTJlZWI1OTUyNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjLmgKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2MvaWdjLmgKPiBAQCAtMzExLDYgKzMxMSw1OCBAQCBleHRlcm4gY2hhciBpZ2NfZHJp
dmVyX25hbWVbXTsKPiAgICNkZWZpbmUgSUdDX01SUUNfUlNTX0ZJRUxEX0lQVjRfVURQCTB4MDA0
MDAwMDAKPiAgICNkZWZpbmUgSUdDX01SUUNfUlNTX0ZJRUxEX0lQVjZfVURQCTB4MDA4MDAwMDAK
PiAgIAo+ICsvKiBSWC1kZXNjIFdyaXRlLUJhY2sgZm9ybWF0IFJTUyBUeXBlJ3MgKi8KPiArZW51
bSBpZ2NfcnNzX3R5cGVfbnVtIHsKPiArCUlHQ19SU1NfVFlQRV9OT19IQVNICQk9IDAsCj4gKwlJ
R0NfUlNTX1RZUEVfSEFTSF9UQ1BfSVBWNAk9IDEsCj4gKwlJR0NfUlNTX1RZUEVfSEFTSF9JUFY0
CQk9IDIsCj4gKwlJR0NfUlNTX1RZUEVfSEFTSF9UQ1BfSVBWNgk9IDMsCj4gKwlJR0NfUlNTX1RZ
UEVfSEFTSF9JUFY2X0VYCT0gNCwKPiArCUlHQ19SU1NfVFlQRV9IQVNIX0lQVjYJCT0gNSwKPiAr
CUlHQ19SU1NfVFlQRV9IQVNIX1RDUF9JUFY2X0VYCT0gNiwKPiArCUlHQ19SU1NfVFlQRV9IQVNI
X1VEUF9JUFY0CT0gNywKPiArCUlHQ19SU1NfVFlQRV9IQVNIX1VEUF9JUFY2CT0gOCwKPiArCUlH
Q19SU1NfVFlQRV9IQVNIX1VEUF9JUFY2X0VYCT0gOSwKPiArCUlHQ19SU1NfVFlQRV9NQVgJCT0g
MTAsCj4gK307Cj4gKyNkZWZpbmUgSUdDX1JTU19UWVBFX01BWF9UQUJMRQkJMTYKPiArI2RlZmlu
ZSBJR0NfUlNTX1RZUEVfTUFTSwkJMHhGCj4gKwo+ICsvKiBpZ2NfcnNzX3R5cGUgLSBSeCBkZXNj
cmlwdG9yIFJTUyB0eXBlIGZpZWxkICovCj4gK3N0YXRpYyBpbmxpbmUgdTggaWdjX3Jzc190eXBl
KHVuaW9uIGlnY19hZHZfcnhfZGVzYyAqcnhfZGVzYykKPiArewo+ICsJLyogUlNTIFR5cGUgNC1i
aXQgbnVtYmVyOiAwLTkgKGFib3ZlIDkgaXMgcmVzZXJ2ZWQpICovCj4gKwlyZXR1cm4gcnhfZGVz
Yy0+d2IubG93ZXIubG9fZHdvcmQuaHNfcnNzLnBrdF9pbmZvICYgSUdDX1JTU19UWVBFX01BU0s7
Cj4gK30KCklzIGl0IG5lY2Vzc2FyeSB0byBzcGVjZmljeSB0aGUgbGVuZ3RoIG9mIHRoZSByZXR1
cm4gdmFsdWUsIG9yIGNvdWxkIGl0IApiZSBgdW5zaWduZWQgaW50YC4gVXNpbmcg4oCcbmF0aXZl
4oCdIHR5cGVzIGlzIG5vcm1hbGx5IG1vcmUgcGVyZm9ybWFudCBbMV0uIApgc2NyaXB0cy9ibG9h
dC1vLW1ldGVyYCBtaWdodCBoZWxwIHRvIHZlcmlmeSB0aGF0LgoKW+KApl0KCj4gICBzdGF0aWMg
aW5saW5lIHZvaWQgaWdjX3J4X2hhc2goc3RydWN0IGlnY19yaW5nICpyaW5nLAo+ICAgCQkJICAg
ICAgIHVuaW9uIGlnY19hZHZfcnhfZGVzYyAqcnhfZGVzYywKPiAgIAkJCSAgICAgICBzdHJ1Y3Qg
c2tfYnVmZiAqc2tiKQo+ICAgewo+IC0JaWYgKHJpbmctPm5ldGRldi0+ZmVhdHVyZXMgJiBORVRJ
Rl9GX1JYSEFTSCkKPiAtCQlza2Jfc2V0X2hhc2goc2tiLAo+IC0JCQkgICAgIGxlMzJfdG9fY3B1
KHJ4X2Rlc2MtPndiLmxvd2VyLmhpX2R3b3JkLnJzcyksCj4gLQkJCSAgICAgUEtUX0hBU0hfVFlQ
RV9MMyk7Cj4gKwlpZiAocmluZy0+bmV0ZGV2LT5mZWF0dXJlcyAmIE5FVElGX0ZfUlhIQVNIKSB7
Cj4gKwkJdTMyIHJzc19oYXNoID0gbGUzMl90b19jcHUocnhfZGVzYy0+d2IubG93ZXIuaGlfZHdv
cmQucnNzKTsKPiArCQl1OCAgcnNzX3R5cGUgPSBpZ2NfcnNzX3R5cGUocnhfZGVzYyk7CgpBbW9u
Z3N0IG90aGVycywgYWxzbyBoZXJlLgoKPiArCQllbnVtIHBrdF9oYXNoX3R5cGVzIGhhc2hfdHlw
ZTsKPiArCj4gKwkJaGFzaF90eXBlID0gaWdjX3Jzc190eXBlX3RhYmxlW3Jzc190eXBlXS5oYXNo
X3R5cGU7Cj4gKwkJc2tiX3NldF9oYXNoKHNrYiwgcnNzX2hhc2gsIGhhc2hfdHlwZSk7Cj4gKwl9
Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkIGlnY19yeF92bGFuKHN0cnVjdCBpZ2NfcmluZyAq
cnhfcmluZywKPiBAQCAtNjUwMSw2ICs2NTI3LDcgQEAgc3RhdGljIGludCBpZ2NfcHJvYmUoc3Ry
dWN0IHBjaV9kZXYgKnBkZXYsCj4gICAJbmV0ZGV2LT5mZWF0dXJlcyB8PSBORVRJRl9GX1RTTzsK
PiAgIAluZXRkZXYtPmZlYXR1cmVzIHw9IE5FVElGX0ZfVFNPNjsKPiAgIAluZXRkZXYtPmZlYXR1
cmVzIHw9IE5FVElGX0ZfVFNPX0VDTjsKPiArCW5ldGRldi0+ZmVhdHVyZXMgfD0gTkVUSUZfRl9S
WEhBU0g7Cj4gICAJbmV0ZGV2LT5mZWF0dXJlcyB8PSBORVRJRl9GX1JYQ1NVTTsKPiAgIAluZXRk
ZXYtPmZlYXR1cmVzIHw9IE5FVElGX0ZfSFdfQ1NVTTsKPiAgIAluZXRkZXYtPmZlYXR1cmVzIHw9
IE5FVElGX0ZfU0NUUF9DUkM7CgoKS2luZCByZWdhcmRzLAoKUGF1bAoKClsxXTogaHR0cHM6Ly9u
b3RhYnMub3JnL2NvZGluZy9zbWFsbEludHNCaWdQZW5hbHR5Lmh0bQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
