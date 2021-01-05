Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 285D72EB12D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 18:17:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C4D97227DB;
	Tue,  5 Jan 2021 17:17:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z9c3+3olTdAK; Tue,  5 Jan 2021 17:17:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A8BA12284F;
	Tue,  5 Jan 2021 17:17:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2691E1BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 17:17:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2006C22802
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 17:17:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zEUXcaa5B4Br for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 17:17:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 671C1227AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 17:17:03 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aea6a.dynamic.kabel-deutschland.de
 [95.90.234.106])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D261E20647DA3;
 Tue,  5 Jan 2021 18:16:59 +0100 (CET)
To: Jakub Kicinski <kuba@kernel.org>, Greg KH <gregkh@linuxfoundation.org>
References: <20201102231307.13021-1-pmenzel@molgen.mpg.de>
 <20201102231307.13021-3-pmenzel@molgen.mpg.de>
 <20201102161943.343586b1@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <36ce1f2e-843c-4995-8bb2-2c2676f01b9d@molgen.mpg.de>
 <20201103103940.2ed27fa2@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <c1ad26c6-a4a6-d161-1b18-476b380f4e58@molgen.mpg.de>
Date: Tue, 5 Jan 2021 18:16:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20201103103940.2ed27fa2@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 2/2] ethernet: igb: e1000_phy: Check
 for ops.force_speed_duplex existence
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Jeffrey Townsend <jeffrey.townsend@bigswitch.com>,
 "David S . Miller" <davem@davemloft.net>,
 John W Linville <linville@tuxdriver.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKYWt1YiwgZGVhciBHcmVnLAoKCkFtIDAzLjExLjIwIHVtIDE5OjM5IHNjaHJpZWIgSmFr
dWIgS2ljaW5za2k6Cj4gT24gVHVlLCAzIE5vdiAyMDIwIDA4OjM1OjA5ICswMTAwIFBhdWwgTWVu
emVsIHdyb3RlOgo+PiBBY2NvcmRpbmcgdG8gKkRldmVsb3BlcidzIENlcnRpZmljYXRlIG9mIE9y
aWdpbiAxLjEqIFszXSwgaXTigJlzIG15Cj4+IHVuZGVyc3RhbmRpbmcsIHRoYXQgaXQgaXMgKm5v
dCogcmVxdWlyZWQuIFRoZSBpdGVtcyAoYSksIChiKSwgYW5kIChjKQo+PiBhcmUgY29ubmVjdGVk
IGJ5IGFuICpvciouCj4+Cj4+PiAgICAgICAgICAoYikgVGhlIGNvbnRyaWJ1dGlvbiBpcyBiYXNl
ZCB1cG9uIHByZXZpb3VzIHdvcmsgdGhhdCwgdG8gdGhlIGJlc3QKPj4+ICAgICAgICAgICAgICBv
ZiBteSBrbm93bGVkZ2UsIGlzIGNvdmVyZWQgdW5kZXIgYW4gYXBwcm9wcmlhdGUgb3BlbiBzb3Vy
Y2UKPj4+ICAgICAgICAgICAgICBsaWNlbnNlIGFuZCBJIGhhdmUgdGhlIHJpZ2h0IHVuZGVyIHRo
YXQgbGljZW5zZSB0byBzdWJtaXQgdGhhdAo+Pj4gICAgICAgICAgICAgIHdvcmsgd2l0aCBtb2Rp
ZmljYXRpb25zLCB3aGV0aGVyIGNyZWF0ZWQgaW4gd2hvbGUgb3IgaW4gcGFydAo+Pj4gICAgICAg
ICAgICAgIGJ5IG1lLCB1bmRlciB0aGUgc2FtZSBvcGVuIHNvdXJjZSBsaWNlbnNlICh1bmxlc3Mg
SSBhbQo+Pj4gICAgICAgICAgICAgIHBlcm1pdHRlZCB0byBzdWJtaXQgdW5kZXIgYSBkaWZmZXJl
bnQgbGljZW5zZSksIGFzIGluZGljYXRlZAo+Pj4gICAgICAgICAgICAgIGluIHRoZSBmaWxlOyBv
cgo+IAo+IEFjaywgYnV0IHRoZW4geW91IG5lZWQgdG8gcHV0IHlvdXJzZWxmIGFzIHRoZSBhdXRo
b3IsIGJlY2F1c2UgaXQncwo+IHlvdSBjZXJ0aWZ5aW5nIHRoYXQgdGhlIGNvZGUgZmFsbHMgdW5k
ZXIgKGIpLgo+IAo+IEF0IGxlYXN0IHRoYXQncyBteSB1bmRlcnN0YW5kaW5nLgoKR3JlZywgY2Fu
IHlvdSBwbGVhc2UgY2xhcmlmeSwgaWYgaXTigJlzIGZpbmUsIGlmIEkgdXBzdHJlYW0gYSBwYXRj
aCAKYXV0aG9yZWQgYnkgc29tZWJvZHkgZWxzZSBhbmQgZGlzdHJpYnV0ZWQgdW5kZXIgdGhlIEdQ
THYyPyBJIHB1dCB0aGVtIGFzIAp0aGUgYXV0aG9yIGFuZCBzaWduZWQgaXQgb2ZmLgoKKEluIHRo
aXMgY2FzZSB0aGUgY2hhbmdlLCBhZGRpbmcgYW4gaWYgY29uZGl0aW9uLCBpcyBhbHNvIHRyaXZp
YWwuKQoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
