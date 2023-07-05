Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9307480EC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 11:34:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74AA0410BC;
	Wed,  5 Jul 2023 09:34:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74AA0410BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688549673;
	bh=TmiFDMZnptebhYYAujomF9HYVtkiN6gmHw4ntERSckU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZJoYJF5xTZ/4EUec87sKe2NO3kpetY40++2TBh37jKawNgI4+ddEtgWAMdMdBRjMI
	 TyERRpii4GEzky/fLw24jSTIYuT1kdRP6uI34bje1lRL9zcnYeXcwo4CelR7gxKkJg
	 DmOF07ACRxD1xghJ4wSrgiLnOKAJvPPIc8/Y1gOKenzRyKUPnLoUm4VLL1t3DyRfq9
	 wRRuSTBZYx9ljDlp0wkMHBfp0DqrMpweA7E9l5XY2cGcCu67AN2QorSY0H0gf5T4FV
	 X3xDYw3wddUuepqe15Nf7HjjC/dX/6jk6HMjPrClfMV/VI1K0rxPrv4soeg6q7zXhj
	 PZkYk8U/bQfnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RwymnwAjNq-2; Wed,  5 Jul 2023 09:34:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 023DB410A3;
	Wed,  5 Jul 2023 09:34:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 023DB410A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47E721BF863
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 09:34:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1FB0F60FA2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 09:34:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FB0F60FA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bPhxNb3e3545 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jul 2023 09:34:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C2A660E0B
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5C2A660E0B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 09:34:23 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 285AB61E5FE03;
 Wed,  5 Jul 2023 11:33:56 +0200 (CEST)
Message-ID: <c3c7bd46-5fbb-b11c-2f6b-ab108d1ee1d0@molgen.mpg.de>
Date: Wed, 5 Jul 2023 11:33:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230705040510.906029-1-michal.swiatkowski@linux.intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230705040510.906029-1-michal.swiatkowski@linux.intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: prevent call trace
 during reload
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNaWNoYWwsCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgoKCkFtIDA1LjA3LjIzIHVt
IDA2OjA1IHNjaHJpZWIgTWljaGFsIFN3aWF0a293c2tpOgo+IENhbGxpbmcgZXRodG9vbCBkdXJp
bmcgcmVsb2FkIGNhbiBsZWFkIHRvIGNhbGwgdHJhY2UsIGJlY2F1c2UgVlNJIGlzbid0Cj4gY29u
ZmlndXJlZCBmb3Igc29tZSB0aW1lLCBidXQgbmV0ZGV2IGlzIGFsaXZlLgoKW+KApl0KCj4gQ2Fs
bCB0cmFjZSBiZWZvcmUgZml4Ogo+IFs2NjMwMy45MjYyMDVdIEJVRzoga2VybmVsIE5VTEwgcG9p
bnRlciBkZXJlZmVyZW5jZSwgYWRkcmVzczogMDAwMDAwMDAwMDAwMDAwMAoKW+KApl0KCknigJlk
IGJlIG1vcmUgc3BlY2lmaWMgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHN1bW1hcnkvdGl0bGU6Cgpp
Y2U6IHByZXZlbnQgTlVMTCBwb2ludGVyIGRlcmVmIGR1cmluZyByZWxvYWQKClvigKZdCgoKS2lu
ZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
