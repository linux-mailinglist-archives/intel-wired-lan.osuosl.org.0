Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGXCHNHYd2mFlwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 22:12:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E55C8D942
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 22:12:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25BAC822F9;
	Mon, 26 Jan 2026 21:12:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id urOH0_jtj7Ti; Mon, 26 Jan 2026 21:12:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E3FD82319
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769461966;
	bh=1GqpcYUiw2sTK+oDrLcovhe4bjl1PP/TJXojV87BrcY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MroKT2FpDRqjhelyvfZx+Gp/OEauHQANTudnr+ANv76QSV4CesCw4EPoUDSdpuzKC
	 O3xHUUqng2JY2HoEpO+N8ND/63sGrqVhmRrXBTmWO08//l5qxe/qgHSDoxPh3WlM0I
	 doYdR6WhC+2INhhUjYIihtUDid/QBt5QkYRgnDiDmTTpXKyXL21MMPNv0SyJeCzr95
	 KzhihRCHdaP+/tOGCUSNmXV/VHVVV/Daa934ge8+yZ6Hmd3HQF2UCtInvmqz3qjrM2
	 tTigNg6FShCfXCCgJncK0YatApxszQcCsGxaWpJh9WkyzFSdMlkbyEp9kjoEMX6XlT
	 avaxwQ2FO1TLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E3FD82319;
	Mon, 26 Jan 2026 21:12:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2696F33A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 21:12:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 16C2A60B74
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 21:12:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IVoPkMec9Ywo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 21:12:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5193A60B0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5193A60B0D
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5193A60B0D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 21:12:41 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1vkTst-004qkp-B7; Mon, 26 Jan 2026 22:12:31 +0100
Date: Mon, 26 Jan 2026 22:12:31 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Eric Dumazet <edumazet@google.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Brian Vazquez <brianvv@google.com>,
 Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org,
 David Decotigny <decot@google.com>, Li Li <boolli@google.com>,
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 emil.s.tantilov@intel.com, Brett Creeley <brett.creeley@amd.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <649ae4be-3081-49a2-8ac7-18724272498f@lunn.ch>
References: <20260126144624.2319784-1-brianvv@google.com>
 <37e1a648-609b-4d5e-9176-fbbacc7e9e07@lunn.ch>
 <CAMzD94Qt9-5G-8MHcmHLgYEyjRUoPB+SruzZXafxSTkNV8criA@mail.gmail.com>
 <b18b4b38-b3e7-485f-91f8-e3a74ff90572@lunn.ch>
 <72764a6e-602a-42ed-88c9-e4259b6078f3@intel.com>
 <CANn89iK-W6bKuVZD-5FxxunOtcmwOgAM9d4NPA8XwXXKi_TVJw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANn89iK-W6bKuVZD-5FxxunOtcmwOgAM9d4NPA8XwXXKi_TVJw@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=1GqpcYUiw2sTK+oDrLcovhe4bjl1PP/TJXojV87BrcY=; b=Z8
 zh3r3pODrj/qNFlKP+2mQcovx7xapqxwrOo6PJ7toOKkwvEEPbZ9jm3RvgGePoikXDXrV6sztYO5a
 VjfRN7amua/BPXZKlYiV4SPMXJrAvC4TvlvvjmywcapS+BaOmK7K295u+9+fDLNcctAGWd7pxQZOY
 cIsEq1P8GmQ1VlU=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=Z8zh3r3p
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[lunn.ch : SPF not aligned (strict), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:edumazet@google.com,m:jacob.e.keller@intel.com,m:brianvv@google.com,m:brianvv.kernel@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:pabeni@redhat.com,m:decot@google.com,m:boolli@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:emil.s.tantilov@intel.com,m:brett.creeley@amd.com,m:aleksandr.loktionov@intel.com,m:brianvvkernel@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,lunn.ch:mid,lunn.ch:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,google.com,gmail.com,davemloft.net,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org,amd.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 7E55C8D942
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 09:51:10PM +0100, Eric Dumazet wrote:
> On Mon, Jan 26, 2026 at 9:46 PM Jacob Keller <jacob.e.keller@intel.com> wrote:
> >
> >
> >
> > On 1/26/2026 9:53 AM, Andrew Lunn wrote:
> > > On Mon, Jan 26, 2026 at 12:40:15PM -0500, Brian Vazquez wrote:
> > >> On Mon, Jan 26, 2026 at 11:24 AM Andrew Lunn <andrew@lunn.ch> wrote:
> > >>>
> > >>> On Mon, Jan 26, 2026 at 02:46:24PM +0000, Brian Vazquez wrote:
> > >>>> The code uses the vidx for the IRQ name but that doesn't match ethtool
> > >>>> reporting or netdev naming, this makes it hard to tune the device and
> > >>>> associate queues with IRQs. Sequentially requesting irqs starting from
> > >>>> '0' makes the output consistent.
> > >>>>
> > >>>> Before:
> > >>>>
> > >>>> ethtool -L eth1 tx 1 combined 3
> > >>>>
> > >>>> grep . /proc/irq/*/*idpf*/../smp_affinity_list
> > >>>> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> > >>>> /proc/irq/68/idpf-eth1-TxRx-1/../smp_affinity_list:0
> > >>>> /proc/irq/70/idpf-eth1-TxRx-3/../smp_affinity_list:1
> > >>>> /proc/irq/71/idpf-eth1-TxRx-4/../smp_affinity_list:2
> > >>>> /proc/irq/72/idpf-eth1-Tx-5/../smp_affinity_list:3
> > >>>>
> > >>>> ethtool -S eth1 | grep -v ': 0'
> > >>>> NIC statistics:
> > >>>>       tx_q-0_pkts: 1002
> > >>>>       tx_q-1_pkts: 2679
> > >>>>       tx_q-2_pkts: 1113
> > >>>>       tx_q-3_pkts: 1192 <----- tx_q-3 vs idpf-eth1-Tx-5
> > >>>>       rx_q-0_pkts: 1143
> > >>>>       rx_q-1_pkts: 3172
> > >>>>       rx_q-2_pkts: 1074
> > >>>>
> > >>>> After:
> > >>>>
> > >>>> ethtool -L eth1 tx 1 combined 3
> > >>>>
> > >>>> grep . /proc/irq/*/*idpf*/../smp_affinity_list
> > >>>>
> > >>>> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> > >>>> /proc/irq/68/idpf-eth1-TxRx-0/../smp_affinity_list:0
> > >>>> /proc/irq/70/idpf-eth1-TxRx-1/../smp_affinity_list:1
> > >>>> /proc/irq/71/idpf-eth1-TxRx-2/../smp_affinity_list:2
> > >>>> /proc/irq/72/idpf-eth1-Tx-3/../smp_affinity_list:3
> > >>>>
> > >>>> ethtool -S eth1 | grep -v ': 0'
> > >>>> NIC statistics:
> > >>>>       tx_q-0_pkts: 118
> > >>>>       tx_q-1_pkts: 134
> > >>>>       tx_q-2_pkts: 228
> > >>>>       tx_q-3_pkts: 138 <--- tx_q-3 matches idpf-eth1-Tx-3
> > >>>>       rx_q-0_pkts: 111
> > >>>>       rx_q-1_pkts: 366
> > >>>>       rx_q-2_pkts: 120
> > >>>
> > >>> Are there any ABI issues here?
> > >>
> > >> The patch doesn't change the format, it just fixes the numbering in
> > >> the name to make it consistent with other reporting tools. It
> > >> shouldn't break any library.
> > >
> > > But is the numbering part of the ABI?
> > >
> > > Making a comment about ABI in the commit message makes it clear it is
> > > something you have considered, and you have decided it is not an
> > > issue. If there is no such comment, reviewers probably should ask.
> > >
> > >         Andrew
> >
> > I don't see how an application can depend on the name if it can't
> > correlate it to anything meaningful. The change fixes the ID values used
> > so that they *do* correlate. If an application was previously assuming
> > it correlated to the queue ID, it would incorrect associate the IRQ with
> > the wrong queue.
> 
> Agree, this mismatch caused me some surprises, we can not keep a broken
> ABI (which has been broken by accident)

So everybody is agreed, great. I just think it would of been good to
mention ABI in the commit message, to show due diligence has been
done.

   Andrew
