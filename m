Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC252A9D95
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Nov 2020 20:09:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 387CC854CC;
	Fri,  6 Nov 2020 19:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id laL2lo2ml7Hn; Fri,  6 Nov 2020 19:09:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A63285BEE;
	Fri,  6 Nov 2020 19:09:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2729C1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Nov 2020 19:09:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F34D72E11C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Nov 2020 19:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 15Dmh3SpPUV0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Nov 2020 19:09:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 0667B2E0E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Nov 2020 19:09:54 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id f38so1682924pgm.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Nov 2020 11:09:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zWilfhNuzCYQXGWyPu144qq5XXA5zk2vBoBbppBQ1Hk=;
 b=ZoT11CJgpo+UyUVuHfpRFOp+yu6hHMe/Q86jXOsBh5ut06sHVsVeUh50wTZ4eR0hJd
 68bqiTsrTsmeOyOanfB/xz7aOQtiJnPKN2JxcC6nsyDbw+xtgkePfOb9X3Md1lwHByDP
 KdKZnQKwLwDXjDX6dBXGoOOVUZzYTpmy4u7B2kYaqXX6GoQv3m57vjF42J6SI3dv0MsB
 YictuuqbYIEBtOC1E0j3iuRVfn2HqYIMec/nLHXSh3wWmchquge5CLe94/2ItyXkR+N9
 XrAXjxsTskEYBIH9XpdSJP0YPPvPCH+G68QLM4mMZM8x+NukGRgRF9nyvbrr4ZMd0L3J
 0g1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zWilfhNuzCYQXGWyPu144qq5XXA5zk2vBoBbppBQ1Hk=;
 b=aPPXmogMSAungFfWoITcXeEXNB1IDvr7ov9njSOphrG1zbUV92ZSNFsJo0emzhjVrD
 22ry/cymwm4+nTFLyti6wtp0H+c1puoRD0t1MqRvV2ABlit9kQtd+Bk1+6zZwKZFp2kF
 8iAgkFt4/mdys5JxTIauT8XkU7z5JMpKHfpx9PRIHqQfgGcpMBgmtnjRYfB2vdF4wC9I
 +l/08fhSjd3WqXdZFPQmeHbKe5lMQcEE8ACdit04YME0g4tUtpvm8Fvqut4y9bFwcBLb
 x3HaeMBY8qMAhYRKkV7KzCTuFpsOMUA/sg5NvHBctdvggiOfhzBurYxQ3NAGQuvlLH+z
 IoGQ==
X-Gm-Message-State: AOAM532cIhrdGEVrFcft8Ft30DIkPvp1qY6p8OUpoZk/es0v6yko32AX
 yuSTlzkgdjNsTz9ZiKH6xky5tndLQmjv7Bdp6r0=
X-Google-Smtp-Source: ABdhPJzvGct3A0nGGZ0oqUYkla1tYZiCemnARlLChRn5bl1E88r6pOtKFfQ8GbPe+3PNoHDMkWbzMrBd+gdxQJNtQOQ=
X-Received: by 2002:a17:90a:e014:: with SMTP id
 u20mr1067222pjy.117.1604689793615; 
 Fri, 06 Nov 2020 11:09:53 -0800 (PST)
MIME-Version: 1.0
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
 <1604498942-24274-2-git-send-email-magnus.karlsson@gmail.com>
 <20201104153320.66cecba8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAJ8uoz3-tjXekU=kR+HfMhGBcHtAFnKGq1ZvpFq99T_S-mknPg@mail.gmail.com>
 <20201105074511.6935e8b7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201105074511.6935e8b7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Fri, 6 Nov 2020 20:09:42 +0100
Message-ID: <CAJ8uoz1nyv-_X5+z-nwyDOc628uYwmUVJCLkXJpsHgFK_QV+wQ@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/6] i40e: introduce lazy Tx
 completions for AF_XDP zero-copy
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBOb3YgNSwgMjAyMCBhdCA0OjQ1IFBNIEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCA1IE5vdiAyMDIwIDE1OjE3OjUwICswMTAwIE1hZ251
cyBLYXJsc3NvbiB3cm90ZToKPiA+ID4gSSBmZWVsIGxpa2UgdGhpcyBuZWVkcyBhIGJpZyBmYXQg
d2FybmluZyBzb21ld2hlcmUuCj4gPiA+Cj4gPiA+IEl0J3MgcGVyZmVjdGx5IGZpbmUgdG8gbmV2
ZXIgY29tcGxldGUgVENQIHBhY2tldHMsIGJ1dCBBRl9YRFAgY291bGQgYmUKPiA+ID4gdXNlZCB0
byBpbXBsZW1lbnQgcHJvdG9jb2xzIGluIHVzZXIgc3BhY2UuIFdoYXQgaWYgc29tZW9uZSB3YW50
cyB0bwo+ID4gPiBpbXBsZW1lbnQgc29tZXRoaW5nIGxpa2UgVFNRPwo+ID4KPiA+IEkgbWlnaHQg
bWlzdW5kZXJzdGFuZCB5b3UsIGJ1dCB3aXRoIFRTUSBoZXJlIChmb3Igc29tZXRoaW5nIHRoYXQK
PiA+IGJ5cGFzc2VzIHFkaXNrIGFuZCBhbnkgYnVmZmVyaW5nIGFuZCBqdXN0IGdvZXMgc3RyYWln
aHQgdG8gdGhlIGRyaXZlcikKPiA+IHlvdSBtZWFuIHRoZSBhYmlsaXR5IHRvIGhhdmUganVzdCBh
IGZldyBidWZmZXJzIG91dHN0YW5kaW5nIGFuZAo+ID4gY29udGludW91c2x5IHJldXNlIHRoZXNl
PyBJZiBzbywgdGhhdCBpcyBsaWtlbHkgYmVzdCBhY2hpZXZlZCBieQo+ID4gc2V0dGluZyBhIGxv
dyBUeCBxdWV1ZSBzaXplIG9uIHRoZSBOSUMuIE5vdGUgdGhhdCBldmVuIHdpdGhvdXQgdGhpcwo+
ID4gcGF0Y2gsIGNvbXBsZXRpb25zIGNvdWxkIGJlIGRlbGF5ZWQuIFRob3VnaCB0aGlzIHBhdGNo
IG1ha2VzIHRoYXQgdGhlCj4gPiBub3JtYWwgY2FzZS4gSW4gYW55IHdheSwgSSB0aGluayB0aGlz
IGNhbGxzIGZvciBzb21lIGltcHJvdmVkCj4gPiBkb2N1bWVudGF0aW9uLgo+Cj4gVFNRIHRyaWVz
IHRvIGxpbWl0IHRoZSBhbW91bnQgb2YgZGF0YSB0aGUgVENQIHN0YWNrIHF1ZXVlcyBpbnRvIFRD
L3NjaGVkCj4gYW5kIGRyaXZlcnMuIFNheSAxTUIgfiAxNiBHU08gZnJhbWVzLiBJdCB3aWxsIG5v
dCBxdWV1ZSBtb3JlIGRhdGEgdW50aWwKPiBzb21lIG9mIHRoZSB0cmFuc2ZlciBpcyByZXBvcnRl
ZCBhcyBjb21wbGV0ZWQuCgpUaGFua3MuIEdvdCBpdC4gVGhlcmUgaXMgb25lIG1vcmUgdXNlIGNh
c2UgSSBjYW4gdGhpbmsgb2YgZm9yIHF1aWNrCmNvbXBsZXRpb25zIG9mIFR4IGJ1ZmZlcnMgYW5k
IHRoYXQgaXMgaWYgeW91IGhhdmUgbWV0YWRhdGEgYXNzb2NpYXRlZAp3aXRoIHRoZSBjb21wbGV0
aW9uLCBmb3IgZXhhbXBsZSBhIFR4IHRpbWUgc3RhbXAuIE5vdCB0aGF0IHRoaXMKY2FwYWJpbGl0
eSBleGlzdHMgdG9kYXksIGJ1dCBob3BlZnVsbHkgaXQgd2lsbCBnZXQgYWRkZWQgYXQgc29tZQpw
b2ludC4KCkFueXdheSBhZnRlciBzb21lIG1vcmUgdGhpbmtpbmcsIEkgd291bGQgbGlrZSB0byBy
ZW1vdmUgdGhpcyBwYXRjaApmcm9tIHRoZSBwYXRjaCBzZXQgYW5kIHB1dCBpdCBvbiB0aGUgc2hl
bGYgZm9yIGEgd2hpbGUuIFRoZSByZWFzb24KYmVoaW5kIHRoaXMgaXMgdGhhdCBpZiB3ZSBjYW4g
Z2V0IGEgZ29vZCBidXN5IHBvbGwgc29sdXRpb24gZm9yIEFGX1hEUApzb2NrZXRzLCB0aGVuIHdl
IGRvIG5vdCBuZWVkIHRoaXMgcGF0Y2guIFdpdGggYnVzeS1wb2xsIHRoZSBjaG9pY2Ugb2YKd2hl
biB0byBjb21wbGV0ZSBUeCBidWZmZXJzIHdvdWxkIGJlIGxlZnQgdG8gdGhlIGFwcGxpY2F0aW9u
IGluIGEgbmljZQp3YXkuIElmIHRoZSBhcHBsaWNhdGlvbiB3b3VsZCBsaWtlIHRvIHF1aWNrbHkg
Z2V0IGJ1ZmZlcnMgY29tcGxldGVkCihhdCB0aGUgY29zdCBvZiBzb21lIHBlcmZvcm1hbmNlKSBp
dCB3b3VsZCBjYWxsIHNlbmR0bygpIChvciBmcmllbmRzKQpzb29uIGFmdGVyIGl0IHB1dCB0aGUg
cGFja2V0IG9uIHRoZSBUeCByaW5nLiBJZiBtYXggdGhyb3VnaHB1dCBpcwpkZXNpcmVkIHdpdGgg
bm8gcmVnYXJkIHRvIHdoZW4gYSBidWZmZXIgaXMgcmV0dXJuZWQsIHRoZW4gc2VuZHRvKCkKd291
bGQgYmUgY2FsbGVkIG9ubHkgYWZ0ZXIgYSBsYXJnZSBiYXRjaCBvZiBwYWNrZXRzIGhhdmUgYmVl
biBwdXQgb24KdGhlIFR4IHJpbmcuIE5vIG5lZWQgZm9yIGFueSB0aHJlc2hvbGQgb3IgbmV3IGtu
b2IsIGluIG90aGVyIHdvcmRzLAptdWNoIG5pY2VyLiBTbyBsZXQgdXMgd2FpdCBmb3IgQmrDtnJu
J3MgYnVzeSBwb2xsIHBhdGNoZXMgYW5kIHNlZSB3aGVyZQppdCBsZWFkcy4gUGxlYXNlIHByb3Rl
c3QgaWYgeW91IGRvIG5vdCBhZ3JlZS4gT3RoZXJ3aXNlIEkgd2lsbCBzdWJtaXQKYSB2MiB3aXRo
b3V0IHRoaXMgcGF0Y2ggYW5kIHdpdGggTWFjaWVqJ3MgcHJvcG9zZWQgc2ltcGxpZmljYXRpb24u
Cgo+IElJVUMgeW91J3JlIGFsbG93aW5nIHVwIHRvIDY0IGRlc2NyaXB0b3JzIHRvIGxpbmdlciB3
aXRob3V0IHJlcG9ydGluZwo+IGJhY2sgdGhhdCB0aGUgdHJhbnNmZXIgaXMgZG9uZS4gVGhhdCBt
ZWFucyB0aGF0IHVzZXIgc3BhY2UgaW1wbGVtZW50aW5nCj4gYSBzY2hlbWUgc2ltaWxhciB0byBU
U1EgbWF5IHNlZSBpdHMgdHJhbnNmZXJzIHN0YWxsZWQuCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
