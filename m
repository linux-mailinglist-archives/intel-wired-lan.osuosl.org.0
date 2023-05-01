Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 920316F3009
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 May 2023 12:01:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54C9461339;
	Mon,  1 May 2023 10:01:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54C9461339
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682935289;
	bh=bOiRMHoyDoI0XphlbQ/EySNYMzX5LxajKcmIxxYL/Ww=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AYgrP3UY/1+i11e7kwAz+8dA23t9bQAuvOxaQj7hVKx5Kg4d28Veu05LsFmZelM7f
	 SEIPFaoVxXQp9pFu7dQlMobm9MLNjhVysqKIaG1u20nxh8PmaW+5yVXR64+05O50PZ
	 UFBVhkk7V9TY9ubVgVdMo6mXhxu3ymZ5AK1pZvI8GSuAZtxO3335IWeWLUq3QgsHH8
	 v1rjt/oIoaiJqH4TY18MCARuzFOFN4uenrPugGUKcsYvdnCI3nIeOmlX3Vj9wpFuSx
	 6R9gWFFTVYIqsNUWP6BZKMX8qWuRuvpPanKDUmA2CF/SOskDBmXH959+PFj37oIhyK
	 Q1f8qzFv6wj+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rXIqH425zSwW; Mon,  1 May 2023 10:01:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CA0C61312;
	Mon,  1 May 2023 10:01:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CA0C61312
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A2C251BF479
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 10:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 784F8407D7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 10:01:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 784F8407D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nAktmge9-urN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 May 2023 10:01:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36FBD40564
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36FBD40564
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 10:01:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10696"; a="332462222"
X-IronPort-AV: E=Sophos;i="5.99,239,1677571200"; d="scan'208";a="332462222"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2023 03:01:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10696"; a="760629037"
X-IronPort-AV: E=Sophos;i="5.99,239,1677571200"; d="scan'208";a="760629037"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.36])
 ([10.13.12.36])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2023 03:01:14 -0700
Message-ID: <1d2fbe2c-3e33-fb60-a384-1cb550ae5229@linux.intel.com>
Date: Mon, 1 May 2023 13:01:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20230412073611.62942-1-kurt@linutronix.de>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230412073611.62942-1-kurt@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682935278; x=1714471278;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=f7pPqvwxZuP+KTS5cSZIBXrAGCw66p2IelsoFemY/0A=;
 b=hwks+zhDhY25ZdlSpR8uVN19wfIsray6MbMq2/ra/tzDpfOcTmjanzVk
 1mCX1eHXzK7sBf8sNOX61vud6oxS6SahWAnVi+bqh/9LK/VllEoPkewWC
 QH/w3vEd6136Jl8c46iB9hsbnZG2cO/f9+/YJVhG+6s+i633AjSc+S/nO
 j20z64EIW92wfHEkCt3F22mhFgosPBfIwy9Ez9yif5t5cUPOTUyT5gPZ0
 fgIguIkGWkLrB6RQ4wBFHBpgsYtuQHPOrZgLU1QThEyMmtpfPgjAvtpZb
 m3oaNCGIa4+RPKav1y9kcjytBi9n1fCn79Fp5jiIS8Mq51O48e6hmNxQ5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hwks+zhD
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: Avoid transmit queue
 timeout for XDP
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Ong Boon Leong <boon.leong.ong@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/12/2023 10:36, Kurt Kanzenbach wrote:
> High XDP load triggers the netdev watchdog:
> 
> |NETDEV WATCHDOG: enp3s0 (igc): transmit queue 2 timed out
> 
> The reason is the Tx queue transmission start (txq->trans_start) is not updated
> in XDP code path. Therefore, add it for all XDP transmission functions.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 8 ++++++++
>   1 file changed, 8 insertions(+)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
