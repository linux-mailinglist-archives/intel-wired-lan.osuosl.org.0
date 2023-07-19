Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5086F759435
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jul 2023 13:33:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13D3D418EE;
	Wed, 19 Jul 2023 11:33:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13D3D418EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689766394;
	bh=geKBzOzRPcRdksVZ9322IaxxXqbOiQbVsoFbmsTukHU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NOHnXCob7pDmZIDHVaqWubcVLSMIibgDEH/SS0AFoofMC2XxKdGKZiNSqoeol9fQH
	 OHf1IpkRjTnie5LoLnuODXOHoHYSCm+q3MJXEygIVnIQ2CoDsc8HS01yh4Aq/LjHnm
	 uVLOCBkEM+6sV59ZvwX9804fIHFRFICpP2mooLiLKyTL/MxQ1DhEb17F2q2S7uAWv9
	 1SldqAys4rjMLcqn8gdT4Txmb2dAl4GUXGMREQQrue/M6QMwhWnKpyDGvZVpcyF/m7
	 ikXZsq+bz3sWk39AWsDkEaUS8BNbuR48Y7YFAhwNhjpcV//pRVLuj1QiWHO4K8NE6B
	 lC/v3GXdBanGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 85DP1NWjXEIl; Wed, 19 Jul 2023 11:33:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5199418ED;
	Wed, 19 Jul 2023 11:33:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5199418ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D62E1BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 11:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 106EB41548
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 11:33:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 106EB41548
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nFf8UdhVXLPO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 11:33:05 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 51D9D400BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 11:33:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51D9D400BF
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 78ACA61E5FE03;
 Wed, 19 Jul 2023 13:32:55 +0200 (CEST)
Message-ID: <2273baee-235f-bc11-a42b-d5771cd92a71@molgen.mpg.de>
Date: Wed, 19 Jul 2023 13:32:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20230718162857.3566306-1-sasha.neftin@intel.com>
 <b90a0c53-b68f-9cb9-df92-1b48556d5f1b@molgen.mpg.de>
 <5d38c220-1aaa-b91c-f3cd-1baae851184f@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <5d38c220-1aaa-b91c-f3cd-1baae851184f@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Add support
 for the next LOM generation
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
Cc: Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpBbSAxOS4wNy4yMyB1bSAxMzoyNiBzY2hyaWViIE5lZnRpbiwgU2FzaGE6
Cj4gT24gNy8xOC8yMDIzIDE5OjMzLCBQYXVsIE1lbnplbCB3cm90ZToKPj4gVGhhbmsgeW91IGZv
ciB0aGUgcGF0Y2guIEl04oCZZCBiZSBncmVhdCBpZiB5b3UgbWVudGlvbmVkIE5WTCBpbiB0aGUg
Cj4+IGNvbW1pdCBtZXNzYWdlIHRpdGxlLgo+IFdlIHByZWZlciB0byBzdGF5IGFsaWduZWQgd2l0
aCB0aGUgc2FtZSBmb3JtYXQgYXMgd2UgYWRkZWQgbmV3IGRldmljZSAKPiBJRHMgaW4gdGhlIHBh
c3QuCgpXaHkgbm90IGltcHJvdmUgaXQ/IGBnaXQgbG9nIC0tb25lbGluZWAgaXMgZ29pbmcgdG8g
c2hvdyB0aGUgc2FtZSAKbWVzc2FnZSwgd2hpY2ggaXMgbm90IHVzZWZ1bC4KCgpLaW5kIHJlZ2Fy
ZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
