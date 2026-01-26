Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBmJE9bTd2mFlwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 21:51:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A538D4E2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 21:51:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C67E60DFE;
	Mon, 26 Jan 2026 20:51:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JLDhZZM-J7VV; Mon, 26 Jan 2026 20:51:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C93B360E00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769460685;
	bh=ENp8sXYiCU/BCY2lNHnkEOHR/VlkLaoPoCHWW8j8iyg=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=q9T6SAfaLCWntVbGuGK/qfLDKSGba1Arm+FJs1B0JXYJXmAG9dIG2wFKyGaNG2OST
	 lDInhkNOJ3BL+ezCl6ikwVdRuDQTpXxh1WRgX3NXrpTRP19pzs4c4y5KW1UIuV0u2D
	 zh/V2JhbenzWzJXwMVtkZdZ6zY0xOURCe+JlhJFy3+ORf0EPi+HGvAlDDXaktLCLNA
	 TgM9F97NKe3mMZas7VPOZ30eCtlxrshTFLEOzefGSSy/MJebAjkPa0TIkCXTxO+xej
	 Pt5X5EKruN3ZiZmh9iQS7HXsTNeDqpTyyLtl2M8PhbL7/P5s2S+szAhRcefmxR6slf
	 hYpjITfo8HHWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C93B360E00;
	Mon, 26 Jan 2026 20:51:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 54314118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:51:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5025660DA4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:51:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5MBH7HAykM24 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 20:51:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::72d; helo=mail-qk1-x72d.google.com;
 envelope-from=edumazet@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7DBFA60D9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DBFA60D9D
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7DBFA60D9D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:51:23 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id
 af79cd13be357-8c6b16bd040so560424185a.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 12:51:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769460682; cv=none;
 d=google.com; s=arc-20240605;
 b=FlH2mHZWpJrcwXY4cggPk9yDu9a/MoBljSsGAFTf/qKMzeYiD0KVw98rWJAddj1POc
 uSTnJjQ/Pak9rOo/CyNlnvVcLbVAolLb0axXO+4De84308Kj+0F/PJOYoNw4p+6l7Odo
 c78kl/V7Gs92vzfpTkqYtNuN1mHYMImqi/Pyh2QR+0h4sDQUOk6g8RaNpp4ZPwpiOBto
 hrUA2fqsYCX7pSad2eGx1dGf74ObeN9qiFrHSCW0sBIKcuS+pJL5Co0ulfC60pQBGD52
 cnv8KYaSGJudgQkGNw+P98Hvbtj9zrd057cfPJtd3EhT+i5ld//qCQw8o0CPLS31JZbc
 uIIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=ENp8sXYiCU/BCY2lNHnkEOHR/VlkLaoPoCHWW8j8iyg=;
 fh=tUCeqkvytisyvOVfkaSUTsiaS3xOlftbI7n9vbAA684=;
 b=ZUJ2i9/dSVOmjsNefleMIrt6dQjyztJu5quQosArPetKlpkUDxjWEA+8WKK32PdRgT
 nF1dPdoloe+/2LQLZIzRrOYzEThJ0B5xlzCziK2TnwhffgjrjNdFqQ1y+yweh9f1t41Z
 BYD7c/q4UjLq07ILOCEROXTPLujfoC5GD9h22dK1UMDIoCZyTQ8l/pVHvo6solA/nWM9
 Q242t1DGJa7TgET1wSA1cY2aEu1/R30ErrJ9Ah5Gs3PwphCbsX1TpF9Z3ji0WXf4A1fK
 fk2AMxuA8/yUduC/tqB63JUBes7IXZ8tMtsV7YrddYCmhVq6XtS3gvVeP5C7h/1IZDz3
 U27w==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769460682; x=1770065482;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ENp8sXYiCU/BCY2lNHnkEOHR/VlkLaoPoCHWW8j8iyg=;
 b=F1M8Rck2JjgA44q9n6wPNOUhf2k2SqcsS9/dTUhT2ycZp+BBv0mf78SZHYO3I/BARe
 UNcF0qztUJ0T+quwwu7tIHhYpfVDWIUMJG6ZBr8OMrTmOjB9Y2SPY6JpnP1vFlu85vrq
 IAHSFStOFmPAHm+khmMz87ZhZX7cuK0nH5akZAoha99I1BnHnRp4m8NdlwhI2136DVB9
 FpFveS/mYWV+HxTiITDVGPCnjJ15nsgykCJOINi+40woMUBn8Da0slP5+KvtiAOnQ+kJ
 bsdAv8hmzUX+UW26JghSe8xm3P+R+j8aCZoT3EB/XRQSMBI14TxJmKbNKKfSYCDeme1H
 l2uw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUQfD6xoM3aqqMwbx5XEInV+4ivWbKUyvCk4u9ajap/VDpgk2Rv7jNbemwZuKo/W6v0Q/duxOLIEiJunOKiDrs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzBGQpiyNFg6TMSCdmLptQ0J9Pvi62jlG+GzvMiyfkUmrDv9si5
 BW6mWG2MVn94LVa7/+fXk+WI2DThRwSDTGedrqTGYyrgqzhi8bo0/bkxZ6NqPP7ZXSA5A1vPgrO
 az5ksS+HtykOjEm/O7L6ZMmZ73HiyiRlnYGEWR50m
X-Gm-Gg: AZuq6aJWHjy2ZWkv9wIm6JZtV9Sk14HrO1KH6Xe81Z8p19frjh6PKRAb6W+/DRWQDhC
 NIcnobJqt+Gh0FjtUvqzcuYVtbi/gPYzfxkWGZjcf0zZrwd7fwRYQ0FvPgJfbRr4GtH34aKKnNr
 cFArHTeIqtTXMA3gY8d1QXoBgMUw310KYa/605otmrdYi6NXUCnEdvC4hEXV1nsnh/qtaCEACP4
 VBQ8VJnZvguvLyrQ1MrubG4gdU1/8aWSk95BKP3VfwVwoOybj88GMFhzzf+nnJS8zKLCJu5G/js
 CIdo
X-Received: by 2002:a05:620a:7019:b0:8c6:a373:c4a1 with SMTP id
 af79cd13be357-8c6f95c6c74mr647834185a.24.1769460681792; Mon, 26 Jan 2026
 12:51:21 -0800 (PST)
MIME-Version: 1.0
References: <20260126144624.2319784-1-brianvv@google.com>
 <37e1a648-609b-4d5e-9176-fbbacc7e9e07@lunn.ch>
 <CAMzD94Qt9-5G-8MHcmHLgYEyjRUoPB+SruzZXafxSTkNV8criA@mail.gmail.com>
 <b18b4b38-b3e7-485f-91f8-e3a74ff90572@lunn.ch>
 <72764a6e-602a-42ed-88c9-e4259b6078f3@intel.com>
In-Reply-To: <72764a6e-602a-42ed-88c9-e4259b6078f3@intel.com>
Date: Mon, 26 Jan 2026 21:51:10 +0100
X-Gm-Features: AZwV_Qhh_PEhvkPKzu590pUTjsLtRZieIIkuvJZ7P2FqQzkzAE6q0pICP-cPsIo
Message-ID: <CANn89iK-W6bKuVZD-5FxxunOtcmwOgAM9d4NPA8XwXXKi_TVJw@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Brian Vazquez <brianvv@google.com>, 
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
 d=google.com; s=20230601; t=1769460682; x=1770065482; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ENp8sXYiCU/BCY2lNHnkEOHR/VlkLaoPoCHWW8j8iyg=;
 b=4LY9TOnzHV9dfpLvHBo41FLz9m+EEk3M55Q+hn1uOmc0eGa1p6PnRk4GJUQEbQLcl6
 CRyVCELfPJue43pE8QgHsc8G2jMYnZ2GkeBPAKID47nbAwZ7XyClvaNr17vMg//gC9ik
 l/w4y60/l0zfCksz8OIWaCjZMGYlF7c86wC/9Jln+ussr19+99BHDE7e7p8A87UR0EC5
 1tHEz6db7rr7t30VzdP4FBSwcKGNf3ZTveBjBWndjGjp9K4Y5Rb1F3o8CoE0WGZkFGLv
 NevTvBXSyzbQtNeIOBr0F+fVWbj1YnL6Qr0uqJWAVKAxknZ+J80Ja1p4a9WOTiG2WcsH
 4DDw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=4LY9TOnz
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
From: Eric Dumazet via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Eric Dumazet <edumazet@google.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mail.gmail.com:mid,lunn.ch:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:andrew@lunn.ch,m:brianvv@google.com,m:brianvv.kernel@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:pabeni@redhat.com,m:decot@google.com,m:boolli@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:emil.s.tantilov@intel.com,m:brett.creeley@amd.com,m:aleksandr.loktionov@intel.com,m:brianvvkernel@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lunn.ch,google.com,gmail.com,intel.com,davemloft.net,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org,amd.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[edumazet@google.com];
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
X-Rspamd-Queue-Id: 22A538D4E2
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 9:46=E2=80=AFPM Jacob Keller <jacob.e.keller@intel.=
com> wrote:
>
>
>
> On 1/26/2026 9:53 AM, Andrew Lunn wrote:
> > On Mon, Jan 26, 2026 at 12:40:15PM -0500, Brian Vazquez wrote:
> >> On Mon, Jan 26, 2026 at 11:24=E2=80=AFAM Andrew Lunn <andrew@lunn.ch> =
wrote:
> >>>
> >>> On Mon, Jan 26, 2026 at 02:46:24PM +0000, Brian Vazquez wrote:
> >>>> The code uses the vidx for the IRQ name but that doesn't match ethto=
ol
> >>>> reporting or netdev naming, this makes it hard to tune the device an=
d
> >>>> associate queues with IRQs. Sequentially requesting irqs starting fr=
om
> >>>> '0' makes the output consistent.
> >>>>
> >>>> Before:
> >>>>
> >>>> ethtool -L eth1 tx 1 combined 3
> >>>>
> >>>> grep . /proc/irq/*/*idpf*/../smp_affinity_list
> >>>> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> >>>> /proc/irq/68/idpf-eth1-TxRx-1/../smp_affinity_list:0
> >>>> /proc/irq/70/idpf-eth1-TxRx-3/../smp_affinity_list:1
> >>>> /proc/irq/71/idpf-eth1-TxRx-4/../smp_affinity_list:2
> >>>> /proc/irq/72/idpf-eth1-Tx-5/../smp_affinity_list:3
> >>>>
> >>>> ethtool -S eth1 | grep -v ': 0'
> >>>> NIC statistics:
> >>>>       tx_q-0_pkts: 1002
> >>>>       tx_q-1_pkts: 2679
> >>>>       tx_q-2_pkts: 1113
> >>>>       tx_q-3_pkts: 1192 <----- tx_q-3 vs idpf-eth1-Tx-5
> >>>>       rx_q-0_pkts: 1143
> >>>>       rx_q-1_pkts: 3172
> >>>>       rx_q-2_pkts: 1074
> >>>>
> >>>> After:
> >>>>
> >>>> ethtool -L eth1 tx 1 combined 3
> >>>>
> >>>> grep . /proc/irq/*/*idpf*/../smp_affinity_list
> >>>>
> >>>> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> >>>> /proc/irq/68/idpf-eth1-TxRx-0/../smp_affinity_list:0
> >>>> /proc/irq/70/idpf-eth1-TxRx-1/../smp_affinity_list:1
> >>>> /proc/irq/71/idpf-eth1-TxRx-2/../smp_affinity_list:2
> >>>> /proc/irq/72/idpf-eth1-Tx-3/../smp_affinity_list:3
> >>>>
> >>>> ethtool -S eth1 | grep -v ': 0'
> >>>> NIC statistics:
> >>>>       tx_q-0_pkts: 118
> >>>>       tx_q-1_pkts: 134
> >>>>       tx_q-2_pkts: 228
> >>>>       tx_q-3_pkts: 138 <--- tx_q-3 matches idpf-eth1-Tx-3
> >>>>       rx_q-0_pkts: 111
> >>>>       rx_q-1_pkts: 366
> >>>>       rx_q-2_pkts: 120
> >>>
> >>> Are there any ABI issues here?
> >>
> >> The patch doesn't change the format, it just fixes the numbering in
> >> the name to make it consistent with other reporting tools. It
> >> shouldn't break any library.
> >
> > But is the numbering part of the ABI?
> >
> > Making a comment about ABI in the commit message makes it clear it is
> > something you have considered, and you have decided it is not an
> > issue. If there is no such comment, reviewers probably should ask.
> >
> >         Andrew
>
> I don't see how an application can depend on the name if it can't
> correlate it to anything meaningful. The change fixes the ID values used
> so that they *do* correlate. If an application was previously assuming
> it correlated to the queue ID, it would incorrect associate the IRQ with
> the wrong queue.

Agree, this mismatch caused me some surprises, we can not keep a broken
ABI (which has been broken by accident)
