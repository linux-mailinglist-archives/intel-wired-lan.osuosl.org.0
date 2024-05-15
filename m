Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 331C48C600C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2024 07:09:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE765813EA;
	Wed, 15 May 2024 05:09:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U2ftENVbSSuK; Wed, 15 May 2024 05:09:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7785813BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715749757;
	bh=xjuyT2bwzvZOSpnPUS+SzF7hRVQUrhS9ss9o29ocqFQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WVCqZw1336Jrb3qePcu0k2VMM1yZ0q9+ojhiFs3W9+Ec4EY8Hz8ynXCGV1uKSKR/e
	 V707dhghAFcjnuJb0C+oUg5bzcZ4S5MCE7DDOY2cAJdC6gqycdkFV1U/Bio7y/4DSB
	 cD0dgUaYCbmRxrvOs6AuiZiobXOUDe03axul175BI1tib84v9yqi3p5FMwS6+BHDTa
	 VUFOMcLoXIjl1/yZ5XBIMVtd4iqUHLlv6QOnULlsgIjlIebNOaQNSgl5eYyje3CiCo
	 aL0QZvEyEZ2VCfF3WrGf9yiERPC6YV68Bw9gffbE7nYuMMACROc4acLw2bUEkP9YvW
	 EA1bqsvvxCbzg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7785813BA;
	Wed, 15 May 2024 05:09:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C1D261BF852
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 05:09:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF2EC40B2C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 05:09:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8xQ9OBxH2r26 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2024 05:09:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6973940AF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6973940AF9
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6973940AF9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 05:09:12 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af258.dynamic.kabel-deutschland.de
 [95.90.242.88])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7A16B61E5FE07;
 Wed, 15 May 2024 07:08:38 +0200 (CEST)
Message-ID: <275f19df-f0c2-405c-9a99-7776a8565532@molgen.mpg.de>
Date: Wed, 15 May 2024 07:08:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Thinh Tran <thinhtr@linux.ibm.com>
References: <20240514202141.408-1-thinhtr@linux.ibm.com>
 <20240514202141.408-2-thinhtr@linux.ibm.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240514202141.408-2-thinhtr@linux.ibm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net V3,
 1/2] i40e: fractoring out i40e_suspend/i40e_resume
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
Cc: pabeni@redhat.com, netdev@vger.kernel.org, rob.thomas@ibm.com,
 aleksandr.loktionov@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Thinh,


Thank you for your patch. Two minor comments for the title: Please use 
imperative mood and fix a typo:

Factor out i40e_suspend/i40e_resume


Kind regards,

Paul
