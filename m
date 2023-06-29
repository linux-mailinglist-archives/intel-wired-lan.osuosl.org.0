Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FD47422B0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 10:54:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C9B4813BB;
	Thu, 29 Jun 2023 08:54:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C9B4813BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688028840;
	bh=ZYREGv4o5fc73+g7Q31jCjDJAU4Ykm01D51EQkLKnR0=;
	h=Date:References:To:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ifRh+JNZNMjKKfY1nsc0ptJRF4/uTUrPPldufDKoMs5TV4T7cs707+3QC8CBsmcDR
	 rjNdse0m12rYxy6PfcCg7tHBewQxXtFpHaI7li/tjsWvFueZLOUWtcl4KibSHV+h7V
	 RyoUZ8soq277bDqpl7pNKevcRDkanQO3AYbyrnG7yFxTY/PgSfFgu3ynaWvTEpo7Zf
	 1VGgnk6EOsa6OdMjdiLPPp6tEm5b44c/gfGwBRjf9mXlpMun12ff5GMIRkI3Iv5W0Y
	 xRCJiNQRIFISbUrF4GO5jAXOevHd7WSKE9Mkui9TT7682eFHE1TuKs3MfXSRCgU3K8
	 E9FrVRV8LpaiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wbi0nA92FHtN; Thu, 29 Jun 2023 08:53:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27710812A0;
	Thu, 29 Jun 2023 08:53:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27710812A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3575F1BF279
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 08:53:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1374840528
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 08:53:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1374840528
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HpHWEKJwn8gy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 08:53:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE3A14015F
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com
 [IPv6:2607:f8b0:4864:20::232])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE3A14015F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 08:53:52 +0000 (UTC)
Received: by mail-oi1-x232.google.com with SMTP id
 5614622812f47-3a0423ea749so330912b6e.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 01:53:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688028832; x=1690620832;
 h=content-transfer-encoding:in-reply-to:from:to:references:cc
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9L0EMRHptAm3yVZe2epeeB+QiWPNAwd0Ma9fAhF0KX0=;
 b=M1QHLUbgzgpLh7Ib2X6JDX8CBbIUry8MycpdCVPMiK3EGA10Ciw5YWKKad8yUaUDKJ
 8tNLW2dPG8XPlXjQc+1w7gv9Zk6ZPp1fTFLdONfiyGJ/FOJyCG53MIiDbNnuhSnd+zxf
 IufGEbOnJGNI8jpAsnm1ON7BJiPI0iia3GY0i1SGiUC2ZUBjavfKKe5fpk7C91vjAn1J
 gk+VEimmUZbrZRYvxkoLQP6GTdBcUCJ7Yh5lFRf5viZuughjC9N2D9Hm1a11cCSNb7lX
 MBp9RvJheAItLcIM7LsCTnqdgSI6HfJH4MT8hTU786AJiIyPzlKmRMmgOGYuAA3QfjY/
 EcqQ==
X-Gm-Message-State: AC+VfDzdyPE7x1yg3eJ56BSuWycvPswPVf0OwUCe7g/ExduKkTZt6CAS
 mAtZLre9bKxuHMTVY5jFYbcgqg==
X-Google-Smtp-Source: ACHHUZ71v4YA2NHhuDxlFf/GTrCUwFIjibjjNwXTIpSsRDLc/Ow27yiLOcNTIuNQSehnNCcWpfkAGA==
X-Received: by 2002:a05:6808:120c:b0:3a0:3f7f:2329 with SMTP id
 a12-20020a056808120c00b003a03f7f2329mr31848941oil.54.1688028831783; 
 Thu, 29 Jun 2023 01:53:51 -0700 (PDT)
Received: from ?IPV6:2400:4050:a840:1e00:78d2:b862:10a7:d486?
 ([2400:4050:a840:1e00:78d2:b862:10a7:d486])
 by smtp.gmail.com with ESMTPSA id
 k7-20020a17090a658700b00262eccfa29fsm6676133pjj.33.2023.06.29.01.53.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Jun 2023 01:53:51 -0700 (PDT)
Message-ID: <c3c571aa-d882-09ea-15d8-4cb119feae4e@daynix.com>
Date: Thu, 29 Jun 2023 17:53:48 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
References: <20230602072516.42502-1-akihiko.odaki@daynix.com>
To: Jason Wang <jasowang@redhat.com>
From: Akihiko Odaki <akihiko.odaki@daynix.com>
In-Reply-To: <20230602072516.42502-1-akihiko.odaki@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20221208.gappssmtp.com; s=20221208; t=1688028832; x=1690620832;
 h=content-transfer-encoding:in-reply-to:from:to:references:cc
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9L0EMRHptAm3yVZe2epeeB+QiWPNAwd0Ma9fAhF0KX0=;
 b=Yc1ojRmLo2F9jqXgvUb7rBNg9ayecv0AYhZcgIRuud4elF+kltR3p/yQ8+3do31Ie8
 xrOO79ASNgz1w6jBBG5lfjy6PQkqRBp4Yk3E0nJECz4G+f9Ex4xOnbvkkGusdGXHLYTl
 rTCgPu9O/0mj/Z5VLWq2b1on7mIEiNsSV90tLs6p2cj/so9kOEFnuLPAg0Gj7cNRbrLR
 F2ASB/ioKM9GOQAEkyuib717rw6M0yWPTDjHrbIew/8728ZvtqhSiCnRsedCy3RPiyD+
 YeppibVeovSQqUvS3N1TQzxzNf0kAKeV4p616eV0Tgm+TyXBbbkWtkiGRIO3LkGUGmuB
 Tmeg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20221208.gappssmtp.com
 header.i=@daynix-com.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=Yc1ojRmL
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Add ICR clearing by
 corresponding IMS bit
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
Cc: Andrew Melnychenko <andrew@daynix.com>,
 Dmitry Fleytman <dmitry.fleytman@gmail.com>, intel-wired-lan@lists.osuosl.org,
 qemu-devel@nongnu.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMy8wNi8wMiAxNjoyNSwgQWtpaGlrbyBPZGFraSB3cm90ZToKPiBUaGUgZGF0YXNoZWV0
IGRvZXMgbm90IHNheSB3aGF0IGhhcHBlbnMgd2hlbiBpbnRlcnJ1cHQgd2FzIGFzc2VydGVkCj4g
KElDUi5JTlRfQVNTRVJUPTEpIGFuZCBhdXRvIG1hc2sgaXMgKm5vdCogYWN0aXZlLgo+IEhvd2V2
ZXIsIHNlY3Rpb24gb2YgMTMuMy4yNyB0aGUgUENJZSogR2JFIENvbnRyb2xsZXJzIE9wZW4gU291
cmNlCj4gU29mdHdhcmUgRGV2ZWxvcGVy4oCZcyBNYW51YWwsIHdoaWNoIHdlcmUgd3JpdHRlbiBm
b3Igb2xkZXIgZGV2aWNlcywKPiBuYW1lbHkgNjMxeEVTQi82MzJ4RVNCLCA4MjU2M0VCLzgyNTY0
RUIsIDgyNTcxRUIvODI1NzJFSSAmCj4gODI1NzNFLzgyNTczVi84MjU3M0wsIGRvZXMgc2F5Ogo+
PiBJZiBJTVMgPSAwYiwgdGhlbiB0aGUgSUNSIHJlZ2lzdGVyIGlzIGFsd2F5cyBjbGVhci1vbi1y
ZWFkLiBJZiBJTVMgaXMKPj4gbm90IDBiLCBidXQgc29tZSBJQ1IgYml0IGlzIHNldCB3aGVyZSB0
aGUgY29ycmVzcG9uZGluZyBJTVMgYml0IGlzIG5vdAo+PiBzZXQsIHRoZW4gYSByZWFkIGRvZXMg
bm90IGNsZWFyIHRoZSBJQ1IgcmVnaXN0ZXIuIEZvciBleGFtcGxlLCBpZgo+PiBJTVMgPSAxMDEw
MTAxMGIgYW5kIElDUiA9IDAxMDEwMTAxYiwgdGhlbiBhIHJlYWQgdG8gdGhlIElDUiByZWdpc3Rl
cgo+PiBkb2VzIG5vdCBjbGVhciBpdC4gSWYgSU1TID0gMTAxMDEwMTBiIGFuZCBJQ1IgPSAwMTAx
MDExYiwgdGhlbiBhIHJlYWQKPj4gdG8gdGhlIElDUiByZWdpc3RlciBjbGVhcnMgaXQgZW50aXJl
bHkgKElDUi5JTlRfQVNTRVJURUQgPSAxYikuCj4gCj4gTGludXggZG9lcyBubyBsb25nZXIgYWN0
aXZhdGUgYXV0byBtYXNrIHNpbmNlIGNvbW1pdAo+IDBhODA0N2FjNjhlNTBlNGNjYmFkY2ZjNmI2
YjA3MDgwNWI5NzY4ODUgYW5kIHRoZSByZWFsIGhhcmR3YXJlIGNsZWFycwo+IElDUiBldmVuIGlu
IHN1Y2ggYSBjYXNlIHNvIHdlIGFsc28gc2hvdWxkIGRvIHNvLgo+IAo+IEJ1Z2xpbms6IGh0dHBz
Oi8vYnVnemlsbGEucmVkaGF0LmNvbS9zaG93X2J1Zy5jZ2k/aWQ9MTcwNzQ0MQo+IFNpZ25lZC1v
ZmYtYnk6IEFuZHJldyBNZWxueWNoZW5rbyA8YW5kcmV3QGRheW5peC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogQWtpaGlrbyBPZGFraSA8YWtpaGlrby5vZGFraUBkYXluaXguY29tPgo+IC0tLQo+IFN1
cGVyc2VkZXM6IDwyMDIwMTIwMzEzMzIzNi4yMjIyMDctMS1hbmRyZXdAZGF5bml4LmNvbT4KPiAo
IltQQVRDSCB2Ml0gZTEwMDBlOiBBZGRlZCBJQ1IgY2xlYXJpbmcgYnkgY29ycmVzcG9uZGluZyBJ
TVMgYml0LiIpCj4gCj4gICBody9uZXQvZTEwMDBlX2NvcmUuYyB8IDM4ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrLS0tLS0tCj4gICBody9uZXQvdHJhY2UtZXZlbnRzICB8ICAxICsK
PiAgIDIgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvaHcvbmV0L2UxMDAwZV9jb3JlLmMgYi9ody9uZXQvZTEwMDBlX2NvcmUu
Ywo+IGluZGV4IDk3ODVlZjI3OWMuLjMzOGJiYmY0ZjQgMTAwNjQ0Cj4gLS0tIGEvaHcvbmV0L2Ux
MDAwZV9jb3JlLmMKPiArKysgYi9ody9uZXQvZTEwMDBlX2NvcmUuYwo+IEBAIC0yNjA3LDEyICsy
NjA3LDM4IEBAIGUxMDAwZV9tYWNfaWNyX3JlYWQoRTEwMDBFQ29yZSAqY29yZSwgaW50IGluZGV4
KQo+ICAgICAgICAgICBlMTAwMGVfbG93ZXJfaW50ZXJydXB0cyhjb3JlLCBJQ1IsIDB4ZmZmZmZm
ZmYpOwo+ICAgICAgIH0KPiAgIAo+IC0gICAgaWYgKChjb3JlLT5tYWNbSUNSXSAmIEUxMDAwX0lD
Ul9BU1NFUlRFRCkgJiYKPiAtICAgICAgICAoY29yZS0+bWFjW0NUUkxfRVhUXSAmIEUxMDAwX0NU
UkxfRVhUX0lBTUUpKSB7Cj4gLSAgICAgICAgdHJhY2VfZTEwMDBlX2lycV9pY3JfY2xlYXJfaWFt
ZSgpOwo+IC0gICAgICAgIGUxMDAwZV9sb3dlcl9pbnRlcnJ1cHRzKGNvcmUsIElDUiwgMHhmZmZm
ZmZmZik7Cj4gLSAgICAgICAgdHJhY2VfZTEwMDBlX2lycV9pY3JfcHJvY2Vzc19pYW1lKCk7Cj4g
LSAgICAgICAgZTEwMDBlX2xvd2VyX2ludGVycnVwdHMoY29yZSwgSU1TLCBjb3JlLT5tYWNbSUFN
XSk7Cj4gKyAgICBpZiAoY29yZS0+bWFjW0lDUl0gJiBFMTAwMF9JQ1JfQVNTRVJURUQpIHsKPiAr
ICAgICAgICBpZiAoY29yZS0+bWFjW0NUUkxfRVhUXSAmIEUxMDAwX0NUUkxfRVhUX0lBTUUpIHsK
PiArICAgICAgICAgICAgdHJhY2VfZTEwMDBlX2lycV9pY3JfY2xlYXJfaWFtZSgpOwo+ICsgICAg
ICAgICAgICBlMTAwMGVfbG93ZXJfaW50ZXJydXB0cyhjb3JlLCBJQ1IsIDB4ZmZmZmZmZmYpOwo+
ICsgICAgICAgICAgICB0cmFjZV9lMTAwMGVfaXJxX2ljcl9wcm9jZXNzX2lhbWUoKTsKPiArICAg
ICAgICAgICAgZTEwMDBlX2xvd2VyX2ludGVycnVwdHMoY29yZSwgSU1TLCBjb3JlLT5tYWNbSUFN
XSk7Cj4gKyAgICAgICAgfQo+ICsKPiArICAgICAgICAvKgo+ICsgICAgICAgICAqIFRoZSBkYXRh
c2hlZXQgZG9lcyBub3Qgc2F5IHdoYXQgaGFwcGVucyB3aGVuIGludGVycnVwdCB3YXMgYXNzZXJ0
ZWQKPiArICAgICAgICAgKiAoSUNSLklOVF9BU1NFUlQ9MSkgYW5kIGF1dG8gbWFzayBpcyAqbm90
KiBhY3RpdmUuCj4gKyAgICAgICAgICogSG93ZXZlciwgc2VjdGlvbiBvZiAxMy4zLjI3IHRoZSBQ
Q0llKiBHYkUgQ29udHJvbGxlcnMgT3BlbiBTb3VyY2UKPiArICAgICAgICAgKiBTb2Z0d2FyZSBE
ZXZlbG9wZXLigJlzIE1hbnVhbCwgd2hpY2ggd2VyZSB3cml0dGVuIGZvciBvbGRlciBkZXZpY2Vz
LAo+ICsgICAgICAgICAqIG5hbWVseSA2MzF4RVNCLzYzMnhFU0IsIDgyNTYzRUIvODI1NjRFQiwg
ODI1NzFFQi84MjU3MkVJICYKPiArICAgICAgICAgKiA4MjU3M0UvODI1NzNWLzgyNTczTCwgZG9l
cyBzYXk6Cj4gKyAgICAgICAgICogPiBJZiBJTVMgPSAwYiwgdGhlbiB0aGUgSUNSIHJlZ2lzdGVy
IGlzIGFsd2F5cyBjbGVhci1vbi1yZWFkLiBJZiBJTVMKPiArICAgICAgICAgKiA+IGlzIG5vdCAw
YiwgYnV0IHNvbWUgSUNSIGJpdCBpcyBzZXQgd2hlcmUgdGhlIGNvcnJlc3BvbmRpbmcgSU1TIGJp
dAo+ICsgICAgICAgICAqID4gaXMgbm90IHNldCwgdGhlbiBhIHJlYWQgZG9lcyBub3QgY2xlYXIg
dGhlIElDUiByZWdpc3Rlci4gRm9yCj4gKyAgICAgICAgICogPiBleGFtcGxlLCBpZiBJTVMgPSAx
MDEwMTAxMGIgYW5kIElDUiA9IDAxMDEwMTAxYiwgdGhlbiBhIHJlYWQgdG8gdGhlCj4gKyAgICAg
ICAgICogPiBJQ1IgcmVnaXN0ZXIgZG9lcyBub3QgY2xlYXIgaXQuIElmIElNUyA9IDEwMTAxMDEw
YiBhbmQKPiArICAgICAgICAgKiA+IElDUiA9IDAxMDEwMTFiLCB0aGVuIGEgcmVhZCB0byB0aGUg
SUNSIHJlZ2lzdGVyIGNsZWFycyBpdCBlbnRpcmVseQo+ICsgICAgICAgICAqID4gKElDUi5JTlRf
QVNTRVJURUQgPSAxYikuCj4gKyAgICAgICAgICoKPiArICAgICAgICAgKiBMaW51eCBkb2VzIG5v
IGxvbmdlciBhY3RpdmF0ZSBhdXRvIG1hc2sgc2luY2UgY29tbWl0Cj4gKyAgICAgICAgICogMGE4
MDQ3YWM2OGU1MGU0Y2NiYWRjZmM2YjZiMDcwODA1Yjk3Njg4NSBhbmQgdGhlIHJlYWwgaGFyZHdh
cmUKPiArICAgICAgICAgKiBjbGVhcnMgSUNSIGV2ZW4gaW4gc3VjaCBhIGNhc2Ugc28gd2UgYWxz
byBzaG91bGQgZG8gc28uCj4gKyAgICAgICAgICovCj4gKyAgICAgICAgaWYgKGNvcmUtPm1hY1tJ
Q1JdICYgY29yZS0+bWFjW0lNU10pIHsKPiArICAgICAgICAgICAgdHJhY2VfZTEwMDBlX2lycV9p
Y3JfY2xlYXJfaWNyX2JpdF9pbXMoY29yZS0+bWFjW0lDUl0sCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvcmUtPm1hY1tJTVNdKTsKPiArICAg
ICAgICAgICAgZTEwMDBlX2xvd2VyX2ludGVycnVwdHMoY29yZSwgSUNSLCAweGZmZmZmZmZmKTsK
PiArICAgICAgICB9Cj4gICAgICAgfQo+ICAgCj4gICAgICAgcmV0dXJuIHJldDsKPiBkaWZmIC0t
Z2l0IGEvaHcvbmV0L3RyYWNlLWV2ZW50cyBiL2h3L25ldC90cmFjZS1ldmVudHMKPiBpbmRleCBl
OTdlOWRjMTdiLi45MTAzNDg4ZTE3IDEwMDY0NAo+IC0tLSBhL2h3L25ldC90cmFjZS1ldmVudHMK
PiArKysgYi9ody9uZXQvdHJhY2UtZXZlbnRzCj4gQEAgLTIxNyw2ICsyMTcsNyBAQCBlMTAwMGVf
aXJxX3JlYWRfaW1zKHVpbnQzMl90IGltcykgIkN1cnJlbnQgSU1TOiAweCV4Igo+ICAgZTEwMDBl
X2lycV9pY3JfY2xlYXJfbm9ubXNpeF9pY3JfcmVhZCh2b2lkKSAiQ2xlYXJpbmcgSUNSIG9uIHJl
YWQgZHVlIHRvIG5vbiBNU0ktWCBpbnQiCj4gICBlMTAwMGVfaXJxX2ljcl9jbGVhcl96ZXJvX2lt
cyh2b2lkKSAiQ2xlYXJpbmcgSUNSIG9uIHJlYWQgZHVlIHRvIHplcm8gSU1TIgo+ICAgZTEwMDBl
X2lycV9pY3JfY2xlYXJfaWFtZSh2b2lkKSAiQ2xlYXJpbmcgSUNSIG9uIHJlYWQgZHVlIHRvIElB
TUUiCj4gK2UxMDAwZV9pcnFfaWNyX2NsZWFyX2ljcl9iaXRfaW1zKHVpbnQzMl90IGljciwgdWlu
dDMyX3QgaW1zKSAiQ2xlYXJpbmcgSUNSIG9uIHJlYWQgZHVlIGNvcnJlc3BvbmRpbmcgSU1TIGJp
dDogMHgleCAmIDB4JXgiCj4gICBlMTAwMGVfaXJxX2lhbV9jbGVhcl9laWFtZSh1aW50MzJfdCBp
YW0sIHVpbnQzMl90IGNhdXNlKSAiQ2xlYXJpbmcgSU1TIGR1ZSB0byBFSUFNRSwgSUFNOiAweCVY
LCBjYXVzZTogMHglWCIKPiAgIGUxMDAwZV9pcnFfaWNyX2NsZWFyX2VpYWModWludDMyX3QgaWNy
LCB1aW50MzJfdCBlaWFjKSAiQ2xlYXJpbmcgSUNSIGJpdHMgZHVlIHRvIEVJQUMsIElDUjogMHgl
WCwgRUlBQzogMHglWCIKPiAgIGUxMDAwZV9pcnFfaW1zX2NsZWFyX3NldF9pbWModWludDMyX3Qg
dmFsKSAiQ2xlYXJpbmcgSU1TIGJpdHMgZHVlIHRvIElNQyB3cml0ZSAweCV4IgoKSGkgSmFzb24s
CgpDYW4geW91IGhhdmUgYSBsb29rIGF0IHRoaXMgcGF0Y2ggYW5kCiJbUEFUQ0hdIGlnYjogUmVt
b3ZlIG9ic29sZXRlIHdvcmthcm91bmQgZm9yIFdpbmRvd3MiOgpodHRwczovL3BhdGNoZXcub3Jn
L1FFTVUvMjAyMzA1MjkwMjM3MDQuOTM4Ny0xLWFraWhpa28ub2Rha2lAZGF5bml4LmNvbS8KClJl
Z2FyZHMsCkFraWhpa28gT2Rha2kKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
