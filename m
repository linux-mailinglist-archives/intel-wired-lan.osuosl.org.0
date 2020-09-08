Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 114EC260B6B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 08:58:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A3D8420433;
	Tue,  8 Sep 2020 06:58:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id prdV264H81UF; Tue,  8 Sep 2020 06:58:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9E95723355;
	Tue,  8 Sep 2020 06:58:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF3301BF296
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 06:58:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B7C90851A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 06:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jt6py9rvidUc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 06:58:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C0F5284DE6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 06:58:39 +0000 (UTC)
IronPort-SDR: qNkOagDlmPm8jn05pM9Q47LLuYEGQ5TWoxgKAWyYYeNvwEc06DTtjrwbzrJx9Vw5m1pSVeofnk
 nm3+rbcXAcsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="219642590"
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; d="scan'208";a="219642590"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2020 23:58:34 -0700
IronPort-SDR: ZCsyxjpZdlssSDVMWz1a+wSYlNMW9xTXtHkrzhvvxurk+Xaud2pzNZ4rembEvZls8pBMZ7FPP5
 1WdxQgCygCVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; d="scan'208";a="284413920"
Received: from pgierasi-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.39.2])
 by fmsmga007.fm.intel.com with ESMTP; 07 Sep 2020 23:58:31 -0700
To: Jakub Kicinski <kuba@kernel.org>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <20200904162751.632c4443@carbon>
 <27e05518-99c6-15e2-b801-cbc0310630ef@intel.com>
 <20200904165837.16d8ecfd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <1d2e781e-b26d-4cf0-0178-25b8835dbe26@intel.com>
 <20200907114055.27c95483@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <8f698ac5-916f-9bb0-cce2-f00fba6ba407@intel.com>
Date: Tue, 8 Sep 2020 08:58:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200907114055.27c95483@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/6] xsk: exit NAPI loop when
 AF_XDP Rx ring is full
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
Cc: Eric Dumazet <eric.dumazet@gmail.com>, daniel@iogearbox.net,
 Jesper Dangaard Brouer <brouer@redhat.com>, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0wNyAyMDo0MCwgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4gT24gTW9uLCA3IFNl
cCAyMDIwIDE1OjM3OjQwICswMjAwIEJqw7ZybiBUw7ZwZWwgd3JvdGU6Cj4+ICAgPiBJJ3ZlIGJl
ZW4gcG9uZGVyaW5nIHRoZSBleGFjdCBwcm9ibGVtIHlvdSdyZSBzb2x2aW5nIHdpdGggTWFjaWVq
Cj4+ICAgPiByZWNlbnRseS4gVGhlIGVmZmljaWVuY3kgb2YgQUZfWERQIG9uIG9uZSBjb3JlIHdp
dGggdGhlIE5BUEkgcHJvY2Vzc2luZy4KPj4gICA+Cj4+ICAgPiBZb3VyIHNvbHV0aW9uIChldmVu
IHRob3VnaCBpdCBhZG1pdHRlZGx5IGhlbHBzLCBhbmQgaXMgcXVpdGUgc2ltcGxlKQo+PiAgID4g
c3RpbGwgaGFzIHRoZSBhcHBsaWNhdGlvbiBwb3RlbnRpYWxseSBub3QgYWJsZSB0byBwcm9jZXNz
IHBhY2tldHMKPj4gICA+IHVudGlsIHRoZSBxdWV1ZSBmaWxscyB1cC4gVGhpcyB3aWxsIGJlIGJh
ZCBmb3IgbGF0ZW5jeS4KPj4gICA+Cj4+ICAgPiBXaHkgZG9uJ3Qgd2UgbW92ZSBjbG9zZXIgdG8g
YXBwbGljYXRpb24gcG9sbGluZz8gTmV2ZXIgcmUtYXJtIHRoZSBOQVBJCj4+ICAgPiBhZnRlciBS
WCwgbGV0IHRoZSBhcHBsaWNhdGlvbiBhc2sgZm9yIHBhY2tldHMsIHJlLWFybSBpZiAwIHBvbGxl
ZC4KPj4gICA+IFlvdSdkIGdldCBtYXggYmF0Y2hpbmcsIG1pbiBsYXRlbmN5Lgo+PiAgID4KPj4g
ICA+IFdobydzIHRoZSByYW1ibGluZyBvbmUgbm93PyA6LUQKPj4gICA+Cj4+Cj4+IDotRCBObywg
dGhlc2UgYXJlIGFsbCB2ZXJ5IGdvb2QgaWRlYXMhIFdlJ3ZlIGFjdHVhbGx5IGV4cGVyaW1lbnRl
ZAo+PiB3aXRoIGl0IHdpdGggdGhlIGJ1c3ktcG9sbCBzZXJpZXMgYSB3aGlsZSBiYWNrIC0tIE5B
UEkgYnVzeS1wb2xsaW5nCj4+IGRvZXMgZXhhY3RseSAiYXBwbGljYXRpb24gcG9sbGluZyIuCj4+
Cj4+IEhvd2V2ZXIsIEkgd29uZGVyIGlmIHRoZSBidXN5LXBvbGxpbmcgd291bGQgaGF2ZSBiZXR0
ZXIgcGVyZm9ybWFuY2UKPj4gdGhhbiB0aGUgc2NlbmFyaW8gYWJvdmUgKGkuZS4gd2hlbiB0aGUg
a3NvZnRpcnFkIG5ldmVyIGtpY2tzIGluKT8KPj4gRXhlY3V0aW5nIHRoZSBOQVBJIHBvbGwgKmV4
cGxpY2l0bHkqIGluIHRoZSBzeXNjYWxsLCBvciBpbXBsaWNpdGx5Cj4+IGZyb20gdGhlIHNvZnRp
cnEuCj4+Cj4+IEhtbSwgdGhpbmtpbmcgb3V0IGxvdWQgaGVyZS4gQSBzaW1wbGUocikgcGF0Y2gg
ZW5hYmxpbmcgYnVzeSBwb2xsOwo+PiBFeHBvcnRpbmcgdGhlIG5hcGlfaWQgdG8gdGhlIEFGX1hE
UCBzb2NrZXQgKHhkcC0+cnhxLT5uYXBpX2lkIHRvCj4+IHNrLT5za19uYXBpX2lkKSwgYW5kIGRv
IHRoZSBza19idXN5X3BvbGxfbG9vcCgpIGluIHNlbmRtc2cuCj4+Cj4+IE9yIGRpZCB5b3UgaGF2
ZSBzb21ldGhpbmcgY29tcGxldGVseSBkaWZmZXJlbnQgaW4gbWluZD8KPiAKPiBNeSB1bmRlcnN0
YW5kaW5nIGlzIHRoYXQgYnVzeS1wb2xsaW5nIGlzIGFsbG93aW5nIGFwcGxpY2F0aW9uIHRvIHBp
Y2sKPiB1cCBwYWNrZXRzIGZyb20gdGhlIHJpbmcgYmVmb3JlIHRoZSBJUlEgZmlyZXMuCj4gCj4g
V2hhdCB3ZSdyZSBtb3JlIGNvbmNlcm5lZCBhYm91dCBpcyB0aGUgSVJRIGZpcmluZyBpbiB0aGUg
Zmlyc3QgcGxhY2UuCj4gCj4gICBhcHBsaWNhdGlvbjogICBidXN5ICAgIHwgbmVlZHMgcGFja2V0
cyB8IGlkbGUKPiAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLSstLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gICAgIHN0YW5kYXJkICAgfCAgICAgICAgIHwgICBwb2xscyBO
QVBJICB8IGtlZXAgcG9sbGluZz8gc2xlZXA/Cj4gICAgIGJ1c3kgcG9sbCAgfCBJUlEgb24gIHwg
ICAgSVJRIG9mZiAgICB8ICBJUlEgb2ZmICAgICAgSVJRIG9uCj4gICAtLS0tLS0tLS0tLS0tKy0t
LS0tLS0tLSstLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgICAgICAg
ICAgICAgIHwgICAgICAgICB8ICAgcG9sbHMgb25jZSAgfAo+ICAgICAgQUZfWERQICAgIHwgSVJR
IG9mZiB8ICAgIElSUSBvZmYgICAgfCAgSVJRIG9uCj4gCj4gCj4gU28gYnVzeSBwb2xsaW5nIGlz
IHByZXR0eSBvcnRob2dvbmFsLiBJdCBvbmx5IGFwcGxpZXMgdG8gdGhlCj4gImFwcGxpY2F0aW9u
IG5lZWRzIHBhY2tldHMiIHRpbWUuIFdoYXQgd2UnZCBuZWVkIGlzIGZvciB0aGUgYXBwbGljYXRp
b24KPiB0byBiZSBhYmxlIHRvIHN1cHByZXNzIE5BUEkgcG9sbHMsIHByb21pc2luZyB0aGUga2Vy
bmVsIHRoYXQgaXQgd2lsbAo+IGJ1c3kgcG9sbCB3aGVuIGFwcHJvcHJpYXRlLgo+CgpBaCwgbmlj
ZSB3cml0ZS11cCEgVGhhbmtzISBBIHN0cmljdCBidXN5LXBvbGwgbWVjaGFuaXNtLCBub3QgdGhl
Cm9wcG9ydHVuaXN0aWMgKGV4aXN0aW5nKSBOQVBJIGJ1c3ktcG9sbC4KClRoaXMgd291bGQgYmUg
YSBuZXcga2luZCBvZiBtZWNoYW5pc20sIGFuZCBhIHZlcnkgbXVjaCB3ZWxjb21lIG9uZSBpbgpB
Rl9YRFAtbGFuZC4gTW9yZSBiZWxvdy4KCj4+IEFzIGZvciB0aGlzIHBhdGNoIHNldCwgSSB0aGlu
ayBpdCB3b3VsZCBtYWtlIHNlbnNlIHRvIHB1bGwgaXQgaW4gc2luY2UKPj4gaXQgbWFrZXMgdGhl
IHNpbmdsZS1jb3JlIHNjZW5hcmlvICptdWNoKiBiZXR0ZXIsIGFuZCBpdCBpcyBwcmV0dHkKPj4g
c2ltcGxlLiBUaGVuIGRvIHRoZSBhcHBsaWNhdGlvbiBwb2xsaW5nIGFzIGFub3RoZXIsIHBvdGVu
dGlhbGx5LAo+PiBpbXByb3ZlbWVudCBzZXJpZXMuCj4gCj4gVXAgdG8geW91LCBpdCdzIGV4dHJh
IGNvZGUgaW4gdGhlIGRyaXZlciBzbyBtb3N0bHkgeW91ciBjb2RlIHRvCj4gbWFpbnRhaW4uCj4g
Cj4gSSB0aGluayB0aGF0IGlmIHdlIGltcGxlbWVudCB3aGF0IEkgZGVzY3JpYmVkIGFib3ZlIC0g
ZXZlcnlvbmUgd2lsbAo+IHVzZSB0aGF0IG9uIGEgc2luZ2xlIGNvcmUgc2V0dXAsIHNvIHRoaXMg
c2V0IHdvdWxkIGJlIGRlYWQgY29kZQo+IChhc3N1bWluZyBSUSBpcyBzaXplZCBhcHByb3ByaWF0
ZWx5KS4gQnV0IGFnYWluLCB5b3VyIGNhbGwgOikKPiAKCk5vdywgSSBhZ3JlZSB0aGF0IHRoZSBi
dXN5LXBvbGwgeW91IGRlc2NyaWJlIGFib3ZlIHdvdWxkIGJlIHRoZSBiZXN0Cm9wdGlvbiwgYnV0
IGZyb20gbXkgcGVyc3BlY3RpdmUgaXQncyBhIG11Y2ggbGFyZ2VyIHNldCB0aGF0IGludm9sdmVz
CmV4cGVyaW1lbnRpbmcuIEkgd2lsbCBleHBsb3JlIHRoYXQsIGJ1dCBJIHN0aWxsIHRoaW5rIHRo
aXMgc2VyaWVzIHNob3VsZApnbyBpbiBzb29uZXIgdG8gbWFrZSB0aGUgc2luZ2xlIGNvcmUgc2Nl
bmFyaW8gdXNhYmxlICp0b2RheSouCgpPaywgYmFjayB0byB0aGUgYnVzeS1wb2xsIGlkZWFzLiBJ
J2xsIGNhbGwgeW91ciBpZGVhICJzdHJpY3QgYnVzeS1wb2xsIiwKaS5lLiB0aGUgTkFQSSBsb29w
IGlzICpvbmx5KiBkcml2ZW4gYnkgdXNlcmxhbmQsIGFuZCBpbnRlcnJ1cHRzIHN0YXkKZGlzYWJs
ZWQuICJTeXNjYWxsIGRyaXZlbiBwb2xsLW1vZGUgZHJpdmVyIi4gOi0pCgpPbiB0aGUgZHJpdmVy
IHNpZGUgKGFnYWluLCBvbmx5IHRhbGtpbmcgSW50ZWwgaGVyZSwgc2luY2UgdGhhdCdzIHdoYXQg
SQprbm93IHRoZSBkZXRhaWxzIG9mKSwgdGhlIE5BUEkgY29udGV4dCB3b3VsZCBvbmx5IGNvdmVy
IEFGX1hEUCBxdWV1ZXMsCnNvIHRoYXQgb3RoZXIgcXVldWVzIGFyZSBub3Qgc3RhcnZlZC4KCkFu
eSBpZGVhcyBob3cgc3RyaWN0IGJ1c3ktcG9sbCB3b3VsZCBsb29rLCBBUEkvaW1wbG1lbnRhdGlv
bi13aXNlPyBBbgpvcHRpb24gb25seSBmb3IgQUZfWERQIHNvY2tldHM/IFdvdWxkIHRoaXMgbWFr
ZSBzZW5zZSB0byByZWd1bGFyCnNvY2tldHM/IElmIHNvLCBtYXliZSBleHRlbmQgdGhlIGV4aXN0
aW5nIE5BUEkgYnVzeS1wb2xsIHdpdGggYSAic3RyaWN0Igptb2RlPwoKSSdsbCBzdGFydCBwbGF5
aW5nIGFyb3VuZCBhIGJpdCwgYnV0IGFnYWluLCBJIHRoaW5rIHRoaXMgc2ltcGxlIHNlcmllcwpz
aG91bGQgZ28gaW4ganVzdCB0byBtYWtlIEFGX1hEUCBzaW5nbGUgY29yZSB1c2FibGUgKnRvZGF5
Ki4KCgpUaGFua3MhCkJqw7ZybgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
