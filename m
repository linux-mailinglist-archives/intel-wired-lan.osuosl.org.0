Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mO9sJEIz1Wly2QcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 18:39:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 044673B1EA9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 18:39:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF64960D96;
	Tue,  7 Apr 2026 16:39:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aywLYYOP7tT0; Tue,  7 Apr 2026 16:39:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44EC260D9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775579967;
	bh=NbTBixRqYDlQeL95GG9hAoNz+4WwubnNaEGA+7z76QI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZIntxKn4DB6jMDNVZ9A0Mm/fAz91IMfJaTOmz1Ee1WTT/pBsXpCOhBGXsfwWFym8Z
	 WAiko9wONpqtkKMEgSzyxoeRbms3urJU8tUmxd+2RUDMVGwkrq8XN5XELsy+Nl6lIX
	 PezXNM47IJhf26u9d1SBUYwciaJ6C1s2xLwT75V9mRciziAdHn5dbsEjvAOQpjRsWD
	 dYtL3yf2UdGwf1ruDS1XrFzyIWd2F6eyEGT8KsdtPQ4vUoZJ1WIziztPEbFH42hxTo
	 WcPE/P3l2hCmwexm8J2ssjDFPvYjaKeIVcjQKngV+z0V/MYcuqSncRE0LGpsUjXEhw
	 GL1rm4XgQFRvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44EC260D9F;
	Tue,  7 Apr 2026 16:39:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E95EB1F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 16:39:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DAC5F40550
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 16:39:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FdWsQdvW7hIm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2026 16:39:24 +0000 (UTC)
X-Greylist: delayed 473 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 07 Apr 2026 16:39:23 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E4DC240195
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4DC240195
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E4DC240195
 for <intel-wired-lan@osuosl.org>; Tue,  7 Apr 2026 16:39:23 +0000 (UTC)
Received: from [192.168.2.229] (p5dc55707.dip0.t-ipconnect.de [93.197.87.7])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 15C5C4C2C37D56;
 Tue, 07 Apr 2026 18:31:17 +0200 (CEST)
Message-ID: <c6763568-7773-43af-a43f-dcf6fc4ab0eb@molgen.mpg.de>
Date: Tue, 7 Apr 2026 18:31:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matt Vollrath <tactii@gmail.com>
Cc: Kohei Enju <kohei@enjuk.jp>, intel-wired-lan@osuosl.org,
 stable@vger.kernel.org
References: <20260407161447.43645-1-tactii@gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260407161447.43645-1-tactii@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Cleanup PTP pins on
 probe failure
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:email,mpg.de:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:kohei@enjuk.jp,m:intel-wired-lan@osuosl.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[mpg.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 044673B1EA9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dear Matt,


Thank you for the patch. Should you resend you could spell the verb 
*clean up* with a space:

 > i40e: Clean PTP pins up on probe failure

or

 > i40e: Clean up PTP pins on probe failure

But it’s not important.

Am 07.04.26 um 18:14 schrieb Matt Vollrath:
> PTP pin structs are allocated early in probe, but never cleaned up.
> 
> Fix this by calling i40e_ptp_free_pins in the error path.
> 
> To support this, i40e_ptp_free_pins is added to the header and
> pin_config is correctly nullified after being freed.
> 
> This has been an issue since i40e_ptp_alloc_pins was introduced.
> 
> Fixes: 1050713026a08 ("i40e: add support for PTP external synchronization clock")
> Reported-by: Kohei Enju <kohei@enjuk.jp>
> Cc: stable@vger.kernel.org
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
>   drivers/net/ethernet/intel/i40e/i40e_ptp.c  | 3 ++-
>   3 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index dcb50c2e1aa2..83e780919ac9 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -1318,6 +1318,7 @@ void i40e_ptp_restore_hw_time(struct i40e_pf *pf);
>   void i40e_ptp_init(struct i40e_pf *pf);
>   void i40e_ptp_stop(struct i40e_pf *pf);
>   int i40e_ptp_alloc_pins(struct i40e_pf *pf);
> +void i40e_ptp_free_pins(struct i40e_pf *pf);
>   int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset);
>   int i40e_is_vsi_uplink_mode_veb(struct i40e_vsi *vsi);
>   int i40e_get_partition_bw_setting(struct i40e_pf *pf);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 926d001b2150..c7062aa476dd 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16112,6 +16112,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	i40e_clear_interrupt_scheme(pf);
>   	kfree(pf->vsi);
>   err_switch_setup:
> +	i40e_ptp_free_pins(pf);
>   	i40e_reset_interrupt_capability(pf);
>   	timer_shutdown_sync(&pf->service_timer);
>   err_mac_addr:
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> index 404a716db8da..7d07c389bb23 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -940,12 +940,13 @@ int i40e_ptp_hwtstamp_get(struct net_device *netdev,
>    *
>    * Release memory allocated for PTP pins.
>    **/
> -static void i40e_ptp_free_pins(struct i40e_pf *pf)
> +void i40e_ptp_free_pins(struct i40e_pf *pf)
>   {
>   	if (i40e_is_ptp_pin_dev(&pf->hw)) {
>   		kfree(pf->ptp_pins);
>   		kfree(pf->ptp_caps.pin_config);
>   		pf->ptp_pins = NULL;
> +		pf->ptp_caps.pin_config = NULL;
>   	}
>   }

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
