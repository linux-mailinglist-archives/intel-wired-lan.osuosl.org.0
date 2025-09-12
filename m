Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6A4B54FC3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:38:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E17F60686;
	Fri, 12 Sep 2025 13:37:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mJkDkTmTKqU2; Fri, 12 Sep 2025 13:37:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5358606C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757684278;
	bh=BPs493QX97boNPewde0L6AcBTpewW1+qpEl04JyMylg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rz4SOSdamED66vhsE1E8uxfneChajiMYiqzU0+yiOg0FDQCTD5GupJINCZhQzESwQ
	 IvZ5BNTnpNsbF9tJu1I+JuMQ1SkiGhb6h2p2dxQj39j5nEG3iIWBFI+kg/Ng6Vo8rL
	 47bgfi+kRBVisTafjknbzu1V9N53HJLj/1IPghS6Sx6fxqgZlvecKgP2A4umr6QA8p
	 oE1/HuvlNAFCNUOiceNmtjFn+e3Z06iLW6Bi2wQsrZva6uH3a7C5v6lGQvMso71oWZ
	 VYZq8iAuXS6KVMeF1YwqTvxufPKRuFENmgglS2MDTeH/6Nq7fon3T5ED/pls9khZjn
	 MZ8pwDybzCJ/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5358606C4;
	Fri, 12 Sep 2025 13:37:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 44C0292E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4196A40596
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:37:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5rrrS7KZxaml for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:37:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 071FA40620
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 071FA40620
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 071FA40620
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:37:54 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id AC59C60288277;
 Fri, 12 Sep 2025 15:37:27 +0200 (CEST)
Message-ID: <0438e3b9-4ada-4dc7-9ecb-e5e6a69db027@molgen.mpg.de>
Date: Fri, 12 Sep 2025 15:37:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-2-przemyslaw.kitszel@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250912130627.5015-2-przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/9] ice: enforce RTNL
 assumption of queue NAPI manipulation
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Przemek,


Thank you for the patch.

Am 12.09.25 um 15:06 schrieb Przemek Kitszel:
> Instead of making assumptions in comments move them into code.
> Be also more precise, RTNL must be locked only when there is
> NAPI, and we have VSIs w/o NAPI that call ice_vsi_clear_napi_queues()
> during rmmod.
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> CC:Larysa Zaremba <larysa.zaremba@intel.com>

That address is not in Cc.

> ---
>   drivers/net/ethernet/intel/ice/ice_lib.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
