Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C9BAE61FE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 12:17:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32BDB83032;
	Tue, 24 Jun 2025 10:17:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gj6Qqoq-hoTC; Tue, 24 Jun 2025 10:17:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1765283123
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750760236;
	bh=3DXvZgcMX8KT+Au6zJzwJRq8k6AZtyfniaRRAaZoDm8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2Ji1dZ8VU4+96hzwF6iicyDBYq4RogNvg8LmW8Ls3aGj2pjyaMglDMjXrdFZlnR2h
	 iM3Bvrk/ravQqR7ek8gPMkh8R+ys5FlSRBF8wed8vD9trInUGrydc2R1LASrGiHLp/
	 15vll0B2qYzVPnpEzpE5CB1r1Ib4fb8NRS13c+b1sMmpT0bbz6MzD/E/8zXQkPqVb9
	 RK22h9/+T2sjDp0UIT0VRxgxFLmWS4FSVDgqQwuxzCg4DgphNfFMG0OVjW9kF9yXmJ
	 eYw0mL87ADMzpHj9fM/DWY3TCoF+dMa2RzrzLZ7hmgijrs2g9suCuKmnEb4FG6Dsas
	 yEGsev1vOV3/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1765283123;
	Tue, 24 Jun 2025 10:17:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DE54D12C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 10:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF3F260779
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 10:17:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BOpugtofL9-k for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 10:17:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DF3F86069A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF3F86069A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF3F86069A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 10:17:12 +0000 (UTC)
Received: from [141.14.220.36] (g36.guest.molgen.mpg.de [141.14.220.36])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5EA3161E647A8;
 Tue, 24 Jun 2025 12:16:53 +0200 (CEST)
Message-ID: <4376ccbe-e688-49b0-bef1-42b46387be25@molgen.mpg.de>
Date: Tue, 24 Jun 2025 12:16:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com
References: <20250624092636.798390-1-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250624092636.798390-1-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: check correct pointer
 in fwlog debugfs
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

Dear Michal,


Thank you for the patch.

Am 24.06.25 um 11:26 schrieb Michal Swiatkowski:
> pf->ice_debugfs_pf_fwlog should be check for an error here.

be check*ed*

> Fixes: 96a9a9341cda ("ice: configure FW logging")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_debugfs.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> index 9fc0fd95a13d..cb71eca6a85b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
> +++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> @@ -606,7 +606,7 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
>   
>   	pf->ice_debugfs_pf_fwlog = debugfs_create_dir("fwlog",
>   						      pf->ice_debugfs_pf);
> -	if (IS_ERR(pf->ice_debugfs_pf))
> +	if (IS_ERR(pf->ice_debugfs_pf_fwlog))
>   		goto err_create_module_files;
>   
>   	fw_modules_dir = debugfs_create_dir("modules",

With the above fixed:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
