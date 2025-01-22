Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BF0A1949D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jan 2025 16:04:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 154A084CF7;
	Wed, 22 Jan 2025 15:04:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gynvic2HuVRu; Wed, 22 Jan 2025 15:04:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F01284BCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737558287;
	bh=Dfq5JbaIBJBcJhWJe6ysSgQnQUV0ctmKoe440SM085s=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=APpLcYwSFheYMP2kril3HDj2P6YWyx6FaQPE0qUxyW5gT8cIu4x4OhXJkk5WTdrd/
	 VWFiU/dU8C3BQFdb51KnBUeDBvQU6RDrgMk2c/u/80tRMSaT5QnMWqMCMFDYaeCg/m
	 FgzBnMS2XQE9K6dcwg3qBg5zIWBtR0Khv2lykKAzLimsHIpry7/qHrcHyvB44z3brN
	 YyK/HJIaLLS3m2gUvxuD93uKFMM8hQWimfHhEwLVohScFW47+OfqxqivjtYwYY4Ipx
	 fdotBs6p5TERv4i/rCqaS3fnIq7mlE1Xs8rkK3v5APImWkvmdhFAFZAVICzFS3BBiT
	 KjKj/6nYpdABw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F01284BCB;
	Wed, 22 Jan 2025 15:04:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E64B5959
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 15:04:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C6E95415A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 15:04:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FMyTDnlylyqu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2025 15:04:43 +0000 (UTC)
X-Greylist: delayed 423 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 22 Jan 2025 15:04:42 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 08D4541588
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08D4541588
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a02:e00:ffe7:c::2;
 helo=mail.valdk.tel; envelope-from=iam@valdikss.org.ru; receiver=<UNKNOWN> 
Received: from mail.valdk.tel (mail.valdk.tel [IPv6:2a02:e00:ffe7:c::2])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08D4541588
 for <intel-wired-lan@osuosl.org>; Wed, 22 Jan 2025 15:04:42 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 999AE184E4A6; Wed, 22 Jan 2025 17:57:29 +0300 (MSK)
Message-ID: <de3512b3-d3cd-4102-a047-71859a517fe9@valdikss.org.ru>
Date: Wed, 22 Jan 2025 17:57:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: ValdikSS <iam@valdikss.org.ru>
To: intel-wired-lan@osuosl.org
Cc: vitaly.lifshits@intel.com
References: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
 <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
Content-Language: ru, en-US
Autocrypt: addr=iam@valdikss.org.ru; keydata=
 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
 OEcVmRU/pw5/zoQyQg==
In-Reply-To: <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------W6IUCaldk7QRg0u5uRdUwMkx"
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=valdikss.org.ru; s=msrv; t=1737557853;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=Dfq5JbaIBJBcJhWJe6ysSgQnQUV0ctmKoe440SM085s=;
 b=RQZKOsPiWNBzswhlh5cz8Ebljrb7sZy/dt6sYs69z+VmwFKt/UR7G1mwarA788ICnhrTCR
 peYGvLusdqsK6L1OUd99z1b/Vd9X4FmyUD/vdncVu0+40e/ErQHYAdgdR2bs/p3cOIXl2A
 08ImNePkMcpwlC/Ddg6JextRdKJVFtjT9SY8KXaC0n1XgOPOtckFuD2U5T+joakfhELftj
 9t7fUQe12xz0I44Fq4TE1N958r6n1JdgVIZpTeOdiuTKd/yIQ0pc8eNfOYISvHWho3fugM
 blgnpvLK8IzpOC1MfGHpcO9ABlHCqh0ktrpOtOJoCgp0IGKA5oaDEK5Nqrf6cA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=valdikss.org.ru
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=valdikss.org.ru header.i=@valdikss.org.ru
 header.a=rsa-sha256 header.s=msrv header.b=RQZKOsPi
Subject: Re: [Intel-wired-lan] I226-V 1G limited to ~250Mbit with ASPM
 enabled
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------W6IUCaldk7QRg0u5uRdUwMkx
Content-Type: multipart/mixed; boundary="------------0BzoAaNdS8i7DPKZUkbysSi8";
 protected-headers="v1"
From: ValdikSS <iam@valdikss.org.ru>
To: intel-wired-lan@osuosl.org
Cc: vitaly.lifshits@intel.com
Message-ID: <de3512b3-d3cd-4102-a047-71859a517fe9@valdikss.org.ru>
Subject: Re: [Intel-wired-lan] I226-V 1G limited to ~250Mbit with ASPM enabled
References: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
 <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
In-Reply-To: <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>

--------------0BzoAaNdS8i7DPKZUkbysSi8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMDkuMTIuMjAyNCAxMjoyMSBQTSwgVmFsZGlrU1Mgd3JvdGU6DQo+Pj4gQWZ0ZXIgKHBy
ZXN1bWFibHkpIGxhdGVzdCBVRUZJIHYwMDMzIHVwZGF0ZSBmb3IgdGhlIE5VQywgbXkgbmV0
d29yayANCj4+PiBpcyBsaW1pdGVkIHRvIH4yNTAgTWJpdC9zIGRvd25sb2FkIHVubGVzcyBJ
IGRpc2FibGUgUENJRSBBU1BNIG9wdGlvbiANCj4+PiBpbiBVRUZJIHNldHRpbmdzLg0KPj4+
IDU2OjAwLjAgRXRoZXJuZXQgY29udHJvbGxlciBbMDIwMF06IEludGVsIENvcnBvcmF0aW9u
IEV0aGVybmV0IA0KPj4+IENvbnRyb2xsZXIgSTIyNi1WIFs4MDg2OjEyNWNdIChyZXYgMDQp
DQo+Pg0KPj4gSGVsbG8sDQo+Pg0KPj4gSSBiZWxpZXZlIHRoYXQgdGhlIGlzc3VlIHlvdSBh
cmUgZmFjaW5nIGlzIHJlbGF0ZWQgdG8gUENJRSBMMS4yIHN0YXRlIA0KPj4gZXhpdCBsYXRl
bmN5LiBUbyBjb25maXJtIHRoaXMgcGxlYXNlIHRyeSB0byByZXByb2R1Y2UgaXQgYWZ0ZXIg
bWFraW5nIA0KPj4gdGhlIGZvbGxvd2luZyBjaGFuZ2VzIGluIHRoZSBpZ2MgY29kZToNCj4+
DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19p
MjI1LmMgYi9kcml2ZXJzL25ldC8gDQo+PiBldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2kyMjUu
Yw0KPj4gaW5kZXggMGRkNjE3MTlmMWVkLi4xYzBjM2Q2NjVhMGMgMTAwNjQ0DQo+PiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2kyMjUuYw0KPj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19pMjI1LmMNCj4+IEBAIC02MTIs
NiArNjEyLDEwIEBAIHMzMiBpZ2Nfc2V0X2x0cl9pMjI1KHN0cnVjdCBpZ2NfaHcgKmh3LCBi
b29sIGxpbmspDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovDQo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsdHJfbWluID0gKDEwMDAgKiBz
aXplKSAvIHNwZWVkOw0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbHRy
X21heCA9IGx0cl9taW4gKyB0d19zeXN0ZW07DQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBpZiAoc3BlZWQgPT0gU1BFRURfMTAwMCkgew0KPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGx0cl9taW4gPSBsdHJfbWF4ID0gMTAw
ICogMTAwMDsNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0NCj4+ICsNCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNjYWxlX21pbiA9IChsdHJfbWlu
IC8gMTAyNCkgPCAxMDI0ID8gDQo+PiBJR0NfTFRSTUlOVl9TQ0FMRV8xMDI0IDoNCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IElHQ19MVFJNSU5WX1NDQUxFXzMyNzY4Ow0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc2NhbGVfbWF4ID0gKGx0cl9tYXggLyAxMDI0KSA8IDEwMjQgPyANCj4+IElH
Q19MVFJNQVhWX1NDQUxFXzEwMjQgOg0KPiANCj4gVGhhdCBpbnN0YW50bHkgZml4ZWQgdGhl
IGlzc3VlLCB0aGFua3MhDQo+IA0KPiBXaXRoIHRoZSBwYXRjaDoNCj4gDQo+ICQgY3VybCAt
byAvZGV2L251bGwgaHR0cDovL3NwZWVkdGVzdC5zZWxlY3RlbC5ydS8xR0IgLTQNCj4gIMKg
ICUgVG90YWzCoMKgwqAgJSBSZWNlaXZlZCAlIFhmZXJkwqAgQXZlcmFnZSBTcGVlZMKgwqAg
VGltZcKgwqDCoCBUaW1lwqDCoMKgwqAgVGltZSANCj4gQ3VycmVudA0KPiAgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBEbG9hZMKgIFVwbG9hZMKgwqAgVG90YWzCoMKgIFNwZW50wqDCoMKgIExlZnQgDQo+IFNw
ZWVkDQo+IDEwMCAxMDI0TcKgIDEwMCAxMDI0TcKgwqDCoCAwwqDCoMKgwqAgMMKgIDU1LjNN
wqDCoMKgwqDCoCAwwqAgMDowMDoxOMKgIDA6MDA6MTggLS06LS06LS0gDQo+IDU5LjVNDQo+
IA0KPiBXaXRob3V0IHRoZSBwYXRjaDoNCj4gDQo+ICQgY3VybCAtbyAvZGV2L251bGwgaHR0
cDovL3NwZWVkdGVzdC5zZWxlY3RlbC5ydS8xR0IgLTQNCj4gIMKgICUgVG90YWzCoMKgwqAg
JSBSZWNlaXZlZCAlIFhmZXJkwqAgQXZlcmFnZSBTcGVlZMKgwqAgVGltZcKgwqDCoCBUaW1l
wqDCoMKgwqAgVGltZSANCj4gQ3VycmVudA0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEbG9hZMKgIFVwbG9h
ZMKgwqAgVG90YWzCoMKgIFNwZW50wqDCoMKgIExlZnQgDQo+IFNwZWVkDQo+IDEwMCAxMDI0
TcKgIDEwMCAxMDI0TcKgwqDCoCAwwqDCoMKgwqAgMMKgIDIxLjhNwqDCoMKgwqDCoCAwwqAg
MDowMDo0NsKgIDA6MDA6NDYgLS06LS06LS0gDQo+IDIwLjFNDQoNClZpdGFseSwgdGhpcyBw
YXRjaCBkb2Vzbid0IHNlZW0gdG8gYmUgc2VudCB0byB0aGUga2VybmVsLiBJcyB0aGlzIGZp
eCANCmZpbmFsLCBvciB3YXMgaXQgaW50ZW5kZWQgb25seSBmb3IgdGhlIHRlc3Q/DQoNCg==


--------------0BzoAaNdS8i7DPKZUkbysSi8--

--------------W6IUCaldk7QRg0u5uRdUwMkx
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEMiogvXcpmS32v71gXNcgLu+I93IFAmeRB1AFAwAAAAAACgkQXNcgLu+I93L+
HQ/+IghoKusgffXIcugck8Y4oFOGbyDA3B8cubKLU6yp87UwvFVc/TMwkK8ixvsaJkfxSYXcXLff
SRAqzZrt4a4aDznA0udPUKK4n1m6JhPDw7d0bjU4LJajy5KAA5lR6BsgRqD1WZShyaFaH8Vs404C
DaMVIVU3DSHNKunUpHmslNZlVkEOQop4sfKuja9ZlUm+F19FkzZ1O8gJWPtbnOL8nn2ZbBoJ9fdx
ucM3XX55FY/kSkBl6HeotcfsqkpBthb0F18atHHD8rEXYU4uNNpEXK1pH23O/VH+rw9i4xyqPD4a
ORFN48AELfZ7LmSAtw1Wc2QMSqp7QrJcTF4S0ZMpdagi7sLf+Z0LX6gwVQ950p/qPuxLp+DJh5Ko
xcbtMLEiZryMeb/we/2L+kWQ3Gr9yolpmy3f1QW1qK0tt/POKWlaMfB52Ta1yUYtqdvaq1sofoHL
TKYZVsn0OdFYzvj5d4Xc4TVqvQnaDXok+3tz9X+QzejJ0QYXLlCMJPBiy9iPqO9dzRLm7EyzEtPo
ZMptJF+1+LIwlEY3Bt+0mHxDhPpMtsAMp/mFnDTlyp7jqQdzNgffAcNKvHCXwGgDSWYGUpTnbtjU
oFYQ6Ei0JNGDhJXIT4xsnaouvoF0PotyxXNHhfEdo1R8CLOU9FFQWdmveAsGgkNTzO2Q2gNsr185
4GQ=
=b+yM
-----END PGP SIGNATURE-----

--------------W6IUCaldk7QRg0u5uRdUwMkx--
