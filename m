Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2079743F1B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jun 2023 17:43:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03FDB81458;
	Fri, 30 Jun 2023 15:43:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03FDB81458
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688139830;
	bh=mz5MFwtyK0hr4TDnxa6rDufq/e7F/7g3H8Ia/7Zi9EI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XeDBsKFL/Jafs23BZpKu6q3Ke6Xz6IblAkt1mQDDt8k8MsMnU5Brdcrjje+Pf1fyo
	 Sj7zXnVdkRvH0u9hNR7JPD7k7VlfkGwtCWjat+e/qHz/oaJeYBj5l+zFY/AERy7FqZ
	 +XqRxKI79Qv5jTcVTjajMzX+0SxrgAkkm2nmW+6cuB7XvHbjjVJDBrqrS9Mu+d+J6K
	 Mn4s1ufH7XT3HM8sCrjr6aDSppomMl2+Om+s4NA7iUV1dU5UpfneI/wDTILUYLRv0M
	 ZlL2DxYmCBQZdk1XZjCcnWeJkafBfypznKoxXkgPrWfOyThE9MJ9l9jdgdvZE4SrUV
	 cuigLC5O3HgWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tQlEUO9yjW8p; Fri, 30 Jun 2023 15:43:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C11B812FF;
	Fri, 30 Jun 2023 15:43:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C11B812FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1834F1BF836
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 06:05:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F1D4C81F72
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 06:05:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1D4C81F72
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t4FZktdzHKXJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jun 2023 06:05:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3F1181F53
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3F1181F53
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 06:05:28 +0000 (UTC)
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-422-oU6KiOElMIK7ElwZPm850Q-1; Fri, 30 Jun 2023 02:05:25 -0400
X-MC-Unique: oU6KiOElMIK7ElwZPm850Q-1
Received: by mail-lj1-f197.google.com with SMTP id
 38308e7fff4ca-2b66c262bd9so13928941fa.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 23:05:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688105124; x=1690697124;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6gcXZuwuD1fZ0mmERxs6VyNXFpMBOOo6AC1eTKAahlA=;
 b=j4vH/gCRkzksQ/YcVPYl5yAn8whILTNm1S986jwpmgpwOdr/yIF70OSOLrxoMloUqV
 9idYxbmF7tjlVKHtFJd2XNmNF0258RT8KZUCCunwgUPXDIOzxW2ae2KW281nlw3ocZbE
 sizwH1luexdnHjGe7GBXQWWtXxayW+lrpy6ChjJkO5aeMhhkep3yvpUo/alUQM5SHHgx
 aMOStdh66YCX3gAYV6m0/OR4WfhrwWsp1uYJpSjPkbXkmWA2RCmPygOQgdbcJsXN4cSa
 FOhM2f3Z/MB6UccaivfPGvkdc0RpErsP9ZXvV/F9tsMoqcrg5LqutIShTYtFWUXqnJ6x
 t5hA==
X-Gm-Message-State: ABy/qLbCmfy7CVTb8EwuMrGc2iFgzeltf8Edcp9kezuX9QXq3s/nMx5e
 RmhG4MjTNJHHf3HnOhleuOMfVcEKVaxgrrydR6q4VC+XINL+Ij0RPuFymrL9Gt1WA8dxzG4Luhe
 azdC7cDjaoESFMUgvzzTbzb071DvcYP0MXJTVCewph7FcGw==
X-Received: by 2002:a2e:9bd6:0:b0:2b4:45bc:7bd with SMTP id
 w22-20020a2e9bd6000000b002b445bc07bdmr1350700ljj.4.1688105124511; 
 Thu, 29 Jun 2023 23:05:24 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGwiODeQ2YTsvPEJ/OohVRTOj251FmobQgLcipeUC+pKd7X3G2StS2nZfoB7t3TjpAoecPmej0tcBkUzTUNH8g=
X-Received: by 2002:a2e:9bd6:0:b0:2b4:45bc:7bd with SMTP id
 w22-20020a2e9bd6000000b002b445bc07bdmr1350683ljj.4.1688105124183; Thu, 29 Jun
 2023 23:05:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230602072516.42502-1-akihiko.odaki@daynix.com>
 <c3c571aa-d882-09ea-15d8-4cb119feae4e@daynix.com>
In-Reply-To: <c3c571aa-d882-09ea-15d8-4cb119feae4e@daynix.com>
From: Jason Wang <jasowang@redhat.com>
Date: Fri, 30 Jun 2023 14:05:13 +0800
Message-ID: <CACGkMEu6gRKC3aGKNMOCyKq8AJ8xrjkYxPFzsWQezSrbBqRh9Q@mail.gmail.com>
To: Akihiko Odaki <akihiko.odaki@daynix.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Fri, 30 Jun 2023 15:43:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688105127;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6gcXZuwuD1fZ0mmERxs6VyNXFpMBOOo6AC1eTKAahlA=;
 b=dqlxQLBaxUTIysDPnUex6qHPnxWFBvb8VO2sSzEO+DkSWatCMurEfvYygIdn8xvIMmi4W3
 6tSD7YZQ5yWBMdzZV7pChxhR1UVhwx4vbJNtFd+DHdwjaZ7nYRtDXQWZTFh8qzW+fuMVCR
 C33S3CdjOCtUmg1dbPVmD1Pz+Ljgzms=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=dqlxQLBa
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBKdW4gMjksIDIwMjMgYXQgNDo1M+KAr1BNIEFraWhpa28gT2Rha2kgPGFraWhpa28u
b2Rha2lAZGF5bml4LmNvbT4gd3JvdGU6Cj4KPiBPbiAyMDIzLzA2LzAyIDE2OjI1LCBBa2loaWtv
IE9kYWtpIHdyb3RlOgo+ID4gVGhlIGRhdGFzaGVldCBkb2VzIG5vdCBzYXkgd2hhdCBoYXBwZW5z
IHdoZW4gaW50ZXJydXB0IHdhcyBhc3NlcnRlZAo+ID4gKElDUi5JTlRfQVNTRVJUPTEpIGFuZCBh
dXRvIG1hc2sgaXMgKm5vdCogYWN0aXZlLgo+ID4gSG93ZXZlciwgc2VjdGlvbiBvZiAxMy4zLjI3
IHRoZSBQQ0llKiBHYkUgQ29udHJvbGxlcnMgT3BlbiBTb3VyY2UKPiA+IFNvZnR3YXJlIERldmVs
b3BlcuKAmXMgTWFudWFsLCB3aGljaCB3ZXJlIHdyaXR0ZW4gZm9yIG9sZGVyIGRldmljZXMsCj4g
PiBuYW1lbHkgNjMxeEVTQi82MzJ4RVNCLCA4MjU2M0VCLzgyNTY0RUIsIDgyNTcxRUIvODI1NzJF
SSAmCj4gPiA4MjU3M0UvODI1NzNWLzgyNTczTCwgZG9lcyBzYXk6Cj4gPj4gSWYgSU1TID0gMGIs
IHRoZW4gdGhlIElDUiByZWdpc3RlciBpcyBhbHdheXMgY2xlYXItb24tcmVhZC4gSWYgSU1TIGlz
Cj4gPj4gbm90IDBiLCBidXQgc29tZSBJQ1IgYml0IGlzIHNldCB3aGVyZSB0aGUgY29ycmVzcG9u
ZGluZyBJTVMgYml0IGlzIG5vdAo+ID4+IHNldCwgdGhlbiBhIHJlYWQgZG9lcyBub3QgY2xlYXIg
dGhlIElDUiByZWdpc3Rlci4gRm9yIGV4YW1wbGUsIGlmCj4gPj4gSU1TID0gMTAxMDEwMTBiIGFu
ZCBJQ1IgPSAwMTAxMDEwMWIsIHRoZW4gYSByZWFkIHRvIHRoZSBJQ1IgcmVnaXN0ZXIKPiA+PiBk
b2VzIG5vdCBjbGVhciBpdC4gSWYgSU1TID0gMTAxMDEwMTBiIGFuZCBJQ1IgPSAwMTAxMDExYiwg
dGhlbiBhIHJlYWQKPiA+PiB0byB0aGUgSUNSIHJlZ2lzdGVyIGNsZWFycyBpdCBlbnRpcmVseSAo
SUNSLklOVF9BU1NFUlRFRCA9IDFiKS4KPiA+Cj4gPiBMaW51eCBkb2VzIG5vIGxvbmdlciBhY3Rp
dmF0ZSBhdXRvIG1hc2sgc2luY2UgY29tbWl0Cj4gPiAwYTgwNDdhYzY4ZTUwZTRjY2JhZGNmYzZi
NmIwNzA4MDViOTc2ODg1IGFuZCB0aGUgcmVhbCBoYXJkd2FyZSBjbGVhcnMKPiA+IElDUiBldmVu
IGluIHN1Y2ggYSBjYXNlIHNvIHdlIGFsc28gc2hvdWxkIGRvIHNvLgo+ID4KPiA+IEJ1Z2xpbms6
IGh0dHBzOi8vYnVnemlsbGEucmVkaGF0LmNvbS9zaG93X2J1Zy5jZ2k/aWQ9MTcwNzQ0MQo+ID4g
U2lnbmVkLW9mZi1ieTogQW5kcmV3IE1lbG55Y2hlbmtvIDxhbmRyZXdAZGF5bml4LmNvbT4KPiA+
IFNpZ25lZC1vZmYtYnk6IEFraWhpa28gT2Rha2kgPGFraWhpa28ub2Rha2lAZGF5bml4LmNvbT4K
PiA+IC0tLQo+ID4gU3VwZXJzZWRlczogPDIwMjAxMjAzMTMzMjM2LjIyMjIwNy0xLWFuZHJld0Bk
YXluaXguY29tPgo+ID4gKCJbUEFUQ0ggdjJdIGUxMDAwZTogQWRkZWQgSUNSIGNsZWFyaW5nIGJ5
IGNvcnJlc3BvbmRpbmcgSU1TIGJpdC4iKQo+ID4KPiA+ICAgaHcvbmV0L2UxMDAwZV9jb3JlLmMg
fCAzOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQo+ID4gICBody9uZXQv
dHJhY2UtZXZlbnRzICB8ICAxICsKPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25z
KCspLCA2IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9ody9uZXQvZTEwMDBlX2Nv
cmUuYyBiL2h3L25ldC9lMTAwMGVfY29yZS5jCj4gPiBpbmRleCA5Nzg1ZWYyNzljLi4zMzhiYmJm
NGY0IDEwMDY0NAo+ID4gLS0tIGEvaHcvbmV0L2UxMDAwZV9jb3JlLmMKPiA+ICsrKyBiL2h3L25l
dC9lMTAwMGVfY29yZS5jCj4gPiBAQCAtMjYwNywxMiArMjYwNywzOCBAQCBlMTAwMGVfbWFjX2lj
cl9yZWFkKEUxMDAwRUNvcmUgKmNvcmUsIGludCBpbmRleCkKPiA+ICAgICAgICAgICBlMTAwMGVf
bG93ZXJfaW50ZXJydXB0cyhjb3JlLCBJQ1IsIDB4ZmZmZmZmZmYpOwo+ID4gICAgICAgfQo+ID4K
PiA+IC0gICAgaWYgKChjb3JlLT5tYWNbSUNSXSAmIEUxMDAwX0lDUl9BU1NFUlRFRCkgJiYKPiA+
IC0gICAgICAgIChjb3JlLT5tYWNbQ1RSTF9FWFRdICYgRTEwMDBfQ1RSTF9FWFRfSUFNRSkpIHsK
PiA+IC0gICAgICAgIHRyYWNlX2UxMDAwZV9pcnFfaWNyX2NsZWFyX2lhbWUoKTsKPiA+IC0gICAg
ICAgIGUxMDAwZV9sb3dlcl9pbnRlcnJ1cHRzKGNvcmUsIElDUiwgMHhmZmZmZmZmZik7Cj4gPiAt
ICAgICAgICB0cmFjZV9lMTAwMGVfaXJxX2ljcl9wcm9jZXNzX2lhbWUoKTsKPiA+IC0gICAgICAg
IGUxMDAwZV9sb3dlcl9pbnRlcnJ1cHRzKGNvcmUsIElNUywgY29yZS0+bWFjW0lBTV0pOwo+ID4g
KyAgICBpZiAoY29yZS0+bWFjW0lDUl0gJiBFMTAwMF9JQ1JfQVNTRVJURUQpIHsKPiA+ICsgICAg
ICAgIGlmIChjb3JlLT5tYWNbQ1RSTF9FWFRdICYgRTEwMDBfQ1RSTF9FWFRfSUFNRSkgewo+ID4g
KyAgICAgICAgICAgIHRyYWNlX2UxMDAwZV9pcnFfaWNyX2NsZWFyX2lhbWUoKTsKPiA+ICsgICAg
ICAgICAgICBlMTAwMGVfbG93ZXJfaW50ZXJydXB0cyhjb3JlLCBJQ1IsIDB4ZmZmZmZmZmYpOwo+
ID4gKyAgICAgICAgICAgIHRyYWNlX2UxMDAwZV9pcnFfaWNyX3Byb2Nlc3NfaWFtZSgpOwo+ID4g
KyAgICAgICAgICAgIGUxMDAwZV9sb3dlcl9pbnRlcnJ1cHRzKGNvcmUsIElNUywgY29yZS0+bWFj
W0lBTV0pOwo+ID4gKyAgICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICAgLyoKPiA+ICsgICAgICAg
ICAqIFRoZSBkYXRhc2hlZXQgZG9lcyBub3Qgc2F5IHdoYXQgaGFwcGVucyB3aGVuIGludGVycnVw
dCB3YXMgYXNzZXJ0ZWQKPiA+ICsgICAgICAgICAqIChJQ1IuSU5UX0FTU0VSVD0xKSBhbmQgYXV0
byBtYXNrIGlzICpub3QqIGFjdGl2ZS4KPiA+ICsgICAgICAgICAqIEhvd2V2ZXIsIHNlY3Rpb24g
b2YgMTMuMy4yNyB0aGUgUENJZSogR2JFIENvbnRyb2xsZXJzIE9wZW4gU291cmNlCj4gPiArICAg
ICAgICAgKiBTb2Z0d2FyZSBEZXZlbG9wZXLigJlzIE1hbnVhbCwgd2hpY2ggd2VyZSB3cml0dGVu
IGZvciBvbGRlciBkZXZpY2VzLAo+ID4gKyAgICAgICAgICogbmFtZWx5IDYzMXhFU0IvNjMyeEVT
QiwgODI1NjNFQi84MjU2NEVCLCA4MjU3MUVCLzgyNTcyRUkgJgo+ID4gKyAgICAgICAgICogODI1
NzNFLzgyNTczVi84MjU3M0wsIGRvZXMgc2F5Ogo+ID4gKyAgICAgICAgICogPiBJZiBJTVMgPSAw
YiwgdGhlbiB0aGUgSUNSIHJlZ2lzdGVyIGlzIGFsd2F5cyBjbGVhci1vbi1yZWFkLiBJZiBJTVMK
PiA+ICsgICAgICAgICAqID4gaXMgbm90IDBiLCBidXQgc29tZSBJQ1IgYml0IGlzIHNldCB3aGVy
ZSB0aGUgY29ycmVzcG9uZGluZyBJTVMgYml0Cj4gPiArICAgICAgICAgKiA+IGlzIG5vdCBzZXQs
IHRoZW4gYSByZWFkIGRvZXMgbm90IGNsZWFyIHRoZSBJQ1IgcmVnaXN0ZXIuIEZvcgo+ID4gKyAg
ICAgICAgICogPiBleGFtcGxlLCBpZiBJTVMgPSAxMDEwMTAxMGIgYW5kIElDUiA9IDAxMDEwMTAx
YiwgdGhlbiBhIHJlYWQgdG8gdGhlCj4gPiArICAgICAgICAgKiA+IElDUiByZWdpc3RlciBkb2Vz
IG5vdCBjbGVhciBpdC4gSWYgSU1TID0gMTAxMDEwMTBiIGFuZAo+ID4gKyAgICAgICAgICogPiBJ
Q1IgPSAwMTAxMDExYiwgdGhlbiBhIHJlYWQgdG8gdGhlIElDUiByZWdpc3RlciBjbGVhcnMgaXQg
ZW50aXJlbHkKPiA+ICsgICAgICAgICAqID4gKElDUi5JTlRfQVNTRVJURUQgPSAxYikuCj4gPiAr
ICAgICAgICAgKgo+ID4gKyAgICAgICAgICogTGludXggZG9lcyBubyBsb25nZXIgYWN0aXZhdGUg
YXV0byBtYXNrIHNpbmNlIGNvbW1pdAo+ID4gKyAgICAgICAgICogMGE4MDQ3YWM2OGU1MGU0Y2Ni
YWRjZmM2YjZiMDcwODA1Yjk3Njg4NSBhbmQgdGhlIHJlYWwgaGFyZHdhcmUKPiA+ICsgICAgICAg
ICAqIGNsZWFycyBJQ1IgZXZlbiBpbiBzdWNoIGEgY2FzZSBzbyB3ZSBhbHNvIHNob3VsZCBkbyBz
by4KPiA+ICsgICAgICAgICAqLwo+ID4gKyAgICAgICAgaWYgKGNvcmUtPm1hY1tJQ1JdICYgY29y
ZS0+bWFjW0lNU10pIHsKPiA+ICsgICAgICAgICAgICB0cmFjZV9lMTAwMGVfaXJxX2ljcl9jbGVh
cl9pY3JfYml0X2ltcyhjb3JlLT5tYWNbSUNSXSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb3JlLT5tYWNbSU1TXSk7Cj4gPiArICAgICAg
ICAgICAgZTEwMDBlX2xvd2VyX2ludGVycnVwdHMoY29yZSwgSUNSLCAweGZmZmZmZmZmKTsKPiA+
ICsgICAgICAgIH0KPiA+ICAgICAgIH0KPiA+Cj4gPiAgICAgICByZXR1cm4gcmV0Owo+ID4gZGlm
ZiAtLWdpdCBhL2h3L25ldC90cmFjZS1ldmVudHMgYi9ody9uZXQvdHJhY2UtZXZlbnRzCj4gPiBp
bmRleCBlOTdlOWRjMTdiLi45MTAzNDg4ZTE3IDEwMDY0NAo+ID4gLS0tIGEvaHcvbmV0L3RyYWNl
LWV2ZW50cwo+ID4gKysrIGIvaHcvbmV0L3RyYWNlLWV2ZW50cwo+ID4gQEAgLTIxNyw2ICsyMTcs
NyBAQCBlMTAwMGVfaXJxX3JlYWRfaW1zKHVpbnQzMl90IGltcykgIkN1cnJlbnQgSU1TOiAweCV4
Igo+ID4gICBlMTAwMGVfaXJxX2ljcl9jbGVhcl9ub25tc2l4X2ljcl9yZWFkKHZvaWQpICJDbGVh
cmluZyBJQ1Igb24gcmVhZCBkdWUgdG8gbm9uIE1TSS1YIGludCIKPiA+ICAgZTEwMDBlX2lycV9p
Y3JfY2xlYXJfemVyb19pbXModm9pZCkgIkNsZWFyaW5nIElDUiBvbiByZWFkIGR1ZSB0byB6ZXJv
IElNUyIKPiA+ICAgZTEwMDBlX2lycV9pY3JfY2xlYXJfaWFtZSh2b2lkKSAiQ2xlYXJpbmcgSUNS
IG9uIHJlYWQgZHVlIHRvIElBTUUiCj4gPiArZTEwMDBlX2lycV9pY3JfY2xlYXJfaWNyX2JpdF9p
bXModWludDMyX3QgaWNyLCB1aW50MzJfdCBpbXMpICJDbGVhcmluZyBJQ1Igb24gcmVhZCBkdWUg
Y29ycmVzcG9uZGluZyBJTVMgYml0OiAweCV4ICYgMHgleCIKPiA+ICAgZTEwMDBlX2lycV9pYW1f
Y2xlYXJfZWlhbWUodWludDMyX3QgaWFtLCB1aW50MzJfdCBjYXVzZSkgIkNsZWFyaW5nIElNUyBk
dWUgdG8gRUlBTUUsIElBTTogMHglWCwgY2F1c2U6IDB4JVgiCj4gPiAgIGUxMDAwZV9pcnFfaWNy
X2NsZWFyX2VpYWModWludDMyX3QgaWNyLCB1aW50MzJfdCBlaWFjKSAiQ2xlYXJpbmcgSUNSIGJp
dHMgZHVlIHRvIEVJQUMsIElDUjogMHglWCwgRUlBQzogMHglWCIKPiA+ICAgZTEwMDBlX2lycV9p
bXNfY2xlYXJfc2V0X2ltYyh1aW50MzJfdCB2YWwpICJDbGVhcmluZyBJTVMgYml0cyBkdWUgdG8g
SU1DIHdyaXRlIDB4JXgiCj4KPiBIaSBKYXNvbiwKPgo+IENhbiB5b3UgaGF2ZSBhIGxvb2sgYXQg
dGhpcyBwYXRjaCBhbmQKPiAiW1BBVENIXSBpZ2I6IFJlbW92ZSBvYnNvbGV0ZSB3b3JrYXJvdW5k
IGZvciBXaW5kb3dzIjoKPiBodHRwczovL3BhdGNoZXcub3JnL1FFTVUvMjAyMzA1MjkwMjM3MDQu
OTM4Ny0xLWFraWhpa28ub2Rha2lAZGF5bml4LmNvbS8KPgo+IFJlZ2FyZHMsCj4gQWtpaGlrbyBP
ZGFraQoKSSd2ZSBxdWV1ZWQgYm90aCBvZiB0aGUgcGF0Y2hlcy4KClRoYW5rcwoKPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
