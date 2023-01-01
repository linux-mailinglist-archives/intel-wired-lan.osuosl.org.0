Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 638F465A9B4
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 Jan 2023 12:13:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C8CA60E24;
	Sun,  1 Jan 2023 11:13:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C8CA60E24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672571614;
	bh=Bnp+J2kSCcE0UDsyV54VQ4WOiJrhNRXdJGj/kxkb3zc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sOCDXHf6YdfDBH7vbZxAnXaSutFwvFUlDhXCE6Khi9bfDucAbMGJ5NwEbdzocAGxo
	 8SmuERAB/PAkGdp+5ADncx90gsOiF2wIgHOJiCRdsJeABqceSUjOAjh/yPOYnRYz+0
	 lzPufENtyt7J1L2pUuhuf7bK1fExZllu7MjbJB6V/q0y4QSG875dvCjLTxFoqdNDYR
	 I6i1//uJF4bPcg6Rk8yFj3+vxQRzGTM+DO3p6oZAPjYpsXM3zwH1pPQfIB/Q+IqLlz
	 xHCCZIRii4Mvo+hete4lXrmVhm8cbK4/xOfBE7iONWPE23z10a2HlPmn1VCP+6u+5k
	 Z4RfkCs0C42gg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vY7M6AjknMnw; Sun,  1 Jan 2023 11:13:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BE9060DCA;
	Sun,  1 Jan 2023 11:13:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BE9060DCA
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D5921BF392
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jan 2023 11:13:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 470C981773
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jan 2023 11:13:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 470C981773
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hkc0uDKogsqi for <intel-wired-lan@osuosl.org>;
 Sun,  1 Jan 2023 11:13:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98F9A8174C
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 98F9A8174C
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jan 2023 11:13:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="407640610"
X-IronPort-AV: E=Sophos;i="5.96,291,1665471600"; d="scan'208";a="407640610"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 03:13:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="654260303"
X-IronPort-AV: E=Sophos;i="5.96,291,1665471600"; d="scan'208";a="654260303"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.251])
 ([10.13.11.251])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 03:13:24 -0800
Message-ID: <dd8605f7-941a-18c9-2a08-8c44be7700a4@linux.intel.com>
Date: Sun, 1 Jan 2023 13:13:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org, vinicius.gomes@intel.com
References: <20221214144514.15931-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20221214144514.15931-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672571607; x=1704107607;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=I9LY3jIUW9DdgSlyfQMkkMZK8alrM7zDbPMw8vJtNIs=;
 b=KVUcHor1NpR4XmeZlI9o+GB+XXoqUlGgdNO3NsFexW+OAi+0vIVb27E4
 gdUKQKumc5B4BybZso1WXhnqzjPcBZZAYRVn8YDZUUcItE9sCk7yLyIla
 cj86zsDENiUFE8k9oCEOQ/Dcj4m9CFFKTLYqnUuim1xuA1L+Fog2aUhAS
 NTM2kDODx+huajaCLN3O06D6LmNw1as+s0rWvNsKyq52QKJZEFU8DnNMj
 O+XAvivMHYJaz7iRxByJ6jOkHCdfbs1AQ+ygwoU6iGiV1tjtvrZeKFgDM
 izSuCxzVaZtE4gtfLTu+3f4v+ROyu1wF1vxNXk7uda4Ai2yCafF/WUGXM
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KVUcHor1
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: offload queue max
 SDU from tc-taprio
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
Cc: kuba@kernel.org, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 tee.min.tan@linux.intel.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/14/2022 16:45, Muhammad Husaini Zulkifli wrote:
> From: Tan Tee Min <tee.min.tan@linux.intel.com>
> 
> Add support for configuring the max SDU for each Tx queue.
> If not specified, keep the default.
> 
> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  1 +
>   drivers/net/ethernet/intel/igc/igc_main.c | 45 +++++++++++++++++++++++
>   include/net/pkt_sched.h                   |  1 +
>   net/sched/sch_taprio.c                    |  4 +-
>   4 files changed, 50 insertions(+), 1 deletion(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
