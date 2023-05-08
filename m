Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C81A6FB4DF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 May 2023 18:12:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26C7F6FEE3;
	Mon,  8 May 2023 16:12:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26C7F6FEE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683562375;
	bh=WEeGLELJxV/kJhWyn3KMoJXot8B9OLR5/qMRGEP5/Vk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eyN5lISAHLvLTqCy7pFNqWOo5sxEbXFaccwjpYqSxin/Ot8RxaFJ39nbSBk5zTlHT
	 OmOEk+6kaPy1sAnzLD2YTWPI6NV74je9VP/n7SGy5AGvOUYKQ5w0FSMKlrT+dzD7wR
	 Z3RgKU35Ije9AjT+k9CV5AVK4O01QyVKT7cnsH+x8xE+gZ8n4ig61AXfzU49oUE4T4
	 nmwQqHWk5bfbx4ZveJcB1JnhoBP/QsCESeXNlRwZxhzKNS0wkNNDFiFtFIXHdkpt+f
	 XjG++DaAqtSg9E//p/7Hob6kKxTX2QRGqtKUpqD2r218ixmMaBqrI69qYXvNQDxdDL
	 JQglK4kx1cgDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iBKYZfDIC6of; Mon,  8 May 2023 16:12:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15F206FEB2;
	Mon,  8 May 2023 16:12:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15F206FEB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE2961BF35B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 16:12:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CB4F84477
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 16:12:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CB4F84477
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rq6a51hQJrIa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 May 2023 16:12:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF92182042
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF92182042
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 16:12:46 +0000 (UTC)
Received: from [10.161.246.28] (unknown [141.14.155.225])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 321E661E4052B;
 Mon,  8 May 2023 18:12:43 +0200 (CEST)
Message-ID: <f48144eb-3206-b314-d32f-b5d77965b528@molgen.mpg.de>
Date: Mon, 8 May 2023 18:12:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Shekhar Deb <shekhar.deb@intel.com>
References: <20230508060632.636136-1-shekhar.deb@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230508060632.636136-1-shekhar.deb@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware] ice: update ice DDP
 comms package to 1.3.40.0
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

RGVhciBTaGVraGFyLAoKClRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4KCgpBbSAwOC4wNS4yMyB1
bSAwODowNiBzY2hyaWViIFNoZWtoYXIgRGViOgo+IFVwZGF0ZSBpY2UgRERQIGNvbW1zIHBhY2th
Z2UgZmlsZSB0byB0aGUgbGF0ZXN0IHZlcnNpb246IDEuMy40MC4wCj4gCj4gSGlnaGxpZ2h0IG9m
IGNoYW5nZXMgc2luY2UgMS4zLjMxLjA6Cj4gCj4gLSBBZGQgc3VwcG9ydCBmb3IgU2VjdXJpdHkg
R3JvdXAgVGFnKFNHVCkgaGVhZGVyCj4gLSBQcm92aWRlIFNlcGFyYXRlIElQIEZyYWdtZW50IFBh
Y2tldCBUeXBlIEdyb3VwcyBmb3IgUmVjZWl2ZSBTaWRlIFNjYWxpbmcoUlNTKQo+IC0gQWRkIHN1
cHBvcnQgdG8gYWxsb3cgUmVjZWl2ZSBTaWRlIFNjYWxpbmcoUlNTKSBhbmQgRmxvdyBEaXJlY3Rv
cihGRCkgb24gTXVsdGljYXN0IHBhY2tldHMKCknigJlkIGFkZCBhIHNwYWNlIGJlZm9yZSB0aGUg
KCBvZiB0aGUgYWJicmV2aWF0aW9uLgoKPiAtIEFkZCBzdXBwb3J0IGZvciBwYXJzaW5nIFNHVC1Q
UFBvRSBwYWNrZXRzCj4gLSBBZGQgc3VwcG9ydCBmb3IgUFBQb0UgdmVyc2lvbiAyCj4gCj4gU2ln
bmVkLW9mZi1ieTogU2hla2hhciBEZWIgPHNoZWtoYXIuZGViQGludGVsLmNvbT4KPiAtLS0KPiAg
IFdIRU5DRSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQo+
ICAgLi4ubXMtMS4zLjMxLjAucGtnID0+IGljZV9jb21tcy0xLjMuNDAuMC5wa2d9IHwgQmluIDcx
NzE3NiAtPiA3MjU0MjggYnl0ZXMKPiAgIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKPiAgIHJlbmFtZSBpbnRlbC9pY2UvZGRwLWNvbW1zL3tpY2VfY29tbXMt
MS4zLjMxLjAucGtnID0+IGljZV9jb21tcy0xLjMuNDAuMC5wa2d9ICg3NCUpCgpb4oCmXQoKCktp
bmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
