Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 137924EC965
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Mar 2022 18:13:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E32B781A8E;
	Wed, 30 Mar 2022 16:13:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xpTEyXufzE_C; Wed, 30 Mar 2022 16:13:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE8CE813DD;
	Wed, 30 Mar 2022 16:13:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEC491BF341
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 16:13:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0536415D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 16:13:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: invalid data)" header.d=pensando.io
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jbNwJP1Bd2Xv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Mar 2022 16:13:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B254A4099D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 16:13:25 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id i11so9558334plg.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 09:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=M/Zoar5SSp1EsMP8iHI71jE4Bd441XHopIDF3wpbTfY=;
 b=qMux20Kc25sqN7xL6UbJubscfJ+vC0l3I50pFZNyq/Dj/Lh0oonjEDQcpIX1AsPfO9
 l9AEjhTkNGqSULrSveCx6D/oebLCIZ2JYtlKugaOKZ2yZIxxvMRkiSiRoaVlJcK7x4v5
 LL5YsQl6DSylAwjZisELmA/Pcs+BNqP6K5rdrjc/eRkBNYtj7lAqiR28ugGZ/VrWGx5S
 M0jUvoK5XdOj104DOsebwYSNkfUTbHbFQ9FrqFy6qOizNBmOjYoOFUb6rK6bPpvKhgIJ
 R0ms0E24a2T4DEtb0FLPl7TaTqHOZNR4aDLMdIgFba8zF7qSM98u6Ygvt9sIT9rJrvy+
 FqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=M/Zoar5SSp1EsMP8iHI71jE4Bd441XHopIDF3wpbTfY=;
 b=eqfEkHalSGc4ydU/AiRFHm/Q9MZdCWMp680jB9XOb9i8gsRJjPre4qDDFkx39bBnnq
 4bQWcmUk8+qfWw0cKCmM4TiIHxwjJ3cNWV3t1Yq5H8sCZ5asEvGlVHdPxLS3NDBDfNUi
 pe0wIQTVv6yR2XBiNwN5xJbrV3/kelzbV4HmM+TnK60DooSkt1vaAU/lOEE8fE60r9ei
 J6e2l/WY9Huu84wkLkwkEz1MvjTMAH4dFqxjXl0DARkXOMUA53WTynVRHS4VkgdQWT28
 0aVf9BZlAaZrx0VchHlI69zV6GycQ83rk63KmAirVWnFUh9jPXooSVYTDr5GUkDW03xN
 /0Rg==
X-Gm-Message-State: AOAM530sPjHyBh4q31u51zgMD+BhqOuecCLMu7FNft7QOrH787N+TiGx
 owit3uwVsAW5DIC5nMFy9VrVJg==
X-Google-Smtp-Source: ABdhPJwVhFbLalbo/diRBofUrSg2cJbTuSP+bItPvIL4oe3IFuRyggKDpJSO8eSCiYc1OscLOnef3g==
X-Received: by 2002:a17:903:2285:b0:154:7dd3:c949 with SMTP id
 b5-20020a170903228500b001547dd3c949mr61236plh.108.1648656805022; 
 Wed, 30 Mar 2022 09:13:25 -0700 (PDT)
Received: from [192.168.0.2] ([50.53.169.105])
 by smtp.gmail.com with ESMTPSA id
 h13-20020a056a00230d00b004f427ffd485sm26850187pfh.143.2022.03.30.09.13.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 09:13:24 -0700 (PDT)
Message-ID: <b201a3ed-5698-4e91-adc9-34c938e43668@pensando.io>
Date: Wed, 30 Mar 2022 09:13:21 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.7.0
Content-Language: en-US
To: Leon Romanovsky <leon@kernel.org>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <3702fad8a016170947da5f3c521a9251cf0f4a22.1648637865.git.leonro@nvidia.com>
From: Shannon Nelson <snelson@pensando.io>
In-Reply-To: <3702fad8a016170947da5f3c521a9251cf0f4a22.1648637865.git.leonro@nvidia.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: ensure IPsec VF<->PF
 compatibility
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Raed Salem <raeds@nvidia.com>,
 Shannon Nelson <shannon.nelson@oracle.com>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMy8zMC8yMiA0OjAxIEFNLCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6Cj4gRnJvbTogTGVvbiBS
b21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4KPgo+IFRoZSBWRiBkcml2ZXIgY2FuIGZvcndh
cmQgYW55IElQc2VjIGZsYWdzIGFuZCBzdWNoIG1ha2VzIHRoZSBmdW5jdGlvbgo+IGlzIG5vdCBl
eHRlbmRhYmxlIGFuZCBwcm9uZSB0byBiYWNrd2FyZC9mb3J3YXJkIGluY29tcGF0aWJpbGl0eS4K
Pgo+IElmIG5ldyBzb2Z0d2FyZSBydW5zIG9uIFZGLCBpdCB3b24ndCBrbm93IHRoYXQgUEYgY29u
ZmlndXJlZCBzb21ldGhpbmcKPiBjb21wbGV0ZWx5IGRpZmZlcmVudCBhcyBpdCAia25vd3MiIG9u
bHkgWEZSTV9PRkZMT0FEX0lOQk9VTkQgZmxhZy4KPgo+IEZpeGVzOiBlZGEwMzMzYWMyOTMgKCJp
eGdiZTogYWRkIFZGIElQc2VjIG1hbmFnZW1lbnQiKQo+IFJldmlld2VkLWJ5OiBSYWVkIFNhbGVt
IDxyYWVkc0BudmlkaWEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVv
bnJvQG52aWRpYS5jb20+Cj4gLS0tCj4gVGhlcmUgaXMgbm8gc2ltcGxlIGZpeCBmb3IgdGhpcyBW
Ri9QRiBpbmNvbXBhdGliaWxpdHkgYXMgbG9uZyBhcyBGVwo+IGRvZXNuJ3QgZmlsdGVyL2RlY2xp
bmUgdW5zdXBwb3J0ZWQgb3B0aW9ucyB3aGVuIGNvbnZleSBtYWlsYm94IGZyb20gVkYKPiB0byBQ
Ri4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2lwc2Vj
LmMgfCA0ICsrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9p
eGdiZV9pcHNlYy5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfaXBz
ZWMuYwo+IGluZGV4IGU1OTZlMWE5ZmM3NS4uMjM2ZjI0NGUzZjY1IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2lwc2VjLmMKPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9pcHNlYy5jCj4gQEAgLTkwMyw3ICs5
MDMsOSBAQCBpbnQgaXhnYmVfaXBzZWNfdmZfYWRkX3NhKHN0cnVjdCBpeGdiZV9hZGFwdGVyICph
ZGFwdGVyLCB1MzIgKm1zZ2J1ZiwgdTMyIHZmKQo+ICAgCS8qIFR4IElQc2VjIG9mZmxvYWQgZG9l
c24ndCBzZWVtIHRvIHdvcmsgb24gdGhpcwo+ICAgCSAqIGRldmljZSwgc28gYmxvY2sgdGhlc2Ug
cmVxdWVzdHMgZm9yIG5vdy4KPiAgIAkgKi8KPiAtCWlmICghKHNhbS0+ZmxhZ3MgJiBYRlJNX09G
RkxPQURfSU5CT1VORCkpIHsKPiArCXNhbS0+ZmxhZ3MgPSBzYW0tPmZsYWdzICYgflhGUk1fT0ZG
TE9BRF9JUFY2Owo+ICsJaWYgKCEoc2FtLT5mbGFncyAmIFhGUk1fT0ZGTE9BRF9JTkJPVU5EKSB8
fAo+ICsJICAgIHNhbS0+ZmxhZ3MgJiB+WEZSTV9PRkZMT0FEX0lOQk9VTkQpIHsKClNvIGFmdGVy
IHN0cmlwcGluZyB0aGUgSVBWNiBmbGFnLCB5b3UncmUgY2hlY2tpbmcgdG8gYmUgc3VyZSB0aGF0
IApJTkJPVU5EIGlzIHRoZSBvbmx5IGZsYWcgZW5hYmxlZCwgcmlnaHQ/CkNvdWxkIHlvdSB1c2UK
IMKgwqDCoCBpZiAoc2FtLT5mbGFncyAhPSBYRlJNX09GRkxPQURfSU5CT1VORCkgewppbnN0ZWFk
PwoKc2xuCgo+ICAgCQllcnIgPSAtRU9QTk9UU1VQUDsKPiAgIAkJZ290byBlcnJfb3V0Owo+ICAg
CX0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
