Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9662C4C47
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Nov 2020 01:48:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B3B687766;
	Thu, 26 Nov 2020 00:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3BHpxIPBZqUz; Thu, 26 Nov 2020 00:48:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C50887760;
	Thu, 26 Nov 2020 00:48:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8D7B1BF589
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 22:44:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A0D3F86EA2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 22:44:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W2WRu5db4rB0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Nov 2020 22:44:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E728D86EBA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 22:44:40 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id a3so235519wmb.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 14:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mMrMdknFbsC77SFRvwwD3pm1cwl3V2MP65kzVJE6tY4=;
 b=mE3/9/w1S1BsFafykdzrNl6nUKLQtv3irXzEz/AwtJdLppuZQnzVWeoYFC7Qb5OQef
 2DAcZ7D6Froq/rlKPIBwqGtt0C/0XmhDJf/Ua0btTGl1wBl77rh04suLM7Drqc/fd1vb
 erjCUGXrwTRfKAEK60/5plkWP59Lm5M7QZ9ENMraFyUEU5TYdKtuuKGBjQ65xtLyj0UE
 nayIBzzwS8QdOAkDbWxTvDHZJGPoguOAiztDitejPSo1Rp931ceTN4KgHMls79AEVEp8
 0UjkiGW0It0CwNfB/koaXcS1sEgjLFm2K1jcT9QDdZUmcgiCMPoll+6KvJ2hAfFlaA1V
 8PSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mMrMdknFbsC77SFRvwwD3pm1cwl3V2MP65kzVJE6tY4=;
 b=TM6Lo7OXjp1DhVWrI+EoEE+lGU+5hdDLojzSry8KKs3qM47UMj69TUnKMnqNwiHuye
 10h9kviuyZAfRWmdl6tvzkoXuA79rHzWHPV8ptKA6Wk8thM5xKXACZfKBJIdkeRVhsyT
 N2GCCVlEvS0eTH2h0Mu6EdJIpLHJ/TLDDjXAIl9d6mYZR7vAsdCrWxluCzYyqB9PYV81
 /uqLGY/f+KDOvpSWZ4/DaobQxHY+HQWwIp7l1UyWlCiVjJ9GDRVcQ+KJq0B7ciu1CSdk
 BNpPidywN+Cew6aS8uINeh1FPVOKEchPNF4qUkyBrtYRSPCvPaG18Ot81e5y18c1m/W6
 vJOw==
X-Gm-Message-State: AOAM531zSisAnzfVxGmpiBITkhLa3ArLoR/PyZwyGMK7hXzaUGZnTqyz
 oYSShyXhgG0VRLwCYSurtE8=
X-Google-Smtp-Source: ABdhPJzVXPr1uOlB1vaw2cfl6zSoOiLq1F6oo5r6Yg/UanqxqpZONWe00UKvdrBaRFZ4o0pgYT/ByA==
X-Received: by 2002:a7b:cf0a:: with SMTP id l10mr6364382wmg.103.1606344279394; 
 Wed, 25 Nov 2020 14:44:39 -0800 (PST)
Received: from [192.168.1.122]
 (cpc92720-cmbg20-2-0-cust364.5-4.cable.virginm.net. [82.21.83.109])
 by smtp.gmail.com with ESMTPSA id h15sm6411655wrw.15.2020.11.25.14.44.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Nov 2020 14:44:38 -0800 (PST)
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
 <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
 <CANiq72k5tpDoDPmJ0ZWc1DGqm+81Gi-uEENAtvEs9v3SZcx6_Q@mail.gmail.com>
 <4993259d01a0064f8bb22770503490f9252f3659.camel@HansenPartnership.com>
 <CANiq72kqO=bYMJnFS2uYRpgWATJ=uXxZuNUsTXT+3aLtrpnzvQ@mail.gmail.com>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <44005bde-f6d4-5eaa-39b8-1a5efeedb2d3@gmail.com>
Date: Wed, 25 Nov 2020 22:44:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CANiq72kqO=bYMJnFS2uYRpgWATJ=uXxZuNUsTXT+3aLtrpnzvQ@mail.gmail.com>
Content-Language: en-GB
X-Mailman-Approved-At: Thu, 26 Nov 2020 00:48:08 +0000
Subject: Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through warnings for
 Clang
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
Cc: alsa-devel@alsa-project.org, linux-atm-general@lists.sourceforge.net,
 reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-wireless <linux-wireless@vger.kernel.org>, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-ide@vger.kernel.org,
 dm-devel@redhat.com, keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
 samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 usb-storage@lists.one-eyed-alien.net, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 rds-devel@oss.oracle.com, Nick Desaulniers <ndesaulniers@google.com>,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 oss-drivers@netronome.com, bridge@lists.linux-foundation.org,
 linux-security-module@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
 linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input <linux-input@vger.kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, selinux@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-geode@lists.infradead.org, linux-can@vger.kernel.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org,
 linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-nfs@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, tipc-discussion@lists.sourceforge.net,
 Linux-MM <linux-mm@kvack.org>, Network Development <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-renesas-soc@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 patches@opensource.cirrus.com, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, target-devel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjUvMTEvMjAyMCAwMDozMiwgTWlndWVsIE9qZWRhIHdyb3RlOgo+IEkgaGF2ZSBzYWlkICph
dXRob3JpbmcqIGxpbmVzIG9mICp0aGlzKiBraW5kIHRha2VzIGEgbWludXRlIHBlciBsaW5lLgo+
IFNwZWNpZmljYWxseTogbGluZXMgZml4aW5nIHRoZSBmYWxsdGhyb3VnaCB3YXJuaW5nIG1lY2hh
bmljYWxseSBhbmQKPiByZXBlYXRlZGx5IHdoZXJlIHRoZSBjb21waWxlciB0ZWxscyB5b3UgdG8s
IGFuZCBkb2luZyBzbyBmdWxsLXRpbWUgZm9yCj4gYSBtb250aC4KPHNuaXA+Cj4gSXQgaXMgdXNl
ZnVsIHNpbmNlIGl0IG1ha2VzIGludGVudCBjbGVhci4KVG8gbWFrZSB0aGUgaW50ZW50IGNsZWFy
LCB5b3UgaGF2ZSB0byBmaXJzdCBiZSBjZXJ0YWluIHRoYXQgeW91CiB1bmRlcnN0YW5kIHRoZSBp
bnRlbnQ7IG90aGVyd2lzZSBieSBhZGRpbmcgZWl0aGVyIGEgYnJlYWsgb3IgYQogZmFsbHRocm91
Z2ggdG8gc3VwcHJlc3MgdGhlIHdhcm5pbmcgeW91IGFyZSBqdXN0IGRlc3Ryb3lpbmcgdGhlCiBp
bmZvcm1hdGlvbiB0aGF0ICJ0aGUgaW50ZW50IG9mIHRoaXMgY29kZSBpcyB1bmtub3duIi4KRmln
dXJpbmcgb3V0IHRoZSBpbnRlbnQgb2YgYSBwaWVjZSBvZiB1bmZhbWlsaWFyIGNvZGUgdGFrZXMg
bW9yZQogdGhhbiAxIG1pbnV0ZTsganVzdCBiZWNhdXNlCiAgICBjYXNlIGZvbzoKICAgICAgICB0
aGluZzsKICAgIGNhc2UgYmFyOgogICAgICAgIGJyZWFrOwogcHJvZHVjZXMgaWRlbnRpY2FsIGNv
ZGUgdG8KICAgIGNhc2UgZm9vOgogICAgICAgIHRoaW5nOwogICAgICAgIGJyZWFrOwogICAgY2Fz
ZSBiYXI6CiAgICAgICAgYnJlYWs7CiBkb2Vzbid0IG1lYW4gdGhhdCAqZWl0aGVyKiBpcyBjb3Jy
ZWN0IOKAlCBtYXliZSB0aGUgYXV0aG9yIG1lYW50CiB0byB3cml0ZQogICAgY2FzZSBmb286CiAg
ICAgICAgcmV0dXJuIHRoaW5nOwogICAgY2FzZSBiYXI6CiAgICAgICAgYnJlYWs7CiBhbmQgYnkg
aW5zZXJ0aW5nIHRoYXQgYnJlYWsgeW91J3ZlIGRlc3Ryb3llZCB0aGUgbWFya2VyIHRoYXQKIHdv
dWxkIGRpcmVjdCBzb21lb25lIHdobyBrbmV3IHdoYXQgdGhlIGNvZGUgd2FzIGFib3V0IHRvIGxv
b2sKIGF0IHRoYXQgcG9pbnQgaW4gdGhlIGNvZGUgYW5kIHNwb3QgdGhlIHByb2JsZW0uClRodXMs
IHlvdSAqYWx3YXlzKiBoYXZlIHRvIGxvb2sgYXQgbW9yZSB0aGFuIGp1c3QgdGhlIGltbWVkaWF0
ZQogbWVjaGFuaWNhbCBjb250ZXh0IG9mIHRoZSBjb2RlLCB0byBtYWtlIGEgcHJvcGVyIGp1ZGdl
bWVudCB0aGF0CiB5ZXMsIHRoaXMgd2FzIHRoZSBpbnRlbnQuICBJZiB5b3UgdGhpbmsgdGhhdCB0
aGF0IHNvcnQgb2YgdGhpbmcKIGNhbiBiZSBkb25lIGluIGFuICphdmVyYWdlKiB0aW1lIG9mIG9u
ZSBtaW51dGUsIHRoZW4gSSBob3BlIHlvdQogc3RheSBhd2F5IGZyb20gY29kZSBJJ20gcmVzcG9u
c2libGUgZm9yIQpPbmUgbWludXRlIHdvdWxkIGJlIGFuIG9wdGltaXN0aWMgdGFyZ2V0IGZvciBj
b2RlIHRoYXQsIGFzIHRoZQogbWFpbnRhaW5lciwgb25lIGlzIGFscmVhZHkgc29tZXdoYXQgZmFt
aWxpYXIgd2l0aC4gIEZvciBjb2RlCiB0aGF0IHlvdSdyZSBzZWVpbmcgZm9yIHRoZSBmaXJzdCB0
aW1lLCBhcyBpcyB1c3VhbGx5IHRoZSBjYXNlCiB3aXRoIHRoZSBwZW9wbGUgZG9pbmcgdGhlc2Ug
bWVjaGFuaWNhbCBmaXgtYS13YXJuaW5nIHBhdGNoZXMsCiBpdCdzIGNvbXBsZXRlbHkgdW5yZWFs
aXN0aWMuCgpBIHdhcm5pbmcgaXMgb25seSB1c2VmdWwgYmVjYXVzZSBpdCBtYWtlcyB5b3UgKnRo
aW5rKiBhYm91dCB0aGUKIGNvZGUuICBJZiB5b3Ugc3VwcHJlc3MgdGhlIHdhcm5pbmcgd2l0aG91
dCBkb2luZyB0aGF0IHRoaW5raW5nLAogdGhlbiB5b3UgbWFkZSB0aGUgd2FybmluZyB1c2VsZXNz
OyBhbmQgaWYgdGhlIHdhcm5pbmcgbWFkZSB5b3UKIHRoaW5rIGFib3V0IGNvZGUgdGhhdCBkaWRu
J3QgKm5lZWQqIGl0LCB0aGVuIHRoZSB3YXJuaW5nIHdhcwogdXNlbGVzcyBmcm9tIHRoZSBzdGFy
dC4KClNvIG1ha2UgeW91ciBtaW5kIHVwOiBkb2VzIENsYW5nJ3Mgc3RyaWN0ZXIgLVdpbXBsaWNp
dC1mYWxsdGhyb3VnaAogZmxhZyB1cCBjb2RlIHRoYXQgbmVlZHMgdGhvdWdodCAoaW4gd2hpY2gg
Y2FzZSB0aGUgZml4ZXMgdGFrZQogZWZmb3J0IGJvdGggdG8gYXV0aG9yIGFuZCB0byByZXZpZXcp
IG9yIGRvZXMgaXQgZmxhZyB1cCBjb2RlCiB0aGF0IGNhbiBiZSBtaW5kbGVzc2x5ICJmaXhlZCIg
KGluIHdoaWNoIGNhc2UgdGhlIHdhcm5pbmcgaXMKIHdvcnRobGVzcyk/ICBQcm9wb25lbnRzIGlu
IHRoaXMgdGhyZWFkIHNlZW0gdG8gYmUgdHJ5aW5nIHRvCiBoYXZlIGl0IGJvdGggd2F5cy4KCi1l
ZApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
