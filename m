Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B3A33711
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2019 19:47:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1AB4F87634;
	Mon,  3 Jun 2019 17:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hfuGVxzKiRz5; Mon,  3 Jun 2019 17:46:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9115987598;
	Mon,  3 Jun 2019 17:46:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 56B021BF9AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 16:29:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4E650884CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 16:29:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WxbHKE5TQq8K for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2019 16:29:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8502E884C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 16:29:10 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id d9so6952254wrx.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 09:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=I4s8nPexExTKcljgjsE+qNZvsq4StL0Ux0Ehmo1v2n0=;
 b=qwNUuQDmX8sP5DPGJPotxLpDDc1oWVnxjoEUuCaL1jp/TqD24i84iMdbVhKDCfnRI8
 Ff/Mu53NZeRuQhtuo4QZJtg0+YwCO6McKvruV3KkUIHYGTb1i7hAAIWOpUAGdX0EjbwK
 7IN4lw+UFiloh7Akb1JcCbN7ouSvDVT5rL8lFi1yyaNukM8CSgryjNej9ph2YJAZu2HJ
 QR39EGUHz0DhtgEZ7WqMbTs2Jq8JFdj/g3T/g8JML7E14UjJfMUrA8bhhG2OdMDrmr8x
 mTeYd/VESaqYuT0SQXUI/WJdtKOCkjlcl1pVuCAHlBtkNlqYtjkpdNi6qfiF0hHC3XSl
 aagw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=I4s8nPexExTKcljgjsE+qNZvsq4StL0Ux0Ehmo1v2n0=;
 b=JTGYG0PZ0I9PPwR4RORaOviYS7R5Hp30kdrjjTBnWLSmbCIzUT6+yVyqkIgSABLV5k
 HgiMakQIKj7G3YXYpoPQuvBQO3VpstBwUBw9l11gHe7bdCNtp3xWu9J7EssHWtPPtxIK
 kMDnVmwyaJUvku3IE92MLYqnj/H38wPsjiG/9pnkkCsfxTKXhWRKyb9eIflWaPlSc6cQ
 x18iDh6mTLTOlaNEvea0H0BajnKZAotQFEAl8je5YewsnZMdOiYz1tCsQW8Lfy56fcwx
 qejKMDU5X5mt9lNXv2miW1Ke9zhbqIoknf/WtrKeQdaZebVZ9xl7ilzpdb5GoaH0bjXE
 /SVw==
X-Gm-Message-State: APjAAAWyn59fvlext2zHb31tCMwCvfhfqm8idvbWunvTLJRJauIqFH8A
 /9OBXXdq9UccdikK8b5eiZk=
X-Google-Smtp-Source: APXvYqw0IXbPkUpcgRGDHFlrJSD7qHIjNP5IEHMHQ2cl/TUYrSJHp7Jpy2Jw0N/8yLRUZB6wlA3VqQ==
X-Received: by 2002:adf:ec8c:: with SMTP id z12mr7220358wrn.209.1559320148999; 
 Fri, 31 May 2019 09:29:08 -0700 (PDT)
Received: from ?IPv6:2003:ea:8bf3:bd00:2026:7a0b:4d8d:d1ce?
 (p200300EA8BF3BD0020267A0B4D8DD1CE.dip0.t-ipconnect.de.
 [2003:ea:8bf3:bd00:2026:7a0b:4d8d:d1ce])
 by smtp.googlemail.com with ESMTPSA id c2sm3684994wrf.75.2019.05.31.09.29.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 09:29:08 -0700 (PDT)
To: Andrew Lunn <andrew@lunn.ch>, Paul Menzel <pmenzel@molgen.mpg.de>
References: <87cb341b-1c32-04be-9309-489354ef8065@molgen.mpg.de>
 <20190531141411.GA23821@lunn.ch>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <f2b13ac8-e1ca-80c1-01b5-8f8c0da82323@gmail.com>
Date: Fri, 31 May 2019 18:29:00 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190531141411.GA23821@lunn.ch>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 03 Jun 2019 17:46:57 +0000
Subject: Re: [Intel-wired-lan] Decreasing time to get link up to below 3 s
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
Cc: netdev@vger.kernel.org,
 Realtek linux nic maintainers <nic_swsd@realtek.com>,
 intel-wired-lan@lists.osuosl.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMzEuMDUuMjAxOSAxNjoxNCwgQW5kcmV3IEx1bm4gd3JvdGU6Cj4gT24gRnJpLCBNYXkgMzEs
IDIwMTkgYXQgMDM6MTk6MjBQTSArMDIwMCwgUGF1bCBNZW56ZWwgd3JvdGU6Cj4+IERlYXIgTGlu
dXggZm9sa3MsCj4+Cj4+Cj4+IE9uIHNldmVyYWwgc3lzdGVtcyB3aXRoIGRpZmZlcmVudCBuZXR3
b3JrIGRldmljZXMgYW5kIGRyaXZlcnMgKGUxMDAwZSwgcjgxNjksIHRnMykKPj4gaXQgbG9va3Mg
bGlrZSBnZXR0aW5nIHRoZSBsaW5rIHVwIHRha2VzIG92ZXIgdGhyZWUgc2Vjb25kcy4KPj4KPj4g
IyMjIGUxMDAwZSAjIyMKPj4KPj4gWyAgICAxLjk5OTY3OF0gZTEwMDBlOiBJbnRlbChSKSBQUk8v
MTAwMCBOZXR3b3JrIERyaXZlciAtIDMuMi42LWsKPj4gWyAgICAyLjAwMDM3NF0gZTEwMDBlOiBD
b3B5cmlnaHQoYykgMTk5OSAtIDIwMTUgSW50ZWwgQ29ycG9yYXRpb24uCj4+IFsgICAgMi4wMDEy
MDZdIGUxMDAwZSAwMDAwOjAwOjFmLjY6IEludGVycnVwdCBUaHJvdHRsaW5nIFJhdGUgKGludHMv
c2VjKSBzZXQgdG8gZHluYW1pYyBjb25zZXJ2YXRpdmUgbW9kZQo+PiBbICAgIDIuNDEyMDk2XSBl
MTAwMGUgMDAwMDowMDoxZi42IDAwMDA6MDA6MWYuNiAodW5pbml0aWFsaXplZCk6IHJlZ2lzdGVy
ZWQgUEhDIGNsb2NrCj4+IFsgICAgMi40OTUyOTVdIGUxMDAwZSAwMDAwOjAwOjFmLjYgZXRoMDog
KFBDSSBFeHByZXNzOjIuNUdUL3M6V2lkdGggeDEpIDY0OjAwOjZhOjJjOjEwOmMxCj4+IFsgICAg
Mi40OTYyMDRdIGUxMDAwZSAwMDAwOjAwOjFmLjYgZXRoMDogSW50ZWwoUikgUFJPLzEwMDAgTmV0
d29yayBDb25uZWN0aW9uCj4+IFsgICAgMi40OTcwMjRdIGUxMDAwZSAwMDAwOjAwOjFmLjYgZXRo
MDogTUFDOiAxMiwgUEhZOiAxMiwgUEJBIE5vOiBGRkZGRkYtMEZGCj4+IFsgICAxNS42MTQwMzFd
IGUxMDAwZSAwMDAwOjAwOjFmLjYgbmV0MDA6IHJlbmFtZWQgZnJvbSBldGgwCj4+IFsgICAxOC42
NzkzMjVdIGUxMDAwZTogbmV0MDAgTklDIExpbmsgaXMgVXAgMTAwMCBNYnBzIEZ1bGwgRHVwbGV4
LCBGbG93IENvbnRyb2w6IE5vbmUKPiAKPiBIaSBQYXVsCj4gCj4gQWxsIHRoZSBJbnRlbCBkcml2
ZXJzIGRvIHRoZXJlIG93biBQSFkgaGFuZGxpbmcsIHNvIGkgY2Fubm90IHNwZWFrIGZvciB0aGVt
Lgo+IAo+Pgo+PiAjIyMgcjgxNjkgIyMjCj4+Cj4+IFsgICAzMy40MzMxMDNdIHI4MTY5IDAwMDA6
MTg6MDAuMDogZW5hYmxpbmcgZGV2aWNlICgwMDAwIC0+IDAwMDMpCj4+IFsgICAzMy40NTM4MzRd
IGxpYnBoeTogcjgxNjk6IHByb2JlZAo+PiBbICAgMzMuNDU2NjI5XSByODE2OSAwMDAwOjE4OjAw
LjAgZXRoMDogUlRMODE2OGgvODExMWgsIDMwOjljOjIzOjA0OmQ2Ojk4LCBYSUQgNTQxLCBJUlEg
NTIKPj4gWyAgIDMzLjQ1NjYzMV0gcjgxNjkgMDAwMDoxODowMC4wIGV0aDA6IGp1bWJvIGZlYXR1
cmVzIFtmcmFtZXM6IDkyMDAgYnl0ZXMsIHR4IGNoZWNrc3VtbWluZzoga29dCj4+IFsgICAzMy42
MDczODRdIHI4MTY5IDAwMDA6MTg6MDAuMCBlbnAyNHMwOiByZW5hbWVkIGZyb20gZXRoMAo+PiBb
ICAgMzQuMTM0MDM1XSBHZW5lcmljIFJlYWx0ZWsgUEhZIHI4MTY5LTE4MDA6MDA6IGF0dGFjaGVk
IFBIWSBkcml2ZXIgW0dlbmVyaWMgUmVhbHRlayBQSFldIChtaWlfYnVzOnBoeV9hZGRyPXI4MTY5
LTE4MDA6MDAsIGlycT1JR05PUkUpCj4+IFsgICAzNC4yMTUyNDRdIHI4MTY5IDAwMDA6MTg6MDAu
MCBlbnAyNHMwOiBMaW5rIGlzIERvd24KPj4gWyAgIDM3LjgyMjUzNl0gcjgxNjkgMDAwMDoxODow
MC4wIGVucDI0czA6IExpbmsgaXMgVXAgLSAxR2Jwcy9GdWxsIC0gZmxvdyBjb250cm9sIHJ4L3R4
Cj4gCj4gVGhpcyBpcyB1c2luZyB0aGUgZ2VuZXJpYyBQSFkgZnJhbWV3b3JrIGFuZCBkcml2ZXJz
Lgo+IAo+IFlvdSBjYW4gc2VlIGhlcmUgaXJxPUlHTk9SRS4gVGhpcyBpbXBsaWVzIGludGVycnVw
dHMgYXJlIG5vdCBiZWluZwo+IHVzZWQuIFNvIGl0IHdpbGwgcG9sbCB0aGUgUEhZIG9uY2UgcGVy
IHNlY29uZC4gSWYgeW91IGNhbiBnZXQKPiBpbnRlcnJ1cHRzIHdvcmtpbmcsIHlvdSBjYW4gc2F2
ZSAxLzIgc2Vjb25kIG9uIGF2ZXJhZ2UuCj4gCmlycT1JR05PUkUgbWVhbnMgdGhlIE1BQyBpbnRl
cnJ1cHQgaXMgdXNlZCAodXNpbmcgcGh5X21hY19pbnRlcnJ1cHQpLgoKPiAKPj4gIyMjIHRnMyAj
IyMKPj4KPj4gWyAgICAyLjAxNTYwNF0gdGczLmM6djMuMTM3IChNYXkgMTEsIDIwMTQpCj4+IFsg
ICAgMi4wMjU2MTNdIHRnMyAwMDAwOjA0OjAwLjAgZXRoMDogVGlnb24zIFtwYXJ0bm8oQkNNOTU3
NjIpIHJldiA1NzYyMTAwXSAoUENJIEV4cHJlc3MpIE1BQyBhZGRyZXNzIDU0OmJmOjY0OjcwOmE1
OmY5Cj4+IFsgICAgMi4wMjY5NTVdIHRnMyAwMDAwOjA0OjAwLjAgZXRoMDogYXR0YWNoZWQgUEhZ
IGlzIDU3NjJDICgxMC8xMDAvMTAwMEJhc2UtVCBFdGhlcm5ldCkgKFdpcmVTcGVlZFsxXSwgRUVF
WzFdKQo+PiBbICAgIDIuMDI4MjUyXSB0ZzMgMDAwMDowNDowMC4wIGV0aDA6IFJYY3N1bXNbMV0g
TGlua0NoZ1JFR1swXSBNSWlycVswXSBBU0ZbMV0gVFNPY2FwWzFdCj4+IFsgICAgMi4wMjk0NjJd
IHRnMyAwMDAwOjA0OjAwLjAgZXRoMDogZG1hX3J3Y3RybFswMDAwMDAwMV0gZG1hX21hc2tbNjQt
Yml0XQo+PiBbICAgIDYuMzc2OTA0XSB0ZzMgMDAwMDowNDowMC4wIG5ldDAwOiByZW5hbWVkIGZy
b20gZXRoMAo+PiBbICAgMTAuMjQwNDExXSB0ZzMgMDAwMDowNDowMC4wIG5ldDAwOiBMaW5rIGlz
IHVwIGF0IDEwMDAgTWJwcywgZnVsbCBkdXBsZXgKPj4gWyAgIDEwLjI0MDQxMl0gdGczIDAwMDA6
MDQ6MDAuMCBuZXQwMDogRmxvdyBjb250cm9sIGlzIG9uIGZvciBUWCBhbmQgb24gZm9yIFJYCj4+
IFsgICAxMC4yNDA0MTNdIHRnMyAwMDAwOjA0OjAwLjAgbmV0MDA6IEVFRSBpcyBkaXNhYmxlZAo+
Pgo+IAo+IEFub3RoZXIgTUFDIGRyaXZlciB3aGljaCBkb2VzIG5vdCB1c2UgdGhlIGdlbmVyaWMg
ZnJhbWV3b3JrLgo+IAo+PiBJZiB0aGUgdGltZSBjYW5ub3QgYmUgZGVjcmVhc2VkLCBhcmUgdGhl
cmUgYWx0ZXJuYXRpdmUgc3RyYXRlZ2llcyB0byBnZXQgYSBsaW5rCj4+IHVwIGFzIGZhc3QgYXMg
cG9zc2libGU/IEZvciBmYXN0IGJvb3Qgc3lzdGVtcywgaXTigJlkIGJlIGludGVyZXN0aW5nIGlm
IGZpcnN0Cj4+IGEgc2xvd2VyIHNwZWVkIGNvdWxkIGJlIG5lZ290aWF0ZWQgYW5kIGxhdGVyIGl0
IHdvdWxkIGJlIGNoYW5nZWQuCj4gClRoZSBmb2xsb3dpbmcgcHJlc2VudGF0aW9uIHNob3VsZCBo
ZWxwIHRvIHVuZGVyc3RhbmQgd2hpY2ggZmFjdG9ycwpjb250cmlidXRlIHRvIHRoZSA+M3MgZm9y
IGF1dG8tbmVnb3RpYXRpb24uCmh0dHA6Ly93d3cuaWVlZTgwMi5vcmcvMy9hZi9wdWJsaWMvamFu
MDIvYnJvd25fMV8wMTAyLnBkZgoKPiBZb3UgY2FuIHVzZSBldGh0b29sIHRvIHNldCB0aGUgbW9k
ZXMgaXQgd2lsbCBvZmZlciBmb3IgYXV0by1uZWcuIFNvCj4geW91IGNvdWxkIG9mZmVyIDEwL2hh
bGYgYW5kIHNlZSBpZiB0aGF0IGNvbWVzIHVwIGZhc3Rlci4KPiAKPiBldGh0b29sIC1zIGV0aDAg
YWR2ZXJ0aXNlIDB4MDAxCj4gCj4gQnV0IHlvdSBhcmUgc3RpbGwgZ29pbmcgdG8gaGF2ZSB0byB3
YWl0IHRoZSBsb25nZXIgdGltZSB3aGVuIHlvdQo+IGRlY2lkZSBpdCBpcyB0aW1lIHRvIHN3YXAg
dG8gdGhlIGZ1bGwgYmFuZHdpZHRoLgo+IAo+ICAgICAgICBBbmRyZXcKPiAKSGVpbmVyCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
