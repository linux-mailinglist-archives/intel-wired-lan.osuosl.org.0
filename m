Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0142154FE3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2020 02:05:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CFDB87BD9;
	Fri,  7 Feb 2020 01:05:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id khFIjAIQLhP9; Fri,  7 Feb 2020 01:05:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D525D87CD6;
	Fri,  7 Feb 2020 01:05:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB2021BF337
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 01:05:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E3F4786ACB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 01:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ECylLD6ciKd for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2020 01:05:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
 [209.85.166.176])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 377C586A4D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 01:05:52 +0000 (UTC)
Received: by mail-il1-f176.google.com with SMTP id v13so344197iln.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Feb 2020 17:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JPNn9RLW+vfaeGHg5/WPyaZRrGN/q+/DNwEx4DtwCIg=;
 b=V/bVjmcMmmpRlvUjuTcb2shaiDmI9HufmOXJ7LzIzBTHvYHXkfKU9K5FyLW3hlT9ef
 IY8SCYp7Ib8rZ/sm+WKQLaP4z4kjAmtwCEW/6B6/tCTlttYe04FeDtB9v/NcR+uAuIrQ
 vBaiSuHi80j9QMtt5MOtZfW4OP/jGzXAWLQjUspgj7Ond8L8i38F16GhxvJZc8/JTnh2
 4MYLwNCbAYh44N0n6894JkbGVdyS7yfApQ2BeJjxM0WKBofMj3/NNwZex1+FdU3uGmiy
 bd436vhJzr1XvkQaud2p7eq47X29i5vylEu3ZDQNVblvnTHmX05d8SKJD9Aoo9/QM8PE
 XQpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JPNn9RLW+vfaeGHg5/WPyaZRrGN/q+/DNwEx4DtwCIg=;
 b=UA1y5aeCwueEN+w5RWQvtRvdMkKvsVEb/YuOFeQd2MtWG6bYgybdJ+BaxBYbRZoE37
 z6ftNFeZIumna0U7Na1l+TQPCJkymT2zdvYptYsesWCy3ER/5kAsnGJNt45LCPZQ945A
 z5j4K03fYCOTGEruSlzt2+4p50gRf1MbWXTc8BdaBEpwinwWuMY/YAukBwzyf+LChRaN
 LoRYAqXf/xJd13JK3dRrBHiqSltIEmmM1+PZycSv+3VhkDmvCpwCRaSPd12C3933lTsF
 MmWQLLDEkUloa6cMLiRM1tp20c94rQHcQ5S/S549ZUavQlemNxQkOOr+eSRe8kNe3hqB
 S7SA==
X-Gm-Message-State: APjAAAXSMwJeM3zL/Ivb1pA98nqbiiVWXLoeBIEwhItkHBgdgPGmDckm
 br5/MgvIy3Py+jeeXf1UT2BZlBVQHfjx9d+M06w=
X-Google-Smtp-Source: APXvYqw5mtS2TzBRR97SLavrCXwxBtSG3KtIweTx7I44fezILrkmQtMG8YkD8ZDCJ3c0XR/hIlMwbWR8piVXEYJJE4Y=
X-Received: by 2002:a92:d608:: with SMTP id w8mr6554864ilm.95.1581037551326;
 Thu, 06 Feb 2020 17:05:51 -0800 (PST)
MIME-Version: 1.0
References: <79f202c9bc2fa14075d9ec9f9df86073@sslemail.net>
 <CAKgT0UeebAZ9GfQJ+EJ_mYvnoqvOYOofmGfqTkOro9x7V0c5DA@mail.gmail.com>
 <d8b8d4d950bf4144b1a0d2eb2e3b6656@inspur.com>
In-Reply-To: <d8b8d4d950bf4144b1a0d2eb2e3b6656@inspur.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 6 Feb 2020 17:05:40 -0800
Message-ID: <CAKgT0UcjuE=rG0XGTqSrDQv3N6Pr50-yuG53r9fi13DZpGCToQ@mail.gmail.com>
To: =?UTF-8?B?WWkgWWFuZyAo5p2o54eaKS3kupHmnI3liqHpm4blm6I=?=
 <yangyi01@inspur.com>
Subject: Re: [Intel-wired-lan] bad iperf3 tcp performance of Intel 10G NIC
 when MTU is 9000
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
Cc: "yang_y_yi@163.com" <yang_y_yi@163.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SSBoYXZlbid0IGhlYXJkIG9mIGFueSBzaW1pbGFyIGlzc3Vlcy4KClRoZSBmYWN0IHRoYXQgaXQg
aW1wYWN0cyBUQ1Agb25seSBoYXMgbWUgd29uZGVyaW5nIGlmIExSTy9SU0MgbWlnaHQgYmUKZW5h
YmxlZCBvbiB0aGUgTklDIGFuZCBpcyBwb3NzaWJseSBjYXVzaW5nIGlzc3Vlcy4gWW91IG1pZ2h0
IHRyeQpkaXNhYmxpbmcgTFJPIHZpYSAiZXRodG9vbCAtay8tSyIgaWYgaXQgaXMgZW5hYmxlZCB0
byBzZWUgaWYgdGhhdApyZXNvbHZlcyB0aGUgaXNzdWUuIEJleW9uZCB0aGF0IHRoZSBvbmx5IG90
aGVyIGZlYXR1cmUgSSBjYW4gdGhpbmsgb2YKdGhhdCB3ZSBtaWdodCB3YW50IHRvIGVsaW1pbmF0
ZSB3b3VsZCBiZSBHUk8uIEl0IHByb2JhYmx5IHdvdWxkbid0Cmh1cnQgdG8gdHJ5IGRpc2FibGlu
ZyB0aG9zZSBmZWF0dXJlcyBvbiBib3RoIGVuZHMgYW5kIHNlZWluZyBpZiBvbmUgb2YKdGhlbSBy
ZXNvbHZlcyB0aGUgaXNzdWUuCgpUaGFua3MuCgotIEFsZXgKCk9uIFRodSwgRmViIDYsIDIwMjAg
YXQgNDoxNiBQTSBZaSBZYW5nICjmnajnh5opLeS6keacjeWKoembhuWboiA8eWFuZ3lpMDFAaW5z
cHVyLmNvbT4gd3JvdGU6Cj4KPiBBbGV4LCB0aGFuayB5b3Ugc28gbXVjaCBmb3IgeW91ciBncmVh
dCBzdWdnZXN0aW9uLiBXZSBoYXZlIGRvdWJsZSBjaGVja2VkIHN3aXRjaGVzLCB0aGV5IGhhdmUg
c2V0IGp1bWJvIGZyYW1lIHN1cHBvcnQsIHdlIHJhbiBpcGVyZjMgdG8gY2hlY2sgcGVyZm9ybWFu
Y2UsIGlwZXJmMyB1ZHAgaXMgb2sgZXZlbiBpZiBNVFUgaXMgc2V0IHRvIDkwMDAsIHNvIHdlIGNh
biBiZWxpZXZlIG5vIG90aGVyIHRyYWZmaWMgcmVzdWx0ZWQgaW4gbmV0d29yayBjb25nZXN0aW9u
LiBJcGVyZjMgdGNwIHBlcmZvcm1hbmNlIGlzIGFib3V0IDguOUdicHMgaWYgTVRVIGlzIHNldCB0
byAxNTAwLCBidXQgaXQgaXMganVzdCBhYm91dCAzIEdicHMgaWYgTVRVIGlzIHNldCB0byA5MDAw
LiBJcGVyZjMgdWRwIHBlcmZvcm1hbmNlIGlzIGFib3V0IDguOUdicHMgaWYgTVRVIGlzIHNldCB0
byA5MDAwLgo+Cj4gSSBhbHNvIGNoZWNrZWQgdGhlIHNhbWUgdGhpbmcgaW4gYW5vdGhlciBlbnZp
cm9ubWVudCwgd2hpY2ggdXNlZCBpNDBlIGJ1dCBub3QgaXhnYmUsIGFsbCB0aGUgY2FzZXMgYXJl
IG9rLCB0aGF0IGlzIHdoeSBJIGRvdWJ0IGl0IGlzIGEga2VybmVsIG9yIGRyaXZlciBvciBmaXJt
d2FyZSBpc3N1ZSwgZGlkIHlvdSByZWNlaXZlIHNpbWlsYXIgaXNzdWUgcmVwb3J0Pwo+Cj4gLS0t
LS3pgq7ku7bljp/ku7YtLS0tLQo+IOWPkeS7tuS6ujogQWxleGFuZGVyIER1eWNrIFttYWlsdG86
YWxleGFuZGVyLmR1eWNrQGdtYWlsLmNvbV0KPiDlj5HpgIHml7bpl7Q6IDIwMjDlubQy5pyIN+aX
pSAyOjE5Cj4g5pS25Lu25Lq6OiBZaSBZYW5nICjmnajnh5opLeS6keacjeWKoembhuWboiA8eWFu
Z3lpMDFAaW5zcHVyLmNvbT4KPiDmioTpgIE6IGplZmZyZXkudC5raXJzaGVyQGludGVsLmNvbTsg
eWFuZ195X3lpQDE2My5jb207IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnCj4g5Li7
6aKYOiBSZTogW0ludGVsLXdpcmVkLWxhbl0gYmFkIGlwZXJmMyB0Y3AgcGVyZm9ybWFuY2Ugb2Yg
SW50ZWwgMTBHIE5JQyB3aGVuIE1UVSBpcyA5MDAwCj4KPiBPbiBUdWUsIEZlYiA0LCAyMDIwIGF0
IDc6MzQgQU0gWWkgWWFuZyAo5p2o54eaKS3kupHmnI3liqHpm4blm6IgPHlhbmd5aTAxQGluc3B1
ci5jb20+IHdyb3RlOgo+ID4KPiA+IEhpLCBhbGwKPiA+Cj4gPiBXZSBmaW5kIGEgdmVyeSB3ZWly
ZCBpc3N1ZSBvbiBJbnRlbCAxMEcgTklDLCBpcGVyZjMgdGNwIHBlcmZvcm1hbmNlIGlzCj4gPiBn
b29kIHdoZW4gTVRVIGlzIDE1MDAsIGJ1dCBpdCBpcyBhYm91dCBvbmUgdGhpcmQgb2YgdGhlIGZv
cm1lciB3aGVuCj4gPiBNVFUgaXMgOTAwMCwgYW55Ym9keSBrbm93cyB3aHkgaXQgaXMgc28sIGlz
IGFueSBzb2x1dGlvbiB0byBpdCBhdmFpbGFibGU/Cj4gPgo+ID4gVGhlIGJlbG93IGlzIG91ciBr
ZXJuZWwgYW5kIGl4Z2JlIGRlcml2ZXIgaW5mb3JtYXRpb246Cj4gPgo+ID4gVWJ1bnR1IDE2LjA0
IGFuZCBrZXJuZWwgaXMgdXBkYXRlZCB0byA0LjE1LjAtMzYtZ2VuZXJpYyB4ODZfNjQgSXhnYmUK
PiA+IGRyaXZlciB2ZXJzaW9uOiA1LjEuMC1rIEZpcm13YXJlIHZlcnNpb246IDB4NjFjMTAwMDEK
PiA+Cj4gPiBCVFcsIHRzbyBpcyBvbi4KPgo+IFRoZXJlIGNvdWxkIGJlIHF1aXRlIGEgZmV3IHRo
aW5ncyBnb2luZyBvbiwgYnV0IGl0IGlzIGhhcmQgdG8gc2F5IHdpdGhvdXQgbW9yZSBpbmZvcm1h
dGlvbi4KPgo+IFdoYXQgaXMgdGhlIHRlc3QgeW91IGFyZSBydW5uaW5nIGFuZCB3aGF0IGFyZSB0
aGUgbnVtYmVycyB5b3UgYXJlIHNlZWluZyBhdCAxNTAwIE1UVSB2ZXJzdXMgOTAwMCBNVFU/IEhh
dmUgeW91IHRha2VuIGEgbG9vayBhdCB0aGUgIm5ldHN0YXQgLXMiIGluZm8gb24gYm90aCBlbmRz
IHRvIHNlZSBpZiBhbnl0aGluZyBtaWdodCBiZSBnb2luZyBvbiB0aGVyZT8gT25lIHBvc3NpYmls
aXR5IGlzIGlmIHlvdSBoYXZlIGEgY29uZ2VzdGVkIG5ldHdvcmsgbW92aW5nIHRoZSA5SyBNVFUg
ZnJhbWVzIGNhbiBiZSBzbG93ZXIgYXMgYW55IDlLIGZyYW1lcyBkcm9wcGVkIHdpbGwgaGF2ZSB0
byBiZSByZXRyYW5zbWl0dGVkIGFuZCBzaW5jZSB0aGUgZnJhbWVzIGFyZSBsYXJnZXIgeW91IG1h
eSBlbmNvdW50ZXIgdGhlIG5lZWQgZm9yIHJldHJhbnNtaXQgbW9yZSBvZnRlbiBhbmQgdGhleSB3
b3VsZCBiZSBzbG93ZXIuCj4KPiBBbHNvIGhhdmUgeW91IGNoZWNrZWQgdGhlIG5ldHdvcmsgcGF0
aCB0byBtYWtlIGNlcnRhaW4gdGhhdCB5b3UgYXJlIGFibGUgdG8gc2VuZCA5SyBmcmFtZXMgYmV0
d2VlbiB0aGUgdHdvIHN5c3RlbXM/IElmIHRoZXJlIGFyZSBhbnkgc3dpdGNoZXMgaW4gYmV0d2Vl
biBub3QgY29uZmlndXJlZCBmb3IgOUsgTVRVIHRoYXQgY291bGQgY2F1c2UgcGVyZm9ybWFuY2Ug
aXNzdWVzLgo+Cj4gT25lIGRlYnVnZ2luZyBzdGVwIHlvdSBtaWdodCB0cnkgd291bGQgYmUgdG8g
aW5jcmVtZW50YWxseSBpbmNyZWFzZSB0aGUgTVRVIHNpemUgYW5kIHJ1biBzZXZlcmFsIHRlc3Rz
IHRvIHNlZSBpZiB0aGVyZSBpcyBhIGNlcnRhaW4gcGFja2V0IHNpemUgdGhhdCB0aGUgcGVyZm9y
bWFuY2UgZHJvcHMgYXQuIElmIHdlIGZpbmQgdGhlIHJlZ3Jlc3Npb24gc3RhcnRzIGF0IGEgY2Vy
dGFpbiBzaXplIGl0IGNvdWxkIHBvaW50IHRvIGEgc3BlY2lmaWMgaXNzdWUgZWl0aGVyIGluIHRo
ZSBuZXR3b3JrIHN0YWNrLCBkcml2ZXIsIG9yIHRoZSBuZXR3b3JrIGl0c2VsZi4KPgo+IFRoYW5r
cy4KPgo+IC0gQWxleApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
