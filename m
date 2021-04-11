Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3181B35B21E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Apr 2021 09:15:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7D648398E;
	Sun, 11 Apr 2021 07:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RXmhLr-V2SZL; Sun, 11 Apr 2021 07:15:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEF788397A;
	Sun, 11 Apr 2021 07:15:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 53E651BF28C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:15:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3EDE3403B2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:15:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BkkavyFpWanm for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Apr 2021 07:15:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 37481403AA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:15:47 +0000 (UTC)
IronPort-SDR: YCy2sQ3UC44SuP5rSKNGnGuQtWY4sCIfr9QSFTf4AZkLvsqMi4Qc16sTZ4rokI9TcI5iQ4k71W
 cRoeZAvTzRKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9950"; a="190813845"
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; d="scan'208";a="190813845"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 00:15:46 -0700
IronPort-SDR: jq8oXBOvuZZzSr4whs7E6ScesYihEzk7VHnRxHpVVx3o4dLEXkyaR++rjKtFnd3JuyPTl9t6bV
 cfYfBxcbyiFQ==
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; d="scan'208";a="423338900"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 00:15:45 -0700
To: Ederson de Souza <ederson.desouza@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20210219013104.54436-1-ederson.desouza@intel.com>
 <20210219013104.54436-2-ederson.desouza@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <771f5092-3762-4312-0760-c9e709c96ee7@linux.intel.com>
Date: Sun, 11 Apr 2021 10:15:44 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210219013104.54436-2-ederson.desouza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 1/2] igc: Enable
 internal i225 PPS
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 19/02/2021 03:31, Ederson de Souza wrote:
> The i225 device can produce one interrupt on the full second, much
> like i210 - from where this patch is inspired.
> 
> This patch sets up the full second interruption on the i225 and when
> receiving it, it sends a PPS event to PTP (Precision Time Protocol)
> kernel subsystem.
> 
> The PTP subsystem exposes the PPS events via ioctl and sysfs, and one
> can use the `testptp` tool (tools/testing/selftests/ptp) to check that
> the events are being generated.
> 
> Signed-off-by: Ederson de Souza <ederson.desouza@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  2 ++
>   drivers/net/ethernet/intel/igc/igc_main.c |  8 +++++++
>   drivers/net/ethernet/intel/igc/igc_ptp.c  | 28 ++++++++++++++++++++++-
>   3 files changed, 37 insertions(+), 1 deletion(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
