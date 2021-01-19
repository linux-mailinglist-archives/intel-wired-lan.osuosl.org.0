Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9BA2FB21E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jan 2021 07:55:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ABD8F85F8C;
	Tue, 19 Jan 2021 06:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lne0N6b8MsiF; Tue, 19 Jan 2021 06:55:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7817E85F7F;
	Tue, 19 Jan 2021 06:55:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08F8A1BF313
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 06:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E595427400
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 06:55:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nsyEJlaQac9p for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 06:55:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 3E447204FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 06:55:24 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aeabb.dynamic.kabel-deutschland.de
 [95.90.234.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 64D2520645D54;
 Tue, 19 Jan 2021 07:55:20 +0100 (CET)
To: Greg KH <gregkh@linuxfoundation.org>, Jakub Kicinski <kuba@kernel.org>
References: <20201102231307.13021-1-pmenzel@molgen.mpg.de>
 <20201102231307.13021-3-pmenzel@molgen.mpg.de>
 <20201102161943.343586b1@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <36ce1f2e-843c-4995-8bb2-2c2676f01b9d@molgen.mpg.de>
 <20201103103940.2ed27fa2@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <c1ad26c6-a4a6-d161-1b18-476b380f4e58@molgen.mpg.de>
 <X/ShBVXp32Y+Jeds@kroah.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <19eab284-b7b0-7053-1aa7-5fedcee04263@molgen.mpg.de>
Date: Tue, 19 Jan 2021 07:55:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <X/ShBVXp32Y+Jeds@kroah.com>
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

RGVhciBKYWt1YiwgZGVhciBHcmVnLAoKCkFtIDA1LjAxLjIxIHVtIDE4OjI1IHNjaHJpZWIgR3Jl
ZyBLSDoKPiBPbiBUdWUsIEphbiAwNSwgMjAyMSBhdCAwNjoxNjo1OVBNICswMTAwLCBQYXVsIE1l
bnplbCB3cm90ZToKCj4+IEFtIDAzLjExLjIwIHVtIDE5OjM5IHNjaHJpZWIgSmFrdWIgS2ljaW5z
a2k6Cj4+PiBPbiBUdWUsIDMgTm92IDIwMjAgMDg6MzU6MDkgKzAxMDAgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4+Pj4gQWNjb3JkaW5nIHRvICpEZXZlbG9wZXIncyBDZXJ0aWZpY2F0ZSBvZiBPcmlnaW4g
MS4xKiBbM10sIGl04oCZcyBteQo+Pj4+IHVuZGVyc3RhbmRpbmcsIHRoYXQgaXQgaXMgKm5vdCog
cmVxdWlyZWQuIFRoZSBpdGVtcyAoYSksIChiKSwgYW5kIChjKQo+Pj4+IGFyZSBjb25uZWN0ZWQg
YnkgYW4gKm9yKi4KPj4+Pgo+Pj4+PiAgICAgICAgICAgKGIpIFRoZSBjb250cmlidXRpb24gaXMg
YmFzZWQgdXBvbiBwcmV2aW91cyB3b3JrIHRoYXQsIHRvIHRoZSBiZXN0Cj4+Pj4+ICAgICAgICAg
ICAgICAgb2YgbXkga25vd2xlZGdlLCBpcyBjb3ZlcmVkIHVuZGVyIGFuIGFwcHJvcHJpYXRlIG9w
ZW4gc291cmNlCj4+Pj4+ICAgICAgICAgICAgICAgbGljZW5zZSBhbmQgSSBoYXZlIHRoZSByaWdo
dCB1bmRlciB0aGF0IGxpY2Vuc2UgdG8gc3VibWl0IHRoYXQKPj4+Pj4gICAgICAgICAgICAgICB3
b3JrIHdpdGggbW9kaWZpY2F0aW9ucywgd2hldGhlciBjcmVhdGVkIGluIHdob2xlIG9yIGluIHBh
cnQKPj4+Pj4gICAgICAgICAgICAgICBieSBtZSwgdW5kZXIgdGhlIHNhbWUgb3BlbiBzb3VyY2Ug
bGljZW5zZSAodW5sZXNzIEkgYW0KPj4+Pj4gICAgICAgICAgICAgICBwZXJtaXR0ZWQgdG8gc3Vi
bWl0IHVuZGVyIGEgZGlmZmVyZW50IGxpY2Vuc2UpLCBhcyBpbmRpY2F0ZWQKPj4+Pj4gICAgICAg
ICAgICAgICBpbiB0aGUgZmlsZTsgb3IKPj4+Cj4+PiBBY2ssIGJ1dCB0aGVuIHlvdSBuZWVkIHRv
IHB1dCB5b3Vyc2VsZiBhcyB0aGUgYXV0aG9yLCBiZWNhdXNlIGl0J3MKPj4+IHlvdSBjZXJ0aWZ5
aW5nIHRoYXQgdGhlIGNvZGUgZmFsbHMgdW5kZXIgKGIpLgo+Pj4KPj4+IEF0IGxlYXN0IHRoYXQn
cyBteSB1bmRlcnN0YW5kaW5nLgo+Pgo+PiBHcmVnLCBjYW4geW91IHBsZWFzZSBjbGFyaWZ5LCBp
ZiBpdOKAmXMgZmluZSwgaWYgSSB1cHN0cmVhbSBhIHBhdGNoIGF1dGhvcmVkCj4+IGJ5IHNvbWVi
b2R5IGVsc2UgYW5kIGRpc3RyaWJ1dGVkIHVuZGVyIHRoZSBHUEx2Mj8gSSBwdXQgdGhlbSBhcyB0
aGUgYXV0aG9yCj4+IGFuZCBzaWduZWQgaXQgb2ZmLgo+IAo+IFlvdSBjYW4ndCBhZGQgc29tZW9u
ZSBlbHNlJ3Mgc2lnbmVkLW9mZi1ieSwgYnV0IHlvdSBjYW4gYWRkIHlvdXIgb3duIGFuZAo+IGtl
ZXAgdGhlbSBhcyB0aGUgYXV0aG9yLCBoYXMgaGFwcGVuZWQgbG90cyBvZiB0aW1lIGluIHRoZSBw
YXN0Lgo+IAo+IE9yLCB5b3UgY2FuIG1ha2UgdGhlIEZyb206IGxpbmUgYmUgZnJvbSB5b3UgaWYg
dGhlIG9yaWdpbmFsIGF1dGhvcgo+IGRvZXNuJ3Qgd2FudCB0aGVpciBuYW1lL2VtYWlsIGluIHRo
ZSBjaGFuZ2Vsb2csIHdlJ3ZlIGRvbmUgdGhhdCBhcyB3ZWxsLAo+IGJvdGggYXJlIGZpbmUuCgpH
cmVnLCB0aGFuayB5b3UgZm9yIHRoZSBjbGFyaWZpY2F0aW9uLgoKSmFrdWIsIHdpdGggdGhhdCBv
dXQgb2YgdGhlIHdheSwgY2FuIHlvdSBwbGVhc2UgdGFrZSBwYXRjaCAyLzI/CgoKS2luZCByZWdh
cmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
