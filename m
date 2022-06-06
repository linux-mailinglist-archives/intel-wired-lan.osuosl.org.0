Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A413053E5D0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jun 2022 19:04:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF83661359;
	Mon,  6 Jun 2022 17:04:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z6Gr1ouKRz5u; Mon,  6 Jun 2022 17:04:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6F0A61358;
	Mon,  6 Jun 2022 17:04:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D90971BF303
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 17:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CDB1E61358
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 17:04:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DX-WoV9gQr6T for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jun 2022 17:04:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1415661357
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 17:04:16 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id i1so12583616plg.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 06 Jun 2022 10:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=CyWF09OzZxcB2K1Aed72uymGrOLckmk71H2nyGVg4zY=;
 b=cCFQHaLvQAH6GknCpb5d6lVa9a1FTUBLqcL61p2t2cdzUCV91fyyLbtB6QVoeW0eQt
 RLUiGofDTsoQUzdlKpPLKNk1HQ6cDgDYcd9lmhZ3VSkm8+4nxGtqn64EpWmLqEPXFeqO
 BYvSPDm9iQIrAzMyZQmIPjhUkJs3ke64Z5zeiBUx4RZojHaMZCmlmgd+i9tyRa16a7BY
 gFwq7lBYfPOevt3UzhHQsv6Nvk1g3hwL4SWzg5Va5LR/AJ9mMl/EPBTBfTEsbhQWTgAn
 II7C2MEBmFRut/8mwtTV81lVlGiTL+O/IUjzKMVtigqTBQRj1NxnRLvpN8ASVrcFObpW
 M1Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=CyWF09OzZxcB2K1Aed72uymGrOLckmk71H2nyGVg4zY=;
 b=NEHiRxImBb1OWZZJBYZQFYR73hozMFwmC6Owtqxxgcw/CsDg+SRp8jgaKWS1ek9l73
 QkoFk+q/h032d6VhW0GFncxh/5KT8fO+vGQJeyMcm8VnYbzYW0/LfGcc/8gxe1gj/Wyr
 qPibBuxc0wUvNpXzhFLw4JnmMfWpMeefc1xs1kA8dmfWkkOuOCMzwgNFEpg7et1DgynQ
 k+xplSkh7+ozSRM24dyDLbFDchdHwVQYVwm7dN+cufjP80eEjYEGuENXfNX2KIUKq1jR
 SeN6c2xXrUdgTXAYI6O4cX82jYOc1JI+1WNTHtFCJu9+TZKA/Z5xXgJ8RnaGKzxqmXJ1
 Nn0Q==
X-Gm-Message-State: AOAM531gQupgOEC5w0v7uTWcQfLBQYMnlwzA0iv/xqwhiMfXQFYF8CF0
 YwTd1E+tNtgZKk22Oz8CNvM=
X-Google-Smtp-Source: ABdhPJwRCJqhZwSHjYOtH7REGuF7ymQvvaAZeiAt4vre6Erb+On6VF4BN3QVgU708/xEZH58fZ6F3g==
X-Received: by 2002:a17:90b:3c6:b0:1e2:e9fc:4e79 with SMTP id
 go6-20020a17090b03c600b001e2e9fc4e79mr47490529pjb.192.1654535056293; 
 Mon, 06 Jun 2022 10:04:16 -0700 (PDT)
Received: from [192.168.0.128] ([98.97.37.52])
 by smtp.googlemail.com with ESMTPSA id
 ju10-20020a17090b20ca00b001df264610c4sm13408910pjb.0.2022.06.06.10.04.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jun 2022 10:04:15 -0700 (PDT)
Message-ID: <83e2fd08cabc0227d105c80d8e0538f546754cc7.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: =?UTF-8?Q?=E6=A2=81=E7=A4=BC=E5=AD=A6?= <lianglixuehao@126.com>
Date: Mon, 06 Jun 2022 10:04:13 -0700
In-Reply-To: <0362CDDC-AE9B-448C-BE7C-D563B12D5A61@126.com>
References: <20220601150428.33945-1-lianglixuehao@126.com>
 <f16ef33a4b12cebae2e2300a509014cd5de4a0d2.camel@gmail.com>
 <0362CDDC-AE9B-448C-BE7C-D563B12D5A61@126.com>
User-Agent: Evolution 3.40.4 (3.40.4-5.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v4] igb: Assign random MAC address
 instead of fail in case of invalid one
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, lianglixue@greatwall.com.cn,
 Netdev <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDIyLTA2LTA2IGF0IDIyOjM1ICswODAwLCDmooHnpLzlraYgd3JvdGU6Cj4gSGks
Cj4gdGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgeW91ciBzdWdnZXN0aW9uLgo+IAo+IEFzIHlvdSBz
YWlkLCB0aGUgd2F5IHRvIGNhdXNlIOKAmEludmFsaWQgTUFDIGFkZHJlc3PigJkgaXMgbm90IG9u
bHkgdGhyb3VnaCBpZ2Jfc2V0X2VlcHJvbSwKPiBidXQgYWxzbyBzb21lIHByZS1wcm9kdWN0aW9u
IG9yIHVuaW5pdGlhbGl6ZWQgYm9hcmRzLgo+IAo+IEJ1dCBpZiBzZXQgYnkgbW9kdWxlIHBhcmFt
ZXRlcnMsIGVzcGVjaWFsbHkgaW4gdGhlIGNhc2Ugb2YgQ09ORklHX0lHQj15LAo+IFRoZSBzaXR1
YXRpb24gbWF5IGJlIG1vcmUgdHJvdWJsZXNvbWUsIGJlY2F1c2UgZm9yIG1vc3QgdXNlcnMsIGlm
IHRoZSBzeXN0ZW0gZG9lcyBub3QgcHJvcGVybHkgbG9hZCBhbmQgZ2VuZXJhdGUgCj4gdGhlIG5l
dHdvcmsgY2FyZCBkZXZpY2UsIHRoZXkgY2FuIG9ubHkgYXNrIHRoZSBob3N0IHN1cHBsaWVyIGZv
ciBoZWxwLkJ1dCwKCkEgbW9kdWxlIHBhcmFtZXRlciBjYW4gYmUgcGFzc2VkIGFzIGEgcGFydCBv
ZiB0aGUga2VybmVsIGNvbW1hbmQgbGluZQppbiB0aGUgY2FzZSBvZiBDT05GSUdfSUdCPXkuIFNv
IGl0IGlzIHN0aWxsIHNvbWV0aGluZyB0aGF0IGNhbiBiZSBkZWFsdAp3aXRoIHZpYSBtb2R1bGUg
cGFyYW1ldGVycy4KCj4gKDEpIElmIHRoZSBpbnZhbGlkIG1hYyBhZGRyZXNzIGlzIGNhdXNlZCBi
eSBpZ2Jfc2V0X2VlcHJvbSwgaXQgaXMgcmVsYXRpdmVseSBtb3JlIGNvbnZlbmllbnQgZm9yIG1v
c3Qgb3BlcmF0aW9ucyBlbmdpbmVlcnMgCj4gdG8gY2hhbmdlIHRoZSBpbnZhbGlkIG1hYyBhZGRy
ZXNzIHRvIHRoZSBtYWMgYWRkcmVzcyB0aGV5IHRoaW5rIHNob3VsZCBiZSB2YWxpZCBieSBldGh0
b29sLCB3aGljaCBtYXkgc3RpbGwgYmUgSW52YWxpZC4KPiBBdCB0aGlzIHRpbWUsYXNzaWduZWQg
cmFuZG9tIE1BQyBhZGRyZXNzIHdoaWNoIGlzIHZhbGlkIGJ5IHRoZSBkcml2ZXIgZW5hYmxlcyB0
aGUgbmV0d29yayBjYXJkIGRyaXZlciB0byBjb250aW51ZSB0byBjb21wbGV0ZSB0aGUgbG9hZGlu
Zy4KPiBBcyBmb3Igd2hhdCB5b3UgbWVudGlvbmVkLCBpbiB0aGlzIGNhc2UgaWYgdGhlIHVzZXIg
ZG9lcyBub3Qgbm90aWNlIHRoYXQgdGhlIGRyaXZlciBoYWQgdXNlZCBhIHJhbmRvbSBtYWMgYWRk
cmVzcywKPiBpdCBtYXkgbGVhZCB0byBvdGhlciBwcm9ibGVtcy5idXQgdGhlIGZhY3QgaXMgdGhh
dCBpZiB0aGUgdXNlciBkZWxpYmVyYXRlbHkgc2V0cyBhIGN1c3RvbWl6ZWQgbWFjIGFkZHJlc3Ms
IAo+IHRoZSB1c2VyIHNob3VsZCBwYXkgYXR0ZW50aW9uIHRvIHdoZXRoZXIgdGhlIG1hYyBhZGRy
ZXNzIGlzIHN1Y2Nlc3NmdWxseSBjaGFuZ2VkLCBhbmQgYWxzbyBwYXkgYXR0ZW50aW9uIHRvIHRo
ZSAKPiBleHBlY3RlZCByZXN1bHQgYWZ0ZXIgY2hhbmdpbmcgdGhlIG1hYyBhZGRyZXNzLldoZW4g
dXNlcnMgZmluZCB0aGF0IHRoZSBjdXN0b20gbWFjIGFkZHJlc3MgY2Fubm90IAo+IGJlIHN1Y2Nl
c3NmdWxseSBjaGFuZ2VkIHRvIHRoZSBjdXN0b21pemVkIG9uZSwgdGhleSBjYW4gY29udGludWUg
ZGVidWdnaW5nLCB3aGljaCBpcyBlYXNpZXIgdGhhbiBsb29raW5nIGZvciAKPiB0aGUgaG9zdCBz
dXBwbGllcuKAmXMgc3VwcG9ydCBmcm9tIHRoZSB2ZXJ5IGZpcnN0IHRpbWUgb2Yg4oCcSW52YWxp
ZCBNQUMgYWRkcmVzc+KAnS4KClRoZSBwcm9ibGVtIGlzLCBoYXZpbmcgYSByYW5kb20gTUFDIGFk
ZHJlc3MgYXV0b21hdGljYWxseSBhc3NpZ25lZAptYWtlcyBpdCBsZXNzIGxpa2VseSB0byBkZXRl
Y3QgaXNzdWVzIGNhdXNlZCBieSAoMSkuIFdoYXQgSSBoYXZlIHNlZW4KaW4gdGhlIHBhc3QgaXMg
cGVvcGxlIHByb2dyYW0gRUVQUk9NcyBhbmQgb3ZlcndyaXRlIHRoaW5ncyBsaWtlIGEgTUFDCmFk
ZHJlc3MgdG8gYWxsIDBzLiBUaGlzIGNhdXNlcyBhbiBvYnZpb3VzIHByb2JsZW0gd2l0aCB0aGUg
Y3VycmVudApkcml2ZXIuIElmIGl0IGlzIGNoYW5nZWQgdG8ganVzdCBkZWZhdWx0IHRvIHVzaW5n
IGEgcmFuZG9tIE1BQyBhZGRyZXNzCndoZW4gdGhpcyBvY2N1cnMgdGhlIGlzc3VlIGNhbiBiZSBl
YXNpbHkgb3Zlcmxvb2tlZCBhbmQgd2lsbCBsaWtlbHkKbGVhZCB0byBtb3JlIGRpZmZpY3VsdHkg
aW4gdHJ5aW5nIHRvIG1haW50YWluIHRoZSBkZXZpY2UgYXMgaXQgYmVjb21lcwpoYXJkZXIgdG8g
aWRlbnRpZnkgaWYgdGhlcmUgbWF5IGJlIEVFUFJPTSBpc3N1ZXMuCgo+ICgyKSBJZiB0aGUgaW52
YWxpZCBtYWMgYWRkcmVzcyBpcyBjYXVzZWQgZHVyaW5nIHByZS1wcm9kdWN0aW9uIG9yIGluaXRp
YWxpemF0aW9uIG9mIHRoZSBib2FyZCwgaXQgaXMgZXZlbiBtb3JlIG5lY2Vzc2FyeSAKPiB0byB1
c2UgYSByYW5kb20gbWFjIGFkZHJlc3MgdG8gY29tcGxldGUgdGhlIGxvYWRpbmcgb2YgdGhlIG5l
dHdvcmsgY2FyZCwgYmVjYXVzZSB0aGUgdXNlciBvbmx5IGNhcmVzIGFib3V0IHdoZXRoZXIgCj4g
dGhlIG5ldHdvcmsgY2FyZCBpcyBsb2FkZWQsIG5vdCB3aGF0IHRoZSB2YWxpZCBNQUMgYWRkcmVz
cyBpcy4KClRoaXMgaXNuJ3QgbmVjZXNzYXJpbHkgdHJ1ZS4gV2hhdCBJIHdhcyBnZXR0aW5nIGF0
IGlzIHRoYXQgaW4gdGhlIHByZS0KcHJvZHVjdGlvbiBjYXNlIHRoZXJlIG1heSBub3QgYmUgYW4g
RUVQUk9NIGV2ZW4gbG9hZGVkIGFuZCBhcyBvbmUgb2YKdGhlIGluaXRpYWwgc3RlcHMgaXQgd2ls
bCBiZSBuZWNlc3NhcnkgdG8gcHV0IG9uZSB0b2dldGhlciBmb3IgdGhlCmRldmljZS4KClRoZSB1
c2VyIGNvdWxkIGVpdGhlciBtYWtlIHRoZSBtb2R1bGUgcGFyYW1ldGVyIHBlcm1lbmFudCBhbmQg
aGF2ZSBpdAp1c2VkIGZvciBldmVyeSBib290LCBvciB0aGV5IG1pZ2h0IGp1c3QgaGF2ZSB0byBz
ZXQgaXQgb25jZSBpbiBvcmRlciB0bwpsb2FkIGEgdmFsaWQgRUVQUk9NIGltYWdlIG9uIHRoZSBz
eXN0ZW0uCgo+IEFuZCBJIGFsc28gbm90aWNlZCB0aGF0IGl4Z2J2ZWZfc3dfaW5pdCBhbHNvIHVz
ZXMgYSByYW5kb20gdmFsaWQgbWFjIGFkZHJlc3MgdG8gY29udGludWUgbG9hZGluZyB0aGUgZHJp
dmVyIHdoZW4gCj4gdGhlIGFkZHJlc3MgaXMgaW52YWxpZC4gSW4gYWRkaXRpb24sIG5ldHdvcmsg
Y2FyZCBkcml2ZXJzIHN1Y2ggYXMgbWFydmVsbCwgYnJvYWRjb20sIHJlYWx0ZWssIGV0Yy4sIHdo
ZW4gYW4gaW52YWxpZCAKPiBNQUMgYWRkcmVzcyBpcyBkZXRlY3RlZCwgaXQgYWxzbyBkb2VzIG5v
dCBkaXJlY3RseSBleGl0IHRoZSBkcml2ZXIgbG9hZGluZywgYnV0IHVzZXMgYSByYW5kb20gdmFs
aWQgTUFDIGFkZHJlc3MuCgpUaGUgVkYgZHJpdmVycyBhc3NpZ24gYSByYW5kb20gTUFDIGFkZHJl
c3MgZHVlIHRvIG1vcmUgaGlzdG9yaWMgcmVhc29ucwp0aGFuIGFueXRoaW5nIGVsc2UuIEluIGFk
ZGl0aW9uIGdlbmVyYWxseSB0aGUgdXNlIG9mIHRoZSByYW5kb20gTUFDCmFkZHJlc3MgaXMgbW9y
ZS1vci1sZXNzIGZyb3duZWQgdXBvbi4gVGhlcmUgaXMgbG9naWMgaW4gaXhnYmV2ZiB0aGF0Cndp
bGwgY2F1c2UgdGhlIFBGIHRvIHJlamVjdCB0aGUgVkYgTUFDIGFkZHJlc3MgYW5kIG92ZXJ3cml0
ZSB0aGUgTUFDCmFkZHJlc3MgZnJvbSB0aGUgUEYgc2lkZS4KCkFzIGZhciBhcyB0aGUgb3RoZXIg
ZHJpdmVycyB0aGV5IGhhdmUgdGhlaXIgcmVhc29ucy4gSW4gbWFueSBjYXNlcyBJCnN1c3BlY3Qg
dGhlIGRyaXZlciBpcyBpbnRlbmRlZCBmb3IgYW4gZW1iZWRkZWQgZW52aXJvbm1lbnQgd2hlcmUg
dGhlCnVzZXIgbWlnaHQgbm90IGJlIGFibGUgdG8gcmVhY2ggdGhlIGRldmljZSBpZiB0aGUgTklD
IGRvZXNuJ3QgY29tZSB1cC4KClRoZSBpZ2IgZHJpdmVyIGlzIG1lYW50IHRvIHR5cGljYWxseSBi
ZSB1c2VkIGluIGEgZGVza3RvcCBlbnZpcm9ubWVudC4KQ2F0Y2hpbmcgYSBtYWxmb3JtZWQgTUFD
IGFkZHJlc3MgaXMgaW1wb3J0YW50IGFzIGEgcGFydCBvZiB0aGF0IGFzIGl0CmlzIG9uZSBvZiB0
aGUgaGVhbHRoIGNoZWNrcyBmb3IgdGhlIGRldmljZS4gVGhhdCBpcyB3aHkgSSBhbSBvcGVuIHRv
CnN1cHBvcnRpbmcgaXQgYnkgZGVmYXVsdCwgYnV0IG9ubHkgaWYgaXQgaXMgdmlhIGEgbW9kdWxl
IHBhcmFtZXRlciB0bwpzcGVjaWZ5IHRoZSBiZWhhdmlvci4gT3RoZXJ3aXNlIHdlIGFyZSBjaGFu
Z2luZyBhIGtleSBwaWVjZSBvZiBkcml2ZXIKYmVoYXZpb3IgYW5kIHdpbGwgYmUgcG90ZW50aWFs
bHkgbWFza2luZyBFRVBST00gaXNzdWVzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
