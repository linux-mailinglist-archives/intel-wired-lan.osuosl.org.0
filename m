Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJHsNOj01Wn4/gcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 08:25:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAA23B78BE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 08:25:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6924740EBD;
	Wed,  8 Apr 2026 06:25:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yZZ9ZoICd0W6; Wed,  8 Apr 2026 06:25:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBBEE40EFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775629537;
	bh=ZLZu3VsFQfVxP/eY74AIrfDgLKB1S2QI7rVw3NUafvM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hAwshcFzhh6PUQDqtVSxM/5KwL/2vdI496RVhQmnENyiJnwT6VNZyqENH5zVkKvga
	 VgA6w4SgU0ferzgpQ5ZpKb8RepiMpX0JBjCkcFIo6IKk0h2jPPN21ZTEoqZD2bCddR
	 VfpPSbFcJDgcwMx+cUIova9W4b84XVSZ7pNLXZCa6cH0avhcMfl/rfEL+ZiZ+xgTft
	 mh3hWDOHNa8z18mS+L68pezH9axqLshhTGZJANHE6zFRcMckjpdI96rLa74XP+y7FX
	 XYjQ3PVQrnkncFQ9pvSukD9UoNkO4kepMQqABwKLk4PmN+nFUM61cUkb8d50ekHoEC
	 IIzTxv3n2Z2Dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBBEE40EFD;
	Wed,  8 Apr 2026 06:25:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 16C84237
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 06:25:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0AE740071
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 06:25:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qRmVDrXA0kFS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 06:25:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A9EFA4002D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9EFA4002D
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A9EFA4002D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 06:25:32 +0000 (UTC)
Received: from [192.168.2.229] (p5dc55707.dip0.t-ipconnect.de [93.197.87.7])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1AC894C2C37F04;
 Wed, 08 Apr 2026 08:24:36 +0200 (CEST)
Message-ID: <22f2d325-fc2a-4801-91b5-b64fac4d86e9@molgen.mpg.de>
Date: Wed, 8 Apr 2026 08:24:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Dave Ertman <david.m.ertman@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, stable@vger.kernel.org
References: <20260406145641.1020623-1-jtornosm@redhat.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260406145641.1020623-1-jtornosm@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix VF queue configuration
 with low MTU values
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[smtp4.osuosl.org:server fail,mpg.de:server fail,molgen.mpg.de:server fail,osuosl.org:server fail];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:michal.swiatkowski@linux.intel.com,m:david.m.ertman@intel.com,m:michal.kubiak@intel.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mpg.de:email,molgen.mpg.de:mid];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	DMARC_NA(0.00)[mpg.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 6DAA23B78BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dear Jose,


Thank you for the patch.

Am 06.04.26 um 16:56 schrieb Jose Ignacio Tornos Martinez:
> The ice driver's VF queue configuration validation rejects
> databuffer_size values below 1024 bytes, which prevents VFs from
> using MTU values below 871 bytes.
> 
> The iavf driver calculates databuffer_size based on the MTU using:
>    databuffer_size = ALIGN(MTU + LIBETH_RX_LL_LEN, 128)
> 
> where LIBETH_RX_LL_LEN = 26 (ETH_HLEN + 2*VLAN_HLEN + ETH_FCS_LEN).
> 
> For MTU values below 871:
>    MTU 870: 870 + 26 = 896, aligned to 128 = 896 (< 1024, rejected)
>    MTU 871: 871 + 26 = 897, aligned to 128 = 1024 (>= 1024, accepted)
> 
> The 1024-byte minimum seems unnecessarily restrictive, because the hardware
> supports databuffer_size as low as 128 bytes (the alignment boundary),
> which should allow MTU values down to the standard minimum of 68 bytes.
> 
> I haven't found the reason why the limit was configured in the commit
> 9c7dd7566d18 ("ice: add validation in OP_CONFIG_VSI_QUEUES VF message"), so
> with no more information and since it is working, change the minimum
> databuffer_size validation from 1024 to 128 bytes to allow standard low
> MTU values while still preventing invalid configurations.

Should you resend, having the reproducer script would be nice to have.

> Fixes: 9c7dd7566d18 ("ice: add validation in OP_CONFIG_VSI_QUEUES VF message")
> cc: stable@vger.kernel.org
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> ---
>   drivers/net/ethernet/intel/ice/virt/queues.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/virt/queues.c b/drivers/net/ethernet/intel/ice/virt/queues.c
> index f73d5a3e83d4..31be2f76181c 100644
> --- a/drivers/net/ethernet/intel/ice/virt/queues.c
> +++ b/drivers/net/ethernet/intel/ice/virt/queues.c
> @@ -840,7 +840,7 @@ int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>   
>   			if (qpi->rxq.databuffer_size != 0 &&
>   			    (qpi->rxq.databuffer_size > ((16 * 1024) - 128) ||
> -			     qpi->rxq.databuffer_size < 1024))
> +			     qpi->rxq.databuffer_size < 128))
>   				goto error_param;
>   
>   			ring->rx_buf_len = qpi->rxq.databuffer_size;

Either way:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
