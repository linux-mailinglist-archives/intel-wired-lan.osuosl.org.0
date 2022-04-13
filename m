Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B004FFA70
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Apr 2022 17:39:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 872F983E12;
	Wed, 13 Apr 2022 15:39:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zMDjMo9oLC5I; Wed, 13 Apr 2022 15:39:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FB3C81373;
	Wed, 13 Apr 2022 15:39:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D72BD1BF41F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 15:39:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE8A141838
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 15:39:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2bH5NWyULepn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Apr 2022 15:39:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 68A5941836
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 15:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649864342;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DTng1VBQBG1w5ddfOZndBpJ6F/sDE1kAEyXenf5ppGY=;
 b=d0DGnVkUBpW2MSmLJ/tmXzAKN46azZN5D9zEqj1k9MgFmpyyaqUsDp7QDrUgcGIGVJN1Pb
 P5HU9pAZexsKIYWa9IUrhMcAqRo8QgyqTrdnGlpjhzM945GXUfi9OAMVurOoshejYxyIra
 22H1Q63jV7m6RKJO+R6QqDHcdby+tfE=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-664-9LnLWUTMNaC5AQA_c8lGyg-1; Wed, 13 Apr 2022 11:39:00 -0400
X-MC-Unique: 9LnLWUTMNaC5AQA_c8lGyg-1
Received: by mail-ed1-f72.google.com with SMTP id
 dn26-20020a05640222fa00b0041d85c7a190so1262526edb.22
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 08:39:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=DTng1VBQBG1w5ddfOZndBpJ6F/sDE1kAEyXenf5ppGY=;
 b=moowkRz7p6ZokS0Hy6IrUTtNzUc7mCGrilHh2/q9uiwJWlDfyNuQczISgmSJYOQfOu
 36nT/HQ/nkHrbOKCOlBQzJhfZfVFRq7kbRT8t79mG9NK1V8nfrl+IzVfudPghtGti/hj
 iHDwBw8X8pD0hMc0byokMt53SGg49A/gY9tIchop7Xj3ZyVeieZVWYt/HsKL6TBaNtob
 SVDRNpZB3968XmBEJ/gGFTIL6jX0M853uWEGotREalUaHDX6q5w5UkR2zZ0UcLhTVGBm
 rH7hzM1cTh9dqNKiw9QA0Vke/kduswN574g5QF+l1kxDuqkqJFzHJUMZH+yS9TwUPoIY
 2itA==
X-Gm-Message-State: AOAM531B9fD1I94LYKhIp++ExzT4RdhTdzTOu0fYa/rkoAmJCDhNwRL8
 2I/46MYcmW3o+syFS5/4IJemMW/8/PEp50uxCoYUbDoal3q98vC1HZlFwZ4scY12i+Zr3V3AsZg
 tVtKw3s1skCFJGwxEXcscpD6OdNQ0Qg==
X-Received: by 2002:a17:907:eaa:b0:6e8:9105:b3c7 with SMTP id
 ho42-20020a1709070eaa00b006e89105b3c7mr13907609ejc.26.1649864339355; 
 Wed, 13 Apr 2022 08:38:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyS4emMuGiZkqPvPLYDGoWTninw7nHNjPU9LlyGy1tPOzLfzqSeEApClSgyutyj3qg6/dRukg==
X-Received: by 2002:a17:907:eaa:b0:6e8:9105:b3c7 with SMTP id
 ho42-20020a1709070eaa00b006e89105b3c7mr13907582ejc.26.1649864339020; 
 Wed, 13 Apr 2022 08:38:59 -0700 (PDT)
Received: from [192.168.2.36] (ip4-46-175-183-46.net.iconn.cz. [46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 z22-20020a1709063ad600b006e8867caa5dsm102643ejd.72.2022.04.13.08.38.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 08:38:58 -0700 (PDT)
Message-ID: <8106efcab543ada95ac7ea9e56c47889f7b44f3d.camel@redhat.com>
From: Petr Oros <poros@redhat.com>
To: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 17:38:56 +0200
In-Reply-To: <092c941b-a057-5cf0-97d8-0c061768dae7@intel.com>
References: <20220412102753.670867-1-poros@redhat.com>
 <092c941b-a057-5cf0-97d8-0c061768dae7@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.42.4
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=poros@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: wait for EMP reset after
 firmware flash
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
Reply-To: poros@redhat.com
Cc: ivecera@redhat.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SmFjb2IgS2VsbGVyIHDDrcWhZSB2IMOadCAxMi4gMDQuIDIwMjIgdiAwOTo1OCAtMDcwMDoKPiAK
PiAKPiBPbiA0LzEyLzIwMjIgMzoyNyBBTSwgUGV0ciBPcm9zIHdyb3RlOgo+ID4gV2UgbmVlZCB0
byB3YWl0IGZvciBFTVAgcmVzZXQgYWZ0ZXIgZmlybXdhcmUgZmxhc2guCj4gPiBDb2RlIHdhcyBl
eHRyYWN0ZWQgZnJvbSBPT1QgZHJpdmVyIGFuZCB3aXRob3V0IHRoaXMgd2FpdAo+ID4gZndfYWN0
aXZhdGUgbGV0Cj4gPiBjYXJkIGluIGluY29uc2lzdGVudCBzdGF0ZSByZWNvdmVyYWJsZSBvbmx5
IGJ5IHNlY29uZAo+ID4gZmxhc2gvYWN0aXZhdGUKPiA+IAo+ID4gUmVwcm9kdWNlcjoKPiA+IFty
b290QGhvc3Qgfl0jIGRldmxpbmsgZGV2IGZsYXNoIHBjaS8wMDAwOmNhOjAwLjAgZmlsZQo+ID4g
RTgxMF9YWFZEQTRfRkhfT19TRUNfRldfMXA2cDFwOV9OVk1fM3AxMF9QTERNb01DVFBfMC4xMV84
MDAwQUQ3Qi5iaQo+ID4gbgo+ID4gUHJlcGFyaW5nIHRvIGZsYXNoCj4gPiBbZncubWdtdF0gRXJh
c2luZwo+ID4gW2Z3Lm1nbXRdIEVyYXNpbmcgZG9uZQo+ID4gW2Z3Lm1nbXRdIEZsYXNoaW5nIDEw
MCUKPiA+IFtmdy5tZ210XSBGbGFzaGluZyBkb25lIDEwMCUKPiA+IFtmdy51bmRpXSBFcmFzaW5n
Cj4gPiBbZncudW5kaV0gRXJhc2luZyBkb25lCj4gPiBbZncudW5kaV0gRmxhc2hpbmcgMTAwJQo+
ID4gW2Z3LnVuZGldIEZsYXNoaW5nIGRvbmUgMTAwJQo+ID4gW2Z3Lm5ldGxpc3RdIEVyYXNpbmcK
PiA+IFtmdy5uZXRsaXN0XSBFcmFzaW5nIGRvbmUKPiA+IFtmdy5uZXRsaXN0XSBGbGFzaGluZyAx
MDAlCj4gPiBbZncubmV0bGlzdF0gRmxhc2hpbmcgZG9uZSAxMDAlCj4gPiBBY3RpdmF0ZSBuZXcg
ZmlybXdhcmUgYnkgZGV2bGluayByZWxvYWQKPiA+IFtyb290QGhvc3Qgfl0jIGRldmxpbmsgZGV2
IHJlbG9hZCBwY2kvMDAwMDpjYTowMC4wIGFjdGlvbgo+ID4gZndfYWN0aXZhdGUKPiA+IHJlbG9h
ZF9hY3Rpb25zX3BlcmZvcm1lZDoKPiA+IMKgwqDCoCBmd19hY3RpdmF0ZQo+ID4gW3Jvb3RAaG9z
dCB+XSMgaXAgbGluayBzaG93IGVuczdmMAo+ID4gNzE6IGVuczdmMDogPE5PLUNBUlJJRVIsQlJP
QURDQVNULE1VTFRJQ0FTVCxVUD4gbXR1IDE1MDAgcWRpc2MgbXEKPiA+IHN0YXRlIERPV04gbW9k
ZSBERUZBVUxUIGdyb3VwIGRlZmF1bHQgcWxlbiAxMDAwCj4gPiDCoMKgwqAgbGluay9ldGhlciBi
NDo5Njo5MTpkYzo3MjplMCBicmQgZmY6ZmY6ZmY6ZmY6ZmY6ZmYKPiA+IMKgwqDCoCBhbHRuYW1l
IGVucDIwMnMwZjAKPiA+IAo+ID4gZG1lc2cgYWZ0ZXIgZmxhc2g6Cj4gPiBbwqDCoCA1NS4xMjA3
ODhdIGljZTogQ29weXJpZ2h0IChjKSAyMDE4LCBJbnRlbCBDb3Jwb3JhdGlvbi4KPiA+IFvCoMKg
IDU1LjI3NDczNF0gaWNlIDAwMDA6Y2E6MDAuMDogR2V0IFBIWSBjYXBhYmlsaXRpZXMgZmFpbGVk
IHN0YXR1cwo+ID4gPSAtNSwgY29udGludWluZyBhbnl3YXkKPiA+IFvCoMKgIDU1LjU2OTc5N10g
aWNlIDAwMDA6Y2E6MDAuMDogVGhlIEREUCBwYWNrYWdlIHdhcyBzdWNjZXNzZnVsbHkKPiA+IGxv
YWRlZDogSUNFIE9TIERlZmF1bHQgUGFja2FnZSB2ZXJzaW9uIDEuMy4yOC4wCj4gPiBbwqDCoCA1
NS42MDM2MjldIGljZSAwMDAwOmNhOjAwLjA6IEdldCBQSFkgY2FwYWJpbGl0eSBmYWlsZWQuCj4g
PiBbwqDCoCA1NS42MDg5NTFdIGljZSAwMDAwOmNhOjAwLjA6IGljZV9pbml0X252bV9waHlfdHlw
ZSBmYWlsZWQ6IC01Cj4gPiBbwqDCoCA1NS42NDczNDhdIGljZSAwMDAwOmNhOjAwLjA6IFBUUCBp
bml0IHN1Y2Nlc3NmdWwKPiA+IFvCoMKgIDU1LjY3NTUzNl0gaWNlIDAwMDA6Y2E6MDAuMDogRENC
IGlzIGVuYWJsZWQgaW4gdGhlIGhhcmR3YXJlLAo+ID4gbWF4IG51bWJlciBvZiBUQ3Mgc3VwcG9y
dGVkIG9uIHRoaXMgcG9ydCBhcmUgOAo+ID4gW8KgwqAgNTUuNjg1MzY1XSBpY2UgMDAwMDpjYTow
MC4wOiBGVyBMTERQIGlzIGRpc2FibGVkLCBEQ0J4L0xMRFAgaW4KPiA+IFNXIG1vZGUuCj4gPiBb
wqDCoCA1NS42OTIxNzldIGljZSAwMDAwOmNhOjAwLjA6IENvbW1pdCBEQ0IgQ29uZmlndXJhdGlv
biB0byB0aGUKPiA+IGhhcmR3YXJlCj4gPiBbwqDCoCA1NS43MDEzODJdIGljZSAwMDAwOmNhOjAw
LjA6IDEyNi4wMjQgR2IvcyBhdmFpbGFibGUgUENJZQo+ID4gYmFuZHdpZHRoLCBsaW1pdGVkIGJ5
IDE2LjAgR1QvcyBQQ0llIHg4IGxpbmsgYXQgMDAwMDpjOTowMi4wCj4gPiAoY2FwYWJsZSBvZiAy
NTIuMDQ4IEdiL3Mgd2l0aCAxNi4wIEdUL3MgUENJZSB4MTYgbGluaykKPiA+IFJlYm9vdCBkb24n
dCBoZWxwLCBvbmx5IHNlY29uZCBmbGFzaC9hY3RpdmF0ZSB3aXRoIE9PVCBvciBwYXRjaGVkCj4g
PiBkcml2ZXIgcHV0IGNhcmQgYmFjayBpbiBjb25zaXN0ZW50IHN0YXRlCj4gPiAKPiA+IEFmdGVy
IHBhdGNoOgo+ID4gW3Jvb3RAaG9zdCB+XSMgZGV2bGluayBkZXYgZmxhc2ggcGNpLzAwMDA6Y2E6
MDAuMCBmaWxlCj4gPiBFODEwX1hYVkRBNF9GSF9PX1NFQ19GV18xcDZwMXA5X05WTV8zcDEwX1BM
RE1vTUNUUF8wLjExXzgwMDBBRDdCLmJpCj4gPiBuCj4gPiBQcmVwYXJpbmcgdG8gZmxhc2gKPiA+
IFtmdy5tZ210XSBFcmFzaW5nCj4gPiBbZncubWdtdF0gRXJhc2luZyBkb25lCj4gPiBbZncubWdt
dF0gRmxhc2hpbmcgMTAwJQo+ID4gW2Z3Lm1nbXRdIEZsYXNoaW5nIGRvbmUgMTAwJQo+ID4gW2Z3
LnVuZGldIEVyYXNpbmcKPiA+IFtmdy51bmRpXSBFcmFzaW5nIGRvbmUKPiA+IFtmdy51bmRpXSBG
bGFzaGluZyAxMDAlCj4gPiBbZncudW5kaV0gRmxhc2hpbmcgZG9uZSAxMDAlCj4gPiBbZncubmV0
bGlzdF0gRXJhc2luZwo+ID4gW2Z3Lm5ldGxpc3RdIEVyYXNpbmcgZG9uZQo+ID4gW2Z3Lm5ldGxp
c3RdIEZsYXNoaW5nIDEwMCUKPiA+IFtmdy5uZXRsaXN0XSBGbGFzaGluZyBkb25lIDEwMCUKPiA+
IEFjdGl2YXRlIG5ldyBmaXJtd2FyZSBieSBkZXZsaW5rIHJlbG9hZAo+ID4gW3Jvb3RAaG9zdCB+
XSMgZGV2bGluayBkZXYgcmVsb2FkIHBjaS8wMDAwOmNhOjAwLjAgYWN0aW9uCj4gPiBmd19hY3Rp
dmF0ZQo+ID4gcmVsb2FkX2FjdGlvbnNfcGVyZm9ybWVkOgo+ID4gwqDCoMKgIGZ3X2FjdGl2YXRl
Cj4gPiBbcm9vdEBob3N0IH5dIyBpcCBsaW5rIHNob3cgZW5zN2YwCj4gPiAxOTogZW5zN2YwOiA8
QlJPQURDQVNULE1VTFRJQ0FTVCxVUCxMT1dFUl9VUD4gbXR1IDE1MDAgcWRpc2MgbXEKPiA+IHN0
YXRlIFVQIG1vZGUgREVGQVVMVCBncm91cCBkZWZhdWx0IHFsZW4gMTAwMAo+ID4gwqDCoMKgIGxp
bmsvZXRoZXIgYjQ6OTY6OTE6ZGM6NzI6ZTAgYnJkIGZmOmZmOmZmOmZmOmZmOmZmCj4gPiDCoMKg
wqAgYWx0bmFtZSBlbnAyMDJzMGYwCj4gPiAKPiAKPiBBaGguLiBnb29kIGZpbmQuIEkgY2hlY2tl
ZCBhIGJ1bmNoIG9mIHBsYWNlcywgYnV0IGRpZG4ndCBjaGVjayBoZXJlCj4gZm9yCj4gZGlmZmVy
ZW5jZXMuIDooCj4gCj4gRm9yIHdoYXQgaXRzIHdvcnRoLCBJIGNoZWNrZWQgdGhlIHNvdXJjZSBo
aXN0b3J5IG9mIHRoZSBvdXQtb2YtdHJlZQo+IGRyaXZlciB0aGlzIGNhbWUgZnJvbS4gSXQgYXBw
ZWFycyB0byBiZSBhIHdvcmthcm91bmQgYWRkZWQgZm9yIGZpeGluZwo+IGEKPiBzaW1pbGFyIGlz
c3VlLgo+IAo+IEkgaGF2ZW4ndCBiZWVuIGFibGUgdG8gZGlnIHVwIHRoZSBmdWxsIGRldGFpbHMg
eWV0LiBJdCBhcHBlYXJlcyB0byBiZQo+IGEKPiBjb2xsaXNpb24gd2l0aCBmaXJtd2FyZSBmaW5h
bGl6aW5nIHJlY292ZXJ5IGFmdGVyIHRoZSBFTVAgcmVzZXQuCj4gCj4gU3RpbGwgdHJ5aW5nIHRv
IGRpZyBmb3IgYW55IG1vcmUgaW5mb3JtYXRpb24gSSBjYW4gZmluZC4KCkludGVyZXN0aW5nIHRp
bWUgZnJhbWUgY291bGQgYmUgYXJvdW5kIHRoaXMgY29tbWl0OgowODc3MWJjZTMzMDAzNiAoImlj
ZTogQ29udGludWUgcHJvYmUgb24gbGluay9QSFkgZXJyb3JzIikKClBldHIKCj4gCj4gPiBGaXhl
czogMzk5ZTI3ZGJiZDllOTQgKCJpY2U6IHN1cHBvcnQgaW1tZWRpYXRlIGZpcm13YXJlIGFjdGl2
YXRpb24KPiA+IHZpYSBkZXZsaW5rIHJlbG9hZCIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIE9y
b3MgPHBvcm9zQHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+IMKgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9tYWluLmMgfCAzICsrKwo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX21haW4uYwo+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X21haW4uYwo+ID4gaW5kZXggZDc2ODkyNTc4NWNhNzkuLjkwZWEyMjAzY2RjNzYzIDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPiA+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4gPiBAQCAtNjkz
MSwxMiArNjkzMSwxNSBAQCBzdGF0aWMgdm9pZCBpY2VfcmVidWlsZChzdHJ1Y3QgaWNlX3BmICpw
ZiwKPiA+IGVudW0gaWNlX3Jlc2V0X3JlcSByZXNldF90eXBlKQo+ID4gwqAKPiA+IMKgwqDCoMKg
wqDCoMKgwqBkZXZfZGJnKGRldiwgInJlYnVpbGRpbmcgUEYgYWZ0ZXIgcmVzZXRfdHlwZT0lZFxu
IiwKPiA+IHJlc2V0X3R5cGUpOwo+ID4gwqAKPiA+ICsjZGVmaW5lIElDRV9FTVBfUkVTRVRfU0xF
RVAgNTAwMAo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXNldF90eXBlID09IElDRV9SRVNFVF9F
TVBSKSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIElmIGFuIEVNUCBy
ZXNldCBoYXMgb2NjdXJyZWQsIGFueSBwcmV2aW91c2x5Cj4gPiBwZW5kaW5nIGZsYXNoCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIHVwZGF0ZSB3aWxsIGhhdmUgY29tcGxl
dGVkLiBXZSBubyBsb25nZXIga25vdwo+ID4gd2hldGhlciBvcgo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgKiBub3QgdGhlIE5WTSB1cGRhdGUgRU1QIHJlc2V0IGlzIHJlc3Ry
aWN0ZWQuCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwZi0+ZndfZW1wX3Jlc2V0X2Rpc2FibGVkID0gZmFs
c2U7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbXNsZWVwKElDRV9F
TVBfUkVTRVRfU0xFRVApOwo+ID4gwqDCoMKgwqDCoMKgwqDCoH0KPiA+IMKgCj4gPiDCoMKgwqDC
oMKgwqDCoMKgZXJyID0gaWNlX2luaXRfYWxsX2N0cmxxKGh3KTsKPiAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
