Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C221F2EB14B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 18:24:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 662E4228A0;
	Tue,  5 Jan 2021 17:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VTV9G-L7xQfm; Tue,  5 Jan 2021 17:24:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7A344227DB;
	Tue,  5 Jan 2021 17:24:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 63C931BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 17:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5EF2E871BB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 17:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZnzUz0mKVIib for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 17:24:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AF068871BA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 17:24:01 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0572622D3E;
 Tue,  5 Jan 2021 17:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609867441;
 bh=K5IX6ZpFt2wGZmnpKc5zDLDYcbauGoJDvRm7OkFRFDU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2UL+Fo3EwXwWF7cddCCefdvtZkFAoSzlTztUiBZiembsHEZRvFSiSeLrl9MhlUOmA
 w+VW+OwevAV6IiH5JxIHLvXbLIf/rq5jwTWOduWfkrNVYm9gYqt5g3ATn1hMcEQFuc
 9Z+Kc0QnRpKAHKJp6AliKRn3MW4w21bcvDdtUcdY=
Date: Tue, 5 Jan 2021 18:25:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <X/ShBVXp32Y+Jeds@kroah.com>
References: <20201102231307.13021-1-pmenzel@molgen.mpg.de>
 <20201102231307.13021-3-pmenzel@molgen.mpg.de>
 <20201102161943.343586b1@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <36ce1f2e-843c-4995-8bb2-2c2676f01b9d@molgen.mpg.de>
 <20201103103940.2ed27fa2@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <c1ad26c6-a4a6-d161-1b18-476b380f4e58@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c1ad26c6-a4a6-d161-1b18-476b380f4e58@molgen.mpg.de>
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
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Jeffrey Townsend <jeffrey.townsend@bigswitch.com>,
 "David S . Miller" <davem@davemloft.net>,
 John W Linville <linville@tuxdriver.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBKYW4gMDUsIDIwMjEgYXQgMDY6MTY6NTlQTSArMDEwMCwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4gRGVhciBKYWt1YiwgZGVhciBHcmVnLAo+IAo+IAo+IEFtIDAzLjExLjIwIHVtIDE5OjM5
IHNjaHJpZWIgSmFrdWIgS2ljaW5za2k6Cj4gPiBPbiBUdWUsIDMgTm92IDIwMjAgMDg6MzU6MDkg
KzAxMDAgUGF1bCBNZW56ZWwgd3JvdGU6Cj4gPiA+IEFjY29yZGluZyB0byAqRGV2ZWxvcGVyJ3Mg
Q2VydGlmaWNhdGUgb2YgT3JpZ2luIDEuMSogWzNdLCBpdOKAmXMgbXkKPiA+ID4gdW5kZXJzdGFu
ZGluZywgdGhhdCBpdCBpcyAqbm90KiByZXF1aXJlZC4gVGhlIGl0ZW1zIChhKSwgKGIpLCBhbmQg
KGMpCj4gPiA+IGFyZSBjb25uZWN0ZWQgYnkgYW4gKm9yKi4KPiA+ID4gCj4gPiA+ID4gICAgICAg
ICAgKGIpIFRoZSBjb250cmlidXRpb24gaXMgYmFzZWQgdXBvbiBwcmV2aW91cyB3b3JrIHRoYXQs
IHRvIHRoZSBiZXN0Cj4gPiA+ID4gICAgICAgICAgICAgIG9mIG15IGtub3dsZWRnZSwgaXMgY292
ZXJlZCB1bmRlciBhbiBhcHByb3ByaWF0ZSBvcGVuIHNvdXJjZQo+ID4gPiA+ICAgICAgICAgICAg
ICBsaWNlbnNlIGFuZCBJIGhhdmUgdGhlIHJpZ2h0IHVuZGVyIHRoYXQgbGljZW5zZSB0byBzdWJt
aXQgdGhhdAo+ID4gPiA+ICAgICAgICAgICAgICB3b3JrIHdpdGggbW9kaWZpY2F0aW9ucywgd2hl
dGhlciBjcmVhdGVkIGluIHdob2xlIG9yIGluIHBhcnQKPiA+ID4gPiAgICAgICAgICAgICAgYnkg
bWUsIHVuZGVyIHRoZSBzYW1lIG9wZW4gc291cmNlIGxpY2Vuc2UgKHVubGVzcyBJIGFtCj4gPiA+
ID4gICAgICAgICAgICAgIHBlcm1pdHRlZCB0byBzdWJtaXQgdW5kZXIgYSBkaWZmZXJlbnQgbGlj
ZW5zZSksIGFzIGluZGljYXRlZAo+ID4gPiA+ICAgICAgICAgICAgICBpbiB0aGUgZmlsZTsgb3IK
PiA+IAo+ID4gQWNrLCBidXQgdGhlbiB5b3UgbmVlZCB0byBwdXQgeW91cnNlbGYgYXMgdGhlIGF1
dGhvciwgYmVjYXVzZSBpdCdzCj4gPiB5b3UgY2VydGlmeWluZyB0aGF0IHRoZSBjb2RlIGZhbGxz
IHVuZGVyIChiKS4KPiA+IAo+ID4gQXQgbGVhc3QgdGhhdCdzIG15IHVuZGVyc3RhbmRpbmcuCj4g
Cj4gR3JlZywgY2FuIHlvdSBwbGVhc2UgY2xhcmlmeSwgaWYgaXTigJlzIGZpbmUsIGlmIEkgdXBz
dHJlYW0gYSBwYXRjaCBhdXRob3JlZAo+IGJ5IHNvbWVib2R5IGVsc2UgYW5kIGRpc3RyaWJ1dGVk
IHVuZGVyIHRoZSBHUEx2Mj8gSSBwdXQgdGhlbSBhcyB0aGUgYXV0aG9yCj4gYW5kIHNpZ25lZCBp
dCBvZmYuCgpZb3UgY2FuJ3QgYWRkIHNvbWVvbmUgZWxzZSdzIHNpZ25lZC1vZmYtYnksIGJ1dCB5
b3UgY2FuIGFkZCB5b3VyIG93biBhbmQKa2VlcCB0aGVtIGFzIHRoZSBhdXRob3IsIGhhcyBoYXBw
ZW5lZCBsb3RzIG9mIHRpbWUgaW4gdGhlIHBhc3QuCgpPciwgeW91IGNhbiBtYWtlIHRoZSBGcm9t
OiBsaW5lIGJlIGZyb20geW91IGlmIHRoZSBvcmlnaW5hbCBhdXRob3IKZG9lc24ndCB3YW50IHRo
ZWlyIG5hbWUvZW1haWwgaW4gdGhlIGNoYW5nZWxvZywgd2UndmUgZG9uZSB0aGF0IGFzIHdlbGws
CmJvdGggYXJlIGZpbmUuCgp0aGFua3MsCgpncmVnIGstaApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
