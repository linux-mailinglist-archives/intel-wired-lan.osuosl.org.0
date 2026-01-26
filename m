Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IO2PAz6Vd2n0iwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 17:24:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EF38AA0B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 17:24:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20F9860BD1;
	Mon, 26 Jan 2026 16:24:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tWmSxlfx7H9y; Mon, 26 Jan 2026 16:24:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C9F660C06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769444661;
	bh=E947AE/toB9fdTbo8XE0HFChXI4gaAunNvPHANYOHYE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a5EPjnbW4Ep4DOuXiODQXAO5tlFnMXw4BbW5VBKpKR9Z2O7AsWpc23m/1m4IbZcw4
	 +0D95xRutg9+nkELcnvFwXKzYQom7xHCcSKyNuKzPDtJ15JWw46lH7i6EfCEGhUH7V
	 x8eKZymEMUxPoAakfmb0+lzvefYAg+Q18j5qsHIVFGxr8W23XWNPeJyOjVyIQwObud
	 8wyQmpbDmX8Fm/i3sFTTjr8wcEq6X2Qjnzhfn0YAoKgyDl9zEMWMb/ytDM26N5LQ8a
	 XyjMYGbFy9UJddG8aiFEXezDqP4W4z/47mlCoDmznJq1OfSpMx7o5TfRhtReDBPQhd
	 iZUp0vZ97W0fw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C9F660C06;
	Mon, 26 Jan 2026 16:24:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E8F8A118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 16:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E22EA40A54
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 16:24:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MYOFdVk77VdK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 16:24:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8D0E840A47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D0E840A47
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8D0E840A47
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 16:24:17 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1vkPNm-004oVy-L4; Mon, 26 Jan 2026 17:24:06 +0100
Date: Mon, 26 Jan 2026 17:24:06 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Brian Vazquez <brianvv@google.com>
Cc: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org,
 David Decotigny <decot@google.com>, Li Li <boolli@google.com>,
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 emil.s.tantilov@intel.com, Brett Creeley <brett.creeley@amd.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <37e1a648-609b-4d5e-9176-fbbacc7e9e07@lunn.ch>
References: <20260126144624.2319784-1-brianvv@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126144624.2319784-1-brianvv@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=E947AE/toB9fdTbo8XE0HFChXI4gaAunNvPHANYOHYE=; b=LCCWeGIlF+mIphI+V5x4UBoDWR
 hxmiEQ96mbysQfMhCLkkuZoNIc5aPVp1x/CfjVKwrPgOhB9nbKp9DRLOV5TBCIsSdb+SBoL382Y+C
 W7+xtWnT3p+vwqE6JsnDMCe+RuuTNGtDpjT+leV+piMl6COA9q9HwalTwy6fposCIjNE=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=LCCWeGIl
Subject: Re: [Intel-wired-lan] [iwl-net PATCH v2] idpf: change IRQ naming to
 match netdev and ethtool queue numbering
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
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[lunn.ch : SPF not aligned (strict), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:brianvv@google.com,m:brianvv.kernel@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:decot@google.com,m:boolli@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:emil.s.tantilov@intel.com,m:brett.creeley@amd.com,m:aleksandr.loktionov@intel.com,m:brianvvkernel@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org,amd.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: E7EF38AA0B
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 02:46:24PM +0000, Brian Vazquez wrote:
> The code uses the vidx for the IRQ name but that doesn't match ethtool
> reporting or netdev naming, this makes it hard to tune the device and
> associate queues with IRQs. Sequentially requesting irqs starting from
> '0' makes the output consistent.
> 
> Before:
> 
> ethtool -L eth1 tx 1 combined 3
> 
> grep . /proc/irq/*/*idpf*/../smp_affinity_list
> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> /proc/irq/68/idpf-eth1-TxRx-1/../smp_affinity_list:0
> /proc/irq/70/idpf-eth1-TxRx-3/../smp_affinity_list:1
> /proc/irq/71/idpf-eth1-TxRx-4/../smp_affinity_list:2
> /proc/irq/72/idpf-eth1-Tx-5/../smp_affinity_list:3
> 
> ethtool -S eth1 | grep -v ': 0'
> NIC statistics:
>      tx_q-0_pkts: 1002
>      tx_q-1_pkts: 2679
>      tx_q-2_pkts: 1113
>      tx_q-3_pkts: 1192 <----- tx_q-3 vs idpf-eth1-Tx-5
>      rx_q-0_pkts: 1143
>      rx_q-1_pkts: 3172
>      rx_q-2_pkts: 1074
> 
> After:
> 
> ethtool -L eth1 tx 1 combined 3
> 
> grep . /proc/irq/*/*idpf*/../smp_affinity_list
> 
> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> /proc/irq/68/idpf-eth1-TxRx-0/../smp_affinity_list:0
> /proc/irq/70/idpf-eth1-TxRx-1/../smp_affinity_list:1
> /proc/irq/71/idpf-eth1-TxRx-2/../smp_affinity_list:2
> /proc/irq/72/idpf-eth1-Tx-3/../smp_affinity_list:3
> 
> ethtool -S eth1 | grep -v ': 0'
> NIC statistics:
>      tx_q-0_pkts: 118
>      tx_q-1_pkts: 134
>      tx_q-2_pkts: 228
>      tx_q-3_pkts: 138 <--- tx_q-3 matches idpf-eth1-Tx-3
>      rx_q-0_pkts: 111
>      rx_q-1_pkts: 366
>      rx_q-2_pkts: 120

Are there any ABI issues here?

   Andrew
