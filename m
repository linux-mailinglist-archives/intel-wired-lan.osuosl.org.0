Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23730170C99
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2020 00:32:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2EB4120467;
	Wed, 26 Feb 2020 23:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8o6Ct6-B31T2; Wed, 26 Feb 2020 23:32:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7C5F122170;
	Wed, 26 Feb 2020 23:32:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A66A1BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2020 23:32:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 779DB20467
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2020 23:32:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mI6qpZi4RUFG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2020 23:32:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 7497F2044A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2020 23:32:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 15:32:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="350511839"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.24.14.90])
 ([10.24.14.90])
 by fmsmga001.fm.intel.com with ESMTP; 26 Feb 2020 15:32:37 -0800
To: Chen Zhou <chenzhou10@huawei.com>, jeffrey.t.kirsher@intel.com,
 davem@davemloft.net
References: <20200108133959.93035-1-chenzhou10@huawei.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <1453037a-4370-8c08-f8c9-dfaa629e96b0@intel.com>
Date: Wed, 26 Feb 2020 15:32:37 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200108133959.93035-1-chenzhou10@huawei.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next] igc: make non-global functions
 static
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/8/2020 05:39, Chen Zhou wrote:
> Fix sparse warning:
> drivers/net/ethernet/intel/igc/igc_ptp.c:512:6:
> 	warning: symbol 'igc_ptp_tx_work' was not declared. Should it be static?
> drivers/net/ethernet/intel/igc/igc_ptp.c:644:6:
> 	warning: symbol 'igc_ptp_suspend' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 6935065..389a969 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -509,7 +509,7 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
>    * This work function polls the TSYNCTXCTL valid bit to determine when a
>    * timestamp has been taken for the current stored skb.
>    */
> -void igc_ptp_tx_work(struct work_struct *work)
> +static void igc_ptp_tx_work(struct work_struct *work)
>   {
>   	struct igc_adapter *adapter = container_of(work, struct igc_adapter,
>   						   ptp_tx_work);
> @@ -641,7 +641,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
>    * This function stops the overflow check work and PTP Tx timestamp work, and
>    * will prepare the device for OS suspend.
>    */
> -void igc_ptp_suspend(struct igc_adapter *adapter)
> +static void igc_ptp_suspend(struct igc_adapter *adapter)
>   {
>   	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
>   		return;
> 
This patch should be partially reverted for "igc_ptp_suspend".
"igc_ptp_suspend" declared in igc.h file and used in "__igc_shutdown" 
method.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
