Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B1169B44C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 21:59:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B30FE41179;
	Fri, 17 Feb 2023 20:59:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B30FE41179
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676667573;
	bh=+6knICDYmB/d4xKu7SHYmMvWmsFlGdoNpuDUkzmYIeU=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xYhKPOYvem0EZkRnDigBzpbNYrYIRqBnugED8UPZLCJE1spirEdjMyypPeDEge+7j
	 groKRwawDkMRkibTnppcdKnjcEBlzjF54mis52ICNYjpnFPU0SIs0QjYvim5iZJOA5
	 BN1qaFE7FR8+jCmXSsx9mBoXlTnJ5O3UveYqsgSu1eUXeKjJYWSJP4bLbyZek3zn2R
	 hF7Reuf6uIgnjyYji6uvAIdGjIkjk9hmaIUUlLQ/JyaI17mjEPXueNC8f781VvPpws
	 DFT8MladpU8mmiJgSMQ6gKUI5pYOp0KYQ/eBGRDqfMpb8MxCiXsxsGilyCYpEK/haS
	 9QQDzIJC9lgsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vs5a330HvcG2; Fri, 17 Feb 2023 20:59:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A234641163;
	Fri, 17 Feb 2023 20:59:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A234641163
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 485FF1BF28E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 20:59:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2097D41B86
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 20:59:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2097D41B86
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sE0XF8zmZ66U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Feb 2023 20:59:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D54E641C61
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D54E641C61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 20:59:24 +0000 (UTC)
Received: from sslproxy04.your-server.de ([78.46.152.42])
 by www62.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.94.2) (envelope-from <daniel@iogearbox.net>)
 id 1pT7p0-000FQz-Je; Fri, 17 Feb 2023 21:59:10 +0100
Received: from [85.1.206.226] (helo=linux.home)
 by sslproxy04.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1pT7p0-000H52-6t; Fri, 17 Feb 2023 21:59:10 +0100
To: Jesper Dangaard Brouer <brouer@redhat.com>, bpf@vger.kernel.org
References: <167656636587.1912541.8039324850101942090.stgit@firesoul>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <571350f8-3302-abc5-505a-8e5b1f77defe@iogearbox.net>
Date: Fri, 17 Feb 2023 21:59:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <167656636587.1912541.8039324850101942090.stgit@firesoul>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.7/26815/Fri Feb 17 09:41:01 2023)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=iogearbox.net; s=default2302; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
 bh=6XqZGcFwGDlPUYhyro44Otgaqy95Gc+0z48vc18AVdM=; b=i/+U0PIKK3N7AJzizcArR8yQSk
 d4CVvEW6gHYWOi3cOGZAmdVY8OqRCV1cotZI+tYL61rfOvJhg8pP/xXUHIQe9X1BrjxFkiLfDGV5P
 GNMEluaGGBLnK8ufvKT79jCCVSbjjLnTGJDcLNIMEfT76cV27FcQO3TK/4dFLKZlM7+Io69sX6HXo
 Afqse6blpNkGCPyaZXuLII2/Cky83Y/g1GAASnzH9640nUbXjDkHbjqfceV1dWf+sovznEiAes7LE
 XC1/ReqhidldpY1XtrLBpFL4oHneBne1WfXKOa5f5Cv73UP8unQ2RhzCAlZbgBCHJ1kg6zrpwc3uf
 B6zE5yRQ==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=iogearbox.net header.i=@iogearbox.net
 header.a=rsa-sha256 header.s=default2302 header.b=i/+U0PIK
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2] igc: enable and fix RX
 hash usage by netstack
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
Cc: pmenzel@molgen.mpg.de, martin.lau@kernel.org, netdev@vger.kernel.org,
 ast@kernel.org, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, Jakub Kicinski <kuba@kernel.org>,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/16/23 5:52 PM, Jesper Dangaard Brouer wrote:
> When function igc_rx_hash() was introduced in v4.20 via commit 0507ef8a0372
> ("igc: Add transmit and receive fastpath and interrupt handlers"), the
> hardware wasn't configured to provide RSS hash, thus it made sense to not
> enable net_device NETIF_F_RXHASH feature bit.
> 
> The NIC hardware was configured to enable RSS hash info in v5.2 via commit
> 2121c2712f82 ("igc: Add multiple receive queues control supporting"), but
> forgot to set the NETIF_F_RXHASH feature bit.
> 
> The original implementation of igc_rx_hash() didn't extract the associated
> pkt_hash_type, but statically set PKT_HASH_TYPE_L3. The largest portions of
> this patch are about extracting the RSS Type from the hardware and mapping
> this to enum pkt_hash_types. This was based on Foxville i225 software user
> manual rev-1.3.1 and tested on Intel Ethernet Controller I225-LM (rev 03).
> 
> For UDP it's worth noting that RSS (type) hashing have been disabled both for
> IPv4 and IPv6 (see IGC_MRQC_RSS_FIELD_IPV4_UDP + IGC_MRQC_RSS_FIELD_IPV6_UDP)
> because hardware RSS doesn't handle fragmented pkts well when enabled (can
> cause out-of-order). This results in PKT_HASH_TYPE_L3 for UDP packets, and
> hash value doesn't include UDP port numbers. Not being PKT_HASH_TYPE_L4, have
> the effect that netstack will do a software based hash calc calling into
> flow_dissect, but only when code calls skb_get_hash(), which doesn't
> necessary happen for local delivery.
> 
> Fixes: 2121c2712f82 ("igc: Add multiple receive queues control supporting")
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>

I presume this should go via net-next, not bpf-next? (Didn't find specific
dependencies, so moved to patchwork netdev bucket..)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
