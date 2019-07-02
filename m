Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 574785CC03
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 10:26:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D82F9879FD;
	Tue,  2 Jul 2019 08:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hz2xY+L4HS47; Tue,  2 Jul 2019 08:26:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B9EB87A34;
	Tue,  2 Jul 2019 08:26:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E1801BF30A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 08:26:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8A7DF878C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 08:26:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tKZDbl25q5dt for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 08:26:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA8E0878B8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 08:26:16 +0000 (UTC)
Received: from mail-wr1-f70.google.com ([209.85.221.70])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hiE7C-0007Qx-T4
 for intel-wired-lan@lists.osuosl.org; Tue, 02 Jul 2019 08:26:14 +0000
Received: by mail-wr1-f70.google.com with SMTP id a17so3207824wrq.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Jul 2019 01:26:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=trl/WIaWKJT6HVXal0DvRqg1PD1vdTs1Z0wlP41mFoI=;
 b=lAwLksLIApNyscB4ZetJF02vhGnFknlXLA699XkT6VWPsAOOmBEX6P89hDPU/Em3sh
 GlJXyuofdIx5fcPP4Y71KaPuWDJ3w0S0N58VtO/mgO40wAmKolckIGOjDb4/rSaSejvG
 GJMk4kyWOJq3fJd7zXasDZD99sSdPtNqIaiGVKx5GU/zlYnRSaUEQaukdYfgdsMcOd4Y
 VSo6fD89sQqFYEl3sgI6y0B49xmwYFBGuBkPnOCNPH3qXP27dSog85T11iCcCFAQ8/fG
 oyV31OYFHdBnUMCOC2GnRcDfaqAE/5u68RR5smkSXgy3d1dKaoz9XzAU1QCH1h7pjsgG
 FtFw==
X-Gm-Message-State: APjAAAWI6n7XmC4F6Uo5W8Xos6J0ZJGNnxw7NkxszrCJxodYBL98ETpP
 t8+xcTlg7Ew0xwpdXMDUo6wh6jVTIRV2FTdPqyLd1RJlqpT26i7RTamiab4r3jD2CKW+V9E4XIS
 w7ja/qjlzY4T8KWrEf5JTtq8ceZi6A+RSaND+Zef1ul78M8o=
X-Received: by 2002:a5d:670b:: with SMTP id o11mr12785076wru.311.1562055974598; 
 Tue, 02 Jul 2019 01:26:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz+FTyT/cxUiGg2GivGHqjxcLBglyyxVajY50jh2Isvt0G30XDYj+xriC7qEnS0qKyUqyM0aw==
X-Received: by 2002:a5d:670b:: with SMTP id o11mr12785044wru.311.1562055974297; 
 Tue, 02 Jul 2019 01:26:14 -0700 (PDT)
Received: from [10.101.46.178] (61-220-137-37.HINET-IP.hinet.net.
 [61.220.137.37])
 by smtp.gmail.com with ESMTPSA id z1sm13636806wrv.90.2019.07.02.01.26.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 01:26:13 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Kai Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <1804A45E-71B5-4C41-839C-AF0CFAD0D785@canonical.com>
Date: Tue, 2 Jul 2019 16:25:59 +0800
Message-Id: <E29A2CD2-1632-4575-9910-0808BD15F4D3@canonical.com>
References: <C4036C54-EEEB-47F3-9200-4DD1B22B4280@canonical.com>
 <3975473C-B117-4DC6-809A-6623A5A478BF@canonical.com>
 <ed4eca8e-d393-91d7-5d2f-97d42e0b75cb@intel.com>
 <1804A45E-71B5-4C41-839C-AF0CFAD0D785@canonical.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailer: Apple Mail (2.3445.104.11)
Subject: Re: [Intel-wired-lan] RX CRC errors on I219-V (6) 8086:15be
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
Cc: Linux PCI <linux-pci@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 Anthony Wong <anthony.wong@canonical.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

K2xpbnV4LXBjaQoKSGkgU2FzaGEsCgphdCA2OjQ5IFBNLCBLYWktSGVuZyBGZW5nIDxrYWkuaGVu
Zy5mZW5nQGNhbm9uaWNhbC5jb20+IHdyb3RlOgoKPiBhdCAxNDoyNiwgTmVmdGluLCBTYXNoYSA8
c2FzaGEubmVmdGluQGludGVsLmNvbT4gd3JvdGU6Cj4KPj4gT24gNi8yNi8yMDE5IDA5OjE0LCBL
YWkgSGVuZyBGZW5nIHdyb3RlOgo+Pj4gSGkgU2FzaGEKPj4+IGF0IDU6MDkgUE0sIEthaS1IZW5n
IEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4gd3JvdGU6Cj4+Pj4gSGkgSmVmZnJl
eSwKPj4+Pgo+Pj4+IFdl4oCZdmUgZW5jb3VudGVyZWQgYW5vdGhlciBpc3N1ZSwgd2hpY2ggY2F1
c2VzIG11bHRpcGxlIENSQyBlcnJvcnMgYW5kICAKPj4+PiByZW5kZXJzIGV0aGVybmV0IGNvbXBs
ZXRlbHkgdXNlbGVzcywgaGVyZeKAmXMgdGhlIG5ldHdvcmsgc3RhdHM6Cj4+PiBJIGFsc28gdHJp
ZWQgaWdub3JlX2x0ciBmb3IgdGhpcyBpc3N1ZSwgc2VlbXMgbGlrZSBpdCBhbGxldmlhdGVzIHRo
ZSAgCj4+PiBzeW1wdG9tIGEgYml0IGZvciBhIHdoaWxlLCB0aGVuIHRoZSBuZXR3b3JrIHN0aWxs
IGJlY29tZXMgdXNlbGVzcyBhZnRlciAgCj4+PiBzb21lIHVzYWdlLgo+Pj4gQW5kIHllcywgaXTi
gJlzIGFsc28gYSBXaGlza2V5IExha2UgcGxhdGZvcm0uIFdoYXTigJlzIHRoZSBuZXh0IHN0ZXAg
dG8gIAo+Pj4gZGVidWcgdGhpcyBwcm9ibGVtPwo+Pj4gS2FpLUhlbmcKPj4gQ1JDIGVycm9ycyBu
b3QgcmVsYXRlZCB0byB0aGUgTFRSLiBQbGVhc2UsIHRyeSB0byBkaXNhYmxlIHRoZSBNRSBvbiB5
b3VyICAKPj4gcGxhdGZvcm0uIEhvcGUgeW91IGhhdmUgdGhpcyBvcHRpb24gaW4gQklPUy4gQW5v
dGhlciB3YXkgaXMgdG8gY29udGFjdCAgCj4+IHlvdXIgUEMgdmVuZG9yIGFuZCBhc2sgdG8gcHJv
dmlkZSBOVk0gd2l0aG91dCBNRS4gTGV0J3Mgc3RhcnQgZGVidWdnaW5nICAKPj4gd2l0aCB0aGVz
ZSBzdGVwcy4KPgo+IEFjY29yZGluZyB0byBPRE0sIHRoZSBNRSBjYW4gYmUgcGh5c2ljYWxseSBk
aXNhYmxlZCBieSBhIGp1bXBlci4KPiBCdXQgYWZ0ZXIgZGlzYWJsaW5nIHRoZSBNRSB0aGUgc2Ft
ZSBpc3N1ZSBjYW4gc3RpbGwgYmUgb2JzZXJ2ZWQuCgpXZeKAmXZlIGZvdW5kIHRoYXQgdGhpcyBp
c3N1ZSBkb2VzbuKAmXQgaGFwcGVuIHRvIFNBVEEgU1NELCBpdCBvbmx5IGhhcHBlbnMgIAp3aGVu
IE5WTWUgU1NEIGlzIGluIHVzZS4KCkhlcmUgYXJlIHRoZSBzdGVwczoKLSBEaXNhYmxlIE5WTWUg
QVNQTSwgaXNzdWUgcGVyc2lzdHMKLSBtb2Rwcm9iZSAtciBlMTAwMGUgJiYgbW9kcHJvYmUgZTEw
MDBlLCBpc3N1ZSBkb2VzbuKAmXQgaGFwcGVuCi0gRW5hYmxpbmcgTlZNZSBBU1BNLCBpc3N1ZSBk
b2VzbuKAmXQgaGFwcGVuCgpBcyBsb25nIGFzIE5WTWUgQVNQTSBnZXRzIGVuYWJsZWQgYWZ0ZXIg
ZTEwMDBlIGdldHMgbG9hZGVkLCB0aGUgaXNzdWUgIApkb2VzbuKAmXQgaGFwcGVuLgoKRG8geW91
IGhhdmUgYW55IGlkZWEgaG93IHRob3NlIHR3byBhcmUgaW50ZXJ0d2luZWQgdG9nZXRoZXI/CgpL
YWktSGVuZwoKPgo+IEthaS1IZW5nCj4KPj4+PiAvc3lzL2NsYXNzL25ldC9lbm8xL3N0YXRpc3Rp
Y3MkIGdyZXAgLiAqCj4+Pj4gY29sbGlzaW9uczowCj4+Pj4gbXVsdGljYXN0Ojk1Cj4+Pj4gcnhf
Ynl0ZXM6MTQ5OTg1MQo+Pj4+IHJ4X2NvbXByZXNzZWQ6MAo+Pj4+IHJ4X2NyY19lcnJvcnM6MTE2
NQo+Pj4+IHJ4X2Ryb3BwZWQ6MAo+Pj4+IHJ4X2Vycm9yczoyMzMwCj4+Pj4gcnhfZmlmb19lcnJv
cnM6MAo+Pj4+IHJ4X2ZyYW1lX2Vycm9yczowCj4+Pj4gcnhfbGVuZ3RoX2Vycm9yczowCj4+Pj4g
cnhfbWlzc2VkX2Vycm9yczowCj4+Pj4gcnhfbm9oYW5kbGVyOjAKPj4+PiByeF9vdmVyX2Vycm9y
czowCj4+Pj4gcnhfcGFja2V0czo0Nzg5Cj4+Pj4gdHhfYWJvcnRlZF9lcnJvcnM6MAo+Pj4+IHR4
X2J5dGVzOjg2NDMxMgo+Pj4+IHR4X2NhcnJpZXJfZXJyb3JzOjAKPj4+PiB0eF9jb21wcmVzc2Vk
OjAKPj4+PiB0eF9kcm9wcGVkOjAKPj4+PiB0eF9lcnJvcnM6MAo+Pj4+IHR4X2ZpZm9fZXJyb3Jz
OjAKPj4+PiB0eF9oZWFydGJlYXRfZXJyb3JzOjAKPj4+PiB0eF9wYWNrZXRzOjczNzAKPj4+PiB0
eF93aW5kb3dfZXJyb3JzOjAKPj4+Pgo+Pj4+IFNhbWUgYmVoYXZpb3IgY2FuIGJlIG9ic2VydmVk
IG9uIGJvdGggbWFpbmxpbmUga2VybmVsIGFuZCBvbiB5b3VyICAKPj4+PiBkZXYtcXVldWUgYnJh
bmNoLgo+Pj4+IE9UT0gsIHRoZSBzYW1lIGlzc3VlIGNhbuKAmXQgYmUgb2JzZXJ2ZWQgb24gb3V0
LW9mLXRyZWUgZTEwMDBlLgo+Pj4+Cj4+Pj4gSXMgdGhlcmUgYW55IHBsYW4gdG8gY2xvc2UgdGhl
IGdhcCBiZXR3ZWVuIHVwc3RyZWFtIGFuZCBvdXQtb2YtdHJlZSAgCj4+Pj4gdmVyc2lvbj8KPj4+
Pgo+Pj4+IEthaS1IZW5nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
