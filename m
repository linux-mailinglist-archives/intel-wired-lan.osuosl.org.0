Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D08B1C0B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2019 13:16:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 69E08882AC;
	Fri, 13 Sep 2019 11:16:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0EZ-dYJEX38u; Fri, 13 Sep 2019 11:16:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0FC24882A4;
	Fri, 13 Sep 2019 11:16:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 99B2E1BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 11:16:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 923F2882A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 11:16:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U-nUhLvvaH+G for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Sep 2019 11:16:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 492B7882A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 11:16:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 04:16:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,500,1559545200"; d="scan'208";a="210317965"
Received: from sjuba-mobl.ger.corp.intel.com (HELO btopel-mobl.ger.intel.com)
 ([10.252.54.243])
 by fmsmga004.fm.intel.com with ESMTP; 13 Sep 2019 04:16:38 -0700
To: Ciara Loftus <ciara.loftus@intel.com>, netdev@vger.kernel.org,
 ast@kernel.org, daniel@iogearbox.net, magnus.karlsson@intel.com,
 jonathan.lemon@gmail.com
References: <20190913103948.32053-1-ciara.loftus@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <03e25d27-fe42-306d-880f-31b3d995afd3@intel.com>
Date: Fri, 13 Sep 2019 13:16:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190913103948.32053-1-ciara.loftus@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2 0/3] AF_XDP fixes for i40e,
 ixgbe and xdpsock
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
Cc: bruce.richardson@intel.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kevin.laatz@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAxOS0wOS0xMyAxMjozOSwgQ2lhcmEgTG9mdHVzIHdyb3RlOgo+IFRoaXMgcGF0Y2ggc2V0
IGNvbnRhaW5zIHNvbWUgZml4ZXMgZm9yIEFGX1hEUCB6ZXJvIGNvcHkgaW4gdGhlIGk0MGUgYW5k
Cj4gaXhnYmUgZHJpdmVycyBhcyB3ZWxsIGFzIGEgZml4IGZvciB0aGUgJ3hkcHNvY2snIHNhbXBs
ZSBhcHBsaWNhdGlvbiB3aGVuCj4gcnVubmluZyBpbiB1bmFsaWduZWQgbW9kZS4KPiAKPiBQYXRj
aGVzIDEgYW5kIDIgZml4IGEgcmVncmVzc2lvbiBmb3IgdGhlIGk0MGUgYW5kIGl4Z2JlIGRyaXZl
cnMgd2hpY2gKPiBjYXVzZWQgdGhlIHVtZW0gaGVhZHJvb20gdG8gYmUgYWRkZWQgdG8gdGhlIHhk
cCBoYW5kbGUgdHdpY2UsIHJlc3VsdGluZyBpbgo+IGFuIGluY29ycmVjdCB2YWx1ZSBiZWluZyBy
ZWNlaXZlZCBieSB0aGUgdXNlciBmb3IgdGhlIGNhc2Ugd2hlcmUgdGhlIHVtZW0KPiBoZWFkcm9v
bSBpcyBub24temVyby4KPiAKPiBQYXRjaCAzIGZpeGVzIGFuIGlzc3VlIHdpdGggdGhlIHhkcHNv
Y2sgc2FtcGxlIGFwcGxpY2F0aW9uIHdoZXJlYnkgdGhlCj4gc3RhcnQgb2YgdGhlIHR4IHBhY2tl
dCBkYXRhIChvZmZzZXQpIHdhcyBub3QgYmVpbmcgc2V0IGNvcnJlY3RseSB3aGVuIHRoZQo+IGFw
cGxpY2F0aW9uIHdhcyBiZWluZyBydW4gaW4gdW5hbGlnbmVkIG1vZGUuCj4gCj4gVGhpcyBwYXRj
aCBzZXQgaGFzIGJlZW4gYXBwbGllZCBhZ2FpbnN0IGNvbW1pdCBhMmMxMWIwMzQxNDIgKCJrY206
IHVzZQo+IEJQRl9QUk9HX1JVTiIpCj4gCj4gLS0tCj4gdjI6Cj4gLSBSZWFycmFuZ2VkIGxvY2Fs
IHZhcmlhYmxlIG9yZGVyIGluIGk0MGVfcnVuX3hkcF96YyBhbmQgaXhnYmVfcnVuX3hkcF96Ywo+
IHRvIGNvbXBseSB3aXRoIGNvZGluZyBzdGFuZGFyZHMuCj4KClRoYW5rcyBDaWFyYSEKCkFja2Vk
LWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+CgoKPiBDaWFyYSBMb2Z0
dXMgKDMpOgo+ICAgIGk0MGU6IGZpeCB4ZHAgaGFuZGxlIGNhbGN1bGF0aW9ucwo+ICAgIGl4Z2Jl
OiBmaXggeGRwIGhhbmRsZSBjYWxjdWxhdGlvbnMKPiAgICBzYW1wbGVzL2JwZjogZml4IHhkcHNv
Y2sgbDJmd2QgdHggZm9yIHVuYWxpZ25lZCBtb2RlCj4gCj4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMgICB8IDQgKystLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMgfCA0ICsrLS0KPiAgIHNhbXBsZXMvYnBmL3hkcHNv
Y2tfdXNlci5jICAgICAgICAgICAgICAgICAgIHwgMiArLQo+ICAgMyBmaWxlcyBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
