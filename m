Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BF6566EB7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 14:51:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F9B76106E;
	Tue,  5 Jul 2022 12:51:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F9B76106E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657025506;
	bh=0ifVLjPJvsQl34+s+vHPbojtRYqqCZWo/DlV6swnZDY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u0R+82Eyf6+fAKDv1u9kZgNY/gPs9BFVnlhafpc8BhjEtQ7BSA5/bVD4/wK1xpS4/
	 MJC6Tl4iSMwLgs7Z9sUGBhyEu5QBuYPJoXgvtZvjO/t4TfpePcUv5aqgGiyGtxybPl
	 VnOEU++91/IKmnzyLvdJY6zQcHgfiu1MURP0URi2BTTVLtmP+vUheM3AdVSrRHnqi2
	 2iBCPoUlyc4rK4DCgpkqCssO67njdIZpd6rrQOfKf8xhkh/eyWqECZWa0rRrNRPatq
	 LyGYwHg4DMxo55PN7OLSwbVxLvM8LYQj4Vtl30p3sqZI4YhQTHFo5yhoCEGNQ1IJL9
	 zn/sw3JCH2Z3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NsD3NO57M5KW; Tue,  5 Jul 2022 12:51:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A62E60F1E;
	Tue,  5 Jul 2022 12:51:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A62E60F1E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 43A9A1BF38E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 18:18:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2AE36827F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 18:18:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AE36827F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g598LojkBPO3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jun 2022 18:18:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09F6682628
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 09F6682628
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 18:18:41 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id d17so22852421wrc.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 11:18:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IlWda/HqLDW0Gj9EzBCbVVvBNMNupFxIokvORQdSsqo=;
 b=jaOalPOIcvsTmeQTRdNm99Ws+QkMih/glo0IKlUUrONiZDYgXqX/Z/bKwQbstXAuiS
 RbBzE4cjtSlh7Qpy+V6/W9x3+/aqyPa3RIEDHFDtjc130wPgkFyEYiUt0aikfI5Lm4EC
 /YnzXZLa5/JKusXuE5STyRJzNMo0/U5NTJ/86oktjGEKOffVZR9t5bg7mVODVNyN2rnE
 eoJecEvEXjibI+TnNUEcko0d9cPFqwp71JwWIOMkgrWSXDORndRObqp2+wJcMJrYLmd1
 tJ49GEezNAIuF3jyg+sFg7uTfUxVFtMahQvQs49bZosf+2diYS16RU2OAqE7YdEgnN06
 6YJQ==
X-Gm-Message-State: AJIora9ntdxrLfTz8NsBlSxwLYX/um9kn/4Yrs5QBhT6IFO1YXtPJEv+
 KANjLIY/K1dftdxyi/iwue4=
X-Google-Smtp-Source: AGRyM1vREQxVFqTQbWuZ+WMeoR0noQOq0lb5dZV2MaVEVJr5GIj324clqAcL9faYncg9EBN8e8VzLA==
X-Received: by 2002:adf:dc91:0:b0:21b:89bc:9d5c with SMTP id
 r17-20020adfdc91000000b0021b89bc9d5cmr9822813wrj.159.1656613120062; 
 Thu, 30 Jun 2022 11:18:40 -0700 (PDT)
Received: from opensuse.localnet (host-87-6-98-182.retail.telecomitalia.it.
 [87.6.98.182]) by smtp.gmail.com with ESMTPSA id
 l34-20020a05600c1d2200b003a03e63e428sm4648060wms.36.2022.06.30.11.18.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jun 2022 11:18:38 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Eric Dumazet <edumazet@google.com>,
 Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 30 Jun 2022 20:18:36 +0200
Message-ID: <2254584.ElGaqSPkdT@opensuse>
In-Reply-To: <CAKgT0UcKRJUJrpFHdNrdH98eu_dpiZiVakJRqc2qHrdGJJQRQA@mail.gmail.com>
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <CANn89iK6g+4Fy2VMV7=feUAOUDHu-J38be+oU76yp+zGH6xCJQ@mail.gmail.com>
 <CAKgT0UcKRJUJrpFHdNrdH98eu_dpiZiVakJRqc2qHrdGJJQRQA@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jul 2022 12:51:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IlWda/HqLDW0Gj9EzBCbVVvBNMNupFxIokvORQdSsqo=;
 b=V/zbNJ6cE8PQmwOmoJpRuC574tlVTyOl3bRzQSGcqGDXct0qNy8MUEeBECXhj/izKq
 UiVXAKMnTGkdjCUTIycQfaT4doug4CMxnqNEoxZSDoRsJGp0QgzInqRw88lm11V4Tn5c
 nt/ho05icwky/AApXOKb5fuh/eDQo5Byho5ynpwCofAWcCrXg1km3LKX5FDh9fmgfIN7
 9QmqnDnskFHha6ziAQtYGUiC7vrbTIOD0lIa3WA02vfli5feqRTEx5f+wohvzfl04HZp
 BeULzibZbiN+ByeEVVZBmI+R0z8W+ZXNJ3QSwOK+KttculFfTLMBIl8A4SGiwLHBjz4J
 MTHQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20210112 header.b=V/zbNJ6c
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ira Weiny <ira.weiny@intel.com>,
 "David S. Miller" <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gZ2lvdmVkw6wgMzAgZ2l1Z25vIDIwMjIgMTg6MDk6MTggQ0VTVCBBbGV4YW5kZXIgRHV5Y2sg
d3JvdGU6Cj4gT24gVGh1LCBKdW4gMzAsIDIwMjIgYXQgODoyNSBBTSBFcmljIER1bWF6ZXQgPGVk
dW1hemV0QGdvb2dsZS5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgSnVuIDMwLCAyMDIyIGF0
IDU6MTcgUE0gQWxleGFuZGVyIER1eWNrCj4gPiA8YWxleGFuZGVyLmR1eWNrQGdtYWlsLmNvbT4g
d3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIFRodSwgSnVuIDMwLCAyMDIyIGF0IDM6MTAgQU0gTWFjaWVq
IEZpamFsa293c2tpCj4gPiA+IDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPiB3cm90ZToK
PiA+ID4gPgo+ID4gPiA+IE9uIFdlZCwgSnVuIDI5LCAyMDIyIGF0IDEwOjU4OjM2QU0gKzAyMDAs
IEZhYmlvIE0uIERlIEZyYW5jZXNjbyAKd3JvdGU6Cj4gPiA+ID4gPiBUaGUgdXNlIG9mIGttYXAo
KSBpcyBiZWluZyBkZXByZWNhdGVkIGluIGZhdm9yIG9mIAprbWFwX2xvY2FsX3BhZ2UoKS4KPiA+
ID4gPiA+Cj4gPiA+ID4gPiBXaXRoIGttYXBfbG9jYWxfcGFnZSgpLCB0aGUgbWFwcGluZyBpcyBw
ZXIgdGhyZWFkLCBDUFUgbG9jYWwgYW5kIApub3QKPiA+ID4gPiA+IGdsb2JhbGx5IHZpc2libGUu
IEZ1cnRoZXJtb3JlLCB0aGUgbWFwcGluZyBjYW4gYmUgYWNxdWlyZWQgZnJvbSAKYW55IGNvbnRl
eHQKPiA+ID4gPiA+IChpbmNsdWRpbmcgaW50ZXJydXB0cykuCj4gPiA+ID4gPgo+ID4gPiA+ID4g
VGhlcmVmb3JlLCB1c2Uga21hcF9sb2NhbF9wYWdlKCkgaW4gaXhnYmVfY2hlY2tfbGJ0ZXN0X2Zy
YW1lKCkgCmJlY2F1c2UKPiA+ID4gPiA+IHRoaXMgbWFwcGluZyBpcyBwZXIgdGhyZWFkLCBDUFUg
bG9jYWwsIGFuZCBub3QgZ2xvYmFsbHkgdmlzaWJsZS4KPiA+ID4gPgo+ID4gPiA+IEhpLAo+ID4g
PiA+Cj4gPiA+ID4gSSdkIGxpa2UgdG8gYXNrIHdoeSBrbWFwIHdhcyB0aGVyZSBpbiB0aGUgZmly
c3QgcGxhY2UgYW5kIG5vdCBwbGFpbgo+ID4gPiA+IHBhZ2VfYWRkcmVzcygpID8KPiA+ID4gPgo+
ID4gPiA+IEFsZXg/Cj4gPiA+Cj4gPiA+IFRoZSBwYWdlX2FkZHJlc3MgZnVuY3Rpb24gb25seSB3
b3JrcyBvbiBhcmNoaXRlY3R1cmVzIHRoYXQgaGF2ZSAKYWNjZXNzCj4gPiA+IHRvIGFsbCBvZiBw
aHlzaWNhbCBtZW1vcnkgdmlhIHZpcnR1YWwgbWVtb3J5IGFkZHJlc3Nlcy4gVGhlIGttYXAKPiA+
ID4gZnVuY3Rpb24gaXMgbWVhbnQgdG8gdGFrZSBjYXJlIG9mIGhpZ2htZW0gd2hpY2ggd2lsbCBu
ZWVkIHRvIGJlIAptYXBwZWQKPiA+ID4gYmVmb3JlIGl0IGNhbiBiZSBhY2Nlc3NlZC4KPiA+ID4K
PiA+ID4gRm9yIG5vbi1oaWdobWVtIHBhZ2VzIGttYXAganVzdCBjYWxscyB0aGUgcGFnZV9hZGRy
ZXNzIGZ1bmN0aW9uLgo+ID4gPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRl
c3Qvc291cmNlL2luY2x1ZGUvbGludXgvaGlnaG1lbS1pbnRlcm5hbC5oI0w0MAo+ID4KPiA+Cj4g
PiBTdXJlLCBidXQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5j
IGlzIGFsbG9jYXRpbmcKPiA+IHBhZ2VzIHRoYXQgYXJlIG5vdCBoaWdobWVtID8KPiA+Cj4gPiBU
aGlzIGttYXAoKSBkb2VzIG5vdCBzZWVtIG5lZWRlZC4KPiAKPiBHb29kIHBvaW50LiBTbyBvZGRz
IGFyZSBwYWdlX2FkZHJlc3MgaXMgZmluZSB0byB1c2UuIEFjdHVhbGx5IHRoZXJlIGlzCj4gYSBu
b3RlIHRvIHRoYXQgZWZmZWN0IGluIGl4Z2JlX3B1bGxfdGFpbC4KPiAKPiBBcyBzdWNoIHdlIGNv
dWxkIHByb2JhYmx5IGdvIHRocm91Z2ggYW5kIHVwZGF0ZSBpZ2IsIGFuZCBzZXZlcmFsIG9mCj4g
dGhlIG90aGVyIEludGVsIGRyaXZlcnMgYXMgd2VsbC4KPiAKPiAtIEFsZXgKPiAKSSBkb24ndCBr
bm93IHRoaXMgY29kZSwgaG93ZXZlciBJIGtub3cga21hcCooKS4KCkkgYXNzdW1lZCB0aGF0LCBp
ZiBhdXRob3IgdXNlZCBrbWFwKCksIHRoZXJlIHdhcyBwb3NzaWJpbGl0eSB0aGF0IHRoZSBwYWdl
IApjYW1lIGZyb20gaGlnaG1lbS4KCkluIHRoYXQgY2FzZSBrbWFwX2xvY2FsX3BhZ2UoKSBsb29r
cyBjb3JyZWN0IGhlcmUuCgpIb3dldmVyLCBub3cgSSByZWFkIHRoYXQgdGhhdCBwYWdlIF9jYW5u
b3RfIGNvbWUgZnJvbSBoaWdobWVtLiBUaGVyZWZvcmUsIApwYWdlX2FkZHJlc3MoKSB3b3VsZCBz
dWZmaWNlLgoKSWYgeW91IGFsbCB3YW50IEkgY2FuIHJlcGxhY2Uga21hcCgpIC8ga3VubWFwKCkg
d2l0aCBhICJwbGFpbiIgCnBhZ2VfYWRkcmVzcygpLiBQbGVhc2UgbGV0IG1lIGtub3cuCgpUaGFu
a3MsCgpGYWJpbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
