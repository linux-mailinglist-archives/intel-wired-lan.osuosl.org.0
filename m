Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E2D3109B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2019 16:51:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCE0886A8C;
	Fri, 31 May 2019 14:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gCQ4y_1G-Tou; Fri, 31 May 2019 14:51:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9505384EC1;
	Fri, 31 May 2019 14:51:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75AA01BF34E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 14:51:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 71B0C841AC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 14:51:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jOyAmYOntTbG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2019 14:51:27 +0000 (UTC)
X-Greylist: delayed 00:35:48 by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 64D4284155
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 14:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lQ/kbfhYvDZZPBwmLwZieU5H7NxDWSHEMyqN5A9/ir0=; b=sDh0Te3JJY58duHLHfjcHd6tYB
 x91CLNMhNV866aKk1fwqb2vadMt5bnFloCs0wURWTxTnX9F91uj1k4ZGjRbXnSov42pTZr6qJ4MBe
 dkwb8lBCwoirtD3XKfy0lxLRbuUvN2z//HCVfW+IP7sLpMxuKGiJ+h+o91bZyB0zNrh0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hWiIN-0006Mk-Qx; Fri, 31 May 2019 16:14:11 +0200
Date: Fri, 31 May 2019 16:14:11 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20190531141411.GA23821@lunn.ch>
References: <87cb341b-1c32-04be-9309-489354ef8065@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87cb341b-1c32-04be-9309-489354ef8065@molgen.mpg.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
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
Cc: Realtek linux nic maintainers <nic_swsd@realtek.com>,
 netdev@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBNYXkgMzEsIDIwMTkgYXQgMDM6MTk6MjBQTSArMDIwMCwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4gRGVhciBMaW51eCBmb2xrcywKPiAKPiAKPiBPbiBzZXZlcmFsIHN5c3RlbXMgd2l0aCBk
aWZmZXJlbnQgbmV0d29yayBkZXZpY2VzIGFuZCBkcml2ZXJzIChlMTAwMGUsIHI4MTY5LCB0ZzMp
Cj4gaXQgbG9va3MgbGlrZSBnZXR0aW5nIHRoZSBsaW5rIHVwIHRha2VzIG92ZXIgdGhyZWUgc2Vj
b25kcy4KPiAKPiAjIyMgZTEwMDBlICMjIwo+IAo+IFsgICAgMS45OTk2NzhdIGUxMDAwZTogSW50
ZWwoUikgUFJPLzEwMDAgTmV0d29yayBEcml2ZXIgLSAzLjIuNi1rCj4gWyAgICAyLjAwMDM3NF0g
ZTEwMDBlOiBDb3B5cmlnaHQoYykgMTk5OSAtIDIwMTUgSW50ZWwgQ29ycG9yYXRpb24uCj4gWyAg
ICAyLjAwMTIwNl0gZTEwMDBlIDAwMDA6MDA6MWYuNjogSW50ZXJydXB0IFRocm90dGxpbmcgUmF0
ZSAoaW50cy9zZWMpIHNldCB0byBkeW5hbWljIGNvbnNlcnZhdGl2ZSBtb2RlCj4gWyAgICAyLjQx
MjA5Nl0gZTEwMDBlIDAwMDA6MDA6MWYuNiAwMDAwOjAwOjFmLjYgKHVuaW5pdGlhbGl6ZWQpOiBy
ZWdpc3RlcmVkIFBIQyBjbG9jawo+IFsgICAgMi40OTUyOTVdIGUxMDAwZSAwMDAwOjAwOjFmLjYg
ZXRoMDogKFBDSSBFeHByZXNzOjIuNUdUL3M6V2lkdGggeDEpIDY0OjAwOjZhOjJjOjEwOmMxCj4g
WyAgICAyLjQ5NjIwNF0gZTEwMDBlIDAwMDA6MDA6MWYuNiBldGgwOiBJbnRlbChSKSBQUk8vMTAw
MCBOZXR3b3JrIENvbm5lY3Rpb24KPiBbICAgIDIuNDk3MDI0XSBlMTAwMGUgMDAwMDowMDoxZi42
IGV0aDA6IE1BQzogMTIsIFBIWTogMTIsIFBCQSBObzogRkZGRkZGLTBGRgo+IFsgICAxNS42MTQw
MzFdIGUxMDAwZSAwMDAwOjAwOjFmLjYgbmV0MDA6IHJlbmFtZWQgZnJvbSBldGgwCj4gWyAgIDE4
LjY3OTMyNV0gZTEwMDBlOiBuZXQwMCBOSUMgTGluayBpcyBVcCAxMDAwIE1icHMgRnVsbCBEdXBs
ZXgsIEZsb3cgQ29udHJvbDogTm9uZQoKSGkgUGF1bAoKQWxsIHRoZSBJbnRlbCBkcml2ZXJzIGRv
IHRoZXJlIG93biBQSFkgaGFuZGxpbmcsIHNvIGkgY2Fubm90IHNwZWFrIGZvciB0aGVtLgoKPiAK
PiAjIyMgcjgxNjkgIyMjCj4gCj4gWyAgIDMzLjQzMzEwM10gcjgxNjkgMDAwMDoxODowMC4wOiBl
bmFibGluZyBkZXZpY2UgKDAwMDAgLT4gMDAwMykKPiBbICAgMzMuNDUzODM0XSBsaWJwaHk6IHI4
MTY5OiBwcm9iZWQKPiBbICAgMzMuNDU2NjI5XSByODE2OSAwMDAwOjE4OjAwLjAgZXRoMDogUlRM
ODE2OGgvODExMWgsIDMwOjljOjIzOjA0OmQ2Ojk4LCBYSUQgNTQxLCBJUlEgNTIKPiBbICAgMzMu
NDU2NjMxXSByODE2OSAwMDAwOjE4OjAwLjAgZXRoMDoganVtYm8gZmVhdHVyZXMgW2ZyYW1lczog
OTIwMCBieXRlcywgdHggY2hlY2tzdW1taW5nOiBrb10KPiBbICAgMzMuNjA3Mzg0XSByODE2OSAw
MDAwOjE4OjAwLjAgZW5wMjRzMDogcmVuYW1lZCBmcm9tIGV0aDAKPiBbICAgMzQuMTM0MDM1XSBH
ZW5lcmljIFJlYWx0ZWsgUEhZIHI4MTY5LTE4MDA6MDA6IGF0dGFjaGVkIFBIWSBkcml2ZXIgW0dl
bmVyaWMgUmVhbHRlayBQSFldIChtaWlfYnVzOnBoeV9hZGRyPXI4MTY5LTE4MDA6MDAsIGlycT1J
R05PUkUpCj4gWyAgIDM0LjIxNTI0NF0gcjgxNjkgMDAwMDoxODowMC4wIGVucDI0czA6IExpbmsg
aXMgRG93bgo+IFsgICAzNy44MjI1MzZdIHI4MTY5IDAwMDA6MTg6MDAuMCBlbnAyNHMwOiBMaW5r
IGlzIFVwIC0gMUdicHMvRnVsbCAtIGZsb3cgY29udHJvbCByeC90eAoKVGhpcyBpcyB1c2luZyB0
aGUgZ2VuZXJpYyBQSFkgZnJhbWV3b3JrIGFuZCBkcml2ZXJzLgoKWW91IGNhbiBzZWUgaGVyZSBp
cnE9SUdOT1JFLiBUaGlzIGltcGxpZXMgaW50ZXJydXB0cyBhcmUgbm90IGJlaW5nCnVzZWQuIFNv
IGl0IHdpbGwgcG9sbCB0aGUgUEhZIG9uY2UgcGVyIHNlY29uZC4gSWYgeW91IGNhbiBnZXQKaW50
ZXJydXB0cyB3b3JraW5nLCB5b3UgY2FuIHNhdmUgMS8yIHNlY29uZCBvbiBhdmVyYWdlLgoKCj4g
IyMjIHRnMyAjIyMKPiAKPiBbICAgIDIuMDE1NjA0XSB0ZzMuYzp2My4xMzcgKE1heSAxMSwgMjAx
NCkKPiBbICAgIDIuMDI1NjEzXSB0ZzMgMDAwMDowNDowMC4wIGV0aDA6IFRpZ29uMyBbcGFydG5v
KEJDTTk1NzYyKSByZXYgNTc2MjEwMF0gKFBDSSBFeHByZXNzKSBNQUMgYWRkcmVzcyA1NDpiZjo2
NDo3MDphNTpmOQo+IFsgICAgMi4wMjY5NTVdIHRnMyAwMDAwOjA0OjAwLjAgZXRoMDogYXR0YWNo
ZWQgUEhZIGlzIDU3NjJDICgxMC8xMDAvMTAwMEJhc2UtVCBFdGhlcm5ldCkgKFdpcmVTcGVlZFsx
XSwgRUVFWzFdKQo+IFsgICAgMi4wMjgyNTJdIHRnMyAwMDAwOjA0OjAwLjAgZXRoMDogUlhjc3Vt
c1sxXSBMaW5rQ2hnUkVHWzBdIE1JaXJxWzBdIEFTRlsxXSBUU09jYXBbMV0KPiBbICAgIDIuMDI5
NDYyXSB0ZzMgMDAwMDowNDowMC4wIGV0aDA6IGRtYV9yd2N0cmxbMDAwMDAwMDFdIGRtYV9tYXNr
WzY0LWJpdF0KPiBbICAgIDYuMzc2OTA0XSB0ZzMgMDAwMDowNDowMC4wIG5ldDAwOiByZW5hbWVk
IGZyb20gZXRoMAo+IFsgICAxMC4yNDA0MTFdIHRnMyAwMDAwOjA0OjAwLjAgbmV0MDA6IExpbmsg
aXMgdXAgYXQgMTAwMCBNYnBzLCBmdWxsIGR1cGxleAo+IFsgICAxMC4yNDA0MTJdIHRnMyAwMDAw
OjA0OjAwLjAgbmV0MDA6IEZsb3cgY29udHJvbCBpcyBvbiBmb3IgVFggYW5kIG9uIGZvciBSWAo+
IFsgICAxMC4yNDA0MTNdIHRnMyAwMDAwOjA0OjAwLjAgbmV0MDA6IEVFRSBpcyBkaXNhYmxlZAo+
IAoKQW5vdGhlciBNQUMgZHJpdmVyIHdoaWNoIGRvZXMgbm90IHVzZSB0aGUgZ2VuZXJpYyBmcmFt
ZXdvcmsuCgo+IElmIHRoZSB0aW1lIGNhbm5vdCBiZSBkZWNyZWFzZWQsIGFyZSB0aGVyZSBhbHRl
cm5hdGl2ZSBzdHJhdGVnaWVzIHRvIGdldCBhIGxpbmsKPiB1cCBhcyBmYXN0IGFzIHBvc3NpYmxl
PyBGb3IgZmFzdCBib290IHN5c3RlbXMsIGl04oCZZCBiZSBpbnRlcmVzdGluZyBpZiBmaXJzdAo+
IGEgc2xvd2VyIHNwZWVkIGNvdWxkIGJlIG5lZ290aWF0ZWQgYW5kIGxhdGVyIGl0IHdvdWxkIGJl
IGNoYW5nZWQuCgpZb3UgY2FuIHVzZSBldGh0b29sIHRvIHNldCB0aGUgbW9kZXMgaXQgd2lsbCBv
ZmZlciBmb3IgYXV0by1uZWcuIFNvCnlvdSBjb3VsZCBvZmZlciAxMC9oYWxmIGFuZCBzZWUgaWYg
dGhhdCBjb21lcyB1cCBmYXN0ZXIuCgpldGh0b29sIC1zIGV0aDAgYWR2ZXJ0aXNlIDB4MDAxCgpC
dXQgeW91IGFyZSBzdGlsbCBnb2luZyB0byBoYXZlIHRvIHdhaXQgdGhlIGxvbmdlciB0aW1lIHdo
ZW4geW91CmRlY2lkZSBpdCBpcyB0aW1lIHRvIHN3YXAgdG8gdGhlIGZ1bGwgYmFuZHdpZHRoLgoK
ICAgICAgIEFuZHJldwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
