Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGmhMhb8FWovggcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 22:01:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 309CF5DC2ED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 22:01:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2046B4055F;
	Tue, 26 May 2026 20:01:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jdF98ycCXcNh; Tue, 26 May 2026 20:01:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69C6840562
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779825682;
	bh=1qxnmKQGUKtoFj3/nGD5Rn2Gfy5r6REEQNVEGh2K3ms=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hN4irev6mq/Mgqpqqai6YYwt4+SsTTv0Wdl1HuRbhjVD3OH30ZyIIgX3k72cq5w9n
	 MC+bdKOH0HWQs5hzh/IX2UFC5pkuXXp6t1RlrAwEpNFZOr/jKOgqbphY36eDBNhzvw
	 /y+9ywvoxkDmDqY/o2sWjp0IDL+9+oQ0KW5iQcLbBuQA9MOMyTDhcSJFv4Eu9ICExP
	 7i7kqRk8TsVN4r7eKcRWF0OtSyTOE+6HIaS79vNPtGryipIMkr8qXitqv6Xb3Y9pq8
	 Xs7G+bn0SY0GNTYTNvK8g02VRuEfu4JWySTp88xc98NKntermGdKFduc3/BlN1kIrp
	 w6dhchdVDzBEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69C6840562;
	Tue, 26 May 2026 20:01:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 37303265
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 20:01:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1CCA080ED7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 20:01:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id URIrF0Kefs6D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 20:01:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 82DCB80E9F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82DCB80E9F
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 82DCB80E9F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 20:01:19 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id E701742ACD;
 Tue, 26 May 2026 20:01:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC84F1F000E9;
 Tue, 26 May 2026 20:01:16 +0000 (UTC)
Date: Tue, 26 May 2026 21:01:14 +0100
From: Simon Horman <horms@kernel.org>
To: Ashwin Gundarapu <linuxuser509@zohomail.in>
Cc: anthonylnguyen <anthony.l.nguyen@intel.com>,
 "anthony.l.nguyen@intel.com" <przemyslaw.kitszel@intel.com>,
 andrewnetdev <andrew+netdev@lunn.ch>, davem <davem@davemloft.net>,
 edumazet <edumazet@google.com>, kuba <kuba@kernel.org>,
 pabeni <pabeni@redhat.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 netdev <netdev@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <20260526200114.GD2256768@horms.kernel.org>
References: <19e537fa55c.56218d6244367.1765806925055659075@zohomail.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19e537fa55c.56218d6244367.1765806925055659075@zohomail.in>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1779825678;
 bh=1qxnmKQGUKtoFj3/nGD5Rn2Gfy5r6REEQNVEGh2K3ms=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=XUAlP0dm/G60yd+smYcUeLELrUuSSrHXbnAXU/Q1+cjxZlg/jZGq5x/8aQ9k/lp2/
 75qT1tMlIyHUDx14RtalRuKuqkKqC8XTO4xf40eSqk8kGMSRI1W/sLGMy6+tmmDErx
 sSZAyp3JucSrQEkEjIY2KLW6wuLFNU0dXlzak8CdRg/LcUk+jdCg2btwH3M4NAXuIo
 ta1bepz6hgmjF13VWpiqaDUZ8cnOzG8cEDiz1Iam/Pw3sN7Lep0xIjKRNYHBq9fD/G
 Amr42UO8/ZtBc1rqraAWIzPxzn0wqy/AanF5JMxvlsm7V6WQB/s+SQ01uD/mbePgGu
 0E+JZaGxaZsPg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20260515 header.b=XUAlP0dm
Subject: Re: [Intel-wired-lan] [PATCH net-next] e1000e: fix memory leak of
 msix_entries on MSI-X failure
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linuxuser509@zohomail.in,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,sashiko.dev:url,osuosl.org:dkim,horms.kernel.org:mid,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 309CF5DC2ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, May 23, 2026 at 11:52:14AM +0530, Ashwin Gundarapu wrote:
> From: Ashwin Gundarapu <linuxuser509@zohomail.in>
> Date: Sat, 23 May 2026 11:49:40 +0530
> Subject: [PATCH] e1000e: fix memory leak of msix_entries on MSI-X failure
> 
> When MSI-X initialization fails, the driver falls through to try
> MSI or legacy interrupts. However, the msix_entries array allocated
> earlier is not freed, causing a memory leak. Free it and set to
> NULL before falling through to the MSI fallback path.
> 
> Found by code inspection.
> 
> Signed-off-by: Ashwin Gundarapu <linuxuser509@zohomail.in>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 7ce0cc8ab8f4..1526069d7fc1 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -2065,10 +2065,12 @@ void e1000e_set_interrupt_capability(struct e1000_adapter *adapter)
>  							    a->num_vectors);
>  				if (err > 0)
>  					return;
> -			}
> -			/* MSI-X failed, so fall through and try MSI */
> -			e_err("Failed to initialize MSI-X interrupts.  Falling back to MSI interrupts.\n");
> -			e1000e_reset_interrupt_capability(adapter);
> +                        }
> +                        /* MSI-X failed, so fall through and try MSI */
> +                        e_err("Failed to initialize MSI-X interrupts.  Falling back to MSI interrupts.\n");
> +                        kfree(adapter->msix_entries);
> +                        adapter->msix_entries = NULL;
> +                        e1000e_reset_interrupt_capability(adapter);

Hi Ashwin,

e1000e_reset_interrupt_capability() already handles freeing (and NULLing)
msix_entries, and it does so after calling pci_disable_msix().

This patch seems to have the effect of bypassing the call to
pci_disable_msix().

Are you sure this is fixing a memory leak as described?

Flagged by https://sashiko.dev/ and https://netdev-ai.bots.linux.dev/sashiko/

>  		}
>  		adapter->int_mode = E1000E_INT_MODE_MSI;
>  		fallthrough;
> --
> 2.43.0
> 
> 
