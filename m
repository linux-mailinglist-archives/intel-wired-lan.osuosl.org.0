Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOKZLkbanmkTXgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 12:17:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBC319656E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 12:17:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBCFE41E97;
	Wed, 25 Feb 2026 11:17:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yisd9hUtsKLf; Wed, 25 Feb 2026 11:17:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3946841E6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772018244;
	bh=sJAgujioq3EwE7o85/KGFLew4sjYqJsiovhiUlVgoug=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=asB18ZtUaOATLDoUpvfKQ+faHTdY7uY+ZOrtPEXjDuvQBIuK2VEm3sp6rZkRkYkyw
	 DFSo7xFkQdIOP1+3M6gLadqjj3emy77gekqZqJ8dF8U41XlGjGnboMseUKBjCnddTo
	 c7QKRW36FFsGwJC+qpPKGrEViiP/E6TXH+f5m681WeJRaN8AHUBKd7VJ/Ua//zkk1r
	 tY/9yl1QUK1WDPR9l3uKId3BBf9tXQDmBAUx8khPWo9IiZl4HghUNe/58RZaSkOYlb
	 deE20LHiCHICdd8MC5KyHXYD6AAB1zIBngMbwVzmwTMLsFaCKTho6usC38DN7euRI7
	 m4qE4CFRpo8uQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3946841E6F;
	Wed, 25 Feb 2026 11:17:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 530EA1B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 11:17:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 41A5F42489
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 11:17:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 49F2_c-IeSOk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 11:17:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3D3AA42464
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D3AA42464
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3D3AA42464
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 11:17:20 +0000 (UTC)
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com
 [209.85.210.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-400-6NNxc9lcPP-gLBd6G9Mz6w-1; Wed, 25 Feb 2026 06:17:18 -0500
X-MC-Unique: 6NNxc9lcPP-gLBd6G9Mz6w-1
X-Mimecast-MFC-AGG-ID: 6NNxc9lcPP-gLBd6G9Mz6w_1772018238
Received: by mail-ot1-f72.google.com with SMTP id
 46e09a7af769-7d18afe672aso8115182a34.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 03:17:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772018238; x=1772623038;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=sJAgujioq3EwE7o85/KGFLew4sjYqJsiovhiUlVgoug=;
 b=KfD9quV69IR/sQ0X63dEo5hiE0g8asxA2HzPrsNrQM5F4XmQY5IaIOMDM6TgG1Xupu
 beOLZGGWZ/AJNT4q/CyQQuvlUYxhMOqQNh0dTqjybvxwgZbnUcNOcmJHqeW1umZiD3zC
 ZLi5hTxMsqTgk97ngtyMQxI9hrwj2U2vsnRT+WwwrPkDFKTr9c/IvICORXHLLb2sBOMe
 AlCL72B/IkKTEUDFXPA5P3vRme2u/JOSxxh2lHWPR8O79Q1rK9BpV7VDp0VyCp1Oj3gg
 Pr0Vh0iy2AzKD1yDM/wGf6/204db80sszHvyLUIsuZgm/uox423T9gcItpcCXZ4V2jE0
 7NhA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUXr7RnnIFw9jlWxSOb4wGCwenIwSJzOciV4FFcYzqoDCtyunyUzEtCL+5MQB48O4ZxV1gNtrfptJ7lXMJK3V4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyt+84tFrl2W94K/xEGMqLMZG4BU4dd1B3dt0Cm3DVQU04PJ66t
 k29u17NWwut4avqJFKj6tVsRfEewrSSs3jeWyOLjtL+SKKajua5D6DP8t6adhBmDn4/VVRftiXd
 KrqVDR5s1ruevZnzXecLKsk97Aip9vxeyO/nbBzqjE+vXJ+ZML4VHloLgZxDHOX6i4FxNGZ/IR1
 V2xXaQAd8ZOJLpUaKLANH84SaM9xhU9RP30HvaCCEoplNAlA==
X-Gm-Gg: ATEYQzzToJ3wdE7sjcsQqWeoODe9Tz6ZVexaJPUA2R3njfd07qxz4Yet7QLog/NdIgY
 ObqyV0RGdb/SZ4TwOSqu6L0SezKrH/IH5lqWdDIdOTGjtxmYb+iY3eezYeieZUen3dATsWusgRH
 iKajkT+a3E7fglJ9x42zzFlC/C8DSfPcCfpYX/pXBERse7HWAqrxbYfa+bDuzxBF6ftr5nxztE5
 fYB0g==
X-Received: by 2002:a05:6830:268f:b0:7cf:d108:65f with SMTP id
 46e09a7af769-7d52be03c9bmr8085261a34.2.1772018237695; 
 Wed, 25 Feb 2026 03:17:17 -0800 (PST)
X-Received: by 2002:a05:6830:268f:b0:7cf:d108:65f with SMTP id
 46e09a7af769-7d52be03c9bmr8085246a34.2.1772018237391; Wed, 25 Feb 2026
 03:17:17 -0800 (PST)
MIME-Version: 1.0
References: <20260225100137.383527-1-poros@redhat.com>
In-Reply-To: <20260225100137.383527-1-poros@redhat.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 25 Feb 2026 12:17:05 +0100
X-Gm-Features: AaiRm50bofXry4bxFntonEhNYGGknNqMfZsgOM_LWk9I1qmKjhrgXGt_4R_ORqo
Message-ID: <CADEbmW2WNCLuRYVs5FTKR6GR16yOMmQGyg0vYR98SQCCwb_5HA@mail.gmail.com>
To: Petr Oros <poros@redhat.com>
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Eric Dumazet <edumazet@google.com>, Ahmed Zaki <ahmed.zaki@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 5u715kKW_MR9syLtNcsvIxoO_Me4hNxUeXdq7sfDouE_1772018238
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1772018240;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sJAgujioq3EwE7o85/KGFLew4sjYqJsiovhiUlVgoug=;
 b=dobR/A+EotlZvPMXAB+YhfXhv7fOd4XuPDuXVJnPkpWWytdz5pk74sMhBSd9Tx+x7BE/j2
 gv/qOOwm2hRT6rlz2u1qY2ExPIZ7C63tdPD2PFp1Wai/RxKPQEtfXxnaZ8EE2L9+ydcmfj
 fl6ofIrM7q6m5avUJqL0wOFPpnoTReo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=dobR/A+E
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: fix VLAN filter lost on
 add/delete race
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:ahmed.zaki@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1CBC319656E
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 11:02=E2=80=AFAM Petr Oros <poros@redhat.com> wrote=
:
>
> When iavf_add_vlan() finds an existing filter in IAVF_VLAN_REMOVE
> state, it transitions the filter to IAVF_VLAN_ACTIVE assuming the
> pending delete can simply be cancelled. However, there is no guarantee
> that iavf_del_vlans() has not already processed the delete AQ request
> and removed the filter from the PF. In that case the filter remains in
> the driver's list as IAVF_VLAN_ACTIVE but is no longer programmed on
> the NIC. Since iavf_add_vlans() only picks up filters in
> IAVF_VLAN_ADD state, the filter is never re-added, and spoof checking
> drops all traffic for that VLAN.
>
>   CPU0                       CPU1                     Workqueue
>   ----                       ----                     ---------
>   iavf_del_vlan(vlan 100)
>     f->state =3D REMOVE
>     schedule AQ_DEL_VLAN
>                              iavf_add_vlan(vlan 100)
>                                f->state =3D ACTIVE
>                                                       iavf_del_vlans()
>                                                         f is ACTIVE, skip
>                                                       iavf_add_vlans()
>                                                         f is ACTIVE, skip
>
>   Filter is ACTIVE in driver but absent from NIC.

I don't get it. If, as the diagram shows, iavf_del_vlans() skipped it,
then how does the filter become absent from NIC?

Michal

> Transition to IAVF_VLAN_ADD instead and schedule
> IAVF_FLAG_AQ_ADD_VLAN_FILTER so iavf_add_vlans() re-programs the
> filter.  A duplicate add is idempotent on the PF.
>
> Fixes: 0c0da0e95105 ("iavf: refactor VLAN filter states")
>
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/et=
hernet/intel/iavf/iavf_main.c
> index 4b0fc8f354bc90..6046b93c7f3472 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -782,10 +782,13 @@ iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter=
 *adapter,
>                 adapter->num_vlan_filters++;
>                 iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ADD_VLAN_F=
ILTER);
>         } else if (f->state =3D=3D IAVF_VLAN_REMOVE) {
> -               /* IAVF_VLAN_REMOVE means that VLAN wasn't yet removed.
> -                * We can safely only change the state here.
> +               /* Re-add the filter since we cannot tell whether the
> +                * pending delete has already been processed by the PF.
> +                * A duplicate add is harmless.
>                  */
> -               f->state =3D IAVF_VLAN_ACTIVE;
> +               f->state =3D IAVF_VLAN_ADD;
> +               iavf_schedule_aq_request(adapter,
> +                                        IAVF_FLAG_AQ_ADD_VLAN_FILTER);
>         }
>
>  clearout:
> --
> 2.52.0
>

