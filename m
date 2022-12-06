Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458796445D4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 15:37:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6568F40363;
	Tue,  6 Dec 2022 14:37:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6568F40363
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670337474;
	bh=c528YDtNyfjoeL6+26SsTccjF5pHkn8XzUUbMTwJPhY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L7RmUCZxd2f1y7SbFOSYWKO+N/81vlTQjKWhy4a3ApN0c8GaEilHAI+F1pEvOh76O
	 TGAJeTDwCIhkoKN6VihaFr5OQumACkhsPvQsg0murWiEGpoCtFNasSNuP0pUfVTFrl
	 p5hOfJ2E85DlC3eJnnzgmisEGVFrf81qs+zD+wpB3Hcgec5+YV3U7fQa40hpZmy4Wz
	 AMpyePwVBmEfoUybkIqPzzsFJhKr2wlDj5Wx11xemTmBh6jZnjc/UlZ9zVkzZGH9Wc
	 5YQ2gMLalzDzH1MIqMuiU6fzEMoD65J6yemnh5Rg9N8L+bGdyDu26xpOhwaClD0yMe
	 OGzBoC02cawow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bMDC3P6WTBIs; Tue,  6 Dec 2022 14:37:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 77AB740272;
	Tue,  6 Dec 2022 14:37:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77AB740272
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1ED011BF35C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 14:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 065E940363
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 14:37:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 065E940363
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EIBplVgyDpRX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 14:37:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4813A40185
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4813A40185
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 14:37:47 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D8A6860027FC3;
 Tue,  6 Dec 2022 15:37:43 +0100 (CET)
Message-ID: <27af78e3-a118-a744-196d-5d16c276b7d6@molgen.mpg.de>
Date: Tue, 6 Dec 2022 15:37:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20221205123932.470119-1-mateusz.palczewski@intel.com>
 <Y48tqsunsSnJn2tT@boxer>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <Y48tqsunsSnJn2tT@boxer>
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix the inability to
 attach XDP program on downed interface
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
Cc: intel-wired-lan@lists.osuosl.org,
 Bartosz Staszewski <bartoszx.staszewski@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNYXRldXN6LAoKClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgoKQW0gMDYuMTIuMjIgdW0g
MTI6NTUgc2NocmllYiBNYWNpZWogRmlqYWxrb3dza2k6Cj4gT24gTW9uLCBEZWMgMDUsIDIwMjIg
YXQgMDc6Mzk6MzJBTSAtMDUwMCwgTWF0ZXVzeiBQYWxjemV3c2tpIHdyb3RlOgoKW+KApl0KCj4+
IFNvbHV0aW9uIGZvciB0aGlzIGlzIGNhbGN1bGF0ZSBidWZmZXIgbGVuZ3RoCj4+IGluIG5ld2x5
IGNyZWF0ZWQgZnVuY3Rpb24gLSBpNDBlX2NhbGN1bGF0ZV92c2lfcnhfYnVmX2xlbigpCj4+IHRo
YXQgcmV0dXJuIGFjdHVhbCBidWZmZXIgbGVuZ3RoLiBCdWZmZXIgbGVuZ3RoIGlzCj4+IGJlaW5n
IGNhbGN1bGF0ZWQgYmFzZWQgb24gdGhlIHNhbWUgcnVsZXMgYXBwbGllZCBwcmV2aW91c2x5IGlu
Cj4+IGk0MGVfdnNpX2NvbmZpZ3VyZV9yeCgpIGZ1bmN0aW9uLgoKcy90aGF0IHJldHVybi90aGF0
IHJldHVybnMvCgo+IENvbnRlbnRzIG9mIHRoZSBwYXRjaCBsb29rcyBvayB0byBtZSwgYnV0IHN0
aWxsIEkgd291bGQgaW1wcm92ZSBjb21taXQKPiBtc2cuCgpJIGFncmVlIHdpdGggTWFjaWVqLiBQ
bGVhc2UgYWxzbyBpbXByb3ZlIHRoZSBnaXQgY29tbWl0IG1lc3NhZ2UgCnN1bW1hcnkvdGl0bGU6
Cgo+IEFsbG93IHRvIGF0dGFjaCBYRFAgcHJvZ3JhbXMgb24gZG93bmVkIGludGVyZmFjZQoKW+KA
pl0KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
