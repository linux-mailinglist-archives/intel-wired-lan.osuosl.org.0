Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF17C4C7CC7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 23:05:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B6298247F;
	Mon, 28 Feb 2022 22:05:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7nz13sEUZMqz; Mon, 28 Feb 2022 22:05:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F38182457;
	Mon, 28 Feb 2022 22:05:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 858761BF304
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 22:05:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71598410C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 22:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h1jHH_Clz8ew for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 22:05:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A2709410C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 22:05:31 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id hw13so27607467ejc.9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 14:05:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=rjAgW0TZYa01aB+RWuD5jL6/P65QVmPGzGS1fypwqkM=;
 b=SsE2iptdX/xTNU84zbtZf+FZ8hKTkJX9H9ZM578+fdgJrDU7+0yGKs3Y1+Ec8zM22z
 4L/SCSccM9eH+aBbsU9p5ll5VTrDlXvOt1QFHQZ0QoX++s1RFseEQQ8VJGBWAvwFCFIq
 jeFzH1SGTYgHS7irPmR7cmG6wYjaX3+E6LxhLklpw86+z7E18Zuelcsa1QvD5X9AuKj5
 NYlhLrqxXUYjh+QgOiXwDeMKoQqdSp4BR7hulFUTvSZMfnkNflEuO+lrt30n2JUf7UIn
 5TdA8KwzIEgmQjPXnxPtLxIzLgpwPLiA+LehnjNWRY5HBdt4E59Tm/VNBLrMAmAi/DS2
 EEuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=rjAgW0TZYa01aB+RWuD5jL6/P65QVmPGzGS1fypwqkM=;
 b=e4XzPAe8dmpPoevLnkeAaLc1zGQfLcHBjZH+6Auv6Zxvx8LlsU0+P0RxEwFony9+gE
 K850JS7xYi9OfKoFuAyOKpHnRVoZmDWmqaItJO126vKO1RcDwNjiNYs3kW1qOpaAY3Ng
 aH4JiQotJiqbTbKURvF/zsY/HeWalvluxpKtmzAShpCCb4ubnhCAWR5NXcLXsb/VzqtK
 YibGV7WkQuQhh8BPsZhg6yDPD8J34PiFz0kiPrJJDwKm64uwX/UIdAhD27K3o2uW9+A/
 OddzF6b3Y0nj2Ri3TWNttLFcV+KgvcXurXS+6LZTjNE+bNNYJBk9LPozqlUpksNRaIUP
 5cQw==
X-Gm-Message-State: AOAM532Qnxb4EBCbca9BDialu5av+vy9E7BBF/MK6om9mDp/ZANNhI6j
 lfiWVEZjot37R3Tlf9ahlpQ=
X-Google-Smtp-Source: ABdhPJy9dyrpbH/urhqhSpy7WKh/oklsnc56vlW33h3ZTWE1g0yI8U4qpehenqdC8nVSV7dV3sC9Vw==
X-Received: by 2002:a17:906:370f:b0:6ce:6e7:7344 with SMTP id
 d15-20020a170906370f00b006ce06e77344mr16083589ejc.654.1646085929715; 
 Mon, 28 Feb 2022 14:05:29 -0800 (PST)
Received: from smtpclient.apple ([2a02:8109:9d80:3f6c:957a:1d13:c949:d1f3])
 by smtp.gmail.com with ESMTPSA id
 v2-20020a17090606c200b006a728f4a9bcsm4769566ejb.148.2022.02.28.14.05.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Feb 2022 14:05:29 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
From: Jakob Koschel <jakobkoschel@gmail.com>
In-Reply-To: <0b65541a-3da7-dc35-690a-0ada75b0adae@amd.com>
Date: Mon, 28 Feb 2022 23:05:26 +0100
Message-Id: <192A6D7F-E803-47AE-9C7A-267B4E87C856@gmail.com>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
 <282f0f8d-f491-26fc-6ae0-604b367a5a1a@amd.com>
 <b2d20961dbb7533f380827a7fcc313ff849875c1.camel@HansenPartnership.com>
 <0b65541a-3da7-dc35-690a-0ada75b0adae@amd.com>
To: =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: Apple Mail (2.3693.60.0.1.1)
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
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 linux1394-devel@lists.sourceforge.net, drbd-dev@lists.linbit.com,
 linux-arch <linux-arch@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-aspeed@lists.ozlabs.org, linux-scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, linux-staging@lists.linux.dev, "Bos,
 H.J." <h.j.bos@vu.nl>, Jason Gunthorpe <jgg@ziepe.ca>,
 intel-wired-lan@lists.osuosl.org, kgdb-bugreport@lists.sourceforge.net,
 bcm-kernel-feedback-list@broadcom.com,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergman <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>, dma <dmaengine@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 v9fs-developer@lists.sourceforge.net,
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
 Linus Torvalds <torvalds@linux-foundation.org>,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Cgo+IE9uIDI4LiBGZWIgMjAyMiwgYXQgMjE6NTYsIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4gCj4gCj4gCj4gQW0gMjguMDIuMjIgdW0gMjE6NDIg
c2NocmllYiBKYW1lcyBCb3R0b21sZXk6Cj4+IE9uIE1vbiwgMjAyMi0wMi0yOCBhdCAyMTowNyAr
MDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+IEFtIDI4LjAyLjIyIHVtIDIwOjU2IHNj
aHJpZWIgTGludXMgVG9ydmFsZHM6Cj4+Pj4gT24gTW9uLCBGZWIgMjgsIDIwMjIgYXQgNDoxOSBB
TSBDaHJpc3RpYW4gS8O2bmlnCj4+Pj4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6
Cj4+Pj4gW1NOSVBdCj4+Pj4gQW55Ym9keSBoYXZlIGFueSBpZGVhcz8KPj4+IEkgdGhpbmsgd2Ug
c2hvdWxkIGxvb2sgYXQgdGhlIHVzZSBjYXNlcyB3aHkgY29kZSBpcyB0b3VjaGluZyAocG9zKQo+
Pj4gYWZ0ZXIgdGhlIGxvb3AuCj4+PiAKPj4+IEp1c3QgZnJvbSBza2ltbWluZyBvdmVyIHRoZSBw
YXRjaGVzIHRvIGNoYW5nZSB0aGlzIGFuZCBleHBlcmllbmNlCj4+PiB3aXRoIHRoZSBkcml2ZXJz
L3N1YnN5c3RlbXMgSSBoZWxwIHRvIG1haW50YWluIEkgdGhpbmsgdGhlIHByaW1hcnkKPj4+IHBh
dHRlcm4gbG9va3Mgc29tZXRoaW5nIGxpa2UgdGhpczoKPj4+IAo+Pj4gbGlzdF9mb3JfZWFjaF9l
bnRyeShlbnRyeSwgaGVhZCwgbWVtYmVyKSB7Cj4+PiAgICAgIGlmIChzb21lX2NvbmRpdGlvbl9j
aGVja2luZyhlbnRyeSkpCj4+PiAgICAgICAgICBicmVhazsKPj4+IH0KPj4+IGRvX3NvbWV0aGlu
Z193aXRoKGVudHJ5KTsKClRoZXJlIGFyZSBvdGhlciBjYXNlcyB3aGVyZSB0aGUgbGlzdCBpdGVy
YXRvciB2YXJpYWJsZSBpcyB1c2VkIGFmdGVyIHRoZSBsb29wClNvbWUgZXhhbXBsZXM6CgotIGxp
c3RfZm9yX2VhY2hfZW50cnlfY29udGludWUoKSBhbmQgbGlzdF9mb3JfZWFjaF9lbnRyeV9mcm9t
KCkuCgotIChhbHRob3VnaCB2ZXJ5IHJhcmUpIHRoZSBoZWFkIGlzIGFjdHVhbGx5IG9mIHRoZSBj
b3JyZWN0IHN0cnVjdCB0eXBlLgoJCShwcGM0NDBzcGVfZ2V0X2dyb3VwX2VudHJ5KCk6IGRyaXZl
cnMvZG1hL3BwYzR4eC9hZG1hLmM6MTQzNikKCi0gdG8gdXNlIHBvcy0+bGlzdCBmb3IgZXhhbXBs
ZSBmb3IgbGlzdF9hZGRfdGFpbCgpOgoJCShhZGRfc3RhdGljX3ZtX2Vhcmx5KCk6IGFyY2gvYXJt
L21tL2lvcmVtYXAuYzoxMDcpCgpJZiB0aGUgc2NvcGUgb2YgdGhlIGxpc3QgaXRlcmF0b3IgaXMg
bGltaXRlZCB0aG9zZSBzdGlsbCBuZWVkIGZpeGluZyBpbiBhIGRpZmZlcmVudCB3YXkuCgo+PiAK
Pj4gQWN0dWFsbHksIHdlIHVzdWFsbHkgaGF2ZSBhIGNoZWNrIHRvIHNlZSBpZiB0aGUgbG9vcCBm
b3VuZCBhbnl0aGluZywKPj4gYnV0IGluIHRoYXQgY2FzZSBpdCBzaG91bGQgc29tZXRoaW5nIGxp
a2UKPj4gCj4+IGlmIChsaXN0X2VudHJ5X2lzX2hlYWQoZW50cnksIGhlYWQsIG1lbWJlcikpIHsK
Pj4gICAgIHJldHVybiB3aXRoIGVycm9yOwo+PiB9Cj4+IGRvX3NvbWV0aGluX3dpdGgoZW50cnkp
Owo+PiAKPj4gU3VmZmljZT8gIFRoZSBsaXN0X2VudHJ5X2lzX2hlYWQoKSBtYWNybyBpcyBkZXNp
Z25lZCB0byBjb3BlIHdpdGggdGhlCj4+IGJvZ3VzIGVudHJ5IG9uIGhlYWQgcHJvYmxlbS4KPiAK
PiBUaGF0IHdpbGwgd29yayBhbmQgaXMgYWxzbyB3aGF0IHBlb3BsZSBhbHJlYWR5IGRvLgo+IAo+
IFRoZSBrZXkgcHJvYmxlbSBpcyB0aGF0IHdlIGxldCBwZW9wbGUgZG8gdGhlIHNhbWUgdGhpbmcg
b3ZlciBhbmQgb3ZlciBhZ2FpbiB3aXRoIHNsaWdodGx5IGRpZmZlcmVudCBpbXBsZW1lbnRhdGlv
bnMuCj4gCj4gT3V0IGluIHRoZSB3aWxkIEkndmUgc2VlbiBhdCBsZWFzdCB1c2luZyBhIHNlcGFy
YXRlIHZhcmlhYmxlLCB1c2luZyBhIGJvb2wgdG8gaW5kaWNhdGUgdGhhdCBzb21ldGhpbmcgd2Fz
IGZvdW5kIGFuZCBqdXN0IGFzc3VtaW5nIHRoYXQgdGhlIGxpc3QgaGFzIGFuIGVudHJ5Lgo+IAo+
IFRoZSBsYXN0IGNhc2UgaXMgYm9ndXMgYW5kIGJhc2ljYWxseSB3aGF0IGNhbiBicmVhayBiYWRs
eS4KPiAKPiBJZiB3ZSB3b3VsZCBoYXZlIGFuIHVuaWZpZWQgbWFjcm8gd2hpY2ggc2VhcmNoIGZv
ciBhbiBlbnRyeSBjb21iaW5lZCB3aXRoIGF1dG9tYXRlZCByZXBvcnRpbmcgb24gcGF0Y2hlcyB0
byB1c2UgdGhhdCBtYWNybyBJIHRoaW5rIHRoZSBwb3RlbnRpYWwgdG8gaW50cm9kdWNlIHN1Y2gg
aXNzdWVzIHdpbGwgYWxyZWFkeSBnbyBkb3duIG1hc3NpdmVseSB3aXRob3V0IGF1ZGl0aW5nIHRv
bnMgb2YgZXhpc3RpbmcgY29kZS4KCkhhdmluZyBhIHVuaWZpZWQgd2F5IHRvIGRvIHRoZSBzYW1l
IHRoaW5nIHdvdWxkIGluZGVlZCBiZSBncmVhdC4KCj4gCj4gUmVnYXJkcywKPiBDaHJpc3RpYW4u
Cj4gCj4+IAo+PiBKYW1lcwo+PiAKPj4gCj4gCgotIEpha29iCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
