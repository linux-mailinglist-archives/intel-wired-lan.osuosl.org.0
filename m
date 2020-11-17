Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFE82B6D8A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Nov 2020 19:38:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B17282264A;
	Tue, 17 Nov 2020 18:38:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iVzNQ98yYkWC; Tue, 17 Nov 2020 18:38:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7F136214FD;
	Tue, 17 Nov 2020 18:38:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B1AC51BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 18:38:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7B92320C41
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 18:38:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id akLs2Cxgnq02 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Nov 2020 18:38:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by silver.osuosl.org (Postfix) with ESMTPS id C024220791
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 18:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605638329;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Zlo21jRSX3EpRG111PaGKdyZ9/0VVcl3jQXHr01R+fM=;
 b=KN2RkbDAnak2jZBsuAAcjb6+NR/l8gfw3EqEPQ1hrNJDyaiwBvQm+IE4TtpMBlHtx+5Pta
 bKowjrtE2fzd2ZA1wR5iUKtjHtNZcvnT95UqKVXZbbI6HpSqGmxaZHLVTl7XZPZVM1nr0X
 WnX+whjvbzfGy6YQlnXG7RH/46z1/jc=
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-CeeE8tKeNfCgjr-zwBwvGA-1; Tue, 17 Nov 2020 13:38:48 -0500
X-MC-Unique: CeeE8tKeNfCgjr-zwBwvGA-1
Received: by mail-oo1-f70.google.com with SMTP id t8so8599521oor.19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 10:38:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=m5E0/SseXfuXN9mnbZhJFdsMHAx3WO5//ot42+LxJLs=;
 b=ajfqFYcZqF9LEwOa6JcmYThIyVGds2UZYCVtPeAhS9bSiV+jtJUgGN6LYcAmPn9McY
 pyqvySIBmS6t/7INLiHKQLDygNTnR95VAgWfhcsf7rycCr6Ik7p1R5Pel5W7z8XSINkX
 JFFaSvUVi46ZXdy1t+TV135pws/MD6mn5EQARTtJobY4YQxCwpYle0vidBITZmZ1Eeh6
 6qYXKZXGjbK4IYxUwLCRQ197sQ3o0Aa+CKzoz9Cv/dO9YYd43U6xq6H/fmYYi/MWme39
 0CL8GmNrdkEn7OiDnax1FJmg7RHN2V+eCdHW/735PVDmvRJ2eZUJ/18+dO5qPveH3cIU
 +7aA==
X-Gm-Message-State: AOAM533XDduKVAHCcWUSZfhe6zEmwX20LPePM3KouUtcBQsu92QqtBAL
 Av1T3uPDWMToViHO+mBZIiXxOTlbq/Hb3m6oDYWCteVlMvkP5PQ/TlY9uLG/UqFO74bj8gipy+S
 0QOAEZmudM9nhrM0wCKZ8VXYH3yiLQQ==
X-Received: by 2002:aca:f19:: with SMTP id 25mr295733oip.175.1605638326775;
 Tue, 17 Nov 2020 10:38:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyTN9L9PixBfldKyQC4E/ow1F8kWj6YKiiPonLzZQA0YMjXGZ9yHRADwxOubQznzJnHVpA2Bw==
X-Received: by 2002:aca:f19:: with SMTP id 25mr295698oip.175.1605638326197;
 Tue, 17 Nov 2020 10:38:46 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id q24sm6239836otm.22.2020.11.17.10.38.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Nov 2020 10:38:45 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 52A7E1833E0; Tue, 17 Nov 2020 19:38:43 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Marek Majtyka <alardam@gmail.com>, Magnus Karlsson
 <magnus.karlsson@gmail.com>
In-Reply-To: <CAAOQfrGzfKf-vpaitfC_KLDnWDo_uJFDF_PE5X9RH_G4Yt8QHA@mail.gmail.com>
References: <20201116093452.7541-1-marekx.majtyka@intel.com>
 <875z655t80.fsf@toke.dk>
 <CAJ8uoz1C7-a7A0WJqThomSxYwmdkfLpDyC5YnB8g_J+p486RXQ@mail.gmail.com>
 <CAAOQfrGzfKf-vpaitfC_KLDnWDo_uJFDF_PE5X9RH_G4Yt8QHA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 17 Nov 2020 19:38:43 +0100
Message-ID: <87wnyj25ho.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH 0/8] New netdev feature flags for XDP
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
 Andrii Nakryiko <andrii.nakryiko@gmail.com>, hawk@kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Marek Majtyka <marekx.majtyka@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf <bpf@vger.kernel.org>,
 =?utf-8?B?QmrDtnJuIFQ=?= =?utf-8?B?w7ZwZWw=?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TWFyZWsgTWFqdHlrYSA8YWxhcmRhbUBnbWFpbC5jb20+IHdyaXRlczoKCj4gT24gVHVlLCBOb3Yg
MTcsIDIwMjAgYXQgODozNyBBTSBNYWdudXMgS2FybHNzb24KPiA8bWFnbnVzLmthcmxzc29uQGdt
YWlsLmNvbT4gd3JvdGU6Cj4KPiBUaGFuayB5b3UgZm9yIHlvdXIgcXVpY2sgYW5zd2VycyBhbmQg
Y29tbWVudHMuCj4KPj4KPj4gT24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMjoyNSBQTSBUb2tlIEjD
uGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+ID4KPj4gPiBhbGFy
ZGFtQGdtYWlsLmNvbSB3cml0ZXM6Cj4+ID4KPj4gPiA+IEZyb206IE1hcmVrIE1hanR5a2EgPG1h
cmVreC5tYWp0eWthQGludGVsLmNvbT4KPj4gPiA+Cj4+ID4gPiBJbXBsZW1lbnQgc3VwcG9ydCBm
b3IgY2hlY2tpbmcgaWYgYSBuZXRkZXYgaGFzIG5hdGl2ZSBYRFAgYW5kIEFGX1hEUCB6ZXJvCj4+
ID4gPiBjb3B5IHN1cHBvcnQuIFByZXZpb3VzbHksIHRoZXJlIHdhcyBubyB3YXkgdG8gZG8gdGhp
cyBvdGhlciB0aGFuIHRvIHRyeQo+PiA+ID4gdG8gY3JlYXRlIGFuIEFGX1hEUCBzb2NrZXQgb24g
dGhlIGludGVyZmFjZSBvciBsb2FkIGFuIFhEUCBwcm9ncmFtIGFuZAo+PiA+ID4gc2VlIGlmIGl0
IHdvcmtlZC4gVGhpcyBjb21taXQgY2hhbmdlcyB0aGlzIGJ5IGV4dGVuZGluZyBleGlzdGluZwo+
PiA+ID4gbmV0ZGV2X2ZlYXR1cmVzIGluIHRoZSBmb2xsb3dpbmcgd2F5Ogo+PiA+ID4gICogeGRw
ICAgICAgICAtIGZ1bGwgWERQIHN1cHBvcnQgKFhEUF97VFgsIFBBU1MsIERST1AsIEFCT1JULCBS
RURJUkVDVH0pCj4+ID4gPiAgKiBhZi14ZHAtemMgIC0gQUZfWERQIHplcm8gY29weSBzdXBwb3J0
Cj4+ID4gPiBOSUNzIHN1cHBvcnRpbmcgdGhlc2UgZmVhdHVyZXMgYXJlIHVwZGF0ZWQgYnkgdHVy
bmluZyB0aGUgY29ycmVzcG9uZGluZwo+PiA+ID4gbmV0ZGV2IGZlYXR1cmUgZmxhZ3Mgb24uCj4+
ID4KPj4gPiBUaGFuayB5b3UgZm9yIHdvcmtpbmcgb24gdGhpcyEgVGhlIGxhY2sgb2YgYSB3YXkg
dG8gZGlzY292ZXIgd2hldGhlciBhbgo+PiA+IGludGVyZmFjZSBzdXBwb3J0cyBYRFAgaXMgcmVh
bGx5IGFubm95aW5nLgo+PiA+Cj4+ID4gSG93ZXZlciwgSSBkb24ndCB0aGluayBqdXN0IGhhdmlu
ZyB0d28gc2VwYXJhdGUgbmV0ZGV2IGZlYXR1cmUgZmxhZ3MgZm9yCj4+ID4gWERQIGFuZCBBRl9Y
RFAgaXMgZ29pbmcgdG8gY3V0IGl0LiBXaGF0ZXZlciBtZWNoYW5pc20gd2UgZW5kIHVwIHdpbGwK
Pj4gPiBuZWVkIHRvIGJlIGFibGUgdG8gZXhwcmVzcyBhdCBsZWFzdCB0aGUgZm9sbG93aW5nLCBp
biBhZGRpdGlvbiB0byB5b3VyCj4+ID4gdHdvIGZsYWdzOgo+PiA+Cj4+ID4gLSBXaGljaCByZXR1
cm4gY29kZXMgZG9lcyBpdCBzdXBwb3J0ICh3aXRoIERST1AvUEFTUywgVFggYW5kIFJFRElSRUNU
IGFzCj4+ID4gICBzZXBhcmF0ZSBvcHRpb25zKT8KPj4gPiAtIERvZXMgdGhpcyBpbnRlcmZhY2Ug
YmUgdXNlZCBhcyBhIHRhcmdldCBmb3IgWERQX1JFRElSRUNUCj4+ID4gICAoc3VwcG9ydGVkL3N1
cHBvcnRlZCBidXQgbm90IGVuYWJsZWQpPwo+PiA+IC0gRG9lcyB0aGUgaW50ZXJmYWNlIHN1cHBv
cnQgb2ZmbG9hZGVkIFhEUD8KPj4KPj4gSWYgd2Ugd2FudCBmZWF0dXJlIGRpc2NvdmVyeSBvbiB0
aGlzIGxldmVsLCB3aGljaCBzZWVtcyB0byBiZSBhIGdvb2QKPj4gaWRlYSBhbmQgZ29hbCB0byBo
YXZlLCB0aGVuIGl0IGlzIGEgZGVhZCBlbmQgdG8gYnVuY2ggYWxsIFhEUCBmZWF0dXJlcwo+PiBp
bnRvIG9uZS4gQnV0IGZvcnR1bmF0ZWx5LCB0aGlzIGNhbiBlYXNpbHkgYmUgYWRkcmVzc2VkLgo+
Cj4gRG8geW91IHRoaW5rIHRoYXQgaXMgaXQgc3RpbGwgY29uc2lkZXJhYmxlIHRvIGhhdmUgYSBz
aW5nbGUgbmV0ZGV2Cj4gZmxhZyB0aGF0IG1lYW5zICJzb21lIiBYRFAgZmVhdHVyZSBzdXBwb3J0
IHdoaWNoIHdvdWxkIGFjdGl2YXRlIG5ldwo+IGZ1cnRoZXIgZnVuY3Rpb25hbGl0aWVzPwoKV2h5
IGJvdGhlcj8gVGhlIHByZXNlbmNlIG9mIGFueSBYRFAtc3BlY2lmaWMgZmVhdHVyZSBiaXRzIHdv
dWxkIGltcGx5CnRoZSBzdXBwb3J0IGZvciBYRFAgOikKCj4+ID4gVGhhdCdzIGFscmVhZHkgZml2
ZSBvciBzaXggbW9yZSBmbGFncywgYW5kIHdlIGNhbid0IHJ1bGUgb3V0IHRoYXQgd2UnbGwKPj4g
PiBuZWVkIG1vcmU7IHNvIEknbSBub3Qgc3VyZSBpZiBqdXN0IGRlZmluaW5nIGZlYXR1cmUgYml0
cyBmb3IgYWxsIG9mIHRoZW0KPj4gPiBpcyBhIGdvb2QgaWRlYS4KPj4KPj4gSSB0aGluayB0aGlz
IGlzIGFuIGltcG9ydGFudCBxdWVzdGlvbi4gSXMgZXh0ZW5kaW5nIHRoZSBuZXRkZXYKPj4gZmVh
dHVyZXMgZmxhZ3MgdGhlIHJpZ2h0IHdheSB0byBnbz8gSWYgbm90LCBpcyB0aGVyZSBzb21lIG90
aGVyCj4+IGludGVyZmFjZSBpbiB0aGUga2VybmVsIHRoYXQgY291bGQgYmUgdXNlZC9leHRlbmRl
ZCBmb3IgdGhpcz8gSWYgbm9uZQo+PiBvZiB0aGVzZSBhcmUgcG9zc2libGUsIHRoZW4gd2UgKHVu
Zm9ydHVuYXRlbHkpIG5lZWQgYSBuZXcgaW50ZXJmYWNlCj4+IGFuZCBpbiB0aGF0IGNhc2UsIHdo
YXQgc2hvdWxkIGl0IGxvb2sgbGlrZT8KPgo+IFRva2UsIGFyZSB5b3UgdGhpbmtpbmcgYWJvdXQg
YW55IHBhcnRpY3VsYXIgZXhpc3RpbmcgaW50ZXJmYWNlIG9yIGEKPiBuZXcgc3BlY2lmaWMgb25l
PwoKSSBoYXZlIG1vc3RseSBiZWVuIHRoaW5raW5nIGFib3V0IHRoZSBpbnRlcm5hbCBrZXJuZWwg
aW50ZXJmYWNlLiBUaGUKc2ltcGxlIHRoaW5nIHdvdWxkIGp1c3QgYmUgdG8gZGVmaW5lIGEgd2hv
bGUgbmV3IGJpdG1hcCBvZiBYRFAtc3BlY2lmaWMKZmVhdHVyZSBiaXRzIHRoYXQgdGhlIHJlc3Qg
b2YgdGhlIGtlcm5lbCBjYW4gY29uc3VtZS4gVGhhdCB3b3VsZCBhbHNvCm1lYW4gd2UgZG9uJ3Qg
aGF2ZSB0byBkbyBwb2ludGVyIGNoYXNpbmcgdG8gc2VlIGlmIHRoZSBuZG9zIGFyZQppbXBsZW1l
bnRlZCwgd2hpY2ggSmVzcGVyIHBvaW50ZWQgb3V0IHRoZSBvdGhlciBkYXkgYWN0dWFsbHkgc2hv
d3MgdXAgb24KaGlzIHByb2ZpbGluZyB0cmFjZXMuCgpUaGUgZG93bnNpZGUgdG8gaGF2aW5nIHRo
ZW0gYmUgZmVhdHVyZSBmbGFncyBpcyB0aGF0IHRoZXkgY2FuIGdldCBvdXQgb2YKc3luYywgb2Yg
Y291cnNlLiBCdXQgaWYgd2UgYmxvY2sgdGhlIHN1cHBvcnQgZnJvbSB3b3JraW5nIHVubGVzcyB0
aGUKcmlnaHQgZmxhZ3MgYXJlIHNldCwgdGhhdCBzaG91bGQgYXQgbGVhc3QgbWFrZSBkcml2ZXIg
ZGV2ZWxvcGVycyBwYXkKYXR0ZW50aW9uLiBBbHRob3VnaCB3ZSdkIGhhdmUgdG8gY2hhbmdlIGFs
bCB0aGUgZHJpdmVycyBpbiBvbmUgZ28sIGJ1dCBJCnN1cHBvc2UgdGhhdCdzIG5vdCB0b28gb25l
cm91cyBzZWVpbmcgYXMgeW91IGp1c3QgZGlkIHRoYXQgZm9yIHRoaXMKc2VyaWVzIDopCgpTbyB3
aGF0IHRoYXQgYm9pbHMgZG93biB0byBpcyBiYXNpY2FsbHkgd2hhdCB5b3UncmUgZG9pbmcgaW4g
dGhpcwpzZXJpZXMsIGJ1dCBtb3JlIGZpbmUgZ3JhaW5lZCwgdmlhIGEgbmV3IG5ldGRldi0+eGRw
X2ZlYXR1cmVzIGluc3RlYWQgb2YKYnVybmluZyBiaXRzIGluIG5ldGRldi0+ZmVhdHVyZXMuCgpB
cyBmb3IgVUFQSSwgaSBkdW5ubz8gRXRodG9vbCBpcyBuZXRsaW5rIG5vdywgcmlnaHQ/IFNvIGl0
IHNob3VsZCBiZQpmYWlybHkgZWFzeSB0byBqdXN0IGV4dGVuZCB3aXRoIGEgbmV3IGF0dHJpYnV0
ZSBmb3IgWERQPwoKSSBiZWxpZXZlIHRoZXJlIHdhcyBvcmlnaW5hbGx5IHNvbWUgcmVzaXN0YW5j
ZSB0byBleHBsaWNpdGx5IGV4cG9zaW5nClhEUCBjYXBhYmlsaXRpZXMgdG8gdXNlcnNwYWNlIGJl
Y2F1c2Ugd2Ugd2FudGVkIGFsbCBkcml2ZXJzIHRvIGltcGxlbWVudAphbGwgZmVhdHVyZXMuIENs
ZWFybHkgdGhhdCBoYXMgbm90IHBhbm5lZCBvdXQsIHRob3VnaCwgc28gYXMgZmFyIGFzIEknbQpj
b25jZXJuZWQgd2UgY2FuIGp1c3QgZXhwb3NlIGl0IGFuZCBiZSBkb25lIHdpdGggaXQgOikgQnV0
IEknbGwgbGV0Cm90aGVycyB3ZWlnaCBpbiBoZXJlOyB0aGUgb3JpZ2luYWwgZGlzY3Vzc2lvbnMg
cHJlZGF0ZSBteSBpbnZvbHZlbWVudC4KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
