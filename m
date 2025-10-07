Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2ECABC14EB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Oct 2025 14:07:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BE1D61C86;
	Tue,  7 Oct 2025 12:07:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UUCK6_WZGva9; Tue,  7 Oct 2025 12:07:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1F6B61C63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759838863;
	bh=T3fnxRWk9tcpfF7oNew/nptFJfBqXR2L3qUFxj8rvac=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0mPtVcbWHtRFUIj9bh8TX8CZe0+njbxHdPjrh/qbHtxQgC1i5DJFDa5kqNlUgYUGY
	 tV8gpMWbsX0eRm7LJi7Ocbkf2sqFRT4bhltINHyvmjnmAkXQcCDExHp3Lo823MPFaT
	 YCJr219cEHKtW6azX06UCDvtCaKU2j+HUe6SW9V7d0wi9XgTLBvuaMzi9PL5WhVz3+
	 oh2Yvk8xImIVaeojf2qhINPQluhRl+z70TLkHtmk+jkipeQaSxbN6IoDHH8+HR4NxA
	 S8ScYZNd9MHibl0cKr6LT9T1f4ZSz1+l2WSrp1ieNQXecZMb9H71wBctHlFSOgzG/M
	 bIO+3ZU9WqCzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1F6B61C63;
	Tue,  7 Oct 2025 12:07:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3EFCF9DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 12:07:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FC5A61B88
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 12:07:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QrDuwt2NW2Qx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Oct 2025 12:07:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7880661B7D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7880661B7D
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7880661B7D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 12:07:40 +0000 (UTC)
Received: from [141.14.12.217] (g217.RadioFreeInternet.molgen.mpg.de
 [141.14.12.217])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A09D060288276;
 Tue, 07 Oct 2025 14:06:56 +0200 (CEST)
Message-ID: <355b43c3-fb0b-4e94-b49f-a008843f1267@molgen.mpg.de>
Date: Tue, 7 Oct 2025 14:06:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Joshua Hay <joshua.a.hay@intel.com>, Chittim Madhu
 <madhu.chittim@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Emil Tantilov <emil.s.tantilov@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20251007114624.9594-1-larysa.zaremba@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251007114624.9594-1-larysa.zaremba@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix LAN memory regions
 command on some NVMs
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

Dear Larysa,


Am 07.10.25 um 13:46 schrieb Larysa Zaremba:
> IPU SDK versions 1.9 through 2.0.5 require send buffer to contain a single
> empty memory region. Set number of regions to 1 and use appropriate send
> buffer size to satisfy this requirement.

Where are the SDK requirements documented?

What are the current SDK versions?

Do you have a reproducer?

> Suggested-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index fa3ce1e4f6ac..af8b3ebee4d4 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -1016,6 +1016,9 @@ static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
>   	struct idpf_vc_xn_params xn_params = {
>   		.vc_op = VIRTCHNL2_OP_GET_LAN_MEMORY_REGIONS,
>   		.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN,
> +		.send_buf.iov_len =
> +			sizeof(struct virtchnl2_get_lan_memory_regions) +
> +			sizeof(struct virtchnl2_mem_region),
>   		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
>   	};
>   	int num_regions, size;
> @@ -1028,6 +1031,8 @@ static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
>   		return -ENOMEM;
>   
>   	xn_params.recv_buf.iov_base = rcvd_regions;
> +	rcvd_regions->num_memory_regions = cpu_to_le16(1);
> +	xn_params.send_buf.iov_base = rcvd_regions;
>   	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
>   	if (reply_sz < 0)
>   		return reply_sz;


Kind regards,

Paul
