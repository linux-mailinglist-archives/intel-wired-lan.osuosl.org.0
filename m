Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F5D6C8291
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Mar 2023 17:48:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F070361645;
	Fri, 24 Mar 2023 16:48:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F070361645
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679676502;
	bh=CJe80AE5tFFuwFH0o0bbFGTOV+uPGbmUqIJC/9HdxFk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L5ceISwGXK6VRZHzWZmiFApZ4TGyMTcWHtImFBCULJlRlVPxJ/+UOysdcHgoJE6ny
	 ewSzm6jrSUuxpoDVo3PIeKDl80Sb1p1syP0Zz8KNl9hmNoW+/YbRpTlm2Jzis3vpOW
	 1A57tra9Ja2yhMUczM2W4bTUbF8l4GwTS8gx5Q2PTYXRS1/SMQ+APhit9Xs1WagXsc
	 YpUm5LK+HyK3kLA4L/6cD9rG5DQdUqAunw960G4uWbQq6uppArGwzJ8MKeMNsnjOyx
	 9eEBjV3SKr/+Ha5mGNn5KKlpd++ylUZeVffk41D8//ME1b0cdpCM6RpUxWuDcgdQ9a
	 HnId8zya+c+nA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iOL37RUuPB63; Fri, 24 Mar 2023 16:48:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD2F96001B;
	Fri, 24 Mar 2023 16:48:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD2F96001B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6CAD41BF28A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 16:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4DD3D41E44
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 16:48:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DD3D41E44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k6wWKHADZozU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Mar 2023 16:48:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5FE2141E33
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5FE2141E33
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 16:48:14 +0000 (UTC)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-464-5_CY9r77O9GS6VrR5XwlGw-1; Fri, 24 Mar 2023 12:48:11 -0400
X-MC-Unique: 5_CY9r77O9GS6VrR5XwlGw-1
Received: by mail-ed1-f72.google.com with SMTP id
 q13-20020a5085cd000000b004af50de0bcfso4055959edh.15
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 09:48:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679676490;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8lXErXc6A9Ige0eBe34SgPT2qPHuUl9vd90MHbqks0k=;
 b=jXDj9oDEkbnTlr+bQx6U9av1oTEsXQsUlGauLFVDbDHzZiNzDKytJM1isVEnWkoect
 6eI1ZdD8b+bzQjCgTHCEKx4vuxP3vzUFROehSQOdp+2HU3vxTVSmlIaNivuQNZjxDQqV
 tG7Bxo6uJacYsTs2aKljUfcP5TcF6FVJJkqJO0aTkgdzFH2PjEoHekZC9/OSYtw84Lpv
 kejd2Aq2IlhXHK0/g08DBVzVzMfOT60IAoiji319Rt/JlKzn/+sGm8DaVRAuKhnLOnGR
 VFO1eDuM0wSyLbeoU7Nx98aZPcmZWEq56mEeWrULE6Z+Uo+MOh+78BNyuBJR5wEH/xu/
 wyMg==
X-Gm-Message-State: AAQBX9e7c9O3h+yKMlxkKI11fOfEJqRp6pW0igxzbMyYHocZlkvaTikw
 Yd5tJ5uKP5tKS4k64F/+jlclH168621Ascx5BuLRd8u+Mg85t9OAQbEZMSUr7wkRhLJwelIw/Vd
 aZ3ljzVGPanmVr14mmBHudSoF5pbn6/dYS9ngneGF0jUZuQ==
X-Received: by 2002:a17:906:ee89:b0:92e:a234:110a with SMTP id
 wt9-20020a170906ee8900b0092ea234110amr1769008ejb.3.1679676490583; 
 Fri, 24 Mar 2023 09:48:10 -0700 (PDT)
X-Google-Smtp-Source: AKy350at/pO6nC/IxELU9UqZUkktMJ7CHSES5tRfD/HbHx60I5xOxXx6pK8jGlEM3+Ep857ZxLnvRhnwNjl4HVEkRxQ=
X-Received: by 2002:a17:906:ee89:b0:92e:a234:110a with SMTP id
 wt9-20020a170906ee8900b0092ea234110amr1768996ejb.3.1679676490320; Fri, 24 Mar
 2023 09:48:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230217120541.16745-1-karol.kolacinski@intel.com>
In-Reply-To: <20230217120541.16745-1-karol.kolacinski@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Fri, 24 Mar 2023 17:47:59 +0100
Message-ID: <CADEbmW0yGTU3u-zznKprkS8Jc=JzvZWMC36wYfszc4SAZBYE5A@mail.gmail.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679676493;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8lXErXc6A9Ige0eBe34SgPT2qPHuUl9vd90MHbqks0k=;
 b=BlQp5fy+BSM4w3CH+fK9ZKHDUb6ihOvhINfb5QytdpDMTfZjOUKnS6VGv7Ay2VpvAiC2k5
 KnhFOdyFs2A2chHzCxf4NaBUZj+Cp2UzkaMLpOSa7aqy4/95NvHylYAJh2x3qB2+/8LvF4
 MqI3rO57W7Q7mOepVXJX+AH0WknXNdg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=BlQp5fy+
Subject: Re: [Intel-wired-lan] [PATCH v3 net] ice: Write all GNSS buffers
 instead of first one
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBGZWIgMTcsIDIwMjMgYXQgMTowNuKAr1BNIEthcm9sIEtvbGFjaW5za2kKPGthcm9s
LmtvbGFjaW5za2lAaW50ZWwuY29tPiB3cm90ZToKPgo+IFdoZW4gdXNlciB3cml0ZXMgbXVsdGlw
bGUgbWVzc2FnZXMgaW4gYSBzaG9ydCBwZXJpb2Qgb2YgdGltZSwgdGhlIGRyaXZlcgo+IHdyaXRl
cyBvbmx5IHRoZSBmaXJzdCBvbmUgYW5kIGJ1ZmZlcnMgb3RoZXJzIGluIGEgbGlua2VkIGxpc3Qu
Cj4KPiBGaXggdGhpcyBiZWhhdmlvciB0byB3cml0ZSBhbGwgcGVuZGluZyBidWZmZXJzIGluc3Rl
YWQgb2Ygb25seSB0aGUgZmlyc3QKPiBvbmUuCj4KPiBUbyByZXByb2R1Y2UgdGhpcyBpc3N1ZSwg
b3BlbiB0aGUgR05TUyBkZXZpY2Ugd2l0aCBjYXQsIHNlbmQgYSBmZXcKPiBtZXNzYWdlcyB0byB0
aGUgZGV2aWNlLCBlLmcuIG11bHRpcGxlIGNvbW1hbmRzIHVzaW5nIGVjaG8uIFRoZSBpc3N1ZQo+
IG1hbmlmZXN0cyBpdHNlbGYgYXMgcmVzcG9uc2UgdG8gb25seSBmaXJzdCBtZXNzYWdlLiBUaGVu
LCBhZnRlciBpc3N1aW5nCj4gYSBzaW5nbGUgb3IgbXVsdGlwbGUgY29tbWFuZHMsIHVzZXIgY2Fu
IHNlZSB0aGF0IHJlc3BvbnNlIGZyb20gdGhlCj4gZGV2aWNlIHdhcyBub3QgZm9yIHJlY2VudCBv
bmVzIGJ1dCBmb3IgdGhlIG5leHQgc2luZ2xlIGJ1ZmZlcmVkIG9uZSBmcm9tCj4gdGhlIGZpcnN0
IGJhdGNoLgoKQWx0aG91Z2ggdGhlIHBhdGNoIGRvZXMgZml4IHRoZSBkZXNjcmliZWQgaXNzdWUg
aW4gbXkgdGVzdGluZywKSSBiZWxpZXZlIHRoZSBidWZmZXJpbmcgbXVzdCBiZSBlbGltaW5hdGVk
LgpTZWUgbXkgcGF0Y2ggImljZTogbWFrZSB3cml0ZXMgdG8gL2Rldi9nbnNzWCBzeW5jaHJvbm91
cyIsCmh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9pbnRlbC13aXJlZC1sYW4v
cGF0Y2gvMjAyMzAzMjQxNjIwNTYuMjAwNzUyLTEtbXNjaG1pZHRAcmVkaGF0LmNvbS8KCk1pY2hh
bAoKPiBGaXhlczogZDZiOThjOGQyNDJhICgiaWNlOiBhZGQgd3JpdGUgZnVuY3Rpb25hbGl0eSBm
b3IgR05TUyBUVFkiKQo+IFNpZ25lZC1vZmYtYnk6IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtv
bGFjaW5za2lAaW50ZWwuY29tPgo+IC0tLQo+IFYyIC0+IFYzOiBTd2l0Y2hlZCB0byBuZXQtcXVl
dWUgdHJlZSBpbnN0ZWFkIG9mIG5leHQtcXVldWUuCj4gVjEgLT4gVjI6IEFkZGVkIHJlcHJvZHVj
dGlvbiBzdGVwcyBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuCj4KPiAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9nbnNzLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfZ25zcy5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9nbnNzLmMKPiBpbmRleCA0M2UxOTliNWI1MTMuLjAyNTMzMDE0ZjI0YSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2duc3MuYwo+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZ25zcy5jCj4gQEAgLTgyLDcgKzgyLDcg
QEAgc3RhdGljIHZvaWQgaWNlX2duc3Nfd3JpdGVfcGVuZGluZyhzdHJ1Y3Qga3RocmVhZF93b3Jr
ICp3b3JrKQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHdyaXRlX3dvcmspOwo+ICAgICAgICAgc3RydWN0IGljZV9wZiAqcGYgPSBnbnNzLT5iYWNrOwo+
Cj4gLSAgICAgICBpZiAoIWxpc3RfZW1wdHkoJmduc3MtPnF1ZXVlKSkgewo+ICsgICAgICAgd2hp
bGUgKCFsaXN0X2VtcHR5KCZnbnNzLT5xdWV1ZSkpIHsKPiAgICAgICAgICAgICAgICAgc3RydWN0
IGduc3Nfd3JpdGVfYnVmICp3cml0ZV9idWYgPSBOVUxMOwo+ICAgICAgICAgICAgICAgICB1bnNp
Z25lZCBpbnQgYnl0ZXM7Cj4KPiAtLQo+IDIuMzcuMgo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
Cj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
