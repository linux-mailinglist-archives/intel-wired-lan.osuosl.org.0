Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB87713812
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 May 2023 08:38:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CA1360B9C;
	Sun, 28 May 2023 06:38:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CA1360B9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685255920;
	bh=TVwdsje7NuFllMpm8+PUPEH2UkreATpjkUIoCrOZfE8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nl8tWygN3/K70OwaVU6LqCX+va/MzvbDoCz09W/g/+mdbmVIFvATUbl8BWeChEwJU
	 14fB+YL9F5DBHGQ30CIzRTw9QibdWNqaqhVQpnScmLc0g4cqpMUC3S9dSuqRgjbNII
	 8f/SU4jPB7cbpGucENfcb+3j0F+CSUD+kJk6c3kRizHqORMJWm9B0Eerc1MPyPP+Nn
	 PZR1L4pdFYnMkH2bDgaE73eULIfIipIvnodBc6lOEp8zTuU9sDyzTzLhpfz1jTgubg
	 2+drz0uIXZLXEZmZhitCC1VRzTE6VjSp9wEu8Hi+TE3zbqCzTzAxgrSQ6b9ieUzMa4
	 Z1XES66ZKJ/Tg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bdPj0eN_Rrvl; Sun, 28 May 2023 06:38:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBEB160ACC;
	Sun, 28 May 2023 06:38:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBEB160ACC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D9EA11BF329
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 May 2023 06:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B387B402E6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 May 2023 06:38:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B387B402E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i15yym7hLjAV for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 May 2023 06:38:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F114400D0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F114400D0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 May 2023 06:38:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10723"; a="334845023"
X-IronPort-AV: E=Sophos;i="6.00,198,1681196400"; d="scan'208";a="334845023"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2023 23:38:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10723"; a="656109975"
X-IronPort-AV: E=Sophos;i="6.00,198,1681196400"; d="scan'208";a="656109975"
Received: from mkogan1-mobl.ger.corp.intel.com (HELO [10.251.187.143])
 ([10.251.187.143])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2023 23:38:28 -0700
Message-ID: <55e05148-b1d3-bb87-6bae-786b942216f1@linux.intel.com>
Date: Sun, 28 May 2023 09:38:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20230511230731.105152-1-vinicius.gomes@intel.com>
 <20230511230731.105152-5-vinicius.gomes@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230511230731.105152-5-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685255911; x=1716791911;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=CWsIYL5xTR6aw7Q1xOAsXLjfZFkTMSN6aivl9aD/tLc=;
 b=XzsMJtU9JmMXTmkGaRfdRTa9UCUQrTWMUErtXLIGRYfagw949HgnGfZc
 glEgIBFpxEtZRhLx1+n6GUuCBqTLxeq4PFSJRdwx1jgd0NgS35C5YvK4Q
 X6N/rt2ichZmY98Jfaw9xELPAa/msaGeEYGWNjoFa2KVSeMsM4pSLrkt6
 5o+f4QCXQpcA4RtAUo7N4Q3qlAKNj9EUmYUkLcp/RHg35BBhlPikwlinj
 YkEdseFo01zzQhIVRDvNfaB9QWGS3X8OLsV/Q4gFcRU5D790440EOLgLu
 X9rhl3xgDfVF9UnHum4xOrQS5Dmbw65JRjxus3o3MN6TepYnXHjSkr4MS
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XzsMJtU9
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 4/4] igc: Add workaround
 for missing timestamps
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
Cc: vladimir.oltean@nxp.com, kurt@linutronix.de, anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/12/2023 02:07, Vinicius Costa Gomes wrote:
> There's an hardware issue that can cause missing timestamps. The bug
> is that the interrupt is only cleared if the IGC_TXSTMPH_0 register is
> read.
> 
> The bug can cause a race condition if a timestamp is captured at the
> wrong time, and we will miss that timestamp. To reduce the time window
> that the problem is able to happen, in case no timestamp was ready, we
> read the "previous" value of the timestamp registers, and we compare
> with the "current" one, if it didn't change we can reasonably sure
> that no timestamp was captured. If they are different, we use the new
> value as the captured timestamp.
> 
> This workaround has more impact when multiple timestamp registers are
> used, and the IGC_TXSTMPH_0 register always need to be read, so the
> interrupt is cleared.
> 
> Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 48 ++++++++++++++++++------
>   1 file changed, 37 insertions(+), 11 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
