Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A8E3AEC84
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jun 2021 17:34:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9CDF402DC;
	Mon, 21 Jun 2021 15:34:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zT0G_GnC82FN; Mon, 21 Jun 2021 15:34:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85828402B5;
	Mon, 21 Jun 2021 15:34:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A68B1BF417
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 15:33:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 870C483280
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 15:33:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9LSygYXlcSPe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 15:33:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2620831BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 15:33:10 +0000 (UTC)
IronPort-SDR: bOmFO072o4au14c4b15a6+g/cvrDj9nQJByt6O3mF6D968JxVDBIPIuUXo3HGhCLlybC7Gyf0Q
 VnmdJyrTq+4g==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="205043819"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="205043819"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 08:33:09 -0700
IronPort-SDR: lx78yng4sZaP0TAdbPDHw+N5MZ5R86JbypeloJWmZWhrXkNFZ/CsY/q85xer9uwWyZNBNFfHuj
 emzrXVGu8t0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="641355782"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
 by fmsmga005.fm.intel.com with ESMTP; 21 Jun 2021 08:33:07 -0700
Date: Mon, 21 Jun 2021 23:25:39 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Message-ID: <20210621152539.GL158568@pl-dbox>
References: <1624263000-8709-1-git-send-email-jedrzej.jagielski@intel.com>
 <202106211913.DugmZi6d-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202106211913.DugmZi6d-lkp@intel.com>
X-Mailman-Approved-At: Mon, 21 Jun 2021 15:34:23 +0000
Subject: Re: [Intel-wired-lan] [kbuild-all] Re: [PATCH net-next v1] iavf:
 Add trace while removing device
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
Cc: kbuild-all@lists.01.org, intel-wired-lan@lists.osuosl.org,
 clang-built-linux@googlegroups.com,
 =?utf-8?Q?J=C4=99drzej?= Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBKdW4gMjEsIDIwMjEgYXQgMDc6Mjg6MDdQTSArMDgwMCwga2VybmVsIHRlc3Qgcm9i
b3Qgd3JvdGU6Cj4gSGkgIkrEmWRyemVqLAo+IAo+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoISBZ
ZXQgc29tZXRoaW5nIHRvIGltcHJvdmU6Cj4gCj4gW2F1dG8gYnVpbGQgdGVzdCBFUlJPUiBvbiBu
ZXQtbmV4dC9tYXN0ZXJdCj4gCj4gdXJsOiAgICBodHRwczovL2dpdGh1Yi5jb20vMGRheS1jaS9s
aW51eC9jb21taXRzL0otZHJ6ZWotSmFnaWVsc2tpL2lhdmYtQWRkLXRyYWNlLXdoaWxlLXJlbW92
aW5nLWRldmljZS8yMDIxMDYyMS0xNjE0MTkKPiBiYXNlOiAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2RhdmVtL25ldC1uZXh0LmdpdCBhZGMyZTU2ZWJl
NjM3N2Y1YzAzMmQ5NmFlZTBmZWFjMzBhNjQwNDUzCj4gY29uZmlnOiB4ODZfNjQtcmFuZGNvbmZp
Zy1hMDEyLTIwMjEwNjIxIChhdHRhY2hlZCBhcyAuY29uZmlnKQo+IGNvbXBpbGVyOiBjbGFuZyB2
ZXJzaW9uIDEzLjAuMCAoaHR0cHM6Ly9naXRodWIuY29tL2xsdm0vbGx2bS1wcm9qZWN0IGUxYWRm
OTA4MjZhNTdiNjc0ZWVlNzliMDcxZmI0NmMxZjU2ODNjZDApCj4gcmVwcm9kdWNlICh0aGlzIGlz
IGEgVz0xIGJ1aWxkKToKPiAgICAgICAgIHdnZXQgaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRl
bnQuY29tL2ludGVsL2xrcC10ZXN0cy9tYXN0ZXIvc2Jpbi9tYWtlLmNyb3NzIC1PIH4vYmluL21h
a2UuY3Jvc3MKPiAgICAgICAgIGNobW9kICt4IH4vYmluL21ha2UuY3Jvc3MKPiAgICAgICAgICMg
aW5zdGFsbCB4ODZfNjQgY3Jvc3MgY29tcGlsaW5nIHRvb2wgZm9yIGNsYW5nIGJ1aWxkCj4gICAg
ICAgICAjIGFwdC1nZXQgaW5zdGFsbCBiaW51dGlscy14ODYtNjQtbGludXgtZ251Cj4gICAgICAg
ICAjIGh0dHBzOi8vZ2l0aHViLmNvbS8wZGF5LWNpL2xpbnV4L2NvbW1pdC81N2FmYjc4MWU2ZGE3
MWIzZWIxYzMyYjc0ODVhZGY1N2RlNzg5YTFiCj4gICAgICAgICBnaXQgcmVtb3RlIGFkZCBsaW51
eC1yZXZpZXcgaHR0cHM6Ly9naXRodWIuY29tLzBkYXktY2kvbGludXgKPiAgICAgICAgIGdpdCBm
ZXRjaCAtLW5vLXRhZ3MgbGludXgtcmV2aWV3IEotZHJ6ZWotSmFnaWVsc2tpL2lhdmYtQWRkLXRy
YWNlLXdoaWxlLXJlbW92aW5nLWRldmljZS8yMDIxMDYyMS0xNjE0MTkKPiAgICAgICAgIGdpdCBj
aGVja291dCA1N2FmYjc4MWU2ZGE3MWIzZWIxYzMyYjc0ODVhZGY1N2RlNzg5YTFiCj4gICAgICAg
ICAjIHNhdmUgdGhlIGF0dGFjaGVkIC5jb25maWcgdG8gbGludXggYnVpbGQgdHJlZQo+ICAgICAg
ICAgQ09NUElMRVJfSU5TVEFMTF9QQVRIPSRIT01FLzBkYXkgQ09NUElMRVI9Y2xhbmcgbWFrZS5j
cm9zcyBBUkNIPXg4Nl82NCAKPiAKPiBJZiB5b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFkZCBm
b2xsb3dpbmcgdGFnIGFzIGFwcHJvcHJpYXRlCj4gUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJv
Ym90IDxsa3BAaW50ZWwuY29tPgo+IAo+IEFsbCBlcnJvcnMgKG5ldyBvbmVzIHByZWZpeGVkIGJ5
ID4+KToKU29ycnkgZm9yIHRoZSBicm9rZW4gcmVwb3J0LCBraW5kbHkgaWdub3JlIHRoaXMsIHdl
IHdpbGwgZml4CnRoaXMgYXNhcC4KCj4gCj4gICAgYXJjaC94ODYvTWFrZWZpbGU6MTQ4OiBDT05G
SUdfWDg2X1gzMiBlbmFibGVkIGJ1dCBubyBiaW51dGlscyBzdXBwb3J0Cj4gPj4gbWFrZVsyXTog
KioqIE5vIHJ1bGUgdG8gbWFrZSB0YXJnZXQgJy90bXAva2VybmVsL3g4Nl82NC1yYW5kY29uZmln
LWEwMTItMjAyMTA2MjEvY2xhbmctMTMvNTdhZmI3ODFlNmRhNzFiM2ViMWMzMmI3NDg1YWRmNTdk
ZTc4OWExYi9saWIvbW9kdWxlcy81LjEzLjAtcmM2Ky9rZXJuZWwvY3J5cHRvL2NtYWMua28nLCBu
ZWVkZWQgYnkgJ19fbW9kaW5zdCcuCj4gPj4gbWFrZVsyXTogKioqIE5vIHJ1bGUgdG8gbWFrZSB0
YXJnZXQgJy90bXAva2VybmVsL3g4Nl82NC1yYW5kY29uZmlnLWEwMTItMjAyMTA2MjEvY2xhbmct
MTMvNTdhZmI3ODFlNmRhNzFiM2ViMWMzMmI3NDg1YWRmNTdkZTc4OWExYi9saWIvbW9kdWxlcy81
LjEzLjAtcmM2Ky9rZXJuZWwvY3J5cHRvL21kNS5rbycsIG5lZWRlZCBieSAnX19tb2RpbnN0Jy4K
PiA+PiBtYWtlWzJdOiAqKiogTm8gcnVsZSB0byBtYWtlIHRhcmdldCAnL3RtcC9rZXJuZWwveDg2
XzY0LXJhbmRjb25maWctYTAxMi0yMDIxMDYyMS9jbGFuZy0xMy81N2FmYjc4MWU2ZGE3MWIzZWIx
YzMyYjc0ODVhZGY1N2RlNzg5YTFiL2xpYi9tb2R1bGVzLzUuMTMuMC1yYzYrL2tlcm5lbC9jcnlw
dG8vc2hhNTEyX2dlbmVyaWMua28nLCBuZWVkZWQgYnkgJ19fbW9kaW5zdCcuCj4gPj4gbWFrZVsy
XTogKioqIE5vIHJ1bGUgdG8gbWFrZSB0YXJnZXQgJy90bXAva2VybmVsL3g4Nl82NC1yYW5kY29u
ZmlnLWEwMTItMjAyMTA2MjEvY2xhbmctMTMvNTdhZmI3ODFlNmRhNzFiM2ViMWMzMmI3NDg1YWRm
NTdkZTc4OWExYi9saWIvbW9kdWxlcy81LjEzLjAtcmM2Ky9rZXJuZWwvZHJpdmVycy9uZXQvbmV0
X2ZhaWxvdmVyLmtvJywgbmVlZGVkIGJ5ICdfX21vZGluc3QnLgo+ID4+IG1ha2VbMl06ICoqKiBO
byBydWxlIHRvIG1ha2UgdGFyZ2V0ICcvdG1wL2tlcm5lbC94ODZfNjQtcmFuZGNvbmZpZy1hMDEy
LTIwMjEwNjIxL2NsYW5nLTEzLzU3YWZiNzgxZTZkYTcxYjNlYjFjMzJiNzQ4NWFkZjU3ZGU3ODlh
MWIvbGliL21vZHVsZXMvNS4xMy4wLXJjNisva2VybmVsL2RyaXZlcnMvbmV0L3ZpcnRpb19uZXQu
a28nLCBuZWVkZWQgYnkgJ19fbW9kaW5zdCcuCj4gPj4gbWFrZVsyXTogKioqIE5vIHJ1bGUgdG8g
bWFrZSB0YXJnZXQgJy90bXAva2VybmVsL3g4Nl82NC1yYW5kY29uZmlnLWEwMTItMjAyMTA2MjEv
Y2xhbmctMTMvNTdhZmI3ODFlNmRhNzFiM2ViMWMzMmI3NDg1YWRmNTdkZTc4OWExYi9saWIvbW9k
dWxlcy81LjEzLjAtcmM2Ky9rZXJuZWwvZnMvY2lmcy9jaWZzLmtvJywgbmVlZGVkIGJ5ICdfX21v
ZGluc3QnLgo+ID4+IG1ha2VbMl06ICoqKiBObyBydWxlIHRvIG1ha2UgdGFyZ2V0ICcvdG1wL2tl
cm5lbC94ODZfNjQtcmFuZGNvbmZpZy1hMDEyLTIwMjEwNjIxL2NsYW5nLTEzLzU3YWZiNzgxZTZk
YTcxYjNlYjFjMzJiNzQ4NWFkZjU3ZGU3ODlhMWIvbGliL21vZHVsZXMvNS4xMy4wLXJjNisva2Vy
bmVsL2ZzL25mcy9uZnN2NC5rbycsIG5lZWRlZCBieSAnX19tb2RpbnN0Jy4KPiA+PiBtYWtlWzJd
OiAqKiogTm8gcnVsZSB0byBtYWtlIHRhcmdldCAnL3RtcC9rZXJuZWwveDg2XzY0LXJhbmRjb25m
aWctYTAxMi0yMDIxMDYyMS9jbGFuZy0xMy81N2FmYjc4MWU2ZGE3MWIzZWIxYzMyYjc0ODVhZGY1
N2RlNzg5YTFiL2xpYi9tb2R1bGVzLzUuMTMuMC1yYzYrL2tlcm5lbC9saWIvY3J5cHRvL2xpYmFy
YzQua28nLCBuZWVkZWQgYnkgJ19fbW9kaW5zdCcuCj4gPj4gbWFrZVsyXTogKioqIE5vIHJ1bGUg
dG8gbWFrZSB0YXJnZXQgJy90bXAva2VybmVsL3g4Nl82NC1yYW5kY29uZmlnLWEwMTItMjAyMTA2
MjEvY2xhbmctMTMvNTdhZmI3ODFlNmRhNzFiM2ViMWMzMmI3NDg1YWRmNTdkZTc4OWExYi9saWIv
bW9kdWxlcy81LjEzLjAtcmM2Ky9rZXJuZWwvbmV0L2NvcmUvZmFpbG92ZXIua28nLCBuZWVkZWQg
YnkgJ19fbW9kaW5zdCcuCj4gPj4gbWFrZVsyXTogKioqIE5vIHJ1bGUgdG8gbWFrZSB0YXJnZXQg
Jy90bXAva2VybmVsL3g4Nl82NC1yYW5kY29uZmlnLWEwMTItMjAyMTA2MjEvY2xhbmctMTMvNTdh
ZmI3ODFlNmRhNzFiM2ViMWMzMmI3NDg1YWRmNTdkZTc4OWExYi9saWIvbW9kdWxlcy81LjEzLjAt
cmM2Ky9rZXJuZWwvbmV0L2Ruc19yZXNvbHZlci9kbnNfcmVzb2x2ZXIua28nLCBuZWVkZWQgYnkg
J19fbW9kaW5zdCcuCj4gPj4gbWFrZVsyXTogKioqIE5vIHJ1bGUgdG8gbWFrZSB0YXJnZXQgJy90
bXAva2VybmVsL3g4Nl82NC1yYW5kY29uZmlnLWEwMTItMjAyMTA2MjEvY2xhbmctMTMvNTdhZmI3
ODFlNmRhNzFiM2ViMWMzMmI3NDg1YWRmNTdkZTc4OWExYi9saWIvbW9kdWxlcy81LjEzLjAtcmM2
Ky9rZXJuZWwvbmV0L3N1bnJwYy9hdXRoX2dzcy9hdXRoX3JwY2dzcy5rbycsIG5lZWRlZCBieSAn
X19tb2RpbnN0Jy4KPiAgICBtYWtlWzJdOiBUYXJnZXQgJ19fbW9kaW5zdCcgbm90IHJlbWFkZSBi
ZWNhdXNlIG9mIGVycm9ycy4KPiAgICBtYWtlWzFdOiAqKiogW01ha2VmaWxlOjE3NzM6IG1vZHVs
ZXNfaW5zdGFsbF0gRXJyb3IgMgo+ICAgIG1ha2U6ICoqKiBbTWFrZWZpbGU6MjE1OiBfX3N1Yi1t
YWtlXSBFcnJvciAyCj4gICAgbWFrZTogVGFyZ2V0ICdtb2R1bGVzX2luc3RhbGwnIG5vdCByZW1h
ZGUgYmVjYXVzZSBvZiBlcnJvcnMuCj4gCj4gLS0tCj4gMC1EQVkgQ0kgS2VybmVsIFRlc3QgU2Vy
dmljZSwgSW50ZWwgQ29ycG9yYXRpb24KPiBodHRwczovL2xpc3RzLjAxLm9yZy9oeXBlcmtpdHR5
L2xpc3Qva2J1aWxkLWFsbEBsaXN0cy4wMS5vcmcKCgo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4ga2J1aWxkLWFsbCBtYWlsaW5nIGxpc3QgLS0ga2J1
aWxkLWFsbEBsaXN0cy4wMS5vcmcKPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGti
dWlsZC1hbGwtbGVhdmVAbGlzdHMuMDEub3JnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
