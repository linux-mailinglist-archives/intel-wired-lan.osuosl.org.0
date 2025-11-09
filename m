Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEE3C4410F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 09 Nov 2025 15:55:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67C6B80DD9;
	Sun,  9 Nov 2025 14:55:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tkRa1NSgnUd0; Sun,  9 Nov 2025 14:55:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D493880DE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762700138;
	bh=DqSoY31k802xxIsTeNivS39NWX9V8xDJfcxSP9gu/0I=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=meECKA0zPzTVqh+e4X0zSrh33lI/G9fiL4pStiEri/u9PiQKePuaxp53eHEuMZkYz
	 IybQQc93j5J9Y1L7urvSFeT2Q1VUK2IBsRkdevQXFZjc2XTbc47zB++JViKP46NQxZ
	 IjUNxMh7M78XnO8UOmskwiDvc+2X2JPkmAFVm/j4CgpttCZEhuSx3ailqp3eep7K5/
	 VlzLLGGJ1Zm1S+mIEyHkz5B9TYBE/qz7FQF37za22gzmSwmXf0qpN1jDrod2y1GnMO
	 G3v2vBmnD0+xAH9NjQkB77Vy7hnI/P84cVxeeVVL04wNgqMMz8ZB0scRjZTuUjS00K
	 H/IE0bEaitZMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D493880DE2;
	Sun,  9 Nov 2025 14:55:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 02C29FA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 14:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E487B607D2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 14:55:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zzmm9rTfOj9a for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Nov 2025 14:55:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5D644607CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D644607CF
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D644607CF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 14:55:35 +0000 (UTC)
Received: from [10.0.40.22] (unknown [62.214.191.67])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1CD7D61CC3FDA;
 Sun, 09 Nov 2025 15:55:08 +0100 (CET)
Message-ID: <10160d36-9580-49b5-ac1a-124665c7a396@molgen.mpg.de>
Date: Sun, 9 Nov 2025 15:55:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: przemyslaw.kitszel@intel.com, aleksander.lobakin@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 alok.a.tiwarilinux@gmail.com
References: <20251107160943.2614765-1-alok.a.tiwari@oracle.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251107160943.2614765-1-alok.a.tiwari@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix incorrect src_ip checks
 and memcpy sizes in cloud filter
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

Dear Alok,


Thank you for the patch.

Am 07.11.25 um 17:09 schrieb Alok Tiwari:
> Fix following issues in the IPv4 and IPv6 cloud filter handling logic in
> both the add and delete paths:
> 
> - The source-IP mask check incorrectly compares mask.src_ip[0] against
>    tcf.dst_ip[0]. Update it to compare against tcf.src_ip[0]. This likely
>    goes unnoticed because the check is in an "else if" path that only
>    executes when dst_ip is not set, most cloud filter use cases focus on
>    destination-IP matching, and the buggy condition can accidentally
>    evaluate true in some cases.

Do you have a reproducer?

> - memcpy() for the IPv4 source address incorrectly uses
>    ARRAY_SIZE(tcf.dst_ip) instead of ARRAY_SIZE(tcf.src_ip), although
>    both arrays are the same size.
> 
> - In the IPv6 delete path, memcmp() uses sizeof(src_ip6) when comparing
>    dst_ip6 fields. Replace this with sizeof(dst_ip6) to make the intent
>    explicit, even though both fields are struct in6_addr.
> 
> Fixes: e284fc280473 ("i40e: Add and delete cloud filter")
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 081a4526a2f0..c90cc0139986 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -3819,9 +3819,9 @@ static int i40e_vc_del_cloud_filter(struct i40e_vf *vf, u8 *msg)
>   		if (mask.dst_ip[0] & tcf.dst_ip[0])
>   			memcpy(&cfilter.ip.v4.dst_ip, tcf.dst_ip,
>   			       ARRAY_SIZE(tcf.dst_ip));
> -		else if (mask.src_ip[0] & tcf.dst_ip[0])
> +		else if (mask.src_ip[0] & tcf.src_ip[0])
>   			memcpy(&cfilter.ip.v4.src_ip, tcf.src_ip,
> -			       ARRAY_SIZE(tcf.dst_ip));
> +			       ARRAY_SIZE(tcf.src_ip));
>   		break;
>   	case VIRTCHNL_TCP_V6_FLOW:
>   		cfilter.n_proto = ETH_P_IPV6;
> @@ -3876,7 +3876,7 @@ static int i40e_vc_del_cloud_filter(struct i40e_vf *vf, u8 *msg)
>   		/* for ipv6, mask is set for all sixteen bytes (4 words) */
>   		if (cfilter.n_proto == ETH_P_IPV6 && mask.dst_ip[3])
>   			if (memcmp(&cfilter.ip.v6.dst_ip6, &cf->ip.v6.dst_ip6,
> -				   sizeof(cfilter.ip.v6.src_ip6)))
> +				   sizeof(cfilter.ip.v6.dst_ip6)))
>   				continue;
>   		if (mask.vlan_id)
>   			if (cfilter.vlan_id != cf->vlan_id)
> @@ -3965,9 +3965,9 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
>   		if (mask.dst_ip[0] & tcf.dst_ip[0])
>   			memcpy(&cfilter->ip.v4.dst_ip, tcf.dst_ip,
>   			       ARRAY_SIZE(tcf.dst_ip));
> -		else if (mask.src_ip[0] & tcf.dst_ip[0])
> +		else if (mask.src_ip[0] & tcf.src_ip[0])
>   			memcpy(&cfilter->ip.v4.src_ip, tcf.src_ip,
> -			       ARRAY_SIZE(tcf.dst_ip));
> +			       ARRAY_SIZE(tcf.src_ip));
>   		break;
>   	case VIRTCHNL_TCP_V6_FLOW:
>   		cfilter->n_proto = ETH_P_IPV6;

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
