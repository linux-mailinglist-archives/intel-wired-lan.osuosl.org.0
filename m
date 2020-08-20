Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE6624C50A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Aug 2020 20:04:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CABF6204E5;
	Thu, 20 Aug 2020 18:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C74t3WaGDjHr; Thu, 20 Aug 2020 18:04:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9AF912049F;
	Thu, 20 Aug 2020 18:04:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6551F1BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 18:04:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 60BD786880
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 18:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kU3QJFJjkBtd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Aug 2020 18:04:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5CD9886957
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 18:04:07 +0000 (UTC)
IronPort-SDR: Oc1kO3HhSYVOC6faZFFx8drL99a2iC6wsLCyW+HZpvjyLUL0HV2HcTNeGwodlXkEHLyVhGYZXQ
 XMWQJQKU96PQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="134902521"
X-IronPort-AV: E=Sophos;i="5.76,334,1592895600"; d="scan'208";a="134902521"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 11:04:06 -0700
IronPort-SDR: QBEEtp/ORGQ8hbu/QbvIr0FXCEYJg4qAdw/JeQ/dOkxn5UGZxWCnSA8VLdcoL5Zl8jh4tzjyTf
 onKXlkqDKWyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,334,1592895600"; d="scan'208";a="371671063"
Received: from mkorak-mobl.ger.corp.intel.com (HELO btopel-mobl.ger.intel.com)
 ([10.252.52.12])
 by orsmga001.jf.intel.com with ESMTP; 20 Aug 2020 11:04:04 -0700
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
References: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
 <CAJ+HfNi2B+2KYP9A7yCfFUhfUBd=sFPeuGbNZMjhNSdq3GEpMg@mail.gmail.com>
 <CAJ+HfNjybUeN9v6N-pnupi32088PL+ZXu8CKWGWmowOaH4nmOw@mail.gmail.com>
 <20200820165121.GA9731@ranger.igk.intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <4a78ace0-e84e-786f-127d-a3ab7d2a7c3f@intel.com>
Date: Thu, 20 Aug 2020 20:04:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200820165121.GA9731@ranger.igk.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 0/2] intel/xdp fixes for fliping rx
 buffer
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
Cc: Netdev <netdev@vger.kernel.org>, Maciej <maciej.machnikowski@intel.com>,
 Li RongQing <lirongqing@baidu.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOC0yMCAxODo1MSwgTWFjaWVqIEZpamFsa293c2tpIHdyb3RlOgo+IE9uIFRodSwg
QXVnIDIwLCAyMDIwIGF0IDA1OjEzOjE2UE0gKzAyMDAsIEJqw7ZybiBUw7ZwZWwgd3JvdGU6Cj4+
IE9uIFR1ZSwgMTggQXVnIDIwMjAgYXQgMTY6MDQsIEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVs
QGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4gT24gRnJpLCAxNyBKdWwgMjAyMCBhdCAwODoyNCwg
TGkgUm9uZ1FpbmcgPGxpcm9uZ3FpbmdAYmFpZHUuY29tPiB3cm90ZToKPj4+Pgo+Pj4+IFRoaXMg
Zml4ZXMgaWNlL2k0MGUvaXhnYmUvaXhnYmV2Zl9yeF9idWZmZXJfZmxpcCBpbgo+Pj4+IGNvcHkg
bW9kZSB4ZHAgdGhhdCBjYW4gbGVhZCB0byBkYXRhIGNvcnJ1cHRpb24uCj4+Pj4KPj4+PiBJIHNw
bGl0IHR3byBwYXRjaGVzLCBzaW5jZSBpNDBlL3hnYmUvaXhnYmV2ZiBzdXBwb3J0cyB4c2sKPj4+
PiByZWNlaXZpbmcgZnJvbSA0LjE4LCBwdXQgdGhlaXIgZml4ZXMgaW4gYSBwYXRjaAo+Pj4+Cj4+
Pgo+Pj4gTGksIHNvcnJ5IGZvciB0aGUgbG9vb25nIGxhdGVuY3kuIEkgdG9vayBhIGxvb29uZyB2
YWNhdGlvbi4gOi1QCj4+Pgo+Pj4gVGhhbmtzIGZvciB0YWtpbmcgYSBsb29rIGF0IHRoaXMsIGJ1
dCBJIGJlbGlldmUgdGhpcyBpcyBub3QgYSBidWcuCj4+Pgo+Pgo+PiBPaywgZHVnIGEgYml0IG1v
cmUgaW50byB0aGlzLiBJIGhhZCBhbiBvZmZsaXN0IGRpc2N1c3Npb24gd2l0aCBMaSwgYW5kCj4+
IHRoZXJlIGFyZSB0d28gcGxhY2VzIChBRkFJSykgd2hlcmUgTGkgZXhwZXJpZW5jZSBhIEJVRygp
IGluCj4+IHRjcF9jb2xsYXBzZSgpOgo+Pgo+PiAgICAgICAgICAgICAgQlVHX09OKG9mZnNldCA8
IDApOwo+PiBhbmQKPj4gICAgICAgICAgICAgICAgICBpZiAoc2tiX2NvcHlfYml0cyhza2IsIG9m
ZnNldCwgc2tiX3B1dChuc2tiLCBzaXplKSwgc2l6ZSkpCj4+ICAgICAgICAgICAgICAgICAgICAg
IEJVRygpOwo+Pgo+PiAoTGksIHBsZWFzZSBjb3JyZWN0IG1lIGlmIEknbSB3cm9uZy4pCj4+Cj4+
IEkgc3RpbGwgY2xhaW0gdGhhdCB0aGUgcGFnZS1mbGlwcGluZyBtZWNoYW5pc20gaXMgY29ycmVj
dCwgYnV0IEkgZm91bmQKPj4gc29tZSB3ZWlyZG5lc3MgaW4gdGhlIGJ1aWxkX3NrYigpIGNhbGwu
Cj4+Cj4+IEluIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMsIGJ1
aWxkX3NrYigpIGlzIGludm9rZWQgYXM6Cj4+ICAgICAgc2tiID0gYnVpbGRfc2tiKHhkcC0+ZGF0
YV9oYXJkX3N0YXJ0LCB0cnVlc2l6ZSk7Cj4+Cj4+IEZvciB0aGUgc2V0dXAgTGkgaGFzIHRydWVz
aXplIGlzIDIwNDggKGhhbGYgYSBwYWdlKSwgYnV0IHRoZQo+PiByeF9idWZfbGVuIGlzIDE1MzYu
IEluIHRoZSBkcml2ZXIgYSBwYWNrZXQgaXMgbGF5ZWQgb3V0IGFzOgo+Pgo+PiB8IHBhZGRpbmcg
MTkyIHwgcGFja2V0IGRhdGEgMTUzNiB8IHNrYiBzaGFyZWQgaW5mbyAzMjAgfAo+Pgo+PiBidWls
ZF9za2IoKSBhc3N1bWVzIHRoYXQgdGhlIHNlY29uZCBhcmd1bWVudCAoZnJhZ19zaXplKSBpcyBt
YXggcGFja2V0Cj4+IHNpemUgKyBTS0JfREFUQV9BTElHTihzaXplb2Yoc3RydWN0IHNrYl9zaGFy
ZWRfaW5mbykpLiBJbiBvdGhlciB3b3JkcywKPj4gZnJhZ19zaXplIHNob3VsZCBub3QgaW5jbHVk
ZSB0aGUgcGFkZGluZyAoMTkyIGFib3ZlKS4gSW4gYnVpbGRfc2tiKCksCj4gCj4gTm90IHN1cmUg
SSBhbSBidXlpbmcgdGhhdCByZWFzb25pbmcuIEl0IGFzc3VtZXMgdGhlIHBhZGRpbmcgKyBwYWNr
ZXRfZGF0YQo+IGFuZCB3ZSB1c2Ugc2tiX3Jlc2VydmUoKSB0byB0ZWxsIHRoZSBza2IgYWJvdXQg
dGhlIHBhZGRpbmcuCj4gCj4gX19idWlsZF9za2JfYXJvdW5kKCkgc3VidHJhY3RzIHNpemVvZihz
dHJ1Y3Qgc2tiX3NoYXJlZF9pbmZvKSBmcm9tIHNpemUKPiB0aGF0IHdlIGFyZSBwcm92aWRpbmcs
IHNvIG5vdyB3ZSBhcmUgd2l0aCBwYWRkaW5nICsgcGFja2V0X2RhdGEuCj4gVGhlbiBpdCBpcyB1
c2VkIHRvIGNhbGN1bGF0ZSB0aGUgc2tiLT5lbmQuCj4gCj4gQmFjayB0byBpNDBlX2J1aWxkX3Nr
YigpLCB3ZSB1c2UgdGhlIHNrYl9yZXNlcnZlKCkgdG8gYWR2YW5jZSB0aGUKPiBza2ItPmRhdGEg
YW5kIHNrYi0+dGFpbCBzbyB0aGF0IHRoZXkgcG9pbnQgdG8gcGFja2V0X2RhdGEuIEZpbmFsbHkK
PiBfX3NrYl9wdXQoKSB3aWxsIG1vdmUgdGhlIHNrYi0+dGFpbCB0byB0aGUgZW5kIG9mIHBhY2tl
dF9kYXRhLgo+IAo+IFdvdWxkbid0IHlvdXIgYXBwcm9hY2ggZGlzYWxsb3cgaGF2aW5nIHRoZSBo
ZWFkcm9vbSBhdCBhbGwgaW4gdGhlIGxpbmVhcgo+IHBhcnQgb2Ygc2tiPwo+CgpNZWEgY3VscGEu
CgpZb3UncmUgcGVyZmVjdGx5IHJpZ2h0LCBhbmQgSSdtIGFsbCB3cm9uZy4gVGhhbmtzIGZvciBz
b3J0aW5nIHRoYXQgb3V0LiAKeGRwLT5kYXRhX2hhcmRfc3RhcnQgbWVzc2VkIHVwIG15IG5ldXJv
bnMgKGlmIGFueSBvbmUgc2hvdWxkIGFzaykuCgoqY2xpbWJpbmcgYmFjayBpbnRvIHRoZSBjYXZl
KgoKClNvcnJ5IGZvciB0aGUgbWFpbCBub2lzZSwKQmrDtnJuCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
