Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDF66E67DB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 17:13:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D438D41E2C;
	Tue, 18 Apr 2023 15:13:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D438D41E2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681830831;
	bh=Ksnerd5C9KpOBBY0hzYn6Jd21kj7nwDjRfhOwmWogQ4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cz0qG0m5pAJFn/BkqDhM4yLL4+xsWzOUq2SVO8WZavgPgW1gVDG4c/ge6IEvR4gL2
	 H7ydHTZ3dX6YUuaZxjR037lAeYhxOm6ao2NiL3VYuwM5GwDk7yP1ZLXNp0hIlMQAUN
	 BBfBfhhAW5QtS+Xgv1OWlx8Yxiou0tRgnbfcW2jPesBnDnBwhr8eOqJleiD+osYw7e
	 1fiqqyC99rHMuSolaj3fwhSxQeo/fXp1GOzI1hN9wZlCsxmQvcrBlsfUmShlfQzpTH
	 eEVhDUQCTD/4bR+oqRiSOa4wMwuH5bppP6CrDMda4oXvK1lWUdhWnPzdtUHUf0WpWk
	 e7INyycM6AOkw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y9pIxxBdQk4z; Tue, 18 Apr 2023 15:13:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0CE141E26;
	Tue, 18 Apr 2023 15:13:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0CE141E26
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA0001BF41A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 09:41:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BF8F241876
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 09:41:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF8F241876
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kr9IOIhfMAbZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 09:41:26 +0000 (UTC)
X-Greylist: delayed 00:10:03 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1616D41870
Received: from mta-64-225.siemens.flowmailer.net
 (mta-64-225.siemens.flowmailer.net [185.136.64.225])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1616D41870
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 09:41:25 +0000 (UTC)
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id
 20230418093119eb0f1951c79309bd85
 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 11:31:20 +0200
Message-ID: <98a4831de6c2ae4a3eb8d29dcd114a6e96c34f94.camel@siemens.com>
From: Florian Bezdeka <florian.bezdeka@siemens.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>, Song Yoong Siang
 <yoong.siang.song@intel.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>,  Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Vedang Patel <vedang.patel@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>, Andre Guedes
 <andre.guedes@intel.com>, Stanislav Fomichev <sdf@google.com>, Jacob Keller
 <jacob.e.keller@intel.com>, David Laight <David.Laight@ACULAB.COM>
Date: Tue, 18 Apr 2023 11:31:16 +0200
In-Reply-To: <e7b9cb2c-1c18-7354-8d33-a924b5ae1d5b@redhat.com>
References: <20230414154902.2950535-1-yoong.siang.song@intel.com>
 <934a4204-1920-f5e1-bcde-89429554d0d6@redhat.com>
 <e7b9cb2c-1c18-7354-8d33-a924b5ae1d5b@redhat.com>
MIME-Version: 1.0
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-68982:519-21489:flowmailer
X-Mailman-Approved-At: Tue, 18 Apr 2023 15:13:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm1; 
 d=siemens.com; i=florian.bezdeka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=CqK3hsqP4ZsT3ZUY+isIcg9eKHACr0lAiNG1+JRla6g=;
 b=qgSvw768XrHXL9zjoF5Fi+WBoNdMdWHl324bLBiS9wq1u4tQkr2ulODt4ZPNSvEiHuxy2w
 RKE2yu8Sb8Bi5ojr66/Z5zlRmyQQ9lRmWdbz4qoWuBo9sjNznGinj7y4/74qtLGJqMnle6KC
 e1VTaI9CzcGE4fniV7kl20klcOhV8=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=siemens.com header.i=florian.bezdeka@siemens.com
 header.a=rsa-sha256 header.s=fm1 header.b=qgSvw768
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/1] igc: read before write to
 SRRCTL register
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
Cc: xdp-hints@xdp-project.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, bpf@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDIzLTA0LTE3IGF0IDE2OjI0ICswMjAwLCBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVy
IHdyb3RlOgo+IE9uIDE0LzA0LzIwMjMgMjIuMDUsIEplc3BlciBEYW5nYWFyZCBCcm91ZXIgd3Jv
dGU6Cj4gPiAgCj4gPiBPbiAxNC8wNC8yMDIzIDE3LjQ5LCBTb25nIFlvb25nIFNpYW5nIHdyb3Rl
Ogo+ID4gPiBpZ2NfY29uZmlndXJlX3J4X3JpbmcoKSBmdW5jdGlvbiB3aWxsIGJlIGNhbGxlZCBh
cyBwYXJ0IG9mIFhEUCBwcm9ncmFtCj4gPiA+IHNldHVwLiBJZiBSeCBoYXJkd2FyZSB0aW1lc3Rh
bXAgaXMgZW5hYmxlZCBwcmlvIHRvIFhEUCBwcm9ncmFtIHNldHVwLAo+ID4gPiB0aGlzIHRpbWVz
dGFtcCBlbmFibGVtZW50IHdpbGwgYmUgb3ZlcndyaXR0ZW4gd2hlbiBidWZmZXIgc2l6ZSBpcwo+
ID4gPiB3cml0dGVuIGludG8gU1JSQ1RMIHJlZ2lzdGVyLgo+ID4gPiAKPiA+ID4gVGh1cywgdGhp
cyBjb21taXQgcmVhZCB0aGUgcmVnaXN0ZXIgdmFsdWUgYmVmb3JlIHdyaXRlIHRvIFNSUkNUTAo+
ID4gPiByZWdpc3Rlci4gVGhpcyBjb21taXQgaXMgdGVzdGVkIGJ5IHVzaW5nIHhkcF9od19tZXRh
ZGF0YSBicGYgc2VsZnRlc3QKPiA+ID4gdG9vbC4gVGhlIHRvb2wgZW5hYmxlcyBSeCBoYXJkd2Fy
ZSB0aW1lc3RhbXAgYW5kIHRoZW4gYXR0YWNoIFhEUCBwcm9ncmFtCj4gPiA+IHRvIGlnYyBkcml2
ZXIuIEl0IHdpbGwgZGlzcGxheSBoYXJkd2FyZSB0aW1lc3RhbXAgb2YgVURQIHBhY2tldCB3aXRo
Cj4gPiA+IHBvcnQgbnVtYmVyIDkwOTIuIEJlbG93IGFyZSBkZXRhaWwgb2YgdGVzdCBzdGVwcyBh
bmQgcmVzdWx0cy4KPiA+ID4gCj4gWy4uLl0KPiA+ID4gCj4gPiA+IEZpeGVzOiBmYzlkZjJhMGI1
MjAgKCJpZ2M6IEVuYWJsZSBSWCB2aWEgQUZfWERQIHplcm8tY29weSIpCj4gPiA+IENjOiA8c3Rh
YmxlQHZnZXIua2VybmVsLm9yZz4gIyA1LjE0Kwo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTb25nIFlv
b25nIFNpYW5nIDx5b29uZy5zaWFuZy5zb25nQGludGVsLmNvbT4KPiA+ID4gUmV2aWV3ZWQtYnk6
IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPgo+ID4gPiBSZXZpZXdlZC1i
eTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+Cj4gPiA+IC0tLQo+
ID4gCj4gPiBMR1RNLCB0aGFuayBmb3IgdGhlIGFkanVzdG1lbnRzIDotKQo+ID4gCj4gPiBBY2tl
ZC1ieTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+Cj4gPiAKPiAK
PiBUZXN0ZWQtYnk6IEplc3BlciBEYW5nYWFyZCBCcm91ZXIgPGJyb3VlckByZWRoYXQuY29tPgo+
IAo+IEkgY2FuIGNvbmZpcm0gdGhhdCB0aGlzIHBhdGNoIGZpeCB0aGUgaXNzdWUgSSBleHBlcmll
bmNlZCB3aXRoIGlnYy4KPiAKPiBUaGlzIHBhdGNoIGNsZWFybHkgZml4ZXMgYSBidWcgaW4gaWdj
IHdoZW4gd3JpdGluZyB0aGUgU1JSQ1RMIHJlZ2lzdGVyLgo+IChhcyBiaXQgMzAgaW4gcmVnaXN0
ZXIgaXMgIlRpbWVzdGFtcCBSZWNlaXZlZCBQYWNrZXQiIHdoaWNoIGdvdCBjbGVhcmVkIAo+IGJl
Zm9yZSkuCj4gCj4gRmxvcmlhbiBtaWdodCBoYXZlIGZvdW5kIGFub3RoZXIgYnVnIGFyb3VuZCBS
WCB0aW1lc3RhbXBzLCBidXQgdGhpcwo+IHBhdGNoIHNob3VsZCBiZSBzYWZlIGFuZCBzYW5lIHRv
IGFwcGx5IGFzIGlzLgoKQWZ0ZXIgYSBjbG9zZXIgbG9vayBJJ20gcXVpdGUgc3VyZSBub3cgdGhh
dCB0aGlzIHBhdGNoIHNob3VsZCBmaXggbXkKaXNzdWUgYXMgd2VsbC4gVGhlIHJlZ2lzdGVyIHdp
bGwgYmUgb3ZlcndyaXR0ZW4gd2hlbiBzZXR0aW5nIHVwIGEKWFNLX1BPT0wgYXMgd2VsbDoKCmln
Y19icGYKICBpZ2NfeGRwX3NldHVwX3Bvb2wKICAgIGlnY19lbmFibGVfcnhfcmluZwogICAgICBp
Z2NfY29uZmlndXJlX3J4X3JpbmcKICAgICAgICB3cjMyKElHQ19TUlJDVEwpCgpJIGFscmVhZHkg
cmVtb3ZlZCB0aGUgQlBGIGxvYWRpbmcgKHdoaWNoIGlzIHRoZSB1c2UgY2FzZSB0aGF0IHRoZSBw
YXRjaApkZXNjcmlwdGlvbiBtZW50aW9ucykgZnJvbSBteSBzZXR1cCB0byBsaW1pdCB0aGUgc2Vh
cmNoIHNjb3BlLiBJZiB5b3UKbGlrZSB5b3UgY291bGQgZXh0ZW5kIHRoZSBwYXRjaCBkZXNjcmlw
dGlvbiwgYnV0IEknbSBmaW5lIHdpdGggaXQuCgpUaGFua3MgYSBsb3QgZm9yIGFsbCB0aGUgc3Vw
cG9ydCAvIGlkZWFzISBIaWdobHkgYXBwcmVjaWF0ZWQhCgpGbG9yaWFuCgo+IAo+ID4gPiB2MiAt
PiB2MzogUmVmYWN0b3IgU1JSQ1RMIGRlZmluaXRpb25zIHRvIG1vcmUgaHVtYW4gcmVhZGFibGUg
ZGVmaW5pdGlvbnMKPiA+ID4gdjEgLT4gdjI6IEZpeCBpbmRlbnRpb24KPiA+ID4gLS0tCj4gPiA+
IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfYmFzZS5oIHwgMTEgKysrKysr
KystLS0KPiA+ID4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMg
fMKgIDcgKysrKystLQo+ID4gPiDCoCAyIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
