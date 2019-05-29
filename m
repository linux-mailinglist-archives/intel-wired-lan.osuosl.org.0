Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A922E531
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 21:21:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D3DDB871DE;
	Wed, 29 May 2019 19:21:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ALLcAjLAt0FD; Wed, 29 May 2019 19:21:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8279287F8E;
	Wed, 29 May 2019 19:21:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 731701BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 19:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6F22087F78
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 19:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LnIKW-G9DZpk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2019 19:21:11 +0000 (UTC)
X-Greylist: delayed 00:06:24 by SQLgrey-1.7.6
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
 [209.85.217.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 45CC8871DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 19:21:11 +0000 (UTC)
Received: by mail-vs1-f66.google.com with SMTP id z11so2712702vsq.9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 12:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=6KmtBCb39PWu4BYvpVu41VYk+/LHSYem2VpD68bT+PE=;
 b=YIcL6JjOWeCW83aX0FGg7zG1iQK1GcccXfTlzkTal2Gz00J25gb09ZtrbivAfNEg3B
 C+4qBOGhpfGh4BpjWriuc0o8t4d7IXdJbq8FzDRBH4EffxHd99c5pQ/l+4Uduu4SuP4I
 fbR8xJBOMRVNSSwoUzHV8vN/wo2OdEj1Tixh9Gc8123/G3YPHDYo6qbYlQm5MAOEA6v5
 yFU0ZO8NdpSNfaF4ZHdbOUTu3UmlLKdLcjBQFFLzydHGumUiSVNXFaYOml9socE8J85B
 SXLWAKnCihYRqfO1WTbeu6Yn79spxlwrjaaGa5R1NlPtyatqWZLDTtNEjcer68q5kbH1
 1pmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=6KmtBCb39PWu4BYvpVu41VYk+/LHSYem2VpD68bT+PE=;
 b=DFDEOaioQiPfdU3JuyIcGEOY/VWSUHpdZvxDwuRn/ef0DJWch1mUt3S6ZRfUjatmk6
 0usLlfZ3xcVm1qLvTbj5JCX1l6X5F5IAOCmqwIvnv19+2YcPWk1y0prkPr1/qHCz48rh
 4Cu9ni8IPHyUzLrGZVLTTuIqwJ3BD2DrzxpCdLrXZ6dHu1ORh9KK5aLtaE5MHksto278
 11E4qvo0TZ43j4JVibpJ1l2BrMI5+/8rIo6Usj4j950JEkJ8kapwn577JdsJ62FbhLNj
 C+ZBARzBg/9xMzJN3lU8VpZqggZsz8ZKmLZFKOX9cAy27B2JVRDwJL3c2bI2wqZiXU/o
 E9RQ==
X-Gm-Message-State: APjAAAVDjtlA374otzv9bbErleruqnwEBUFA0R733QfXqBUTBUq2of+l
 UTWI5XGgtd06fRDPdeXHqXytBPSc/ds=
X-Google-Smtp-Source: APXvYqz5WZBmzj3nMAQfeCtj1nrssdj/JlP4GNQYfGvSj7626LjuCkoVB7Gy80Wq6CzSym1ztVYOYQ==
X-Received: by 2002:a05:6102:105d:: with SMTP id
 h29mr72929028vsq.84.1559157286609; 
 Wed, 29 May 2019 12:14:46 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id o11sm303939vkf.13.2019.05.29.12.14.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 29 May 2019 12:14:46 -0700 (PDT)
Date: Wed, 29 May 2019 12:14:40 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: "Patel, Vedang" <vedang.patel@intel.com>
Message-ID: <20190529121440.46c40967@cakuba.netronome.com>
In-Reply-To: <62E2DD49-AC21-46DE-8E5B-EBC67230FA7D@intel.com>
References: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
 <1559065608-27888-4-git-send-email-vedang.patel@intel.com>
 <20190528154510.41b50723@cakuba.netronome.com>
 <62E2DD49-AC21-46DE-8E5B-EBC67230FA7D@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 3/7] taprio: Add the
 skeleton to enable hardware offloading
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "l@dorileo.org" <l@dorileo.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jamal Hadi Salim <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyOSBNYXkgMjAxOSAxNzowNjo0OSArMDAwMCwgUGF0ZWwsIFZlZGFuZyB3cm90ZToK
PiA+IE9uIE1heSAyOCwgMjAxOSwgYXQgMzo0NSBQTSwgSmFrdWIgS2ljaW5za2kgPGpha3ViLmtp
Y2luc2tpQG5ldHJvbm9tZS5jb20+IHdyb3RlOgo+ID4gT24gVHVlLCAyOCBNYXkgMjAxOSAxMDo0
Njo0NCAtMDcwMCwgVmVkYW5nIFBhdGVsIHdyb3RlOiAgCj4gPj4gRnJvbTogVmluaWNpdXMgQ29z
dGEgR29tZXMgPHZpbmljaXVzLmdvbWVzQGludGVsLmNvbT4KPiA+PiAKPiA+PiBUaGlzIGFkZHMg
dGhlIFVBUEkgYW5kIHRoZSBjb3JlIGJpdHMgbmVjZXNzYXJ5IGZvciB1c2Vyc3BhY2UgdG8KPiA+
PiByZXF1ZXN0IGhhcmR3YXJlIG9mZmxvYWRpbmcgdG8gYmUgZW5hYmxlZC4KPiA+PiAKPiA+PiBU
aGUgZnV0dXJlIGNvbW1pdHMgd2lsbCBlbmFibGUgaHlicmlkIG9yIGZ1bGwgb2ZmbG9hZGluZyBm
b3IgdGFwcmlvLiBUaGlzCj4gPj4gY29tbWl0IHNldHMgdXAgdGhlIGluZnJhc3RydWN0dXJlIHRv
IGVuYWJsZSBpdCB2aWEgdGhlIG5ldGxpbmsgaW50ZXJmYWNlLgo+ID4+IAo+ID4+IFNpZ25lZC1v
ZmYtYnk6IFZpbmljaXVzIENvc3RhIEdvbWVzIDx2aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+Cj4g
Pj4gU2lnbmVkLW9mZi1ieTogVmVkYW5nIFBhdGVsIDx2ZWRhbmcucGF0ZWxAaW50ZWwuY29tPiAg
Cj4gPiAKPiA+IE90aGVyIHFkaXNjcyBvZmZsb2FkIGJ5IGRlZmF1bHQsIHRoaXMgb2ZmbG9hZC1s
ZXZlbCBzZWxlY3Rpb24gaGVyZSBpcyBhCj4gPiBsaXR0bGUgYml0IGluY29uc2lzdGVudCB3aXRo
IHRoYXQgOigKPiA+ICAgCj4gVGhlcmUgYXJlIDIgZGlmZmVyZW50IG9mZmxvYWQgbW9kZXMgaW50
cm9kdWNlZCBpbiB0aGlzIHBhdGNoLgo+IAo+IDEuIFR4dGltZSBvZmZsb2FkIG1vZGU6IFRoaXMg
bW9kZSBkZXBlbmRzIG9uIHNraXBfc29ja19jaGVjayBmbGFnIGJlaW5nIHNldCBpbiB0aGUgZXRm
IHFkaXNjLiBBbHNvLCBpdCByZXF1aXJlcyBzb21lIG1hbnVhbCBjb25maWd1cmF0aW9uIHdoaWNo
IG1pZ2h0IGJlIHNwZWNpZmljIHRvIHRoZSBuZXR3b3JrIGFkYXB0ZXIgY2FyZC4gRm9yIGV4YW1w
bGUsIGZvciB0aGUgaTIxMCBjYXJkLCB0aGUgdXNlciB3aWxsIGhhdmUgdG8gcm91dGUgYWxsIHRo
ZSB0cmFmZmljIHRvIHRoZSBoaWdoZXN0IHByaW9yaXR5IHF1ZXVlIGFuZCBpbnN0YWxsIGV0ZiBx
ZGlzYyB3aXRoIG9mZmxvYWQgZW5hYmxlZCBvbiB0aGF0IHF1ZXVlLiBTbywgSSBkb27igJl0IHRo
aW5rIHRoaXMgbW9kZSBzaG91bGQgYmUgZW5hYmxlZCBieSBkZWZhdWx0LgoKRXhjZWxsZW50LCBp
dCBsb29rcyBsaWtlIHRoZXJlIHdpbGwgYmUgZHJpdmVyIHBhdGNoZXMgbmVjZXNzYXJ5IGZvcgp0
aGlzIG9mZmxvYWQgdG8gZnVuY3Rpb24sIGFsc28gaXQgc2VlbXMgeW91ciBvZmZsb2FkIGVuYWJs
ZSBmdW5jdGlvbgpzdGlsbCBjb250YWlucyB0aGlzIGFmdGVyIHRoZSBzZXJpZXM6CgoJLyogRklY
TUU6IGVuYWJsZSBvZmZsb2FkaW5nICovCgpQbGVhc2Ugb25seSBwb3N0IG9mZmxvYWQgaW5mcmFz
dHJ1Y3R1cmUgd2hlbiBmdWxseSBmbGVzaGVkIG91dCBhbmQgd2l0aApkcml2ZXIgcGF0Y2hlcyBt
YWtpbmcgdXNlIG9mIGl0LgoKPiAyLiBGdWxsIG9mZmxvYWQgbW9kZTogVGhpcyBtb2RlIGlzIGN1
cnJlbnRseSBub3Qgc3VwcG9ydGVkIGJ5IGFueSBuZXR3b3JrIGRyaXZlci4gVGhlIHN1cHBvcnQg
Zm9yIHRoaXMgd2lsbCBiZSBjb21pbmcgc29vbi4gQnV0LCB3ZSBjYW4gZW5hYmxlIHRoaXMgbW9k
ZSBieSBkZWZhdWx0LiAKPiAKPiBBbHNvLCBmcm9tIHdoYXQgVmluaWNpdXMgdGVsbHMgbWUsIG9m
ZmxvYWQgbW9kZXMgZm9yIGNicywgZXRmIGFuZCBtcXByaW8gYXJlIGFsc28gZGlzYWJsZWQgYnkg
ZGVmYXVsdC4gU28sIGl0IHdpbGwgbWFrZSBtb3JlIHNlbnNlIHRvIGtlZXAgaXQgZGlzYWJsZWQg
dG8gYmUgY29uc2lzdGVudCB3aXRoIG90aGVyIHFkaXNjcyBzaW1pbGFyIHRvIHRoaXMgb25lLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
