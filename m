Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 145FC65BFD0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 13:25:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2196D41681;
	Tue,  3 Jan 2023 12:25:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2196D41681
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672748713;
	bh=0++lrFf2RRKL+BdpaDB2IsL0bt1fI2B6r7TjQZl6CBs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p3cI/X98IvRC3sQVEIGI5ziUDAEICwaMNhyleSBsbYZgjk50fk2kJ8RJ7/2IEjrmB
	 HDOi7/EjwkmSDoW5dUq7fUtJY8eOLOUOt7EtzDTOBHpuAN/6ne/I9OnLcj3+XwVkc4
	 3azdVAbR5P/DDx/1t8igU5GZBajD5rpzmUBs4/rkq//DQOoCFwhcCWI428wqVrKwJN
	 ojSy3OhkoR2hC6S1l9Mq1g8by1WBdbFy5bMm4qIFoQvZbC6RIqOLveGgSE/2WR00As
	 h6ppMorybWpq4Zks0mKsCsk2Ih2xzzkXxgrLgCw2m69F/QJVbTIKi31G5XyDJD6bGH
	 Nj0rouSliZlEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LoaVhMt1qZyl; Tue,  3 Jan 2023 12:25:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE59341638;
	Tue,  3 Jan 2023 12:25:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE59341638
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F4351BF36F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 12:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5FF6B60D69
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 12:25:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FF6B60D69
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1sFbVvylnUGS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 12:25:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8123060B38
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8123060B38
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 12:25:04 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 53B0660293A85;
 Tue,  3 Jan 2023 13:25:01 +0100 (CET)
Message-ID: <b0c70529-0f20-fa80-d688-485ef8470b26@molgen.mpg.de>
Date: Tue, 3 Jan 2023 13:25:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20221221132502.1099843-1-mateusz.palczewski@intel.com>
 <de860700-d302-5ac2-950b-4363f6a55c56@molgen.mpg.de>
 <BL1PR11MB5288FAFB1D586D4EECAC4B7E87F29@BL1PR11MB5288.namprd11.prod.outlook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <BL1PR11MB5288FAFB1D586D4EECAC4B7E87F29@BL1PR11MB5288.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] e1000e: Disable TSO on i219-LM
 card to increase speed
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CkRlYXIgTWF0ZXVzeiwKCgpBbSAyOC4xMi4yMiB1bSAxMTo0MyBzY2hyaWViIFBhbGN6ZXdza2ks
IE1hdGV1c3o6Cgo+IHNvcnJ5IGZvciBsYXRlIHJlc3BvbmQgYnV0IEkgbmVlZGVkIHRvIGNyZWF0
ZSBuZXcgc2V0dXAgdG8gYmUgc3VyZQo+IHRoYXQgdGhpcyBpc3N1ZSBpcyBub3QgcmVsYXRlZCB0
byBuYW1lc3BhY2VzLgoKTm8gcHJvYmxlbS4gVGhhbmsgeW91IGZvciB5b3VyIHJlcGx5LCBhbmQg
c29ycnkgZm9yIG15IGxhdGUgcmVzcG9uc2UgZHVlCnRvIHRoZSBob2xpZGF5cy4KCj4+IEFtIDIx
LjEyLjIyIHVtIDE0OjI1IHNjaHJpZWIgTWF0ZXVzeiBQYWxjemV3c2tpOgo+Pj4gV2hpbGUgdXNp
bmcgaTIxOS1MTSBjYXJkIGN1cnJlbnRseSBpdCB3YXMgb25seSBwb3NzaWJsZSB0byBhY2hpZXZl
Cj4+PiBhYm91dCA2MCUgb2YgbWF4aW11bSBzcGVlZCBkdWUgdG8gcmVncmVzc2lvbiBpbnRyb2R1
Y2VkIGluIExpbnV4IDUuOC1yYzEuCj4+PiBUaGlzIHdhcyBjYXVzZWQgYnkgVFNPIG5vdCBiZWlu
ZyBkaXNhYmxlZCBieSBkZWZhdWx0IGRlc3BpdGUgY29tbWl0Cj4+PiBmMjk4MDEwMzBhYzYgaW1w
bGVtZW50YXRpb24uIEZpeCB0aGF0IGJ5IG1vdmluZyB0aGUgcGFydCBvZiB0aGUgY29kZQo+Pj4g
cmVzcG9uc2libGUgZm9yIHRoaXMgb3V0c2lkZSBvZiBhZGFwdGVyLT5mbGFncyAmIEZMQUdfVFNP
X0ZPUkNFIGNoZWNrLgo+Pgo+PiBVbmZvcnR1bmF0ZWx5LCB5b3UgbWlzc2VkIHRvIGFkZCBhbGwg
dGhlIGluZm9ybWF0aW9uLCB0aGF0IHRoaXMKPj4gY2Fu4oCZdCBiZSByZXByb2R1Y2VkIGluIGFs
bCBzaXR1YXRpb25zLCBhbmQgeW91IGFsc28gZm9yZ290IHRvIGFkZAo+PiB0aGUgZGF0YXNoZWV0
IHNlY3Rpb24sIHdoZXJlIGl04oCZcyB3cml0dGVuIHRoYXQgVFNPIG5lZWRzIHRvIGJlCj4+IGRp
c2FibGVkLgo+Pgo+Pj4gRml4ZXM6IGYyOTgwMTAzMGFjNiAoImUxMDAwZTogRGlzYWJsZSBUU08g
Zm9yIGJ1ZmZlciBvdmVycnVuCj4+PiB3b3JrYXJvdW5kIikKPj4KPj4gV2h5IGRvZXMKPj4KPj4g
ICAgICBpZiAoIShhZGFwdGVyLT5mbGFncyAmIEZMQUdfVFNPX0ZPUkNFKSkgewo+PiAgICAgIAlb
4oCmXQo+PiAgICAgIAlpZiAoaHctPm1hYy50eXBlID09IGUxMDAwX3BjaF9zcHQpIHsKPj4KPj4g
bm90IHdvcmsgaW4geW91ciBzaXR1YXRpb24/IElzIGBGTEFHX1RTT19GT1JDRWAgc2V0IGZvciBu
ZXR3b3JrIG5hbWVzcGFjZXM/Cj4gID4gSSBoYXZlIHRlc3RlZCB0aGlzIG9uIG5ldyBzZXR1cCBh
bmQgd2l0aG91dCB0aGlzIHBhdGNoIEkgc3RpbGwgc2VlCj4gdGhlIHNwZWVkIGJlaW5nIGFyb3Vu
ZyBvbmx5IH42OTAgTWJpdHMvc2VjIGFuZCBhZnRlciBhcHBseWluZyBpdAo+IHN0YWJsZSA5MzQg
TWJpdHMvc2VjCgpQbGVhc2UgcHJvdmlkZSB0aGUgaW5zdHJ1Y3Rpb25zIGhvdyB0byBzZXQgdXAg
dGhlIG5ldHdvcmsgbmFtZXNwYWNlLCAKdGhhdCBJIGNhbiB0ZXN0IHRoYXQuCgo+IFRvIGdpdmUg
bW9yZSBpbmZvcm1hdGlvbiBvbiB0aGUgc2V0dXAgLSBJIGhhdmUgdGVzdGVkIGl0IHdpdGggaTIx
OS1MTQo+IHRoYXQgaXMgYnVpbHQgaW50byBzZXJ2ZXIgd2l0aCBJbnRlbCBTa3lsYWtlIGNoaXAu
IFRoZSByZXN1bHRzIGFyZQo+IHRoZSBzYW1lIGZvciBjb25uZWN0aW9uIHVzaW5nIG5hbWVzcGFj
ZXMgaW4gdGhlIHNhbWUgc2VydmVyIGFzIHdlbGwKPiBhcyBoYXZpbmcgaXQgY29ubmVjdGVkIHRv
IGFub3RoZXIgc2VydmVyLgoKSSBvbmx5IHRlc3RlZCB0aGlzIG9uIGRlc2t0b3BzLiBQbGVhc2Ug
Z2l2ZSBtb3JlIGRldGFpbHMgb24gdGhlIGFjdHVhbCAKZGV2aWNlIChgbHNwY2kgLW5uYCkuCgpQ
bGVhc2UgZmlndXJlIG91dCwgd2l0aCBhIGRlYnVnZ2VyLCB0cmFjaW5nIG9yIHByaW50IHN0YXRl
bWVudHMsIHdoeSB0aGUgCmNvbmRpdGlvbiBhYm92ZSBpcyBub3QgcmVhY2hlZCBpbiB5b3VyIHNl
dHVwLgoKPj4gQW55d2F5LCBJ4oCZZCBzYXksIGl04oCZcyB0aGUgd3JvbmcgY29tbWl0IHRvIHJl
ZmVyZW5jZSwgYXMgaXQgZG9lcwo+PiBub3QgaW50cm9kdWNlIHRoZSBwZXJmb3JtYW5jZSByZWdy
ZXNzaW9uIHlvdSBhcmUgc2VlaW5nLiA+Pgo+PiBBbmQgbm93IGhhdmluZyBkdWcgaW4gbW9yZSBp
bnRvIHRoaXMgY2hhbmdlLCBJIGRvIG5vdCB0aGluaywgaXQgY2FuCj4+IGJlIGFjY2VwdGVkIGFz
IGlzLCBhcyBkaXNhYmxpbmcgVENQIFNlZ21lbnRhdGlvbiBPZmZsb2FkIChUU08pCj4+IHdvdWxk
IGJlIGEgcG90ZW50aWFsIHBlcmZvcm1hbmNlIHJlZ3Jlc3Npb24gKENQVSB1c2FnZSkgb24gYSBs
b3Qgb2YKPj4gc3lzdGVtcy4KPj4gCj4gQ2FuIFlvdSBwbGVhc2UgZWxhYm9yYXRlIG1vcmUgb24g
dGhhdD8KCklmIHlvdSBkaXNhYmxlIFRTTyB0aGUg4oCcY2FsY3VsYXRpb25z4oCcIGFyZSBkb25l
IG9uIHRoZSBDUFUgaW5zdGVhZCBvZiB0aGUgCm5ldHdvcmsgZGV2aWNlLCBzbyBsZXNzIGNvbXB1
dGUgcmVzb3VyY2VzIGFyZSBhdmFpbGFibGUgZm9yIGNvbXB1dGluZy4gCkFzIGl0IHdvcmtzIGZp
bmUgb24gdGhlIHN5c3RlbXMgSSB0ZXN0ZWQgd2l0aCwgaXQgd291bGQgYmUgYSBwZXJmb3JtYW5j
ZSAKcmVncmVzc2lvbiwgb24gdGhlIHN5c3RlbXMsIHdoZXJlIHlvdXIgcHJvYmxlbSBkb2VzIG5v
dCBvY2N1ci4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
