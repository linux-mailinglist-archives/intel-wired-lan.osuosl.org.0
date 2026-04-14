Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLUBKrZa3mmLCAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 17:18:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F85C3FB9F8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 17:18:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A66AB42ABB;
	Tue, 14 Apr 2026 15:18:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QDNOv9eJaeb6; Tue, 14 Apr 2026 15:18:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAE6242AC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776179888;
	bh=LGkcLUh8T7wLPcBQ8Z3nchLs+2qISFIMgueqO6SButM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yth+hql6axg7peBMg4Gy98ABMwMP+Co+7kpy4+r7oztrb6e6ItXypLFPkrq43jwkJ
	 4Kjhfh/rldnzkobIK96fYh4ruWw75bQjR5+UXJ7KY01iJ+zgMNAysxL8W/CaGxJmUb
	 HCzIhi0toyrNSMR0cA7jUqg+q1xux00dgR8s0xXUCcuF1X/7I51yCxwxJMK74Adkv3
	 eB7/p4ZzFim8a1Jcv0kmn1G5/vy1bpUJ5Uae0JW3xa6OIYlrJhrsqFoOKpDZtm9wyx
	 x9xxGjW8bbFEF6K4C3dKoLCYKNcuEtyLEr5tQ9bnBx+Lj3+cgcZU8wJVWCHGTwDiHt
	 v7UuimxisARKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAE6242AC0;
	Tue, 14 Apr 2026 15:18:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3F407375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 15:18:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3CFF742ABB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 15:18:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FuZ4TYwFGi8U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 15:18:06 +0000 (UTC)
X-Greylist: delayed 430 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 14 Apr 2026 15:18:05 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E8DE342ABC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8DE342ABC
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a01:37:1000::53df:5fcc:0; helo=mailout1.hostsharing.net;
 envelope-from=lukas@wunner.de; receiver=<UNKNOWN> 
Received: from mailout1.hostsharing.net (mailout1.hostsharing.net
 [IPv6:2a01:37:1000::53df:5fcc:0])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8DE342ABC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 15:18:05 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange x25519 server-signature ECDSA (secp384r1) server-digest SHA384
 client-signature ECDSA (secp384r1) client-digest SHA384)
 (Client CN "*.hostsharing.net",
 Issuer "GlobalSign GCC R6 AlphaSSL CA 2025" (verified OK))
 by mailout1.hostsharing.net (Postfix) with ESMTPS id E03F9383;
 Tue, 14 Apr 2026 17:10:50 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id C9EB86034192; Tue, 14 Apr 2026 17:10:50 +0200 (CEST)
Date: Tue, 14 Apr 2026 17:10:50 +0200
From: Lukas Wunner <lukas@wunner.de>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Bhat, Jay" <jay.bhat@intel.com>,
 "Barrera, Ivan D" <ivan.d.barrera@intel.com>,
 "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Chittim, Madhu" <madhu.chittim@intel.com>,
 "decot@google.com" <decot@google.com>,
 "willemb@google.com" <willemb@google.com>,
 "sheenamo@google.com" <sheenamo@google.com>
Message-ID: <ad5Y-gNBDvns-WAE@wunner.de>
References: <20260414031631.2107-1-emil.s.tantilov@intel.com>
 <20260414031631.2107-3-emil.s.tantilov@intel.com>
 <IA3PR11MB8986C6EC840268F14C44B28CE5252@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8986C6EC840268F14C44B28CE5252@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jay.bhat@intel.com,m:ivan.d.barrera@intel.com,m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:linux-pci@vger.kernel.org,m:madhu.chittim@intel.com,m:decot@google.com,m:willemb@google.com,m:sheenamo@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DMARC_NA(0.00)[wunner.de: no valid DMARC record];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,wunner.de:mid,osuosl.org:dkim];
	FORGED_SENDER(0.00)[lukas@wunner.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lukas@wunner.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8F85C3FB9F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 14, 2026 at 11:09:05AM +0000, Loktionov, Aleksandr wrote:
> > From: Tantilov, Emil S <emil.s.tantilov@intel.com>
> > .slot_reset is the callback attempting to restore the device, provided
> > a PCI reset was initiated by the AER driver.

Just for clarity, those callbacks are invoked by PCI core error handling
code and are shared by EEH, AER, DPC as well as s390 error recovery flows.
So it's not only AER.

> > +/**
> > + * idpf_pci_err_resume - Resume operations after PCI error recovery
> > + * @pdev: PCI device struct
> > + */
> > +static void idpf_pci_err_resume(struct pci_dev *pdev) {
> > +	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
> > +
> > +	/* Force a PFR when resuming from PCI error. */
> > +	if (test_and_set_bit(IDPF_PCI_CB_RESET, adapter->flags))
> > +		adapter->dev_ops.reg_ops.trigger_reset(adapter,
> > IDPF_HR_FUNC_RESET);
> 
> You say "Force a PFR", but PFR is only triggered on the AER path,
> not on the FLR path.

And?  idpf_pci_err_resume() is only invoked in the error recovery path
(aka AER path), not FLR path AFAICS.

Thanks,

Lukas
