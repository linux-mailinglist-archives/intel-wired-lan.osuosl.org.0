Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2636052347B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 15:41:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE49783E3E;
	Wed, 11 May 2022 13:41:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n19ztOaXAaFr; Wed, 11 May 2022 13:41:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B878883E38;
	Wed, 11 May 2022 13:41:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D4531BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 09:13:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF71A60BFC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 09:13:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eHH6mDnKskEe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 09:13:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61B0860BE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 09:13:11 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id j14so1300820plx.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 02:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=caUdEXgEVSs0kuMmNBlg8+o07OgsFwK73z/jdG/sSCw=;
 b=GVUhA0VQq48r7t+9HqUSitkWIadgQr9wvzK2elcHTuWN5edcIU4Trwg4P6r3dVoJYC
 Q5fqOhY+dqZHlWgocJjv0TXr3nRAK3bb58+QhzPw71xFqPQmQ8n+N8Mt9xqbGH/zegmh
 LJ1cmRfbhjv9VtfFtNh24bA6WN4TKBW/9ytUE7M/H1zS4nWWJIB+o5xcKzP99MbAfbQA
 2aIb41ZOHlcuzb6vdYSBnItWez8vf8BhI+XUmIumbC1vpbsuqcJsxCZqwhlRmy1nd+RN
 KHCtFnQuG7QQeZRNeWaTgMoEB5ah5gwnTDsR+XoATzPQLewVOnLAXTXB+Hctlj5DcO3s
 WN2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=caUdEXgEVSs0kuMmNBlg8+o07OgsFwK73z/jdG/sSCw=;
 b=sRavbIar6WFzcCjJ+K7iru8T0FlAI17d955nMpGi04gsJi7cmB3pLLTFXJyoQE96yH
 QNv1FaeyltKJiyTvXgXtwOLfRkBYdAftg+YYM3xl0Tl9vpuQuMfEUxGN0OpKBFdUNrfP
 5peXgqQq3ZIK0hWUkMjQ/PsQKTxhjXV9HAxQ0r3c3PrE9/DjJX58ySE4b38h7Bhrd1fX
 WxB6to+kfVO0ObdF1/nlqo9HzxKWlUnnBAXpehgCVjcLd2n0MyRDrNdaQWh5Indi21x0
 I21lErbKGfCNqYnlUUe4z3lL2tuacxQoUlEFJVO4M/h7fhAkflweFahFZ2SFrpyuFhzZ
 1Rvg==
X-Gm-Message-State: AOAM5302hdcor6TVjMgJHcw2bKUukZNZd9n+28/sdlSBpOXvOS0qwyKD
 Pa0qIW3OeDSHNufPly9xd6f7xHxgEUTH1qGXJ+O7FA==
X-Google-Smtp-Source: ABdhPJwmMs6CDdH2rOsFTP1PxEzN66o6t6oq61/hdcP4tRcEBlIpsFDcBpfsgDKXnU5wySkQG17XBQ==
X-Received: by 2002:a17:90b:4a90:b0:1dc:aec3:c04 with SMTP id
 lp16-20020a17090b4a9000b001dcaec30c04mr4280065pjb.118.1652260390756; 
 Wed, 11 May 2022 02:13:10 -0700 (PDT)
Received: from [192.168.42.10] ([23.91.97.158])
 by smtp.gmail.com with ESMTPSA id
 x185-20020a6386c2000000b003c14af5063dsm1184476pgd.85.2022.05.11.02.13.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 May 2022 02:13:10 -0700 (PDT)
Message-ID: <d42df7fa-0eb1-bf89-6e8f-f4fc5ff138b2@gmail.com>
Date: Wed, 11 May 2022 17:13:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20220510025755.19047-1-xiaolinkui@kylinos.cn>
 <6b16f60d-0f76-f876-0881-de09ecbbbc89@molgen.mpg.de>
From: Linkui Xiao <xiaolinkui@gmail.com>
In-Reply-To: <6b16f60d-0f76-f876-0881-de09ecbbbc89@molgen.mpg.de>
X-Mailman-Approved-At: Wed, 11 May 2022 13:40:58 +0000
Subject: Re: [Intel-wired-lan] [PATCH] igb: Convert a series of if
 statements to switch case
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
Cc: netdev@vger.kernel.org, Linkui Xiao <xiaolinkui@kylinos.cn>,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBQYXVsOgoKVGhhbmsgeW91IGZvciB5b3VyIHJlcGx5IGFuZCBzdWdnZXN0aW9ucywgSSB3
aWxsIHNlbmQgdGhlIFYyIHZlcnNpb24gc29vbi4KCk9uIDUvMTEvMjIgMTQ6MzIsIFBhdWwgTWVu
emVsIHdyb3RlOgo+IERlYXIgTGlua3VpLAo+Cj4KPiBUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2gu
Cj4KPiBBbSAxMC4wNS4yMiB1bSAwNDo1NyBzY2hyaWViIHhpYW9saW5rdWk6Cj4+IEZyb206IExp
bmt1aSBYaWFvPHhpYW9saW5rdWlAa3lsaW5vcy5jbj4KPgo+IFBsZWFzZSBhZGQgYSBzcGFjZSBi
ZWZvcmUgdGhlIDwuCj4KPj4gQ29udmVydCBhIHNlcmllcyBvZiBpZiBzdGF0ZW1lbnRzIHRoYXQg
aGFuZGxlIGRpZmZlcmVudCBldmVudHMgdG8KPj4gYSBzd2l0Y2ggY2FzZSBzdGF0ZW1lbnQgdG8g
c2ltcGxpZnkgdGhlIGNvZGUuCj4KPiAoTml0OiBQbGVhc2UgdXNlIDc1IGNoYXJhY3RlcnMgcGVy
IGxpbmUuKQo+Cj4+IFNpZ25lZC1vZmYtYnk6IExpbmt1aSBYaWFvPHhpYW9saW5rdWlAa3lsaW5v
cy5jbj4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFp
bi5jIHwgMTIgKysrKysrKystLS0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiX21haW4uYyAKPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2IvaWdiX21haW4uYwo+PiBpbmRleCAzNGIzM2IyMWUwZGMuLjRjZTA3MThlZWZmNiAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMKPj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMKPj4gQEAgLTQ1ODgs
MTMgKzQ1ODgsMTcgQEAgc3RhdGljIGlubGluZSB2b2lkIAo+PiBpZ2Jfc2V0X3ZmX3ZsYW5fc3Ry
aXAoc3RydWN0IGlnYl9hZGFwdGVyICphZGFwdGVyLAo+PiDCoMKgwqDCoMKgIHN0cnVjdCBlMTAw
MF9odyAqaHcgPSAmYWRhcHRlci0+aHc7Cj4+IMKgwqDCoMKgwqAgdTMyIHZhbCwgcmVnOwo+PiDC
oCAtwqDCoMKgIGlmIChody0+bWFjLnR5cGUgPCBlMTAwMF84MjU3NikKPj4gK8KgwqDCoCBzd2l0
Y2ggKGh3LT5tYWMudHlwZSkgewo+PiArwqDCoMKgIGNhc2UgZTEwMDBfdW5kZWZpbmVkOgo+PiAr
wqDCoMKgIGNhc2UgZTEwMDBfODI1NzU6Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+
IC0KPj4gLcKgwqDCoCBpZiAoaHctPm1hYy50eXBlID09IGUxMDAwX2kzNTApCj4+ICvCoMKgwqAg
Y2FzZSBlMTAwMF9pMzUwOgo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gRTEwMDBfRFZNT0xS
KHZmbik7Cj4+IC3CoMKgwqAgZWxzZQo+PiArwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+ICvCoMKg
wqAgZGVmYXVsdDoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IEUxMDAwX1ZNT0xSKHZmbik7
Cj4+ICvCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4gK8KgwqDCoCB9Cj4+IMKgIMKgwqDCoMKgwqAg
dmFsID0gcmQzMihyZWcpOwo+PiDCoMKgwqDCoMKgIGlmIChlbmFibGUpCj4KPiBSZXZpZXdlZC1i
eTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4KPgo+Cj4gS2luZCByZWdhcmRz
LAo+Cj4gUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
