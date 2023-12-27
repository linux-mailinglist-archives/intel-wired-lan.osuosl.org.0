Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF66381F243
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Dec 2023 22:46:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBB17837BC;
	Wed, 27 Dec 2023 21:46:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBB17837BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703713571;
	bh=e69vD6PJDUFi1xsxUIZa/vqOEj/MbEGuFPUky/2oi9s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WDovACHeoR/ghke+gF7BJygTbnuTeimWZeaNNN3p6rKUwUv7XblpTIg21Y4+rZvyP
	 uTbT539w8bulClcBoX3NPh5+Oz6z7beszJpoWEVKAJIRCs425m44ecjRjom5AnII2v
	 nakLKR7VbCUN9js/jgfsVulemuwcRSLpWzDLJQfHC3G3LAuE5KhePUbfh0SD1Z1A5N
	 Z7PfEYHeHTXa7D0UtrpkmsE0WTBN7wiHedl6ppobTqe9aibZ+I3tVAEBFvPJ9vU6FA
	 y9QsfUMWW3BG6oENHMV8Zk+oCi9d1knRWGc5QdplzIx0pXxzPXKRSmRFwHwIWzN3jv
	 +F/QBvXWeeW/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w8ekqOl7VOPh; Wed, 27 Dec 2023 21:46:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC386837A4;
	Wed, 27 Dec 2023 21:46:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC386837A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C74D01BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 21:46:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9D07A419C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 21:46:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D07A419C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jB4S82JdT0kT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Dec 2023 21:46:02 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B445C41741
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 21:46:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B445C41741
Received: from [172.29.66.158] (93-34-6-18.ip47.fastwebnet.it [93.34.6.18])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4BB7861E5FE03;
 Wed, 27 Dec 2023 22:45:13 +0100 (CET)
Message-ID: <5ae1537b-73dc-45a1-94a7-669e63dc74db@molgen.mpg.de>
Date: Wed, 27 Dec 2023 22:45:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
References: <20231227173757.1743001-1-pavan.kumar.linga@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20231227173757.1743001-1-pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: avoid compiler padding
 in virtchnl2_ptype struct
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
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Pavan,


Thank you for yoru patch.

Am 27.12.23 um 18:37 schrieb Pavan Kumar Linga:
> Config option in arm random config file

Sorry, I do not understand this part of the sentence. What Kconfig 
option was selected exactly causing this behavior.

> is causing the compiler
> to add padding. Avoid it by using "__packed" structure attribute
> for virtchnl2_ptype struct.

Did the compiler emit a warning? If so, please paste it.

> Fixes: 0d7502a9b4a7 ("virtchnl: add virtchnl version 2 ops")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202312220250.ufEm8doQ-lkp@intel.com
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/virtchnl2.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> index 8dc83788972..dd750e6dcd0 100644
> --- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
> +++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> @@ -978,7 +978,7 @@ struct virtchnl2_ptype {
>   	u8 proto_id_count;
>   	__le16 pad;
>   	__le16 proto_id[];
> -};
> +} __packed;
>   VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
>   
>   /**

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>



Kind regards,

Paul
