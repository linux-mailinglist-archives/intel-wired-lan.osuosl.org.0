Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cM/aHMtb3mlACQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 17:22:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1763FBB4A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 17:22:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78F5242AC0;
	Tue, 14 Apr 2026 15:22:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2x7YCRCWGyA0; Tue, 14 Apr 2026 15:22:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB7F842ABD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776180169;
	bh=KS45GNRgOtw6kPaEsEXt8bD9u+4+IV8D7TszSgCsXP0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dU3NYUxpJ2DiiPdbQG958ZfehRTv4iOD3FcllhUCjlHjajCaZyI2vAbI1afKKY12J
	 eEfjnEQ9fuaCnBqxY5WtIv6qmYmeQAdGZoSqLUN44DiRq1YqUaxvBsD53Rr6UjhX0u
	 Fc7fkvFRObqL2EDdXkBqFnb6KFbDNO3+/UmzrANe8RU5mQXZhe/DjUObdMX1FjBtIK
	 SlaJgvjbBMeP3jVsPuYHlbqzaRXUjyqUMc1Hm+L8U7unosLouokR0DuMPxFFlXfItF
	 Z0hbfQVYlmepK6gP+/MSN8xbjGGpj01Kv+cdiZytIn+u0uH8EDp7DYULdHUzHhUU3X
	 BoDrCvj/VCx5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB7F842ABD;
	Tue, 14 Apr 2026 15:22:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AFF90375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 15:22:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9BFB784420
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 15:22:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X6QLNp7aI8KP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 15:22:46 +0000 (UTC)
X-Greylist: delayed 545 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 14 Apr 2026 15:22:45 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D684984406
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D684984406
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a01:37:3000::53df:4ee9:0; helo=mailout2.hostsharing.net;
 envelope-from=lukas@wunner.de; receiver=<UNKNOWN> 
Received: from mailout2.hostsharing.net (mailout2.hostsharing.net
 [IPv6:2a01:37:3000::53df:4ee9:0])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D684984406
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 15:22:45 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange x25519 server-signature ECDSA (secp384r1) server-digest SHA384
 client-signature ECDSA (secp384r1) client-digest SHA384)
 (Client CN "*.hostsharing.net",
 Issuer "GlobalSign GCC R6 AlphaSSL CA 2025" (verified OK))
 by mailout2.hostsharing.net (Postfix) with ESMTPS id 8EB0410586;
 Tue, 14 Apr 2026 17:13:36 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id 6E6506034192; Tue, 14 Apr 2026 17:13:36 +0200 (CEST)
Date: Tue, 14 Apr 2026 17:13:36 +0200
From: Lukas Wunner <lukas@wunner.de>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, jay.bhat@intel.com,
 ivan.d.barrera@intel.com, aleksandr.loktionov@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, aleksander.lobakin@intel.com,
 linux-pci@vger.kernel.org, madhu.chittim@intel.com,
 decot@google.com, willemb@google.com, sheenamo@google.com
Message-ID: <ad5ZoDCuSsPW0lKo@wunner.de>
References: <20260414031631.2107-1-emil.s.tantilov@intel.com>
 <20260414031631.2107-3-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260414031631.2107-3-emil.s.tantilov@intel.com>
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wunner.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] idpf: implement pci
 error handlers
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jay.bhat@intel.com,m:ivan.d.barrera@intel.com,m:aleksandr.loktionov@intel.com,m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:linux-pci@vger.kernel.org,m:madhu.chittim@intel.com,m:decot@google.com,m:willemb@google.com,m:sheenamo@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[wunner.de: no valid DMARC record];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,wunner.de:mid,osuosl.org:dkim];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER(0.00)[lukas@wunner.de,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lukas@wunner.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EF1763FBB4A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 08:16:31PM -0700, Emil Tantilov wrote:
> +static pci_ers_result_t
> +idpf_pci_err_slot_reset(struct pci_dev *pdev)
> +{
> +	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
> +
> +	pci_restore_state(pdev);
> +	pci_set_master(pdev);
> +	pci_wake_from_d3(pdev, false);
> +	if (readl(adapter->reset_reg.rstat) != 0xFFFFFFFF)
> +		return PCI_ERS_RESULT_RECOVERED;

FWIW, there's a PCI_POSSIBLE_ERROR() helper that you may find useful
to check for an "all ones" MMIO read.

Thanks,

Lukas
