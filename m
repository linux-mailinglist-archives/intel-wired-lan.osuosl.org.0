Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cL4hI/7id2k9mQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 22:56:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF99B8DBA7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 22:56:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2F1740A6E;
	Mon, 26 Jan 2026 21:56:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bkLGRF02kdke; Mon, 26 Jan 2026 21:56:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBDB140AFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769464569;
	bh=GAfnYUWqZJMkTRljxQqqOceKMfg6TUYZ4qV1PCN8Qk8=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=MQNcTXoKlIXtZWCcb5BVxinHREMZ6ts0/F7rGKtR7MOg+q17Hlkc2YexGdy48TUBs
	 1uDz2uaJKhi72YR2VQWBi8lw6X1Omqu0aHUxJ7zfFyS/z1GStQ2JAqLvJqwWFPZqw9
	 aLKn7IcxM88m43tpQ3XgtkS64AiwfrnjHSRr4VhUxpr5w0b3IWzyeVEOjOTwZHETmt
	 hl0uhtz5p2ROv3elnvgJpHK2oC57x0/dZgAsfcPD7MQSP6ac4t0EYPBAEJuB4/NQF+
	 4f6kYRNUgvlbQgdb6cEF09h2Iex9NOdK7IrjnF+IrY7NvVnfYFQA+P2b8mYqWgPYza
	 up0Y2zQ+dcRYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBDB140AFB;
	Mon, 26 Jan 2026 21:56:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 51A04118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 21:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3C9D740596
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 21:56:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bVm6SuiDOyYt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 21:56:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::122f; helo=mail-dl1-x122f.google.com;
 envelope-from=brianvv@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EB0D34040F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB0D34040F
Received: from mail-dl1-x122f.google.com (mail-dl1-x122f.google.com
 [IPv6:2607:f8b0:4864:20::122f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB0D34040F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 21:56:06 +0000 (UTC)
Received: by mail-dl1-x122f.google.com with SMTP id
 a92af1059eb24-1248d27f293so4450694c88.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 13:56:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769464566; cv=none;
 d=google.com; s=arc-20240605;
 b=cWCdKrGC1q2MhE1mircH9pu25fhcQZyzNTTxhEh8vIqI6x0UxE3RNCQ7fEs2iNrqZ7
 3ZQ/Jgmbf3mvev0sqihHSCDLBGxqAW0aN3EeXz6TySmgbFqn6jGKjYMI5dPPTLMada7H
 wMUwJa5k/2JIixcUk+ygxBmw7zsM2dACtToPxdYJOkezW4xJ5eNkGbKgsqE9SSTTWbCY
 /9wswyArEF2d/MT/VVymhzzXAiXEmrhT3uX9LmtqqK/C1qqOFEzbvwkKScew6b/sguPk
 v1avIMhKk5T7v6JgJChOHV6LhEFJgNfDq+ZuZC6rB4TNSvuSHrAzpeFCceMFxOupBhBM
 XpjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=GAfnYUWqZJMkTRljxQqqOceKMfg6TUYZ4qV1PCN8Qk8=;
 fh=m0Q3dB7akk4zXT+kYleiitrpIG48BWBC0chHHUcx3Gw=;
 b=SGZvcddKWRSNzBFCAo2PT7O5VaeFP+t+0O3hiKzVPD+45h4mZ2f8rxeLrhqS1X92PO
 GUr9H1JwtjN9MOB/T7jEXpmVNEWV8JHXqjLW4je60fW5+W7MIz30juAP/oWTIC363W67
 OdVpJgo1+4lK9BZ3kq6nuDSLU+tBpEjiVvqUkODLmDwWnHCoJpE1j6Mf3jZ7IoNj1oyT
 4zGYZD0EkMKkgfhsO+gIwZeckx55VWITCdaHLRFNc7ETUlUpJ5i/NsWzjKYWBmKEdaHG
 8AwBfHvTOL1rR7JNQa+6Thn6Ho4EG0Bo9LXerl/nb7YFkKs10WgOTtfEMxHC7V8o15rn
 XVRw==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769464566; x=1770069366;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=GAfnYUWqZJMkTRljxQqqOceKMfg6TUYZ4qV1PCN8Qk8=;
 b=XDeOlyp38ctZ2p3ns3OxDvEACyS0K+azte8guK7y/bL3dJAncEWXyBMVJKvACyHkch
 Z8in/06REHdIMwUluBErQsHFl1JFVl1iB9tJctC1pbPkL3MCTkRNj40bXhiZhtP44sBg
 FjMpY83EAd6mInkA5L/GcrMJI1bm633soMS5JDYJ7I5jBm7k9tWskpziY3UcrhIx2OkD
 IdTaYaw3YPw65UeARg6utef4yEtwrsQFjOZHKE2lmp2slOxEv2N8aCr7VodDyPEot1iu
 6H/dERS0M9g5ZkBfJtK4Wbp8avbURXHNUblfoyT/rBH0DsrckgWDRDURka/wpdY3RQAE
 1AAw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX+81VFPiderKYwufCfRcZXkK2KMG3+oKZR4KjCrPeXy/8sy8Q/q/zOrwaOBxqYFdg4T/qJjNOcM3rAc2JhqF4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzkUvnt3N0oiaZqORevIoVyxLmPy6U9mrm18VItwCzvWsPnVt8S
 U4sqPIKd29N1VPN+ODf0rn+M7rcvKYB6eKpdX5YlKJtkNC9eLh9HhR7pyo1dRVWY+sqdRt1ux4Y
 /qyxR2ZTvPRZaNof+FaaaLUzQjs8YrtoDAce3lXZ4
X-Gm-Gg: AZuq6aIZ8R+I1D99SP5G3C3Ljpvf4A1BwuppSYO97A2wffyGaL7MpxMhp5FgYK29NnD
 mKS3XJk3ckKpXA9KbaaR+Fhiol+0td715w8WKcWLubCfu1ioKMUOgX3itWPuRxfi9hVRk3fVkRp
 P05vtg6kyu3G8jTVZ7LfXA8TAPo9r+AYwYCqKU+xyvtif1rn/NFdMq1OmirCIuBk8f9B1rKxAsp
 7zxc6tF9Cd4mNlWizPzTdFiRMCdLZ3m3hkH16UBEB9Mf+cJQ0EdwlkABvQGx3seTbCzW4qzS8jd
 7Z5mtcY=
X-Received: by 2002:a05:7022:458e:b0:11d:e25a:d9ca with SMTP id
 a92af1059eb24-1248ec8d5d9mr2907961c88.26.1769464565359; Mon, 26 Jan 2026
 13:56:05 -0800 (PST)
MIME-Version: 1.0
References: <20260126144624.2319784-1-brianvv@google.com>
 <37e1a648-609b-4d5e-9176-fbbacc7e9e07@lunn.ch>
 <CAMzD94Qt9-5G-8MHcmHLgYEyjRUoPB+SruzZXafxSTkNV8criA@mail.gmail.com>
 <b18b4b38-b3e7-485f-91f8-e3a74ff90572@lunn.ch>
 <72764a6e-602a-42ed-88c9-e4259b6078f3@intel.com>
 <CANn89iK-W6bKuVZD-5FxxunOtcmwOgAM9d4NPA8XwXXKi_TVJw@mail.gmail.com>
 <649ae4be-3081-49a2-8ac7-18724272498f@lunn.ch>
In-Reply-To: <649ae4be-3081-49a2-8ac7-18724272498f@lunn.ch>
Date: Mon, 26 Jan 2026 16:55:53 -0500
X-Gm-Features: AZwV_Qg-_6RwoCQJkPRhHwJl-qOx5LoDk058u9jX1e_3TVI-Yv9hjldXz_u6cv4
Message-ID: <CAMzD94TJ7pg8gVbUCAhtfkpL4+FtSfepqd=CJ-imNFq-A5W0gw@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Eric Dumazet <edumazet@google.com>, Jacob Keller <jacob.e.keller@intel.com>,
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
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769464566; x=1770069366; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GAfnYUWqZJMkTRljxQqqOceKMfg6TUYZ4qV1PCN8Qk8=;
 b=X/VJPeTAZPgsxI/X3jcMmYhm1uz+7Bf0I1u4EpnAkzpS9uw9gLeSzMY6Pe8lexTyYX
 cBAE3nWRDzQDjfjpJ9V1+aNQp6TpgLaV7JJ8TApyvfPBswdMdGzfj+0uB7nDLdINpMGz
 D5YQAt3fMN1mywH9oY4fAHMDtnEkcHCRRJFQaIcAAYV/poAwPX1+FkzAtVpAxNAt93Mb
 5cqAsbCSuClmoO4epRhZuuLRFN8gvxDekJLUQYTQ30FHZqksygfIgynU+gc8fI/hmnS2
 L6SI42/P47Zdg1FTUMPLgeMO7lYk4dQ/YiOXQ+rhFBH1y5aza1dhQXXpPimZmtr4uJMS
 qT9g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=X/VJPeTA
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
From: Brian Vazquez via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Brian Vazquez <brianvv@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:edumazet@google.com,m:jacob.e.keller@intel.com,m:brianvv.kernel@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:pabeni@redhat.com,m:decot@google.com,m:boolli@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:emil.s.tantilov@intel.com,m:brett.creeley@amd.com,m:aleksandr.loktionov@intel.com,m:brianvvkernel@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[google.com,intel.com,gmail.com,davemloft.net,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org,amd.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[brianvv@google.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: DF99B8DBA7
X-Rspamd-Action: no action

Sure, sending v3 to add more details about the ABI.

On Mon, Jan 26, 2026 at 4:12=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Mon, Jan 26, 2026 at 09:51:10PM +0100, Eric Dumazet wrote:
> > On Mon, Jan 26, 2026 at 9:46=E2=80=AFPM Jacob Keller <jacob.e.keller@in=
tel.com> wrote:
> > >
> > >
> > >
> > > On 1/26/2026 9:53 AM, Andrew Lunn wrote:
> > > > On Mon, Jan 26, 2026 at 12:40:15PM -0500, Brian Vazquez wrote:
> > > >> On Mon, Jan 26, 2026 at 11:24=E2=80=AFAM Andrew Lunn <andrew@lunn.=
ch> wrote:
> > > >>>
> > > >>> On Mon, Jan 26, 2026 at 02:46:24PM +0000, Brian Vazquez wrote:
> > > >>>> The code uses the vidx for the IRQ name but that doesn't match e=
thtool
> > > >>>> reporting or netdev naming, this makes it hard to tune the devic=
e and
> > > >>>> associate queues with IRQs. Sequentially requesting irqs startin=
g from
> > > >>>> '0' makes the output consistent.
> > > >>>>
> > > >>>> Before:
> > > >>>>
> > > >>>> ethtool -L eth1 tx 1 combined 3
> > > >>>>
> > > >>>> grep . /proc/irq/*/*idpf*/../smp_affinity_list
> > > >>>> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> > > >>>> /proc/irq/68/idpf-eth1-TxRx-1/../smp_affinity_list:0
> > > >>>> /proc/irq/70/idpf-eth1-TxRx-3/../smp_affinity_list:1
> > > >>>> /proc/irq/71/idpf-eth1-TxRx-4/../smp_affinity_list:2
> > > >>>> /proc/irq/72/idpf-eth1-Tx-5/../smp_affinity_list:3
> > > >>>>
> > > >>>> ethtool -S eth1 | grep -v ': 0'
> > > >>>> NIC statistics:
> > > >>>>       tx_q-0_pkts: 1002
> > > >>>>       tx_q-1_pkts: 2679
> > > >>>>       tx_q-2_pkts: 1113
> > > >>>>       tx_q-3_pkts: 1192 <----- tx_q-3 vs idpf-eth1-Tx-5
> > > >>>>       rx_q-0_pkts: 1143
> > > >>>>       rx_q-1_pkts: 3172
> > > >>>>       rx_q-2_pkts: 1074
> > > >>>>
> > > >>>> After:
> > > >>>>
> > > >>>> ethtool -L eth1 tx 1 combined 3
> > > >>>>
> > > >>>> grep . /proc/irq/*/*idpf*/../smp_affinity_list
> > > >>>>
> > > >>>> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> > > >>>> /proc/irq/68/idpf-eth1-TxRx-0/../smp_affinity_list:0
> > > >>>> /proc/irq/70/idpf-eth1-TxRx-1/../smp_affinity_list:1
> > > >>>> /proc/irq/71/idpf-eth1-TxRx-2/../smp_affinity_list:2
> > > >>>> /proc/irq/72/idpf-eth1-Tx-3/../smp_affinity_list:3
> > > >>>>
> > > >>>> ethtool -S eth1 | grep -v ': 0'
> > > >>>> NIC statistics:
> > > >>>>       tx_q-0_pkts: 118
> > > >>>>       tx_q-1_pkts: 134
> > > >>>>       tx_q-2_pkts: 228
> > > >>>>       tx_q-3_pkts: 138 <--- tx_q-3 matches idpf-eth1-Tx-3
> > > >>>>       rx_q-0_pkts: 111
> > > >>>>       rx_q-1_pkts: 366
> > > >>>>       rx_q-2_pkts: 120
> > > >>>
> > > >>> Are there any ABI issues here?
> > > >>
> > > >> The patch doesn't change the format, it just fixes the numbering i=
n
> > > >> the name to make it consistent with other reporting tools. It
> > > >> shouldn't break any library.
> > > >
> > > > But is the numbering part of the ABI?
> > > >
> > > > Making a comment about ABI in the commit message makes it clear it =
is
> > > > something you have considered, and you have decided it is not an
> > > > issue. If there is no such comment, reviewers probably should ask.
> > > >
> > > >         Andrew
> > >
> > > I don't see how an application can depend on the name if it can't
> > > correlate it to anything meaningful. The change fixes the ID values u=
sed
> > > so that they *do* correlate. If an application was previously assumin=
g
> > > it correlated to the queue ID, it would incorrect associate the IRQ w=
ith
> > > the wrong queue.
> >
> > Agree, this mismatch caused me some surprises, we can not keep a broken
> > ABI (which has been broken by accident)
>
> So everybody is agreed, great. I just think it would of been good to
> mention ABI in the commit message, to show due diligence has been
> done.
>
>    Andrew
