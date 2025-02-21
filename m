Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6153EA3F751
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 15:34:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AC4D60B5D;
	Fri, 21 Feb 2025 14:34:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K92eG44jcSYM; Fri, 21 Feb 2025 14:34:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51A9060B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740148456;
	bh=thpHO4ol1hua7teEf4a9A9clK18GBqhZbTyw/sEVZbk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HE32f7GxweXKkBbunIbhgf7VmtRIgyEW1a3tg1xnNXmLi47+9CMp/374kSwuBhp16
	 ibNMWsC3gLuqBHfiymLwIIoMkx2Ckt2Qg7sFoqQl8kYB9r/p18L0BQqkN/vJtML50l
	 XaUu3IKw5cKcIsTKvSYWciWuInhrMEPcqje9kaLENI4t7HbhT661RYDMdzFWef9s5z
	 TuILa+SKmUxI4qw0xp/mEAVMNqxUTGrQEHrppoOpDd5radgHp+zpnrnln+IDWa4JzM
	 NCzzvxTTq673OmkVNRDo55Ky8rU7OlfJ/4A+BybHWGLVERbNrPRvFhPjHZWP0Wi6kG
	 CQ41K3HxE+oMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51A9060B3E;
	Fri, 21 Feb 2025 14:34:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AC967D92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 14:34:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 914C960B58
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 14:34:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4a7SZmC2R83i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 14:34:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B408460B3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B408460B3E
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B408460B3E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 14:34:12 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af27c.dynamic.kabel-deutschland.de
 [95.90.242.124])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0421B61E6477D;
 Fri, 21 Feb 2025 15:34:00 +0100 (CET)
Message-ID: <d07597a8-7e89-41b3-aec9-3af9d9aed529@molgen.mpg.de>
Date: Fri, 21 Feb 2025 15:34:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Grzegorz Nitka <grzegorz.nitka@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org
References: <20250221101608.2437124-1-grzegorz.nitka@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250221101608.2437124-1-grzegorz.nitka@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Allow 100M speed for
 E825C SGMII device
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

Dear Grzegorz,


Thank you for the patch.

Am 21.02.25 um 11:16 schrieb Grzegorz Nitka:
> Add E825C 10GbE SGMII device to the list of devices supporting 100Mbit
> link mode. Without that change, 100Mbit link mode is ignored in ethtool
> interface. This change was missed while adding the support for E825C
> devices family.

I always like to have the commands and output for reproducing the issue 
in the commit message. That way, people hitting the error, have a chance 
of finding the commit, for example, with search engines.

> Fixes: f64e189442332 ("ice: introduce new E825C devices family")
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 7a2a2e8da8fa..caf3af2a32c3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -3180,6 +3180,7 @@ bool ice_is_100m_speed_supported(struct ice_hw *hw)
>   	case ICE_DEV_ID_E822L_SGMII:
>   	case ICE_DEV_ID_E823L_1GBE:
>   	case ICE_DEV_ID_E823C_SGMII:
> +	case ICE_DEV_ID_E825C_SGMII:
>   		return true;
>   	default:
>   		return false;
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
