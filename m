Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56A45F2C31
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Oct 2022 10:42:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C53840441;
	Mon,  3 Oct 2022 08:42:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C53840441
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664786578;
	bh=f9fLAAAmwCLGuHuqp/Eh1CW85HMl6c8GA2pLvitLf9o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hZ6JK+pJlxKKX4Q9VbuTlKUxaOkucL/qxEuGbZp3PxMPeMTcgc3FLqtswf/cxPpaH
	 juV/hnfS/eMPDM9kg5r/7TQtEPvSn379OOBxGBkhppk40+wR6TxtXFkXuu01TEyUCo
	 xImJOYoZUSS/kmXCRngAOIHtlsZ8fhP6pREwMz7ig3M/GlS37Cy259JE8kL4q4Dxj2
	 0HvqPM7yQmOXdISla6Dtg7+MaOFp8zp8g5PMq7sf2GhBn1U/Bj8sMiuhcDotK8s1i2
	 Vhgoabozmw6noHARQ92kO2EqZfmR8tTfSRFVD6ua051uoSiGvR4g5nq9/aZD4mowKb
	 czsjY4G6PVG8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z_DN_avGCy9Z; Mon,  3 Oct 2022 08:42:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E2A7403F8;
	Mon,  3 Oct 2022 08:42:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E2A7403F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E1141BF271
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Oct 2022 08:42:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7534F81423
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Oct 2022 08:42:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7534F81423
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IoR6P1Ag27tu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Oct 2022 08:42:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D591A8140B
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D591A8140B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Oct 2022 08:42:49 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeef9.dynamic.kabel-deutschland.de
 [95.90.238.249])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id ABA4761EA192A;
 Mon,  3 Oct 2022 10:42:46 +0200 (CEST)
Message-ID: <72f9b004-cd7f-69ce-6684-a2f3c2607ce5@molgen.mpg.de>
Date: Mon, 3 Oct 2022 10:42:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>
References: <20221003082615.1870-1-jan.sokolowski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20221003082615.1870-1-jan.sokolowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ixgbevf: Add error
 messages on vlan error
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

RGVhciBKYW4sCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLiBUd28gbml0cy4KCkFtIDAzLjEw
LjIyIHVtIDEwOjI2IHNjaHJpZWIgSmFuIFNva29sb3dza2k6Cj4gRnJvbTogIlNva29sb3dza2ks
IEphbiIgPGphbi5zb2tvbG93c2tpQGludGVsLmNvbT4KClBsZWFzZSBhZGFwdCB5b3VyIGdpdCBj
b25maWd1cmF0aW9uIHRvIHVzZQoKICAgICBKYW4gU29rb2xvd3NraSA8amFuLnNva29sb3dza2lA
aW50ZWwuY29tPgoKPiBpeGdiZXZmIGRpZCBub3QgcHJvdmlkZSBhbiBlcnJvciBpbiBkbWVzZyBp
ZiBWTEFOCj4gYWRkaXRpb24gZmFpbGVkLgoKVGhpcyBmaXRzIGluIG9uZS4gbGluZS4KCj4gQWRk
IG1vcmUgZGVzY3JpcHRpdmUgZmFpbHVyZSBtZXNzYWdlcyBpbiB0aGUga2VybmVsIGxvZy4KCipt
b3JlIGRlc2NyaXB0aXZlKiBpcyBhbWJpZ3VvdXMsIG1heWJlIGp1c3Q6IEFkZCB0d28gZGVzY3Jp
cHRpdmUg4oCmPwoKW+KApl0KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
