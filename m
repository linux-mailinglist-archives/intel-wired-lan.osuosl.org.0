Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B94C7522FEE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 11:52:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7B134034F;
	Wed, 11 May 2022 09:52:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lKD3D5-HoAiG; Wed, 11 May 2022 09:52:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E9AC402ED;
	Wed, 11 May 2022 09:52:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F26091BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 09:52:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EECD182F76
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 09:52:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mNoD5-YdtgCD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 09:52:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC3B082F51
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 09:52:09 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 63FE361E6478B;
 Wed, 11 May 2022 11:52:06 +0200 (CEST)
Message-ID: <7ee58bc9-bacf-9d16-8f96-5c9beacb5e8a@molgen.mpg.de>
Date: Wed, 11 May 2022 11:52:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Lixue Liang <lixue.liang5086@gmail.com>
References: <20220510012159.8924-1-lianglixue@greatwall.com.cn>
 <8d7e86ad-932c-d08c-3131-762edd553b22@molgen.mpg.de>
 <B0201E3D-98F5-490E-81CF-45B16A06760D@gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <B0201E3D-98F5-490E-81CF-45B16A06760D@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH] igb_ethtool: fix efficiency issues in
 igb_set_eeprom
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
Cc: Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBMaXh1ZSwKCgpBbSAxMS4wNS4yMiB1bSAwOTo1OSBzY2hyaWViIGxpeHVlIGxpYW5nOgoK
PiBUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIHJlcGx5IGFuZCBzdWdnZXN0aW9ucy5JIGhh
dmUgbWFkZSB0aGUKPiBjb3JyZXNwb25kaW5nIGNoYW5nZXMgYWNjb3JkaW5nIHRvIHlvdXIgc3Vn
Z2VzdGlvbi4KClRoYW5rIHlvdS4KCj4gSW4gYWRkaXRpb24sIGZvciB0aGUgcHJvYmxlbSB0aGF0
IHRoZSBpbnZhbGlkIG1hYyBhZGRyZXNzIGNhbm5vdCBsb2FkCj4gdGhlIGlnYiBkcml2ZXIsIEkg
cGVyc29uYWxseSB0aGluayB0aGVyZSBpcyBhIGJldHRlciB3YXkgdG8gbW9kaWZ5Cj4gaXQsIGFu
ZCBJIHdpbGwgcmVzdWJtaXQgdGhlIHBhdGNoIGFib3V0IGlnYl9tYWluLmMuCgpBd2Vzb21lLgoK
PiBJdCdzIHRoZSBzYW1lIHF1ZXN0aW9uLCBidXQgSSBtYXkgbm90IGtub3cgaG93IHRvIGNvbnRp
bnVlIHN1Ym1pdHRpbmcKPiBuZXcgcGF0Y2hlcyBvbiB0aGlzIGVtYWlsLCBzb3JyeSBhYm91dCB0
aGF0LgoKQXMgeW91IHVzZSBgZ2l0IHNlbmQtZW1haWxgLCB3aGF0IGRvZXMgYGdpdCBsb2dgIHNo
b3cgYXMgdGhlIHBhdGNoIAphdXRob3I/IEl0IG1pZ2h0IGJlIGFzIGVhc3kgYXMgdG8gZG8KCiAg
ICAgZ2l0IGNvbmZpZyAtLWdsb2JhbCB1c2VyLm5hbWUgIkxpeHVlIExpYW5nIgogICAgIGdpdCBj
b25maWcgLS1nbG9iYWwgdXNlci5lbWFpbCBsaWFuZ2xpeHVlQGdyZWF0d2FsbC5jb20uY24KICAg
ICBnaXQgY29tbWl0IC0tYW1lbmQgLS1hdXRob3IgIkxpeHVlIExpYW5nIDxsaWFuZ2xpeHVlQGdy
ZWF0d2FsbC5jb20uY24+IgoKCktpbmQgcmVnYXJkcywKClBhdWwKCgpQUzogV2hlbiByZXBseWlu
ZywgaXTigJlkIGJlIGdyZWF0IGlmIHlvdSB1c2VkIGludGVybGVhdmVkIHN0eWxlIFsxXS4KCgpb
MV06IGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1Bvc3Rpbmdfc3R5bGUjSW50ZXJsZWF2
ZWRfc3R5bGUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
