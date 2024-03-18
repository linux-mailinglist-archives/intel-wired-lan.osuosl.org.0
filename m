Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 946E187EF21
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Mar 2024 18:44:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A98D81372;
	Mon, 18 Mar 2024 17:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id So9JiuP8_c5f; Mon, 18 Mar 2024 17:44:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4B6B812CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710783891;
	bh=GBaf98OQB8zlBLxhUGiBk0xneVmrhvL5HTQbu/LQKAI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p03F0jwrJauny1u8d5lcOc2uJg11Ifj3XVoob+ueVc6Ocm35pqfCp7LzE76P34bGq
	 goA3xBZM2YABub5C1ln5C0/2OjjyWIPnCFu2huS5mPFtVTBMmAtLM+9Rh/ERdnoSRr
	 u27elpAXYwuMuC3xYGhuUupqt4pzqqMKDCbqphRUfBrxWcblY1X7/4dyRYKIOwji0y
	 v5Ws7RkeNr2a5KY5vuHoi4UjmIcD0WxREO4ySlh4euuIrJQz2SutGS2DeildB+yMLS
	 qZusTLlu/FPKwAQUJ7mk3d9DpdSx1pIE2xE9aDTMk87G0+FAUFcLDzOUKekilE5kIQ
	 i9L4hxxSbqriw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4B6B812CC;
	Mon, 18 Mar 2024 17:44:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A3DEA1BF377
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 17:44:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CFCE812CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 17:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZId5nW7pDQtn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Mar 2024 17:44:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6343E80C0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6343E80C0B
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6343E80C0B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 17:44:46 +0000 (UTC)
Received: from [192.168.178.112] (p57b378ee.dip0.t-ipconnect.de
 [87.179.120.238])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C0F3C61E5FE01;
 Mon, 18 Mar 2024 18:44:29 +0100 (CET)
Message-ID: <0021db2e-5b15-457c-af35-fb1e1ac7cb2b@molgen.mpg.de>
Date: Mon, 18 Mar 2024 18:44:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Greenwalt <paul.greenwalt@intel.com>
References: <20240318162958.991829-1-paul.greenwalt@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240318162958.991829-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix package download
 algorithm
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
Cc: Dan Nowlin <dan.nowlin@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Paul, dear Dan,


Thank you for the patch.

Am 18.03.24 um 17:29 schrieb Paul Greenwalt:
> From: Dan Nowlin <dan.nowlin@intel.com>
> 
> Previously, the code would assume that only "Modular Signature Segment"
> existed. Given a package with both a "Reference Signature Segment" and a
> "Modular Signature Segment" the download would not have been successful
> because an incorrect sequence of buffers would be sent to the firmware.
> 
> Update download flow to detect a "Reference Signature Segment" and to
> only download the buffers in the signature segment in this case, and to
> skip downloading any buffers from the configuration segment.

Could you please document the test setup (with firmware version) so 
people can reproduce the error and fix?

> Fixes: 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ddp.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index 8b7504a9df31..90b9e28ddba9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -1424,14 +1424,14 @@ ice_dwnld_sign_and_cfg_segs(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr,
>   		goto exit;
>   	}
>   
> -	conf_idx = le32_to_cpu(seg->signed_seg_idx);
> -	start = le32_to_cpu(seg->signed_buf_start);
>   	count = le32_to_cpu(seg->signed_buf_count);
> -
>   	state = ice_download_pkg_sig_seg(hw, seg);
> -	if (state)
> +	if (state || !count)
>   		goto exit;
>   
> +	conf_idx = le32_to_cpu(seg->signed_seg_idx);
> +	start = le32_to_cpu(seg->signed_buf_start);
> +
>   	state = ice_download_pkg_config_seg(hw, pkg_hdr, conf_idx, start,
>   					    count);

Sorry, just reading the diff, it’s not clear to me why skipping is 
correct. Isn’t now nothing read, if the Modular and Reference Signature 
Segment exist? Maybe comments would be nice.


Kind regards,

Paul
