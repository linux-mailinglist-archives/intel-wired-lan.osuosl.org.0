Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJgmDC3cnWmuSQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:13:17 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 420C018A5E0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:13:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 161CF60A6E;
	Tue, 24 Feb 2026 17:13:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0h7WnEgEadVb; Tue, 24 Feb 2026 17:13:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FD72607BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771953193;
	bh=+AMbmcoazwQBabJl7WQXC1Hv9TNkaRDHQkAdrx7z220=;
	h=Date:From:To:Cc:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From;
	b=N+kCbpRH4do0FO6nhcV1BTdY5v1fGMQ41zLhi2JkeRPCXlPL+ofaKeqBooBZpjZCf
	 5LUY060v0MPEN1yBDH5uN7ZYNx1FE60QKseYE0QnH971bTCWWjdPNEkxQkTyMxoNoY
	 K9wtQKctVqXe/2XLUi36v66Q5u7nkaK1a6HpAxD8TP3R2sSwXDVx5E3ukNj/xMB9HW
	 LTS76zbgkNfukcnrLwaGhyHLaMBeMcDDf0B4ww6OvNeSn0EpRug5QtDBJStmO2yeVc
	 TVboZBNRKGC+Td8IpEXNgqAIw4u3KX4A66hfoygl2A1lxOqD5Bm9j33AGFKb9vrjWl
	 5Uo7ztlrFajzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FD72607BA;
	Tue, 24 Feb 2026 17:13:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 46EA41B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:13:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 37F404214A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:13:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pAjauO7b9RjO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 17:13:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=helgaas@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8A65642143
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A65642143
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A65642143
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:13:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C62E943808;
 Tue, 24 Feb 2026 17:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79D1FC116D0;
 Tue, 24 Feb 2026 17:13:09 +0000 (UTC)
Date: Tue, 24 Feb 2026 11:13:08 -0600
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
Message-ID: <20260224171308.GA3737399@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260224111044.3487873-1-mika.westerberg@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771953189;
 bh=NulEL6fqLs0czE4T5z48TsWluNiFQuZ3KFDTeVj9E5M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=DCTNLL770X8FvQXcamjZnxBqUTQ2CgMojtGXy8g3eVWwMWxhX3P/EsK9vjcXgD0+K
 s6yFtX+c0GRBW/HxZ5RT9uuQzg9kmS2MdSYUOiqMULwBLscaI7RjzRxsZnSVt7G08c
 2T4KsgoB9f5RmMUMf3eCcMs3GKzMflLAEZpCCMztlXClKHu3aEEVGW0ggvg7OzUYtG
 kud+6vVxeR8FMigP7AWYN2aG5hFxnfDJgDAJ7Ui+GIlmChOyUdNsTqWCKsfbT7frFn
 Px5Snu8wU+mMju5n1nHOpOFV5j0LZ5TDa/UyxqVrKjIKdAZIdzDSVa8zdxEDFtkY9M
 6l0ndDg9qmong==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DCTNLL77
Subject: Re: [Intel-wired-lan] [PATCH 0/5] PCI / igc: Improvements related
 to PTM enabling
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[helgaas@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 420C018A5E0
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 12:10:39PM +0100, Mika Westerberg wrote:
> Hi all,
> 
> There is (still) an issue with Linux PCIe PTM enabling that happens because
> Linux automatically enables PTM if certain capabilities are set. However,
> turns out this is not enough because once we enumerate PCIe Switch Upstream
> port we also enable PTM but the Downstream Ports are not yet enumerated.
> This triggers floods of AER errors like this:
> 
>       pcieport 0000:00:07.1: AER: Multiple Uncorrectable (Non-Fatal) error message received from 0000:00:07.1
>       pcieport 0000:00:07.1: PCIe Bus Error: severity=Uncorrectable (Non-Fatal), type=Transaction Layer, (Receiver ID)
>       pcieport 0000:00:07.1:   device [8086:d44f] error status/mask=00200000/00000000
>       pcieport 0000:00:07.1:    [21] ACSViol                (First)
>       pcieport 0000:00:07.1: AER:   TLP Header: 0x34000000 0x00000052 0x00000000 0x00000000
>       pcieport 0000:00:07.1: AER: device recovery successful
>       pcieport 0000:00:07.1: AER: Uncorrectable (Non-Fatal) error message received from 0000:00:07.1
> 
> We have ACS Source Validation enabled so Requester ID 0 which is sent by
> the not-enumerated Downstream Port triggers the ACS violation AER.
> 
> This can be prevented by enabling PTM when the whole topology has been
> enumerated and doing it like that seems to be reasonable anyway because we
> only have a couple of drivers enabling it now so it does not make sense to
> enable otherwise as it consumes bandwidth.
> 
> I did that fix and the problem went away but wanted to test with a device
> and driver that actually enables PTM. I have a couple of igc NICs here that
> has this support. However, when testing I noticed that during power state
> transitions we still get errors like this from igc:
> 
>   igc 0000:03:00.0 enp3s0: Timeout reading IGC_PTM_STAT register
> 
> and after this PTM for the device stays disabled.
> 
> This series includes fixes for igc that deal with the issues I found and
> now PTM gets succesfully enabled and works accross suspend and runtime
> suspend of igc, and there are no flood of AER errors as above. While there
> there is one cleanup patch in the middle that drops unused parameter.
> 
> Mika Westerberg (5):
>   igc: Call netif_queue_set_napi() with rntl locked
>   igc: Let the PCI core deal with the PM resume flow
>   igc: Don't reset the hardware on suspend path
>   PCI/PTM: Drop granularity parameter from pci_enable_ptm()
>   PCI/PTM: Do not enable PTM automatically for Root and Switch Upstream Ports

These last two don't look dependent on the igc patches, so I applied
them to pci/ptm for v7.1, thanks!

Let me know if there is some dependency and I can ack them and drop
them from the PCI tree.

>  drivers/net/ethernet/intel/ice/ice_main.c     |  2 +-
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |  2 +-
>  drivers/net/ethernet/intel/igc/igc.h          |  2 +-
>  drivers/net/ethernet/intel/igc/igc_ethtool.c  |  6 +-
>  drivers/net/ethernet/intel/igc/igc_main.c     | 33 ++++----
>  .../net/ethernet/mellanox/mlx5/core/main.c    |  2 +-
>  drivers/pci/pcie/ptm.c                        | 77 ++++++++++---------
>  include/linux/pci.h                           |  6 +-
>  8 files changed, 64 insertions(+), 66 deletions(-)
> 
> -- 
> 2.50.1
> 
