Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B19D045F01F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Nov 2021 15:48:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BF3940190;
	Fri, 26 Nov 2021 14:48:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jgMJsdguBgpw; Fri, 26 Nov 2021 14:48:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A202C4010F;
	Fri, 26 Nov 2021 14:48:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D0FCE1BF844
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:48:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFE896078B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:48:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jkiEr0vLqFXi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Nov 2021 14:48:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE72160763
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:48:01 +0000 (UTC)
Received: from [192.168.0.7] (ip5f5aed17.dynamic.kabel-deutschland.de
 [95.90.237.23])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3EB4161E5FE00;
 Fri, 26 Nov 2021 15:47:58 +0100 (CET)
Message-ID: <307f0e9e-676e-862f-b8ca-4612b9728bf7@molgen.mpg.de>
Date: Fri, 26 Nov 2021 15:47:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20211126101122.25085-1-mateusz.palczewski@intel.com>
 <YaEDXl4Xi089+vPT@boxer>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <YaEDXl4Xi089+vPT@boxer>
Subject: [Intel-wired-lan] Wrong email time (was: [PATCH net v1] i40e: Fix
 queues reservation for XDP)
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNYWNpZWosCgoKQW0gMjYuMTEuMjEgdW0gMTY6NTUgc2NocmllYiBNYWNpZWogRmlqYWxr
b3dza2k6Cgpb4oCmXQoKVGhlIGRhdGUgb2YgeW91ciBtZXNzYWdlIGlzIGFnYWluIGZyb20gdGhl
IGZ1dHVyZS4gOiggQ2FuIHRoZSBJbnRlbCAKb2ZmaWNlIGluIFBvbGFuZCBwbGVhc2UgZml4IHRo
ZWlyIHN5c3RlbXMuIEl04oCZcyBoYXBwZW5pbmcgYWdhaW4gYW5kIGFnYWluLgoKCktpbmQgcmVn
YXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
