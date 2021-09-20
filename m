Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE67411082
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Sep 2021 09:51:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0AA7E4018C;
	Mon, 20 Sep 2021 07:51:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z7YkIgDlkQjR; Mon, 20 Sep 2021 07:51:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3AC1401C4;
	Mon, 20 Sep 2021 07:51:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C00551BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 07:51:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC05940170
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 07:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iehpX9oRnioB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Sep 2021 07:51:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 58A4D400A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 07:51:42 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aef72.dynamic.kabel-deutschland.de
 [95.90.239.114])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 34EE261E5FE00;
 Mon, 20 Sep 2021 09:51:39 +0200 (CEST)
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20210920074814.11741-1-mateusz.palczewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <567f692a-b270-c9f9-92b8-34d28d0c49b1@molgen.mpg.de>
Date: Mon, 20 Sep 2021 09:51:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210920074814.11741-1-mateusz.palczewski@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix freeing of
 unitialized misc IRQ vector
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
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTeWx3ZXN0ZXIsIGRlYXIgTWF0ZXVzeiwKCgpJbiB0aGUgY29tbWl0IG1lc3NhZ2Ugc3Vt
bWFyeTogdW5pdGlhbGl6ZWQg4oaSIHVuaW5pdGlhbGl6ZWQKCgpLaW5kIHJlZ2FyZHMsCgpQYXVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
