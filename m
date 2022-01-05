Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB8C484E64
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jan 2022 07:31:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D96F44160A;
	Wed,  5 Jan 2022 06:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dJO6B1CDIlZs; Wed,  5 Jan 2022 06:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCCA4415FB;
	Wed,  5 Jan 2022 06:31:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 937DC1BF951
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 06:31:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8E11960F16
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 06:31:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ah54V9SojH0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jan 2022 06:31:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp.smtpout.orange.fr (smtp02.smtpout.orange.fr
 [80.12.242.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A6CA60B75
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 06:31:15 +0000 (UTC)
Received: from [192.168.1.18] ([90.11.185.88]) by smtp.orange.fr with ESMTPA
 id 4zpGnt6LQBazo4zpGny1Ls; Wed, 05 Jan 2022 07:31:14 +0100
X-ME-Helo: [192.168.1.18]
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Wed, 05 Jan 2022 07:31:14 +0100
X-ME-IP: 90.11.185.88
Message-ID: <9b93f495-2bfe-1ade-141b-69c4842aee8e@wanadoo.fr>
Date: Wed, 5 Jan 2022 07:31:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
References: <c7a34d0096eb4ba98dd9ce5b64ba079126cab708.1641255235.git.christophe.jaillet@wanadoo.fr>
 <20220104132936.252202-1-alexandr.lobakin@intel.com>
 <c258c3bb440b88e984b0385af8ffb38a017ba644.camel@intel.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <c258c3bb440b88e984b0385af8ffb38a017ba644.camel@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] intel: Simplify DMA setting
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TGUgMDQvMDEvMjAyMiDDoCAyMjo1NiwgTmd1eWVuLCBBbnRob255IEwgYSDDqWNyaXTCoDoKPiBP
biBUdWUsIDIwMjItMDEtMDQgYXQgMTQ6MjkgKzAxMDAsIEFsZXhhbmRlciBMb2Jha2luIHdyb3Rl
Ogo+PiBGcm9tOiBDaHJpc3RvcGhlIEpBSUxMRVQgPGNocmlzdG9waGUuamFpbGxldEB3YW5hZG9v
LmZyPgo+PiBEYXRlOiBUdWUsIDQgSmFuIDIwMjIgMDE6MTU6MjAgKzAxMDAKPj4KPj4gUmV2aWV3
ZWQtYnk6IEFsZXhhbmRlciBMb2Jha2luIDxhbGV4YW5kci5sb2Jha2luQGludGVsLmNvbT4KPj4K
Pj4gVG9ueSBtaWdodCBhc2sgdG8gc3BsaXQgaXQgaW50byBwZXItZHJpdmVyIHBhdGNoZXMgdGhv
LCB3aWxsIHNlZS4KPiAKPiBIaSBDaHJpc3RvcGhlLAo+IAo+IEFzIG1lbnRpb25lZCBieSBvdGhl
cnMsIHdvdWxkIG1pbmQgYnJlYWtpbmcgdGhlc2UgcGVyLWRyaXZlcj8KPiAKPiBUaGFua3MsCj4g
VG9ueQo+IAoKSSdsbCBkbywgYnV0IHRvIG11Y2ggYnVyZWF1Y3JhY3kgd2lsbCBraWxsIHVzIGFs
bC4KCkNKCgo+Pgo+PiAtLS0gODwgLS0tCj4+Cj4+IEFsCj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
