Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 418DC735767
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 14:54:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB84681B9D;
	Mon, 19 Jun 2023 12:54:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB84681B9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687179289;
	bh=UyJTQjVAn/DoqOURqiSHrCOh8tNuJwsjKG0cnV0GQ1w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=jJ5qF2LzMQPFIw2ifBmQCbgZPaxDJfICLF5DIYw88tZXyyYtdVWWfkz9cgBVbZJg1
	 3RGdJPT7Bh15Ig1rT40p8rcOily8WqzfAwi/60je/dr4zCrgcdCYqYS65drZuo0AVw
	 0OM/UMdE43h3FrzUXvj2t+gyaQl3RKUyrI7a7so1J0Ie0hnmSqoucR7q1K9Ie5Ylw5
	 yuHqjERLGNKueDVBmnkwfPhJV2nbN/NsIitxQl7ScQOGPp43WJbRccD/TM4hcE44tr
	 B3VYKdj4Uv9bQKHtHktkeQIAadPpAwdeY1NNgmloQX/e8f+weC2zcaJBZoAhWfLMfr
	 r+CJj4BbXq8wQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DpD4AJnL8FZC; Mon, 19 Jun 2023 12:54:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E2B181B0A;
	Mon, 19 Jun 2023 12:54:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E2B181B0A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 80D8C1BF580
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 12:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58BA16117F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 12:54:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58BA16117F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1fvzGvjJN1iE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 12:54:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B93760808
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B93760808
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 12:54:41 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-wnKRIbGCODqtjaZGWE1Vag-1; Mon, 19 Jun 2023 08:54:39 -0400
X-MC-Unique: wnKRIbGCODqtjaZGWE1Vag-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-3f8f8e29771so11598865e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 05:54:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687179278; x=1689771278;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:reply-to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IDAKmsTrcdD3l8pnibAcUiFoVMKj0wINSNr7RXPEDVg=;
 b=KDJSBHGoRk5ABqbaKd9juca4sfgDA7Fy4ZLkQ/5UQtG9eAlYgnQSvdrm+PivZU1YqP
 EzK/mg6oZ8y9pxdem7J/WfG+3eJYekiR/Ed+KdOztu69kIai7q0zam1lcHJxEXVNKs3X
 EylzE5TTICwTu69GQsHubNOM9YEW5XLOJQkaD9SAEfhx+ERXluZznLKejyG1aAczFLMP
 d5wpkpOdAg9tZwWDFk/K+erZpo/c0jfAu+nzW89HsY1I/LtUdhIIZ+fsehK3dcuKNTFa
 xBH0/TC035q9ZLjZ/UtIyoGi7vspWioucrYKj2yxv6RA8SDhKOrYehBuBIKZArl6dl+p
 /Yzg==
X-Gm-Message-State: AC+VfDwGxJXdTzHlV/yt5qWLFMawFkLbp61RfF712OwQUK1xJi+ZL8WK
 J7OVNojj9FP2zfXfgp0t72WTsRmazu1v6zP/hTjjbqcFSEPaJfTuYWumFLJjD0Ca/sFnbDxlo6H
 wjXBM27/DevCm9aO4IXgcItAQBDzq0Q==
X-Received: by 2002:a05:600c:10d1:b0:3f7:a20a:561d with SMTP id
 l17-20020a05600c10d100b003f7a20a561dmr8414864wmd.8.1687179278479; 
 Mon, 19 Jun 2023 05:54:38 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7160EzcpU6GUnu3WmyfGfY9JI9z/xnbG2RL8pH0QnSQJ+kT4GV87sTRxcO7rsexfS+38fNlA==
X-Received: by 2002:a05:600c:10d1:b0:3f7:a20a:561d with SMTP id
 l17-20020a05600c10d100b003f7a20a561dmr8414839wmd.8.1687179278116; 
 Mon, 19 Jun 2023 05:54:38 -0700 (PDT)
Received: from [192.168.2.56] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 h25-20020a1ccc19000000b003f42158288dsm10653889wmb.20.2023.06.19.05.54.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jun 2023 05:54:37 -0700 (PDT)
Message-ID: <3fb062e5b86d70dff7a588a641bdc6d93dab4c2a.camel@redhat.com>
From: Petr Oros <poros@redhat.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Mon, 19 Jun 2023 14:54:35 +0200
In-Reply-To: <ZJBMSWygwtovyNgU@boxer>
References: <20230619084948.360128-1-poros@redhat.com> <ZJBMSWygwtovyNgU@boxer>
Organization: Red Hat
User-Agent: Evolution 3.48.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1687179280;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IDAKmsTrcdD3l8pnibAcUiFoVMKj0wINSNr7RXPEDVg=;
 b=LklUG5/ZF/bxymVjnbfLtHoN0BlFWZvXaOH+yIsXj1EotTfS0qCQR8bV71CmvoyDYTB9zv
 2PqxCVeQ5qTWw1s/XFAyMehS6jOr6EADyLhnU+j6BDt/J0ryVHA5+/+qyTwBpfC1oMWOm8
 Be641Cu301f6UOssKoT2OyZFz8hNx5A=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=LklUG5/Z
Subject: Re: [Intel-wired-lan] [PATCH net] ice: ice_vsi_release cleanup
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TWFjaWVqIEZpamFsa293c2tpIHDDrcWhZSB2IFBvIDE5LiAwNi4gMjAyMyB2IDE0OjM4ICswMjAw
Ogo+IE9uIE1vbiwgSnVuIDE5LCAyMDIzIGF0IDEwOjQ5OjQ4QU0gKzAyMDAsIFBldHIgT3JvcyB3
cm90ZToKPiA+IFNpbmNlIGNvbW1pdCA2NjI0ZTc4MGE1NzdmYyAoImljZTogc3BsaXQgaWNlX3Zz
aV9zZXR1cCBpbnRvIHNtYWxsZXIKPiA+IGZ1bmN0aW9ucyIpIGljZV92c2lfcmVsZWFzZSBkb2Vz
IHRoaW5ncyB0d2ljZS4gVGhlcmUgaXMgdW5yZWdpc3Rlcgo+ID4gbmV0ZGV2IHdoaWNoIGlzIHVu
cmVnaXN0ZXJlZCBpbiBpY2VfZGVpbml0X2V0aCBhbHNvLgo+ID4gCj4gPiBJdCBhbHNvIHVucmVn
aXN0ZXJzIHRoZSBkZXZsaW5rX3BvcnQgdHdpY2Ugd2hpY2ggaXMgYWxzbwo+ID4gdW5yZWdpc3Rl
cmVkCj4gPiBpbiBpY2VfZGVpbml0X2V0aCgpLiBUaGlzIGRvdWJsZSBkZXJlZ2lzdHJhdGlvbiBp
cyBoaWRkZW4gYmVjYXVzZQo+ID4gZGV2bF9wb3J0X3VucmVnaXN0ZXIgaWdub3JlcyB0aGUgcmV0
dXJuIHZhbHVlIG9mIHhhX2VyYXNlLgo+ID4gCj4gPiBbwqDCoCA2OC42NDIxNjddIENhbGwgVHJh
Y2U6Cj4gPiBbwqDCoCA2OC42NTAzODVdwqAgaWNlX2RldmxpbmtfZGVzdHJveV9wZl9wb3J0KzB4
ZS8weDIwIFtpY2VdCj4gPiBbwqDCoCA2OC42NTU2NTZdwqAgaWNlX3ZzaV9yZWxlYXNlKzB4NDQ1
LzB4NjkwIFtpY2VdCj4gPiBbwqDCoCA2OC42NjAxNDddwqAgaWNlX2RlaW5pdCsweDk5LzB4Mjgw
IFtpY2VdCj4gPiBbwqDCoCA2OC42NjQxMTddwqAgaWNlX3JlbW92ZSsweDFiNi8weDVjMCBbaWNl
XQo+ID4gCj4gPiBbwqAgMTcxLjEwMzg0MV0gQ2FsbCBUcmFjZToKPiA+IFvCoCAxNzEuMTA5NjA3
XcKgIGljZV9kZXZsaW5rX2Rlc3Ryb3lfcGZfcG9ydCsweGYvMHgyMCBbaWNlXQo+ID4gW8KgIDE3
MS4xMTQ4NDFdwqAgaWNlX3JlbW92ZSsweDE1OC8weDI3MCBbaWNlXQo+ID4gW8KgIDE3MS4xMTg4
NTRdwqAgcGNpX2RldmljZV9yZW1vdmUrMHgzYi8weGMwCj4gPiBbwqAgMTcxLjEyMjc3OV3CoCBk
ZXZpY2VfcmVsZWFzZV9kcml2ZXJfaW50ZXJuYWwrMHhjNy8weDE3MAo+ID4gW8KgIDE3MS4xMjc5
MTJdwqAgZHJpdmVyX2RldGFjaCsweDU0LzB4OGMKPiA+IFvCoCAxNzEuMTMxNDkxXcKgIGJ1c19y
ZW1vdmVfZHJpdmVyKzB4NzcvMHhkMQo+ID4gW8KgIDE3MS4xMzU0MDZdwqAgcGNpX3VucmVnaXN0
ZXJfZHJpdmVyKzB4MmQvMHhiMAo+ID4gW8KgIDE3MS4xMzk2NzBdwqAgaWNlX21vZHVsZV9leGl0
KzB4Yy8weDU1ZiBbaWNlXQo+IAo+IEhpIFBldHIsCj4gY2FuIHlvdSB0ZWxsIHVzIHdoZW4gaW4g
cGFydGljdWxhciB0aGlzIGNhbGwgdHJhY2Ugd2FzIG9ic2VydmVkPwoKSSBmb3VuZCBvdXQgdGhh
dCB0aGUgZGV2bGluayBwb3J0IGlzIGRlcmVnaXN0ZXJlZCB0d2ljZS4gVGhpcyBjYWxsdHJhY2UK
d2FzIGdlbmVyYXRlZCBieSBkdW1wX3N0YWNrKCkgcGxhY2VkIGluIGRldmxpbmtfcG9ydF91bnJl
Z2lzdGVyIC0+IGl0CmlzIHRlc3RpbmcgdHJhY2UsIG5vdCBmcm9tIHByb2R1Y3Rpb24uCgpSZWdh
cmRzLApQZXRyCgoKPiAKPiBDQzogTWljaGFsIFN3aWF0a293c2tpIDxtaWNoYWwuc3dpYXRrb3dz
a2lAaW50ZWwuY29tPgo+IAo+ID4gCj4gPiBGaXhlczogNjYyNGU3ODBhNTc3ICgiaWNlOiBzcGxp
dCBpY2VfdnNpX3NldHVwIGludG8gc21hbGxlcgo+ID4gZnVuY3Rpb25zIikKPiA+IFNpZ25lZC1v
ZmYtYnk6IFBldHIgT3JvcyA8cG9yb3NAcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gwqBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jIHwgMjcgLS0tLS0tLS0tLS0tLS0tLS0t
LS0KPiA+IC0tLS0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDI3IGRlbGV0aW9ucygtKQo+ID4gCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYwo+
ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jCj4gPiBpbmRleCAx
MWFlMGU0MWY1MThhMS4uMjg0YTFmMGJmZGI1NDUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jCj4gPiBAQCAtMzI3MiwzOSArMzI3MiwxMiBAQCBpbnQg
aWNlX3ZzaV9yZWxlYXNlKHN0cnVjdCBpY2VfdnNpICp2c2kpCj4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRU5PREVWOwo+ID4gwqDCoMKgwqDCoMKgwqDCoHBmID0g
dnNpLT5iYWNrOwo+ID4gwqAKPiA+IC3CoMKgwqDCoMKgwqDCoC8qIGRvIG5vdCB1bnJlZ2lzdGVy
IHdoaWxlIGRyaXZlciBpcyBpbiB0aGUgcmVzZXQgcmVjb3ZlcnkKPiA+IHBlbmRpbmcKPiA+IC3C
oMKgwqDCoMKgwqDCoCAqIHN0YXRlLiBTaW5jZSByZXNldC9yZWJ1aWxkIGhhcHBlbnMgdGhyb3Vn
aCBQRiBzZXJ2aWNlCj4gPiB0YXNrIHdvcmtxdWV1ZSwKPiA+IC3CoMKgwqDCoMKgwqDCoCAqIGl0
J3Mgbm90IGEgZ29vZCBpZGVhIHRvIHVucmVnaXN0ZXIgbmV0ZGV2IHRoYXQgaXMKPiA+IGFzc29j
aWF0ZWQgdG8gdGhlCj4gPiAtwqDCoMKgwqDCoMKgwqAgKiBQRiB0aGF0IGlzIHJ1bm5pbmcgdGhl
IHdvcmsgcXVldWUgaXRlbXMgY3VycmVudGx5LiBUaGlzCj4gPiBpcyBkb25lIHRvCj4gPiAtwqDC
oMKgwqDCoMKgwqAgKiBhdm9pZCBjaGVja19mbHVzaF9kZXBlbmRlbmN5KCkgd2FybmluZyBvbiB0
aGlzIHdxCj4gPiAtwqDCoMKgwqDCoMKgwqAgKi8KPiA+IC3CoMKgwqDCoMKgwqDCoGlmICh2c2kt
Pm5ldGRldiAmJiAhaWNlX2lzX3Jlc2V0X2luX3Byb2dyZXNzKHBmLT5zdGF0ZSkgJiYKPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoCAodGVzdF9iaXQoSUNFX1ZTSV9ORVRERVZfUkVHSVNURVJFRCwg
dnNpLT5zdGF0ZSkpKSB7Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdW5yZWdp
c3Rlcl9uZXRkZXYodnNpLT5uZXRkZXYpOwo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGNsZWFyX2JpdChJQ0VfVlNJX05FVERFVl9SRUdJU1RFUkVELCB2c2ktPnN0YXRlKTsKPiA+
IC3CoMKgwqDCoMKgwqDCoH0KPiA+IC0KPiA+IC3CoMKgwqDCoMKgwqDCoGlmICh2c2ktPnR5cGUg
PT0gSUNFX1ZTSV9QRikKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpY2VfZGV2
bGlua19kZXN0cm95X3BmX3BvcnQocGYpOwo+ID4gLQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmICh0
ZXN0X2JpdChJQ0VfRkxBR19SU1NfRU5BLCBwZi0+ZmxhZ3MpKQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpY2VfcnNzX2NsZWFuKHZzaSk7Cj4gPiDCoAo+ID4gwqDCoMKgwqDC
oMKgwqDCoGljZV92c2lfY2xvc2UodnNpKTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBpY2VfdnNpX2Rl
Y2ZnKHZzaSk7Cj4gPiDCoAo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKHZzaS0+bmV0ZGV2KSB7Cj4g
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKHRlc3RfYml0KElDRV9WU0lfTkVU
REVWX1JFR0lTVEVSRUQsIHZzaS0KPiA+ID5zdGF0ZSkpIHsKPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdW5yZWdpc3Rlcl9uZXRkZXYodnNpLT5uZXRk
ZXYpOwo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBj
bGVhcl9iaXQoSUNFX1ZTSV9ORVRERVZfUkVHSVNURVJFRCwgdnNpLQo+ID4gPnN0YXRlKTsKPiA+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgaWYgKHRlc3RfYml0KElDRV9WU0lfTkVUREVWX0FMTE9DRCwgdnNpLT5zdGF0
ZSkpIHsKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ZnJlZV9uZXRkZXYodnNpLT5uZXRkZXYpOwo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqB2c2ktPm5ldGRldiA9IE5VTEw7Cj4gPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNsZWFyX2JpdChJQ0VfVlNJX05FVERF
Vl9BTExPQ0QsIHZzaS0KPiA+ID5zdGF0ZSk7Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgfQo+ID4gLcKgwqDCoMKgwqDCoMKgfQo+ID4gLQo+ID4gwqDCoMKgwqDCoMKgwqDCoC8q
IHJldGFpbiBTVyBWU0kgZGF0YSBzdHJ1Y3R1cmUgc2luY2UgaXQgaXMgbmVlZGVkIHRvCj4gPiB1
bnJlZ2lzdGVyIGFuZAo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIGZyZWUgVlNJIG5ldGRldiB3aGVu
IFBGIGlzIG5vdCBpbiByZXNldCByZWNvdmVyeSBwZW5kaW5nCj4gPiBzdGF0ZSxcCj4gPiDCoMKg
wqDCoMKgwqDCoMKgICogZm9yIGV4OiBkdXJpbmcgcm1tb2QuCj4gPiAtLSAKPiA+IDIuNDEuMAo+
ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
ID4gSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
