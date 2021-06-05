Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C4639C61A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Jun 2021 07:47:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A09D607D7;
	Sat,  5 Jun 2021 05:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tZ6qbyn2ix9q; Sat,  5 Jun 2021 05:47:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B24660E4A;
	Sat,  5 Jun 2021 05:47:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 604681BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 05:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5955D400C9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 05:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 50EYL2hTUFJ1 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Jun 2021 05:47:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F58A40012
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 05:47:27 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aeece.dynamic.kabel-deutschland.de
 [95.90.238.206])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0023361E64762;
 Sat,  5 Jun 2021 07:47:23 +0200 (CEST)
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Bjorn Helgaas <helgaas@kernel.org>
References: <20210604222542.GA2246166@bjorn-Precision-5520>
 <87bl8lxlbr.fsf@vcostago-mobl2.amr.corp.intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <61fbd916-ca4e-26b0-5d18-a2b2aa075a7f@molgen.mpg.de>
Date: Sat, 5 Jun 2021 07:47:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <87bl8lxlbr.fsf@vcostago-mobl2.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v4 1/4] Revert "PCI: Make
 pci_enable_ptm() private"
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
Cc: netdev@vger.kernel.org, richardcochran@gmail.com, hch@infradead.org,
 intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBWaW5pY2l1cywgZGVhciBCam9ybiwKCgpBbSAwNS4wNi4yMSB1bSAwMToyNyBzY2hyaWVi
IFZpbmljaXVzIENvc3RhIEdvbWVzOgo+IEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNAa2VybmVsLm9y
Zz4gd3JpdGVzOgo+IAo+PiBPbiBGcmksIEp1biAwNCwgMjAyMSBhdCAwMzowOTozMFBNIC0wNzAw
LCBWaW5pY2l1cyBDb3N0YSBHb21lcyB3cm90ZToKClvigKZdCgo+Pj4gRXhwb3NpbmcgdGhpcyB0
byB0aGUgZHJpdmVyIGVuYWJsZXMgdGhlIGRyaXZlciB0byB1c2UgdGhlCj4+PiAncHRtX2VuYWJs
ZWQnIGZpZWxkIG9mICdwY2lfZGV2JyB0byBjaGVjayBpZiBQVE0gaXMgZW5hYmxlZCBvciBub3Qu
Cj4+Pgo+Pj4gVGhpcyByZXZlcnRzIGNvbW1pdCBhYzZjMjZkYTI5YzEyZmE1MTFjODc3YzI3M2Vk
NWM5MzlkYzllOTZjLgo+Pgo+PiBJZGVhbGx5IEkgd291bGQgY2l0ZSB0aGlzIGFzIGFjNmMyNmRh
MjljMSAoIlBDSTogTWFrZSBwY2lfZW5hYmxlX3B0bSgpCj4+IHByaXZhdGUiKSBzbyB0aGVyZSdz
IGEgbGl0dGxlIG1vcmUgY29udGV4dC4KPiAKPiBZZWFoLCB0aGF0IGxvb2tzIGJldHRlci4KPiAK
PiBXaWxsIGZvbGxvdyB0aGUgc3VnZ2VzdGlvbnMgeW91IG1hZGUgaW4gdGhlIG5leHQgcGF0Y2gg
YXMgd2VsbCBhbmQgc2VuZAo+IGFub3RoZXIgdmVyc2lvbiwgdGhhbmtzLgoKSnVzdCBhIG5vdGUs
IHRoYXQgdGhpcyBpcyBob3cgcmV2ZXJ0IGNvbW1pdHMgYXJlIGdlbmVyYXRlZCBieSBgZ2l0IApy
ZXZlcnRgIGFzIHRoZSBuYW1lIG9mIHRoZSByZXZlcnRlZCBjb21taXQgaXMgaW4gdGhlIGNvbW1p
dCBtZXNzYWdlIApzdW1tYXJ5LiBNYXliZSBqdXN0IG1vdmUgdGhlIHN0YXRlbWVudC9zZW50ZW5j
ZSB0byB0aGUgdmVyeSB0b3A/IEJ1dCAKZWl0aGVyIHdheSBpcyBmaW5lLgoKCktpbmQgcmVnYXJk
cywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
