Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A699ECBCA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Dec 2024 13:15:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1165441318;
	Wed, 11 Dec 2024 12:15:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZDP0jYEWLT0v; Wed, 11 Dec 2024 12:15:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BFB8412F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733919326;
	bh=5DPThntGWNm+nKew/lhSmje09bhl4E+y9+OYpTdFLHE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PetlNBzPiZzD2wDb6K3PWWsAzUwuHy7/a4dzhFUkoyot+vOE9qftmuTQGu3ybwBe1
	 HtRXnkhy+VfRWXiKgYvHLcn5XuqacFvhG79psOS0kpGVCWwMvFwjO9hRnIo2Evz6nv
	 9rJ6DVOTUrcV3RLlt8qY+7Z8A4MPQ8BiZ4yzeOSzeueKrabXzeFamROS5TXUpCq20W
	 9fWYD6c5k3pVeCQ8TmWx6zxAfGpbmQGW6xOOFLh98KHAmYGWpGijXNhrJMgkrM7mUo
	 rcM4c8ygwA+5JliBIV9FP26KsiH7VAlLnGP3bUt+lhwmXTirLa3cEwls1czTHvRmKG
	 Rpb/5JgQLvQvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BFB8412F8;
	Wed, 11 Dec 2024 12:15:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C30CCED2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 12:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3C01820CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 12:15:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UOdlTirGI6cw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Dec 2024 12:15:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 72FCC81FD1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72FCC81FD1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 72FCC81FD1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 12:15:22 +0000 (UTC)
X-CSE-ConnectionGUID: L7mCk/yYT8KLWC8SQNeqUA==
X-CSE-MsgGUID: ADNd6dF0TBKBnNpL7wQhdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45308432"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45308432"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 04:15:22 -0800
X-CSE-ConnectionGUID: FcsnI6AJSMeDfa7OhXsNkw==
X-CSE-MsgGUID: fs3OAwktTIO/c4be729g6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="99871971"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.245.84.66])
 ([10.245.84.66])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 04:15:19 -0800
Message-ID: <b3b23f47-96d0-4cdc-a6fd-f7dd58a5d3c6@linux.intel.com>
Date: Wed, 11 Dec 2024 13:15:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org, andrew+netdev@lunn.ch, horms@kernel.org,
 jiri@resnulli.us, stephen@networkplumber.org, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
References: <20241209131450.137317-2-martyna.szapar-mudlaw@linux.intel.com>
 <20241209153600.27bd07e1@kernel.org>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20241209153600.27bd07e1@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733919323; x=1765455323;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=locpQUNjVQ3jou0lwGopIGFTac8u7H06gk9qV1Yj+JE=;
 b=T+Tva0gncMSDLgYDWx7B9edq3tnIA9vkm4p4Cknii8d1OKLjD0lpTQFx
 +qYqgWNn5GBVjhUO+BrUZWw4fnSoqlwwL1Us1tTDKqxGufm0GPdy8MwVb
 /eH6wzY0I0O62+Nphk7oGECgOSzDXzzptTeJd6Nyyu6RTib7DMjxII0R7
 ldzTZXjPbq9+HdLnXsv+xINSI6J6ycmP9qOibUScS8YkBazKI22Ym6a0J
 24ooLNnn9ZKF0M3HFMYoeI09BBGXWDcwW7TniAvMP029F/0LBNI9thiWh
 l0O2RqmCuhY8VbfcLsalTfPdeuOSTwFI5tX4qABbxjjpx5xPmDk+qIfai
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T+Tva0gn
Subject: Re: [Intel-wired-lan] [RFC 0/1] Proposal for new devlink command to
 enforce firmware security
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



On 12/10/2024 12:36 AM, Jakub Kicinski wrote:
> On Mon,  9 Dec 2024 14:14:50 +0100 Martyna Szapar-Mudlaw wrote:
>> Proposed design
>>
>> New command, `devlink dev lock-firmware` (or `devlink dev guard-firmware`),
>> will be added to devlink API. Implementation in devlink will be simple
>> and generic, with no predefined operations, offering flexibility for drivers
>> to define the firmware locking mechanism appropriate to the hardware's
>> capabilities and security requirements. Running this command will allow
>> ice driver to ensure firmware with lower security value downgrades are
>> prevented.
>>
>> Add also changes to Intel ice driver to display security values
>> via devlink dev info command running and set minimum. Also implement
>> lock-firmware devlink op callback in ice driver to update firmware
>> minimum security revision value.
> 
> devlink doesn't have a suitable security model. I don't think we should
> be adding hacks since we're not security experts and standards like SPDM
> exist.
> 
> I understand that customers ask for this but "security" is not a
> checkbox, the whole certificate and version management is necessary.
> 

Hi Jakub,

Thank you for your response. Apologies if any of earlier wording was 
unclear or poorly chosen.

While this feature is needed for security reasons, its implementation in 
the kernel isn't directly tied to kernel/driver security.

The E810 Ethernet controller firmware provides a certain level of 
security, which includes a mechanism to prevent firmware downgrades (to 
past, less secure versions). However, it is the driver that needs to 
initiate this mechanism. After "locking/fusing/freezing/guarding" (open 
to name suggestions) the current firmware version, upgrades would still 
be possible. The card itself handles firmware validation, including 
verifying signatures and ensuring that only properly signed and accepted 
firmware can be installed. Thus the firmware can only be upgraded to a 
validated version that the card has approved.

This patch does not aim to introduce a new security mechanism, rather, 
it enables users to utilize the controller's existing functionality. 
This feature is to provide users with a devlink interface to inform the 
device that the currently loaded firmware can become the new minimal 
version for the card. Users have specifically requested the ability to 
make this step an independent part of their firmware update process.
Leaving in-tree users without this capability exposes them to the risk 
of downgrades to older, released by Intel, but potentially compromised 
fw versions, and prevents the intended security protections of the 
device from being utilized.
On the other hand always enforcing this mechanism during firmware 
update, could lead to poor customer experiences due to unintended 
firmware behavior in specific workflows and is not accepted by Intel 
customers.

Devlink tool was proposed for this purpose, as it is designed for 
administrative/root-level tasks such as this. Perhaps it would be more 
appropriate to integrate the proposed implementation as a subcommand 
(attribute) under the devlink flash API, which was the second considered 
option, rather than keeping it as a separate devlink command?

Thank you and best regards,
Martyna
