Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D82438044
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Oct 2021 00:33:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD6014041A;
	Fri, 22 Oct 2021 22:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6MYZFiN6KUgh; Fri, 22 Oct 2021 22:33:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF618403DF;
	Fri, 22 Oct 2021 22:33:18 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BEF4C1BF3BF
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 22:33:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A9E2860718
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 22:33:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=gmx.net
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9q5W9GVwWcAV for <intel-wired-lan@osuosl.org>;
 Fri, 22 Oct 2021 22:33:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9389B606E7
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 22:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1634941984;
 bh=j0gw7xPCURn7I4a9I4b3UFcj5NYCXE7k8u/oAdHBVmU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=V9BbEXS/skhAXOKzing5HzIZS6/MfgCSVD6k1MzHNO3o633fbNWs7cHmhHjDm4SIz
 TqaEJ0nEsDWSCBG2+aI4omKbs228tCsyfWX0oyqTcMJHRCzv7I/Lqkn3w8G4YrJgj+
 ag30Rt7AmMsRLodH2bwxqElyaKuOHvKUCGndCKhM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [91.64.35.151] ([91.64.35.151]) by web-mail.gmx.net
 (3c-app-gmx-bs49.server.lan [172.19.170.102]) (via HTTP); Sat, 23 Oct 2021
 00:33:04 +0200
MIME-Version: 1.0
Message-ID: <trinity-54948f1a-ae2c-42ab-a18f-6714e5ffc4bf-1634941984414@3c-app-gmx-bs49>
From: Robert Schlabbach <robert_s@gmx.net>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Date: Sat, 23 Oct 2021 00:33:04 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <9f4603a5-7811-c653-951b-777070f7ce54@molgen.mpg.de>
References: <trinity-58e35e17-0323-4cde-bbed-1582c3520822-1634891867291@3c-app-gmx-bap44>
 <9f4603a5-7811-c653-951b-777070f7ce54@molgen.mpg.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:/b0lPzqV4/UAK82A3w6pb9RJsgyuPD/Q1ZGGjAe/PB4vqumV4VfZIwEQxUR7P5EUtJNud
 ak6C6XzsfiajOUWsFxeXdnba72GykfYPEWQMZgSawLMC/ZJnyYw4bLemVAtiqLpLTJy9PXLk8Beh
 Nj4ktOSrHF/Lzs9shSyc8UT8IfH+EU8dvr/TyXYDNml2wpMb2VMiWxMataooW7cT4QGw1arAw35F
 kMGrkxERnf0xf+CJq+AfY5fe25+Px8kvi6vz73u2Lma+/MEoFZ/BWJoX2m/J46YwASd+mPoLOm/n
 G4=
X-UI-Out-Filterresults: notjunk:1;V03:K0:IW20d6O/GRo=:LQHWxsSUOHqZQz7yc35snG
 Tm5MyeHCIYSdzF7z25zV0C4w9nHp9Dp9TWEhCxogyW3YDLSQDA5qtXEMQX0GPnFu9ThVGXO3/
 JlKPZ/sAdb6xmcZuLX9PDymJj4FdJf65ah47CMmYxNtbWAQOlrQTXuBTPn7o6Z6bKlG1TRCwa
 nK7r1XJ+N/YTqI4/ogxKiZdzhe95XQW3KEKTLx58ew8A2UGdSNd1Q9Q/RN4C3EygSnV9xThVC
 Rd0r9oyb4EeX4Tad3zRSsECA4X5kp2mMvbyRTEEjGxO+gLYp5Mo9Hc/1dBkuDjRcVNbMNmZxt
 BhVJQ6DRtcJBRzqK58CrT9sFA1/lcQ8QfEgDO4jf8SD125BKcQZcUK6ee+POU960EK3oWeQqM
 q4zGqDjbjZu9EemiYP+TLuoxRzA7PhkoKsA4oKez3GKzlzqZqZS5q0xzPnFB2nv3zOCPpKjII
 PSBiK4uxAJ4dUoF5QCoAQ4USF+cNXo9ex3QBawidsTHk81nf9RPC7fcfMUR6iCdk085Ki2vKg
 AcfGcGmNV3i6pQVrEcozWRnCeP6jVclAMlA3vRbENTXNNc+s855WGI7+MnBksTR/Cx2fMHg8T
 yzqhjVDFwWamOoea2Uo6hIb4iBhw/Frz3pLxE/LsRwNxT4YA5W6GvT3CLeTKyEif6/t1+mk2W
 Ne5Lf5/mwcDXIgLCT9npcyXpuK9fpG8azHNeZxuHpXgwuTEvFoyPNwPULGgf7z7CezhA4PLzw
 csvvz60FonkK86R+iymJuo9RG+DvZ5MsINlG6Gk/rfqteVweaUrx7Y5g4SrRXeGfKoDjFgVEQ
 kuR1qjE
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: Allow disabling NBASE-T
 suppression hack
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAyMiBPY3QgMjAyMSwgUGF1bCBNZW56ZWwgd3JvdGU6Cgo+IEluIG15IG9waW5pb24g
eW91IHNob3VsZCBjYWxsIGl0IG91dCBhcyBhICpyZWdyZXNzaW9uKiwgd2hpY2ggaXMgYWdhaW5z
dAo+IExpbnV44oCZIG5vIHJlZ3Jlc3Npb24gcG9saWN5LiAoSSBzdGlsbCB0aGluaywgdGhlIGRl
ZmF1bHQgbmVlZHMgdG8gYmUKPiBjaGFuZ2VkLikKCkkgd291bGQgYWdyZWUgdGhhdCB0aGUgZGVm
YXVsdCBtb2RlIG9mIG9wZXJhdGlvbiBzaG91bGQgYmUgdGhlIGZ1bGx5IGZ1bmN0aW9uYWwKb25l
LCBhbmQgdGhhdCBpbnRlcm9wZXJhYmlsaXR5IGhhY2tzIGZvciBvbGQgc2V0dXBzIHNob3VsZCBi
ZSBvcHRpb25hbCwgYnV0IEkKc3VwcG9zZSB0aGlzIGlzIHdoZXJlIHRoZSBpbnRlcmVzdHMgb2Yg
dGhlIExpbnV4IGNvbW11bml0eSBhbmQgSW50ZWwncyBidXNpbmVzcwpuZWVkcyBjb2xsaWRlLiBJ
J2QgYmUgd2lsbGluZyB0byBnaXZlIHdheSBmb3IgdGhlIGxhdHRlciBhcyBmYXIgYXMgdGhlIGRl
ZmF1bHQKYmVoYXZpb3IgZ29lcywgYnV0IG1ha2UgaXQgbW9yZSBjbGVhciB0aGF0IHRoaXMgaXMg
bm90IGFzIGRlc2lyZWQ6CgpGb3IgcGF0Y2ggdjMsIEkndmUgcmVuYW1lZCB0aGUgcGFyYW1ldGVy
IHRvICJlbmFibGVfbmJhc2VfdF9zdXBwcmVzc2lvbl9oYWNrIgp3aGljaCBpcyBtb3JlIGNvbXBy
ZWhlbnNpdmUgZnJvbSB0aGUgbG9naWMgcG9pbnQgb2YgdmlldywgYW5kIG1ha2VzIGl0IG1vcmUK
b2J2aW91cyB0aGF0IDAgbGVhZHMgdG8gc3RhbmRhcmQgYmVoYXZpb3IuIEJ1dCBieSBkZWZhdWx0
LCBpdCdsbCBiZSAxLgoKPiBJIGZhaW50bHkgcmVtZW1iZXIgdGhlIGRpc2N1c3Npb24sIGJ1dCBk
aWRu4oCZdCBmaW5kIGl0LiBDYW4geW91IHBsZWFzZQo+IGFkZCBhbiBVUkw/Cj4gCj4gQWxzbyBh
IEZpeGVzIHRhZyBtaWdodCBiZSB1c2VmdWwuCj4gCj4gWW91IG1pZ2h0IHdhbnQgdG8gbWFyayBp
dCB1cCBgYHVwZGF0ZS1pbml0cmFtZnMgLXVgYC4KCldpbGwgYWxsIGJlIGluIHBhdGNoIHYzLgoK
VGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgeW91ciBpbnB1dC4KCkJlc3QgUmVnYXJkcywKLVJvYmVy
dCBTY2hsYWJiYWNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
