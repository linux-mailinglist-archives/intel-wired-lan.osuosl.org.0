Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E82C89E75D6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Dec 2024 17:24:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97CB3608D1;
	Fri,  6 Dec 2024 16:24:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dBKm1v9DASzI; Fri,  6 Dec 2024 16:24:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF998612EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733502269;
	bh=uUNVEgMaO591ZjgV8rvJjTfQOud6bL2KCyJJSoJMi8Y=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qeG64b14vEgHMeuQmxbQKrNgYiLzRuapI+B4+TrIT6Hat5havikJCQBN3Zcy//lf6
	 ppzb7gmZ5kwm63PkaBYJ94I159dP+8jO8YJMmwsObOFu8cf24PmWkXv8h9pVAd9dBA
	 vRPyEutOn7glIfkpprcbJDDCvVMQBMN0z2Tw6nlnPzbuoUb2I6HEU63RHYYKh1b76o
	 vnDX/nKLTDqYFrIp7064rPZF9KMN6C+wqynxODgByLA43qZBUPGLbLgDNKW583a46Z
	 v59dJRfKH6b3CgGr/n1Rr27LheisEgj5xQhFwswL5O/gm0uh7XiDBI5lnT3w5IcWHY
	 oz38yVKsrelyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF998612EB;
	Fri,  6 Dec 2024 16:24:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F81EECA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 16:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F83A402E3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 16:24:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kz-9w-I-RYly for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Dec 2024 16:24:27 +0000 (UTC)
X-Greylist: delayed 600 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 06 Dec 2024 16:24:26 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A495B40104
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A495B40104
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.177.150.13;
 helo=mail.valdk.tel; envelope-from=iam@valdikss.org.ru; receiver=<UNKNOWN> 
Received: from mail.valdk.tel (mail.valdk.tel [185.177.150.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A495B40104
 for <intel-wired-lan@osuosl.org>; Fri,  6 Dec 2024 16:24:26 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id B50B4175292E
 for <intel-wired-lan@osuosl.org>; Fri,  6 Dec 2024 19:06:54 +0300 (MSK)
Message-ID: <cb7776c8-868f-4191-8b77-8ebbdf674aaf@valdikss.org.ru>
Date: Fri, 6 Dec 2024 19:06:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: ru, en-US
To: intel-wired-lan@osuosl.org
From: ValdikSS <iam@valdikss.org.ru>
Autocrypt: addr=iam@valdikss.org.ru; keydata=
 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
 OEcVmRU/pw5/zoQyQg==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mNv5FtAfWFjc0ZEj0fhQS2Iv"
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=valdikss.org.ru; s=msrv; t=1733501215;
 h=from:subject:date:message-id:to:mime-version:content-type:
 content-language:autocrypt; bh=uUNVEgMaO591ZjgV8rvJjTfQOud6bL2KCyJJSoJMi8Y=;
 b=nLzUJJ4FsDH9lD2slBVZ8G2WFvcvmGkTrtsLtzJfmPAs/lwAiSqBxZgD9kpjIQs1foLRl1
 FEJUVFWoqSt0WLnFGh1sJzTDXq0pzFWdBSCPUu6jf6cehdYZyv5Re3xQrfxSZZkcJ7ALML
 zEIyl1C8A6UUfle/1emOEZF/cuOgPpKlFarBhROMFzHFpSKeo56CZRbE7RNKlsWwLpggfS
 nht18CXlIVOsPu/N2QNPyFxgqJUs2NJJjs3Zj+h71q58S4W5lo9k6q/WG4qsco7wQd1NtM
 Vn5Kc3L1WPzIl0WXTxzn/dSheG936KcNlyOnqjS9ZMDTRNrOGoe3C8cH+TR4yA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=valdikss.org.ru
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=valdikss.org.ru header.i=@valdikss.org.ru
 header.a=rsa-sha256 header.s=msrv header.b=nLzUJJ4F
Subject: [Intel-wired-lan] I226-V 1G limited to ~250Mbit with ASPM enabled
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
--------------mNv5FtAfWFjc0ZEj0fhQS2Iv
Content-Type: multipart/mixed; boundary="------------qGPqoePZX5SN5dnANaw1mN0P";
 protected-headers="v1"
From: ValdikSS <iam@valdikss.org.ru>
To: intel-wired-lan@osuosl.org
Message-ID: <cb7776c8-868f-4191-8b77-8ebbdf674aaf@valdikss.org.ru>
Subject: I226-V 1G limited to ~250Mbit with ASPM enabled

--------------qGPqoePZX5SN5dnANaw1mN0P
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8gSW50ZWwgdGVhbSwNCg0KSSBoYXZlIEludGVsIE5VQzEzQU5LSTUgbWFjaGluZSwg
d2l0aCBJMjI2LVYgbmV0d29yayBjYXJkLCBhbmQgZ2lnYWJpdCANCkludGVybmV0IGNvbm5l
Y3Rpb24uDQoNCkFmdGVyIChwcmVzdW1hYmx5KSBsYXRlc3QgVUVGSSB2MDAzMyB1cGRhdGUg
Zm9yIHRoZSBOVUMsIG15IG5ldHdvcmsgaXMgDQpsaW1pdGVkIHRvIH4yNTAgTWJpdC9zIGRv
d25sb2FkIHVubGVzcyBJIGRpc2FibGUgUENJRSBBU1BNIG9wdGlvbiBpbiANClVFRkkgc2V0
dGluZ3MuDQoNCkFTVVMgc3VwcG9ydCAod2hpY2ggbm93IGhhbmRsZXMgc3VwcG9ydCBmb3Ig
TlVDIHByb2R1Y3RzKSBoYXMgY29uZmlybWVkIA0KdGhlIGlzc3VlIGFuZCBwcm92aWRlZCBt
ZSB3aXRoIFdpbmRvd3MgTmV0QWRhcHRlckN4IDIuMS40LjMgZHJpdmVyLCANCndoaWNoIGhh
cyB0aGlzIGlzc3VlIGZpeGVkIChJIGhhdmUgbm90IHRlc3RlZCBpdCBvbiBXaW5kb3dzKS4N
Cg0KTGludXggZHJpdmVycyBhcmUgbm90IGZpeGVkLiBJJ20gc2VlaW5nIHRoZSBpc3N1ZSBv
biBGZWRvcmEgMzksIGp1c3QgDQp0ZXN0ZWQgbmV0d29yayBzcGVlZCB3aXRoIFBDSUUgQVNQ
TSBlbmFibGVkIG9uIA0KNi4xMi4zLTIwMC52YW5pbGxhLmZjMzkueDg2XzY0IGtlcm5lbCAt
IHRoZSBpc3N1ZSBpcyBzdGlsbCBoZXJlLCAyNSBNQi9zIA0KZG93bmxvYWQgbWF4Lg0KDQpM
ZXQgbWUga25vdyBpZiB5b3UgbmVlZCBkZWJ1ZyBvdXRwdXQgb2YgaWdjIGRyaXZlciwgSSBj
YW4gcnVuIGFueSB0ZXN0cy4NCg0KNTY6MDAuMCBFdGhlcm5ldCBjb250cm9sbGVyIFswMjAw
XTogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgDQpDb250cm9sbGVyIEkyMjYtViBbODA4
NjoxMjVjXSAocmV2IDA0KQ0K

--------------qGPqoePZX5SN5dnANaw1mN0P--

--------------mNv5FtAfWFjc0ZEj0fhQS2Iv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEMiogvXcpmS32v71gXNcgLu+I93IFAmdTIRUFAwAAAAAACgkQXNcgLu+I93Kc
ThAAhQzKGG3u/lFgeG/3R7ZvH/eBG/7kZ8bU6IAMyl6PPx6SbyuEH5wi0kozFU9n6ejI3agUAZZh
+qSmj+olAtt0uk5F4NwmfPGFmguerKUsiLxmTqSvvbZm7mGIOjbO9ai7WU7Xstx5Wq2bNzwWp7jV
/rqpHdhB3+/rEVJKuFbVVKhA921p+GCFvw+eLpK510m6N6eLcrcivTj9tpSOcSN4T7hnFW8d4FlP
dyNqk/8qlC+vEPAXxsxdIKrYhGuvUsZjr+7ahlnpsesQtRtQdfHh5mLe0d1zho5N1mb4dKv8WEed
VYOl/WN5JIK8V//vPeGH3+xk9NS94Ca9gIETd12DUtyBXW+vTzrRXcs451/IoE0Hdz8aH8xgm4fx
Fjf2OgRhCBwkbWacpKRBLxSV2Zj+JGGvL78Yn0vvKsTaLQpDtR97e3XPVjnv7+dVKlfZgPTeInh6
4wShkKaBQ8lGN/gG0vLggiXM1iad86zbC/43bzuFAbnkRW/9bel4FdaLVV4en819AhU+Pt8Kd65l
RysS4YkxFbXLlVM3+b7zawW8gZVw7yPBYuPvKG0xYuMOzNSduWuHwaqw3PUNLWgCwXIupoSjMuhh
NjGNemTQa2FszO/RY4PrrIhcFEDnEbNgPUZH52b4nki+mMqAMTfPXbkvXuw2CnIxpUxhWOMoEmNh
OzM=
=fzlX
-----END PGP SIGNATURE-----

--------------mNv5FtAfWFjc0ZEj0fhQS2Iv--
