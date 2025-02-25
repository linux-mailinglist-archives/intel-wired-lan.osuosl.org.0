Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DCFA43951
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 10:24:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7B7840D98;
	Tue, 25 Feb 2025 09:24:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9LyO7BsDJISZ; Tue, 25 Feb 2025 09:24:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D32C840D90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740475448;
	bh=aumWml2PJELp8Yg0F0d8Ft32zpsC3P8GzzOzK5S7R6o=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=STO2J68FKJ52kp7OO6sOfoYIjhsRSeBtZeNLGPTbMhjocOk/U8pUcCO2dgb49RqfJ
	 C1H9g32VW48BOIvmYY0maLliLsFTpi84iWCrR+NVoxMkX4irsEv+/smN1+mOzJN0Ca
	 bkG6475hJhsWZB6GuYWgOSrFyrYlDZvR9Y78tvgEXN2nkoLSwm1dhwvdxiG/7p3vNs
	 zNMykXHJXHrjrsNUmVenvuApWCjtFyLrUWVYu2p0eW02J9f31UDbmdxHTOHqVPsf48
	 ++Cq1GSj/fedeGKf2FZfM7tgaWROjfwsTnVyYDHeaaq+qJTC9luwlm4TFLodiqEqwo
	 jbDkbs/BHbZ2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D32C840D90;
	Tue, 25 Feb 2025 09:24:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C92072292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AD18E40D92
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:24:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FJIAGW2VGoga for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 09:24:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9B86A40D91
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B86A40D91
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B86A40D91
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:24:05 +0000 (UTC)
X-CSE-ConnectionGUID: 9PGPvO2uQBWSS+5gHjF6PQ==
X-CSE-MsgGUID: PcRJGR47TfeB97UxPStxuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40508221"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="40508221"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 01:24:05 -0800
X-CSE-ConnectionGUID: Aa5eIeEKTQeWDyLsGULWuQ==
X-CSE-MsgGUID: JvZ6gVF+T++oBW7DINoAew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117262505"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.245.112.135])
 ([10.245.112.135])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 01:24:04 -0800
Message-ID: <95382347-8e05-4164-98b8-eca168bf3969@linux.intel.com>
Date: Tue, 25 Feb 2025 10:24:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250217102744.300357-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250218194415.GL1615191@kernel.org>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20250218194415.GL1615191@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740475446; x=1772011446;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kC00upbw2CNPSxlB1c1v2NPeDqUKHdWijPcrPdFqNQU=;
 b=VlVhU5eYgma4pZV82wTTrfIgJwrmtGaHHMPYPsINZLSMX1o6yocIcaiG
 K8auViH7egh3Xh9IIVtyHIofA4k4EvTc5q11OUeUXt4xxvxId+TWv2XOL
 YUayA+ZLNPfhi7DZ1uGUlg2iyls7oFa9gg4MMgftK9kNshcsuC8xjYNMW
 k43xMwQ2f6ZeHtBLeHXbUP21+dHjgpI/qu/oSfIKB0BnnRKbB7E1HueN7
 fm37DX/rb51uf6KBP58r2X+HrhxIWe+AhsESYaGKBUEpwPE8hj2Kh08ei
 47u5tvQII5LhgJshETdxyBwoJQFzV6Bq9K5b3mQPwAyq4o8GXuD0cKCfD
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VlVhU5eY
Subject: Re: [Intel-wired-lan] [iwl-net 0/4] ice: improve validation of
 virtchnl parameters
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



On 2/18/2025 8:44 PM, Simon Horman wrote:
> On Mon, Feb 17, 2025 at 11:27:41AM +0100, Martyna Szapar-Mudlaw wrote:
>> This patch series introduces improvements to the `ice` driver and `virtchnl`
>> interface by adding stricter validation checks and preventing potential
>> out-of-bounds scenarios.
> 
> Hi Martyna,
> 
> The above talks about this patchset in terms of improvements rather than
> bug fixes (that manifest). If so, I think this should be targeted at
> iwl-next (i.e. net-next) rather than iwl-net (net). And the Fixes tags
> should be dropped.
> 

Hi Simon,

Thank for looking into this. I believe these patches provide fixes and 
would fit better with iwl-net since they correct improper value 
checking, ensuring that the driver can properly handle and reject 
invalid inputs from potentially malicious VFs.
I sent v2 with rephrased cover letter and some commit messages.

Thanks.
Martyna

> ...
> 

