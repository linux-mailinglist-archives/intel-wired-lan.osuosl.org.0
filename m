Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C04A2FBEE5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jan 2021 19:26:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A53085657;
	Tue, 19 Jan 2021 18:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7UzlHCfwiX5C; Tue, 19 Jan 2021 18:26:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDE4C85650;
	Tue, 19 Jan 2021 18:26:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 78D2A1BF298
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 18:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 71C4F20437
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 18:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pTSsw2i0Ww0W for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 18:26:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A36BC2043E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 18:26:40 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8C882233EA;
 Tue, 19 Jan 2021 17:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611075945;
 bh=alaksRNTDQpckIDhtJpw9+7JcWoMBKls4G92axni+74=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZMCarGbdc2i+CriApZz6bCYKwVVOzstDBSLdB7w0d7nuXvM9qkRcsikgOE40tw6JZ
 V0/7d7V6T7JQTwtNd8mgLyVXGYomskDaUrA4KRVOV3PoQSFCsPgumXzGXaCsgzT6gz
 9kSkIOU5P/TlDSpEM0MJhwjvlsbMGySvOlZSm67lRxIWiZupItSPlV0N0JaMNkFcYa
 zjLbKbVlasAkaleaiDH+wY2spLBhiFCyNKeR/LOyiu1aCp4eWYfJMd5vv/BJAfgYc9
 gkuNvTrkjqQacLuU/xuqja6UmlkptHhdvLPQmKLUpFmR7itoXVlFcMmtkZAqumQp9+
 dhy8UjWTez6lA==
Date: Tue, 19 Jan 2021 09:05:39 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20210119090539.22c3d29e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <19eab284-b7b0-7053-1aa7-5fedcee04263@molgen.mpg.de>
References: <20201102231307.13021-1-pmenzel@molgen.mpg.de>
 <20201102231307.13021-3-pmenzel@molgen.mpg.de>
 <20201102161943.343586b1@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <36ce1f2e-843c-4995-8bb2-2c2676f01b9d@molgen.mpg.de>
 <20201103103940.2ed27fa2@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <c1ad26c6-a4a6-d161-1b18-476b380f4e58@molgen.mpg.de>
 <X/ShBVXp32Y+Jeds@kroah.com>
 <19eab284-b7b0-7053-1aa7-5fedcee04263@molgen.mpg.de>
MIME-Version: 1.0
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
Cc: Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jeffrey Townsend <jeffrey.townsend@bigswitch.com>,
 "David S . Miller" <davem@davemloft.net>,
 John W Linville <linville@tuxdriver.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAxOSBKYW4gMjAyMSAwNzo1NToxOSArMDEwMCBQYXVsIE1lbnplbCB3cm90ZToKPiBB
bSAwNS4wMS4yMSB1bSAxODoyNSBzY2hyaWViIEdyZWcgS0g6Cj4gPiBPbiBUdWUsIEphbiAwNSwg
MjAyMSBhdCAwNjoxNjo1OVBNICswMTAwLCBQYXVsIE1lbnplbCB3cm90ZTogIAo+ID4+IEFtIDAz
LjExLjIwIHVtIDE5OjM5IHNjaHJpZWIgSmFrdWIgS2ljaW5za2k6ICAKPiA+Pj4gT24gVHVlLCAz
IE5vdiAyMDIwIDA4OjM1OjA5ICswMTAwIFBhdWwgTWVuemVsIHdyb3RlOiAgCj4gPj4+PiBBY2Nv
cmRpbmcgdG8gKkRldmVsb3BlcidzIENlcnRpZmljYXRlIG9mIE9yaWdpbiAxLjEqIFszXSwgaXTi
gJlzIG15Cj4gPj4+PiB1bmRlcnN0YW5kaW5nLCB0aGF0IGl0IGlzICpub3QqIHJlcXVpcmVkLiBU
aGUgaXRlbXMgKGEpLCAoYiksIGFuZCAoYykKPiA+Pj4+IGFyZSBjb25uZWN0ZWQgYnkgYW4gKm9y
Ki4KPiA+Pj4+ICAKPiA+Pj4+PiAgICAgICAgICAgKGIpIFRoZSBjb250cmlidXRpb24gaXMgYmFz
ZWQgdXBvbiBwcmV2aW91cyB3b3JrIHRoYXQsIHRvIHRoZSBiZXN0Cj4gPj4+Pj4gICAgICAgICAg
ICAgICBvZiBteSBrbm93bGVkZ2UsIGlzIGNvdmVyZWQgdW5kZXIgYW4gYXBwcm9wcmlhdGUgb3Bl
biBzb3VyY2UKPiA+Pj4+PiAgICAgICAgICAgICAgIGxpY2Vuc2UgYW5kIEkgaGF2ZSB0aGUgcmln
aHQgdW5kZXIgdGhhdCBsaWNlbnNlIHRvIHN1Ym1pdCB0aGF0Cj4gPj4+Pj4gICAgICAgICAgICAg
ICB3b3JrIHdpdGggbW9kaWZpY2F0aW9ucywgd2hldGhlciBjcmVhdGVkIGluIHdob2xlIG9yIGlu
IHBhcnQKPiA+Pj4+PiAgICAgICAgICAgICAgIGJ5IG1lLCB1bmRlciB0aGUgc2FtZSBvcGVuIHNv
dXJjZSBsaWNlbnNlICh1bmxlc3MgSSBhbQo+ID4+Pj4+ICAgICAgICAgICAgICAgcGVybWl0dGVk
IHRvIHN1Ym1pdCB1bmRlciBhIGRpZmZlcmVudCBsaWNlbnNlKSwgYXMgaW5kaWNhdGVkCj4gPj4+
Pj4gICAgICAgICAgICAgICBpbiB0aGUgZmlsZTsgb3IgIAo+ID4+Pgo+ID4+PiBBY2ssIGJ1dCB0
aGVuIHlvdSBuZWVkIHRvIHB1dCB5b3Vyc2VsZiBhcyB0aGUgYXV0aG9yLCBiZWNhdXNlIGl0J3MK
PiA+Pj4geW91IGNlcnRpZnlpbmcgdGhhdCB0aGUgY29kZSBmYWxscyB1bmRlciAoYikuCj4gPj4+
Cj4gPj4+IEF0IGxlYXN0IHRoYXQncyBteSB1bmRlcnN0YW5kaW5nLiAgCj4gPj4KPiA+PiBHcmVn
LCBjYW4geW91IHBsZWFzZSBjbGFyaWZ5LCBpZiBpdOKAmXMgZmluZSwgaWYgSSB1cHN0cmVhbSBh
IHBhdGNoIGF1dGhvcmVkCj4gPj4gYnkgc29tZWJvZHkgZWxzZSBhbmQgZGlzdHJpYnV0ZWQgdW5k
ZXIgdGhlIEdQTHYyPyBJIHB1dCB0aGVtIGFzIHRoZSBhdXRob3IKPiA+PiBhbmQgc2lnbmVkIGl0
IG9mZi4gIAo+ID4gCj4gPiBZb3UgY2FuJ3QgYWRkIHNvbWVvbmUgZWxzZSdzIHNpZ25lZC1vZmYt
YnksIGJ1dCB5b3UgY2FuIGFkZCB5b3VyIG93biBhbmQKPiA+IGtlZXAgdGhlbSBhcyB0aGUgYXV0
aG9yLCBoYXMgaGFwcGVuZWQgbG90cyBvZiB0aW1lIGluIHRoZSBwYXN0Lgo+ID4gCj4gPiBPciwg
eW91IGNhbiBtYWtlIHRoZSBGcm9tOiBsaW5lIGJlIGZyb20geW91IGlmIHRoZSBvcmlnaW5hbCBh
dXRob3IKPiA+IGRvZXNuJ3Qgd2FudCB0aGVpciBuYW1lL2VtYWlsIGluIHRoZSBjaGFuZ2Vsb2cs
IHdlJ3ZlIGRvbmUgdGhhdCBhcyB3ZWxsLAo+ID4gYm90aCBhcmUgZmluZS4gIAo+IAo+IEdyZWcs
IHRoYW5rIHlvdSBmb3IgdGhlIGNsYXJpZmljYXRpb24uCj4gCj4gSmFrdWIsIHdpdGggdGhhdCBv
dXQgb2YgdGhlIHdheSwgY2FuIHlvdSBwbGVhc2UgdGFrZSBwYXRjaCAyLzI/CgpQbGVhc2UgcmVw
b3N0IHRoZSBwYXRjaGVzLCBpZiB5b3Uga25vdyBob3cgcGxlYXNlIGFkZCBhIGxvcmUgbGluayB0
bwp0aGlzIHBvc3RpbmcsIHRoYW5rcyEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
