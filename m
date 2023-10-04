Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D92937B7981
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 10:04:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8463A80C39;
	Wed,  4 Oct 2023 08:04:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8463A80C39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696406693;
	bh=A+WOoomeeHtOpig+HEn7u/hhPkyGddlblkktOcqJQ50=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QW4I8BwPaT1MB5xarAuymb/sU4y7zTMSImKjfe8pEt8Q0fN1lOxyG1Tpo0up5FpzQ
	 Uhl1I6M1FQkt/dhY8ASeL+0SfyT2FuwjrpKTnYrhsvREUPDgM1NaKFj1MVVmnPzz2P
	 i7nuEbpO08b9dK2/LRHe6YW3Qwwbrj7Ydvc6AHuAtbWh5damAQHEmAuTAQRJARIg7V
	 +cJoq+KOZFa4d/vzAegfSbXYLNptZ9a+4NS/oZr6RwHcxKzK9rNTmjKRPctsTq0Vt1
	 0504rDGPuTmaasRiO60Xi/1GRjGqSA6W4+mkSSzNyOSIG08zfQhwV+UCbPGi+hxA7r
	 DkPVQe/1ZEmCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HMpEO6bZYCGA; Wed,  4 Oct 2023 08:04:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B51580C6A;
	Wed,  4 Oct 2023 08:04:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B51580C6A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9E4F1BF40B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 08:04:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C26B460F41
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 08:04:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C26B460F41
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t8NqETtgjeXz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 08:04:44 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA81D60F11
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 08:04:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA81D60F11
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-405524e6769so3458425e9.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Oct 2023 01:04:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696406682; x=1697011482;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IJdb1qMHJ+Cbk4cGjE6rcjXo+B39SPe1RPD3Rof3+L0=;
 b=fd7rfkso3GLc7iwKX7Oi9nvrRT/tCD9+SC3Zn2KNuo1ZchExwhjJ7xi7yG5LuBPC7s
 vjFxJ3vnIYuJb+Eqx7kNeZRW666DiIvn9qgWfplW/jVvb85rnlkKw8+XC2zGN7+FvV0/
 MaLGM/BHc4GejzptnVk8eWFTTLqI0aZCAgtYMizZfEu2t+Kh25FzSp3EmvJbP4vdGEms
 G8agWzaoq0yYmdHoAUnz6PUXdn3z0qsIKjPR767claO62m7aensKJIN1Y/nYspGFEyyl
 VxXD+6XfA5LLX4+rM+JVIxptUFqZopiFg7XcHPCCnd7MoEoMRA2wpkTNWJ9zbAT5Z40E
 f7dA==
X-Gm-Message-State: AOJu0YysQfqRRamDF9KR7PeLHH77MfTSy8wJb5TjuaZQ3dT9ewZMbr76
 E4fVPG01ZHYkgKQuwhesyx2ghw==
X-Google-Smtp-Source: AGHT+IEC7Kk4F818yPH6966d9Z6ExD5ZI8JjXGRj24+Tu4eq1T+SWsvmQBmsuJ3WYMQq3IezkMnwnQ==
X-Received: by 2002:a05:600c:5014:b0:401:b425:2414 with SMTP id
 n20-20020a05600c501400b00401b4252414mr3936654wmr.18.1696406681795; 
 Wed, 04 Oct 2023 01:04:41 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 c15-20020a7bc84f000000b00405323d47fdsm859765wml.21.2023.10.04.01.04.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Oct 2023 01:04:41 -0700 (PDT)
Date: Wed, 4 Oct 2023 11:04:38 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <8c153188-a5e3-46f9-b126-7ae447236022@kadam.mountain>
References: <966968bda15a7128a381b589329184dfea3e0548.1695471387.git.christophe.jaillet@wanadoo.fr>
 <a5e933fe-4566-9ae6-9a5d-b3a4c186fe0b@intel.com>
 <abf8d279-b579-4a03-9ae9-053cf5efec3d@wanadoo.fr>
 <ecc05528-ba59-922b-7384-4bedd46cf89b@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ecc05528-ba59-922b-7384-4bedd46cf89b@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1696406682; x=1697011482; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=IJdb1qMHJ+Cbk4cGjE6rcjXo+B39SPe1RPD3Rof3+L0=;
 b=yNzN0Z9DW7SoqMoDi9fm/gYYFbkmU0wWmMj+t0IpaUZvAC8Zk+kgoh8jkp8H61K4To
 JRO8EbDv046cIcKSmDxC4LIGvXcYoycm1Hax8Ama60Eh+ZGIb+QsifAcuAm6AlDvqxig
 SOPV1H1jpaVu5iB2Zqe4ggdQsLDbUHvkXLld0tMreels6eSF6ynfGT0FqS9Pn0aTYZT7
 nPmCv0QgJagl+SJ+QvNSwGZoEnh5VnQrYnv9r07P6tZtYyTB9OqCK4p0Q+OotshM7h4x
 qdp0yNqNe8L73fU6sdCOJA30Iq+wVsKxpqh26n/q1GlEiEiazA3Xc0YeS6b0GERjKNDR
 iDfQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=yNzN0Z9D
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: Avoid a memory
 allocation in iavf_print_link_message()
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBPY3QgMDMsIDIwMjMgYXQgMDQ6MDE6MThQTSAtMDcwMCwgSmVzc2UgQnJhbmRlYnVy
ZyB3cm90ZToKPiBPbiAxMC8zLzIwMjMgMTozMyBQTSwgQ2hyaXN0b3BoZSBKQUlMTEVUIHdyb3Rl
Ogo+ID4ga2FzcHJpbnRmKCkgaXMgbXVjaCBiZXR0ZXIuCj4gCj4gY29vbCEgSSBqdXN0IHNlbnQg
dGhlIHBhdGNoZXMgYW5kIGNjJ2QgeW91IGVhcmxpZXIgdG9kYXkuCj4gCj4gPiA+IAo+ID4gPiB5
b3VyIHBhdGNoIHN0aWxsIHNob3dzIHRoZXNlIGVycm9ycwo+ID4gCj4gPiBJIGJ1aWx0LXRlc3Rl
ZCB0aGUgcGF0Y2ggYmVmb3JlIHNlbmRpbmcsIHNvIHRoaXMgaXMgc3RyYW5nZS4KPiA+IAo+ID4g
SG93ZXZlciwgSSBnb3QgYSBzaW1pbGFyIGZlZWRiYWNrIGZyb20gR3JlZyBLSCBhbmQgdGhlICJr
ZXJuZWwgdGVzdAo+ID4gcm9ib3QiIGZvciBhbm90aGVyIHNpbWlsYXIgcGF0Y2guCj4gPiAKPiA+
IFdoYXQgdmVyc2lvbiBvZiBnY2MgZG8geW91IHVzZT8KPiA+IEkgdXNlIDEyLjMuMCwgYW5kIEkg
c3VzcGVjdCB0aGF0IHRoZSB2YWx1ZSByYW5nZSBhbGdvcml0aG0gb3IgaG93IHRoZQo+ID4gZGlh
Z25vc3RpYyBpcyBkb25lIGhhcyBiZWVuIGltcHJvdmVkIGluIHJlY2VudCBnY2MuCj4gCj4gRmVk
b3JhIGdjYyAxMi4zLjEsIHdpdGggVz0xIGZsYWcKPiAKPiBnY2MgdmVyc2lvbiAxMi4zLjEgMjAy
MzA1MDggKFJlZCBIYXQgMTIuMy4xLTEpIChHQ0MpCj4gCj4gW2xpbnV4XSQgbWFrZSBXPTEgTT1k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmCj4gICBDQyBbTV0gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLm8KPiAgIENDIFtNXSAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2V0aHRvb2wubwo+ICAgQ0MgW01dICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwubwo+ICAgQ0MgW01dICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZmRpci5vCj4gICBDQyBbTV0gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9hZHZfcnNzLm8KPiAgIENDIFtNXSAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3R4cngubwo+ICAgQ0MgW01dICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfY29tbW9uLm8KPiAgIENDIFtNXSAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2FkbWlucS5vCj4gICBDQyBbTV0gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9jbGllbnQubwo+IGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jOiBJbiBmdW5jdGlvbgo+IOKAmGlhdmZfdmly
dGNobmxfY29tcGxldGlvbuKAmToKPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lh
dmZfdmlydGNobmwuYzoxNDQ2OjYwOiB3YXJuaW5nOiDigJglc+KAmQo+IGRpcmVjdGl2ZSBvdXRw
dXQgbWF5IGJlIHRydW5jYXRlZCB3cml0aW5nIDQgYnl0ZXMgaW50byBhIHJlZ2lvbiBvZiBzaXpl
Cj4gYmV0d2VlbiAxIGFuZCAxMSBbLVdmb3JtYXQtdHJ1bmNhdGlvbj1dCj4gIDE0NDYgfCAgICAg
ICAgICAgICAgICAgc25wcmludGYoc3BlZWQsIElBVkZfTUFYX1NQRUVEX1NUUkxFTiwgIiVkICVz
IiwKPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXn4KPiAgMTQ0NyB8ICAgICAgICAgICAgICAgICAgICAgICAgICBsaW5r
X3NwZWVkX21icHMsICJNYnBzIik7Cj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB+fn5+fn4KCkdDQyBpcyBraW5kIG9mIGNyYXAgYXQgc3RhdGljIGFu
YWx5c2lzLCByaWdodD8gIFNtYXRjaCB3b3VsZCBrbm93IHRoYXQKdGhpcyBhdCBtb3N0IDExIGNo
YXJhY3RlcnMgbG9uZy4gIEl0J3Mga2luZCBvZiBsYXppbmVzcyBmb3IgR0NDIHRvIHByaW50CnRo
aXMgd2FybmluZy4gIElmIHlvdSBjb21wbGFpbmVkIHRvIG1lIGFib3V0IGEgZmFsc2UgcG9zaXRp
dmUgbGlrZSB0aGlzCmluIFNtYXRjaCBJIHdvdWxkIGF0IGxlYXN0IHRoaW5rIGFib3V0IHZhcmlv
dXMgd2F5cyB0byBzaWxlbmNlIGl0LgoKQnV0IEkgcHJvYmFibHkgd291bGRuJ3Qgd3JpdGUgYSBj
aGVjayBmb3IgdGhpcyBhbnl3YXkgYmVjYXVzZSBJIGRvbid0CnZpZXcgdHJ1bmNhdGluZyBzdHJp
bmdzIGFzIGEgbm90ZSB3b3J0aHkgYnVnLi4uCgpTbWF0Y2ggYWxzbyBnZXRzIHN0dWZmIHdyb25n
LCBidXQgaW4gdGhhdCBjYXNlIEkganVzdCBhbHdheXMgZW5jb3VyYWdlCnBlb3BsZSB0byBtYXJr
IHRoZSB3YXJuaW5nIGFzIG9sZCBuZXdzIGFuZCBtb3ZlIG9uLiAgT25seSBuZXcgd2FybmluZ3MK
YXJlIGludGVyZXN0aW5nLgoKSSBmZWVsIGxpa2UgYXMgd2UgaW5jb3Jwb3JhdGUgbW9yZSBhbmQg
bW9yZSBzdGF0aWMgYW5hbHlzaXMgaW50byBvdXIKcHJvY2Vzc2VzIHdlJ3JlIGdvaW5nIHRvIGhh
dmUgdG8gZ2l2ZSB1cCBvbiB0cnlpbmcgdG8ga2VlcCBldmVyeSBzdGF0aWMKY2hlY2tlciBoYXBw
eS4KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
