Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C524C7AB8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 21:43:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 930B6405F5;
	Mon, 28 Feb 2022 20:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kvaxnlKG4Aki; Mon, 28 Feb 2022 20:43:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16E9A403A5;
	Mon, 28 Feb 2022 20:43:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EEDB51BF255
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 20:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DAE8481D4F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 20:43:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=hansenpartnership.com
 header.b="ujxiIgy0"; dkim=pass (1024-bit key)
 header.d=hansenpartnership.com header.b="ujxiIgy0"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZvaOyXVuFmvk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 20:43:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [IPv6:2607:fcd0:100:8a00::2])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 44A7181D3A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 20:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1646080979;
 bh=syYpb/xpUEM74XaWkn+xK6Z1vfQJZQo/NwVp9EVw5rs=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=ujxiIgy0T+0bXa5l/GTOdjcngh6b85JmDA0WyHri0Bbh2a93S9iJ0SxWyDfl/MyPo
 LfSkwtJLqYe+MRa0ZrGntCtSGoW1hjohSGvPcqjksKBYaUrg8Aw3UwyQBazEu7CyPQ
 sHqUpBIAmzvzOB+1XNyd+aN4TkXOB/egoLerum4w=
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 4748C1280EAE;
 Mon, 28 Feb 2022 15:42:59 -0500 (EST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id i-njNjm3Pi4q; Mon, 28 Feb 2022 15:42:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1646080979;
 bh=syYpb/xpUEM74XaWkn+xK6Z1vfQJZQo/NwVp9EVw5rs=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=ujxiIgy0T+0bXa5l/GTOdjcngh6b85JmDA0WyHri0Bbh2a93S9iJ0SxWyDfl/MyPo
 LfSkwtJLqYe+MRa0ZrGntCtSGoW1hjohSGvPcqjksKBYaUrg8Aw3UwyQBazEu7CyPQ
 sHqUpBIAmzvzOB+1XNyd+aN4TkXOB/egoLerum4w=
Received: from jarvis.int.hansenpartnership.com (unknown
 [IPv6:2601:5c4:4300:c551::527])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id DDA6D12806A6;
 Mon, 28 Feb 2022 15:42:54 -0500 (EST)
Message-ID: <b2d20961dbb7533f380827a7fcc313ff849875c1.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Linus
 Torvalds <torvalds@linux-foundation.org>
Date: Mon, 28 Feb 2022 15:42:53 -0500
In-Reply-To: <282f0f8d-f491-26fc-6ae0-604b367a5a1a@amd.com>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
 <282f0f8d-f491-26fc-6ae0-604b367a5a1a@amd.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 2/6] treewide: remove using list
 iterator after loop body as a ptr
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 alsa-devel@alsa-project.org, KVM list <kvm@vger.kernel.org>,
 linux-iio@vger.kernel.org, nouveau@lists.freedesktop.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, "Bos, H.J." <h.j.bos@vu.nl>,
 linux1394-devel@lists.sourceforge.net, drbd-dev@lists.linbit.com,
 linux-arch <linux-arch@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-aspeed@lists.ozlabs.org, linux-scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, linux-staging@lists.linux.dev,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 intel-wired-lan@lists.osuosl.org, kgdb-bugreport@lists.sourceforge.net,
 bcm-kernel-feedback-list@broadcom.com,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergman <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>, dma <dmaengine@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>, v9fs-developer@lists.sourceforge.net,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-sgx@vger.kernel.org,
 linux-block <linux-block@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 linux-usb@vger.kernel.org, samba-technical@lists.samba.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux F2FS Dev Mailing List <linux-f2fs-devel@lists.sourceforge.net>,
 tipc-discussion@lists.sourceforge.net,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDIyLTAyLTI4IGF0IDIxOjA3ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Ogo+IEFtIDI4LjAyLjIyIHVtIDIwOjU2IHNjaHJpZWIgTGludXMgVG9ydmFsZHM6Cj4gPiBPbiBN
b24sIEZlYiAyOCwgMjAyMiBhdCA0OjE5IEFNIENocmlzdGlhbiBLw7ZuaWcKPiA+IDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+ID4gPiBJIGRvbid0IHRoaW5rIHRoYXQgdXNpbmcg
dGhlIGV4dHJhIHZhcmlhYmxlIG1ha2VzIHRoZSBjb2RlIGluIGFueQo+ID4gPiB3YXkKPiA+ID4g
bW9yZSByZWxpYWJsZSBvciBlYXNpZXIgdG8gcmVhZC4KPiA+IFNvIEkgdGhpbmsgdGhlIG5leHQg
c3RlcCBpcyB0byBkbyB0aGUgYXR0YWNoZWQgcGF0Y2ggKHdoaWNoCj4gPiByZXF1aXJlcwo+ID4g
dGhhdCAiLXN0ZD1nbnUxMSIgdGhhdCB3YXMgZGlzY3Vzc2VkIGluIHRoZSBvcmlnaW5hbCB0aHJl
YWQpLgo+ID4gCj4gPiBUaGF0IHdpbGwgZ3VhcmFudGVlIHRoYXQgdGhlICdwb3MnIHBhcmFtZXRl
ciBvZgo+ID4gbGlzdF9mb3JfZWFjaF9lbnRyeSgpCj4gPiBpcyBvbmx5IHVwZGF0ZWQgSU5TSURF
IHRoZSBmb3JfZWFjaF9saXN0X2VudHJ5KCkgbG9vcCwgYW5kIGNhbgo+ID4gbmV2ZXIKPiA+IHBv
aW50IHRvIHRoZSAod3JvbmdseSB0eXBlZCkgaGVhZCBlbnRyeS4KPiA+IAo+ID4gQW5kIEkgd291
bGQgYWN0dWFsbHkgaG9wZSB0aGF0IGl0IHNob3VsZCBhY3R1YWxseSBjYXVzZSBjb21waWxlcgo+
ID4gd2FybmluZ3MgYWJvdXQgcG9zc2libHkgdW5pbml0aWFsaXplZCB2YXJpYWJsZXMgaWYgcGVv
cGxlIHRoZW4gdXNlCj4gPiB0aGUKPiA+ICdwb3MnIHBvaW50ZXIgb3V0c2lkZSB0aGUgbG9vcC4g
RXhjZXB0Cj4gPiAKPiA+ICAgKGEpIHRoYXQgY29kZSBpbiBzZ3gvZW5jbC5jIGN1cnJlbnRseSBp
bml0aWFsaXplcyAndG1wJyB0byBOVUxMCj4gPiBmb3IKPiA+IGluZXhwbGljYWJsZSByZWFzb25z
IC0gcG9zc2libHkgYmVjYXVzZSBpdCBhbHJlYWR5IGV4cGVjdGVkIHRoaXMKPiA+IGJlaGF2aW9y
Cj4gPiAKPiA+ICAgKGIpIHdoZW4gSSByZW1vdmUgdGhhdCBOVUxMIGluaXRpYWxpemVyLCBJIHN0
aWxsIGRvbid0IGdldCBhCj4gPiB3YXJuaW5nLAo+ID4gYmVjYXVzZSB3ZSd2ZSBkaXNhYmxlZCAt
V25vLW1heWJlLXVuaW5pdGlhbGl6ZWQgc2luY2UgaXQgcmVzdWx0cyBpbgo+ID4gc28KPiA+IG1h
bnkgZmFsc2UgcG9zaXRpdmVzLgo+ID4gCj4gPiBPaCB3ZWxsLgo+ID4gCj4gPiBBbnl3YXksIGdp
dmUgdGhpcyBwYXRjaCBhIGxvb2ssIGFuZCBhdCBsZWFzdCBpZiBpdCdzIGV4cGFuZGVkIHRvIGRv
Cj4gPiAiKHBvcykgPSBOVUxMIiBpbiB0aGUgZW50cnkgc3RhdGVtZW50IGZvciB0aGUgZm9yLWxv
b3AsIGl0IHdpbGwKPiA+IGF2b2lkIHRoZSBIRUFEIHR5cGUgY29uZnVzaW9uIHRoYXQgSmFrb2Ig
aXMgd29ya2luZyBvbi4gQW5kIEkgdGhpbmsKPiA+IGluIGEgY2xlYW5lciB3YXkgdGhhbiB0aGUg
aG9ycmlkIGdhbWVzIGhlIHBsYXlzLgo+ID4gCj4gPiAoQnV0IGl0IHdvbid0IGF2b2lkIHBvc3Np
YmxlIENQVSBzcGVjdWxhdGlvbiBvZiBzdWNoIHR5cGUKPiA+IGNvbmZ1c2lvbi4gVGhhdCwgaW4g
bXkgb3BpbmlvbiwgaXMgYSBjb21wbGV0ZWx5IGRpZmZlcmVudCBpc3N1ZSkKPiAKPiBZZXMsIGNv
bXBsZXRlbHkgYWdyZWUuCj4gCj4gPiBJIGRvIHdpc2ggd2UgY291bGQgYWN0dWFsbHkgcG9pc29u
IHRoZSAncG9zJyB2YWx1ZSBhZnRlciB0aGUgbG9vcAo+ID4gc29tZWhvdyAtIGJ1dCBjbGVhcmx5
IHRoZSAibWlnaHQgYmUgdW5pbml0aWFsaXplZCIgSSB3YXMgaG9waW5nIGZvcgo+ID4gaXNuJ3Qg
dGhlIHdheSB0byBkbyBpdC4KPiA+IAo+ID4gQW55Ym9keSBoYXZlIGFueSBpZGVhcz8KPiAKPiBJ
IHRoaW5rIHdlIHNob3VsZCBsb29rIGF0IHRoZSB1c2UgY2FzZXMgd2h5IGNvZGUgaXMgdG91Y2hp
bmcgKHBvcykKPiBhZnRlciB0aGUgbG9vcC4KPiAKPiBKdXN0IGZyb20gc2tpbW1pbmcgb3ZlciB0
aGUgcGF0Y2hlcyB0byBjaGFuZ2UgdGhpcyBhbmQgZXhwZXJpZW5jZQo+IHdpdGggdGhlIGRyaXZl
cnMvc3Vic3lzdGVtcyBJIGhlbHAgdG8gbWFpbnRhaW4gSSB0aGluayB0aGUgcHJpbWFyeQo+IHBh
dHRlcm4gbG9va3Mgc29tZXRoaW5nIGxpa2UgdGhpczoKPiAKPiBsaXN0X2Zvcl9lYWNoX2VudHJ5
KGVudHJ5LCBoZWFkLCBtZW1iZXIpIHsKPiAgICAgIGlmIChzb21lX2NvbmRpdGlvbl9jaGVja2lu
ZyhlbnRyeSkpCj4gICAgICAgICAgYnJlYWs7Cj4gfQo+IGRvX3NvbWV0aGluZ193aXRoKGVudHJ5
KTsKCgpBY3R1YWxseSwgd2UgdXN1YWxseSBoYXZlIGEgY2hlY2sgdG8gc2VlIGlmIHRoZSBsb29w
IGZvdW5kIGFueXRoaW5nLApidXQgaW4gdGhhdCBjYXNlIGl0IHNob3VsZCBzb21ldGhpbmcgbGlr
ZQoKaWYgKGxpc3RfZW50cnlfaXNfaGVhZChlbnRyeSwgaGVhZCwgbWVtYmVyKSkgewogICAgcmV0
dXJuIHdpdGggZXJyb3I7Cn0KZG9fc29tZXRoaW5fd2l0aChlbnRyeSk7CgpTdWZmaWNlPyAgVGhl
IGxpc3RfZW50cnlfaXNfaGVhZCgpIG1hY3JvIGlzIGRlc2lnbmVkIHRvIGNvcGUgd2l0aCB0aGUK
Ym9ndXMgZW50cnkgb24gaGVhZCBwcm9ibGVtLgoKSmFtZXMKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
