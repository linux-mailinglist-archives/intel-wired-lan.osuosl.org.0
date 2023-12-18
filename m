Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFE5817792
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 17:32:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 247C9404A0;
	Mon, 18 Dec 2023 16:32:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 247C9404A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702917173;
	bh=cdoEpa+0zDI6yag6qe/U26PrPHHGGwqfLU/6rfSCoW8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o0jWaUCtGVO1mYMjDUwhjJBE+8uDyhsBBOPJCIC83p68ziI9XvtaviHiN7lBZi+d0
	 bmU2tQzvlKOYVSg56xqnU7HeSgMWy7w4OJOUZUjkuRuIc9SmYKt4FhH7Vf9G+VK24e
	 wDsJlb36yh8blkXTqMQXaCf6M7Ds8Woan/IvzVeEPDr+uw3MeFjgH/pW8P/5WJUXP1
	 s+vZigpd5qw636HVgBkqgm1UpAxl+LLUQATRtJTHJWlvKEONVN8LVnFZhExF0SwKDN
	 yVBvS9q5qX4f/rxZVWhAS4NdT8UmfjTGw8yrl9uPRWNc8vCykAhV1CGzySDG0WNBum
	 CTbCPAi4nnxbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ETHACN287O_i; Mon, 18 Dec 2023 16:32:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 99AE940493;
	Mon, 18 Dec 2023 16:32:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99AE940493
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3098F1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 16:32:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 07B6C81589
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 16:32:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07B6C81589
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iI_seVh2wUAm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 16:32:45 +0000 (UTC)
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 294DA8151E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 16:32:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 294DA8151E
Received: by mail-wr1-x435.google.com with SMTP id
 ffacd0b85a97d-336695c4317so1014607f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 08:32:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702917163; x=1703521963;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qxF72wKyjSEZjuqzTvuY0Vstw6URgB5M3BZ+UT5BCpI=;
 b=abRpQCUwHbiQexvrH6skYQqJwwE+W8QK0nXds/7WTas9FLrBfgGv2XqvR83uz91CJc
 GlGrETXGEKvm98iLVtLnevRDchR1+tn/jaQDM+xMPWs5eq8Pi4k1DLX1RwoQTrJySDY0
 EOHHD4G69gTrxSRad9sp6TQcSXEtrP9HZkPsw4VrxuWTJtoVqsZ+o3vxyxhKtPbdlaKu
 1a3OSZr+cAy5zMW5PVmRwwSlzLKaguBw0CJ9UFW2rS6b9x0dCb8XPKALbd6bHS6Klu67
 wGZrbsG396C8TYiEM+IKwSoPBwuMLO5yt5+0RPX+8VquH9E9ETT70yTh15HvgNz6p+XY
 PIeg==
X-Gm-Message-State: AOJu0YxcqAH3c1VjoswpVXQHo5UvXlRY1vFpQiBL+7ZsEoHRIdEQmjre
 gfxU0qUQREMSYkgn6wWvWGA/armkqU/Mf1sS8MhIZA==
X-Google-Smtp-Source: AGHT+IHGfFW6R6JOaRG0q4/dC5NXDsnHxuGOKtVw5DDYC+yH+BCIjfLy0MnSQI2L3kNO0XZL8vOkfR4p88ZhQAopGz4=
X-Received: by 2002:a5d:4cd2:0:b0:336:42b9:6a75 with SMTP id
 c18-20020a5d4cd2000000b0033642b96a75mr4813068wrt.31.1702917162922; Mon, 18
 Dec 2023 08:32:42 -0800 (PST)
MIME-Version: 1.0
References: <20231217-i40e-comma-v1-1-85c075eff237@kernel.org>
In-Reply-To: <20231217-i40e-comma-v1-1-85c075eff237@kernel.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 18 Dec 2023 08:32:28 -0800
Message-ID: <CAKwvOd=ZKV6KsgX0UxBX4Y89YEgpry00jG6K6qSjodwY3DLAzA@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1702917163; x=1703521963; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qxF72wKyjSEZjuqzTvuY0Vstw6URgB5M3BZ+UT5BCpI=;
 b=nvmBvRfNIDFxlGqXfhp+KOit382oFj1A+JlTHIBqYK1CbKRgh6uEoX3pWdCQ6vq4ra
 yNMq3k/feCu3zZdTSWlAe/pG0hrT21kYiEZH7BbwxeaGFMmOGKzNy3NQNWa31csBMmEk
 j+zCGAaocEGFrlsGd7yY4DoZrf1KsH2kOZUvrZLDldr9ih/ZERRWwngGV2+eVqq039ES
 tjJ3HuWpCkFzeGMMUZtYdW21t2JLOEwXwvdB/saMj5JH+ouoIEWsK8ioJvZpup6g+yOr
 dGpPvgTe9KQ54KXzWT15MC76rKR01Ww59dkkCxr65bdOCYtFm2PBuHtbMNIoZTfNGK7m
 +bXA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=nvmBvRfN
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Avoid unnecessary use
 of comma operator
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
Cc: intel-wired-lan@lists.osuosl.org, llvm@lists.linux.dev,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Nathan Chancellor <nathan@kernel.org>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU3VuLCBEZWMgMTcsIDIwMjMgYXQgMTo0NeKAr0FNIFNpbW9uIEhvcm1hbiA8aG9ybXNAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBBbHRob3VnaCBpdCBkb2VzIG5vdCBzZWVtIHRvIGhhdmUgYW55
IHVudG93YXJkIHNpZGUtZWZmZWN0cywKPiB0aGUgdXNlIG9mICc7JyB0byBzZXBhcmF0ZSB0byBh
c3NpZ25tZW50cyBzZWVtcyBtb3JlIGFwcHJvcHJpYXRlIHRoYW4gJywnLgo+Cj4gRmxhZ2dlZCBi
eSBjbGFuZy0xNyAtV2NvbW1hCgpZaWtlcyEgVGhpcyBraW5kIG9mIGV4YW1wbGUgaXMgd2h5IEkg
aGF0ZSB0aGUgY29tbWEgb3BlcmF0b3IhCgpSZXZpZXdlZC1ieTogTmljayBEZXNhdWxuaWVycyA8
bmRlc2F1bG5pZXJzQGdvb2dsZS5jb20+CgooSXMgLVdjb21tYSBlbmFibGVkIGJ5IC1XYWxsPykK
CklzIHRoZXJlIGEgZml4ZXMgdGFnIHdlIGNhbiBhZGQ/Cgo+Cj4gTm8gZnVuY3Rpb25hbCBjaGFu
Z2UgaW50ZW5kZWQuCj4gQ29tcGlsZSB0ZXN0ZWQgb25seS4KPgo+IFNpZ25lZC1vZmYtYnk6IFNp
bW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMKPiBpbmRleCA4MTJkMDQ3NDdiZDAuLmY1NDJmMjY3
MTk1NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
ZXRodG9vbC5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0
aHRvb2wuYwo+IEBAIC0xOTE3LDcgKzE5MTcsNyBAQCBpbnQgaTQwZV9nZXRfZWVwcm9tKHN0cnVj
dCBuZXRfZGV2aWNlICpuZXRkZXYsCj4gICAgICAgICAgICAgICAgICAgICAgICAgbGVuID0gZWVw
cm9tLT5sZW4gLSAoSTQwRV9OVk1fU0VDVE9SX1NJWkUgKiBpKTsKPiAgICAgICAgICAgICAgICAg
ICAgICAgICBsYXN0ID0gdHJ1ZTsKPiAgICAgICAgICAgICAgICAgfQo+IC0gICAgICAgICAgICAg
ICBvZmZzZXQgPSBlZXByb20tPm9mZnNldCArIChJNDBFX05WTV9TRUNUT1JfU0laRSAqIGkpLAo+
ICsgICAgICAgICAgICAgICBvZmZzZXQgPSBlZXByb20tPm9mZnNldCArIChJNDBFX05WTV9TRUNU
T1JfU0laRSAqIGkpOwo+ICAgICAgICAgICAgICAgICByZXRfdmFsID0gaTQwZV9hcV9yZWFkX252
bShodywgMHgwLCBvZmZzZXQsIGxlbiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICh1OCAqKWVlcHJvbV9idWZmICsgKEk0MEVfTlZNX1NFQ1RPUl9TSVpFICogaSksCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBsYXN0LCBOVUxMKTsKPgo+CgoKLS0gClRoYW5rcywK
fk5pY2sgRGVzYXVsbmllcnMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
