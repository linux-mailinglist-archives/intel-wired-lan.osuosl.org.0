Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 551F988CA1B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 18:04:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 009DD4154F;
	Tue, 26 Mar 2024 17:04:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0dRUsqEOJe4L; Tue, 26 Mar 2024 17:04:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC0524152B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711472644;
	bh=NrE7Vt2pNurTp9Y0mAxOJgCgwBMGZJicbQxramXY6P8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5FOhBVKVzrM1XK9HtlKIHf9wYLQL+Tdy/OvY87wUzt8QgN6obdg5aLv92Ms+faLDN
	 vrQo8IJQfWBn7UNl8ieVtDDHa0VZicL75Ad9/p6vV4JQzUK3AQm2cmrEGldbcERqLP
	 3k4KoKfAj6YJBqlqGBDmUaMbRZsaNDwilARcihXN1FZ/XO1C56IM8u8sGM2A7zc4gn
	 5wPpXKIWxGmhLCraJ6EcHV2jXd8tnRsUOfIopcoAk7cIokDzvbzXDIRyIY5AV67n14
	 umG39IGI0ZFqqenw1/0Js45XtCk0kwqHEVbcNrai22Pt8wLu7R4VT4A0sh3C41TZMm
	 hJ5kZtMJVFRfA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC0524152B;
	Tue, 26 Mar 2024 17:04:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C2F71BF487
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 17:04:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 47A9260ABE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 17:04:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AlawoPk8v-3h for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 17:04:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.89.44.39;
 helo=omta40.uswest2.a.cloudfilter.net; envelope-from=gustavo@embeddedor.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5260C605B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5260C605B5
Received: from omta40.uswest2.a.cloudfilter.net
 (omta40.uswest2.a.cloudfilter.net [35.89.44.39])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5260C605B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 17:04:00 +0000 (UTC)
Received: from eig-obgw-5009a.ext.cloudfilter.net ([10.0.29.176])
 by cmsmtp with ESMTPS
 id p9XdrSAM1PM1hpADQriYFH; Tue, 26 Mar 2024 17:04:00 +0000
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with ESMTPS
 id pADJrI6hqELAWpADJrirNA; Tue, 26 Mar 2024 17:03:54 +0000
X-Authority-Analysis: v=2.4 cv=EfzOQumC c=1 sm=1 tr=0 ts=6602fffa
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=zXgy4KOrraTBHT4+ULisNA==:17
 a=IkcTkHD0fZMA:10 a=K6JAEmCyrfEA:10 a=wYkD_t78qR0A:10 a=cm27Pg_UAAAA:8
 a=QyXUC8HyAAAA:8 a=VwQbUJbxAAAA:8 a=lPTLYKuCpi3VH0QkE-kA:9 a=QEXdDO2ut3YA:10
 a=xmb-EsYY8bH0VWELuYED:22 a=AjGcO6oz07-iQ99wixmX:22
Received: from [201.172.173.147] (port=44416 helo=[192.168.15.10])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.96.2)
 (envelope-from <gustavo@embeddedor.com>) id 1rpADC-001bkE-0E;
 Tue, 26 Mar 2024 12:03:46 -0500
Message-ID: <de9a1396-7793-4420-8d3e-1c634059cfe0@embeddedor.com>
Date: Tue, 26 Mar 2024 11:03:44 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20240326164116.645718-1-aleksander.lobakin@intel.com>
 <20240326164116.645718-4-aleksander.lobakin@intel.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <20240326164116.645718-4-aleksander.lobakin@intel.com>
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
X-Exim-ID: 1rpADC-001bkE-0E
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.15.10]) [201.172.173.147]:44416
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 18
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfOzoMfQdiCmWzhJlqLhaK2K94p+L57XSKNpwa6NIcgXqG+C6PzckqCQ3H2V134jDTqcitmV/gUDvQZD1gcyE6q2gQjF7fUttkrSb5N3kV9HAbBlQgtcX
 A8CnT1lhAKP/SRIyKgpGf96OqFyZvcunFYuPpkooMptgKRpv3u8XHq+nmG9LUlxQJ3eKb0huouspBv4XUFm/Hkkkg/mx5cooTCZQtefJ9ZKQ73+vjtA+1R85
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NrE7Vt2pNurTp9Y0mAxOJgCgwBMGZJicbQxramXY6P8=; b=kK8daU+pLWX9/an16K0GdT02OK
 kgUgx85xu2TUmkImlc0GpPPyoWXw5stddVx3gGeQAfszsoL+Qj1Po3jKsm3UAVLseRTNJ3AF7fIFQ
 mdQUTfh3yEb/6RgkoV5EnzXTrRTVvDmY7m52TVhBWbUvXgwR/aa0xyXfsyP9QYsNs/fTXRk1T2M96
 9314CyobTBVyp2HOtWljrGglwQQrYZK2vfUnZ2wU6XF158Xhp2Kc4x4SC8yrnTnW1jc+b4zbBkLAM
 fz6cXS9SC6uNyG+CSlr1sj5yqHy4CIt0+kos2zb2j+xnF+cQONUPLhtvZjDYCGOhEeKRsezL0Pa+9
 d3+8erhQ==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=embeddedor.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=embeddedor.com header.i=@embeddedor.com
 header.a=rsa-sha256 header.s=default header.b=kK8daU+p
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] idpf: sprinkle
 __counted_by{, _le}() in the virtchnl2 header
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
> Both virtchnl2.h and its consumer idpf_virtchnl.c are very error-prone.
> There are 10 structures with flexible arrays at the end, but 9 of them
> has flex member counter in Little Endian.
> Make the code a bit more robust by applying __counted_by_le() to those
> 9. LE platforms is the main target for this driver, so they would
> receive additional protection.
> While we're here, add __counted_by() to virtchnl2_ptype::proto_id, as
> its counter is `u8` regardless of the Endianness.
> Compile test on x86_64 (LE) didn't reveal any new issues after applying
> the attributes.
> 
> Acked-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

LGTM:

Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks
-- 
Gustavo

> ---
>   drivers/net/ethernet/intel/idpf/virtchnl2.h | 20 ++++++++++----------
>   1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> index 29419211b3d9..63deb120359c 100644
> --- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
> +++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> @@ -555,7 +555,7 @@ VIRTCHNL2_CHECK_STRUCT_LEN(32, virtchnl2_queue_reg_chunk);
>   struct virtchnl2_queue_reg_chunks {
>   	__le16 num_chunks;
>   	u8 pad[6];
> -	struct virtchnl2_queue_reg_chunk chunks[];
> +	struct virtchnl2_queue_reg_chunk chunks[] __counted_by_le(num_chunks);
>   };
>   VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_reg_chunks);
>   
> @@ -703,7 +703,7 @@ struct virtchnl2_config_tx_queues {
>   	__le32 vport_id;
>   	__le16 num_qinfo;
>   	u8 pad[10];
> -	struct virtchnl2_txq_info qinfo[];
> +	struct virtchnl2_txq_info qinfo[] __counted_by_le(num_qinfo);
>   };
>   VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_config_tx_queues);
>   
> @@ -782,7 +782,7 @@ struct virtchnl2_config_rx_queues {
>   	__le32 vport_id;
>   	__le16 num_qinfo;
>   	u8 pad[18];
> -	struct virtchnl2_rxq_info qinfo[];
> +	struct virtchnl2_rxq_info qinfo[] __counted_by_le(num_qinfo);
>   };
>   VIRTCHNL2_CHECK_STRUCT_LEN(24, virtchnl2_config_rx_queues);
>   
> @@ -868,7 +868,7 @@ VIRTCHNL2_CHECK_STRUCT_LEN(32, virtchnl2_vector_chunk);
>   struct virtchnl2_vector_chunks {
>   	__le16 num_vchunks;
>   	u8 pad[14];
> -	struct virtchnl2_vector_chunk vchunks[];
> +	struct virtchnl2_vector_chunk vchunks[] __counted_by_le(num_vchunks);
>   };
>   VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_vector_chunks);
>   
> @@ -912,7 +912,7 @@ struct virtchnl2_rss_lut {
>   	__le16 lut_entries_start;
>   	__le16 lut_entries;
>   	u8 pad[4];
> -	__le32 lut[];
> +	__le32 lut[] __counted_by_le(lut_entries);
>   };
>   VIRTCHNL2_CHECK_STRUCT_LEN(12, virtchnl2_rss_lut);
>   
> @@ -977,7 +977,7 @@ struct virtchnl2_ptype {
>   	u8 ptype_id_8;
>   	u8 proto_id_count;
>   	__le16 pad;
> -	__le16 proto_id[];
> +	__le16 proto_id[] __counted_by(proto_id_count);
>   } __packed __aligned(2);
>   VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
>   
> @@ -1104,7 +1104,7 @@ struct virtchnl2_rss_key {
>   	__le32 vport_id;
>   	__le16 key_len;
>   	u8 pad;
> -	u8 key_flex[];
> +	u8 key_flex[] __counted_by_le(key_len);
>   } __packed;
>   VIRTCHNL2_CHECK_STRUCT_LEN(7, virtchnl2_rss_key);
>   
> @@ -1131,7 +1131,7 @@ VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_queue_chunk);
>   struct virtchnl2_queue_chunks {
>   	__le16 num_chunks;
>   	u8 pad[6];
> -	struct virtchnl2_queue_chunk chunks[];
> +	struct virtchnl2_queue_chunk chunks[] __counted_by_le(num_chunks);
>   };
>   VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_chunks);
>   
> @@ -1195,7 +1195,7 @@ struct virtchnl2_queue_vector_maps {
>   	__le32 vport_id;
>   	__le16 num_qv_maps;
>   	u8 pad[10];
> -	struct virtchnl2_queue_vector qv_maps[];
> +	struct virtchnl2_queue_vector qv_maps[] __counted_by_le(num_qv_maps);
>   };
>   VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_queue_vector_maps);
>   
> @@ -1247,7 +1247,7 @@ struct virtchnl2_mac_addr_list {
>   	__le32 vport_id;
>   	__le16 num_mac_addr;
>   	u8 pad[2];
> -	struct virtchnl2_mac_addr mac_addr_list[];
> +	struct virtchnl2_mac_addr mac_addr_list[] __counted_by_le(num_mac_addr);
>   };
>   VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_mac_addr_list);
>   
