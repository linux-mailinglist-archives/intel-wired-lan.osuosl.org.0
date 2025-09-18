Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CFFB843E3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 12:58:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8838A611DD;
	Thu, 18 Sep 2025 10:58:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8gh4ON6lmocb; Thu, 18 Sep 2025 10:58:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D325611E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758193105;
	bh=eGmAXk85XR0eQMr0uyPembtkDsCH0jfFf7uqsLjvtFw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g+delGTFonr8QwudSAaJjjqC6TL/vcnAEh1nLL7sZ1oXzLdRCFMTA1ISvC9rLgdr4
	 vbxB/ULIWh9GK5qacjxlj9LKtD2XstUKdF+Bl5Rh/u/591crKAqP0fvBTasciGcA7u
	 WURurSE/uToLlU1r4FVEwTJGHUme8elGPg4LuYdGpw0WTMYSV+oioYjpEWw+hKdBLn
	 XI0crDXF0c8Yw+7LaISB5hDt/aRKf+MkqfH1VBhmvv6JqZRPIbRdzDIMFHbPRPf4jc
	 7nZqzYsBr6fntWk0CmM1W78L9GITSm7ADrlaG/MCFlUwNWt/fEBPLdvvhPTUubMURS
	 ezs1Dd07mA2Uw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D325611E2;
	Thu, 18 Sep 2025 10:58:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id F2C9E1E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 10:58:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F03784061F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 10:58:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8AMzrpkcPxjh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 10:58:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.182;
 helo=out-182.mta0.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B4B0C4060E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4B0C4060E
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com
 [91.218.175.182])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B4B0C4060E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 10:58:21 +0000 (UTC)
Message-ID: <6cffe63f-4099-40f7-afee-3f13f1464e56@linux.dev>
Date: Thu, 18 Sep 2025 11:58:13 +0100
MIME-Version: 1.0
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Carolina Jubran <cjubran@nvidia.com>, Donald Hunter
 <donald.hunter@gmail.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Gal Pressman <gal@nvidia.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tariq Toukan <tariqt@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-2-vadim.fedorenko@linux.dev>
 <IA3PR11MB89861635B2B78A559A8EAE12E517A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <IA3PR11MB89861635B2B78A559A8EAE12E517A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1758193098;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eGmAXk85XR0eQMr0uyPembtkDsCH0jfFf7uqsLjvtFw=;
 b=fmkMuGCb2lQpBDdyKyjzq8xOE9zA6v0QZL7eK4YFpGcg1Sz591iH5P3eMFrhRZ6Pw9IMIo
 EiHJAct+Ho7ogJQvDkReKNPqJSPQzed0wiG+CRWhRAOjsZvyayvaJMino2OdD2t1/f3VM7
 6QZ/fpkNdcqq/CPGkTzRCZefoxeBlQM=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=fmkMuGCb
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/4] ethtool: add FEC bins
 histogram report
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

On 17/09/2025 12:27, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Vadim Fedorenko
>> Sent: Tuesday, September 16, 2025 9:13 PM
>> To: Jakub Kicinski <kuba@kernel.org>; Andrew Lunn <andrew@lunn.ch>;
>> Michael Chan <michael.chan@broadcom.com>; Pavan Chebbi
>> <pavan.chebbi@broadcom.com>; Tariq Toukan <tariqt@nvidia.com>; Gal
>> Pressman <gal@nvidia.com>; intel-wired-lan@lists.osuosl.org; Donald
>> Hunter <donald.hunter@gmail.com>; Carolina Jubran
>> <cjubran@nvidia.com>; Vadim Fedorenko <vadim.fedorenko@linux.dev>
>> Cc: Paolo Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
>> netdev@vger.kernel.org
>> Subject: [Intel-wired-lan] [PATCH net-next v3 1/4] ethtool: add FEC
>> bins histogram report
>>
>> IEEE 802.3ck-2022 defines counters for FEC bins and 802.3df-2024
>> clarifies it a bit further. Implement reporting interface through as
>> addition to FEC stats available in ethtool.
>>
>> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 

Thanks for the review!
BTW, do you know if Intel's E8xx series can provide such kind of statistics?

CC: Tony and Przemek as maintainers of ice driver
