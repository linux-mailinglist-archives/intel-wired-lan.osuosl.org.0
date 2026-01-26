Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sH0NKRKnd2lrjwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 18:40:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 559D78B95A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 18:40:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 004DF811ED;
	Mon, 26 Jan 2026 17:40:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UnCoQDTaeegq; Mon, 26 Jan 2026 17:40:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75ACE81567
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769449231;
	bh=O2YPljFd1Myds7GZBBZxikHuHSUzwMw9rrYzn56kfh0=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=O7TTt8qj48Ke9+TsITPcrvMT1fju9H7PqgPUlxg3YwEPbZ/oAB+7L9/IbPBuNJNS4
	 eW9m9+qO0SfRbqTihC7a68tOc8ex2+wnlcMRknY+poyk31oTyGdv2srdQJ4mTezKe/
	 Sm4SLNHF4RG3Si9/pOBy4xpu2GyqxedOVAaSx4wuYxHSHeWFGpRxGZS+3cqM9Nq4VK
	 LCyA7Pihn0fTmbDiA8sTQe27bkTFgD/tIxkums/ZAVPsJWQYpFvgmg8eE1VC7MiIpN
	 eHr7AR/HYD4SwKZ5WoLGq10zmBBUuJqYN5zuPteqX1E6A4Qf6a1mnGfeY9qVijnutV
	 Jg0N4gpDaBLfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75ACE81567;
	Mon, 26 Jan 2026 17:40:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D48BA11B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 17:40:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D045860D6F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 17:40:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AM6wis-x2Sdn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 17:40:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1230; helo=mail-dl1-x1230.google.com;
 envelope-from=brianvv@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 10F8260C06
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10F8260C06
Received: from mail-dl1-x1230.google.com (mail-dl1-x1230.google.com
 [IPv6:2607:f8b0:4864:20::1230])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 10F8260C06
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 17:40:28 +0000 (UTC)
Received: by mail-dl1-x1230.google.com with SMTP id
 a92af1059eb24-124877d78a6so2260877c88.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 09:40:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769449228; cv=none;
 d=google.com; s=arc-20240605;
 b=Qw/HnchnMVwxZVPk6IdgxZ1FdxIm55w8dKF2XCmJZGOOmz8ZT5oe1sZbuCUr2HOqcR
 HagbUpSAP229Bocxbr5ubnHdUQ3y/8D1JLTDQnCN+/6uY1cuR2Kj+l9zNbRHWcr1njaN
 6Vtr+Pe8F1Pss69uh3lk6RMltw4F6Rj3oWIbFQo7Xss/+cmdMlScpw6dX4TCfxOvbYRP
 2DZyqZbsr87tnKd+9QNRufC+XYXtDJYYj48bflo0Zx4VWddsLhzsFIAIKLCdAvDb8X3C
 M12EWwx0dWUm8/Od1i9v6Dea9jHm1Bz5JUJmEmfaCKYXwHHotIA+EM/94UuzYWMXEExv
 E1bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=O2YPljFd1Myds7GZBBZxikHuHSUzwMw9rrYzn56kfh0=;
 fh=xFjR8Ty9pec2ncm6nG08thYjjMBPhIeArTTZH3vQN64=;
 b=F9ilsKqYSWOtk5k7arbH7Q9pLdcAVqUoGThxasWzHpJo0s4KQHVZRs8rMQJQoykMvn
 7GDYKg10vt1RB0w26+HqCDmjeeWPAcg3cV0NS4ipuRyoGojUht3mdwMSbjaZLaadRjBC
 xc9i724ehzDE8/7tsANfjgJTp9L4IF+T2+krmFQy+ndr4tT5m5+IewTpYYfbkDsDXZJe
 WeA60F0ELvKgN8grbY0CcjDWyw40qDHIcK3YVhTDlmMRgYxIGGeiai5hyd5ZF5f6xlCg
 D2DwZchP5+A7OBak/1j5MNKVs2sqjaveQYL2Ig9O412cwtSc8t8aGccChO3QOUgs5muk
 FeBQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769449228; x=1770054028;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=O2YPljFd1Myds7GZBBZxikHuHSUzwMw9rrYzn56kfh0=;
 b=tyW/iSBYyMAsTvVcKr3s3zg4f2cMkk1m+ItO25imcQD5NX0tblJaWH9NoXc8lXZRcS
 JnS5FhGJtgVuCNj3y2oI18HpNHXFbY26Y/2xwbUHPg9a5OwovtHT1Y5WR8TjK25G1I3C
 zxWqh11KlBGn+LUwTronCSSWxueLSrQP6qtj/aaHK4WSgN9Q5LinrCdfNIIQzTC6RcWE
 gCsskMcGyqx7AF1gqiHsCvE9O+hpOBWXldtaiZBg3eApvFwF70jgKH1fAZtsplvJ3KgE
 zK8EOg+Ljcp18gaqMhz2YXIp7b+PJT8XMLrv91Sz+z1BwyezmbYaNQUya/kPrCIm5ses
 naTA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVGJtQf6jas65WfltVwQ0uSf+JDEVerEJFH9M4GBpaWuf5xo3TwUqFZBdMZFNFQv2AJ+zyIVGJIdPW5fpWQrCE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwHQ0AnCh+Q0Dra7nO5/k6UR7ENJmzh5RNNyqvfkHBpEE+w4D27
 ny8KddD/P7Tj+BHTWLyJtofupLk5KbNPFCyXbJTf6kNRG8A5zvspbCUOjWjoLAQYTTjHSZi+Adx
 gXp+ND+bicW1PSDhKTY2AWME8XAGFHQ6wzEo/+HLb
X-Gm-Gg: AZuq6aI83I5BVvU3JjR8DZ1IosudXboW4Imr1IfviYyyDdbR1HrkMo4dUH6uefynljr
 LuORD2DSGgWZO6dNfq3wg5ZsWS5OZMz71UwnmR0umXYpSasnl3GfS+cxQFXLHToSQmT0cwNe7oq
 0Us8hoWPN6GJbM1JAvBua4ljhHFmBL0jMykjp6twPp2qYQ+EJxaty9Da3WNLpzbadZINtG5/bmq
 cnpLntt0MYcxD1MfhDqoHQSmTgE/4LQY0Q+gMC1R7goTC6X2ZHAdCTFht8pt71OWLXBGtGi
X-Received: by 2002:a05:7022:4582:b0:123:3407:106a with SMTP id
 a92af1059eb24-1248ec4141emr2882844c88.32.1769449227636; Mon, 26 Jan 2026
 09:40:27 -0800 (PST)
MIME-Version: 1.0
References: <20260126144624.2319784-1-brianvv@google.com>
 <37e1a648-609b-4d5e-9176-fbbacc7e9e07@lunn.ch>
In-Reply-To: <37e1a648-609b-4d5e-9176-fbbacc7e9e07@lunn.ch>
Date: Mon, 26 Jan 2026 12:40:15 -0500
X-Gm-Features: AZwV_QhpEsBrkcG32TbQrICcb_Md0HToT8n22VHYr9HbxmIV-YjNNXh0C-d9bu0
Message-ID: <CAMzD94Qt9-5G-8MHcmHLgYEyjRUoPB+SruzZXafxSTkNV8criA@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, 
 intel-wired-lan@lists.osuosl.org, David Decotigny <decot@google.com>, 
 Li Li <boolli@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>, linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, emil.s.tantilov@intel.com, 
 Brett Creeley <brett.creeley@amd.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769449228; x=1770054028; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=O2YPljFd1Myds7GZBBZxikHuHSUzwMw9rrYzn56kfh0=;
 b=cgg0vCjNWSZxrZcYlIoaR3gMYJmtYJMUsapNwJ54zyRVe9S9hEZiCq4pTdLTeXbTMl
 pLlEV2+FmZCdBNETFQF57K04PDHc6nrjhqvjzesckcxn9lEdCsMxPIoqBOemIjTHM4/1
 RtPT0x9Jpo8u6OS1d6ZvABHbsmHSGNV2RNytYf8ersPQizsAx5ACatYNGruWvJum/kyc
 0Q+c0tVYhFrxbjHexRKflAAJkrYW33XLkOHEGeUZbz6yGdWEqfkbKuHOJxXf93PVHx/H
 KhiLlhTU+PH+jNOCwnaBhF80ya8FM9FF8fM+Lhq83L/KkFUIC3zF7uKWl+nL4icJ3eYF
 4Zcw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=cgg0vCjN
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:brianvv.kernel@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:decot@google.com,m:boolli@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:emil.s.tantilov@intel.com,m:brett.creeley@amd.com,m:aleksandr.loktionov@intel.com,m:brianvvkernel@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lunn.ch:email];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[brianvv@google.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org,amd.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 559D78B95A
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 11:24=E2=80=AFAM Andrew Lunn <andrew@lunn.ch> wrote=
:
>
> On Mon, Jan 26, 2026 at 02:46:24PM +0000, Brian Vazquez wrote:
> > The code uses the vidx for the IRQ name but that doesn't match ethtool
> > reporting or netdev naming, this makes it hard to tune the device and
> > associate queues with IRQs. Sequentially requesting irqs starting from
> > '0' makes the output consistent.
> >
> > Before:
> >
> > ethtool -L eth1 tx 1 combined 3
> >
> > grep . /proc/irq/*/*idpf*/../smp_affinity_list
> > /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> > /proc/irq/68/idpf-eth1-TxRx-1/../smp_affinity_list:0
> > /proc/irq/70/idpf-eth1-TxRx-3/../smp_affinity_list:1
> > /proc/irq/71/idpf-eth1-TxRx-4/../smp_affinity_list:2
> > /proc/irq/72/idpf-eth1-Tx-5/../smp_affinity_list:3
> >
> > ethtool -S eth1 | grep -v ': 0'
> > NIC statistics:
> >      tx_q-0_pkts: 1002
> >      tx_q-1_pkts: 2679
> >      tx_q-2_pkts: 1113
> >      tx_q-3_pkts: 1192 <----- tx_q-3 vs idpf-eth1-Tx-5
> >      rx_q-0_pkts: 1143
> >      rx_q-1_pkts: 3172
> >      rx_q-2_pkts: 1074
> >
> > After:
> >
> > ethtool -L eth1 tx 1 combined 3
> >
> > grep . /proc/irq/*/*idpf*/../smp_affinity_list
> >
> > /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> > /proc/irq/68/idpf-eth1-TxRx-0/../smp_affinity_list:0
> > /proc/irq/70/idpf-eth1-TxRx-1/../smp_affinity_list:1
> > /proc/irq/71/idpf-eth1-TxRx-2/../smp_affinity_list:2
> > /proc/irq/72/idpf-eth1-Tx-3/../smp_affinity_list:3
> >
> > ethtool -S eth1 | grep -v ': 0'
> > NIC statistics:
> >      tx_q-0_pkts: 118
> >      tx_q-1_pkts: 134
> >      tx_q-2_pkts: 228
> >      tx_q-3_pkts: 138 <--- tx_q-3 matches idpf-eth1-Tx-3
> >      rx_q-0_pkts: 111
> >      rx_q-1_pkts: 366
> >      rx_q-2_pkts: 120
>
> Are there any ABI issues here?

The patch doesn't change the format, it just fixes the numbering in
the name to make it consistent with other reporting tools. It
shouldn't break any library.
>    Andrew
