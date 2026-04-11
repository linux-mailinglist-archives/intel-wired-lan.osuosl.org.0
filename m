Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qP3gAI3h2Wm6uAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Apr 2026 07:52:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E75003DE7BD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Apr 2026 07:52:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D103483F2D;
	Sat, 11 Apr 2026 05:52:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M6sS2Rw5Rd75; Sat, 11 Apr 2026 05:52:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 569F383F36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775886729;
	bh=TnEXP8JZ/JCzbQ9/sjjIrVECp362nD7uC8TlwCo2XcM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u38YikfzmyMmmpCdAqKPXxCoBsvN3MGpD64eCZPxrjjVbM/rlCm85BhatV8QBx8BX
	 d77LNyE5snrfIgj752FrdcDczlD+DKBxGwsQ5DOtmqYqVsucs1rUTaxL+Dn0n42Wv2
	 HxuydnSfqDAvU2RcW26IaaXxNr2advU2otX3/7yNNF760uW1xeFWAPlq5L9nCldePo
	 yq3ggUEcPf+OlSc2WzoIAW59QVUZAwvTYgSiwBq46zAy8Njz49LH4xCRDBQszj1mZ5
	 pILnfbx8xve5eNH+risbTaqUxHOgESHxGg+cb9JHOZ9KRTGJstPr/4vdVviKAlbfab
	 mlpEc3IljRldw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 569F383F36;
	Sat, 11 Apr 2026 05:52:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 35D31EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2026 05:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27EE640277
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2026 05:52:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2X6MzRVEiKXK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Apr 2026 05:52:06 +0000 (UTC)
X-Greylist: delayed 521 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 11 Apr 2026 05:52:05 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 706EC4008E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 706EC4008E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=83.223.95.204;
 helo=mailout1.hostsharing.net; envelope-from=lukas@wunner.de;
 receiver=<UNKNOWN> 
Received: from mailout1.hostsharing.net (mailout1.hostsharing.net
 [83.223.95.204])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 706EC4008E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2026 05:52:05 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange x25519 server-signature ECDSA (secp384r1) server-digest SHA384
 client-signature ECDSA (secp384r1) client-digest SHA384)
 (Client CN "*.hostsharing.net",
 Issuer "GlobalSign GCC R6 AlphaSSL CA 2025" (verified OK))
 by mailout1.hostsharing.net (Postfix) with ESMTPS id F40371686;
 Sat, 11 Apr 2026 07:43:20 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id D84EF6010601; Sat, 11 Apr 2026 07:43:20 +0200 (CEST)
Date: Sat, 11 Apr 2026 07:43:20 +0200
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
Message-ID: <adnfeAJHoFoaGYH7@wunner.de>
References: <20260411003959.30959-1-emil.s.tantilov@intel.com>
 <20260411003959.30959-3-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260411003959.30959-3-emil.s.tantilov@intel.com>
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wunner.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] idpf: implement pci
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jay.bhat@intel.com,m:ivan.d.barrera@intel.com,m:aleksandr.loktionov@intel.com,m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:linux-pci@vger.kernel.org,m:madhu.chittim@intel.com,m:decot@google.com,m:willemb@google.com,m:sheenamo@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[wunner.de: no valid DMARC record];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wunner.de:mid,osuosl.org:dkim];
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E75003DE7BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 05:39:59PM -0700, Emil Tantilov wrote:
> +static pci_ers_result_t
> +idpf_pci_err_slot_reset(struct pci_dev *pdev)
> +{
> +	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
> +
> +	pci_restore_state(pdev);
> +	pci_set_master(pdev);
> +	pci_wake_from_d3(pdev, false);
> +	if (readl(adapter->reset_reg.rstat) != 0xFFFFFFFF) {
> +		pci_save_state(pdev);
> +		return PCI_ERS_RESULT_RECOVERED;
> +	}

The pci_save_state() is no longer necessary here, please drop it.
See commits a2f1e22390ac and 383d89699c50 for details.

Thanks,

Lukas
