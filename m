Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mPcsOo2CTmqvOAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 19:02:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AA1728FB4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 19:02:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=mKwEQ02m;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90DD880FAA;
	Wed,  8 Jul 2026 17:02:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hN3hw-00WZDg; Wed,  8 Jul 2026 17:02:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAC2E80EA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783530121;
	bh=KSKY6okBm/BEPJo91XO3GLsJKMSPpRwBxe9D/gQTvZ0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mKwEQ02mXknYxyGVhaBAD9/gg+NB1EeVItsIJ0tYeGOiLoCrX9lJMoZpkeGPYQLdj
	 25YKqYkyCeD8oFgEeyEEXqO0LESfYRockviQEMUXYOPVrTsNHmrH4pOV6ra8p3gpEv
	 16WvhVp6GZeWm8aQDO6hDqUfpmsh6ZSvNbCjsm9/4fdFNQCI78fVdD9Q7EOojZqgKY
	 c/Fvr2Nt1yVGiJH7FDpNoMSpYRA5RCEzVWtdWASVmh2ojXDWT7+T9cvVLEEq0uVGut
	 qztUN1K4i//ubOz2lvbSUSQAqoWN7hfpNobcmcELQPltOYToGzb8kkKTOWDAqUYC6q
	 XJvI52yr0b1rw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAC2E80EA1;
	Wed,  8 Jul 2026 17:02:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B29E8332C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 17:02:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D25DC80EA1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 17:01:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4qAat7XcUGYK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 17:01:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0A60680E5D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A60680E5D
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A60680E5D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 17:01:58 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 4376C42DC0;
 Wed,  8 Jul 2026 17:01:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 062EF1F00A3A;
 Wed,  8 Jul 2026 17:01:56 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: jedrzej.jagielski@intel.com
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org
Date: Wed,  8 Jul 2026 18:01:44 +0100
Message-ID: <20260708170145.1514345-1-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260702091553.57112-4-jedrzej.jagielski@intel.com>
References: <20260702091553.57112-4-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1783530118;
 bh=KSKY6okBm/BEPJo91XO3GLsJKMSPpRwBxe9D/gQTvZ0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Q4OSp1zNbfzcAicNOFtu1flScb2FORUdVExfIawmEbELOW/IDgweFGQPFcWSlk1mT
 vb8chaPPYgBosuG5L/7BiJPinRZHD2UId9OuwxO/A/D8z+5r0fqaI6l7PTvK4n8/0o
 Bm87As48V4vjSywvep8h92ec+VO/Cw/Yo2oLDaeukDruDK/UTnzpSVRk9nhsVvPRpw
 GzbHdByIBImutmWcX6o6h6C3zck19D6u3FgD0p12ZdqAIB6SbSLIyOCT+zqIMq4And
 F80+UobmRPaj/8xIPdIkOiIreJ0h47KS3wX0LUEhauvZLNPHGcZ1U6RjLhiCAu4ccm
 qoMQaDQGRdvVQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=Q4OSp1zN
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/6] ixgbe: E610: do not
 disable LSE on driver down/remove
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 08AA1728FB4

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ixgbe: E610: do not disable LSE on driver down/remove

This patch removes the calls to ixgbe_disable_link_status_events() in
ixgbe_down() and ixgbe_remove() for the E610 MAC. The intent is to keep
Link Status Events (LSE) enabled when the interface is down or unloading.

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 882021c436d0f..83098bf522e42 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
[ ... ]
> @@ -6733,8 +6720,6 @@ void ixgbe_down(struct ixgbe_adapter *adapter)
>  
>  	ixgbe_clean_all_tx_rings(adapter);
>  	ixgbe_clean_all_rx_rings(adapter);
> -	if (adapter->hw.mac.type == ixgbe_mac_e610)
> -		ixgbe_disable_link_status_events(adapter);

[Severity: High]
Does removing this call allow unhandled asynchronous LSE events to permanently
block the ACI mailbox?

If a link event occurs while the driver is down, the firmware can queue an
event in the ACI queue. Upon the next driver load, before the service task
can clear events, commands like ixgbe_get_flash_data() are called.

In ixgbe_aci_send_cmd_execute(), if the EV bit is asserted, the synchronous
response is overwritten by the unhandled asynchronous event from HIDA_2:

        if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C))
                for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
                        raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));

        if (desc->opcode != cpu_to_le16(opcode) &&
            opcode != ixgbe_aci_opc_get_fw_event)
                return -EIO;

Could this result in an opcode mismatch and return -EIO for all future
commands, causing device initialization to fail?

>  }
>  
>  /**
[ ... ]
> @@ -12080,9 +12065,6 @@ static void ixgbe_remove(struct pci_dev *pdev)
>  	set_bit(__IXGBE_REMOVING, &adapter->state);
>  	cancel_work_sync(&adapter->service_task);
>  
> -	if (adapter->hw.mac.type == ixgbe_mac_e610)
> -		ixgbe_disable_link_status_events(adapter);
> -

[Severity: High]
Can the same mailbox blockage happen here during driver unload?

If LSE is not disabled on remove, a link state change (such as a cable
unplug) after unload could leave the ACI queue with pending events.

Would this cause the same -EIO failure during the subsequent ixgbe_probe()
when the driver is loaded again?

>  	if (adapter->mii_bus)
>  		mdiobus_unregister(adapter->mii_bus);
>
