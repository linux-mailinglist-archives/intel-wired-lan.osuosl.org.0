Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CA929D035
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 15:13:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A237887480;
	Wed, 28 Oct 2020 14:13:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 52eYHM1RFVpf; Wed, 28 Oct 2020 14:13:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD8DA8747D;
	Wed, 28 Oct 2020 14:13:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E16FC1BF3B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 14:13:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D28FE87477
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 14:13:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jLwdwKGg8zGZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 14:13:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8E87887476
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 14:13:16 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id p10so4788630ile.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 07:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=smW0Uu5AYT0CbDiMXTsNP0m2Ye5AeJ3ok8/XC5RGM+Y=;
 b=Lei/xwIULrLyJ4qK1cvb3RKgISU958FgpCNryrAPHyJ48fBNRXFrVy/VN8BRnyBTQV
 LQPSP3lIBSfFZsan+T3i8Cbiyy1/vGBJLAzO5358TGkFggRQ/GuU6s3FqjhnlXHsRGR3
 aJAmx3w+i7zcVKNLEjYbb5GD8aej8hzmYXLWwbBvrmzf2WjZ8yCPHa7UTOFd++lR8fJt
 XuK1OktkYuYbadBKPTjNMXvJJYr0TO83b8lQ09unT3ih0UClReu6MNvwFyv55UiniaLv
 LiUbFEvYvjRLySHhNxH0+9ic+5wgBmP1nZzEtcr3rW8dvDCA3I0EyS6nrHkVvNWm8ozO
 UWqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=smW0Uu5AYT0CbDiMXTsNP0m2Ye5AeJ3ok8/XC5RGM+Y=;
 b=NAKwk/7Y8Tkc0+uDTvihnYTXAE+lnnddi3Mugjg9qfvkGu8xc3M8vUAmkJsTa50SP5
 QpMEPRmXYJzhaHJuA/C3ts7r9pWWMAlF7ML8tGK83AhRzhgPiZx0wu5dGCcebaSv2GkM
 JrmthL5HSYJy/ub8hCC4MwQ//t9E9VoKdVYRnoLh+FURVlN88d4/ANuXK/B1qa3AurxG
 JGb6wRWGpNc1i8CmGMCffl9yMH/l9SuzK2CTGhVXtXWgXqOrYj6eyCp900wie1lcmJ5y
 i3aJqSQCELpjEfCavAnCSb0JcsmERQ9hmhh3aSTdwuiTsADMMB3bpax0/taYsu7VQs1k
 /hXw==
X-Gm-Message-State: AOAM5302870QshxbSyQ3hZebd10QSCMAW6Q/dBOGZqB5Y9Lt36RZcqQZ
 MOzOxuupDuGVpXpMx/trBvmcrcAH678aoqx6gYbrCg==
X-Google-Smtp-Source: ABdhPJzJO0N2+hIbIX+FF7H3RMPaSMzS1HRK/UtcpDxwLJHdhBI5zyOxHDIUXPzDykjjitziGQR4phJvJbOviEInlNE=
X-Received: by 2002:a05:6e02:14c9:: with SMTP id
 o9mr6031068ilk.137.1603894395447; 
 Wed, 28 Oct 2020 07:13:15 -0700 (PDT)
MIME-Version: 1.0
References: <20201028133437.212503-1-bjorn.topel@gmail.com>
In-Reply-To: <20201028133437.212503-1-bjorn.topel@gmail.com>
From: Eric Dumazet <edumazet@google.com>
Date: Wed, 28 Oct 2020 15:13:04 +0100
Message-ID: <CANn89iLpwne8P+E4p+wD92xB0LP4WridLUhPQTx1CeDF-D+LdA@mail.gmail.com>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Subject: Re: [Intel-wired-lan] [RFC PATCH bpf-next 0/9] Introduce biased
 busy-polling
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, netdev <netdev@vger.kernel.org>,
 qi.z.zhang@intel.com, Alexei Starovoitov <ast@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBPY3QgMjgsIDIwMjAgYXQgMjozNSBQTSBCasO2cm4gVMO2cGVsIDxiam9ybi50b3Bl
bEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSmFrdWIgc3VnZ2VzdGVkIGluIFsxXSBhICJzdHJpY3Qg
YnVzeS1wb2xsaW5nIG1vZGUgd2l0aCBvdXQKPiBpbnRlcnJ1cHRzIi4gVGhpcyBpcyBhIGZpcnN0
IHN0YWIgYXQgdGhhdC4KPgo+IFRoaXMgc2VyaWVzIGFkZHMgYSBuZXcgTkFQSSBtb2RlLCBjYWxs
ZWQgYmlhc2VkIGJ1c3ktcG9sbGluZywgd2hpY2ggaXMKPiBhbiBleHRlbnNpb24gdG8gdGhlIGV4
aXN0aW5nIGJ1c3ktcG9sbGluZyBtb2RlLiBUaGUgbmV3IG1vZGUgaXMKPiBlbmFibGVkIG9uIHRo
ZSBzb2NrZXQgbGF5ZXIsIHdoZXJlIGEgc29ja2V0IHNldHRpbmcgdGhpcyBvcHRpb24KPiAicHJv
bWlzaWVzIiB0byBidXN5LXBvbGwgdGhlIE5BUEkgY29udGV4dCB2aWEgYSBzeXN0ZW0gY2FsbC4g
V2hlbiB0aGlzCj4gbW9kZSBpcyBlbmFibGVkLCB0aGUgTkFQSSBjb250ZXh0IHdpbGwgb3BlcmF0
ZSBpbiBhIG1vZGUgd2l0aAo+IGludGVycnVwdHMgZGlzYWJsZWQuIFRoZSBrZXJuZWwgbW9uaXRv
cnMgdGhhdCB0aGUgYnVzeS1wb2xsaW5nIHByb21pc2UKPiBpcyBmdWxmaWxsZWQgYnkgYW4gaW50
ZXJuYWwgd2F0Y2hkb2cuIElmIHRoZSBzb2NrZXQgZmFpbC9zdG9wCj4gcGVyZm9ybWluZyB0aGUg
YnVzeS1wb2xsaW5nLCB0aGUgbW9kZSB3aWxsIGJlIGRpc2FibGVkLgo+Cj4gQmlhc2VkIGJ1c3kt
cG9sbGluZyBmb2xsb3dzIHRoZSBzYW1lIG1lY2hhbmlzbSBhcyB0aGUgZXhpc3RpbmcKPiBidXN5
LXBvbGw7IFRoZSBuYXBpX2lkIGlzIHJlcG9ydGVkIHRvIHRoZSBzb2NrZXQgdmlhIHRoZSBza2J1
ZmYuIExhdGVyCj4gY29tbWl0cyB3aWxsIGV4dGVuZCBuYXBpX2lkIHJlcG9ydGluZyB0byBYRFAs
IGluIG9yZGVyIHRvIHdvcmsKPiBjb3JyZWN0bHkgd2l0aCBYRFAgc29ja2V0cy4KPgo+IExldCB1
cyB3YWxrIHRocm91Z2ggYSBmbG93IG9mIGV4ZWN1dGlvbjoKPgo+IDEuIEEgc29ja2V0IHNldHMg
dGhlIG5ldyBTT19CSUFTX0JVU1lfUE9MTCBzb2NrZXQgb3B0aW9uIHRvIHRydWUuIFRoZQo+ICAg
IHNvY2tldCBub3cgc2hvd3MgYW4gaW50ZW50IG9mIGRvaW5nIGJ1c3ktcG9sbGluZy4gTm8gZGF0
YSBoYXMgYmVlbgo+ICAgIHJlY2VpdmVkIHRvIHRoZSBzb2NrZXQsIHNvIHRoZSBuYXBpX2lkIG9m
IHRoZSBzb2NrZXQgaXMgc3RpbGwgMAo+ICAgIChub24tdmFsaWQpLiBBcyB1c3VhbCBmb3IgYnVz
eS1wb2xsaW5nLCB0aGUgU09fQlVTWV9QT0xMIG9wdGlvbgo+ICAgIGFsc28gaGFzIHRvIGJlIG5v
bi16ZXJvIGZvciBiaWFzZWQgYnVzeS1wb2xsaW5nLgo+Cj4gMi4gRGF0YSBpcyByZWNlaXZlZCBv
biB0aGUgc29ja2V0IGNoYW5naW5nIHRoZSBuYXBpX2lkIHRvIG5vbi16ZXJvLgo+Cj4gMy4gVGhl
IHNvY2tldCBkb2VzIGEgc3lzdGVtIGNhbGwgdGhhdCBoYXMgdGhlIGJ1c3ktcG9sbGluZyBsb2dp
YyB3aXJlZAo+ICAgIHVwLCBlLmcuIHJlY3Zmcm9tKCkgZm9yIFVEUCBzb2NrZXRzLiBUaGUgTkFQ
SSBjb250ZXh0IGlzIG5vdyBtYXJrZWQKPiAgICBhcyBiaWFzZWQgYnVzeS1wb2xsLiBUaGUga2Vy
bmVsIHdhdGNoZG9nIGlzIGFybWVkLiBJZiB0aGUgTkFQSQo+ICAgIGNvbnRleHQgaXMgYWxyZWFk
eSBydW5uaW5nLCBpdCB3aWxsIHRyeSB0byBmaW5pc2ggYXMgc29vbiBhcwo+ICAgIHBvc3NpYmxl
IGFuZCBtb3ZlIHRvIGJ1c3ktcG9sbGluZy4gSWYgdGhlIE5BUEkgY29udGV4dCBpcyBub3QKPiAg
ICBydW5uaW5nLCBpdCB3aWxsIGV4ZWN1dGUgdGhlIE5BUEkgcG9sbCBmdW5jdGlvbiBmb3IgdGhl
Cj4gICAgY29ycmVzcG9uZGluZyBuYXBpX2lkLgo+Cj4gNC4gR290byAzLCBvciB3YWl0IHVudGls
IHRoZSB3YXRjaGRvZyB0aW1lb3V0Lgo+Cj4gVGhlIHNlcmllcyBpcyBvdXRsaW5lZCBhcyBmb2xs
b3dpbmc6Cj4gICBQYXRjaCAxLTI6IEJpYXNlZCBidXN5LXBvbGxpbmcsIGFuZCBvcHRpb24gdG8g
c2V0IGJ1c3ktcG9sbCBidWRnZXQuCj4gICBQYXRjaCAzLTY6IEJ1c3ktcG9sbCBwbHVtYmluZyBm
b3IgWERQIHNvY2tldHMKPiAgIFBhdGNoIDctOTogQWRkIGJ1c3ktcG9sbGluZyBzdXBwb3J0IHRv
IHRoZSB4ZHBzb2NrIHNhbXBsZQo+Cj4gUGVyZm9ybWFuY2UgVURQIHNvY2tldHM6Cj4KPiBJIGhh
Y2tlZCBuZXRwZXJmIHRvIHVzZSBub24tYmxvY2tpbmcgc29ja2V0cywgYW5kIGxvb3Bpbmcgb3Zl
cgo+IHJlY3Zmcm9tKCkuIFRoZSBmb2xsb3dpbmcgY29tbWFuZC1saW5lIHdhcyB1c2VkOgo+ICAg
JCBuZXRwZXJmIC1IIDE5Mi4xNjguMS4xIC1sIDMwIC10IFVEUF9SUiAtdiAyIC0tIFwKPiAgICAg
ICAtbyBtaW5fbGF0ZW5jeSxtZWFuX2xhdGVuY3ksbWF4X2xhdGVuY3ksc3RkZGV2X2xhdGVuY3ks
dHJhbnNhY3Rpb25fcmF0ZQo+Cj4gTm9uLWJsb2NraW5nOgo+ICAgMTYsMTguNDUsMTk1LDAuOTQs
NTQwNzAuMzY5Cj4gTm9uLWJsb2NraW5nIHdpdGggYmlhc2VkIGJ1c3ktcG9sbGluZzoKPiAgIDE1
LDE2LjU5LDM4LDAuNzAsNjAwODYuMzEzCj4KCkJ1dCBhIGZhaXIgY29tcGFyaXNvbiBzaG91bGQg
YmUgZG9uZSB1c2luZyBjdXJyZW50IGJ1c3ktcG9sbGluZyBtb2RlLAp3aGljaCBkb2VzIG5vdCBy
ZXF1aXJlIG5ldHBlcmYgdG8gdXNlIG5vbi1ibG9ja2luZyBtb2RlIGluIHRoZSBmaXJzdCBwbGFj
ZSA/CgpXb3VsZCBkaXNhYmxpbmcvcmVhcm1pbmcgaW50ZXJydXB0cyBhYm91dCA2MCwwMDAgdGlt
ZXMgcGVyIHNlY29uZApicmluZyBhbnkgYmVuZWZpdCA/CgoKQWRkaXRpb25hbCBxdWVzdGlvbnMg
OgoKLSBXaGF0IGhhcHBlbnMgdG8gdGhlIGdyb19mbHVzaF90aW1lb3V0IGFuZCBhY2N1bXVsYXRl
ZCBUQ1Agc2VnbWVudHMKaW4gR1JPIGVuZ2luZQp3aGlsZSB0aGUgYmlhc2VkIGJ1c3ktcG9sbGlu
ZyBpcyBpbiB1c2UgPwoKLSBXaGF0IG1lY2hhbmlzbSB3b3VsZCBhdm9pZCBhIHBvdGVudGlhbCAy
MDAgbXMgbGF0ZW5jeSB3aGVuIHRoZQphcHBsaWNhdGlvbiB3YW50cyB0byBleGl0IGNsZWFubHkg
PwogIFByZXN1bWFibHkgd2hlbi9pZiBTT19CSUFTX0JVU1lfUE9MTCBpcyB1c2VkIHRvIGNsZWFy
CnNrLT5za19iaWFzX2J1c3lfcG9sbCB3ZSBuZWVkCiB0byBtYWtlIHN1cmUgZGV2aWNlIGludGVy
cnVwdHMgYXJlIHJlLWVuYWJsZWQuCgoKPiBQZXJmb3JtYW5jZSBYRFAgc29ja2V0czoKPgo+IFRv
ZGF5LCBydW5uaW5nIFhEUCBzb2NrZXRzIHNhbXBsZSBvbiB0aGUgc2FtZSBjb3JlIGFzIHRoZSBz
b2Z0aXJxCj4gaGFuZGxpbmcsIHBlcmZvcm1hbmNlIHRhbmtzIG1haW5seSBiZWNhdXNlIHdlIGRv
IG5vdCB5aWVsZCB0bwo+IHVzZXItc3BhY2Ugd2hlbiB0aGUgWERQIHNvY2tldCBSeCBxdWV1ZSBp
cyBmdWxsLgo+ICAgIyB0YXNrc2V0IC1jIDUgLi94ZHBzb2NrIC1pIGVuczc4NWYxIC1xIDUgLW4g
MSAtcgo+ICAgUng6IDY0S3Bwcwo+Cj4gICAjICMgYmlhc2VkIGJ1c3ktcG9sbGluZywgYnVkZ2V0
IDgKPiAgICMgdGFza3NldCAtYyA1IC4veGRwc29jayAtaSBlbnM3ODVmMSAtcSA1IC1uIDEgLXIg
LUIgLWIgOAo+ICAgUnggOS45TXBwcwo+ICAgIyAjIGJpYXNlZCBidXN5LXBvbGxpbmcsIGJ1ZGdl
dCA2NAo+ICAgIyB0YXNrc2V0IC1jIDUgLi94ZHBzb2NrIC1pIGVuczc4NWYxIC1xIDUgLW4gMSAt
ciAtQiAtYiA2NAo+ICAgUng6IDE5LjNNcHBzCj4gICAjICMgYmlhc2VkIGJ1c3ktcG9sbGluZywg
YnVkZ2V0IDI1Ngo+ICAgIyB0YXNrc2V0IC1jIDUgLi94ZHBzb2NrIC1pIGVuczc4NWYxIC1xIDUg
LW4gMSAtciAtQiAtYiAyNTYKPiAgIFJ4OiAyMS40TXBwcwo+ICAgIyAjIGJpYXNlZCBidXN5LXBv
bGxpbmcsIGJ1ZGdldCA1MTIKPiAgICMgdGFza3NldCAtYyA1IC4veGRwc29jayAtaSBlbnM3ODVm
MSAtcSA1IC1uIDEgLXIgLUIgLWIgNTEyCj4gICBSeDogMjEuNE1wcHMKPgo+IENvbXBhcmVkIHRv
IHRoZSB0d28tY29yZSBjYXNlOgo+ICAgIyB0YXNrc2V0IC1jIDQgLi94ZHBzb2NrIC1pIGVuczc4
NWYxIC1xIDIwIC1uIDEgLXIKPiAgIFJ4OiAyMC43TXBwcwo+Cj4gV2UncmUgZ2V0dGluZyBiZXR0
ZXIgc2luZ2xlLWNvcmUgcGVyZm9ybWFuY2UgdGhhbiB0d28sIGZvciB0aGlzIG5hw692ZQo+IGRy
b3Agc2NlbmFyaW8uCj4KPiBUaGUgYWJvdmUgdGVzdHMgd2FzIGRvbmUgZm9yIHRoZSAnaWNlJyBk
cml2ZXIuCj4KPiBTb21lIG91dHN0YW5kaW5nIHF1ZXN0aW9uczoKPgo+ICogRG9lcyBiaWFzZWQg
YnVzeS1wb2xsaW5nIG1ha2Ugc2Vuc2UgZm9yIG5vbi1YRFAgc29ja2V0cz8gRm9yIGEKPiAgIGRl
ZGljYXRlZCBxdWV1ZSwgYmlhc2VkIGJ1c3ktcG9sbGluZyBoYXMgYSBzdHJvbmcgY2FzZS4gV2hl
biB0aGUKPiAgIE5BUEkgaXMgc2hhcmVkIHdpdGggb3RoZXIgc29ja2V0cywgaXQgY2FuIGFmZmVj
dCB0aGUgbGF0ZW5jaWVzIG9mCj4gICBzb2NrZXRzIHRoYXQgd2VyZSBub3QgZXhwbGljaXR5IGJ1
c3ktcG9sbCBlbmFibGVkLiBOb3RlIHRoYXQgdGhpcwo+ICAgdHJ1ZSBmb3IgcmVndWxhciBidXN5
LXBvbGxpbmcgYXMgd2VsbCwgYnV0IHRoZSBiaWFzZWQgdmVyc2lvbiBpcwo+ICAgc3RyaWN0ZXIu
Cj4KPiAqIEN1cnJlbnRseSBidXN5LXBvbGxpbmcgZm9yIFVEUC9UQ1AgaXMgb25seSB3aXJlZCB1
cCBpbiB0aGUgcmVjdm1zZygpCj4gICBwYXRoLiBEb2VzIGl0IG1ha2Ugc2Vuc2UgdG8gZXh0ZW5k
IHRoYXQgdG8gc2VuZG1zZygpIGFzIHdlbGw/Cj4KPiAqIEJpYXNlZCBidXN5LXBvbGxpbmcgb25s
eSBtYWtlcyBzZW5zZSBmb3Igbm9uLWJsb2NraW5nIHNvY2tldHMuIFJlamVjdAo+ICAgZW5hYmxp
bmcgb2YgYmlhc2VkIGJ1c3ktcG9sbGluZyB1bmxlc3MgdGhlIHNvY2tldCBpcyBub24tYmxvY2tp
bmc/Cj4KPiAqIFRoZSB3YXRjaGRvZyBpcyAyMDAgbXMuIFNob3VsZCBpdCBiZSBjb25maWd1cmFi
bGU/Cj4KPiAqIEV4dGVuZGluZyB4ZHBfcnhxX2luZm9fcmVnKCkgd2l0aCBuYXBpX2lkIHRvdWNo
ZXMgYSBsb3Qgb2YgZHJpdmVycywKPiAgIGFuZCBJJ3ZlIG9ubHkgdmVyaWZpZWQgdGhlIEludGVs
IG9uZXMuIFNvbWUgZHJpdmVycyBpbml0aWFsaXplIE5BUEkKPiAgIChnZW5lcmF0aW5nIHRoZSBu
YXBpX2lkKSBhZnRlciB0aGUgeGRwX3J4cV9pbmZvX3JlZygpIGNhbGwsIHdoaWNoCj4gICBtYXli
ZSB3b3VsZCBvcGVuIHVwIGZvciBhbm90aGVyIEFQST8gSSBkaWQgbm90IHNlbmQgdGhpcyBSRkMg
dG8gYWxsCj4gICB0aGUgZHJpdmVyIGF1dGhvcnMuIEknbGwgZG8gdGhhdCBmb3IgYSBwYXRjaCBw
cm9wZXIgc2VyaWVzLgo+Cj4gKiBUb2RheSwgZW5hYmxpbmcgYnVzeS1wb2xsaW5nIHJlcXVpcmUg
Q0FQX05FVF9BRE1JTi4gRm9yIGEgTkFQSQo+ICAgY29udGV4dCB0aGF0IHNlcnZpY2VzIG11bHRp
cGxlIHNvY2tldCwgdGhpcyBtYWtlcyBzZW5zZSBiZWNhdXNlIG9uZQo+ICAgc29ja2V0IGNhbiBh
ZmZlY3QgcGVyZm9ybWFuY2Ugb2Ygb3RoZXIgc29ja2V0cy4gTm93LCBmb3IgYQo+ICAgKmRlZGlj
YXRlZCogcXVldWUgZm9yIHNheSBYRFAgc29ja2V0LCB3b3VsZCBpdCBiZSBPSyB0byBkcm9wCj4g
ICBDQVBfTkVUX0FETUlOLCBiZWNhdXNlIGl0IGNhbm5vdCBhZmZlY3Qgb3RoZXIgc29ja2V0cy91
c2Vycz8KPgo+IEBKYWt1YiBUaGFua3MgZm9yIHRoZSBlYXJseSBjb21tZW50cy4gSSBsZWZ0IHRo
ZSBjaGVjayBpbgo+IG5hcGlfc2NoZWR1bGVfcHJlcCgpLCBiZWNhdXNlIEkgaGl0IHRoYXQgZm9y
IHRoZSBJbnRlbCBpNDBlIGRyaXZlcjsKPiBmb3JjaW5nIGJ1c3ktcG9sbGluZyBvbiBhIGNvcmUg
b3V0c2lkZSB0aGUgaW50ZXJydXB0IGFmZmluaXR5IG1hc2suCj4KPiBbMV0gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjAwOTI1MTIwNjUyLjEwYjhkN2M1QGtpY2luc2tpLWZlZG9y
YS1wYzFjMGhqbi5kaGNwLnRoZWZhY2Vib29rLmNvbS8KPgo+IEJqw7ZybiBUw7ZwZWwgKDkpOgo+
ICAgbmV0OiBpbnRyb2R1Y2UgYmlhc2VkIGJ1c3ktcG9sbGluZwo+ICAgbmV0OiBhZGQgU09fQlVT
WV9QT0xMX0JVREdFVCBzb2NrZXQgb3B0aW9uCj4gICB4c2s6IGFkZCBzdXBwb3J0IGZvciByZWN2
bXNnKCkKPiAgIHhzazogY2hlY2sgbmVlZCB3YWtldXAgZmxhZyBpbiBzZW5kbXNnKCkKPiAgIHhz
azogYWRkIGJ1c3ktcG9sbCBzdXBwb3J0IGZvciB7cmVjdixzZW5kfW1zZygpCj4gICB4c2s6IHBy
b3BhZ2F0ZSBuYXBpX2lkIHRvIFhEUCBzb2NrZXQgUnggcGF0aAo+ICAgc2FtcGxlcy9icGY6IHVz
ZSByZWN2ZnJvbSgpIGluIHhkcHNvY2sKPiAgIHNhbXBsZXMvYnBmOiBhZGQgYnVzeS1wb2xsIHN1
cHBvcnQgdG8geGRwc29jawo+ICAgc2FtcGxlcy9icGY6IGFkZCBvcHRpb24gdG8gc2V0IHRoZSBi
dXN5LXBvbGwgYnVkZ2V0Cj4KPiAgYXJjaC9hbHBoYS9pbmNsdWRlL3VhcGkvYXNtL3NvY2tldC5o
ICAgICAgICAgIHwgICAzICsKPiAgYXJjaC9taXBzL2luY2x1ZGUvdWFwaS9hc20vc29ja2V0Lmgg
ICAgICAgICAgIHwgICAzICsKPiAgYXJjaC9wYXJpc2MvaW5jbHVkZS91YXBpL2FzbS9zb2NrZXQu
aCAgICAgICAgIHwgICAzICsKPiAgYXJjaC9zcGFyYy9pbmNsdWRlL3VhcGkvYXNtL3NvY2tldC5o
ICAgICAgICAgIHwgICAzICsKPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvYW1hem9uL2VuYS9lbmFf
bmV0ZGV2LmMgIHwgICAyICstCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2Jyb2FkY29tL2JueHQv
Ym54dC5jICAgICB8ICAgMiArLQo+ICAuLi4vZXRoZXJuZXQvY2F2aXVtL3RodW5kZXIvbmljdmZf
cXVldWVzLmMgICAgfCAgIDIgKy0KPiAgLi4uL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUvZHBhYTIv
ZHBhYTItZXRoLmMgIHwgICAyICstCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV90eHJ4LmMgICB8ICAgMiArLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2Jhc2UuYyAgICAgfCAgIDQgKy0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV90eHJ4LmMgICAgIHwgICAyICstCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4
Z2JlL2l4Z2JlX21haW4uYyB8ICAgMiArLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9tYXJ2ZWxs
L212bmV0YS5jICAgICAgICAgfCAgIDIgKy0KPiAgLi4uL25ldC9ldGhlcm5ldC9tYXJ2ZWxsL212
cHAyL212cHAyX21haW4uYyAgIHwgICA0ICstCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxh
bm94L21seDQvZW5fcnguYyAgICB8ICAgMiArLQo+ICAuLi4vZXRoZXJuZXQvbmV0cm9ub21lL25m
cC9uZnBfbmV0X2NvbW1vbi5jICAgfCAgIDIgKy0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvcWxv
Z2ljL3FlZGUvcWVkZV9tYWluLmMgIHwgICAyICstCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L3Nm
Yy9yeF9jb21tb24uYyAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9z
b2Npb25leHQvbmV0c2VjLmMgICAgICAgfCAgIDIgKy0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
dGkvY3Bzd19wcml2LmMgICAgICAgICAgIHwgICAyICstCj4gIGRyaXZlcnMvbmV0L2h5cGVydi9u
ZXR2c2MuYyAgICAgICAgICAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL25ldC90dW4uYyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KPiAgZHJpdmVycy9uZXQvdmV0aC5j
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICstCj4gIGRyaXZlcnMvbmV0L3ZpcnRp
b19uZXQuYyAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL25ldC94ZW4t
bmV0ZnJvbnQuYyAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KPiAgZnMvZXZlbnRwb2xsLmMg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAzICstCj4gIGluY2x1ZGUvbGludXgv
bmV0ZGV2aWNlLmggICAgICAgICAgICAgICAgICAgICB8ICAzMyArKystLS0KPiAgaW5jbHVkZS9u
ZXQvYnVzeV9wb2xsLmggICAgICAgICAgICAgICAgICAgICAgIHwgIDQyICsrKysrLS0KPiAgaW5j
bHVkZS9uZXQvc29jay5oICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA0ICsKPiAgaW5j
bHVkZS9uZXQveGRwLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAzICstCj4gIGlu
Y2x1ZGUvdWFwaS9hc20tZ2VuZXJpYy9zb2NrZXQuaCAgICAgICAgICAgICB8ICAgMyArCj4gIG5l
dC9jb3JlL2Rldi5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDExMSArKysrKysr
KysrKysrKystLS0KPiAgbmV0L2NvcmUvc29jay5jICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDE5ICsrKwo+ICBuZXQvY29yZS94ZHAuYyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgIDMgKy0KPiAgbmV0L3hkcC94c2suYyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDM2ICsrKysrLQo+ICBuZXQveGRwL3hza19idWZmX3Bvb2wuYyAgICAgICAgICAg
ICAgICAgICAgICAgfCAgMTMgKy0KPiAgc2FtcGxlcy9icGYveGRwc29ja191c2VyLmMgICAgICAg
ICAgICAgICAgICAgIHwgIDUzICsrKysrKystLQo+ICAzNyBmaWxlcyBjaGFuZ2VkLCAyOTYgaW5z
ZXJ0aW9ucygrKSwgODUgZGVsZXRpb25zKC0pCj4KPgo+IGJhc2UtY29tbWl0OiAzY2IxMmQyN2Zm
NjU1ZTU3ZThlZmUzNDg2ZGNhMmEyMmY0ZTMwNTc4Cj4gLS0KPiAyLjI3LjAKPgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
