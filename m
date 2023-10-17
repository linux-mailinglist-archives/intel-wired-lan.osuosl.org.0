Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9E47CBFFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 11:56:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3FD9415B8;
	Tue, 17 Oct 2023 09:56:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3FD9415B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697536606;
	bh=liJGJWMx9ryVOZ0sde8qRI2HnKPAnTFYw5rf2jHNXM4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gtcydPSI9aX50PvKqoHNDeQX6RFmvDw8Wufh6X64FOTmqQ+QDtHYx8yst8xQUeiVn
	 87JHyaRAiN8D1v15T5/pMskY6mMVmV0i23vJsNI7D5l0OZeU4QfFxLD+4Kxq8xAPSg
	 F2DpypgnDh4YthHc5oIoxu+uZ8TkBKTy6pD2ND2+rN8nAE0GCvOIWFqs8D+F6jJUeI
	 t2SqGm1JalINhJ2xLzvMXYMgm4lFSdVI9/qcC5iwasbi4l0RfsHKkVT+7CFxVn8+Fz
	 3w+kUK9AIry3rSYh1Wv8stwWNLyuNPAGMeoNQGrBhWk678wvm4gx4yOrcxKmJCj61t
	 grnhHU/vMh3Kw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sy1jojao0h2V; Tue, 17 Oct 2023 09:56:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 738244057B;
	Tue, 17 Oct 2023 09:56:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 738244057B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CED771BF30C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:56:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A573081400
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:56:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A573081400
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yIisvsPZ0UAv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 09:56:37 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 86B8E81371
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:56:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86B8E81371
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-632-B0Jm9qSrO7CpqPjDEewBfw-1; Tue, 17 Oct 2023 05:56:23 -0400
X-MC-Unique: B0Jm9qSrO7CpqPjDEewBfw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8DDA88F15C5;
 Tue, 17 Oct 2023 09:56:22 +0000 (UTC)
Received: from [10.43.2.183] (unknown [10.43.2.183])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 56F85492BEE;
 Tue, 17 Oct 2023 09:56:21 +0000 (UTC)
Message-ID: <b1805c01-483a-4d7e-8fb2-537f9a7ed9b4@redhat.com>
Date: Tue, 17 Oct 2023 11:56:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20231013170755.2367410-1-ivecera@redhat.com>
 <20231013170755.2367410-4-ivecera@redhat.com>
 <20231016075619.02d1dd27@kernel.org>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20231016075619.02d1dd27@kernel.org>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697536596;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YskDJvOwtltUEF1vV1LUQRzaj8p5jAo4b5a3cEViogM=;
 b=Z1m/RXureFWo05Soz3aGSr2Qv3nF1jgkkTUYxSuUMptb/eRAb+T/s/K4Y/smwS44ATyGbM
 c1ySAWc8DwDA7z8pnmth8tECFCosYXDiKz4kNh+Sbth4B14jq/FFW94Ja51euLDMHWCGVq
 LQJBcIjIvgMd9/RwWW7BgzxkXaxjVL8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Z1m/RXur
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] i40e: Add handler for
 devlink .info_get
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 16. 10. 23 16:56, Jakub Kicinski wrote:
> On Fri, 13 Oct 2023 19:07:53 +0200 Ivan Vecera wrote:
>>   "serial_number" -> The PCI DSN of the adapter
>>   "fw.mgmt" -> The version of the firmware
>>   "fw.mgmt.api" -> The API version of interface exposed over the AdminQ
>>   "fw.psid" -> The version of the NVM image
> 
> Your board reports "fw.psid 9.30", this may not be right,
> PSID is more of a board+customer ID, IIUC. 9.30 looks like
> a version, not an ID.

Maybe plain 'fw' should be used for this '9.30' as this is a version
of the whole software package provided by Intel for these adapters
(e.g. 
https://www.intel.com/content/www/us/en/download/18190/non-volatile-memory-nvm-update-utility-for-intel-ethernet-network-adapter-700-series.html).

Thoughts?

>>   "fw.bundle_id" -> Unique identifier for the combined flash image
>>   "fw.undi" -> The combo image version
> 
> UNDI means PXE. Is that whave "combo image" means for Intel?

Combo image version (aka CIVD) is reported by nvmupdate tool and this
should be version of OROM that contains PXE, EFI images that each of
them can have specific version but this CIVD should be overall OROM 
version for this combination of PXE and EFI. I hope I'm right.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
