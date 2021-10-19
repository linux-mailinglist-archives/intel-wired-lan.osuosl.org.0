Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C87A4340A0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 23:32:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81E6F40605;
	Tue, 19 Oct 2021 21:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aodjh-cCsAKk; Tue, 19 Oct 2021 21:32:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B43C405F7;
	Tue, 19 Oct 2021 21:32:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75F251BF361
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 21:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6088D831BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 21:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A5UH90aePOsj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 21:32:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD293831A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 21:32:01 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae910.dynamic.kabel-deutschland.de
 [95.90.233.16])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BB01161E5FE00;
 Tue, 19 Oct 2021 23:31:59 +0200 (CEST)
To: Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20211019200416.59880-1-anthony.l.nguyen@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <c142cbc5-9f87-3317-0ce4-45d2c3394644@molgen.mpg.de>
Date: Tue, 19 Oct 2021 23:31:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211019200416.59880-1-anthony.l.nguyen@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Add missing E810 device
 ids
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Tony,


Am 19.10.21 um 22:04 schrieb Tony Nguyen:
> As part of support for E810 XXV devices, some device ids were
> inadvertently left out. Add those missing ids.
> 
> Fixes: 195fb97766da ("ice: add additional E810 device id")
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v2: Add 'E810' into title

Thank you.

Acked-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
