Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD26249277
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 03:38:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 799BB86AF2;
	Wed, 19 Aug 2020 01:38:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CSojftmPZ-Rn; Wed, 19 Aug 2020 01:38:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F16386AFF;
	Wed, 19 Aug 2020 01:38:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 006E21BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 01:38:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EFE5C86AF2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 01:38:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ySWdtmH4EtAM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Aug 2020 01:38:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from baidu.com (mx20.baidu.com [111.202.115.85])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7B20686A26
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 01:38:03 +0000 (UTC)
Received: from Bc-Mail-Ex13.internal.baidu.com (unknown [172.31.51.53])
 by Forcepoint Email with ESMTPS id EDC1F408959950DF5B29;
 Wed, 19 Aug 2020 09:37:58 +0800 (CST)
Received: from BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) by
 Bc-Mail-Ex13.internal.baidu.com (172.31.51.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1979.3; Wed, 19 Aug 2020 09:37:59 +0800
Received: from BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) by
 BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) with mapi id
 15.01.1979.003; Wed, 19 Aug 2020 09:37:58 +0800
From: "Li,Rongqing" <lirongqing@baidu.com>
To: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH 0/2] intel/xdp fixes for fliping rx
 buffer
Thread-Index: AQHWdWiRooPzdFWc8kC0ZfZ0v0ywr6k+oKRA
Date: Wed, 19 Aug 2020 01:37:58 +0000
Message-ID: <4268316b200049d58b9973ec4dc4725c@baidu.com>
References: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
 <CAJ+HfNi2B+2KYP9A7yCfFUhfUBd=sFPeuGbNZMjhNSdq3GEpMg@mail.gmail.com>
In-Reply-To: <CAJ+HfNi2B+2KYP9A7yCfFUhfUBd=sFPeuGbNZMjhNSdq3GEpMg@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.198.8]
x-baidu-bdmsfe-datecheck: 1_Bc-Mail-Ex13_2020-08-19 09:37:59:367
MIME-Version: 1.0
Subject: [Intel-wired-lan] =?utf-8?b?562U5aSNOiAgW1BBVENIIDAvMl0gaW50ZWwv?=
 =?utf-8?q?xdp_fixes_for_fliping_rx_buffer?=
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Netdev <netdev@vger.kernel.org>, Maciej <maciej.machnikowski@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS3pgq7ku7bljp/ku7YtLS0tLQ0KPiDlj5Hku7bkuro6IEJqw7ZybiBUw7ZwZWwg
W21haWx0bzpiam9ybi50b3BlbEBnbWFpbC5jb21dDQo+IOWPkemAgeaXtumXtDogMjAyMOW5tDjm
nIgxOOaXpSAyMjowNQ0KPiDmlLbku7bkuro6IExpLFJvbmdxaW5nIDxsaXJvbmdxaW5nQGJhaWR1
LmNvbT4NCj4g5oqE6YCBOiBOZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+OyBpbnRlbC13
aXJlZC1sYW4NCj4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgS2FybHNzb24s
IE1hZ251cw0KPiA8bWFnbnVzLmthcmxzc29uQGludGVsLmNvbT47IEJqw7ZybiBUw7ZwZWwgPGJq
b3JuLnRvcGVsQGludGVsLmNvbT47IGJwZg0KPiA8YnBmQHZnZXIua2VybmVsLm9yZz47IE1hY2ll
aiBGaWphbGtvd3NraSA8bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT47DQo+IFBpb3RyIDxw
aW90ci5yYWN6eW5za2lAaW50ZWwuY29tPjsgTWFjaWVqIDxtYWNpZWoubWFjaG5pa293c2tpQGlu
dGVsLmNvbT4NCj4g5Li76aKYOiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIDAvMl0gaW50
ZWwveGRwIGZpeGVzIGZvciBmbGlwaW5nIHJ4IGJ1ZmZlcg0KPiANCj4gT24gRnJpLCAxNyBKdWwg
MjAyMCBhdCAwODoyNCwgTGkgUm9uZ1FpbmcgPGxpcm9uZ3FpbmdAYmFpZHUuY29tPiB3cm90ZToN
Cj4gPg0KPiA+IFRoaXMgZml4ZXMgaWNlL2k0MGUvaXhnYmUvaXhnYmV2Zl9yeF9idWZmZXJfZmxp
cCBpbiBjb3B5IG1vZGUgeGRwIHRoYXQNCj4gPiBjYW4gbGVhZCB0byBkYXRhIGNvcnJ1cHRpb24u
DQo+ID4NCj4gPiBJIHNwbGl0IHR3byBwYXRjaGVzLCBzaW5jZSBpNDBlL3hnYmUvaXhnYmV2ZiBz
dXBwb3J0cyB4c2sgcmVjZWl2aW5nDQo+ID4gZnJvbSA0LjE4LCBwdXQgdGhlaXIgZml4ZXMgaW4g
YSBwYXRjaA0KPiA+DQo+IA0KPiBMaSwgc29ycnkgZm9yIHRoZSBsb29vbmcgbGF0ZW5jeS4gSSB0
b29rIGEgbG9vb25nIHZhY2F0aW9uLiA6LVANCj4gDQo+IFRoYW5rcyBmb3IgdGFraW5nIGEgbG9v
ayBhdCB0aGlzLCBidXQgSSBiZWxpZXZlIHRoaXMgaXMgbm90IGEgYnVnLg0KPiANCj4gVGhlIElu
dGVsIEV0aGVybmV0IGRyaXZlcnMgKG9idmlvdXNseSBub24temVyb2NvcHkgQUZfWERQIC0tICJn
b29kIG9sJw0KPiBYRFAiKSB1c2UgYSBwYWdlIHJldXNlIGFsZ29yaXRobS4NCj4gDQo+IEJhc2lj
IGlkZWEgaXMgdGhhdCBhIHBhZ2UgaXMgYWxsb2NhdGVkIGZyb20gdGhlIHBhZ2UgYWxsb2NhdG9y
DQo+IChpNDBlX2FsbG9jX21hcHBlZF9wYWdlKCkpLiBUaGUgcmVmY291bnQgaXMgaW5jcmVhc2Vk
IHRvIFVTSFJUX01BWC4gVGhlDQo+IHBhZ2UgaXMgc3BsaXQgaW50byB0d28gY2h1bmtzIChzaW1w
bGlmaWVkKS4gSWYgdGhlcmUncyBvbmUgdXNlciBvZiB0aGUgcGFnZSwgdGhlDQo+IHBhZ2UgY2Fu
IGJlIHJldXNlZCAoZmxpcHBlZCkuIElmIG5vdCwgYSBuZXcgcGFnZSBuZWVkcyB0byBiZSBhbGxv
Y2F0ZWQgKHdpdGggdGhlDQo+IGxhcmdlIHJlZmNvdW50KS4NCj4gDQo+IFNvLCB0aGUgaWRlYSBp
cyB0aGF0IHVzdWFsbHkgdGhlIHBhZ2UgY2FuIGJlIHJldXNlZCAoZmxpcHBlZCksIGFuZCB0aGUg
cGFnZSBvbmx5DQo+IG5lZWRzIHRvIGJlICJwdXQiIG5vdCAiZ2V0IiBzaW5jZSB0aGUgcmVmY291
bnQgd2FzIGluaXRhbGx5IGJ1bXBlZCB0byBhIGxhcmdlDQo+IHZhbHVlLg0KPiANCj4gQWxsIGZy
YW1lcyAoZXhjZXB0IFhEUF9EUk9QIHdoaWNoIGNhbiBiZSByZXVzZWQgZGlyZWN0bHkpICJkaWUi
IHZpYQ0KPiBwYWdlX2ZyYWdfZnJlZSgpIHdoaWNoIGRlY3JlYXNlcyB0aGUgcGFnZSByZWZjb3Vu
dCwgYW5kIGZyZWVzIHRoZSBwYWdlIGlmIHRoZQ0KPiByZWZjb3VudCBpcyB6ZXJvLg0KPiANCj4g
TGV0J3MgdGFrZSBzb21lIHNjZW5hcmlvcyBhcyBleGFtcGxlczoNCj4gDQo+IDEuIEEgZnJhbWUg
aXMgcmVjZWl2ZWQgaW4gInZhbmlsbGEiIFhEUCAoTUVNX1RZUEVfUEFHRV9TSEFSRUQpLCBhbmQN
Cj4gICAgdGhlIFhEUCBwcm9ncmFtIHZlcmRpY3QgaXMgWERQX1RYLiBUaGUgZnJhbWUgd2lsbCBi
ZSBwbGFjZWQgb24gdGhlDQo+ICAgIEhXIFR4IHJpbmcsIGFuZCBmcmVlZCogKGFzeW5jKSBpbiBp
NDBlX2NsZWFuX3R4X2lycToNCj4gICAgICAgICAvKiBmcmVlIHRoZSBza2IvWERQIGRhdGEgKi8N
Cj4gICAgICAgICBpZiAocmluZ19pc194ZHAodHhfcmluZykpDQo+ICAgICAgICAgICAgIHhkcF9y
ZXR1cm5fZnJhbWUodHhfYnVmLT54ZHBmKTsgLy8gY2FsbHMgcGFnZV9mcmFnX2ZyZWUoKQ0KPiAN
Cj4gMi4gQSBmcmFtZSBpcyBwYXNzZWQgdG8gdGhlIHN0YWNrLCBldmVudHVhbGx5IGl0J3MgZnJl
ZWQqIHZpYQ0KPiAgICBza2JfZnJlZV9mcmFnKCkuDQo+IA0KPiAzLiBBIGZyYW1lIGlzIHBhc3Nl
ZCB0byBhbiBBRl9YRFAgc29ja2V0LiBUaGUgZGF0YSBpcyBjb3BpZWQgdG8gdGhlDQo+ICAgIHNv
Y2tldCBkYXRhIGFyZWEsIGFuZCB0aGUgZnJhbWUgaXMgZGlyZWN0bHkgZnJlZWQqLg0KPiANCj4g
Tm90IHRoZSAqIGJ5IHRoZSBmcmVlZC4gQWN0dWFsbHkgZnJlZWluZyBoZXJlIG1lYW5zIGNhbGxp
bmcgcGFnZV9mcmFnX2ZyZWUoKSwNCj4gd2hpY2ggbWVhbnMgZGVjcmVhc2luZyB0aGUgcmVmY291
bnQuIFRoZSBwYWdlIHJldXNlIGFsZ29yaXRobSBtYWtlcyBzdXJlDQo+IHRoYXQgdGhlIGJ1ZmZl
cnMgYXJlIG5vdCBzdGFsZS4NCj4gDQo+IFRoZSBvbmx5IGRpZmZlcmVuY2UgZnJvbSBYRFBfVFgg
YW5kIFhEUF9ESVJFQ1QgdG8gZGV2L2NwdW1hcHMsIGNvbXBhcmVkDQo+IHRvIEFGX1hEUCBzb2Nr
ZXRzIGlzIHRoYXQgdGhlIGxhdHRlciBjYWxscyBwYWdlX2ZyYWdfZnJlZSgpIGRpcmVjdGx5LCB3
aGVyZWFzDQo+IHRoZSBvdGhlciBkb2VzIGl0IGFzeW5jaHJvbm91cyBmcm9tIHRoZSBUeCBjbGVh
biB1cCBwaGFzZS4NCj4gDQoNCkhpOg0KDQpUaGFua3MgZm9yIHlvdXIgZXhwbGFuYXRpb24uDQoN
CkJ1dCB3ZSBjYW4gcmVwcm9kdWNlIHRoaXMgYnVnDQoNCldlIHVzZSBlYnBmIHRvIHJlZGlyZWN0
IG9ubHktVnhsYW4gcGFja2V0cyB0byBub24temVyb2NvcHkgQUZfWERQLCAgRmlyc3Qgd2Ugc2Vl
IHBhbmljIG9uIHRjcCBzdGFjaywgaW4gdGNwX2NvbGxhcHNlOiBCVUdfT04ob2Zmc2V0IDwgMCk7
IGl0IGlzIHZlcnkgaGFyZCB0byByZXByb2R1Y2UuDQoNClRoZW4gd2UgdXNlIHRoZSBzY3AgdG8g
ZG8gdGVzdCwgYW5kIGhhcyBsb3RzIG9mIHZ4bGFuIHBhY2tldCBhdCB0aGUgc2FtZSB0aW1lLCBz
Y3Agd2lsbCBiZSBicm9rZW4gZnJlcXVlbnRseS4NCg0KV2l0aCB0aGlzIGZpeGVzLCBzY3AgaGFz
IG5vdCBiZWVuIGJyb2tlbiBhZ2FpbiwgYW5kIGtlcm5lbCBpcyBub3QgcGFuaWMgYWdhaW4NCg0K
U2VlbSB5b3VyIGV4cGxhbmF0aW9uIGlzIHVuYWJsZSB0byBzb2x2ZSBteSBhbmFseXNpczoNCg0K
ICAgICAgIDEuIGZpcnN0IHNrYiBpcyBub3QgZm9yIHhzaywgYW5kIGZvcndhcmRlZCB0byBhbm90
aGVyIGRldmljZQ0KICAgICAgICAgIG9yIHNvY2tldCBxdWV1ZQ0KICAgICAgIDIuIHNlY29uZHMg
c2tiIGlzIGZvciB4c2ssIGNvcHkgZGF0YSB0byB4c2sgbWVtb3J5LCBhbmQgcGFnZQ0KICAgICAg
ICAgIG9mIHNrYi0+ZGF0YSBpcyByZWxlYXNlZA0KICAgICAgIDMuIHJ4X2J1ZmYgaXMgcmV1c2Fi
bGUgc2luY2Ugb25seSBmaXJzdCBza2IgaXMgaW4gaXQsIGJ1dA0KICAgICAgICAgICpfcnhfYnVm
ZmVyX2ZsaXAgd2lsbCBtYWtlIHRoYXQgcGFnZV9vZmZzZXQgaXMgc2V0IHRvDQogICAgICAgICAg
Zmlyc3Qgc2tiIGRhdGENCiAgICAgICA0LiB0aGVuIHJldXNlIHJ4IGJ1ZmZlciwgZmlyc3Qgc2ti
IHdoaWNoIHN0aWxsIGlzIGxpdmluZw0KICAgICAgICAgIHdpbGwgYmUgY29ycnVwdGVkLg0KDQoN
ClRoZSByb290IGNhdXNlIGlzIGRpZmZlcmVuY2UgeW91IHNhaWQgdXBwZXIsIHNvIEkgb25seSBm
aXhlcyBmb3Igbm9uLXplcm9jb3B5IEFGX1hEUA0KDQotTGkNCj4gTGV0IG1lIGtub3cgaWYgaXQn
cyBzdGlsbCBub3QgY2xlYXIsIGJ1dCB0aGUgYm90dG9tIGxpbmUgaXMgdGhhdCBub25lIG9mIHRo
ZXNlDQo+IHBhdGNoZXMgYXJlIG5lZWRlZC4NCj4gDQo+IA0KPiBUaGFua3MhDQo+IEJqw7Zybg0K
PiANCj4gDQo+ID4gTGkgUm9uZ1FpbmcgKDIpOg0KPiA+ICAgeGRwOiBpNDBlOiBpeGdiZTogaXhn
YmV2Zjogbm90IGZsaXAgcnggYnVmZmVyIGZvciBjb3B5IG1vZGUgeGRwDQo+ID4gICBpY2UveGRw
OiBub3QgYWRqdXN0IHJ4IGJ1ZmZlciBmb3IgY29weSBtb2RlIHhkcA0KPiA+DQo+ID4gIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMgICAgICAgfCA1ICsrKystDQo+
ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jICAgICAgICAgfCA1
ICsrKystDQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4u
YyAgICAgfCA1ICsrKystDQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JldmYv
aXhnYmV2Zl9tYWluLmMgfCA1ICsrKystDQo+ID4gIGluY2x1ZGUvbmV0L3hkcC5oICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAzICsrKw0KPiA+ICBuZXQveGRwL3hzay5jICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgNCArKystDQo+ID4gIDYgZmlsZXMgY2hh
bmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IC0tDQo+ID4g
Mi4xNi4yDQo+ID4NCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiA+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
