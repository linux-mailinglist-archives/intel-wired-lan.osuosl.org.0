Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9F6455703
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Nov 2021 09:33:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0905A40260;
	Thu, 18 Nov 2021 08:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0RTY7REq5p3y; Thu, 18 Nov 2021 08:33:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA86B401D3;
	Thu, 18 Nov 2021 08:33:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 551F41BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 08:33:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4697260754
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 08:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tliq1ku8zw2a for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Nov 2021 08:33:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB841606DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 08:33:02 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aed0a.dynamic.kabel-deutschland.de
 [95.90.237.10])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2AD1A61E6478B;
 Thu, 18 Nov 2021 09:32:59 +0100 (CET)
Message-ID: <49f5c628-0e74-79ac-a097-d628d9d1249d@molgen.mpg.de>
Date: Thu, 18 Nov 2021 09:32:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20211117235505.70783-1-anthony.l.nguyen@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20211117235505.70783-1-anthony.l.nguyen@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ice: Remove unused
 ICE_FLOW_SEG_HDRS_L2_MASK
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Tony,


Am 18.11.21 um 00:55 schrieb Tony Nguyen:
> Remove the unused define ICE_FLOW_SEG_HDRS_L2_MASK.
> 
> Reported-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v2: Reword title and description to be imperative
> 
>   drivers/net/ethernet/intel/ice/ice_flow.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
> index 2bfe9d9d7edc..ef10f0941231 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flow.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
> @@ -609,8 +609,6 @@ struct ice_flow_prof_params {
>   	ICE_FLOW_SEG_HDR_ESP | ICE_FLOW_SEG_HDR_AH | \
>   	ICE_FLOW_SEG_HDR_NAT_T_ESP)
>   
> -#define ICE_FLOW_SEG_HDRS_L2_MASK	\
> -	(ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN)
>   #define ICE_FLOW_SEG_HDRS_L3_MASK	\
>   	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6 | ICE_FLOW_SEG_HDR_ARP)
>   #define ICE_FLOW_SEG_HDRS_L4_MASK	\

Acked-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
