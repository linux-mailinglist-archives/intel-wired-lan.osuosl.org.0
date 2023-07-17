Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4155E755D5A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 09:47:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACCB94098E;
	Mon, 17 Jul 2023 07:47:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACCB94098E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689580050;
	bh=i65gu0yAdi2TZyovulGCJIdNuWTZAi0IHv/D4ij6A+o=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6GajNDjAHrvlN1ez3aYSoGhMsj61bissInswLUDGyj4PKRm4Q3GG0knm79+daMroQ
	 JFgj3829Mq/R/ZFBzVhLDqXyRaKd2t8dKENQ+YD3S1I6z7E0yQMpoS5u1X8tGIwaP0
	 5JWg8DSFsPzsnz/Vew7/VfP5Q8lTMukYnxUhaO2tRDY0UBGT8G4tIzxUkaZc3GzSRr
	 ENsyNM7Z0tYj4rDrR4+qo0TBeh6mtDPdTdv/T3azAlt1Tclj3bB82TzivJTnHQEsaF
	 ACU0T2Zwv1/T5xTxvZ76fasYwCyEaaxRTK9fCqnVFcNw9Th1Wrc+0YICytkhKDpr1Y
	 9oQCbjLOJiYxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eqcPBis-Uk8F; Mon, 17 Jul 2023 07:47:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DB7C4098B;
	Mon, 17 Jul 2023 07:47:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DB7C4098B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C514D1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 07:47:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9BA7E4098B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 07:47:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BA7E4098B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o6kDGDifGtMl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 07:47:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A94440987
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A94440987
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 07:47:22 +0000 (UTC)
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com
 [209.85.161.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5DE283F487
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 07:47:17 +0000 (UTC)
Received: by mail-oo1-f72.google.com with SMTP id
 006d021491bc7-560ce5f7646so5520471eaf.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 00:47:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689580035; x=1692172035;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3gAfaAKrcJgIAcFAT2kE7R0UfBXH+B9pPbdV57Y5Wuk=;
 b=inYl5o7DdeNPbSslqxjl7wzLP51S4PubwOk+VcoDkt4NUrwhM4u3jAt2E6s7XYCKA/
 ATn7IJWj0aB/yMDpDGfE9URbNidmwSQZQ54Du9+DuhgCC8uf18fVRYqVABxJqxfhdF/k
 bKHri+i8VzjrZQPFMJlMlZwPlR9Z3ZZpOOrQbRd8vaCg5pqeUoENgPmLvGh/vqKA/0x8
 SRrXnnQSUgjpJGMfWi/MP8hVso7C64BzS9yox4hN3e5TIubriKVRvduIXguZTh2zsvZw
 uCYoFoZnKc0fWkXjPW0rgal5tQa1xYu7hSADVwv46PGve3ow7ArdvhDOgraGiX8PdhfY
 veCw==
X-Gm-Message-State: ABy/qLb1L7ob9x7pq5kM2wUssPtOjSm4AMte4jPgyGZ9bTvR6LPsVmW4
 z7K9CR1SMPs22Tfyt7vrlyQefwZ+89RWfNWjJvFanCbFLg7ceOEKqCIkFo/Lj6P1vL/TteWhGAR
 +kFRMFMm53XJAWIOjX4BUjwQdM8p6F0g2l1RGRi45HgyjuYRNtrhx9q6Y8ltHL5U=
X-Received: by 2002:a05:6358:4291:b0:133:291:f9ac with SMTP id
 s17-20020a056358429100b001330291f9acmr8421574rwc.25.1689580035721; 
 Mon, 17 Jul 2023 00:47:15 -0700 (PDT)
X-Google-Smtp-Source: APBJJlG9DoONFKdmsKqUh/LuGSuwifc1GAuZNV44ZqW0/u5tIfGEjz1hRCf3IVbFGKMGLXWKhFrokqQ0Xv8dAN/JWlM=
X-Received: by 2002:a05:6358:4291:b0:133:291:f9ac with SMTP id
 s17-20020a056358429100b001330291f9acmr8421558rwc.25.1689580035356; Mon, 17
 Jul 2023 00:47:15 -0700 (PDT)
MIME-Version: 1.0
References: <874jm6nsd0.fsf@intel.com> <20230715191216.GA364070@bhelgaas>
In-Reply-To: <20230715191216.GA364070@bhelgaas>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Mon, 17 Jul 2023 15:47:04 +0800
Message-ID: <CAAd53p6SiQrmjWA3=4CE0tw15-ZfmkcqTNoheXzkkkargfGtCw@mail.gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1689580037;
 bh=3gAfaAKrcJgIAcFAT2kE7R0UfBXH+B9pPbdV57Y5Wuk=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=K8hR62ljMn1m6vkLxvCo/yL3vl/+mlbkYKaEUz7x//DxzXcJ53tsDHtnz7/WzXEK0
 GVtfiVuV3wW27uFz5mmaw66hHA6d5guZwWVwh/M7zsm/Cw7DRx2wKOdoJGVf/9xwAy
 UZLlXZJDCBa8YMqCsaaC4Um7vmdjpQTUsYiT1zDU1bJXxBghYBwpHu+C9zXLlxjAIA
 qva0I7CpWNnOYjQhv5mIZagueTo4Lndrjx7o063Xk190RS7Ih9w9fzLGur2+J0l/b1
 tKthC7pPVpz11EgCcgnTBwMfTbAbhGHlu0JSCkVr3YDviX2oNTfQtFl7TmrQVOJoKa
 FU19Vu/7NNIcQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=K8hR62lj
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Ignore AER reset when device
 is suspended
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, "Guilherme G . Piccoli" <gpiccoli@igalia.com>,
 Eric Dumazet <edumazet@google.com>, anthony.l.nguyen@intel.com,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU3VuLCBKdWwgMTYsIDIwMjMgYXQgMzoxMuKAr0FNIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBGcmksIEp1bCAxNCwgMjAyMyBhdCAwMTozNTo1NVBN
IC0wNzAwLCBWaW5pY2l1cyBDb3N0YSBHb21lcyB3cm90ZToKPiA+IEJqb3JuIEhlbGdhYXMgPGhl
bGdhYXNAa2VybmVsLm9yZz4gd3JpdGVzOgo+ID4gPiBPbiBGcmksIEp1bCAxNCwgMjAyMyBhdCAw
MTowNTo0MVBNICswODAwLCBLYWktSGVuZyBGZW5nIHdyb3RlOgo+ID4gPj4gV2hlbiBhIHN5c3Rl
bSB0aGF0IGNvbm5lY3RzIHRvIGEgVGh1bmRlcmJvbHQgZG9jayBlcXVpcHBlZCB3aXRoIEkyMjUs
Cj4gPiA+PiBsaWtlIEhQIFRodW5kZXJib2x0IERvY2sgRzQsIEkyMjUgc3RvcHMgd29ya2luZyBh
ZnRlciBTMyByZXN1bWU6Cj4gPiA+PiAuLi4KPiA+ID4KPiA+ID4+IFRoZSBpc3N1ZSBpcyB0aGF0
IHRoZSBQVE0gcmVxdWVzdHMgYXJlIHNlbmRpbmcgYmVmb3JlIGRyaXZlciByZXN1bWVzIHRoZQo+
ID4gPj4gZGV2aWNlLiBTaW5jZSB0aGUgaXNzdWUgY2FuIGFsc28gYmUgb2JzZXJ2ZWQgb24gV2lu
ZG93cywgaXQncyBxdWl0ZQo+ID4gPj4gbGlrZWx5IGEgZmlybXdhcmUvaGFyZHdhcmUgbGltaXRh
dGlvbi4KPiA+ID4KPiA+ID4gRG9lcyB0aGlzIG1lYW4gd2UgZGlkbid0IGRpc2FibGUgUFRNIGNv
cnJlY3RseSBvbiBzdXNwZW5kPyAgT3IgaXMgdGhlCj4gPiA+IGRldmljZSBkZWZlY3RpdmUgYW5k
IHNlbmRpbmcgUFRNIHJlcXVlc3RzIGV2ZW4gdGhvdWdoIFBUTSBpcyBkaXNhYmxlZD8KPiA+Cj4g
PiBUaGUgd2F5IEkgdW5kZXJzdGFuZCB0aGUgaGFyZHdhcmUgYnVnLCB0aGUgZGV2aWNlIGlzIGRl
ZmVjdGl2ZSwgYXMgeW91Cj4gPiBzYWlkLCB0aGUgZGV2aWNlIHNlbmRzIFBUTSBtZXNzYWdlcyB3
aGVuICJidXNtYXN0ZXJpbmciIGlzIGRpc2FibGVkLgo+Cj4gQnVzIE1hc3RlciBFbmFibGUgY29u
dHJvbHMgdGhlIGFiaWxpdHkgb2YgYSBGdW5jdGlvbiB0byBpc3N1ZSBNZW1vcnkKPiBhbmQgSS9P
IFJlYWQvV3JpdGUgUmVxdWVzdHMgKFBDSWUgcjYuMCwgc2VjIDcuNS4xLjEuMykuICBQVE0gdXNl
cwo+IE1lc3NhZ2VzLCBhbmQgSSBkb24ndCB0aGluayB0aGV5IHNob3VsZCBiZSBhZmZlY3RlZCBi
eSBCdXMgTWFzdGVyCj4gRW5hYmxlLgo+Cj4gSSBhbHNvIGRvbid0IHVuZGVyc3RhbmQgdGhlIEky
MjUgY29ubmVjdGlvbi4gIFdlIGhhdmUgdGhlc2UKPiBVbmNvcnJlY3RlZCBOb24tRmF0YWwgZXJy
b3JzOgo+Cj4gPiA+PiBbICA2MDYuNTI3OTMxXSBwY2llcG9ydCAwMDAwOjAwOjFkLjA6IEFFUjog
TXVsdGlwbGUgVW5jb3JyZWN0ZWQgKE5vbi1GYXRhbCkgZXJyb3IgcmVjZWl2ZWQ6IDAwMDA6MDA6
MWQuMAo+ID4gPj4gWyAgNjA2LjUyODA2NF0gcGNpZXBvcnQgMDAwMDowMDoxZC4wOiBQQ0llIEJ1
cyBFcnJvcjogc2V2ZXJpdHk9VW5jb3JyZWN0ZWQgKE5vbi1GYXRhbCksIHR5cGU9VHJhbnNhY3Rp
b24gTGF5ZXIsIChSZXF1ZXN0ZXIgSUQpCj4gPiA+PiBbICA2MDYuNTI4MDY4XSBwY2llcG9ydCAw
MDAwOjAwOjFkLjA6ICAgZGV2aWNlIFs4MDg2OjdhYjBdIGVycm9yIHN0YXR1cy9tYXNrPTAwMTAw
MDAwLzAwMDA0MDAwCj4gPiA+PiBbICA2MDYuNTI4MDcyXSBwY2llcG9ydCAwMDAwOjAwOjFkLjA6
ICAgIFsyMF0gVW5zdXBSZXEgICAgICAgICAgICAgICAoRmlyc3QpCj4gPiA+PiBbICA2MDYuNTI4
MDc1XSBwY2llcG9ydCAwMDAwOjAwOjFkLjA6IEFFUjogICBUTFAgSGVhZGVyOiAzNDAwMDAwMCAw
YTAwMDA1MiAwMDAwMDAwMCAwMDAwMDAwMAo+ID4gPj4gWyAgNjA2LjUyODA3OV0gcGNpZXBvcnQg
MDAwMDowMDoxZC4wOiBBRVI6ICAgRXJyb3Igb2YgdGhpcyBBZ2VudCBpcyByZXBvcnRlZCBmaXJz
dAo+ID4gPj4gWyAgNjA2LjUyODA5OF0gcGNpZXBvcnQgMDAwMDowNDowMS4wOiBQQ0llIEJ1cyBF
cnJvcjogc2V2ZXJpdHk9VW5jb3JyZWN0ZWQgKE5vbi1GYXRhbCksIHR5cGU9VHJhbnNhY3Rpb24g
TGF5ZXIsIChSZXF1ZXN0ZXIgSUQpCj4gPiA+PiBbICA2MDYuNTI4MTAxXSBwY2llcG9ydCAwMDAw
OjA0OjAxLjA6ICAgZGV2aWNlIFs4MDg2OjExMzZdIGVycm9yIHN0YXR1cy9tYXNrPTAwMzAwMDAw
LzAwMDAwMDAwCj4gPiA+PiBbICA2MDYuNTI4MTA1XSBwY2llcG9ydCAwMDAwOjA0OjAxLjA6ICAg
IFsyMF0gVW5zdXBSZXEgICAgICAgICAgICAgICAoRmlyc3QpCj4gPiA+PiBbICA2MDYuNTI4MTA3
XSBwY2llcG9ydCAwMDAwOjA0OjAxLjA6ICAgIFsyMV0gQUNTVmlvbAo+ID4gPj4gWyAgNjA2LjUy
ODExMF0gcGNpZXBvcnQgMDAwMDowNDowMS4wOiBBRVI6ICAgVExQIEhlYWRlcjogMzQwMDAwMDAg
MDQwMDAwNTIgMDAwMDAwMDAgMDAwMDAwMDAKPgo+IFRoZXkgYXJlIGNsZWFybHkgVW5zdXBwb3J0
ZWQgUmVxdWVzdCBlcnJvcnMgY2F1c2VkIGJ5IFBUTSBSZXF1ZXN0cwo+IChkZWNvZGluZyBhdCBo
dHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIxNjg1MCNjOSksCj4g
YnV0IHRoZXkgd2VyZSBsb2dnZWQgYnkgMDA6MWQuMCBhbmQgMDQ6MDEuMC4KPgo+IFRoZSBoaWVy
YXJjaHkgaXMgdGhpczoKPgo+ICAgMDA6MWQuMCBSb290IFBvcnQgdG8gW2J1cyAwMy02Y10KPiAg
IDAzOjAwLjAgU3dpdGNoIFVwc3RyZWFtIFBvcnQgdG8gW2J1cyAwNC02Y10KPiAgIDA0OjAxLjAg
U3dpdGNoIERvd25zdHJlYW0gUG9ydCB0byBbYnVzIDA2LTM4XQo+ICAgMDY6MDAuMCBTd2l0Y2gg
VXBzdHJlYW0gUG9ydCB0byBbYnVzIDA3LTM4XQo+ICAgMDc6MDQuMCBTd2l0Y2ggRG93bnN0cmVh
bSBQb3J0IHRvIFtidXMgMzhdCj4gICAzODowMC4wIGlnYyBJMjI1IE5JQwo+Cj4gSWYgSTIyNSBz
ZW50IGEgUFRNIHJlcXVlc3Qgd2hlbiBpdCBzaG91bGRuJ3QgaGF2ZSwgaS5lLiwgd2hlbiAwNzow
NC4wCj4gZGlkbid0IGhhdmUgUFRNIGVuYWJsZWQsIHRoZSBlcnJvciB3b3VsZCBoYXZlIGJlZW4g
bG9nZ2VkIGJ5IDA3OjA0LjAuCj4KPiBUaGUgZmFjdCB0aGF0IHRoZSBlcnJvcnMgd2VyZSBsb2dn
ZWQgYnkgMDA6MWQuMCBhbmQgMDQ6MDEuMCBtZWFucyB0aGF0Cj4gdGhleSB3ZXJlIGNhdXNlZCBi
eSBQVE0gcmVxdWVzdHMgZnJvbSAwMzowMC4wIGFuZCAwNjowMC4wLgoKT0ssIHNvIHRoZSBQVE0g
aXMgYWN0dWFsbHkgZmlyZWQgYnkgdGhlIFRodW5kZXJib2x0IHN3aXRjaC4KVGhhdCBtZWFucyB0
aGUgSTIyNSByZXNldCBpcyBjb2xsYXRlcmFsIGRhbWFnZS4KTGV0IG1lIHNlZSBpZiBJIGNhbiBy
ZXByb2R1Y2UgdGhlIFVSIFBUTSB3aXRoIG90aGVyIGRldmljZXMuCgpLYWktSGVuZwoKPgo+IEJq
b3JuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
