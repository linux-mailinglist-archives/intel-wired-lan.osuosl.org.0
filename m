Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494D18AE4E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 13:52:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A450F404A6;
	Tue, 23 Apr 2024 11:52:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WXBacDkJvyNH; Tue, 23 Apr 2024 11:52:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC483400D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713873157;
	bh=b08ZWZnzYPmUi2xmY3LoMKTD0DVBIwvuj/6aUIUX0WM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MmYw7kYFDv1AsO9jof7n9iqxiRY2Em2wuKYpQ3cnYTX5/CC4spHu7GtHW1JvSCGQt
	 IBD6AOEivi2e/tgfuNtThWohd5uvTkaYWLvLLRxRzLiJO/0iW+KDDt9bKP8chzwO1h
	 4QgHD/fUACnmjvE8d6m/J200DnlEZjqWujdf7CRZ/MjavQIpPNMdsACc4Olu1LXRkX
	 bMqXjGI3DNNI38hNBs/1eOpTblk28GamMvDYToaL+qvrTHiqhQDTy4HkjAPyfG0Z7m
	 PSiDqQb+bwvVBcloRcqWBFa9z+ggLK2+VkEZlyGVGlv7SSG/Qr6Wa0dTFA70QZdk8E
	 jP0vgPOkEmifA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC483400D9;
	Tue, 23 Apr 2024 11:52:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7546F1BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:52:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D7A940464
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:52:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9RhC3uKnPZzA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 11:52:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 21D61400D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21D61400D9
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21D61400D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:52:32 +0000 (UTC)
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B75D061E5FE36;
 Tue, 23 Apr 2024 13:52:26 +0200 (CEST)
Message-ID: <5d30a9df-224e-4285-94d1-53f6995d648a@molgen.mpg.de>
Date: Tue, 23 Apr 2024 13:52:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Corinna Vinschen <vinschen@redhat.com>
References: <20240423102446.901450-1-vinschen@redhat.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240423102446.901450-1-vinschen@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] igb: cope with large MAX_SKB_FRAGS.
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Corinna,


Thank you for the patch.


Am 23.04.24 um 12:24 schrieb Corinna Vinschen:
> From: Paolo Abeni <pabeni@redhat.com>

It’d be great if you removed the trailing dot/period in the commit 
message summary.

> Sabrina reports that the igb driver does not cope well with large
> MAX_SKB_FRAG values: setting MAX_SKB_FRAG to 45 causes payload
> corruption on TX.
> 
> The root cause of the issue is that the driver does not take into
> account properly the (possibly large) shared info size when selecting
> the ring layout, and will try to fit two packets inside the same 4K
> page even when the 1st fraglist will trump over the 2nd head.
> 
> Address the issue forcing the driver to fit a single packet per page,
> leaving there enough room to store the (currently) largest possible
> skb_shared_info.

If you have a reproducer for this, it’d be great if you could document 
it in the commit message.

> Fixes: 3948b05950fd ("net: introduce a config option to tweak MAX_SKB_FRAG")
> Reported-by: Jan Tluka <jtluka@redhat.com>
> Reported-by: Jirka Hladky <jhladky@redhat.com>
> Reported-by: Sabrina Dubroca <sd@queasysnail.net>
> Tested-by: Sabrina Dubroca <sd@queasysnail.net>
> Tested-by: Corinna Vinschen <vinschen@redhat.com>
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index a3f100769e39..22fb2c322bca 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4833,6 +4833,7 @@ static void igb_set_rx_buffer_len(struct igb_adapter *adapter,
>   
>   #if (PAGE_SIZE < 8192)
>   	if (adapter->max_frame_size > IGB_MAX_FRAME_BUILD_SKB ||
> +	    SKB_HEAD_ALIGN(adapter->max_frame_size) > (PAGE_SIZE / 2) ||
>   	    rd32(E1000_RCTL) & E1000_RCTL_SBP)
>   		set_ring_uses_large_buffer(rx_ring);
>   #endif


Kind regards,

Paul
