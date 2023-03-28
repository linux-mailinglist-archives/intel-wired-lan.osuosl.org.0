Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CAB6CC242
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Mar 2023 16:39:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 124DD418E6;
	Tue, 28 Mar 2023 14:39:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 124DD418E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680014354;
	bh=EozeJWPjvZtrwG9gWdBzybV/Jeb7Wry6lsz9y1W69Tk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eHnHgvp57C+H/KiqYP1Y2vMSkKzxa/pOcqR+4aiyRi8rvQshGd5yckDiIQrw4HlRn
	 mnFWM7+KQIrwY+yMUKXZF+Jcia9v5udnEW3Sf6fvpvWNeux8lJaUleL74oylx0RWab
	 gMNC4whmDEjjW+Xtrt7m3YjtLdCo6ax4IjQ+osYQKW5KwljVbdlq15sIdOfICPBiLG
	 i947/hA7DVjOYIUuH56kVgoP7xS90ruSlekKxgDaNA67rsO3Te4mt9v2oodJWVHQeN
	 rJ1M92apCcUSzMRXHWJve99K5lw0M+yZObIX4vWD6nBD0+NAARRLMqAOtCe/fF/TRk
	 gQRW5aJ270+5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y5gHIWtbX30J; Tue, 28 Mar 2023 14:39:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A55D54187A;
	Tue, 28 Mar 2023 14:39:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A55D54187A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82B6C1BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 14:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5AAD861382
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 14:39:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AAD861382
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id knhgoIITYuA6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Mar 2023 14:39:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2680D60A6A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2680D60A6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 14:39:04 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DF99261CC457B;
 Tue, 28 Mar 2023 16:39:01 +0200 (CEST)
Message-ID: <652a9a96-f499-f31f-2a55-3c80b6ac9c75@molgen.mpg.de>
Date: Tue, 28 Mar 2023 16:39:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Takashi Iwai <tiwai@suse.de>
References: <87jzz13v7i.wl-tiwai@suse.de>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <87jzz13v7i.wl-tiwai@suse.de>
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e probe/link detection
 fails since 6.2 kernel
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
Cc: regressions@lists.linux.dev, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBUYWthc2hpLAoKCkFtIDI4LjAzLjIzIHVtIDE0OjQwIHNjaHJpZWIgVGFrYXNoaSBJd2Fp
OgoKPiB3ZSd2ZSBnb3QgYSByZWdyZXNzaW9uIHJlcG9ydCBmb3IgZTEwMDBlIGRldmljZSBvbiBM
ZW5vdm8gVDQ2MHAgc2luY2UKPiA2LjIga2VybmVsICh3aXRoIG9wZW5TVVNFIFR1bWJsZXdlZWQp
LiAgVGhlIGRldGFpbHMgYXJlIGZvdW5kIGluCj4gICAgaHR0cHM6Ly9idWd6aWxsYS5vcGVuc3Vz
ZS5vcmcvc2hvd19idWcuY2dpP2lkPTEyMDkyNTQKClRoYW5rIHlvdSBmb3IgZm9yd2FyZGluZyB0
aGUgcmVwb3J0LgoKPiBJdCBzZWVtcyB0aGF0IHRoZSBkcml2ZXIgY2FuJ3QgZGV0ZWN0IHRoZSAx
MDAwTWJwcyBidXQgb25seSAxMC8xMDBNYnBzCj4gbGluaywgZXZlbnR1YWxseSBtYWtpbmcgdGhl
IGRldmljZSB1bnVzYWJsZS4KPiAKPiBPbiA2LjEuMTI6Cj4gWyAgICA1LjExOTExN10gZTEwMDBl
OiBJbnRlbChSKSBQUk8vMTAwMCBOZXR3b3JrIERyaXZlcgo+IFsgICAgNS4xMTkxMjBdIGUxMDAw
ZTogQ29weXJpZ2h0KGMpIDE5OTkgLSAyMDE1IEludGVsIENvcnBvcmF0aW9uLgo+IFsgICAgNS4x
MjE3NTRdIGUxMDAwZSAwMDAwOjAwOjFmLjY6IEludGVycnVwdCBUaHJvdHRsaW5nIFJhdGUgKGlu
dHMvc2VjKSBzZXQgdG8gZHluYW1pYyBjb25zZXJ2YXRpdmUgbW9kZQo+IFsgICAgNy45MDU1MjZd
IGUxMDAwZSAwMDAwOjAwOjFmLjYgMDAwMDowMDoxZi42ICh1bmluaXRpYWxpemVkKTogRmFpbGVk
IHRvIGRpc2FibGUgVUxQCj4gWyAgICA3Ljk4ODkyNV0gZTEwMDBlIDAwMDA6MDA6MWYuNiAwMDAw
OjAwOjFmLjYgKHVuaW5pdGlhbGl6ZWQpOiByZWdpc3RlcmVkIFBIQyBjbG9jawo+IFsgICAgOC4w
Njk5MzVdIGUxMDAwZSAwMDAwOjAwOjFmLjYgZXRoMDogKFBDSSBFeHByZXNzOjIuNUdUL3M6V2lk
dGggeDEpIDUwOjdiOjlkOmNmOjEzOjQzCj4gWyAgICA4LjA2OTk0Ml0gZTEwMDBlIDAwMDA6MDA6
MWYuNiBldGgwOiBJbnRlbChSKSBQUk8vMTAwMCBOZXR3b3JrIENvbm5lY3Rpb24KPiBbICAgIDgu
MDcyNjkxXSBlMTAwMGUgMDAwMDowMDoxZi42IGV0aDA6IE1BQzogMTIsIFBIWTogMTIsIFBCQSBO
bzogMTAwMEZGLTBGRgo+IFsgICAxMS42NDM5MTldIGUxMDAwZSAwMDAwOjAwOjFmLjYgZXRoMDog
TklDIExpbmsgaXMgVXAgMTAwMCBNYnBzIEZ1bGwgRHVwbGV4LCBGbG93IENvbnRyb2w6IE5vbmUK
PiBbICAgMTUuNDM3NDM3XSBlMTAwMGUgMDAwMDowMDoxZi42IGV0aDA6IE5JQyBMaW5rIGlzIFVw
IDEwMDAgTWJwcyBGdWxsIER1cGxleCwgRmxvdyBDb250cm9sOiBOb25lCj4gCj4gT24gNi4yLjQ6
Cj4gWyAgICA0LjM0NDE0MF0gZTEwMDBlOiBJbnRlbChSKSBQUk8vMTAwMCBOZXR3b3JrIERyaXZl
cgo+IFsgICAgNC4zNDQxNDNdIGUxMDAwZTogQ29weXJpZ2h0KGMpIDE5OTkgLSAyMDE1IEludGVs
IENvcnBvcmF0aW9uLgo+IFsgICAgNC4zNDQ5MzNdIGUxMDAwZSAwMDAwOjAwOjFmLjY6IEludGVy
cnVwdCBUaHJvdHRsaW5nIFJhdGUgKGludHMvc2VjKSBzZXQgdG8gZHluYW1pYyBjb25zZXJ2YXRp
dmUgbW9kZQo+IFsgICAgNy4xMTMzMzRdIGUxMDAwZSAwMDAwOjAwOjFmLjYgMDAwMDowMDoxZi42
ICh1bmluaXRpYWxpemVkKTogRmFpbGVkIHRvIGRpc2FibGUgVUxQCj4gWyAgICA3LjIwMTcxNV0g
ZTEwMDBlIDAwMDA6MDA6MWYuNiAwMDAwOjAwOjFmLjYgKHVuaW5pdGlhbGl6ZWQpOiByZWdpc3Rl
cmVkIFBIQyBjbG9jawo+IFsgICAgNy4yODQwMzhdIGUxMDAwZSAwMDAwOjAwOjFmLjYgZXRoMDog
KFBDSSBFeHByZXNzOjIuNUdUL3M6V2lkdGggeDEpIDUwOjdiOjlkOmNmOjEzOjQzCj4gWyAgICA3
LjI4NDA0NF0gZTEwMDBlIDAwMDA6MDA6MWYuNiBldGgwOiBJbnRlbChSKSBQUk8vMTAwMCBOZXR3
b3JrIENvbm5lY3Rpb24KPiBbICAgIDcuMjg0MTI1XSBlMTAwMGUgMDAwMDowMDoxZi42IGV0aDA6
IE1BQzogMTIsIFBIWTogMTIsIFBCQSBObzogMTAwMEZGLTBGRgo+IFsgICAxMC44OTc5NzNdIGUx
MDAwZSAwMDAwOjAwOjFmLjYgZXRoMDogTklDIExpbmsgaXMgVXAgMTAgTWJwcyBGdWxsIER1cGxl
eCwgRmxvdyBDb250cm9sOiBOb25lCj4gWyAgIDEwLjg5Nzk3N10gZTEwMDBlIDAwMDA6MDA6MWYu
NiBldGgwOiAxMC8xMDAgc3BlZWQ6IGRpc2FibGluZyBUU08KPiBbICAgMTQuNzEwMDU5XSBlMTAw
MGUgMDAwMDowMDoxZi42IGV0aDA6IE5JQyBMaW5rIGlzIFVwIDEwIE1icHMgRnVsbCBEdXBsZXgs
IEZsb3cgQ29udHJvbDogTm9uZQo+IFsgICAxNC43MTAwNjRdIGUxMDAwZSAwMDAwOjAwOjFmLjYg
ZXRoMDogMTAvMTAwIHNwZWVkOiBkaXNhYmxpbmcgVFNPCj4gWyAgIDU5Ljg5NDgwN10gZTEwMDBl
IDAwMDA6MDA6MWYuNiBldGgwOiBOSUMgTGluayBpcyBVcCAxMCBNYnBzIEZ1bGwgRHVwbGV4LCBG
bG93IENvbnRyb2w6IE5vbmUKPiBbICAgNTkuODk0ODEyXSBlMTAwMGUgMDAwMDowMDoxZi42IGV0
aDA6IDEwLzEwMCBzcGVlZDogZGlzYWJsaW5nIFRTTwo+IFsgICA2My44MDg2NjJdIGUxMDAwZSAw
MDAwOjAwOjFmLjYgZXRoMDogTklDIExpbmsgaXMgVXAgMTAgTWJwcyBGdWxsIER1cGxleCwgRmxv
dyBDb250cm9sOiBOb25lCj4gWyAgIDYzLjgwODY2OF0gZTEwMDBlIDAwMDA6MDA6MWYuNiBldGgw
OiAxMC8xMDAgc3BlZWQ6IGRpc2FibGluZyBUU08KPiAKPiBUaGUgc2FtZSBwcm9ibGVtIHBlcnNp
c3RzIHdpdGggNi4zLXJjMy4KPiAKPiBDYW4geW91IGd1eXMgY2hlY2sgd2hhdCBjYW4gZ28gd3Jv
bmcsIG9yIGlmIHRoZXJlIGlzIGEgZml4PwoKRG9lcyBvcGVuU1VTRSBUdW1ibGV3ZWVkIG1ha2Ug
aXQgZWFzeSB0byBiaXNlY3QgdGhlIHJlZ3Jlc3Npb24gYXQgbGVhc3QgCm9uIOKAnHJjIGxldmVs
4oCdPyBJdCBiZSBncmVhdCBpZiBuYXJyb3cgaXQgbW9yZSBkb3duLCBzbyB3ZSBrbm93IGl0IGZv
ciAKZXhhbXBsZSByZWdyZXNzZWQgaW4gNi4yLXJjNy4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
