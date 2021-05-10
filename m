Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B781378FD8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 16:02:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3EA540E73;
	Mon, 10 May 2021 14:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T08NY16YMaDg; Mon, 10 May 2021 14:02:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C20940E4C;
	Mon, 10 May 2021 14:02:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D37E11BF340
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 14:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF80D60BAB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 14:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7OWfQ61S9Ina for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 14:01:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4679A60BC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 14:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=i6vAxLOytNOYwyM1NYfARO0i+7jkuFK7y9pYt7pXuwE=; b=djb3CWn/LU378IzapvABLkn8Gd
 Mp82QkScestEUeQW2L+zqtEN7XvYp31eFRebvjBEITr//+6YOo6+SYheq9BxF7YMTeqbS+RN1ORYU
 WcTwnub1JAhAEwo1EbdH4ZtDbzKRVhVt7KKBx8eH43WzT6ZsZkO7OQPiITlB671P2UStmst5kwHpO
 oLDGkct+Pf7s4vCchonkHPjgJ2dHAgGdY9eEvhnNfgt0nMzg4EJ/N8O7mpCEUjiq1yDlLopkoOUQy
 tCb7mahOMAZ84vugzBeIjfIYkNlViOtJdTlUAmJVQy5eePLrQct4R8yXLPW7Hy+DjovMg5jAZGdoa
 yuW/o03A==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lg6RA-006DIB-7H; Mon, 10 May 2021 13:59:19 +0000
Date: Mon, 10 May 2021 14:59:08 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <YJk8LMFViV7Z3Uu7@casper.infradead.org>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
 <2ae366fdff4bd5910a2270823e8da70521c859af.camel@infradead.org>
 <20210510135518.305cc03d@coco.lan>
 <df6b4567-030c-a480-c5a6-fe579830e8c0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df6b4567-030c-a480-c5a6-fe579830e8c0@gmail.com>
X-Mailman-Approved-At: Mon, 10 May 2021 14:02:15 +0000
Subject: Re: [Intel-wired-lan] [PATCH 00/53] Get rid of UTF-8 chars that can
 be mapped as ASCII
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-fpga@vger.kernel.org,
 dri-devel@lists.freedesktop.org, keyrings@vger.kernel.org,
 linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, x86@kernel.org,
 linux-acpi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-input@vger.kernel.org, linux-ext4@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-sgx@vger.kernel.org,
 coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-rdma@vger.kernel.org, linux-integrity@vger.kernel.org,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBNYXkgMTAsIDIwMjEgYXQgMDI6MTY6MTZQTSArMDEwMCwgRWR3YXJkIENyZWUgd3Jv
dGU6Cj4gT24gMTAvMDUvMjAyMSAxMjo1NSwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+
ID4gVGhlIG1haW4gcG9pbnQgb24gdGhpcyBzZXJpZXMgaXMgdG8gcmVwbGFjZSBqdXN0IHRoZSBv
Y2N1cnJlbmNlcwo+ID4gd2hlcmUgQVNDSUkgcmVwcmVzZW50cyB0aGUgc3ltYm9sIGVxdWFsbHkg
d2VsbAo+IAo+ID4gCS0gVSsyMDE0ICgn4oCUJyk6IEVNIERBU0gKPiBFbSBkYXNoIGlzIG5vdCB0
aGUgc2FtZSB0aGluZyBhcyBoeXBoZW4tbWludXMsIGFuZCB0aGUgbGF0dGVyIGRvZXMgbm90Cj4g
IHNlcnZlICdlcXVhbGx5IHdlbGwnLiAgUGVvcGxlIHVzZSBlbSBkYXNoZXMgYmVjYXVzZSDigJQg
ZXZlbiBpbgo+ICBtb25vc3BhY2UgZm9udHMg4oCUIHRoZXkgbWFrZSB0ZXh0IGVhc2llciB0byBy
ZWFkIGFuZCBjb21wcmVoZW5kLCB3aGVuCj4gIHVzZWQgY29ycmVjdGx5Lgo+IEkgYWNjZXB0IHRo
YXQgc29tZSBvZiB0aGUgb3RoZXIgZGlzdGluY3Rpb25zIOKAlCBsaWtlIGVuIGRhc2hlcyDigJQg
YXJlCj4gIG5lZWRsZXNzbHkgcGVkYW50aWMgKHRob3VnaCBJIGRvbid0IGRvdWJ0IHRoZXJlIGlz
IHNvbWVvbmUgb3V0IHRoZXJlCj4gIHdobyB3aWxsIGdsYWRseSBkZWZlbmQgdGhlbSB3aXRoIHRo
ZSBzYW1lIGZlcnZvdXIgd2l0aCB3aGljaCBJIGFyZ3VlCj4gIGZvciB0aGUgZW0gZGFzaCkgYW5k
IEkgd291bGRuJ3QgdGFrZSB0aGUgdHJvdWJsZSB0byB1c2UgdGhlbSBteXNlbGY7Cj4gIGJ1dCBJ
IHRoaW5rIHRoZXJlIGlzIGEgcmVhc29uYWJsZSBhc3N1bXB0aW9uIHRoYXQgd2hlbiBzb21lb25l
IGdvZXMKPiAgdG8gdGhlIGVmZm9ydCBvZiB1c2luZyBhIFVuaWNvZGUgcHVuY3R1YXRpb24gbWFy
ayB0aGF0IGlzIHNlbWFudGljCj4gIChyYXRoZXIgdGhhbiBtZXJlbHkgdHlwb2dyYXBoaWNhbCks
IHRoZXkgcHJvYmFibHkgaGFkIGEgcmVhc29uIGZvcgo+ICBkb2luZyBzby4KCkkgdGhpbmsgeW91
J3JlIG92ZXJlc3RpbWF0aW5nIHRoZSBhbW91bnQgb2YgY2FyZSBhbmQgdHlwb2dyYXBoaWNhbApr
bm93bGVkZ2UgdGhhdCB5b3VyIGF2ZXJhZ2Uga2VybmVsIGRldmVsb3BlciBoYXMuICBNb3N0IG9m
IHRoZXNlClVURi04IGNoYXJhY3RlcnMgY29tZSBmcm9tIGxhdGV4IGNvbnZlcnNpb25zIGFuZCBy
ZWFsbHkgYXJlbid0Cm5lY2Vzc2FyeSAoYW5kIGFyZSBiZWluZyB1c2VkIGluY29ycmVjdGx5KS4K
CllvdSBzZWVtIHF1aXRlIGtub3dlZGdlYWJsZSBhYm91dCB0aGUgdmFyaW91cyBkaWZmZXJlbmNl
cy4gIFBlcmhhcHMKeW91J2QgYmUgd2lsbGluZyB0byB3cml0ZSBhIGRvY3VtZW50IGZvciBEb2N1
bWVudGF0aW9uL2RvYy1ndWlkZS8KdGhhdCBwcm92aWRlcyBndWlkYW5jZSBmb3Igd2hlbiB0byB1
c2Ugd2hpY2gga2luZHMgb2YgaG9yaXpvbnRhbApsaW5lPyAgaHR0cHM6Ly93d3cucHVuY3R1YXRp
b25tYXR0ZXJzLmNvbS9oeXBoZW4tZGFzaC1uLWRhc2gtYW5kLW0tZGFzaC8KdGFsa3MgYWJvdXQg
aXQgaW4gdGhlIGNvbnRleHQgb2YgcHVibGljYXRpb25zLCBidXQgSSB0aGluayB3ZSBuZWVkCnNv
bWV0aGluZyBtb3JlIHN1aXRlZCB0byBvdXIgbmVlZHMgZm9yIGtlcm5lbCBkb2N1bWVudGF0aW9u
LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
