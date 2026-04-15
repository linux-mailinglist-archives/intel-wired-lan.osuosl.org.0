Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qH1qMw2S32l0WAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 15:26:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44234404C26
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 15:26:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D66CF852A7;
	Wed, 15 Apr 2026 13:26:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0U3xX-og9QFj; Wed, 15 Apr 2026 13:26:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 348AA852AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776259595;
	bh=7m2ezkIqo2uvDe3HqFJVxl++HhvSoFZ87y2IFRDhQfc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JhcXn6Ou39/G1OhSaBeHBVXUBCPtH4wZyZU8Met0SVwA3K2UaRKfSISVoIT3Bt7Hh
	 Fh9pwvrZRXoKjRAscoWqbiaxr87sxHnu+NaYE2eG8DsvT6siTOz+puDNLu/W/YeEDO
	 mYp3t1IRIEh3eC9Muv6+frzu+0lu1ayhkP9ObilkBQyIsnPUVkuBCJCm32RSpaDKgo
	 kuuaw+oXEXiW+/TBNrEKiAwHYzvyG3grMZXDF3Ysm4hru5+FVvjmKdDDGjjdPvGfiW
	 Irogq958fHad8A/TbrS5nNocq79+9e5xHeMZ12AkupsWo58XDFl36IK0nYCnZbkTKf
	 gy/0I2vXUeuYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 348AA852AC;
	Wed, 15 Apr 2026 13:26:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C876C237
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 13:26:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AE61161B28
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 13:26:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tbm1Q5Vl9vYz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 13:26:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BE2B161ACF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE2B161ACF
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE2B161ACF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 13:26:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3184744275;
 Wed, 15 Apr 2026 13:26:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B309EC19424;
 Wed, 15 Apr 2026 13:26:30 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kiran.patil@intel.com
Date: Wed, 15 Apr 2026 14:26:11 +0100
Message-ID: <20260415132610.803526-2-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260413073035.4082204-3-aleksandr.loktionov@intel.com>
References: <20260413073035.4082204-3-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776259592;
 bh=DENY9p9CKwihwW347KzzpeYMyVvwNcN5J3ZSHZcwozU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bf7vnJgpzCsbPUH8WG8aESx8Oi+xPqzTkKQaUX7Pc5u2zei199VgIVJlfLq5cU4v9
 TGajpwWHwS8L9OyXYRva8Iv/nJm3OJj1vLNpCyfTKA/MnGfZUAvSVIQ/irb6M1vPGI
 UZ/oAZ0211kBLmKkwVazf18jzrnthWWp5eGlXWWilmllIaKghpfjLJ4XiGSFjLTDMU
 zeP86rJ4KfySFbfchl5zVQHbNaci1v7fIEwY8mEgOl0inXbgomqSDYoiZZ0f2WqjEY
 HxNJrENRJAV4FdDNtfNQpLJGIrIFUlXbr2IGm7IpEY4juAuAOVw0Met80TpFdcYMFQ
 z6Q+AO+uypEtQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bf7vnJgp
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/5] iavf: fix error path in
 iavf_request_misc_irq
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:kiran.patil@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 44234404C26
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
iavf: fix error path in iavf_request_misc_irq

This patch drops the free_irq() call from the error path of
iavf_request_misc_irq() when request_irq() fails. This is intended to
prevent a kernel warning when freeing an unrequested vector.

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index dad001abc9086..ab5f5adc2d3c2 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -587,7 +587,6 @@ static int iavf_request_misc_irq(struct iavf_adapter *adapter)
>  		dev_err(&adapter->pdev->dev,
>  			"request_irq for %s failed: %d\n",
>  			adapter->misc_vector_name, err);
> -		free_irq(adapter->msix_entries[0].vector, netdev);

Does this patch completely fix the warning?

If request_irq() fails, iavf_request_misc_irq() returns an error but leaves
adapter->msix_entries allocated.

In caller error handling paths like iavf_disable_vf() which clean up after a
failure, iavf_free_misc_irq() is called:

static void iavf_free_misc_irq(struct iavf_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	if (!adapter->msix_entries)
		return;

	free_irq(adapter->msix_entries[0].vector, netdev);
}

Since adapter->msix_entries is still allocated, the check passes and free_irq()
is called on the unrequested vector anyway, triggering the exact same warning.

Does the driver need to explicitly track whether the IRQ was successfully
requested?

>  	}
>  	return err;
>  }
