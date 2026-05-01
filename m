Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLMDAoL+82n99QEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 01 May 2026 03:14:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F38A94A9805
	for <lists+intel-wired-lan@lfdr.de>; Fri, 01 May 2026 03:14:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 934B3422F2;
	Fri,  1 May 2026 01:14:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gWF12vb68q5K; Fri,  1 May 2026 01:14:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA621422F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777598079;
	bh=nSQkpXPvbzNQeoub82VoqlOWrgCeyn6/Q35lCNTDSoo=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=9G+QYRZxprr5YG79NyC0rdzDvcbxiPcvG3ig//kA4+7xHFLHWn6ghGdAWtqfzX6Xm
	 Xk2uGeRF9MZgIVnxIt43/1pW17Nmctg5KE7oU/6dmjdIz380g7tkTTP2E9zHWMJ3TC
	 5k5SWVpqnPiBIrFPEduE8xg3jkArEiJv3du4TrtzKLCSTTy8WEd/yAHBAA+nXLNC7b
	 7U5d8VH0mKXth5JR/GqMKK+a56wpEc7HCK0kKjXHwejlQFzvwXj91+IyJnVExj9Ggn
	 DYDrVQ+S2iiScJC+yfiIws05w/NcvrplbAHr5VOx4ayR8RbcMfDdMBG5gHCQA+nmx1
	 Ssm3vQfSBWVzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA621422F6;
	Fri,  1 May 2026 01:14:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 11940204
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2026 01:14:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E70B861672
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2026 01:14:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8j-c9Iftk7Wd for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2026 01:14:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22f; helo=mail-lj1-x22f.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E80DC6F67C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E80DC6F67C
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E80DC6F67C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2026 01:14:35 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id
 38308e7fff4ca-38e7d983f79so15506861fa.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 18:14:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777598073; cv=none;
 d=google.com; s=arc-20240605;
 b=i8H8DN/2KkaWgmg4WmOIf+PmoN1vztec6UIBZTR36dWtZtKSqs+wByrJgEZmExGOby
 tnsREvYZtIVeMOY0Xs39gIkgYaRya/l/Bx8tcxbdMnkTiItDyZfn9Ao/eq996JmCDRyZ
 4ylEsQuzLtIgj9Puuh94PY+fRgd7jpG0X+RmUVeHxBQrAeG+LDoGWVWI3Xiwyk+NUOxs
 8pswv3gNfesN6d+oIrnW41ZBXIW0E12prbiFMsZnEy20FY0aIaSAwzap0/uw505vDphs
 4aXVLSYXIB4VP4TeFrpEW1O5LIiWTdi+xdk7ZZyVHeg+igbffCujBa8ybKt/ZwFcs3XG
 6AhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=nSQkpXPvbzNQeoub82VoqlOWrgCeyn6/Q35lCNTDSoo=;
 fh=6rlFSyVhnoNFedSHnGyRHbKH2kBZyhOB+tI+XJd1i1k=;
 b=GSDUc9FBwmEJD5292QyiC4zM6P6ejKaEmrD390lBihVwcu6VdE08f/AfFkv1Ig1ezn
 8q8sWectCawiDXBtygWDDue/10+xbS9llJo8fcosU9PJUxnUVZ6xwf/i+BSIhySmG7zU
 QneWuY2QH94EE21Sy6v4S+HPA+Hzq+8QOB+qV9mC0lBPWY3dS0HdJA8xz2hmiCZhugez
 bvinsJ7FD3KK5BWEf6d/Qyp5/erIoojLT3uEJfe0HB1XMSAZX8t/11U61XLpJ4juvo51
 wcdO7UV90tL7JiA3e/dY8l4DC0rROlHWEPy38tp5xnCKEhCbLvt3YXcIAaG6EftypU7I
 R/Nw==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777598073; x=1778202873;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=nSQkpXPvbzNQeoub82VoqlOWrgCeyn6/Q35lCNTDSoo=;
 b=iwCxSm0us+urWVPydPps/LJzmNvbhRdDEZQjOEKzkTLBei9bplG1KWQGnATFfO34Fe
 AXM/7wXuACvUv6bqrq4qz79esWSDwZlQstFElJVH1uCyQZiAeU6GrQQGWueHEsTxSS1P
 lD0hz3ZLU+4Z1StNVVzYW0EbvgXRsaDYdk6aZLjEen6YQ02FM7sNad2t1ezDH5m2BR1a
 sa4F8FB/KyFb509lz93ik2TeaF7Ed87UKO6KjJo3zu5SbKUG1fvhSzZGR90NYW1hD5rc
 P7dZ/8F9Wawv5Th7EEJ9otfv3IcmJTU+vF5muzMqoEPkjQTXEq8EYmhe+tmNjwntNv+B
 f1Qw==
X-Forwarded-Encrypted: i=1;
 AFNElJ89H716RrLK71TcOn6W/9qpnoCTdq0XUMCgj9k9LX3BRoHlotCPe5aRh9SFGRQe6uBySM4r2aBZlq3r0tvORZc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyEalmS78mai9McqY3iaIGQM1FOxawdbZ/9YzL+aeLoRerT2FI7
 7vrf+PxOwpy0n/u1I8NPAW+gE5clrN2i7uQ6wDUQPFEpqn+X+aagC7W9zi0hoddUsQvNF82tVxB
 mupVDkDUxVYKtwCDLf9mxWyCbKMipl8AbOTVbPsLv
X-Gm-Gg: AeBDieuhmxLbF1Lat9BvYc5AC4u36uiIfsyrCtOwYFJiXJ8IHFCeCZi5iqxz2Tc+70y
 XYo4pZiuVam2hFKS86GriQaUewK0grJYJ2fZOgdS2y8ZWwzTVr2XGFDWVHJdcDNzY7vS1MBxyYv
 090EA2i9h99OezPxdY3SA1LRzVtoDQxnS+FRiwzJnR6cQ5cOPIujIxkeHhdeEzI4m8SBraxC/6Z
 fpTO0qinZCHjqqevmdAie+xzYiZrRSeiWGiPaU8SSafK6WKbz11g9jAOHddZiNWX96FRAdy8aZK
 k/8AOQthuhfxhalU63iYh8wE+tobkdpb9zEWgEEmNTEBZS60Kbm8VChxzGc=
X-Received: by 2002:a05:651c:502:b0:38a:902:dcd with SMTP id
 38308e7fff4ca-3934e204d45mr18166231fa.20.1777598072804; Thu, 30 Apr 2026
 18:14:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260429204128.2865817-1-boolli@google.com>
 <IA3PR11MB8986449FB3714E23C389F6D1E5352@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986449FB3714E23C389F6D1E5352@IA3PR11MB8986.namprd11.prod.outlook.com>
Date: Thu, 30 Apr 2026 18:14:18 -0700
X-Gm-Features: AVHnY4J_plv41lTEdTL-vvxKy5_2KloHTpmwjewmh1NkxAdrXpoon5Ni15mn_Pw
Message-ID: <CAODvEq4bfK70wx4TX+6ZoYpj=3FBY6fR6LJFpPdR-u3H6kJn1w@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Decotigny <decot@google.com>, 
 "Singhai, Anjali" <anjali.singhai@intel.com>, 
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1777598073; x=1778202873; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nSQkpXPvbzNQeoub82VoqlOWrgCeyn6/Q35lCNTDSoo=;
 b=FZDI90TSE3rE5UMsw0BDkX0A8sInJfPf9LaJSdp4Te582+a9jf1u+mvUoco+iIaPqj
 F+2ziBlV4HZvF81bJ922qKYj6tuEEtHtc74qCGCVNrf72DDAsZ6XCWOtIpCfBfn9Zg8l
 Q7FApoSRY0r2ORn4+mNTetD0XGfN6SD9XxAh1Un3yXi7pYyE22is+aKFk6zmImRqffPE
 ER84ipK+CfZqpyf6GBE+oa9tGBvN2tpWVCQE6jbh6xDyX2IU8VeeMDy+MNMmfXCaChBA
 ksxpv7hydgIbuO4jIeqVjXanRTaQ/Tee+Zxqpx4EFRElfeWIjSOkjFwag4G41/Dmm6SX
 qZYA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20251104 header.b=FZDI90TS
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] libie: log more info when
 virtchnl fails
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: F38A94A9805
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]

On Thu, Apr 30, 2026 at 1:36=E2=80=AFAM Loktionov, Aleksandr
<aleksandr.loktionov@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Li Li via Intel-wired-lan
> > Sent: Wednesday, April 29, 2026 10:41 PM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; David S. Miller
> > <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Eric Dumazet
> > <edumazet@google.com>; intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; David
> > Decotigny <decot@google.com>; Singhai, Anjali
> > <anjali.singhai@intel.com>; Samudrala, Sridhar
> > <sridhar.samudrala@intel.com>; Brian Vazquez <brianvv@google.com>; Li
> > Li <boolli@google.com>; Tantilov, Emil S <emil.s.tantilov@intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-next v3] libie: log more info
> > when virtchnl fails
> >
> > Virtchnl failures can be hard to debug without logs. Logging the
> > details of virtchnl transactions can be useful for debugging virtchnl-
> > related issues.
> >
> > Tested: Built & booted on a test machine and synthetically produced a
> > virtual failure to produce the following log:
> >
> > idpf 0000:01:00.0: Non-zero virtchnl ret val (msg op: 1, ret val: 6,
> > data_len: 8); xn id: 0, cookie: 0
> > idpf 0000:01:00.0: Transaction failed (op 1, xn state:
> > 3, id: 0, cookie: 0, size: 8)
> >
> > Signed-off-by: Li Li <boolli@google.com>
> > ---
> > v3:
> >  - Use dev_err_ratelimited in both logs.
> >  - Move log placement to after virtchnl field validation.
> >  - Remove redundant op/cookie fields since they were validated.
> > v2:
> >  - Use dev_warn_ratelimited instead of dev_notice_ratelimited based on
> >    reviewer feedback.
> >
> >  drivers/net/ethernet/intel/libie/controlq.c | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/libie/controlq.c
> > b/drivers/net/ethernet/intel/libie/controlq.c
> > index ebc05355e39d..ceca8a076d79 100644
> > --- a/drivers/net/ethernet/intel/libie/controlq.c
> > +++ b/drivers/net/ethernet/intel/libie/controlq.c
> > @@ -766,6 +766,14 @@ libie_ctlq_xn_process_recv(struct
> > libie_ctlq_xn_recv_params *params,
> >           msg_cookie !=3D xn->cookie)
> >               return false;
> >
> > +     if (ctlq_msg->chnl_retval) {
> > +             dev_err_ratelimited(
> > +                     params->ctlq->dev,
> > +                     "Non-zero virtchnl ret val (msg op: %u, ret val:
> > %u, data_len: %u); xn id: %u, cookie: %u\n",
> > +                     ctlq_msg->chnl_opcode, ctlq_msg->chnl_retval,
> > +                     ctlq_msg->data_len, xn->index, xn->cookie);
> 'virtchnl ret val' 'ret val:' looks like a duplication in dmesg.

Let me send out v4 to simplify it.

>
>
> > +     }
> > +
> >       spin_lock(&xn->xn_lock);
> >       if (xn->state !=3D LIBIE_CTLQ_XN_ASYNC &&
> >           xn->state !=3D LIBIE_CTLQ_XN_WAITING) { @@ -1011,6 +1019,11
> > @@ int libie_ctlq_xn_send(struct libie_ctlq_xn_send_params *params)
> >               params->recv_mem =3D xn->recv_mem;
> >               break;
> >       default:
> > +             dev_err_ratelimited(
> > +                     params->ctlq->dev,
> > +                     "Transaction failed (op %u, xn state: %d, id: %u,
> > cookie: %u, size: %zu)\n",
> > +                     params->chnl_opcode, xn->state, xn->index, xn-
> > >cookie,
> > +                     xn->recv_mem.iov_len);
> Probably %u fits better for enums than %d, what do you think?

Sure, let me use %u in v4.

>
> >               ret =3D -EBADMSG;
> >               break;
> >       }
> > --
> > 2.54.0.545.g6539524ca2-goog
>
