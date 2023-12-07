Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C75C4808850
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 13:49:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5765D41E7F;
	Thu,  7 Dec 2023 12:49:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5765D41E7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701953354;
	bh=53nOSMbbcMlSVwy2+xsyqkU4C9M4KPogZUdoRji8C5Y=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2XOtTbyB9+JA7hRDWwGagsz0F7Fn8ixKKa+uYS3hFfC2VVTyLAOH+mW5xc6TRkvOP
	 JtXAxVGD3YA+tZ9Z0eh2iMrYWxoNAQXp/gxmVkPw8+lKKKs4zhkYUpeKo93U7KLHrg
	 wRrobDFwe/8M/Uw0g5KV9lNRLHh0u7nDJnVa/Ce5MQj+egm+AFjCpmidVh3pLphYB7
	 i3nCZYRHDFldCjQ4Jjsvbj7rCFNpohU2myiXqJeATSNv/sOkduf9J2+2jluiBjVLFV
	 eHHnCTtwyP4AlofhV+pLHOsYj04JXrUZtcBe8zsKQjeX0L8QK6cryR6YM1AeQmqYIY
	 U7WDss3KZu1Ug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lozeWfCG_JW7; Thu,  7 Dec 2023 12:49:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CE3A41E53;
	Thu,  7 Dec 2023 12:49:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CE3A41E53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D27951BF38D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 12:49:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7F6B4375C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 12:49:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7F6B4375C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0s78M1omL0Ta for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 12:49:06 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8684B4032A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 12:49:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8684B4032A
Received: by mail-lf1-x12b.google.com with SMTP id
 2adb3069b0e04-50bf09be81bso3294e87.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 Dec 2023 04:49:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701953344; x=1702558144;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8rOWXHXcE/bl3GnAmoX8Mz2P8oxpbxVD71OVPuO+AYA=;
 b=bU/c0PEXDSZJQnTooPQN+Z5jDwTWpUyQbRFm8m8Wn8vkhg3NkcG1cBKihCofjSDkW/
 PILmKyBjYrYRdLc8SI21oUB8HptMGVmRXCyDYmPCbbLxjsLUu02/5PCcRH6fuvQOlZqO
 y7g8F+DZHTse3MXBtLOzqwafrwImgU0+qgIZk+k/+L/XnbQ1upZCkdBxFAEkqjcrDr2Z
 /RoPs1PfY7vEPDQ+LAf/QF2HZ+amWwBsOmt/NLE3h5o5/Qj6x7uITyh1E0MX0g1XqMap
 9uVon8heShPF0ZuG6yFiNvQGgvZCKj2lQg5lt2JfRzC2aHdWbCUeAWmhaVi4ADthWIhi
 G0Lw==
X-Gm-Message-State: AOJu0Ywaq5GTVlDg9ZsOJQSh+kw9frbm6DKuPF4fs+bQO14qK0xmwrNG
 Ucc+TlXXI1uSWCpO89kU/cJ2y52Pcc0K+3MFPxBI9Q==
X-Google-Smtp-Source: AGHT+IGbt+UpAMoyYY7GlgknL8bUKAI9Y8W4Kc2Ebc7/+lJDbwPMqattnZK6taTE0zf1tBEM6IywWv2eeiMKtkj7RBA=
X-Received: by 2002:ac2:4439:0:b0:50b:fced:ca9b with SMTP id
 w25-20020ac24439000000b0050bfcedca9bmr87733lfl.7.1701953343451; Thu, 07 Dec
 2023 04:49:03 -0800 (PST)
MIME-Version: 1.0
References: <20231201143821.1091005-1-aleksander.lobakin@intel.com>
 <20231207115751.GG50400@kernel.org>
In-Reply-To: <20231207115751.GG50400@kernel.org>
From: Eric Dumazet <edumazet@google.com>
Date: Thu, 7 Dec 2023 13:48:52 +0100
Message-ID: <CANn89iKiiexYLXP1fW3anaZt0TJWPUBBmXdjsAV8t3CH3Ra8aw@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1701953344; x=1702558144; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8rOWXHXcE/bl3GnAmoX8Mz2P8oxpbxVD71OVPuO+AYA=;
 b=wbS8yFI5s+b+ceP3xRkwk8Gnqn1eDygaMdJ/cQMyF/cerCYMbc1iO0fogEVhesGT9U
 WSftx2L+3bjz0AQVNOrYi2A+E7O4RyiiK/7QKjOqHzSZijrEpgo7OL+jXpEBUPthxU8Y
 nw3vH5M3XRIlHRgxxlhbCb4NiYbLpH5tci2bZv7RZ1qzLgYQOE8ofqjiUSBq9kK642Kf
 PnTd2ZwMPBfhmwwZ+sPEjPAya1AnaqYoNcRd5v+eBVKQp+bC0G0sPztoPpKbWiRmJUlb
 PknD5BruRFH7OPlACRenBGGcHRAD2syBBkFywfxgXtq/tpGiqhpki3U8hbDX0vjYHGc/
 3mPA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=wbS8yFI5
Subject: Re: [Intel-wired-lan] [PATCH iwl] idpf: fix corrupted frames and
 skb leaks in singleq mode
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBEZWMgNywgMjAyMyBhdCAxMjo1OOKAr1BNIFNpbW9uIEhvcm1hbiA8aG9ybXNAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBGcmksIERlYyAwMSwgMjAyMyBhdCAwMzozODoyMVBNICsw
MTAwLCBBbGV4YW5kZXIgTG9iYWtpbiB3cm90ZToKPiA+IGlkcGZfcmluZzo6c2tiIHNlcnZlcyBv
bmx5IGZvciBrZWVwaW5nIGFuIGluY29tcGxldGUgZnJhbWUgYmV0d2Vlbgo+ID4gc2V2ZXJhbCBO
QVBJIFJ4IHBvbGxpbmcgY3ljbGVzLCBhcyBvbmUgY3ljbGUgbWF5IGVuZCB1cCBiZWZvcmUKPiA+
IHByb2Nlc3NpbmcgdGhlIGVuZCBvZiBwYWNrZXQgZGVzY3JpcHRvci4gVGhlIHBvaW50ZXIgaXMg
dGFrZW4gZnJvbQo+ID4gdGhlIHJpbmcgb250byB0aGUgc3RhY2sgYmVmb3JlIGVudGVyaW5nIHRo
ZSBsb29wIGFuZCBnZXRzIHdyaXR0ZW4KPiA+IHRoZXJlIGFmdGVyIHRoZSBsb29wIGV4aXRzLiBX
aGVuIGluc2lkZSB0aGUgbG9vcCwgb25seSB0aGUgb25zdGFjawo+ID4gcG9pbnRlciBpcyB1c2Vk
Lgo+ID4gRm9yIHNvbWUgcmVhc29uLCB0aGUgbG9naWNzIGlzIGJyb2tlbiBpbiB0aGUgc2luZ2xl
cSBtb2RlLCB3aGVyZSB0aGUKPiA+IHBvaW50ZXIgaXMgdGFrZW4gZnJvbSB0aGUgcmluZyBlYWNo
IGl0ZXJhdGlvbi4gVGhpcyBtZWFucyB0aGF0IGlmIGEKPiA+IGZyYW1lIGdvdCBmcmFnbWVudGVk
IGludG8gc2V2ZXJhbCBkZXNjcmlwdG9ycywgZWFjaCBmcmFnbWVudCB3aWxsIGhhdmUKPiA+IGl0
cyBvd24gc2tiLCBidXQgb25seSB0aGUgbGFzdCBvbmUgd2lsbCBiZSBwYXNzZWQgdXAgdGhlIHN0
YWNrCj4gPiAoY29udGFpbmluZyBnYXJiYWdlKSwgbGVhdmluZyB0aGUgcmVzdCBsZWFrZWQuCj4g
PiBKdXN0IGRvbid0IHRvdWNoIHRoZSByaW5nIHNrYiBmaWVsZCBpbnNpZGUgdGhlIHBvbGxpbmcg
bG9vcCwgbGV0dGluZwo+ID4gdGhlIG9uc3RhY2sgc2tiIHBvaW50ZXIgd29yayBhcyBleHBlY3Rl
ZDogYnVpbGQgYSBuZXcgc2tiIGlmIGl0J3MgdGhlCj4gPiBmaXJzdCBmcmFtZSBkZXNjcmlwdG9y
IGFuZCBhdHRhY2ggYSBmcmFnIG90aGVyd2lzZS4KPiA+Cj4gPiBGaXhlczogYTVhYjllZTBkZjBi
ICgiaWRwZjogYWRkIHNpbmdsZXEgc3RhcnRfeG1pdCBhbmQgbmFwaSBwb2xsIikKPiA+IFJldmll
d2VkLWJ5OiBQcnplbWVrIEtpdHN6ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+Cj4g
PiBSZXZpZXdlZC1ieTogTWljaGFsIEt1YmlhayA8bWljaGFsLmt1Ymlha0BpbnRlbC5jb20+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgTG9iYWtpbiA8YWxla3NhbmRlci5sb2Jha2luQGlu
dGVsLmNvbT4KPgo+IFJldmlld2VkLWJ5OiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+
CgpJdCBzZWVtcyBzaW5nbGVxdWV1ZSBtb2RlIGlzIG5vdCByZWFsbHkgdXNlZCBvbiBpZHBmIDop
CgpSZXZpZXdlZC1ieTogRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
