Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 765016773E8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 02:54:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 933AD60BC8;
	Mon, 23 Jan 2023 01:54:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 933AD60BC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674438854;
	bh=SxA6+OqhbThoK//kAhTI+ZPCi3w0FhKgiBKWR9hSov4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=shEeOUOCzA6qJjRq5nEU7RhlgS0KLoLKwKhnUyeHezh2ILez/Bji2N7lPjbEtWZJg
	 IpeCIFavgkyBOeUiEuoizAG3ebpC2DDhrpDuv3NUJyFq9M33mnMTRzTc6T6NwcjX5g
	 CLO+JznMJ7AQ7skFeYQw8ONZhZdn2YDgIm4Z9CVIyU0Oj10pwlh5tcqK5Y9iORsroA
	 04TUrkF+U/P8YFU9FiLNoRrj8eCunqpjfHQd+GopLx+eJLxaPOB1MtUdJbYYGEimTq
	 pN3Y7EMnnqSdTCcZMkFck3Lhp5bFNCa67q4DQOpFGd2OQYF8GxCRmJLGmWnfQskN+x
	 R2TzszkVuLprg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7NSNmwznNdrI; Mon, 23 Jan 2023 01:54:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E39C60BA8;
	Mon, 23 Jan 2023 01:54:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E39C60BA8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 30F061BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 01:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C42A81E18
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 01:54:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C42A81E18
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id En8HA_KPkrUa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 01:54:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93AFD81DE6
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 93AFD81DE6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 01:54:06 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id v10so12895655edi.8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 17:54:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=l5z4Hd0Qs9SFsDBYXanxTnEoLsdmIZ6VAYEjeE+ksHI=;
 b=y6sVX4DAC21BuQYJp/s6v5KNhngkU1fVs6lu4d/s0azqhHoHQgCldzmxXs9vbAwtgd
 6thrpPOrHrnN3TjQ4Pxql3AmWcYsYmyWFFy4S9sNtPdI0QdpAaE/75siNL/Lu0TlwVMf
 1s551nycECTR28tP2sVhA7BJqn+gs7G2qKI22dV4YQr1JGOZsw3DPwd4qtXdtIn6/4ND
 2rPeUQehRm4AekChOAgnMYz4Cowb0yWqQW1L1hg8oXm0bzZgeZnIlWUqwf0+ZgqtnOHp
 NByEmu5oxMFxk0Ir330KNaw+L1RcJ8wo6SfN5CrA7nOvpVbQ4xofbUGC5stayg+CU43l
 Ivpw==
X-Gm-Message-State: AFqh2kqjmxVa+7cvH7QrwcxDQxNhbe8KXRXd2o/UqYxxtOohZrEXwUFy
 tWxtVzoERlKcC7vj+MIUmgiRC3n12nNJuqqeDa8=
X-Google-Smtp-Source: AMrXdXskOC8lBwF/BL0baqLazqE0xc0riXJdq8ydWpJRRmiXrhRFTGNGSbpZ+7vKrvzzNMoiSpYu0Wnukjswy3VTYmc=
X-Received: by 2002:a05:6402:28a4:b0:485:2bdf:ca28 with SMTP id
 eg36-20020a05640228a400b004852bdfca28mr3299131edb.251.1674438844563; Sun, 22
 Jan 2023 17:54:04 -0800 (PST)
MIME-Version: 1.0
References: <20230121085521.9566-1-kerneljasonxing@gmail.com>
 <1bb796f9-b2dd-1c96-831a-34585770d80d@molgen.mpg.de>
In-Reply-To: <1bb796f9-b2dd-1c96-831a-34585770d80d@molgen.mpg.de>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Mon, 23 Jan 2023 09:53:28 +0800
Message-ID: <CAL+tcoDyeG8oLspkrdjwJX3=ZmcDD7JY63s=F3cmzaEsXNOveA@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=l5z4Hd0Qs9SFsDBYXanxTnEoLsdmIZ6VAYEjeE+ksHI=;
 b=P5gYeWZzJ8Apxca/oufOTx2EM0Y6R+dRr06gyzXSYyx3MnrVBl1t2/Lw4IMiuifRN/
 YeneYV3iPCNnV49Fva/f21B5syoeuDJbm8JA27wI6a7miPEoR1gJwaRSLi3qIey5e2Df
 QgQIiTgEgzbJpqH3NIA9wSzLqTa5AtbIAUEksSp7I9tEbmKCRdN7baxc3d3ekZ4vXea4
 XWmi1cdz0S6VKn8t+o1d/xPTWC6GJgAae4jDzDQe9IYZV1MHcKn3Vu2id6swfjev4c4T
 YTapkFdOggFMS0wDPmVYpSjliz9CF2IP//VkZhR1CcVMTtFiAWeV4nWeucLicFRE2wfL
 E7+g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=P5gYeWZz
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: allow to increase MTU to
 some extent with XDP enalbed
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
Cc: john.fastabend@gmail.co, hawk@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, richardcochran@gmail.com, jesse.brandeburg@intel.com,
 ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBKYW4gMjMsIDIwMjMgYXQgNDoyMSBBTSBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xn
ZW4ubXBnLmRlPiB3cm90ZToKPgo+IERlYXIgSmFzb24sCj4KPgo+IFRoYW5rIHlvdSBmb3IgeW91
ciBwYXRjaC4KCkhlbGxvIFBhdWwsCgpUaGFua3MgZm9yIHRoZSByZXZpZXcuCgo+Cj4gQW0gMjEu
MDEuMjMgdW0gMDk6NTUgc2NocmllYiBKYXNvbiBYaW5nOgo+ID4gRnJvbTogSmFzb24gWGluZyA8
a2VybmVseGluZ0B0ZW5jZW50LmNvbT4KPgo+IFRoZXJlIGlzIGEgc21hbGwgdHlwbyBpbiB0aGUg
c3VtbWFyeTogZW5hKmJsKmVkCj4KClN1cmUgaXQgaXMuIFRoYXQncyBteSBmYXVsdC4KCj4gPiBJ
IGVuY291bnRlcmVkIG9uZSBjYXNlIHdoZXJlIEkgY2Fubm90IGluY3JlYXNlIHRoZSBNVFUgc2l6
ZSB3aXRoIFhEUAo+ID4gZW5hYmxlZCBpZiB0aGUgc2VydmVyIGlzIGVxdWlwcGVkIHdpdGggSVhH
QkUgY2FyZCwgd2hpY2ggaGFwcGVuZWQgb24KPiA+IHRob3VzYW5kcyBvZiBzZXJ2ZXJzLiBJIG5v
dGljZWQgaXQgd2FzIHByb2hpYml0ZWQgZnJvbSAyMDE3WzFdIGFuZAo+Cj4gVGhhdOKAmXMgaW5j
bHVkZWQgc2luY2UgTGludXggNC4xOS1yYzEuCj4KPiA+IGFkZGVkIHNpemUgY2hlY2tzWzJdIGlm
IGFsbG93ZWQgc29vbiBhZnRlciB0aGUgcHJldmlvdXMgcGF0Y2guCj4gPgo+ID4gSW50ZXJlc3Rp
bmcgcGFydCBnb2VzIGxpa2UgdGhpczoKPiA+IDEpIENoYW5naW5nIE1UVSBkaXJlY3RseSBmcm9t
IDE1MDAgKGRlZmF1bHQgdmFsdWUpIHRvIDIwMDAgZG9lc24ndAo+ID4gd29yayBiZWNhdXNlIHRo
ZSBkcml2ZXIgZmluZHMgb3V0IHRoYXQgJ25ld19mcmFtZV9zaXplID4KPiA+IGl4Z2JlX3J4X2J1
ZnN6KHJpbmcpJyBpbiBpeGdiZV9jaGFuZ2VfbXR1KCkgZnVuY3Rpb24uCj4gPiAyKSBIb3dldmVy
LCBpZiB3ZSBjaGFuZ2UgTVRVIHRvIDE1MDEgdGhlbiBjaGFuZ2UgZnJvbSAxNTAxIHRvIDIwMDAs
IGl0Cj4gPiBkb2VzIHdvcmssIGJlY2F1c2UgdGhlIGRyaXZlciBzZXRzIF9fSVhHQkVfUlhfM0tf
QlVGRkVSIHdoZW4gTVRVIHNpemUKPiA+IGlzIGNvbnZlcnRlZCB0byAxNTAxLCB3aGljaCBsYXRl
ciBzaXplIGNoZWNrIHBvbGljeSBhbGxvd3MuCj4gPgo+ID4gVGhlIGRlZmF1bHQgTVRVIHZhbHVl
IGZvciBtb3N0IHNlcnZlcnMgaXMgMTUwMCB3aGljaCBjYW5ub3QgYmUgYWRqdXN0ZWQKPiA+IGRp
cmVjdGx5IHRvIHRoZSB2YWx1ZSBsYXJnZXIgdGhhbiBJWEdCRV9NQVhfMktfRlJBTUVfQlVJTERf
U0tCICgxNTM0IG9yCj4gPiAxNTM2KSBpZiBpdCBsb2FkcyBYRFAuCj4gPgo+ID4gQWZ0ZXIgSSBk
byBhIHF1aWNrIHN0dWR5IG9uIHRoZSBtYW5uZXIgb2YgaTQwRSBkcml2ZXIgYWxsb3dpbmcgdHdv
IGtpbmRzCj4gPiBvZiBidWZmZXIgc2l6ZSAob25lIGlzIDIwNDggd2hpbGUgYW5vdGhlciBpcyAz
MDcyKSB0byBzdXBwb3J0IFhEUCBtb2RlIGluCj4gPiBpNDBlX21heF94ZHBfZnJhbWVfc2l6ZSgp
LCBJIGJlbGlldmUgdGhlIGRlZmF1bHQgTVRVIHNpemUgaXMgcG9zc2libHkgbm90Cj4gPiBzYXRp
c2ZpZWQgaW4gWERQIG1vZGUgd2hlbiBJWEdCRSBkcml2ZXIgaXMgaW4gdXNlLCB3ZSBzb21ldGlt
ZXMgbmVlZCB0bwo+ID4gaW5zZXJ0IGEgbmV3IGhlYWRlciwgc2F5LCB2eGxhbiBoZWFkZXIuIFNv
IHNldHRpbmcgdGhlIDNLLWJ1ZmZlciBmbGFnCj4gPiBjb3VsZCBzb2x2ZSB0aGUgaXNzdWUuCj4K
PiBXaGF0IGNhcmQgZGlkIHlvdSB0ZXN0IHdpdGggZXhhY3RseT8KPgoKSXQgaXMgdGhlIElYR0JF
IGRyaXZlciB0aGF0IGhhcyBzdWNoIGFuIGlzc3VlLiAgVGhlIEk0MEUgZHJpdmVyIEkKbWVudGlv
bmVkIGhlcmUgaXMgb25seSBmb3IgY29udHJhc3QuIEl0J3Mgbm90IHRoYXQgcHJvcGVyIGZyb20g
bXkKcG9pbnQgb2YgdmlldyBpZiB0aGUgSVhHQkUgZHJpdmVyIGNhbm5vdCBkaXJlY3RseSBhZGp1
c3QgdG8gMjAwMC4gVGh1cwpJIHdvdWxkIGxpa2UgbW9yZSByZXZpZXdzIGFuZCBzdWdnZXN0aW9u
cy4KClRoYW5rcywKSmFzb24KCj4gPiBbMV0gY29tbWl0IDM4YjdlN2Y4YWU4MiAoIml4Z2JlOiBE
byBub3QgYWxsb3cgTFJPIG9yIE1UVSBjaGFuZ2Ugd2l0aCBYRFAiKQo+ID4gWzJdIGNvbW1pdCBm
YWJmMWJjZTEwM2EgKCJpeGdiZTogUHJldmVudCB1bnN1cHBvcnRlZCBjb25maWd1cmF0aW9ucyB3
aXRoCj4gPiBYRFAiKQo+Cj4gSeKAmWQgc2F5IHRvIG5vdCBicmVhayB0aGUgbGluZSBpbiByZWZl
cmVuY2VzLgo+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBYaW5nIDxrZXJuZWx4aW5nQHRlbmNl
bnQuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4
Z2JlX21haW4uYyB8IDMgKysrCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmVfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5j
Cj4gPiBpbmRleCBhYjgzNzBjNDEzZjMuLmRjMDE2NTgyZjkxZSAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYwo+ID4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jCj4gPiBAQCAtNDMxMyw2
ICs0MzEzLDkgQEAgc3RhdGljIHZvaWQgaXhnYmVfc2V0X3J4X2J1ZmZlcl9sZW4oc3RydWN0IGl4
Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIpCj4gPiAgICAgICAgICAgICAgIGlmIChJWEdCRV8yS19UT09f
U01BTExfV0lUSF9QQURESU5HIHx8Cj4gPiAgICAgICAgICAgICAgICAgICAobWF4X2ZyYW1lID4g
KEVUSF9GUkFNRV9MRU4gKyBFVEhfRkNTX0xFTikpKQo+ID4gICAgICAgICAgICAgICAgICAgICAg
IHNldF9iaXQoX19JWEdCRV9SWF8zS19CVUZGRVIsICZyeF9yaW5nLT5zdGF0ZSk7Cj4gPiArCj4g
PiArICAgICAgICAgICAgIGlmIChpeGdiZV9lbmFibGVkX3hkcF9hZGFwdGVyKGFkYXB0ZXIpKQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgIHNldF9iaXQoX19JWEdCRV9SWF8zS19CVUZGRVIsICZy
eF9yaW5nLT5zdGF0ZSk7Cj4gPiAgICNlbmRpZgo+ID4gICAgICAgfQo+ID4gICB9Cj4KPgo+IEtp
bmQgcmVnYXJkcywKPgo+IFBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
