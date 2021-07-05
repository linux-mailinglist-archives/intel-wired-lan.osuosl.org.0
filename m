Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1DA3BB82E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 09:47:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8A9983227;
	Mon,  5 Jul 2021 07:47:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f9-B4S5JGJfl; Mon,  5 Jul 2021 07:47:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4B3D83187;
	Mon,  5 Jul 2021 07:47:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA2E71BF334
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B697A607B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cwu7jLV1H9K0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 07:47:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3982B607AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:47:25 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeda9.dynamic.kabel-deutschland.de
 [95.90.237.169])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0114761E64761;
 Mon,  5 Jul 2021 09:47:22 +0200 (CEST)
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20210701002713.3486336-1-jacob.e.keller@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <2226449e-2c2c-d72b-1bd2-1a44882251fe@molgen.mpg.de>
Date: Mon, 5 Jul 2021 09:47:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210701002713.3486336-1-jacob.e.keller@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [net-next 00/13] ice: implement support for
 PTP on E822 hardware
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKYWNvYiwKCgpUaGFuayB5b3UgZm9yIHNlbmRpbmcgdGhlIHBhdGNoZXMuCgoKQW0gMDEu
MDcuMjEgdW0gMDI6Mjcgc2NocmllYiBKYWNvYiBLZWxsZXI6Cj4gRXh0ZW5kIHRoZSBpY2UgZHJp
dmVyIGltcGxlbWVudGF0aW9uIHRvIHN1cHBvcnQgUFRQIGZvciB0aGUgRTgyMiBiYXNlZAo+IGRl
dmljZXMuCj4gCj4gVGhpcyBpbmNsdWRlcyBhIGZldyBjbGVhbnVwIHBhdGNoZXMsIHRoYXQgZml4
IHNvbWUgbWlub3IgaXNzdWVzIHNwb3R0ZWQKPiB3aGlsZSBwcmVwYXJpbmcgdGhlbS4gSW4gYWRk
aXRpb24sIHRoZXJlIGFyZSBzb21lIHNsaWdodCByZWZhY3RvcnMgdG8gZWFzZQo+IHRoZSBhZGRp
dGlvbiBvZiBFODIyIHN1cHBvcnQsIGZvbGxvd2VkIGJ5IGFkZGluZyB0aGUgbmV3IGhhcmR3YXJl
Cj4gaW1wbGVtZW50YXRpb24gaWNlX3B0cF9ody5jLgo+IAo+IFRoZXJlIGFyZSBhIGZldyBtYWpv
ciBkaWZmZXJlbmNlcyB3aXRoIEU4MjIgc3VwcG9ydCBjb21wYXJlZCB0byBFODEwCj4gc3VwcG9y
dDoKPiAKPiAqKSBUaGUgRTgyMiBQSFkgaXMgYSBiaXQgZGlmZmVyZW50IGFuZCByZXF1aXJlcyBh
IG1vcmUgY29tcGxleAo+IGluaXRpYWxpemF0aW9uIHByb2NlZHVyZSB0aGF0IHJlcXVpcmVzIGRl
bGF5aW5nIHRoZSBQSFkgc3RhcnQgdW50aWwgbGluayBpcwo+IHVwCgpJdOKAmWQgYmUgZ3JlYXQs
IGlmIHlvdSBnYXZlIGNvbmNyZXRlIG51bWJlcnMuCgpb4oCmXQoKCktpbmQgcmVnYXJkcywKClBh
dWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
