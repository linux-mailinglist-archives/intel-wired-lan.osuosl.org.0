Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CD8A27A44
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 19:43:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B400540B36;
	Tue,  4 Feb 2025 18:42:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WN6NwF_Nov1I; Tue,  4 Feb 2025 18:42:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 771A540B43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738694572;
	bh=ulPFD5Sl2hWxEFSYpdVtQHzXB1h6+CKjPaNObdy2iH8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Qm/jPDjkZMeIDvIy+7B/xQoTc7KVSPVNLIxYnRdBdwU86kwypDtArmOZ6fsbnIG3/
	 IMHBngnXIhNKvRfa1wHkTN8ee6uptTP+QTDBco42MXuSe1LKwi1dxoNXL4ouR2YlfV
	 b58LdM7/FEw37lMgbxz3hLTn/qBIW1YLSEMpBezY9Xtxjgzn3qkQfpisSO+6wDQ2aV
	 niP/PNYticuSHAYQsraDIeOOPKZrha7oifuITeuSmgD6VGfQwhFIg815EceU0l7vAZ
	 ntHFZ+lWJYVP2WWO584ziXQrLoNIc0OWerd7u0OpaoBTm9rFYQxHDt8LFynqvKXyES
	 /kOlfxTSQabiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 771A540B43;
	Tue,  4 Feb 2025 18:42:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AA8F312A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 18:42:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99E1360AF1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 18:42:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bY0I-8PrZy_L for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 18:42:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::b1; helo=out-177.mta1.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6FE86606AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FE86606AE
Received: from out-177.mta1.migadu.com (out-177.mta1.migadu.com
 [IPv6:2001:41d0:203:375::b1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6FE86606AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 18:42:49 +0000 (UTC)
Message-ID: <3f0b9a34-db37-4cd5-ae4a-bdc2855dfb72@linux.dev>
Date: Tue, 4 Feb 2025 18:42:37 +0000
MIME-Version: 1.0
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, richardcochran@gmail.com,
 Milena Olech <milena.olech@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20250204071259.15510-1-piotr.kwapulinski@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250204071259.15510-1-piotr.kwapulinski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1738694567;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ulPFD5Sl2hWxEFSYpdVtQHzXB1h6+CKjPaNObdy2iH8=;
 b=pViV9I+1nagKdYEVjF9QGC9RerkReSNr8eXuTVWekPijFVFDC9th8HKL+zB0woLARgsdbs
 S1cziL8t42DYRQrMkrqNE+KRw4WYEcO77rK6OJVJzVwEJ3VQUk4N2DAvYxxqydL+vos+YE
 FobphY14/xj4Oc3QKKtpDYtyRTEC5g4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=pViV9I+1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: add PTP support for
 E610 device
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

On 04/02/2025 07:12, Piotr Kwapulinski wrote:
> Add PTP support for E610 adapter. The E610 is based on X550 and adds
> firmware managed link, enhanced security capabilities and support for
> updated server manageability. It does not introduce any new PTP features
> compared to X550.
> 
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c |  1 +
>   drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c     | 13 +++++++++++--
>   2 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index da91c58..f03925c 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -3185,6 +3185,7 @@ static int ixgbe_get_ts_info(struct net_device *dev,
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		info->rx_filters |= BIT(HWTSTAMP_FILTER_ALL);
>   		break;
>   	case ixgbe_mac_X540:
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> index 9339edb..eef25e1 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> @@ -140,6 +140,7 @@
>    * proper mult and shift to convert the cycles into nanoseconds of time.
>    */
>   #define IXGBE_X550_BASE_PERIOD 0xC80000000ULL
> +#define IXGBE_E610_BASE_PERIOD 0x333333333ULL
>   #define INCVALUE_MASK	0x7FFFFFFF
>   #define ISGN		0x80000000
>   
> @@ -415,6 +416,7 @@ static void ixgbe_ptp_convert_to_hwtstamp(struct ixgbe_adapter *adapter,
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		/* Upper 32 bits represent billions of cycles, lower 32 bits
>   		 * represent cycles. However, we use timespec64_to_ns for the
>   		 * correct math even though the units haven't been corrected
> @@ -492,11 +494,13 @@ static int ixgbe_ptp_adjfine_X550(struct ptp_clock_info *ptp, long scaled_ppm)
>   	struct ixgbe_adapter *adapter =
>   			container_of(ptp, struct ixgbe_adapter, ptp_caps);
>   	struct ixgbe_hw *hw = &adapter->hw;
> +	u64 rate, base;
>   	bool neg_adj;
> -	u64 rate;
>   	u32 inca;
>   
> -	neg_adj = diff_by_scaled_ppm(IXGBE_X550_BASE_PERIOD, scaled_ppm, &rate);
> +	base = hw->mac.type == ixgbe_mac_e610 ? IXGBE_E610_BASE_PERIOD :
> +						IXGBE_X550_BASE_PERIOD;
> +	neg_adj = diff_by_scaled_ppm(base, scaled_ppm, &rate);
>   
>   	/* warn if rate is too large */
>   	if (rate >= INCVALUE_MASK)
> @@ -559,6 +563,7 @@ static int ixgbe_ptp_gettimex(struct ptp_clock_info *ptp,
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		/* Upper 32 bits represent billions of cycles, lower 32 bits
>   		 * represent cycles. However, we use timespec64_to_ns for the
>   		 * correct math even though the units haven't been corrected
> @@ -1067,6 +1072,7 @@ static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		/* enable timestamping all packets only if at least some
>   		 * packets were requested. Otherwise, play nice and disable
>   		 * timestamping
> @@ -1233,6 +1239,7 @@ void ixgbe_ptp_start_cyclecounter(struct ixgbe_adapter *adapter)
>   		fallthrough;
>   	case ixgbe_mac_x550em_a:
>   	case ixgbe_mac_X550:
> +	case ixgbe_mac_e610:
>   		cc.read = ixgbe_ptp_read_X550;
>   		break;
>   	case ixgbe_mac_X540:
> @@ -1280,6 +1287,7 @@ static void ixgbe_ptp_init_systime(struct ixgbe_adapter *adapter)
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
>   	case ixgbe_mac_X550:
> +	case ixgbe_mac_e610:
>   		tsauxc = IXGBE_READ_REG(hw, IXGBE_TSAUXC);
>   
>   		/* Reset SYSTIME registers to 0 */
> @@ -1407,6 +1415,7 @@ static long ixgbe_ptp_create_clock(struct ixgbe_adapter *adapter)
>   	case ixgbe_mac_X550:
>   	case ixgbe_mac_X550EM_x:
>   	case ixgbe_mac_x550em_a:
> +	case ixgbe_mac_e610:
>   		snprintf(adapter->ptp_caps.name, 16, "%s", netdev->name);
>   		adapter->ptp_caps.owner = THIS_MODULE;
>   		adapter->ptp_caps.max_adj = 30000000;


LGTM,
Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
