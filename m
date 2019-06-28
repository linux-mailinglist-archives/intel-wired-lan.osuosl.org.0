Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54145A168
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 18:51:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4586B8546F;
	Fri, 28 Jun 2019 16:51:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ItOr8TeDcVKZ; Fri, 28 Jun 2019 16:51:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ED742859B1;
	Fri, 28 Jun 2019 16:51:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6AFCE1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 16:51:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6709A8546F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 16:51:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uGXLhHHxl72q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 16:51:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C7A8382476
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 16:51:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 09:51:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; d="scan'208";a="361569713"
Received: from rploss-mobl1.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.49.216])
 by fmsmga006.fm.intel.com with ESMTP; 28 Jun 2019 09:51:39 -0700
To: "Laatz, Kevin" <kevin.laatz@intel.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
 <FA8389B9-F89C-4BFF-95EE-56F702BBCC6D@gmail.com>
 <ef7e9469-e7be-647b-8bb1-da29bc01fa2e@intel.com>
 <20190627142534.4f4b8995@cakuba.netronome.com>
 <f0ca817a-02b4-df22-d01b-7bc07171a4dc@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <f6fb0870-b5b4-9aba-bfb5-b4248a95da79@intel.com>
Date: Fri, 28 Jun 2019 18:51:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <f0ca817a-02b4-df22-d01b-7bc07171a4dc@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 00/11] XDP unaligned chunk placement
 support
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, ciara.loftus@intel.com,
 ast@kernel.org, intel-wired-lan@lists.osuosl.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, bruce.richardson@intel.com,
 bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAxOS0wNi0yOCAxODoxOSwgTGFhdHosIEtldmluIHdyb3RlOgo+IE9uIDI3LzA2LzIwMTkg
MjI6MjUsIEpha3ViIEtpY2luc2tpIHdyb3RlOgo+PiBPbiBUaHUsIDI3IEp1biAyMDE5IDEyOjE0
OjUwICswMTAwLCBMYWF0eiwgS2V2aW4gd3JvdGU6Cj4+PiBPbiB0aGUgYXBwbGljYXRpb24gc2lk
ZSAoeGRwc29jayksIHdlIGRvbid0IGhhdmUgdG8gd29ycnkgYWJvdXQgdGhlIHVzZXIKPj4+IGRl
ZmluZWQgaGVhZHJvb20sIHNpbmNlIGl0IGlzIDAsIHNvIHdlIG9ubHkgbmVlZCB0byBhY2NvdW50
IGZvciB0aGUKPj4+IFhEUF9QQUNLRVRfSEVBRFJPT00gd2hlbiBjb21wdXRpbmcgdGhlIG9yaWdp
bmFsIGFkZHJlc3MgKGluIHRoZSBkZWZhdWx0Cj4+PiBzY2VuYXJpbykuCj4+IFRoYXQgYXNzdW1l
cyBzcGVjaWZpYyBsYXlvdXQgZm9yIHRoZSBkYXRhIGluc2lkZSB0aGUgYnVmZmVyLsKgIFNvbWUg
TklDcwo+PiB3aWxsIHByZXBlbmQgaW5mb3JtYXRpb24gbGlrZSB0aW1lc3RhbXAgdG8gdGhlIHBh
Y2tldCwgbWVhbmluZyB0aGUKPj4gcGFja2V0IHdvdWxkIHN0YXJ0IGF0IG9mZnNldCBYRFBfUEFD
S0VUX0hFQURST09NICsgbWV0YWRhdGEgbGVuLi4KPiAKPiBZZXMsIGlmIE5JQ3MgcHJlcGVuZCBl
eHRyYSBkYXRhIHRvIHRoZSBwYWNrZXQgdGhhdCB3b3VsZCBiZSBhIHByb2JsZW0gZm9yCj4gdXNp
bmcgdGhpcyBmZWF0dXJlIGluIGlzb2xhdGlvbi4gSG93ZXZlciwgaWYgd2UgYWxzbyBhZGQgaW4g
c3VwcG9ydCBmb3IgCj4gaW4tb3JkZXIKPiBSWCBhbmQgVFggcmluZ3MsIHRoYXQgd291bGQgbm8g
bG9uZ2VyIGJlIGFuIGlzc3VlLiBIb3dldmVyLCBldmVuIGZvciBOSUNzCj4gd2hpY2ggZG8gcHJl
cGVuZCBkYXRhLCB0aGlzIHBhdGNoc2V0IHNob3VsZCBub3QgYnJlYWsgYW55dGhpbmcgdGhhdCBp
cyAKPiBjdXJyZW50bHkKPiB3b3JraW5nLgoKKExhdGUgb24gdGhlIGJhbGwuIEknbSBpbiB2YWNh
dGlvbiBtb2RlLikKCkluIHlvdXIgZXhhbXBsZSBKYWt1YiwgaG93IHdvdWxkIHRoaXMgbG9vayBp
biBYRFA/IFdvdWxkbid0IHRoZQp0aW1lc3RhbXAgYmUgcGFydCBvZiB0aGUgbWV0YWRhdGEgKHhk
cF9tZC5kYXRhX21ldGEpPyBJc24ndApkYXRhLWRhdGFfbWV0YSAoaWYgdmFsaWQpIDw9IFhEUF9Q
QUNLRVRfSEVBRFJPT00/IFRoYXQgd2FzIG15IGFzc3VtcHRpb24uCgpUaGVyZSB3ZXJlIHNvbWUg
ZGlzY3Vzc2lvbiBvbiBoYXZpbmcgbWV0YSBkYXRhIGxlbmd0aCBpbiB0aGUgc3RydWN0CnhkcF9k
ZXNjLCBiZWZvcmUgQUZfWERQIHdhcyBtZXJnZWQsIGJ1dCB0aGUgY29uY2x1c2lvbiB3YXMgdGhh
dCB0aGlzIHdhcwoqbm90KiBuZWVkZWQsIGJlY2F1c2UgQUZfWERQIGFuZCB0aGUgWERQIHByb2dy
YW0gaGFkIGFuIGltcGxpY2l0CmNvbnRyYWN0LiBJZiB5b3UncmUgcnVubmluZyBBRl9YRFAsIHlv
dSBhbHNvIGhhdmUgYW4gWERQIHByb2dyYW0gcnVubmluZwphbmQgeW91IGNhbiBkZXRlcm1pbmUg
dGhlIG1ldGEgZGF0YSBsZW5ndGggKGFuZCBhbHNvIGdldHRpbmcgYmFjayB0aGUKb3JpZ2luYWwg
YnVmZmVyKS4KClNvLCB0b2RheSBpbiBBRl9YRFAgaWYgWERQIG1ldGFkYXRhIGlzIGFkZGVkLCB0
aGUgdXNlcmxhbmQgYXBwbGljYXRpb24KY2FuIGxvb2sgaXQgdXAgYmVmb3JlIHRoZSB4ZHBfZGVz
Yy5hZGRyIChqdXN0IGxpa2UgcmVndWxhciBYRFApLCBhbmQgaG93CnRoZSBYRFAvQUZfWERQIGFw
cGxpY2F0aW9uIGRldGVybWluZXMgbGVuZ3RoL2xheW91dCBvZiB0aGUgbWV0YWRhdGEgaQpvdXQt
b2YtYmFuZC9ub3Qgc3BlY2lmaWVkLgoKVGhpcyBpcyBhIGJpdCBtZXNzeS9oYW5kd2F2eSBUQkgs
IHNvIG1heWJlIGFkZGluZyB0aGUgbGVuZ3RoIHRvIHRoZQpkZXNjcmlwdG9yICppcyogYSBnb29k
IGlkZWEgKGV4dGVuZGluZyB0aGUgb3B0aW9ucyBwYXJ0IG9mIHRoZQp4ZHBfZGVzYyk/IExlc3Mg
Y2xlYW4gdGhvdWdoLiBPVE9IIHRoZSBsYXlvdXQgb2YgdGhlIG1ldGEgZGF0YSBzdGlsbApuZWVk
IHRvIGJlIGRldGVybWluZWQuCgoKQmrDtnJuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
