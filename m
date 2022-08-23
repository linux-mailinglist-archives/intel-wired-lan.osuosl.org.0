Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF0559EEFA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Aug 2022 00:24:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0ABF181364;
	Tue, 23 Aug 2022 22:24:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0ABF181364
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661293443;
	bh=2w23XzwYutWbZnGqEywiG1vKmllmGFSBwVdRpFXkb2A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ucee2wMovENi1IK34G7v/GHZUNwom6wM8iS74OCZJQTMKmUG96xTRmjnfGivOsV1Z
	 Csk+hhRJH9LshjRX3vkr3i/tvpox20NPUFqjf9ROj0qkO5dTIQEQMa/tRl0g9l0Zb8
	 w+KVL1GAaOJTnaCzuhPnFZ8FX1gCoXeHQCf+bNPlJ0Fa3S9V7IcKXv0COqZyFYGFNO
	 5GOudvmvZhhlTz3cZjNKtdLIySqxgvyfQeiJ3ary6MVrDXHJ1oEZ1PsbouY92RhptE
	 iENHY0HvCa/8ZVw64aJgNdDDT35Y0vZrsvZ4tvYCdzsKmFoxNUv5tveSAu/lNPKwgd
	 eOTRj7t1YjsjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u_12jvO6-XYA; Tue, 23 Aug 2022 22:24:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1391A81276;
	Tue, 23 Aug 2022 22:24:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1391A81276
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D0541BF957
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 22:23:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1473060C33
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 22:23:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1473060C33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZlfwdkP8G_m5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Aug 2022 22:23:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92EDA60BF4
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92EDA60BF4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 22:23:55 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aec8f.dynamic.kabel-deutschland.de
 [95.90.236.143])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0472961EA192D;
 Wed, 24 Aug 2022 00:23:51 +0200 (CEST)
Message-ID: <b0f17259-680c-7bc0-b941-26dc54214b86@molgen.mpg.de>
Date: Wed, 24 Aug 2022 00:23:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Content-Language: en-US
To: Li Zhong <floridsleeves@gmail.com>
References: <20220823060200.1452663-1-floridsleeves@gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220823060200.1452663-1-floridsleeves@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH v1] drivers/net/ethernet: check return
 value of e1e_rphy()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBMaSwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgpBbSAyMy4wOC4yMiB1bSAwODow
MiBzY2hyaWViIGxpbHk6Cj4gZTFlX3JwaHkoKSBjb3VsZCByZXR1cm4gZXJyb3IgdmFsdWUsIHdo
aWNoIG5lZWQgdG8gYmUgY2hlY2tlZC4KCm5lZWQqcyoKCj4gCj4gU2lnbmVkLW9mZi1ieTogTGkg
WmhvbmcgPGZsb3JpZHNsZWV2ZXNAZ21haWwuY29tPgoKVGhlIEZyb20gaGVhZGVyIGZpZWxkIGRv
ZXMgbm90IG1hdGNoIHRoZSBTaWduZWQtb2ZmLWJ5IGxpbmUuIENvdWxkIHlvdSAKY29uZmlndXJl
IGdpdCB3aXRoIHlvdXIgdXNlciBuYW1lPwoKICAgICAkIGdpdCBjb25maWcgLS1nbG9iYWwgdXNl
ci5uYW1lICJMaSBaaG9uZyIKICAgICAkIGdpdCBjb21taXQgLS1hbWVuZCAtLWF1dGhvcj0iTGkg
WmhvbmcgPGZsb3JpZHNsZWV2ZXNAZ21haWwuY29tPiIKCj4gLS0tCj4gICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9lMTAwMGUvcGh5LmMgfCAxNCArKysrKysrKysrKy0tLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpb4oCmXQoKCktpbmQg
cmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
