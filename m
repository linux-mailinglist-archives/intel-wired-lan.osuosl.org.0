Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71ECC402ADF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Sep 2021 16:36:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA56381A1C;
	Tue,  7 Sep 2021 14:36:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yPW9DDWG2iJW; Tue,  7 Sep 2021 14:36:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1251E81A15;
	Tue,  7 Sep 2021 14:36:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 31CF71BF288
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 14:36:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2C4A5400E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 14:36:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u_IgMpcJpE4U for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Sep 2021 14:36:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F07240015
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 14:36:13 +0000 (UTC)
Received: from [141.14.13.3] (g258.RadioFreeInternet.molgen.mpg.de
 [141.14.13.3])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E0E8461E64846;
 Tue,  7 Sep 2021 16:36:09 +0200 (CEST)
To: =?UTF-8?Q?J=c4=99drzej_Jagielski?= <jedrzej.jagielski@intel.com>
References: <20210903064846.71507-1-jedrzej.jagielski@intel.com>
 <f4a7fedd-968f-f683-f3ac-a444a927d397@molgen.mpg.de>
 <BN6PR11MB1379FBBAAE7D9B2E528C0641F0D39@BN6PR11MB1379.namprd11.prod.outlook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <631fde8d-bf40-95e3-3bf1-241c63d8fc9f@molgen.mpg.de>
Date: Tue, 7 Sep 2021 16:36:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <BN6PR11MB1379FBBAAE7D9B2E528C0641F0D39@BN6PR11MB1379.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix refreshing iavf
 adapter stats on ethtool request
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

RGVhciBKxJlkcnplaiwKCgpBbSAwNy4wOS4yMSB1bSAxNDo1NCBzY2hyaWViIEphZ2llbHNraSwg
SmVkcnplajoKCj4gIlNob3VsZCB0aGUgc3VtbWFyeSBoYXZlIGEgbmV0IHByZWZpeCBvciBzbz8g
QWxzbyBzaG9ydGVyOgo+IAo+PiBpYXZmOiBSZWZyZXNoIGlhdmYgYWRhcHRlciBzdGF0cyBvbiBl
dGh0b29sIHJlcXVlc3QiCj4gCj4gU2hvdWxkbid0IHRoZSBjb21taXQgdGl0bGUgYmVnaW4gYmVn
aW5zIHdpdGggb25lIGZyb20gdGhlIHdvcmRzIDxmaXgvYWRkL2RlbC9yZWZhY3Rvcj4/CgpJIGFt
IG5vdCBhd2FyZSBvZiBzdWNoIGEgcnVsZS4KCj4gIlNob3VsZCB0aGF0IGJlIGBpYXZmX3NjaGVk
dWxlX3JlcXVlc3Rfc3RhdHMoKWA/Igo+IFRoaXMgZnVuY3Rpb24gaXMgaW52b2tlZCBvbmx5IGZy
b20gaWF2Zl9nZXRfZXRodG9vbF9zdGF0cy4KClJlYWRpbmcgdGhlIGRpZmYgYWdhaW4sIEkgYW0g
bm90IHN1cmUgaG93IEkgbWlzc2VkIHRoYXQuIFNvcnJ5IGZvciB0aGUgCm5vaXNlLgoKCktpbmQg
cmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
