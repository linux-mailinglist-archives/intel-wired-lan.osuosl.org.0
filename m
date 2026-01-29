Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJCCJ+LVe2klIwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 22:49:22 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD86B511B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 22:49:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5268A80260;
	Thu, 29 Jan 2026 21:49:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XTFhAhZWz1uX; Thu, 29 Jan 2026 21:49:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6C9B822B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769723358;
	bh=HS9+mKkK1+CIQtNU4iXuosmJ1Nl4SIvoP415kYW04bs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qPvbiQWktdvS+KqynSEhrLD/XM/gbPlVjHdpez1Qqdmlifjqia1qz769DwbUSz8Nj
	 APDIcgO7RcJDnaZzoFSQAaLyahdDrOs4hSRKDpCdkW2ckapJsJJrQyYmidNvuYvngN
	 4eS0uiU/dXlsuQZuPLKtFKnbmfpbNw5ivHM72/4huglRuAVNU+antXqQrQAcCZd0ZX
	 DnM8Zi8mueRnijRDsIrWAaKEcxo/GnGxcphQFlpCNglotYlBXe5Dg/WJmsWTZl1/PE
	 Sz3ah58xaQlFCgnIe5WMHWuTUkZQ4f71el8nNCEbkmHNVMpTv+qL3PuCf2TAz8EFjV
	 imuRK+R1jjiZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6C9B822B7;
	Thu, 29 Jan 2026 21:49:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 79C22195
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 21:49:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6814840575
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 21:49:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HcZ7INUO_S7K for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 21:49:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5887040233
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5887040233
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5887040233
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 21:49:14 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af758.dynamic.kabel-deutschland.de
 [95.90.247.88])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 986794C442FB68;
 Thu, 29 Jan 2026 22:48:41 +0100 (CET)
Message-ID: <f5759be2-f48b-4a0e-afdf-38a201fa29be@molgen.mpg.de>
Date: Thu, 29 Jan 2026 22:48:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>
Cc: netdev@vger.kernel.org, ivecera@redhat.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
References: <20260129095723.7269-1-poros@redhat.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260129095723.7269-1-poros@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix PTP use-after-free
 during reset
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:mateusz.polchlopek@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,molgen.mpg.de:mid];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,redhat.com,intel.com,gmail.com,google.com,lunn.ch,kernel.org,davemloft.net,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: ACD86B511B
X-Rspamd-Action: no action

Dear Petr,


Thank you for the patch.

Am 29.01.26 um 10:57 schrieb Petr Oros:
> Commit 7c01dbfc8a1c5f ("iavf: periodically cache PHC time") introduced a
> worker to cache PHC time, but failed to stop it during reset or disable.
> 
> This creates a race condition where `iavf_reset_task()` or
> `iavf_disable_vf()` free adapter resources (AQ) while the worker is still
> running. If the worker triggers `iavf_queue_ptp_cmd()` during teardown, it
> accesses freed memory/locks, leading to a crash.

Do you have a stacktrace, and could you add an excerpt, so people 
hitting this, can more easily find the commit?

> Fix this by calling `iavf_ptp_release()` before tearing down the adapter.
> This ensures `ptp_clock_unregister()` synchronously cancels the worker and
> cleans up the chardev before the backing resources are destroyed.
> 
> Fixes: 7c01dbfc8a1c5f ("iavf: periodically cache PHC time")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 4b0fc8f354bc90..0dd58ce5a53ab1 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3025,6 +3025,8 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
>   
>   	adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
>   
> +	iavf_ptp_release(adapter);
> +
>   	/* We don't use netif_running() because it may be true prior to
>   	 * ndo_open() returning, so we can't assume it means all our open
>   	 * tasks have finished, since we're not holding the rtnl_lock here.
> @@ -3200,6 +3202,8 @@ static void iavf_reset_task(struct work_struct *work)
>   	iavf_change_state(adapter, __IAVF_RESETTING);
>   	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
>   
> +	iavf_ptp_release(adapter);
> +
>   	/* free the Tx/Rx rings and descriptors, might be better to just
>   	 * re-use them sometime in the future
>   	 */

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
