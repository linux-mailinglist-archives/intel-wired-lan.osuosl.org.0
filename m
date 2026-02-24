Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOMIAsbYnWk0SQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 17:58:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B2E18A306
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 17:58:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE7D784554;
	Tue, 24 Feb 2026 16:58:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kWrcF6H0QKjz; Tue, 24 Feb 2026 16:58:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A8068454D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771952323;
	bh=Zox7phvQEWkmUjnhvtNvfEHwMsGMw74VYAnRhilWexk=;
	h=Date:From:To:Cc:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From;
	b=SAq4J2+LcbfsPWNKzl78MxEVnHXH/owX2gb9448lcjy6ntRnoW+wFfhhQH9qOd/cx
	 3UbXHo1nyQrquud7ZnPXQU2jB4u2mjxE+31vVxNSzHgJWcnlHPx49p7yiP0wg9pFC2
	 VOiPEuL2txvHZNYsGn16KXRteJSLvMhZUraF6AJt9t5F83iLO0pa4E5hP6WouJiwPo
	 ogHggUXRnF1Y9zSSacNMA6g0j1ngVILkknXyzf0T5O8JC0crb3+lUv/9UFSfXkAA5g
	 ZhaXWKKZAVtNUjDfgrKp1LC9ZPprHpagRNk+oQqE4IOhjXXCR78s5GCB1oaoKpn+fd
	 OTW87Jp5ZkAmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A8068454D;
	Tue, 24 Feb 2026 16:58:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 48EAE249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 16:58:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 46708407DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 16:58:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6uHqtwiBilnD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 16:58:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=helgaas@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9BB5C40362
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BB5C40362
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BB5C40362
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 16:58:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A56A260053;
 Tue, 24 Feb 2026 16:58:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30BD2C116D0;
 Tue, 24 Feb 2026 16:58:39 +0000 (UTC)
Date: Tue, 24 Feb 2026 10:58:37 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Mika Westerberg <mika.westerberg@linux.intel.com>
Cc: linux-pci@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Bjorn Helgaas <bhelgaas@google.com>, Lukas Wunner <lukas@wunner.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Mark Bloch <mbloch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
Message-ID: <20260224165837.GA3736201@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260224111044.3487873-3-mika.westerberg@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771952319;
 bh=siQjsKnJuhuW3XUqku5HX25GJOs/BK8nuegDHFGMHIc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=DYMc6Wskj4xkhmLQdMdsuiEdJWI66KqbasbEvT1KFsX6E1TzKu52L6jtI10bVP97u
 n6YC1U3/juI+0meYG5LC2+/64CG23usJvSmZ3mlrd1S7179/rIsdhGHWwABwbdalk6
 tKYHjcpL+kdnnZcOkr+4UvWs/fnYyv3Fh6+7Y3X4jaPlJEmJ5MRTGoZZyFv7zH0hK0
 1Remt4YfQvRY1kuCWWzeeJJtjg6qaVxHUYjsF6ePqRzVzCCyDf8/iR8S1B94WiEq79
 6PNUwZxVN0/D3BXOfLHS4tB7ih+DUMs0OwRAy5HtXvNBtJd5gw0Gl9pTVnfAqu2RAx
 eqEEYdXDnvyHQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DYMc6Wsk
Subject: Re: [Intel-wired-lan] [PATCH 2/5] igc: Let the PCI core deal with
 the PM resume flow
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
X-Spamd-Result: default: False [2.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[helgaas@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.osuosl.org,google.com,wunner.de,intel.com,lunn.ch,davemloft.net,redhat.com,nvidia.com,kernel.org,gmail.com,linux.intel.com];
	FORGED_RECIPIENTS(0.00)[m:mika.westerberg@linux.intel.com,m:linux-pci@vger.kernel.org,m:bhelgaas@google.com,m:lukas@wunner.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:richardcochran@gmail.com,m:andriy.shevchenko@intel.com,m:vitaly.lifshits@intel.com,m:ilpo.jarvinen@linux.intel.com,m:vinicius.gomes@intel.com,m:dima.ruinskiy@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[helgaas@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.983];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 72B2E18A306
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 12:10:41PM +0100, Mika Westerberg wrote:
> Currently igc driver calls pci_set_power_state() and pci_restore_state()
> and the like to bring the device back from low power states. However,
> PCI core handles all this on behalf of the driver. Furthermore with PTM
> enabled the PCI core re-enables it on resume but the driver calls
> pci_restore_state() which ends up disabling it again.
> 
> For this reason let the PCI core handle the common PM resume flow.
> 
> Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

I love it, thanks a lot for doing this!

Do we still need the pci_enable_device_mem() and pci_set_master()
in __igc_resume()?

I suppose some of that is related to the pci_disable_device() in the
suspend path (__igc_shutdown()), but there are only a few dozen
drivers that do this, so I'm not sure it's essential.

> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 7ffd34bfa14e..99a4c99ddd57 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7526,9 +7526,6 @@ static int __igc_resume(struct device *dev)
>  	struct igc_hw *hw = &adapter->hw;
>  	u32 err, val;
>  
> -	pci_set_power_state(pdev, PCI_D0);
> -	pci_restore_state(pdev);
> -
>  	if (!pci_device_is_present(pdev))
>  		return -ENODEV;
>  	err = pci_enable_device_mem(pdev);
> @@ -7538,9 +7535,6 @@ static int __igc_resume(struct device *dev)
>  	}
>  	pci_set_master(pdev);
>  
> -	pci_enable_wake(pdev, PCI_D3hot, 0);
> -	pci_enable_wake(pdev, PCI_D3cold, 0);
> -
>  	if (igc_is_device_id_i226(hw))
>  		pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
>  
> -- 
> 2.50.1
> 
