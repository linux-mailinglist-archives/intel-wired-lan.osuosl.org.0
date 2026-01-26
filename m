Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHN3H/h9d2m9hgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 15:45:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0138489AED
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 15:45:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92CAC40A37;
	Mon, 26 Jan 2026 14:45:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lXy-wUEMR8AC; Mon, 26 Jan 2026 14:45:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEF8C40857
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769438706;
	bh=jWjlN5B2P4/q9JjovW7rJOSm0uS/RqZS2rcosl1ne0I=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=SyY7E/n9LV7ttIoRsv/4mM4u6B2VCQ4WjbF7w25pHkxvZwRQMHi7fd5eLM4dUGlM+
	 rF2l8CXlRTqKNRaEp7Mb9i0mVIxOItDdzoFVKa3RYbAmx70rhZSZH5DN5kxFGzRIrd
	 QmVkGT4hujsgT3EaE9UpGvtuR6MX5+AA/JxGJ9nmpeX0c0EgOCKxG5x3Z5k4O5xhZj
	 m2XOb+537A82yjnala4tq2a708CvAELt49VZnbvV6g2UI334KVvT20+TvjyLhNhqHc
	 O4R/K9Q6yaDo6PMzyX5aXeDPqbS6HyFF0eDFJA/tJPFDfkKuzP4kei36er1vefqMTy
	 UJ4Vg9hejqIew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEF8C40857;
	Mon, 26 Jan 2026 14:45:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6CF2511B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 14:45:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B90B80E39
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 14:45:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DhAgbbqcZ2S6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 14:45:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1229; helo=mail-dl1-x1229.google.com;
 envelope-from=brianvv@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7506880E17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7506880E17
Received: from mail-dl1-x1229.google.com (mail-dl1-x1229.google.com
 [IPv6:2607:f8b0:4864:20::1229])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7506880E17
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 14:45:03 +0000 (UTC)
Received: by mail-dl1-x1229.google.com with SMTP id
 a92af1059eb24-1248d27f2b9so1882307c88.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 06:45:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769438702; cv=none;
 d=google.com; s=arc-20240605;
 b=bOjhvPTLUw3UEkKXlyCmy+NlhMZ/36vwDLSJqAy7f58P+FJ/HaP4Aoa16VRpj4SOVI
 GS8MpmncQxzJtDo8lFzm17zzjCQZMTTyPPEM4zg5Pcjo14tlBk/T50kD5uYbSFdTtxnG
 umSGUe68D+Yrl+ikz4afhBTxn3mYZC4La2nbNAdbg3PVoldpddpKZ5PekWqOv8ibeES2
 I4AOY5j+YKSisZooQYpOwgOF4Ofm9M1TigcbjgPE0DEh8mOzZRxoSj6zYkOzeirAQ3OQ
 xPWrEyzoh2ecVCCA0M+c5qiLoEfxsEtSHoOFD4sf61JyhS0Nt1rPd6Hj6JgMNBWWAKoH
 o0KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=jWjlN5B2P4/q9JjovW7rJOSm0uS/RqZS2rcosl1ne0I=;
 fh=8hNTCRWqOYrPlRMa2Bv6vjxZH/xn/rCN1zRnMCvqCF8=;
 b=OjkUGZng00WI9YDGi/tkczMsC0nJ/0ysB8mXgUW4JU0YU3h1B3gdB0mPhX0hli19+4
 6a+P/sx6eo9UbyGDWq+yyDtlMyJNuSGFmuwYn2I6Ki4PtY75oLBDztqkrX0S2JdVxyR7
 WhJITCBPibi/ICIQl4t1HV60PzYdLBNK3/CRw3RcXm9bYt2fwsEbcB3l2Ay4shhNcUdV
 ugZa4+Eqqs4BQJJHOfdXKrxKldYe7yBJltSRuQiWs6CFJtJkdkwHggTCaUKw4pC8tHHx
 Uo75TMlkfGsxpey9pgOBy8YJpsFQZE+um5MHizWUntTB/CIwyiVZO3J0KvSFLL7xxgKd
 bg8Q==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769438702; x=1770043502;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jWjlN5B2P4/q9JjovW7rJOSm0uS/RqZS2rcosl1ne0I=;
 b=R1mOMArsmzaTKkWqfshZ4Qpt27l5PlQo+B8pNqq03LSA9vflVvLGK04c1elWW/Yqg/
 SAj0LqIbfGnkX83f9jvQXnjF9oYVzNp0OZGxxsZlnwAPLMhTMRuPzI/2reonsUrhJpQ+
 mHQ8o3gH2yVpNaDZw1Fs1UPQ0TbKKIJLiF0VHQo6yECLUiJI+8U+yqqOwp2il44QNXFP
 xniKN5z3nJLBXwdCA8OKfveRM5QMN4R71g6XvY4ok7d6Rj8xU2zqG2D48QQEhcsBGqIe
 nj+QmYxk/2mdooU9Fxf2Vpe4vqW9Af37YTsLYIVVFKTGD+FqZHAe1rUJqcDVPHz04oJ8
 arpQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXt06R8CzyNU13G0sJOp/5h00gqBd+NIzcsfsvXkblGC2G+BuBVLjxMkB7ibZLqKcdS1v7LPmM/ErOXG+52S6Y=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwB68R3OPVfkRzd0FPcXmzBLzzOU4EN7t8FGa9m2JItaLnoTmwF
 cpIgjK5WV8J3HmvHlUfBCATf+CRQGzVKqXcgntHbGZtZk83zXIiDpkerACmtUYSsCje6tFQtRRc
 +4IZepm0gmAbak16Ji2ODunGrGi0mqjgsNT5GoY7U
X-Gm-Gg: AZuq6aJmBF7Yk/WaptDqM70AqibapyYtdu2csDUd/3uuw0wNi/TtZBuWqe4yZLIVpof
 5QiP7VTk1VDtUbfCCH52ekjVJLjoDEvojSi+InFZPb8VOa0/BS2srmXm3oflP9fC5BdKKC5fU6p
 BJSWxV6b4/I9QeSwKXRNRKHH7yo4X3QC0gOVhIkPYF0Elj9YsBxByqmDktQiGjso3wU/qGNrtUv
 5dbSDIIsVczt8HO5OGJL9uCdmjjd548mJastss19R4+NqX1gCOlKlHa3I0ONIWf2o5n3HFG
X-Received: by 2002:a05:7022:6724:b0:11a:273c:dd98 with SMTP id
 a92af1059eb24-1248ebf0615mr2041163c88.20.1769438702006; Mon, 26 Jan 2026
 06:45:02 -0800 (PST)
MIME-Version: 1.0
References: <20260123204058.651080-1-brianvv@google.com>
 <IA3PR11MB8986BB2FDDBB664CB318FB15E593A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986BB2FDDBB664CB318FB15E593A@IA3PR11MB8986.namprd11.prod.outlook.com>
Date: Mon, 26 Jan 2026 09:44:49 -0500
X-Gm-Features: AZwV_QiaS3LxW8TWQK5r23KMNkYPxNaUEyJ22V0JsyieFRF_VMUSXPGmlQs8S2I
Message-ID: <CAMzD94TDGYBk4HSxHSxH0PB=WY73Cx3ad848cSo49ojH_Pa-6w@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: Brian Vazquez <brianvv.kernel@gmail.com>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 David Decotigny <decot@google.com>, 
 Li Li <boolli@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>, 
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Tantilov,
 Emil S" <emil.s.tantilov@intel.com>
Content-Type: multipart/alternative; boundary="0000000000004a105306494b8d36"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769438702; x=1770043502; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=jWjlN5B2P4/q9JjovW7rJOSm0uS/RqZS2rcosl1ne0I=;
 b=r3vg+V9UcH/6RW+EbiP5NlDvDUA7bPhaULqBLSX3JHJQdOev/GzfoOv9HdNsPqYc2S
 I8A+okojgZA6J0m1OMlSO/9bD6ghgl5R1W6yWvJhSBHlIcZBSj2M+zKUWe3OfEj1p0F3
 VCtJqJcO38pFJT2YU4n6W2/U9coPbSlcm7T7GO9aJwXx9jRg42/TUhAh0pOofUIMKJQp
 IWS35VL4uFwKerlMS1PNlYq9AX9gIWHrWkBLkawcgeA1RIPDVr1enWjQzkokf8viF25S
 oafB6HPnaOHI1n4VMkr9zab9WqXXvEE4zJAA1ZkUSHPgw3DEK3P/XnwsOqu4tt75boi4
 dtkA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=r3vg+V9U
Subject: Re: [Intel-wired-lan] [iwl-net PATCH] idpf: change IRQ naming to
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:brianvv.kernel@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:decot@google.com,m:boolli@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:emil.s.tantilov@intel.com,m:brianvvkernel@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[brianvv@google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 0138489AED
X-Rspamd-Action: no action

--0000000000004a105306494b8d36
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 26, 2026 at 2:27=E2=80=AFAM Loktionov, Aleksandr <
aleksandr.loktionov@intel.com> wrote:

>
>
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Brian Vazquez via Intel-wired-lan
> > Sent: Friday, January 23, 2026 9:41 PM
> > To: Brian Vazquez <brianvv.kernel@gmail.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; David S. Miller <davem@davemloft.net>;
> > Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> > Paolo Abeni <pabeni@redhat.com>; intel-wired-lan@lists.osuosl.org
> > Cc: David Decotigny <decot@google.com>; Li Li <boolli@google.com>;
> > Singhai, Anjali <anjali.singhai@intel.com>; Samudrala, Sridhar
> > <sridhar.samudrala@intel.com>; linux-kernel@vger.kernel.org;
> > netdev@vger.kernel.org; Tantilov, Emil S <emil.s.tantilov@intel.com>;
> > Brian Vazquez <brianvv@google.com>
> > Subject: [Intel-wired-lan] [iwl-net PATCH] idpf: change IRQ naming to
> > match netdev and ethtool queue numbering
> >
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
> >
> > Signed-off-by: Brian Vazquez <brianvv@google.com>
> > ---
> >  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > index c2a1fe3c79ec..c1f8dfc570ce 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > @@ -4093,7 +4093,7 @@ static int idpf_vport_intr_req_irq(struct
> > idpf_vport *vport,
> >                       continue;
> >
> >               name =3D kasprintf(GFP_KERNEL, "%s-%s-%s-%d", drv_name,
> > if_name,
> > -                              vec_name, vidx);
> > +                              vec_name, vector);
> >
> >               err =3D request_irq(irq_num, idpf_vport_intr_clean_queues=
,
> > 0,
> >                                 name, q_vector);
> > --
> > 2.52.0.457.g6b5491de43-goog
>
> I think could be nice to have proper Fixes: tag, but anyway.
>

Makes sense, sending v2, to add the Fixes tag.  Thanks for the review!

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>
>

--0000000000004a105306494b8d36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 26,=
 2026 at 2:27=E2=80=AFAM Loktionov, Aleksandr &lt;<a href=3D"mailto:aleksan=
dr.loktionov@intel.com">aleksandr.loktionov@intel.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
&gt; -----Original Message-----<br>
&gt; From: Intel-wired-lan &lt;<a href=3D"mailto:intel-wired-lan-bounces@os=
uosl.org" target=3D"_blank">intel-wired-lan-bounces@osuosl.org</a>&gt; On B=
ehalf<br>
&gt; Of Brian Vazquez via Intel-wired-lan<br>
&gt; Sent: Friday, January 23, 2026 9:41 PM<br>
&gt; To: Brian Vazquez &lt;<a href=3D"mailto:brianvv.kernel@gmail.com" targ=
et=3D"_blank">brianvv.kernel@gmail.com</a>&gt;; Nguyen, Anthony L<br>
&gt; &lt;<a href=3D"mailto:anthony.l.nguyen@intel.com" target=3D"_blank">an=
thony.l.nguyen@intel.com</a>&gt;; Kitszel, Przemyslaw<br>
&gt; &lt;<a href=3D"mailto:przemyslaw.kitszel@intel.com" target=3D"_blank">=
przemyslaw.kitszel@intel.com</a>&gt;; David S. Miller &lt;<a href=3D"mailto=
:davem@davemloft.net" target=3D"_blank">davem@davemloft.net</a>&gt;;<br>
&gt; Eric Dumazet &lt;<a href=3D"mailto:edumazet@google.com" target=3D"_bla=
nk">edumazet@google.com</a>&gt;; Jakub Kicinski &lt;<a href=3D"mailto:kuba@=
kernel.org" target=3D"_blank">kuba@kernel.org</a>&gt;;<br>
&gt; Paolo Abeni &lt;<a href=3D"mailto:pabeni@redhat.com" target=3D"_blank"=
>pabeni@redhat.com</a>&gt;; <a href=3D"mailto:intel-wired-lan@lists.osuosl.=
org" target=3D"_blank">intel-wired-lan@lists.osuosl.org</a><br>
&gt; Cc: David Decotigny &lt;<a href=3D"mailto:decot@google.com" target=3D"=
_blank">decot@google.com</a>&gt;; Li Li &lt;<a href=3D"mailto:boolli@google=
.com" target=3D"_blank">boolli@google.com</a>&gt;;<br>
&gt; Singhai, Anjali &lt;<a href=3D"mailto:anjali.singhai@intel.com" target=
=3D"_blank">anjali.singhai@intel.com</a>&gt;; Samudrala, Sridhar<br>
&gt; &lt;<a href=3D"mailto:sridhar.samudrala@intel.com" target=3D"_blank">s=
ridhar.samudrala@intel.com</a>&gt;; <a href=3D"mailto:linux-kernel@vger.ker=
nel.org" target=3D"_blank">linux-kernel@vger.kernel.org</a>;<br>
&gt; <a href=3D"mailto:netdev@vger.kernel.org" target=3D"_blank">netdev@vge=
r.kernel.org</a>; Tantilov, Emil S &lt;<a href=3D"mailto:emil.s.tantilov@in=
tel.com" target=3D"_blank">emil.s.tantilov@intel.com</a>&gt;;<br>
&gt; Brian Vazquez &lt;<a href=3D"mailto:brianvv@google.com" target=3D"_bla=
nk">brianvv@google.com</a>&gt;<br>
&gt; Subject: [Intel-wired-lan] [iwl-net PATCH] idpf: change IRQ naming to<=
br>
&gt; match netdev and ethtool queue numbering<br>
&gt; <br>
&gt; The code uses the vidx for the IRQ name but that doesn&#39;t match eth=
tool<br>
&gt; reporting or netdev naming, this makes it hard to tune the device and<=
br>
&gt; associate queues with IRQs. Sequentially requesting irqs starting from=
<br>
&gt; &#39;0&#39; makes the output consistent.<br>
&gt; <br>
&gt; Before:<br>
&gt; <br>
&gt; ethtool -L eth1 tx 1 combined 3<br>
&gt; <br>
&gt; grep . /proc/irq/*/*idpf*/../smp_affinity_list<br>
&gt; /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167<br>
&gt; /proc/irq/68/idpf-eth1-TxRx-1/../smp_affinity_list:0<br>
&gt; /proc/irq/70/idpf-eth1-TxRx-3/../smp_affinity_list:1<br>
&gt; /proc/irq/71/idpf-eth1-TxRx-4/../smp_affinity_list:2<br>
&gt; /proc/irq/72/idpf-eth1-Tx-5/../smp_affinity_list:3<br>
&gt; <br>
&gt; ethtool -S eth1 | grep -v &#39;: 0&#39;<br>
&gt; NIC statistics:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_q-0_pkts: 1002<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_q-1_pkts: 2679<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_q-2_pkts: 1113<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_q-3_pkts: 1192 &lt;----- tx_q-3 vs idpf-eth1-Tx=
-5<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_q-0_pkts: 1143<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_q-1_pkts: 3172<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_q-2_pkts: 1074<br>
&gt; <br>
&gt; After:<br>
&gt; <br>
&gt; ethtool -L eth1 tx 1 combined 3<br>
&gt; <br>
&gt; grep . /proc/irq/*/*idpf*/../smp_affinity_list<br>
&gt; <br>
&gt; /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167<br>
&gt; /proc/irq/68/idpf-eth1-TxRx-0/../smp_affinity_list:0<br>
&gt; /proc/irq/70/idpf-eth1-TxRx-1/../smp_affinity_list:1<br>
&gt; /proc/irq/71/idpf-eth1-TxRx-2/../smp_affinity_list:2<br>
&gt; /proc/irq/72/idpf-eth1-Tx-3/../smp_affinity_list:3<br>
&gt; <br>
&gt; ethtool -S eth1 | grep -v &#39;: 0&#39;<br>
&gt; NIC statistics:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_q-0_pkts: 118<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_q-1_pkts: 134<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_q-2_pkts: 228<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tx_q-3_pkts: 138 &lt;--- tx_q-3 matches idpf-eth1-=
Tx-3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_q-0_pkts: 111<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_q-1_pkts: 366<br>
&gt;=C2=A0 =C2=A0 =C2=A0 rx_q-2_pkts: 120<br>
&gt; <br>
&gt; Signed-off-by: Brian Vazquez &lt;<a href=3D"mailto:brianvv@google.com"=
 target=3D"_blank">brianvv@google.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
&gt; b/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
&gt; index c2a1fe3c79ec..c1f8dfc570ce 100644<br>
&gt; --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
&gt; +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
&gt; @@ -4093,7 +4093,7 @@ static int idpf_vport_intr_req_irq(struct<br>
&gt; idpf_vport *vport,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0continue;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0name =3D kasprin=
tf(GFP_KERNEL, &quot;%s-%s-%s-%d&quot;, drv_name,<br>
&gt; if_name,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vec_name, vidx);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vec_name, vector);<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D request_=
irq(irq_num, idpf_vport_intr_clean_queues,<br>
&gt; 0,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0name, q_vector);<br>
&gt; --<br>
&gt; 2.52.0.457.g6b5491de43-goog<br>
<br>
I think could be nice to have proper Fixes: tag, but anyway.<br></blockquot=
e><div>=C2=A0</div><div>Makes sense, sending v2, to add the Fixes tag.=C2=
=A0 Thanks for the review!</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
Reviewed-by: Aleksandr Loktionov &lt;<a href=3D"mailto:aleksandr.loktionov@=
intel.com" target=3D"_blank">aleksandr.loktionov@intel.com</a>&gt;<br>
<br>
</blockquote></div></div>

--0000000000004a105306494b8d36--
