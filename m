Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9903722BB2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 17:44:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7916A8214D;
	Mon,  5 Jun 2023 15:44:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7916A8214D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685979877;
	bh=UufwogSMxAHwb/gcAapXmJjg9OypW+wfWOCoX4CYAZE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HshOVwmw0wggqfmRL7pwHqRZbmzueXzR/WA5SL8KDRQcyCInqE1cGA5iJQ8CxAhqb
	 YhqLWlWCyZC43fPZLdVvSyZGfVEZjClP1vrcO3p0XySKs+4EOSCAzby1HAlkSg8xIu
	 Z2DhYQKkAgDJG4/Gp2PeaVAF1ezzXy3XG18xcNaRMusmXfv5VPoJredPUT2dwiGwYA
	 u2uiDamuKuuwhyQPNe7fo7GRyuA55s1lCVUD4PHuH87KNZZ3GgTtCVjqu/2tFSrkSc
	 Iek/HCljgbUqCVCQcgWf15DbXGeESnh502mxbTEmpccQ7oeTkT4VYFeACO9cOFm4Yi
	 oKUDhTBWb6fVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RtMBiw5yRyyP; Mon,  5 Jun 2023 15:44:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 341478214C;
	Mon,  5 Jun 2023 15:44:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 341478214C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E08F31BF424
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 15:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C4C5260FB2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 15:44:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4C5260FB2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q1ojhUs4YrMz for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 15:44:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57EC460F17
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com
 [IPv6:2607:f8b0:4864:20::32c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 57EC460F17
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 15:44:30 +0000 (UTC)
Received: by mail-ot1-x32c.google.com with SMTP id
 46e09a7af769-6af81142b6dso4637166a34.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jun 2023 08:44:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685979869; x=1688571869;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=A90Mk0zhGtoGmxJxaQafKo6YzBEDqEFCob4w8O1kVaw=;
 b=CoQbOGcgmHI9H+Cpk/gquZ3P+0QbxemQQ+F+KH2+AWYWfRim2zG+eNojW2ACu1YLbV
 pJThH4xJWawVwF48cRAN38uWZvA4xUBQ4ZMu2V3MM9P5m12NLvpLwOqjdy48MX/8m8IS
 qiqvJmRVypGmNAWXRyPSt7ODNRN7tuvm6zHtL5d31k/6jmtf7aRCmA14vyWtnJJFXxVV
 Dv3jnsmAcVufpsdjQaCAlI2tMLENETSflbS51g5szN8dJPX7ojvmOx1J5aVWsfP6NuRh
 G7I6OSApYJI/BrtgaqOEyGB+j774KJInZZX4LkUTEf3WqeyyT1dDWtcVwBl64vdrartb
 daOw==
X-Gm-Message-State: AC+VfDwYzV2a70bQELuRO+890xJy7GaSlkwee09KyBOlZHWZmLXTZG6A
 cSekbarVYidDpQ3C56H0e7rYemqWOZKk9JQvGKaAoQ==
X-Google-Smtp-Source: ACHHUZ4Tfjk8gbHFmBO99ECiDhiiGggbXGg15OtrRRxs+VRwIA/aSz9fY0Br9IG0xAYSxlcMfU2eCUAgu9MaGurWj+k=
X-Received: by 2002:a05:6358:c4a9:b0:129:d026:e9f2 with SMTP id
 fg41-20020a056358c4a900b00129d026e9f2mr188619rwb.11.1685979868907; Mon, 05
 Jun 2023 08:44:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
In-Reply-To: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
From: Jamal Hadi Salim <jhs@mojatatu.com>
Date: Mon, 5 Jun 2023 11:44:17 -0400
Message-ID: <CAM0EoMnqscw=OfWzyEKV10qFW5+EFMd5JWZxPSPCod3TvqpnuQ@mail.gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mojatatu-com.20221208.gappssmtp.com; s=20221208; t=1685979869; x=1688571869; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=A90Mk0zhGtoGmxJxaQafKo6YzBEDqEFCob4w8O1kVaw=;
 b=zuuikebe6licttv8Tse/5e+gzZZ4D4z2gmA3z8mMAX2SdXkArSL4TUDb45v6l9IvZm
 b6obQZQle3xp/hYInx2KWqpyQimwN/Zvin1udaN/o69/8313VKYotWXdbfUbz35UEKSz
 2l+BkCjqdSvM9Sw+7OpfSR7iaJ8L+gpE///pmBMS5iX82JUaP0KajO2hFaFAD5BAA0fm
 CKO4vHpAzRbeqfq+FhBbKhFOfcmIyCPYp33PFMGhgmoB60APrXrx/XIPVWVTRWZTnwEi
 n78sZ3QHSwLwLTkFCoHIC7aqzfCR99mAzaU+vvCvm5LfLGdxzZIRWJUFMo+8EV4w/Ae6
 Q/tQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=mojatatu-com.20221208.gappssmtp.com
 header.i=@mojatatu-com.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=zuuikebe
Subject: Re: [Intel-wired-lan] [PATCH RESEND net-next 0/5] Improve the
 taprio qdisc's relationship with its children
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Peilin Ye <yepeilin.cs@gmail.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBKdW4gMiwgMjAyMyBhdCA2OjM44oCvQU0gVmxhZGltaXIgT2x0ZWFuIDx2bGFkaW1p
ci5vbHRlYW5AbnhwLmNvbT4gd3JvdGU6Cj4KPiBbIE9yaWdpbmFsIHBhdGNoIHNldCB3YXMgbG9z
dCBkdWUgdG8gYW4gYXBwYXJlbnQgdHJhbnNpZW50IHByb2JsZW0gd2l0aAo+IGtlcm5lbC5vcmcn
cyBETlNCTCBzZXR1cC4gVGhpcyBpcyBhbiBpZGVudGljYWwgcmVzZW5kLiBdCj4KPiBQcm9tcHRl
ZCBieSBWaW5pY2l1cycgcmVxdWVzdCB0byBjb25zb2xpZGF0ZSBzb21lIGNoaWxkIFFkaXNjCj4g
ZGVyZWZlcmVuY2VzIGluIHRhcHJpbzoKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYv
ODdlZG14djd4Mi5mc2ZAaW50ZWwuY29tLwo+Cj4gSSByZW1lbWJlcmVkIHRoYXQgSSBoYWQgbGVm
dCBzb21lIHVuZmluaXNoZWQgd29yayBpbiB0aGlzIFFkaXNjLCBuYW1lbHkKPiBjb21taXQgYWY3
YjI5YjFkZWFhICgiUmV2ZXJ0ICJuZXQvc2NoZWQ6IHRhcHJpbzogbWFrZSBxZGlzY19sZWFmKCkg
c2VlCj4gdGhlIHBlci1uZXRkZXYtcXVldWUgcGZpZm8gY2hpbGQgcWRpc2NzIiIpLgo+Cj4gVGhp
cyBwYXRjaCBzZXQgcmVwcmVzZW50cyBhbm90aGVyIHN0YWIgYXQsIGVzc2VudGlhbGx5LCB3aGF0
J3MgaW4gdGhlCj4gdGl0bGUuIE5vdCBvbmx5IGRvZXMgdGFwcmlvIG5vdCBwcm9wZXJseSBkZXRl
Y3Qgd2hlbiBpdCdzIGdyYWZ0ZWQgYXMgYQo+IG5vbi1yb290IHFkaXNjLCBidXQgaXQgYWxzbyBy
ZXR1cm5zIGluY29ycmVjdCBwZXItY2xhc3Mgc3RhdHMuCj4gRXZlbnR1YWxseSwgVmluaWNpdXMn
IHJlcXVlc3QgaXMgYWRkcmVzc2VkIHRvbywgYWx0aG91Z2ggaW4gYSBkaWZmZXJlbnQKPiBmb3Jt
IHRoYW4gdGhlIG9uZSBoZSByZXF1ZXN0ZWQgKHdoaWNoIHdhcyBwdXJlbHkgY29zbWV0aWMpLgo+
Cj4gUmV2aWV3IGZyb20gcGVvcGxlIG1vcmUgZXhwZXJpZW5jZWQgd2l0aCBRZGlzY3MgdGhhbiBt
ZSB3b3VsZCBiZQo+IGFwcHJlY2lhdGVkLiBJIHRyaWVkIG15IGJlc3QgdG8gZXhwbGFpbiB3aGF0
IEkgY29uc2lkZXIgdG8gYmUgcHJvYmxlbXMuCgpJIGhhdmVudCBiZWVuIGZvbGxvd2luZyAtIGJ1
dCBpZiB5b3Ugc2hvdyBtZSBzYW1wbGUgaW50ZW5kZWQgdGMKY29uZmlncyBmb3IgYm90aCBzL3cg
YW5kIGhhcmR3YXJlIG9mZmxvYWRzIGkgY2FuIGNvbW1lbnQuCgpJbiBteSBjdXJzb3J5IGxvb2sg
aSBhc3N1bWVkIHlvdSB3YW50ZWQgdG8gZ28gYWxvbmcgdGhlIHBhdGggb2YgbXFwcmlvCndoZXJl
IG5vdGhpbmcgbXVjaCBoYXBwZW5zIGluIHRoZSBzL3cgZGF0YXBhdGggb3RoZXIgdGhhbiByZXF1
ZXVlcwp3aGVuIHRoZSB0eCBoYXJkd2FyZSBwYXRoIGlzIGJ1c3kgKG5vdGljZSBpdCBpcyBtaXNz
aW5nIGFuCmVucXVldWUvZGVxdWUgb3BzKS4gSW4gdGhhdCBjYXNlIHRoZSBoYXJkd2FyZSBzZWxl
Y3Rpb24gaXMgZXNzZW50aWFsbHkKb2YgYSBETUEgcmluZyBiYXNlZCBvbiBza2IgdGFncy4gSXQg
c2VlbXMgeW91IHRvb2sgaXQgdXAgYSBub3RjaCBieQppbmZhY3QgaGF2aW5nIGEgY2hvaWNlIG9m
IHdoZXRoZXIgdG8gaGF2ZSBwdXJlIHMvdyBvciBvZmZsb2FkIHBhdGguCgpjaGVlcnMsCmphbWFs
Cj4gSSBhbSBkZWxpYmVyYXRlbHkgdGFyZ2V0aW5nIG5ldC1uZXh0IGJlY2F1c2UgdGhlIGNoYW5n
ZXMgYXJlIHRvbwo+IGludmFzaXZlIGZvciBuZXQgLSB0aGV5IHdlcmUgcmV2ZXJ0ZWQgZnJvbSBz
dGFibGUgb25jZSBhbHJlYWR5Lgo+Cj4gVmxhZGltaXIgT2x0ZWFuICg1KToKPiAgIG5ldC9zY2hl
ZDogdGFwcmlvOiBkb24ndCBhY2Nlc3MgcS0+cWRpc2NzW10gaW4gdW5vZmZsb2FkZWQgbW9kZSBk
dXJpbmcKPiAgICAgYXR0YWNoKCkKPiAgIG5ldC9zY2hlZDogdGFwcmlvOiBrZWVwIGNoaWxkIFFk
aXNjIHJlZmNvdW50IGVsZXZhdGVkIGF0IDIgaW4gb2ZmbG9hZAo+ICAgICBtb2RlCj4gICBuZXQv
c2NoZWQ6IHRhcHJpbzogdHJ5IGFnYWluIHRvIHJlcG9ydCBxLT5xZGlzY3NbXSB0byBxZGlzY19s
ZWFmKCkKPiAgIG5ldC9zY2hlZDogdGFwcmlvOiBkZWxldGUgbWlzbGVhZGluZyBjb21tZW50IGFi
b3V0IHByZWFsbG9jYXRpbmcgY2hpbGQKPiAgICAgcWRpc2NzCj4gICBuZXQvc2NoZWQ6IHRhcHJp
bzogZHVtcCBjbGFzcyBzdGF0cyBmb3IgdGhlIGFjdHVhbCBxLT5xZGlzY3NbXQo+Cj4gIG5ldC9z
Y2hlZC9zY2hfdGFwcmlvLmMgfCA2MCArKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9u
cygtKQo+Cj4gLS0KPiAyLjM0LjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
