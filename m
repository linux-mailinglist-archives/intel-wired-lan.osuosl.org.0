Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C53141D77
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Jan 2020 12:03:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DDB4784DE1;
	Sun, 19 Jan 2020 11:03:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I6uXzKPzbrzb; Sun, 19 Jan 2020 11:03:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FCE684E10;
	Sun, 19 Jan 2020 11:03:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A95FF1BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 11:03:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A04F28735C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 11:03:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R-C0d7f09D7q for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Jan 2020 11:03:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 383A786F3A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 11:03:00 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5af129.dynamic.kabel-deutschland.de
 [95.90.241.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id ABAFB20225BF9;
 Sun, 19 Jan 2020 12:02:56 +0100 (CET)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20200119074601.33324-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <46e9c8d6-3382-2614-4087-8cfedcdeb9dd@molgen.mpg.de>
Date: Sun, 19 Jan 2020 12:02:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200119074601.33324-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Add support for Alder Lake
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpBbSAxOS4wMS4yMCB1bSAwODo0NiBzY2hyaWViIFNhc2hhIE5lZnRpbjoK
PiBBZGQgZGV2aWNlcyBJRCdzIGZvciB0aGUgbmV4dCBMT00gZ2VuZXJhdGlvbnMgdGhhdCB3aWxs
IGJlCj4gYXZhaWxhYmxlIG9uIHRoZSBuZXh0IEludGVsIENsaWVudCBwbGF0Zm9ybSAoQWxkZXIg
TGFrZSkKPiBUaGlzIHBhdGNoIHByb3ZpZGVzIHRoZSBpbml0aWFsIHN1cHBvcnQgZm9yIHRoZXNl
IGRldmljZXMKPiAKPiB2MS0+djI6Cj4gQWRkcmVzcyBjb21taW51dHkgY29tbWVudHMKCmNvbW11
bml0eQoKPiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBOZWZ0aW4gPHNhc2hhLm5lZnRpbkBpbnRlbC5j
b20+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvZXRodG9vbC5j
IHwgMyArKy0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ody5oICAgICAg
fCA1ICsrKysrCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5j
IHwgNyArKysrKysrCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2
LmMgIHwgNyArKysrKystCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvcHRw
LmMgICAgIHwgMSArCj4gICA1IGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9ldGh0b29sLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvZXRodG9v
bC5jCj4gaW5kZXggYWRjZTdlMzE5YjllLi5hYWMwYjdmYjYyNDMgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2V0aHRvb2wuYwo+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ldGh0b29sLmMKPiBAQCAtODk1LDggKzg5NSw4IEBA
IHN0YXRpYyBpbnQgZTEwMDBfcmVnX3Rlc3Qoc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIs
IHU2NCAqZGF0YSkKPiAgIAljYXNlIGUxMDAwX3BjaF9scHQ6Cj4gICAJY2FzZSBlMTAwMF9wY2hf
c3B0Ogo+ICAgCWNhc2UgZTEwMDBfcGNoX2NucDoKPiAtCQkvKiBmYWxsIHRocm91Z2ggKi8KClBs
ZWFzZSBzcGxpdCB0aGlzIG91dCwgb3IgbWVudGlvbiB0aGlzIGluIGEgY29tbWl0IG1lc3NhZ2Uu
IEFsc28sIHRoZXJlIAphcmUgbW9yZSBpbnN0YW5jZXMuIElmIHlvdSB3YW50LCBJIGNhbiBzZW50
IGEgY2xlYW4tdXAgY29tbWl0IGZvciB0aGUgCnVubmVjZXNzYXJ5IGZhbGwtdGhyb3VnaCBjb21t
ZW50cy4KClvigKZdCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
