Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 352FF8B3DB3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 19:16:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFF7261460;
	Fri, 26 Apr 2024 17:16:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xL4vWHgLmDOS; Fri, 26 Apr 2024 17:16:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D14106144C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714151797;
	bh=5eZ7lmSsHEeWREkE8QMUgqjdRO8mkI1U+zkRl58HfpU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0L4oWxnnzZtaPuQjQia8QfiYgl2BfpO9SJngC15fkE4TpSywDVihLmcOC3ov6iose
	 P8vdrK3Lp12eWUwJT+Dtjwft5JeOKFegAUBiSCm3ayi+zygTeKwA/FcmRHFQOl//lZ
	 NtTLS1IGQd0tCo4eBWHRJgSOsH2g8ercNFoxqiMG0OoVt2fo3gnwgbZ5o1JLj94ptj
	 bJr6Fh7rWymIO8wiYlt5PZRP/3ij9bWoOio+QYCbYD/M+CjCogq0q82CPV7DFr+JeI
	 KKL1VcZRklsIkVDI+icKfyj7q7GFfR481X8jYtxxn8N3RqbHPgkIbh9kbsgIOfrQNP
	 TArSN8vCnC/6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D14106144C;
	Fri, 26 Apr 2024 17:16:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 215791BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 17:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0CDD361421
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 17:16:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XSHJfjEIaxLn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 17:16:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 02ACF613AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02ACF613AA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 02ACF613AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 17:16:34 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-530-F2z9VHWJOKyN98hUIR0s_Q-1; Fri, 26 Apr 2024 13:16:29 -0400
X-MC-Unique: F2z9VHWJOKyN98hUIR0s_Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1699F830D37;
 Fri, 26 Apr 2024 17:16:29 +0000 (UTC)
Received: from [10.45.225.10] (unknown [10.45.225.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7C79A40C6DAE;
 Fri, 26 Apr 2024 17:16:27 +0000 (UTC)
Message-ID: <914424cb-d74a-40b3-95e4-03d17d653467@redhat.com>
Date: Fri, 26 Apr 2024 19:16:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20240327075733.8967-1-ivecera@redhat.com>
 <3bd08423-18cd-6e12-38ab-4d9656c9ecf1@intel.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <3bd08423-18cd-6e12-38ab-4d9656c9ecf1@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1714151793;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5eZ7lmSsHEeWREkE8QMUgqjdRO8mkI1U+zkRl58HfpU=;
 b=MaQzblg2NYVCe2IsckoFrq+r2AvGBmdv/O3WGPbF1iBB3/MbnKnwaNjVuEu61IOCqvzu4m
 HIErDP6oWGHhRz9BP/oyJDUtQvEcgyTghimI74NqsvWjm7LGM8zXZMxAAZlvdEdhvOmUSx
 EnLuW+gTiYPazxWLoQh7jryfjNox2gc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=MaQzblg2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/7] i40e: cleanups &
 refactors
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 aleksandr.loktionov@intel.com, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12. 04. 24 23:19, Tony Nguyen wrote:
> 
> 
> On 3/27/2024 12:57 AM, Ivan Vecera wrote:
>> This series do following:
>> Patch 1 - Removes write-only flags field from i40e_veb structure and
>>            from i40e_veb_setup() parameters
>> Patch 2 - Refactors parameter of i40e_notify_client_of_l2_param_changes()
>>            and i40e_notify_client_of_netdev_close()
>> Patch 3 - Refactors parameter of i40e_detect_recover_hung()
>> Patch 4 - Adds helper i40e_pf_get_main_vsi() to get main VSI and uses it
>>            in existing code
>> Patch 5 - Consolidates checks whether given VSI is the main one
>> Patch 6 - Adds helper i40e_pf_get_main_veb() to get main VEB and uses it
>>            in existing code
>> Patch 7 - Adds helper i40e_vsi_reconfig_tc() to reconfigure TC for
>>            particular and uses it to replace existing open-coded pieces
> 
> Hi Ivan,
> 
> With the new checks on kdoc [1], this now reports issues. Can you fix 
> those? Feel free to send the new version to 'net-next' as our validation 
> has finished their testing on this series.
> 
> You can add my
> 
> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> 
> Thanks,
> Tony

Huh, I missed your email. Will send v3.

Thanks,
Ivan

>> Changes since v1:
>> - adjusted titles for patches 2 & 3
>>
>> Ivan Vecera (8):
>>    i40e: Remove flags field from i40e_veb
>>    i40e: Refactor argument of several client notification functions
>>    i40e: Refactor argument of i40e_detect_recover_hung()
>>    i40e: Add helper to access main VSI
>>    i40e: Consolidate checks whether given VSI is main
>>    i40e: Add helper to access main VEB
>>    i40e: Add and use helper to reconfigure TC for given VSI
>>
>>   drivers/net/ethernet/intel/i40e/i40e.h        |  30 ++-
>>   drivers/net/ethernet/intel/i40e/i40e_client.c |  28 +--
>>   drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   3 +-
>>   .../net/ethernet/intel/i40e/i40e_debugfs.c    |  36 +--
>>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  29 ++-
>>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 205 ++++++++++--------
>>   drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   6 +-
>>   .../net/ethernet/intel/i40e/i40e_register.h   |   3 +
>>   drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  98 ++++++---
>>   drivers/net/ethernet/intel/i40e/i40e_txrx.h   |   3 +-
>>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  14 +-
>>   11 files changed, 282 insertions(+), 173 deletions(-)
> 
> [1] https://lore.kernel.org/netdev/20240411200608.2fcf7e36@kernel.org/
> 

