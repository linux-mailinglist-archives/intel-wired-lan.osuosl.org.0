Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAnzMJUDwWlUPgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 10:10:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4276D2EEBF4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 10:10:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91C9960755;
	Mon, 23 Mar 2026 09:10:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SRMzvo5Is4qg; Mon, 23 Mar 2026 09:10:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0439C60751
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774257043;
	bh=yZ3h09YF6i36uR7YO4CrRkrvuj59wsiSc3hWH6s2v08=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QilXR2TAQkVURLrFd9zaNIdH7YBvSysjEFJdQ2r1UMhivFWiPbHXhJgnPGJO0/HA0
	 WzHJprlmguqLoBB28do5Ne3jB7A0ZODbR/dmsNomZbrWeClDKJDTmD1pBthjyRSX1c
	 cZpwZcQS40ZGmNe8/a/GEskj1DsFdSVp8euILxU8XtiliokzwBAGFCG+3vXkwZ8n+d
	 oEje3ilE/qm/0UwINY3/7gsE2cvBurNytuGcuYZ4w23ErLSvNOw3kDKbUXMdJRXb0w
	 3yQSrZhQUgEbYbXKbCL0UTYPEZ1a42XSV9AUyWfY99aMmRrpdRSqmq3fYxUJhu6k9Y
	 08dnmRQ9siWZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0439C60751;
	Mon, 23 Mar 2026 09:10:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 99083353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 09:10:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 965D56074E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 09:10:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qXq8B3_AnjTr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 09:10:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3EE516074A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EE516074A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EE516074A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 09:10:38 +0000 (UTC)
Received: from [192.168.2.229] (p57bd9b5e.dip0.t-ipconnect.de [87.189.155.94])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 65D034C2C37F07;
 Mon, 23 Mar 2026 10:10:30 +0100 (CET)
Message-ID: <447cbe7b-49b0-41dd-9a96-40a2dc40b198@molgen.mpg.de>
Date: Mon, 23 Mar 2026 10:10:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Paul Greenwalt <paul.greenwalt@intel.com>
References: <20260323085840.3272274-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260323085840.3272274-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: update
 ice_link_mode_str_high() with 200G
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[mpg.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mpg.de:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 4276D2EEBF4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dear Aleksandr, dear Paul,


Thank you for your patch. Some minor comments, should you resend.

Am 23.03.26 um 09:58 schrieb Aleksandr Loktionov:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Update ice_link_mode_str_high() with strings for 200G PHY types.
> Without these entries the ice_dump_phy_type() debug helper prints
> nothing for phy_type_high bits [5..15], covering all 200G and
> 400GBASE-FR8 PHY types supported by E825C hardware.

How does the system need to be configured to get `ice_dump_phy_type()` 
called?

Also, the commit message title just mentions 200G, but here you mention 
400G too.

> Also add the corresponding ICE_PHY_TYPE_HIGH_* bit definitions for
> indices 13-15 (200G_AUI8_AOC_ACC, 200G_AUI8, 400GBASE_FR8) that were
> missing from ice_adminq_cmd.h, and update ICE_PHY_TYPE_HIGH_MAX_INDEX
> from 12 to 15.  Without these definitions ice_get_phy_type_high() would
> stop iterating at index 12, leaving the new PHY types invisible to all
> code that bounds-checks against MAX_INDEX.

Maybe this should have been a separate commit, but it’s not important.

> Fixes: none (new hardware support)
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2 update ICE_PHY_TYPE_HIGH_MAX_INDEX
> ---
>   drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  5 ++++-
>   drivers/net/ethernet/intel/ice/ice_common.c     | 11 +++++++++++
>   2 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 859e9c6..f64d2ef 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1044,7 +1044,10 @@ struct ice_aqc_get_phy_caps {
>   #define ICE_PHY_TYPE_HIGH_200G_KR4_PAM4		BIT_ULL(10)
>   #define ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC	BIT_ULL(11)
>   #define ICE_PHY_TYPE_HIGH_200G_AUI4		BIT_ULL(12)
> -#define ICE_PHY_TYPE_HIGH_MAX_INDEX		12
> +#define ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC	BIT_ULL(13)
> +#define ICE_PHY_TYPE_HIGH_200G_AUI8		BIT_ULL(14)
> +#define ICE_PHY_TYPE_HIGH_400GBASE_FR8		BIT_ULL(15)
> +#define ICE_PHY_TYPE_HIGH_MAX_INDEX		15
>   
>   struct ice_aqc_get_phy_caps_data {
>   	__le64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 2cebe4e..c6727c5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -84,6 +84,17 @@ static const char * const ice_link_mode_str_high[] = {
>   	[2] = "100G_CAUI2",
>   	[3] = "100G_AUI2_AOC_ACC",
>   	[4] = "100G_AUI2",
> +	[5] = "200G_CR4_PAM4",
> +	[6] = "200G_SR4",
> +	[7] = "200G_FR4",
> +	[8] = "200G_LR4",
> +	[9] = "200G_DR4",
> +	[10] = "200G_KR4_PAM4",
> +	[11] = "200G_AUI4_AOC_ACC",
> +	[12] = "200G_AUI4",
> +	[13] = "200G_AUI8_AOC_ACC",
> +	[14] = "200G_AUI8",
> +	[15] = "400GBASE_FR8",
>   };
>   
>   /**

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
