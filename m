Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 888BCA4DC32
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 12:16:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46598606EC;
	Tue,  4 Mar 2025 11:16:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VjqlKm8iFGAn; Tue,  4 Mar 2025 11:16:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9387D606EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741086994;
	bh=YLm1rlaBrvmLc6sG9AQ3DE5IN+blkKrnMtDSZp9hE+0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=68P31WgJQIFO0h9W7Z8MazpnH71F7XerypvOT+0LCWNBP6T+cJ2NIXG+ExaEJ5PCW
	 G1E21JJUpSxuEq012Ggta1qIcpjfRvaMDHcTpEIpxYGgrpp5rkPZT/APQ9RNyQ3RKd
	 yUpdCfcCWqHR0RTiqyzwRXqunNpcR2P4xkpR+PzUVNT1u9CPPdox1Gu2Q1e0F57Zph
	 vpWenFlfd6CUbNc2HInI/GCYqXV2J/QZYYbQ2zmi0m94I26OrebrAoAdUgInwQFjZD
	 kj7UhqxIShlTnIPpPWJ1Q4+1XR40OTgVnoFflaz8uFXdH/YCyJwSXZLkq4Miohoof+
	 vudf7J0dcBiEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9387D606EE;
	Tue,  4 Mar 2025 11:16:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0939C944
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EC0904086A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:16:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9VduJt7_FoG6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 11:16:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EE79040822
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE79040822
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE79040822
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:16:29 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1F3FE61E6478F;
 Tue, 04 Mar 2025 12:15:58 +0100 (CET)
Message-ID: <9f6b830f-d2ee-4fde-a131-a956a6e84df7@molgen.mpg.de>
Date: Tue, 4 Mar 2025 12:15:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Jan Glaza <jan.glaza@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Simon Horman <horms@kernel.org>
References: <20250304110833.95997-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250304110833.95997-4-martyna.szapar-mudlaw@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250304110833.95997-4-martyna.szapar-mudlaw@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [iwl-net v3 1/5] virtchnl: make proto and
 filter action count unsigned
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

Dear Jan, dear Martina,


Thank you for the patch.

Am 04.03.25 um 12:08 schrieb Martyna Szapar-Mudlaw:
> From: Jan Glaza <jan.glaza@intel.com>
> 
> The count field in virtchnl_proto_hdrs and virtchnl_filter_action_set
> should never be negative while still being valid. Changing it from
> int to u32 ensures proper handling of values in virtchnl messages in
> driverrs and prevents unintended behavior.
> In its current signed form, a negative count does not trigger
> an error in ice driver but instead results in it being treated as 0.
> This can lead to unexpected outcomes when processing messages.
> By using u32, any invalid values will correctly trigger -EINVAL,
> making error detection more robust.
> 
> Fixes: 1f7ea1cd6a374 ("ice: Enable FDIR Configure for AVF")
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Jan Glaza <jan.glaza@intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
> ---
>   include/linux/avf/virtchnl.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
> index 4811b9a14604..cf0afa60e4a7 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h
> @@ -1343,7 +1343,7 @@ struct virtchnl_proto_hdrs {
>   	 * 2 - from the second inner layer
>   	 * ....
>   	 **/
> -	int count; /* the proto layers must < VIRTCHNL_MAX_NUM_PROTO_HDRS */
> +	u32 count; /* the proto layers must < VIRTCHNL_MAX_NUM_PROTO_HDRS */

Why limit the length, and not use unsigned int?

>   	union {
>   		struct virtchnl_proto_hdr
>   			proto_hdr[VIRTCHNL_MAX_NUM_PROTO_HDRS];
> @@ -1395,7 +1395,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(36, virtchnl_filter_action);
>   
>   struct virtchnl_filter_action_set {
>   	/* action number must be less then VIRTCHNL_MAX_NUM_ACTIONS */
> -	int count;
> +	u32 count;
>   	struct virtchnl_filter_action actions[VIRTCHNL_MAX_NUM_ACTIONS];
>   };


Kind regards,

Paul
