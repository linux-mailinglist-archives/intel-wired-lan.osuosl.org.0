Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3C67C5F11
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 23:22:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AF6941754;
	Wed, 11 Oct 2023 21:22:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AF6941754
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697059341;
	bh=Qt27pmBPasC2EBUUuju+ks/v/T6DXQzgw7yTF7alq3s=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=6DnIHaAXSk6u+QGb54xN9D7EiUD99P57YPaFct0D/SbWnwlxechxSy2BNfyooHftX
	 EMpJEIqxYoEt2J6ltUif1Mw3JEreERtUlA4i729G5VrORapIjsHAlIavCVpXs9XNiZ
	 e3TzYwwJKk9u//DusQ6XREMsQLhSLdRjTsdVltrYEieYyXFfiZhCSOEOiLJkt3Czam
	 ZjjNiiu94sFBpszME/IeABZWhzoWQxu8s0sUZE3n/u1rUHtsUdHe2/g0E/dND64bbl
	 UYTQ6pfsQnWA8r2Es2tGNRtm/+5ylbHHbp7I3MYov08AYsSQE7RDYFaYGN6oiFZUkL
	 I0PnXK5X0c3Mg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3jJzv-upad3a; Wed, 11 Oct 2023 21:22:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B74F641746;
	Wed, 11 Oct 2023 21:22:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B74F641746
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3EABD1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 21:22:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 14C5841746
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 21:22:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14C5841746
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 81CKzeZ5TK8K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 21:22:12 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B74A24173C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 21:22:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B74A24173C
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 510AAB82264;
 Wed, 11 Oct 2023 21:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FCE2C433C8;
 Wed, 11 Oct 2023 21:22:08 +0000 (UTC)
Date: Wed, 11 Oct 2023 16:22:06 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <20231011212206.GA1043224@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230918131103.24119-4-ilpo.jarvinen@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697059328;
 bh=qpNUqw05PLc7b1md/614fr1Zk6arYszd1WK9gMvl0Os=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=ghyoFWHuCUoYAQQVImwLJec5By6IY8ldZU+IpgLhM86gHWNMMGsDK4I3bZN3O9HN6
 DZ662abX5LzoV0AuEi9+5Ki6vZZQBQwOyiKdPRI4rA2aI7uLPzLKnygGYsAASzsGrz
 QKdQ9RXXuApQ6HirgahUGTdW+uLPDMBSzhJdQjS18i+uHHpiCtlwWFOhjYSCOugggW
 Duv0TMGaORQs/RXdvsCl/MbpQ76sczbG4Y1+Ext0ZSAafYpDZUgO9tYsFTZwJorZnI
 X29tvX4dE26f0/NdjlsksaHY7OVFRWeD2ft2MA6pgB+n+l9lv7LOpuKtJ8H4lcIsBg
 tvwjDEZAHbqog==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ghyoFWHu
Subject: Re: [Intel-wired-lan] [PATCH v2 03/13] PCI/ASPM: Disable ASPM when
 driver requests it
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
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-rdma@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>, ath12k@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 ath11k@lists.infradead.org, Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-bluetooth@vger.kernel.org, Lukas Wunner <lukas@wunner.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-mediatek@lists.infradead.org,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBTZXAgMTgsIDIwMjMgYXQgMDQ6MTA6NTNQTSArMDMwMCwgSWxwbyBKw6RydmluZW4g
d3JvdGU6Cj4gUENJIGNvcmUvQVNQTSBzZXJ2aWNlIGRyaXZlciBhbGxvd3MgY29udHJvbGxpbmcg
QVNQTSBzdGF0ZSB0aHJvdWdoCj4gcGNpX2Rpc2FibGVfbGlua19zdGF0ZSgpIGFuZCBwY2lfZW5h
YmxlX2xpbmtfc3RhdGUoKSBBUEkuIEl0IHdhcwo+IGRlY2lkZWQgZWFybGllciAoc2VlIHRoZSBM
aW5rIGJlbG93KSwgdG8gbm90IGFsbG93IEFTUE0gY2hhbmdlcyB3aGVuIE9TCj4gZG9lcyBub3Qg
aGF2ZSBjb250cm9sIG92ZXIgaXQgYnV0IG9ubHkgbG9nIGEgd2FybmluZyBhYm91dCB0aGUgcHJv
YmxlbQo+IChjb21taXQgMmFkZDBlYzE0YzI1ICgiUENJL0FTUE06IFdhcm4gd2hlbiBkcml2ZXIg
YXNrcyB0byBkaXNhYmxlIEFTUE0sCj4gYnV0IHdlIGNhbid0IGRvIGl0IikpLiBTaW1pbGFybHks
IGlmIEFTUE0gaXMgbm90IGVuYWJsZWQgdGhyb3VnaAo+IGNvbmZpZywgQVNQTSBjYW5ub3QgYmUg
ZGlzYWJsZWQuCj4gLi4uCgo+ICsjaWZuZGVmIENPTkZJR19QQ0lFQVNQTQo+ICsvKgo+ICsgKiBB
bHdheXMgZGlzYWJsZSBBU1BNIHdoZW4gcmVxdWVzdGVkLCBldmVuIHdoZW4gQ09ORklHX1BDSUVB
U1BNIGlzCj4gKyAqIG5vdCBidWlsZCB0byBhdm9pZCBkcml2ZXJzIGFkZGluZyBjb2RlIHRvIGRv
IGl0IG9uIHRoZWlyIG93bgo+ICsgKiB3aGljaCBjYXVzZWQgaXNzdWVzIHdoZW4gY29yZSBkb2Vz
IG5vdCBrbm93IGFib3V0IHRoZSBvdXQtb2YtYmFuZAo+ICsgKiBBU1BNIHN0YXRlIGNoYW5nZXMu
Cj4gKyAqLwo+ICtpbnQgcGNpX2Rpc2FibGVfbGlua19zdGF0ZV9sb2NrZWQoc3RydWN0IHBjaV9k
ZXYgKnBkZXYsIGludCBzdGF0ZSkKPiArewo+ICsJc3RydWN0IHBjaV9kZXYgKnBhcmVudCA9IHBk
ZXYtPmJ1cy0+c2VsZjsKPiArCXN0cnVjdCBwY2lfYnVzICpsaW5rYnVzID0gcGRldi0+YnVzOwo+
ICsJc3RydWN0IHBjaV9kZXYgKmNoaWxkOwo+ICsJdTE2IGFzcG1fZW5hYmxlZCwgbGlua2N0bDsK
PiArCWludCByZXQ7Cj4gKwo+ICsJaWYgKCFwYXJlbnQpCj4gKwkJcmV0dXJuIC1FTk9ERVY7CgpQ
LlMuIEkgdGhpbmsgdGhpcyBzaG91bGQgbG9vayB0aGUgc2FtZSB0byB0aGUgdXNlciAoc2FtZSBk
bWVzZyBsb2cgYW5kCnNhbWUgdGFpbnQsIGlmIHdlIGRvIHRoYXQpIGFzIHRoZSBDT05GSUdfUENJ
RUFTUE09eSBjYXNlLgoKPiArCXJldCA9IHBjaWVfY2FwYWJpbGl0eV9yZWFkX3dvcmQocGFyZW50
LCBQQ0lfRVhQX0xOS0NUTCwgJmxpbmtjdGwpOwo+ICsJaWYgKHJldCAhPSBQQ0lCSU9TX1NVQ0NF
U1NGVUwpCj4gKwkJcmV0dXJuIHBjaWJpb3NfZXJyX3RvX2Vycm5vKHJldCk7Cj4gKwlhc3BtX2Vu
YWJsZWQgPSBsaW5rY3RsICYgUENJX0VYUF9MTktDVExfQVNQTUM7Cj4gKwo+ICsJcmV0ID0gcGNp
ZV9jYXBhYmlsaXR5X3JlYWRfd29yZChwZGV2LCBQQ0lfRVhQX0xOS0NUTCwgJmxpbmtjdGwpOwo+
ICsJaWYgKHJldCAhPSBQQ0lCSU9TX1NVQ0NFU1NGVUwpCj4gKwkJcmV0dXJuIHBjaWJpb3NfZXJy
X3RvX2Vycm5vKHJldCk7Cj4gKwlhc3BtX2VuYWJsZWQgfD0gbGlua2N0bCAmIFBDSV9FWFBfTE5L
Q1RMX0FTUE1DOwo+ICsKPiArCS8qIElmIG5vIHN0YXRlcyBuZWVkIHRvIGJlIGRpc2FibGVkLCBk
b24ndCB0b3VjaCBMTktDVEwgKi8KPiArCWlmIChzdGF0ZSAmIGFzcG1fZW5hYmxlZCkKPiArCQly
ZXR1cm4gMDsKPiArCj4gKwlyZXQgPSBwY2llX2NhcGFiaWxpdHlfY2xlYXJfd29yZChwYXJlbnQs
IFBDSV9FWFBfTE5LQ1RMLCBQQ0lfRVhQX0xOS0NUTF9BU1BNQyk7Cj4gKwlpZiAocmV0ICE9IFBD
SUJJT1NfU1VDQ0VTU0ZVTCkKPiArCQlyZXR1cm4gcGNpYmlvc19lcnJfdG9fZXJybm8ocmV0KTsK
PiArCWxpc3RfZm9yX2VhY2hfZW50cnkoY2hpbGQsICZsaW5rYnVzLT5kZXZpY2VzLCBidXNfbGlz
dCkKPiArCQlwY2llX2NhcGFiaWxpdHlfY2xlYXJfd29yZChjaGlsZCwgUENJX0VYUF9MTktDVEws
IFBDSV9FWFBfTE5LQ1RMX0FTUE1DKTsKClRoaXMgZGlzYWJsZXMgKmFsbCogQVNQTSBzdGF0ZXMs
IHVubGlrZSB0aGUgdmVyc2lvbiB3aGVuCkNPTkZJR19QQ0lFQVNQTSBpcyBlbmFibGVkLiAgSSBz
dXBwb3NlIHRoZXJlJ3MgYSByZWFzb24sIGFuZCBtYXliZSBhCmNvbW1lbnQgY291bGQgZWxhYm9y
YXRlIG9uIGl0PwoKV2hlbiBDT05GSUdfUENJRUFTUE0gaXMgbm90IGVuYWJsZWQsIEkgZG9uJ3Qg
dGhpbmsgd2UgYWN0aXZlbHkKKmRpc2FibGUqIEFTUE0gaW4gdGhlIGhhcmR3YXJlOyB3ZSBqdXN0
IGxlYXZlIGl0IGFzLWlzLCBzbyBmaXJtd2FyZQptaWdodCBoYXZlIGxlZnQgaXQgZW5hYmxlZC4K
Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KCkNvbmNlcHR1YWxseSBpdCBzZWVtcyBsaWtlIHRoZSBM
TktDVEwgdXBkYXRlcyBoZXJlIHNob3VsZCBiZSB0aGUgc2FtZQp3aGV0aGVyIENPTkZJR19QQ0lF
QVNQTSBpcyBlbmFibGVkIG9yIG5vdCAoc3ViamVjdCB0byB0aGUgcXVlc3Rpb24KYWJvdmUpLgoK
V2hlbiBDT05GSUdfUENJRUFTUE0gaXMgZW5hYmxlZCwgd2UgbWlnaHQgbmVlZCB0byBkbyBtb3Jl
IHN0dWZmLCBidXQKaXQgc2VlbXMgbGlrZSB0aGUgY29yZSBzaG91bGQgYmUgdGhlIHNhbWUuCgpC
am9ybgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
