Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB48933A74
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jul 2024 11:56:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFA9F4091E;
	Wed, 17 Jul 2024 09:56:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jaeDRtdxh8Oo; Wed, 17 Jul 2024 09:56:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1B40407A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721210163;
	bh=rWfFffV8On6ksGXm2napp0jjfUipsc7J2C3UH4ZcrcY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Uz7vtz60VCk2hs0g5bhA3XNtk50I1o1sWH63afcBc8n5YXJzLl+WwMhuu7cQSOPOA
	 pvoX+6YGbrs9oLxjGtbbf+UArDlfPMmkI1x5k/P0fTotkjIVyr9HlAPbklc9yCXmON
	 7KzaxWTY51IQiwxUlKPmUMEzJR7h21ojIZXixXrHIVlj8zUsnA6uwVdPmQNmWzrfWq
	 8hnwML1ephYJqq+1w/49YWET19WYABUZ+FsEUq//YsLvT/tlCmHcYJxrjvbQwdSRRS
	 5vJm+lHyV9EYkX1eIz+ZvTrM4N3i0vtloRQQIaFYd+ryApQK4bwE4EMLX2jZ3a9p4B
	 21Ki1BAdKzpWQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1B40407A3;
	Wed, 17 Jul 2024 09:56:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 72A801BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 09:56:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D65BF40791
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 09:55:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QtBkVhH1Pp47 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jul 2024 09:55:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7BB744079C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BB744079C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BB744079C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 09:55:54 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aec2c.dynamic.kabel-deutschland.de
 [95.90.236.44])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id F317F61E5FE06;
 Wed, 17 Jul 2024 11:55:13 +0200 (CEST)
Message-ID: <b86c8136-56cc-4a88-9ca4-3c0d7e849bd0@molgen.mpg.de>
Date: Wed, 17 Jul 2024 11:55:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmed Zaki <ahmed.zaki@intel.com>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-11-ahmed.zaki@intel.com>
 <b0a70c97-2a25-4dca-9db1-aca64206a53c@molgen.mpg.de>
 <e829371c-3e19-40a9-8a35-ea903f912294@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <e829371c-3e19-40a9-8a35-ea903f912294@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 10/13] ice: add method to
 disable FDIR SWAP option
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Junfeng Guo <junfeng.guo@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Ahmed,


Thank you for your reply.


Am 15.07.24 um 16:23 schrieb Ahmed Zaki:

> On 2024-07-10 10:59 p.m., Paul Menzel wrote:

>> Am 10.07.24 um 22:40 schrieb Ahmed Zaki:
>>> From: Junfeng Guo <junfeng.guo@intel.com>
>>>
>>> The SWAP Flag in the FDIR Programming Descriptor doesn't work properly,
>>> it is always set and cannot be unset (hardware bug).
>>
>> Please document the datasheet/errata.
> 
> Unfortunately, I don't think this is in any docs or errata.

Oh. How did you find out?

>>> Thus, add a method to effectively disable the FDIR SWAP option by
>>> setting the FDSWAP instead of FDINSET registers.
>>
>> Please paste the new debug messages.
> 
> What debug messages? If you mean the ones logged by ice_debug() in this 
> patch, please note fvw_num = 48 for the parser. So that's 96 lines of:
> 
> swap wr(%d, %d): 0x%x = 0x%08x
> inset wr(%d, %d): 0x%x = 0x%08x

Personally, I’d prefer an example line, but I know that it’s not common.

[…]


Kind regards,

Paul
