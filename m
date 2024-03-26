Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A494E88CA24
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 18:04:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5952B40484;
	Tue, 26 Mar 2024 17:04:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lOI-iwBqVByR; Tue, 26 Mar 2024 17:04:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 853BF404D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711472693;
	bh=bq50C7r03mnPJYQbLMi3W08WnGxg7WKBeQErjDo/ugk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z2S6fnAjBpXq3ZYw+wF01mCeuz0wrP1nBR9mEFwV4dlrWzN5I5Jn22b9i5QcPvF9m
	 LGuojeIGbJJAXiR54xQ16668cZ4Ab1Eb/fuBnPRANJyEWhFrTCieSjNsKe4HAf1iQB
	 vD+2soofbZVNOOJ6MxV1guXBCwI1XQwKvzY611N7B2m1/8yALUF4OexWEn/WVtWo5Z
	 a+VAsPVtqvEEUMj2r3Kk7Qvu/X2AGeiT/9NVTHKmSiaEXaUfHFw02nIpGaWHCeXbtr
	 AOP7BoY0kr9DyBkdjzgZ57FQtVustJf92R+gSsp/AHZF/mTMnzudPkZr6Ast+W8Wng
	 aHqz8ObyoAE8Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 853BF404D4;
	Tue, 26 Mar 2024 17:04:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E4CE1BF37B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 17:04:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 496B960ABE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 17:04:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H3Vxqp2Y-KY1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 17:04:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.89.44.35;
 helo=omta36.uswest2.a.cloudfilter.net; envelope-from=gustavo@embeddedor.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 25BFA605B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25BFA605B5
Received: from omta36.uswest2.a.cloudfilter.net
 (omta36.uswest2.a.cloudfilter.net [35.89.44.35])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 25BFA605B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 17:04:49 +0000 (UTC)
Received: from eig-obgw-5009a.ext.cloudfilter.net ([10.0.29.176])
 by cmsmtp with ESMTPS
 id p9hJrEUgMtf2QpAEDrqNVZ; Tue, 26 Mar 2024 17:04:49 +0000
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with ESMTPS
 id pAE7rI7xBELAWpAE7risHr; Tue, 26 Mar 2024 17:04:43 +0000
X-Authority-Analysis: v=2.4 cv=EfzOQumC c=1 sm=1 tr=0 ts=6603002b
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=zXgy4KOrraTBHT4+ULisNA==:17
 a=IkcTkHD0fZMA:10 a=K6JAEmCyrfEA:10 a=wYkD_t78qR0A:10 a=cm27Pg_UAAAA:8
 a=QyXUC8HyAAAA:8 a=VwQbUJbxAAAA:8 a=ZDQiqXMRDEc8gDlBFqcA:9 a=QEXdDO2ut3YA:10
 a=xmb-EsYY8bH0VWELuYED:22 a=AjGcO6oz07-iQ99wixmX:22
Received: from [201.172.173.147] (port=44416 helo=[192.168.15.10])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.96.2)
 (envelope-from <gustavo@embeddedor.com>) id 1rpADz-001bkE-2T;
 Tue, 26 Mar 2024 12:04:35 -0500
Message-ID: <4e0980bd-2de7-470f-ad71-f7ed28bb0173@embeddedor.com>
Date: Tue, 26 Mar 2024 11:04:34 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20240326164116.645718-1-aleksander.lobakin@intel.com>
 <20240326164116.645718-3-aleksander.lobakin@intel.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <20240326164116.645718-3-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.172.173.147
X-Source-L: No
X-Exim-ID: 1rpADz-001bkE-2T
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.15.10]) [201.172.173.147]:44416
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 32
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfEME3flHPNErIvGEcRXv5F9I0jePREYT/VG96d2gtRZRRgoQ7pQsukfqUOuazx/EhTL1Z8vH5joD4W1pHC/mh4hpH42g1KBmax4apxYq8YTGyxcwlg5P
 hnpvSMr/OWGPsRlQKaFIuBv1buPo2jatr0tns4PDBy+2Y/spJDLpWqQgvNhRKALdUisjcv6enuKUeYtQS/cjc+u9RHiG1GHw8Ci6dLAEjLsMjLjoATpVx7VI
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bq50C7r03mnPJYQbLMi3W08WnGxg7WKBeQErjDo/ugk=; b=kMIvgWJ2boyXB4ghiNPGW96f4C
 44Ptkhnr261b39hK52RZ0L/qFt2M4sRPsdENgHU0l4ulpRmO5WrintQqesdwraO36ZkCjzrcBByPg
 32ZxOKEFfvrGNzVx3cNqpXgLNFq4YJJs9+9T37UHx5EdhRV8KNvkXg2h+cRMMC8qlWE2v2+1owTcv
 fo+AeQp6kggywBVoNKGDNc3Rr0UIa0SQw0PORbzrxAGatiJjnaUqsVoo1eUNX9pjQDLNXqGqADJuJ
 fLKX33ZUj9AP6UN+jywF/V7l3WXu+pfnHf0zuP/YpFCO29cQw6hfxflG3lI9oyCzGGOXnSg0Awa2j
 gbayfK4Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=embeddedor.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=embeddedor.com header.i=@embeddedor.com
 header.a=rsa-sha256 header.s=default header.b=kMIvgWJ2
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] idpf: make virtchnl2.h
 self-contained
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Simon Horman <horms@kernel.org>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/26/24 10:41, Alexander Lobakin wrote:
> To ease maintaining of virtchnl2.h, which already is messy enough,
> make it self-contained by adding missing if_ether.h include due to
> %ETH_ALEN usage.
> At the same time, virtchnl2_lan_desc.h is not used anywhere in the
> file, so remove this include to speed up C preprocessing.
> 
> Acked-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks
-- 
Gustavo

> ---
>   drivers/net/ethernet/intel/idpf/virtchnl2.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> index 4a3c4454d25a..29419211b3d9 100644
> --- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
> +++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> @@ -4,6 +4,8 @@
>   #ifndef _VIRTCHNL2_H_
>   #define _VIRTCHNL2_H_
>   
> +#include <linux/if_ether.h>
> +
>   /* All opcodes associated with virtchnl2 are prefixed with virtchnl2 or
>    * VIRTCHNL2. Any future opcodes, offloads/capabilities, structures,
>    * and defines must be prefixed with virtchnl2 or VIRTCHNL2 to avoid confusion.
> @@ -17,8 +19,6 @@
>    * must remain unchanged over time, so we specify explicit values for all enums.
>    */
>   
> -#include "virtchnl2_lan_desc.h"
> -
>   /* This macro is used to generate compilation errors if a structure
>    * is not exactly the correct length.
>    */
