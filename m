Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C902F48DA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Jan 2021 11:44:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 249F487208;
	Wed, 13 Jan 2021 10:44:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f-CTWYtx9l+4; Wed, 13 Jan 2021 10:44:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A7C887216;
	Wed, 13 Jan 2021 10:44:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D586D1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 10:44:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CEFBE868E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 10:44:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mm+zB8wwMdmI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Jan 2021 10:44:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 745B08676F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 10:44:07 +0000 (UTC)
IronPort-SDR: 3RlOIkuBG2bbEIXjw+incJQsymnc75BMqsdid/Cnvr1CCyAaUauCcnYrrSdB4r0bf4hfchUUF6
 gIQzP72I5HTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="242261085"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="242261085"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 02:44:06 -0800
IronPort-SDR: fiKfxMnmPsMoK/7A1Rr6qEBJOng8CWehLD+1obXpXPYX/2F0BVSuniyHbC416gzapX03OALDxk
 rIDXKxe/n8tQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="353408646"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jan 2021 02:44:04 -0800
Date: Wed, 13 Jan 2021 11:34:37 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>
Message-ID: <20210113103437.GA30103@ranger.igk.intel.com>
References: <20201218165255.6393-1-eryk.roch.rybak@intel.com>
 <e983a9eb-3d87-8fb4-3221-1f012e04d5a6@molgen.mpg.de>
 <20210107092828.GA30484@ranger.igk.intel.com>
 <CY4PR11MB162177CD462300F781703059BFAE0@CY4PR11MB1621.namprd11.prod.outlook.com>
 <CY4PR11MB162180D89412D92EBBF263AFBFA90@CY4PR11MB1621.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CY4PR11MB162180D89412D92EBBF263AFBFA90@CY4PR11MB1621.namprd11.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Add error message when MTU on
 device is out of the range
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBKYW4gMTMsIDIwMjEgYXQgMTA6NDE6MzVBTSArMDAwMCwgUnliYWssIEVyeWsgUm9j
aCB3cm90ZToKPiBHdXlzLAo+IAo+IEZyaWVuZHkgcmVtaW5kZXIuCj4gCj4gSU1ITywgZG91Ymxl
IHRoZSBsb2cgbWVzc2FnZSBpcyBub3QgdGhlIGJlc3Qgc29sdXRpb24gaGVyZS4gSG93ZXZlciwg
SSBzdWdnZXN0IHRvIHByZXBhcmUgc3RyaW5nIG9uIHN0YWNrIGVhcmxpZXIgYW5kIHNlbmQgaXQg
YXMgZXh0cmFjayB0aGVuLgo+IFdoYXQgZG8geW91IHRoaW5rIGd1eXMsIE1hY2llai9QYXVsPwoK
SSBsaWtlIHRoZSBpZGVhLiBJdCdzIHNsb3cgcGF0aCBzbyBpdCB3b24ndCBodXJ0IHVzLgpGWUkg
aXQncyAnZXh0YWNrJywgY29tZXMgZnJvbSAnZXh0ZW5kZWQgQUNLJyBuZXRsaW5rJ3MgZmVhdHVy
ZSA6KQoKPiAKPiBUaGFua3MsCj4gLUVyeWsKPiAKPiA+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0KPiA+RnJvbTogUnliYWssIEVyeWsgUm9jaAo+ID5TZW50OiBGcmlkYXksIEphbnVhcnkgOCwg
MjAyMSAxMjoxOSBQTQo+ID5UbzogRmlqYWxrb3dza2ksIE1hY2llaiA8bWFjaWVqLmZpamFsa293
c2tpQGludGVsLmNvbT47IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+Cj4gPkNj
OiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZwo+ID5TdWJqZWN0OiBSRTogW0ludGVs
LXdpcmVkLWxhbl0gW1BBVENIXSBpNDBlOiBBZGQgZXJyb3IgbWVzc2FnZSB3aGVuIE1UVSBvbiBk
ZXZpY2UgaXMgb3V0IG9mIHRoZSByYW5nZQo+ID4KPiA+Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tCj4gPj5Gcm9tOiBGaWphbGtvd3NraSwgTWFjaWVqIDxtYWNpZWouZmlqYWxrb3dza2lAaW50
ZWwuY29tPgo+ID4+U2VudDogVGh1cnNkYXksIEphbnVhcnkgNywgMjAyMSAxMDoyOCBBTQo+ID4+
VG86IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+Cj4gPj5DYzogUnliYWssIEVy
eWsgUm9jaCA8ZXJ5ay5yb2NoLnJ5YmFrQGludGVsLmNvbT47Cj4gPj5pbnRlbC13aXJlZC1sYW5A
bGlzdHMub3N1b3NsLm9yZwo+ID4+U3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRD
SF0gaTQwZTogQWRkIGVycm9yIG1lc3NhZ2Ugd2hlbiBNVFUKPiA+Pm9uIGRldmljZSBpcyBvdXQg
b2YgdGhlIHJhbmdlCj4gPj4KPiA+Pk9uIFdlZCwgSmFuIDA2LCAyMDIxIGF0IDEwOjM2OjIzQU0g
KzAxMDAsIFBhdWwgTWVuemVsIHdyb3RlOgo+ID4+PiBEZWFyIEVyeWssCj4gPj4KPiA+PkVyeWss
IHlvdSBzdGlsbCBoYXZlbid0IHNwZWNpZmllZCB0aGUgdHJlZSB0aGF0IHRoaXMgcGF0Y2ggaXMg
c3VwcG9zZWQKPiA+PnRvIGxhbmQgKG5pdCAtIGl0IHdpbGwgYmUgbmV0LW5leHQgOikpCj4gPj4K
PiA+U3VyZSBJIHdpbGwgYWRkIHRvIHRoZSBzZWNvbmQgdmVyc2lvbiBvZiBwYXRjaCwgdGhhbmtz
IGZvciBoaW50Lgo+ID4+Pgo+ID4+Pgo+ID4+PiBBbSAxOC4xMi4yMCB1bSAxNzo1MiBzY2hyaWVi
IEVyeWsgUnliYWs6Cj4gPj4+Cj4gPj4+IE1heWJlIGEgc2hvcnRlciBzdW1tYXJ5Ogo+ID4+Pgo+
ID4+PiA+IGk0MGU6IExvZyBlcnJvciBmb3Igb3ZlcnNpemVkIE1UVSBvbiBkZXZpY2UKPiA+Pj4K
PiA+Pj4gPiBXaGVuIGF0dGVtcHRpbmcgdG8gbGluayBYRFAgcHJvZyB3aXRoIE1UVSBsYXJnZXIg
dGhhbiBzdXBwb3J0ZWQsCj4gPj4+ID4gdXNlciBpcyBub3QgaW5mb3JtZWQgd2h5IFhEUCBsaW5r
aW5nIGZhaWxzLiBBZGRpbmcgcHJvcGVyCj4gPj4+Cj4gPj4+IE5pdDogSW1wZXJhdGl2ZSBtb29k
IGNvdWxkIGJlIHVzZWQgaW5zdGVhZDogQWRkIHByb3BlciDigKYKPiA+Pgo+ID4+KzEsIHRoYW5r
cyBQYXVsIQo+ID5UaGFua3MgZ3V5cywgZXhwZWN0IGJldHRlciBjb21taXQgbWVzc2FnZSBpbiBu
ZXh0IHZlcnNpb24gb2YgdGhpcyBwYXRjaC4KPiA+Pgo+ID4+Pgo+ID4+PiA+IGVycm9yIG1lc3Nh
Z2UuCj4gPj4+Cj4gPj4+IFBlcnNvbmFsbHksIHdoZW4gYWRkaW5nIG5ldyBsb2cgbWVzc2FnZSwg
SSBmaW5kIGl0IG5pY2UgdG8gc2VlIHRoZW0KPiA+Pj4gaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHRv
by4KPiA+Pj4KPiA+Pj4gPiBTaWduZWQtb2ZmLWJ5OiBBcmthZGl1c3ogS3ViYWxld3NraQo+ID4+
PiA+IDxhcmthZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+Cj4gPj4+ID4gU2lnbmVkLW9mZi1i
eTogRXJ5ayBSeWJhayA8ZXJ5ay5yb2NoLnJ5YmFrQGludGVsLmNvbT4KPiA+Pj4gPiAtLS0KPiA+
Pj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgfCAxMSAr
KysrKysrLS0tLQo+ID4+PiA+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKPiA+Pj4gPgo+ID4+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCj4gPj4+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCj4gPj4+ID4gaW5kZXggNjMwMjU4ZS4uNGZkZWYwMCAx
MDA2NDQKPiA+Pj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
bWFpbi5jCj4gPj4+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
X21haW4uYwo+ID4+PiA+IEBAIC0xMjkzMyw5ICsxMjkzMywxMCBAQCBzdGF0aWMgbmV0ZGV2X2Zl
YXR1cmVzX3QgaTQwZV9mZWF0dXJlc19jaGVjayhzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+ID4+PiA+
ICAgICogaTQwZV94ZHBfc2V0dXAgLSBhZGQvcmVtb3ZlIGFuIFhEUCBwcm9ncmFtCj4gPj4+ID4g
ICAgKiBAdnNpOiBWU0kgdG8gY2hhbmdlZAo+ID4+PiA+ICAgICogQHByb2c6IFhEUCBwcm9ncmFt
Cj4gPj4+ID4gKyAqIEBleHRhY2s6IG5ldGxpbmsgZXh0ZW5kZWQgYWNrCj4gPj4+ID4gICAgKiov
Cj4gPj4+ID4gLXN0YXRpYyBpbnQgaTQwZV94ZHBfc2V0dXAoc3RydWN0IGk0MGVfdnNpICp2c2ks
Cj4gPj4+ID4gLSAgc3RydWN0IGJwZl9wcm9nICpwcm9nKQo+ID4+PiA+ICtzdGF0aWMgaW50IGk0
MGVfeGRwX3NldHVwKHN0cnVjdCBpNDBlX3ZzaSAqdnNpLCBzdHJ1Y3QgYnBmX3Byb2cgKnByb2cs
Cj4gPj4+ID4gKyAgc3RydWN0IG5ldGxpbmtfZXh0X2FjayAqZXh0YWNrKQo+ID4+PiA+ICAgewo+
ID4+PiA+ICAgaW50IGZyYW1lX3NpemUgPSB2c2ktPm5ldGRldi0+bXR1ICsgRVRIX0hMRU4gKyBF
VEhfRkNTX0xFTiArIFZMQU5fSExFTjsKPiA+Pj4gPiAgIHN0cnVjdCBpNDBlX3BmICpwZiA9IHZz
aS0+YmFjazsKPiA+Pj4gPiBAQCAtMTI5NDQsOCArMTI5NDUsMTAgQEAgc3RhdGljIGludCBpNDBl
X3hkcF9zZXR1cChzdHJ1Y3QgaTQwZV92c2kgKnZzaSwKPiA+Pj4gPiAgIGludCBpOwo+ID4+PiA+
ICAgLyogRG9uJ3QgYWxsb3cgZnJhbWVzIHRoYXQgc3BhbiBvdmVyIG11bHRpcGxlIGJ1ZmZlcnMg
Ki8KPiA+Pj4gPiAtaWYgKGZyYW1lX3NpemUgPiB2c2ktPnJ4X2J1Zl9sZW4pCj4gPj4+ID4gK2lm
IChmcmFtZV9zaXplID4gdnNpLT5yeF9idWZfbGVuKSB7Cj4gPj4+ID4gK05MX1NFVF9FUlJfTVNH
X01PRChleHRhY2ssICJNVFUgdG9vIGxhcmdlIHRvIGVuYWJsZSBYRFAiKTsKPiA+Pj4KPiA+Pj4g
Q291bGQgeW91IHBsZWFzZSBhbHNvIHByaW50IG91dCBib3RoIHZhbHVlcz8gTWF5YmUgKHVuc3Vy
ZSBhYm91dCB0aGUgdW5pdHMpOgo+ID4+Pgo+ID4+PiAgICBNVFUgb2YgJXUgYnl0ZXMoPykgdG9v
IGxhcmdlIHRvIGVuYWJsZSBYRFAgKG1heGltdW06ICV1IGJ5dGVzKQo+ID4+Cj4gPj5ObywgZXh0
YWNrIGRvZXMgbm90IHN1cHBvcnQgcHJpbnRmLWxpa2UgZm9ybWF0IHNwZWNpZmllcnMsCj4gPj51
bmZvcnR1bmF0ZWx5IDo8Cj4gPj4KPiA+Pk1heWJlIHdlIGNhbiBkb3VibGUgdGhlIG1lc3NhZ2Ug
YW5kIGhhdmUgYSBzZXBhcmF0ZSBkZXZfaW5mbygpIGluIGhlcmU/Cj4gPgo+ID5JTUhPLCBkb3Vi
bGUgdGhlIGxvZyBtZXNzYWdlIGlzIG5vdCB0aGUgYmVzdCBzb2x1dGlvbiBoZXJlLiBIb3dldmVy
LCBJIHN1Z2dlc3QgdG8gcHJlcGFyZSBzdHJpbmcgb24gc3RhY2sgZWFybGllciBhbmQgc2VuZCBp
dCBhcyBleHRyYWNrIHRoZW4uCj4gPldoYXQgZG8geW91IHRoaW5rIGd1eXMsIE1hY2llai9QYXVs
Pwo+ID4KPiA+Pgo+ID4+Pgo+ID4+Pgo+ID4+PiBLaW5kIHJlZ2FyZHMsCj4gPj4+Cj4gPj4+IFBh
dWwKPiA+Pj4KPiA+Pj4KPiA+Pj4gPiAgIHJldHVybiAtRUlOVkFMOwo+ID4+PiA+ICt9Cj4gPj4+
ID4gICAvKiBXaGVuIHR1cm5pbmcgWERQIG9uLT5vZmYvb2ZmLT5vbiB3ZSByZXNldCBhbmQgcmVi
dWlsZCB0aGUgcmluZ3MuICovCj4gPj4+ID4gICBuZWVkX3Jlc2V0ID0gKGk0MGVfZW5hYmxlZF94
ZHBfdnNpKHZzaSkgIT0gISFwcm9nKTsgQEAgLTEzMjU0LDcKPiA+Pj4gPiArMTMyNTcsNyBAQCBz
dGF0aWMgaW50IGk0MGVfeGRwKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsCj4gPj4+ID4gICBzd2l0
Y2ggKHhkcC0+Y29tbWFuZCkgewo+ID4+PiA+ICAgY2FzZSBYRFBfU0VUVVBfUFJPRzoKPiA+Pj4g
PiAtcmV0dXJuIGk0MGVfeGRwX3NldHVwKHZzaSwgeGRwLT5wcm9nKTsKPiA+Pj4gPiArcmV0dXJu
IGk0MGVfeGRwX3NldHVwKHZzaSwgeGRwLT5wcm9nLCB4ZHAtPmV4dGFjayk7Cj4gPj4+ID4gICBj
YXNlIFhEUF9TRVRVUF9YU0tfUE9PTDoKPiA+Pj4gPiAgIHJldHVybiBpNDBlX3hza19wb29sX3Nl
dHVwKHZzaSwgeGRwLT54c2sucG9vbCwKPiA+Pj4gPiAgICAgIHhkcC0+eHNrLnF1ZXVlX2lkKTsK
PiA+Pj4gPgo+ID4+PiA+IGJhc2UtY29tbWl0OiBkMmMyYmJhZDkzYjgxODAyMDY1N2E4MjEyMWEx
NDdlOWFjZTEyMzBkCj4gPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gPj4+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPiA+Pj4gSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKPiA+Pj4gaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
