Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D984E4806
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Mar 2022 22:02:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F97B418F0;
	Tue, 22 Mar 2022 21:02:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bHwoQpqsCRxg; Tue, 22 Mar 2022 21:02:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73117418C4;
	Tue, 22 Mar 2022 21:02:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD0E41BF239
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Mar 2022 21:02:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B8EF0418C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Mar 2022 21:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yxHeLC6HDUt4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Mar 2022 21:02:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E294C418C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Mar 2022 21:02:10 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5ae922.dynamic.kabel-deutschland.de
 [95.90.233.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4387161EA1928;
 Tue, 22 Mar 2022 22:02:07 +0100 (CET)
Message-ID: <68ccb162-459b-cb95-19cf-3e0335e4c981@molgen.mpg.de>
Date: Tue, 22 Mar 2022 22:02:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, David Laight <David.Laight@ACULAB.COM>
References: <20220321135947.378250-1-wanjiabing@vivo.com>
 <f888e3cf09944f9aa63532c9f59e69fb@AcuMS.aculab.com>
 <20220322175038.2691665-1-alexandr.lobakin@intel.com>
 <af3fa59809654c9b9939f1e0bd8ca76b@AcuMS.aculab.com>
 <20220322112730.482d674d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220322112730.482d674d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Subject: [Intel-wired-lan] Don't do arithmetic on anything smaller than
 'int' (was: [PATCH v2] ice: use min_t() to make code cleaner in ice_gnss)
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
Cc: Wan Jiabing <wanjiabing@vivo.com>, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBMaW51eCBmb2xrcywKCgpBbSAyMi4wMy4yMiB1bSAxOToyNyBzY2hyaWViIEpha3ViIEtp
Y2luc2tpOgo+IE9uIFR1ZSwgMjIgTWFyIDIwMjIgMTg6MTI6MDggKzAwMDAgRGF2aWQgTGFpZ2h0
IHdyb3RlOgo+Pj4+IE9oIEZGUyB3aHkgaXMgdGhhdCB1MTY/Cj4+Pj4gRG9uJ3QgZG8gYXJpdGht
ZXRpYyBvbiBhbnl0aGluZyBzbWFsbGVyIHRoYW4gJ2ludCcKPj4+Cj4+PiBBbnkgcmVhc29uaW5n
PyBJIGRvbid0IHNheSBpdCdzIGdvb2Qgb3IgYmFkLCBqdXN0IHdhbnQgdG8gaGVhciB5b3VyCj4+
PiBhcmd1bWVudHMgKGRpc2FzbXMsIHBlcmYgYW5kIG9iamVjdCBjb2RlIG1lYXN1cmVtZW50cykg
ZXRjLgo+Pgo+PiBMb29rIGF0IHRoZSBvYmplY3QgY29kZSBvbiBhbnl0aGluZyBleGNlcHQgeDg2
Lgo+PiBUaGUgY29tcGlsZXIgaGFzIHRvIGFkZCBpbnN0cnVjdGlvbiB0byBtYXNrIHRoZSB2YWx1
ZQo+PiAod2hpY2ggaXMgaW4gYSBmdWxsIHNpemVkIHJlZ2lzdGVyKSBkb3duIHRvIDE2IGJpdHMK
Pj4gYWZ0ZXIgZXZlcnkgYXJpdGhtZXRpYyBvcGVyYXRpb24uCj4gCj4gSXNuJ3QgaXQgYWxzbyBz
bG93ZXIgb24gc29tZSBtb2Rlcm4geDg2IENQVXM/Cj4gSSBjb3VsZCBoYXZlIHN3b3JuIHNvbWVv
bmUgbWVudGlvbmVkIHRoYXQgaW4gdGhlIHBhc3QuCgpJIGtub3cgb2YgU2NvdHTigJlzIGFydGlj
bGUgKlNtYWxsIEludGVnZXJzOiBCaWcgUGVuYWx0eSogZnJvbSAyMDEyIFsxXS4KCgpLaW5kIHJl
Z2FyZHMsCgpQYXVsCgoKWzFdOiBodHRwczovL25vdGFicy5vcmcvY29kaW5nL3NtYWxsSW50c0Jp
Z1BlbmFsdHkuaHRtCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
