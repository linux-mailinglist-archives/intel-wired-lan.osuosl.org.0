Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7A6403D86
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Sep 2021 18:21:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10A85613D0;
	Wed,  8 Sep 2021 16:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id curRSvJHsGQF; Wed,  8 Sep 2021 16:21:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E13E2613CE;
	Wed,  8 Sep 2021 16:21:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E8AD1BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 16:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1CA72613CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 16:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id luljW82GpJ7O for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Sep 2021 16:21:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 42D5F613C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 16:21:17 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5B0A560E77;
 Wed,  8 Sep 2021 16:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631118076;
 bh=F8+s4d8CkPkH5fXzRiiq7AaCyiaRECwjcMb3994hXZA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=arhPQPgAueT66TWE3Yj+mpx0qCtQZhjwbZgi4wibJF1Vf/zMdU1r2zY/u/733bEZA
 gSXE50MRQQ0K5XHdrG2VvzbraOWAK/WKdMQARLPbsCDdI9bYoeL3LRFOx2AV0RPauV
 HAuU9z0lq6WJvxjlwmglLdZPimA4MV09yA3vBbBNMTcVyV5OfssI5jH3COsqvgRlwG
 laJXpAMO9ZPG7bTpTrDobfmgJ10wkPzZ2h+EcH8wQ7pH+6k5ljyjbk4jnChwWmPMRp
 3MhU/XmJP6p08Gw32gZQKdE8dIHFv0ujdlVHBi9nra2dZvomroyN3q/ghDsqrSm9Z0
 lMs8geGhkGtnQ==
Date: Wed, 8 Sep 2021 09:21:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>, Florian Fainelli
 <f.fainelli@gmail.com>, Ido Schimmel <idosch@idosch.org>
Message-ID: <20210908092115.191fdc28@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <PH0PR11MB495169997552152891A69B57EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
References: <20210903151436.529478-1-maciej.machnikowski@intel.com>
 <20210903151436.529478-2-maciej.machnikowski@intel.com>
 <20210903151425.0bea0ce7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB4951623918C9BA8769C10E50EAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210906113925.1ce63ac7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49511F2017F48BBAAB2A065CEAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210906180124.33ff49ef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495152B03F32A5A17EDB2F6CEAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907075509.0b3cb353@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49512C265E090FC8741D8510EAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907124730.33852895@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495169997552152891A69B57EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Andrew Lunn <andrew@lunn.ch>,
 "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Saeed Mahameed <saeed@kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Michael Chan <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCA4IFNlcCAyMDIxIDA4OjAzOjM1ICswMDAwIE1hY2huaWtvd3NraSwgTWFjaWVqIHdy
b3RlOgo+ID4gPiBZZXAhIFlldCBsZXQncyBnbyBvbmUgc3RlcCBhdCBhIHRpbWUuIEkgYmVsaWV2
ZSBvbmNlIHdlIGhhdmUgdGhlIGJhc2ljcyAoRUVDCj4gPiA+IG1vbml0b3JpbmcgYW5kIHJlY292
ZXJlZCBjbG9jayBjb25maWd1cmF0aW9uKSB3ZSdsbCBiZSBhYmxlIHRvIGltcGxlbWVudAo+ID4g
PiBhIGJhc2ljIGZ1bmN0aW9uYWxpdHkgLSBhbmQgYWRkIGJlbGxzIGFuZCB3aGlzdGxlcyBsYXRl
ciBvbiwgYXMgdGhlcmUgYXJlIG1vcmUKPiA+ID4gY2FwYWJpbGl0aWVzIHRoYXQgd2UgY291bGQg
c3VwcG9ydCBpbiBTVy4gIAo+ID4gCj4gPiBUaGUgc2V0IEFQSSBtYXkgc2hhcGUgaG93IHRoZSBn
ZXQgQVBJIGxvb2tzLiBXZSBuZWVkIGEgbWluaW1hbCB2aWFibGUKPiA+IEFQSSB3aGVyZSB0aGUg
d2hvbGUgY29udHJvbCBwYXJ0IG9mIGl0IGlzIG5vdCAiZmlybXdhcmUgb3IgcHJvcHJpZXRhcnkK
PiA+IHRvb2xzIHRha2UgY2FyZSBvZiB0aGF0Ii4KPiA+IAo+ID4gRG8geW91IGhhdmUgcHVibGlj
IGRvY3Mgb24gaG93IHRoZSB3aG9sZSBzb2x1dGlvbiB3b3Jrcz8gIAo+IAo+IFRoZSBiZXN0IHJl
ZmVyZW5jZSB3b3VsZCBiZSBteSBuZXRkZXYgMHgxNSB0dXRvcmlhbDoKPiBodHRwczovL25ldGRl
dmNvbmYuaW5mby8weDE1L3Nlc3Npb24uaHRtbD9JbnRyb2R1Y3Rpb24tdG8tdGltZS1zeW5jaHJv
bml6YXRpb24tb3Zlci1FdGhlcm5ldAo+IFRoZSBTeW5jRSBBUEkgY29uc2lkZXJhdGlvbnMgc3Rh
cnRzIH41NDowMCwgYnV0IGJhc2ljYWxseSB3ZSBuZWVkIEFQSSBmb3I6Cj4gLSBDb250cm9sbGlu
ZyB0aGUgbGFuZSB0byBwaW4gbWFwcGluZyBmb3IgY2xvY2sgcmVjb3ZlcnkKPiAtIENoZWNrIHRo
ZSBFRUMvRFBMTCBzdGF0ZSBhbmQgc2VlIHdoYXQncyB0aGUgc291cmNlIG9mIHJlZmVyZW5jZSBm
cmVxdWVuY3kKPiAoaW4gbW9yZSBhZHZhbmNlZCBkZXBsb3ltZW50cykKPiAtIGNvbnRyb2wgYWRk
aXRpb25hbCBpbnB1dCBhbmQgb3V0cHV0IHBpbnMgKEdOU1MgaW5wdXQsIGV4dGVybmFsIGlucHV0
cywgcmVjb3ZlcmVkCj4gICBmcmVxdWVuY3kgcmVmZXJlbmNlKQoKVGhhbmtzLCBnb29kIHByZXNl
bnRhdGlvbiEgSSBoYXZlbid0IHNlZW4gbXVjaCBpbiB0ZXJtcyBvZiBzeXN0ZW0KZGVzaWduLCBh
dCB0aGUgbGV2ZWwgc2ltaWxhciB0byB0aGUgQnJvYWRjb20gd2hpdGVwYXBlciB5b3Ugc2hhcmVk
LgoKPiA+ID4gSSBiZWxpZXZlIHRoaXMgaXMgdGhlIHN0YXRlLW9mLWFydDogaGVyZSdzIHRoZSBC
cm9hZGNvbSBwdWJsaWMgb25lCj4gPiA+IGh0dHBzOi8vZG9jcy5icm9hZGNvbS5jb20vZG9jLzEy
MTExNjg1Njc4MzIsIEkgYmVsaWV2ZSBNYXJ2ZWwKPiA+ID4gaGFzIHNpbWlsYXIgc29sdXRpb24u
IEJ1dCB3b3VsZCBhbHNvIGJlIGhhcHB5IHRvIGhlYXIgb3RoZXJzLiAgCj4gPiAKPiA+IEludGVy
ZXN0aW5nLiBUaGF0IHJldmVhbHMgdGhlIG5lZWQgZm9yIGFsc28gbWFya2luZyB0aGUgYmFja3Vw
Cj4gPiAoL3NlY29uZGFyeSkgY2xvY2suICAKPiAKPiBUaGF0J3Mgb3B0aW9uYWwsIGJ1dCB1c2Vm
dWwuIEFuZCBoZXJlJ3Mgd2hlcmUgd2UgbmVlZCBhIGZlZWRiYWNrCj4gb24gd2hpY2ggcG9ydC9s
YW5lIGlzIGN1cnJlbnRseSB1c2VkLCBhcyB0aGUgc3dpdGNoIG1heSBiZSBhdXRvbWF0aWMKCldo
YXQgZG8geW91IG1lYW4gYnkgb3B0aW9uYWw/IEhvdyBkb2VzIHRoZSB1c2VyIGtub3cgaWYgdGhl
cmUgaXMKZmFsbGJhY2sgb3Igbm90PyBJcyBpdCB0aGF0IEludGVsIGlzIGludGVuZGluZyB0byBz
dXBwb3J0IG9ubHkKZGV2aWNlcyB3aXRoIHVwIHRvIDIgcG9ydHMgYW5kIHRoZSBzZWNvbmQgcG9y
dCBpcyBhbHdheXMgdGhlCmJhY2t1cCAoYXBvbG9naWVzIGZvciBzcGVjdWxhdGluZykuCgo+ID4g
SGF2ZSB5b3Ugc2VlbiBhbnkgZG9jcyBvbiBob3cgc3lzdGVtcyB3aXRoIGRpc2NyZWV0IFBIWSBB
U0lDcyBtdXgKPiA+IHRoZSBjbG9ja3M/ICAKPiAKPiBZZXMgLSB1bmZvcnR1bmF0ZWx5IHRoZXkg
YXJlIG5vdCBwdWJsaWMgOigKCk11bWJsZSwgbXVtYmxlLiBJZG8sIEZsb3JpYW4gLSBhbnkgZGV2
aWNlcyB3aXRoaW4geW91ciBwdXJ2aWV3IHdoaWNoCndvdWxkIHN1cHBvcnQgU3luY0U/IAoKPiA+
ID4gRXRoZXJuZXQgSVAvUEhZIHVzdWFsbHkgb3V0cHV0cyBhIGRpdmlkZWQgY2xvY2sgc2lnbmFs
IChzaW5jZSBpdCdzCj4gPiA+IGVhc2llciB0byByb3V0ZSkgZGVyaXZlZCBmcm9tIHRoZSBSWCBj
bG9jay4KPiA+ID4gVGhlIERQTEwgY29ubmVjdGl2aXR5IGlzIHZlbmRvci1zcGVjaWZpYywgYXMg
eW91IGNhbiB1c2UgaXQgdG8gY29ubmVjdAo+ID4gPiBzb21lIGV4dGVybmFsIHNpZ25hbHMsIGJ1
dCB5b3UgY2FuIGFzIHdlbGwganVzdCBjYXJlIGFib3V0IHJlbHlpbmcKPiA+ID4gdGhlIFN5bmNF
IGNsb2NrIGFuZCBvbmx5IGFsbG93IHJlY292ZXJpbmcgaXQgYW5kIHBhc3NpbmcgYWxvbmcKPiA+
ID4gdGhlIFFMIGluZm8gd2hlbiB5b3VyIEVFQyBpcyBsb2NrZWQuIFRoYXQncyB3aHkgSSBiYWNr
ZWQgdXAgZnJvbQo+ID4gPiBhIGZ1bGwgRFBMTCBpbXBsZW1lbnRhdGlvbiBpbiBmYXZvciBvZiBh
IG1vcmUgZ2VuZXJpYyBFRUMgY2xvY2suICAKPiA+IAo+ID4gV2hhdCBpcyBhbiBFQ0MgY2xvY2s/
IFRvIG1lIHRoZSBQTEwgc3RhdGUgaW4gdGhlIEV0aGVybmV0IHBvcnQgaXMgdGhlCj4gPiBzdGF0
ZSBvZiB0aGUgcmVjb3ZlcmVkIGNsb2NrLiBlbnVtIGlmX2VlY19zdGF0ZSBoYXMgdmFsdWVzIGxp
a2UKPiA+IGhvbGRvdmVyIHdoaWNoIHNlZW0gdG8gYmUgbW9yZSBhcHBsaWNhYmxlIHRvIHRoZSAi
c3lzdGVtIHdpZGUiIFBMTC4gIAo+IAo+IEVFQyBpcyBFdGhlcm5ldCBFcXVpcG1lbnQgQ2xvY2su
IEluIG1vc3QgY2FzZXMgdGhpcyB3aWxsIGJlIGEgRFBMTCwgYnV0IHRoYXQncwo+IG5vdCBtYW5k
YXRvcnkgYW5kIEkgYmVsaWV2ZSBpdCBtYXkgYmUgZGlmZmVyZW50IGlzIHN3aXRjaGVzIHdoZXJl
Cj4geW91IG9ubHkgbmVlZCB0byBkcml2ZSBhbGwgcG9ydHMgVFggZnJvbSBhIHNpbmdsZSBmcmVx
dWVuY3kgc291cmNlLiBJbiB0aGlzCj4gY2FzZSB0aGUgRFBMTCBjYW4gYmUgZW1iZWRkZWQgaW4g
dGhlIG11bHRpcG9ydCBQSFksCj4gIAo+ID4gTGV0IG1lIGFzayB0aGlzIC0gaWYgb25lIHBvcnQg
aXMgdHJhaW5pbmcgdGhlIGxpbmsgYW5kIHRoZSBvdGhlciBvbmUgaGFzCj4gPiB0aGUgbG9jayBh
bmQgaXMgdGhlIHNvdXJjZSAtIHdoYXQgc3RhdGUgd2lsbCBiZSByZXBvcnRlZCBmb3IgZWFjaCBw
b3J0PyAgCj4gCj4gSW4gdGhpcyBjYXNlIHRoZSBwb3J0IHRoYXQgaGFzIHRoZSBsb2NrIHNvdXJj
ZSB3aWxsIHJlcG9ydCB0aGUgbG9jayBhbmQgCj4gdGhlIEVFQ19TUkNfUE9SVCBmbGFnLiBUaGUg
cG9ydCB0aGF0IHRyYWlucyB0aGUgbGluayB3aWxsIHNob3cgdGhlCj4gbG9jayB3aXRob3V0IHRo
ZSBmbGFnIGFuZCBvbmNlIGl0IGNvbXBsZXRlcyB0aGUgdHJhaW5pbmcgc2VxdWVuY2UgaXQgd2ls
bAo+IHVzZSB0aGUgRUVDJ3MgZnJlcXVlbmN5IHRvIHRyYW5zbWl0IHRoZSBkYXRhIHNvIHRoYXQg
dGhlIG5leHQgaG9wIGlzIGFibGUKPiB0byBzeW5jaHJvbml6ZSBpdHMgRUVDIHRvIHRoZSBpbmNv
bWluZyBSWCBmcmVxdWVuY3kKCkFscmlnaHQsIEkgZG9uJ3QgbGlrZSB0aGF0LiBJdCBmZWVscyBs
aWtlIHlvdSdyZSBhdHRhY2hpbmcgb25lIG9iamVjdCdzCmluZm9ybWF0aW9uIChFQ0MpIHRvIG90
aGVyIG9iamVjdHMgKHBvcnRzKSwgYW5kIHJlcGVhdGluZyBpdC4gUHJvZgpHb2N6ecWCYSBhbmQg
ZHIgTGFuZG93c2thIHdvdWxkIG5vdCBiZSBwcm91ZC4KCj4gPiA+IFRoZSBUaW1lIElQIGlzIGFn
YWluIHJlbGF0aXZlIGFuZCB2ZW5kb3Itc3BlY2lmaWMuIElmIFN5bmNFIGlzIGRlcGxveWVkCj4g
PiA+IGFsb25nc2lkZSBQVFAgaXQgd2lsbCBtb3N0IGxpa2VseSBiZSB0aWdodGx5IGNvdXBsZWQs
IGJ1dCBpZiB5b3Ugb25seQo+ID4gPiBjYXJlIGFib3V0IGhhdmluZyBhIGZyZXF1ZW5jeSBzb3Vy
Y2UgLSBpdCdzIG5vdCBtYW5kYXRvcnkgYW5kIGl0IGNhbiBiZQo+ID4gPiBhcyB3ZWxsIGluIHRo
ZSBQSFkgSVAuICAKPiA+IAo+ID4gSSB3b3VsZCBub3QgdGhpbmsgaGF2aW5nIGp1c3QgdGhlIGZy
ZXEgaXMgdmVyeSB1c2VmdWwuICAKPiAKPiBUaGlzIGRlcGVuZHMgb24gdGhlIGRlcGxveW1lbnQu
IFRoZXJlIGFyZSBjb3VwbGUgcG9wdWxhciBmcmVxdWVuY2llcwo+IE1vc3QgcG9wdWxhciBhcmUg
MiwwNDgga0h6LCAxMCBNSHogYW5kIDY0IGtIei4gVGhlcmUgYXJlIG1hbnkgCj4gZGVwbG95bWVu
dHMgdGhhdCBvbmx5IHJlcXVpcmUgZnJlcXVlbmN5IHN5bmMgd2l0aG91dCB0aGUgcGhhc2UKPiBh
bmQvb3IgdGltZS4gSS5lLiBpZiB5b3UgZGVwbG95IGZyZXF1ZW5jeSBkaXZpc2lvbiBkdXBsZXgg
eW91IG9ubHkgbmVlZCB0aGUKPiBmcmVxdWVuY3kgcmVmZXJlbmNlLCBhbmQgdGhlIGhpZ2hlciBm
cmVxdWVuY3kgeW91IGhhdmUgLSB0aGUgZmFzdGVyIHlvdSBjYW4KPiBsb2NrIHRvIGl0LgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
