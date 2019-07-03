Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5865E2D6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 13:33:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C3CF864E5;
	Wed,  3 Jul 2019 11:33:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XTaKOr4zR50T; Wed,  3 Jul 2019 11:33:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07029867D4;
	Wed,  3 Jul 2019 11:33:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A3471BF389
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 11:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5659087C8C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 11:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4G2xhwSmgefv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2019 11:33:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 60D4287C7D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 11:33:06 +0000 (UTC)
Received: from mail-pf1-f197.google.com ([209.85.210.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hidVW-0001KZ-3e
 for intel-wired-lan@lists.osuosl.org; Wed, 03 Jul 2019 11:33:02 +0000
Received: by mail-pf1-f197.google.com with SMTP id y5so1316319pfb.20
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Jul 2019 04:33:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ufNYN0wFou7V49GspdJXldNYi7W8aWs2LrCrfDoH9jY=;
 b=eB8uZHeLEqTgJgpoIQ1FhmyU7VvigOwIn2DVzCL4RtR6cawT8HBMcMgZYKezcDfO+I
 2ZEleVS5WtOP+vwbGoJtX2SX0KGmFqY5ePxaWKt6v0QZqXtDzxtUQf/8gkueVg0YlRWT
 WZAzm5QfVYswf9VC4GnAHAL17HHxK4U8O5NSwKFQgg8Ii4iRnt13zUWK4BVBoi52/06B
 VrNvQ8YTaMrDRqaCJIICTOqH5sBdwoTmMpPgmv2CbV4pZdJfGPpNL6LEBtAG4iqAh7xP
 St8ggeOBXuJ2ZKHTR0pUBjA+Xs1IiGWLeWkJowqywzZUwWgBrXbu2k4w1DzxLG85+w4z
 j4Tw==
X-Gm-Message-State: APjAAAV6TYAFo6kl1dfDKhneldRb84aR6V9Rhvr4y3f0zpGLaHDVSQ8R
 AplVvSJ9QZ3gi3DBXWa9WAWYid8AOWJZKO6f3rzGmr6KrNSHWZOsKEz2TD6wKOYH8xZ4dtjC0iC
 cBgX8ymRDhn6H3YVBsYHwB1RemcR4Eq/GhCOYGW9XP9bz1iY=
X-Received: by 2002:a63:5610:: with SMTP id k16mr11638581pgb.335.1562153580716; 
 Wed, 03 Jul 2019 04:33:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxVY8F9W8+FiFFBSzRkjtsGiPHFdm2fPfGek+lVyQn1qowVFjF9HEvd43aml9Mn9wYSrjW8Iw==
X-Received: by 2002:a63:5610:: with SMTP id k16mr11638556pgb.335.1562153580379; 
 Wed, 03 Jul 2019 04:33:00 -0700 (PDT)
Received: from 2001-b011-380f-3511-504a-71ad-28b3-6aae.dynamic-ip6.hinet.net
 (2001-b011-380f-3511-504a-71ad-28b3-6aae.dynamic-ip6.hinet.net.
 [2001:b011:380f:3511:504a:71ad:28b3:6aae])
 by smtp.gmail.com with ESMTPSA id x25sm2086715pfm.48.2019.07.03.04.32.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 04:32:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20190702180112.GB128603@google.com>
Date: Wed, 3 Jul 2019 19:32:56 +0800
Message-Id: <FD81A21F-BEAF-4400-A95F-8F29FCCC42F5@canonical.com>
References: <C4036C54-EEEB-47F3-9200-4DD1B22B4280@canonical.com>
 <3975473C-B117-4DC6-809A-6623A5A478BF@canonical.com>
 <ed4eca8e-d393-91d7-5d2f-97d42e0b75cb@intel.com>
 <1804A45E-71B5-4C41-839C-AF0CFAD0D785@canonical.com>
 <E29A2CD2-1632-4575-9910-0808BD15F4D3@canonical.com>
 <20190702180112.GB128603@google.com>
To: Bjorn Helgaas <helgaas@kernel.org>
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 Anthony Wong <anthony.wong@canonical.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

YXQgMDI6MDEsIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNAa2VybmVsLm9yZz4gd3JvdGU6Cgo+IE9u
IFR1ZSwgSnVsIDAyLCAyMDE5IGF0IDA0OjI1OjU5UE0gKzA4MDAsIEthaSBIZW5nIEZlbmcgd3Jv
dGU6Cj4+ICtsaW51eC1wY2kKPj4KPj4gSGkgU2FzaGEsCj4+Cj4+IGF0IDY6NDkgUE0sIEthaS1I
ZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4gd3JvdGU6Cj4+Cj4+PiBhdCAx
NDoyNiwgTmVmdGluLCBTYXNoYSA8c2FzaGEubmVmdGluQGludGVsLmNvbT4gd3JvdGU6Cj4+Pgo+
Pj4+IE9uIDYvMjYvMjAxOSAwOToxNCwgS2FpIEhlbmcgRmVuZyB3cm90ZToKPj4+Pj4gSGkgU2Fz
aGEKPj4+Pj4gYXQgNTowOSBQTSwgS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmlj
YWwuY29tPiB3cm90ZToKPj4+Pj4+IEhpIEplZmZyZXksCj4+Pj4+Pgo+Pj4+Pj4gV2XigJl2ZSBl
bmNvdW50ZXJlZCBhbm90aGVyIGlzc3VlLCB3aGljaCBjYXVzZXMgbXVsdGlwbGUgQ1JDCj4+Pj4+
PiBlcnJvcnMgYW5kIHJlbmRlcnMgZXRoZXJuZXQgY29tcGxldGVseSB1c2VsZXNzLCBoZXJl4oCZ
cyB0aGUKPj4+Pj4+IG5ldHdvcmsgc3RhdHM6Cj4+Pj4+IEkgYWxzbyB0cmllZCBpZ25vcmVfbHRy
IGZvciB0aGlzIGlzc3VlLCBzZWVtcyBsaWtlIGl0IGFsbGV2aWF0ZXMKPj4+Pj4gdGhlIHN5bXB0
b20gYSBiaXQgZm9yIGEgd2hpbGUsIHRoZW4gdGhlIG5ldHdvcmsgc3RpbGwgYmVjb21lcwo+Pj4+
PiB1c2VsZXNzIGFmdGVyIHNvbWUgdXNhZ2UuCj4+Pj4+IEFuZCB5ZXMsIGl04oCZcyBhbHNvIGEg
V2hpc2tleSBMYWtlIHBsYXRmb3JtLiBXaGF04oCZcyB0aGUgbmV4dCBzdGVwCj4+Pj4+IHRvIGRl
YnVnIHRoaXMgcHJvYmxlbT8KPj4+Pj4gS2FpLUhlbmcKPj4+PiBDUkMgZXJyb3JzIG5vdCByZWxh
dGVkIHRvIHRoZSBMVFIuIFBsZWFzZSwgdHJ5IHRvIGRpc2FibGUgdGhlIE1FIG9uCj4+Pj4geW91
ciBwbGF0Zm9ybS4gSG9wZSB5b3UgaGF2ZSB0aGlzIG9wdGlvbiBpbiBCSU9TLiBBbm90aGVyIHdh
eSBpcyB0bwo+Pj4+IGNvbnRhY3QgeW91ciBQQyB2ZW5kb3IgYW5kIGFzayB0byBwcm92aWRlIE5W
TSB3aXRob3V0IE1FLiBMZXQncwo+Pj4+IHN0YXJ0IGRlYnVnZ2luZyB3aXRoIHRoZXNlIHN0ZXBz
Lgo+Pj4KPj4+IEFjY29yZGluZyB0byBPRE0sIHRoZSBNRSBjYW4gYmUgcGh5c2ljYWxseSBkaXNh
YmxlZCBieSBhIGp1bXBlci4KPj4+IEJ1dCBhZnRlciBkaXNhYmxpbmcgdGhlIE1FIHRoZSBzYW1l
IGlzc3VlIGNhbiBzdGlsbCBiZSBvYnNlcnZlZC4KPj4KPj4gV2XigJl2ZSBmb3VuZCB0aGF0IHRo
aXMgaXNzdWUgZG9lc27igJl0IGhhcHBlbiB0byBTQVRBIFNTRCwgaXQgb25seSBoYXBwZW5zICAK
Pj4gd2hlbgo+PiBOVk1lIFNTRCBpcyBpbiB1c2UuCj4+Cj4+IEhlcmUgYXJlIHRoZSBzdGVwczoK
Pj4gLSBEaXNhYmxlIE5WTWUgQVNQTSwgaXNzdWUgcGVyc2lzdHMKPj4gLSBtb2Rwcm9iZSAtciBl
MTAwMGUgJiYgbW9kcHJvYmUgZTEwMDBlLCBpc3N1ZSBkb2VzbuKAmXQgaGFwcGVuCj4+IC0gRW5h
YmxpbmcgTlZNZSBBU1BNLCBpc3N1ZSBkb2VzbuKAmXQgaGFwcGVuCj4+Cj4+IEFzIGxvbmcgYXMg
TlZNZSBBU1BNIGdldHMgZW5hYmxlZCBhZnRlciBlMTAwMGUgZ2V0cyBsb2FkZWQsIHRoZSBpc3N1
ZQo+PiBkb2VzbuKAmXQgaGFwcGVuLgo+Cj4gSUlVQyB0aGUgcHJvYmxlbSBoYXBwZW5zIHdpdGgg
dGhlIG1haW5saW5lIGFuZCBkZXYtcXVldWUgZTEwMDBlCj4gZHJpdmVyLCBidXQgbm90IHdpdGgg
dGhlIG91dC1vZi10cmVlIEludGVsIGRyaXZlci4gIFNpbmNlIHRoZXJlIGlzIGEKPiB3b3JraW5n
IGRyaXZlciBhbmQgdGhlcmUncyB0aGUgcG90ZW50aWFsIChhdCBsZWFzdCBpbiBwcmluY2lwbGUp
IGZvcgo+IHVuaWZ5aW5nIHRoZW0gb3IgYmlzZWN0aW5nIGJldHdlZW4gdGhlbSwgSSBoYXZlIGxp
bWl0ZWQgaW50ZXJlc3QgaW4KPiBkZWJ1Z2dpbmcgaXQgZnJvbSBzY3JhdGNoLgoKSSB3b25kZXIg
d2h5IGRpc2FibGluZyBBU1BNIG9uIGEgZGV2aWNlIHNvbHZlcyBhbm90aGVyIGRldmljZeKAmXMg
aXNzdWU/ClRoZSBpc3N1ZSBtYXkganVzdCBnZXQgcGFwZXJlZCBvdmVyIGJ5IHRoZSDigJx3b3Jr
aW5n4oCdIGRyaXZlci4gSeKAmWQgbGlrZSB0byAgCnVuZGVyc3RhbmQgdGhlIHJvb3QgY2F1c2Ug
YmVoaW5kIHRoaXMgc3ltcHRvbS4KCj4KPiBJZiBpdCB0dXJucyBvdXQgdG8gYmUgYSBQQ0kgY29y
ZSBwcm9ibGVtLCBJIHdvdWxkIHdhbnQgdG8ga25vdzogV2hhdCdzCj4gdGhlIFBDSSB0b3BvbG9n
eT8gICJsc3BjaSAtdnYiIG91dHB1dCBmb3IgdGhlIHN5c3RlbT8gIERvZXMgaXQgbWFrZSBhCj4g
ZGlmZmVyZW5jZSBpZiB5b3UgYm9vdCB3aXRoICJwY2llX2FzcG09b2ZmIj8gIENvbGxlY3QgY29t
cGxldGUgZG1lc2csCj4gbWF5YmUgYXR0YWNoIGl0IHRvIGEga2VybmVsLm9yZyBidWd6aWxsYT8K
ClBhcmFtZXRlciDigJxwY2llX2FzcG09b2Zm4oCdIGRvZXNu4oCZdCB3b3JrIGZvciB0aGUgc3lz
dGVtLgpJIG5lZWQgdG8gdXNlICJwY2llX2FzcG09Zm9yY2XigJ0gYW5kIGNoYW5nZSB0aGUgcG9s
aWN5IHRvIOKAnHBlcmZvcm1hbmNl4oCdLgpUaGUgaXNzdWUgaXMgZ29uZSBvbmNlIGUxMDAwZSBs
b2FkcyBhZnRlciBBU1BNIGlzIGRpc2FibGVkLCBlaXRoZXIgZ2xvYmFsbHkgIApvciBvbmx5IGRp
c2FibGluZyBBU1BNIG9uIE5WTWUuCgpGaWxlcyBhdHRhY2hlZCB0byBodHRwczovL2J1Z3ppbGxh
Lmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIwNDA1NwoKS2FpLUhlbmcKCj4KPj4+Pj4+IC9z
eXMvY2xhc3MvbmV0L2VubzEvc3RhdGlzdGljcyQgZ3JlcCAuICoKPj4+Pj4+IGNvbGxpc2lvbnM6
MAo+Pj4+Pj4gbXVsdGljYXN0Ojk1Cj4+Pj4+PiByeF9ieXRlczoxNDk5ODUxCj4+Pj4+PiByeF9j
b21wcmVzc2VkOjAKPj4+Pj4+IHJ4X2NyY19lcnJvcnM6MTE2NQo+Pj4+Pj4gcnhfZHJvcHBlZDow
Cj4+Pj4+PiByeF9lcnJvcnM6MjMzMAo+Pj4+Pj4gcnhfZmlmb19lcnJvcnM6MAo+Pj4+Pj4gcnhf
ZnJhbWVfZXJyb3JzOjAKPj4+Pj4+IHJ4X2xlbmd0aF9lcnJvcnM6MAo+Pj4+Pj4gcnhfbWlzc2Vk
X2Vycm9yczowCj4+Pj4+PiByeF9ub2hhbmRsZXI6MAo+Pj4+Pj4gcnhfb3Zlcl9lcnJvcnM6MAo+
Pj4+Pj4gcnhfcGFja2V0czo0Nzg5Cj4+Pj4+PiB0eF9hYm9ydGVkX2Vycm9yczowCj4+Pj4+PiB0
eF9ieXRlczo4NjQzMTIKPj4+Pj4+IHR4X2NhcnJpZXJfZXJyb3JzOjAKPj4+Pj4+IHR4X2NvbXBy
ZXNzZWQ6MAo+Pj4+Pj4gdHhfZHJvcHBlZDowCj4+Pj4+PiB0eF9lcnJvcnM6MAo+Pj4+Pj4gdHhf
Zmlmb19lcnJvcnM6MAo+Pj4+Pj4gdHhfaGVhcnRiZWF0X2Vycm9yczowCj4+Pj4+PiB0eF9wYWNr
ZXRzOjczNzAKPj4+Pj4+IHR4X3dpbmRvd19lcnJvcnM6MAo+Pj4+Pj4KPj4+Pj4+IFNhbWUgYmVo
YXZpb3IgY2FuIGJlIG9ic2VydmVkIG9uIGJvdGggbWFpbmxpbmUga2VybmVsIGFuZCBvbgo+Pj4+
Pj4geW91ciBkZXYtcXVldWUgYnJhbmNoLgo+Pj4+Pj4gT1RPSCwgdGhlIHNhbWUgaXNzdWUgY2Fu
4oCZdCBiZSBvYnNlcnZlZCBvbiBvdXQtb2YtdHJlZSBlMTAwMGUuCj4+Pj4+Pgo+Pj4+Pj4gSXMg
dGhlcmUgYW55IHBsYW4gdG8gY2xvc2UgdGhlIGdhcCBiZXR3ZWVuIHVwc3RyZWFtIGFuZAo+Pj4+
Pj4gb3V0LW9mLXRyZWUgdmVyc2lvbj8KPj4+Pj4+Cj4+Pj4+PiBLYWktSGVuZwoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
