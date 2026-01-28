Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IH0qEP/WeWlI0AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 10:29:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 507829ECBC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 10:29:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7FCF4055E;
	Wed, 28 Jan 2026 09:29:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GOgaKDeFcsP8; Wed, 28 Jan 2026 09:29:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19446405BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769592572;
	bh=1qE6rKoNiQxDL9EWiREE6xxOPhSv5w6cMT8lb0+AlqQ=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=5gqWKleQ5eBt6BxaBbOEPYadBvsM1IrbsIuIKjN7R3nTklKo28osNsWqFRQXkhV3U
	 V81gdJ2/k4bHdQ1M+Q108ps872PgOkYXAzSaaIdlrZOIRkuFJyCpkWNml+ht3+FF9r
	 H9wqIGkRa6whf+T5V4T3AKrRprYN37Nf9dkD7KCC7tzv0lRrPVY3VTG7VCQBz/U+Me
	 pexmFszH8/ZwCehMPTH4H73lRYkJlNL6Ry7nOBVPr/JlBH0o4kqkAGOtjrtrjyg8Am
	 r95cnoUznMqxZIVH3EiUv858E31ZEwUq0Z5wMbIE/1Fzon6qXq2SSRYMA2g32xRywg
	 sbAhFIAmgwdRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19446405BF;
	Wed, 28 Jan 2026 09:29:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F50A118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 09:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FCD96063F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 09:29:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IEfv8wQjfB6K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 09:29:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7550A605AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7550A605AD
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7550A605AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 09:29:28 +0000 (UTC)
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 511F43F7BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 09:29:26 +0000 (UTC)
Received: by mail-dl1-f72.google.com with SMTP id
 a92af1059eb24-11b94abc09dso9838249c88.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 01:29:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769592564; cv=none;
 d=google.com; s=arc-20240605;
 b=SLNcxA1Vb3k6+WY3qr9BsmjM9zyuleYzyOdSE9/Gzscc3eOsOEnwbaphaYYVQ34WSN
 ToiHAmn4c7A6ymWLRWhD84amx2xexlYF6nBpD1CSvwjl1AlbsREG3UPEgJlFb8dfMwL4
 TC0FhfKDcXSAVE6mNbaOYjH2NwYPYY7UO/P8+uXBm6nokfjinQinXOHbUjReTu3Gk0pq
 51zW/gTFOQ3Iyol1brd0IW4GlPJJbreVM1Rc/abIYtlDrmOaePeIevFeutKlbrn0KQHG
 PJt8rWfKFG7T8SxyXH6TM9nbfp8N4fkDEk+sebBDzdS39DvdANr6SgQF1IlVLe+/dQzY
 F1Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version;
 bh=1qE6rKoNiQxDL9EWiREE6xxOPhSv5w6cMT8lb0+AlqQ=;
 fh=nO2VDcPQW/W4LgtBTGt9hFt+KdFOoKLifOuBb8n4TKc=;
 b=A7XBShnLHNVgALz9ROKfHd7X+p9drm32h8qP5FC503wOZF7RTrbfXoJXJHMg6IncUO
 fVUtLYF0PFATHcYFBo/EFYyP4xPTM1OZBInAnfNaCvgQefwh7m97CouWK/TSyJdyDnXm
 QX9OJwJqSLG6SjUyivvhHpIOv4LWfgVoXIjK83nfAN+DVR65Fese9f8+fLddHi9h22uN
 cKwgp+3ZaCoSK7oj4CfPucP10B93lViIfx4WKjjB1zmq9+k+GtRTQ/VeWwZGH7nmp21K
 G6/w/G1LgxIlKlmlL/DW0kdSlbK5dOA2nMnYZE5e8ZOdnsxMHMY5/5X7gbWua1qvaVcL
 jTgw==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769592564; x=1770197364;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=1qE6rKoNiQxDL9EWiREE6xxOPhSv5w6cMT8lb0+AlqQ=;
 b=Gz5yLmAmv/Z4+UyA1Yr/6lxb7uanAlUG+Pefh9uUT7K17t4dOQMH898wAb7sTw5IKS
 vnqvyWRDhjzSAu2AlfFCfqeTMq4c+I46Z0aCBi7+xZZwImMJ2QPp3UTP+XFdAGAwBAGK
 uGxQA+A202/6WbMqNfU++EQMbsGGlAatuvh952cr5CRZ94iZwkQ1Uo9wvs7vPkS4VC9y
 mbis+hY8ask0rENuKtb+IOWIhWmimwj/CxqK9SFBeKbwu0vUBH6RprDmsXhvrQFVb8ba
 h4T5nQ5iI+sxVITGr+DOzLqFYLzLnZS7PiHS3ldq0aeWnQsLAjk4A35AbrHek3HMHkAq
 aBCQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX5ID527sdmRZHDCjoC9WGlN2PSLNuAtHyjQCZGdndarOSbqpe9aAnDj1cRaEZFsMJcM3f9SOKZO55NBk7UFAM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx+U2qVqDlW1p5VrbOSWHLj90IIrNK3uexrfaulfASS2lN3M3Si
 4N4XjvSKBTDhXqwiUT/i3v4OTM9RvmVGH4gCqpkgTI+1J0S7i9DfR7MofZbuUvKJ/lT18oL1k0q
 0eOzQfjuDTcyKshZCpJUiVL7e+Uhncflq0yFZ2Qogn3eqTTSvJY9dTjGXXebYUVy+D3QBWtcKO+
 pKfGsODX5iYjJ0iu3uIaRMQMUOfgVX4cylP0QL5/nS2hbl6IunZxqyqaS6u/nkww==
X-Gm-Gg: AZuq6aJ2/dIrhEME+eFKbbo19a0Zj9rgySCHe8+KQevbofGg9CuKMKO4pK8Pv4Ygz0P
 MeKRg+RD5nCAJnCG59HD80kB1i7MIr945DwzX99CT7DAcgvEG6xqiW7BSN0x7ZQV3as8g7ycDqG
 yxUrzGvB8T8l9Cd45+1mzFFh8CGSLr7KxzktNfWa4zf3qL3f5x8waK+hsOYDQwz1baZag=
X-Received: by 2002:a05:7022:1e0f:b0:11e:65b5:75ce with SMTP id
 a92af1059eb24-124a00638dcmr2673614c88.10.1769592564453; 
 Wed, 28 Jan 2026 01:29:24 -0800 (PST)
X-Received: by 2002:a05:7022:1e0f:b0:11e:65b5:75ce with SMTP id
 a92af1059eb24-124a00638dcmr2673601c88.10.1769592563932; Wed, 28 Jan 2026
 01:29:23 -0800 (PST)
MIME-Version: 1.0
References: <20251225062122.736308-1-aaron.ma@canonical.com>
 <20251225062122.736308-2-aaron.ma@canonical.com>
 <4a771aef-4227-4f83-9852-80105190722c@intel.com>
In-Reply-To: <4a771aef-4227-4f83-9852-80105190722c@intel.com>
Date: Wed, 28 Jan 2026 17:29:12 +0800
X-Gm-Features: AZwV_QgL6FJ04T2ofaJuqdex-U7OER7rhndajJNjXZ3ipnT0x2aQoU_xK3CxizQ
Message-ID: <CAJ6xRxUa8h3yO8OksnddWJp6-XkYOsb0qg4vAmt+8MHs0ncEyQ@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, "Ertman, David M" <david.m.ertman@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1769592566;
 bh=1qE6rKoNiQxDL9EWiREE6xxOPhSv5w6cMT8lb0+AlqQ=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=ZStqnL97LMqhYjszKKnSXiQAj9Q2LSwXC3o3b3+5pgzTtGvJnF3dk7Psjis+G2m0C
 InYXxbunoNpLJUfJbUGnUtChG9EISKI0K2ndHHAPilnwhbD31OJvRZCg7l/FwOboj2
 A94yXYi6O+FWglfMvKkad06hrTEZ+llRwYjzaIIIB+vc0i5c4nWkpun1kYlsIm3dZV
 3payobt+10Ly06dgqjP4oGIArqKbRN6Vdfq+5WWKbpUrbT8lMm+LnxuVYMGDTw0liQ
 h4QMq7SHatWd7gqlHDP4GjBUsJlRsBcLi740vXrIYdhXNuDV2JG0R1Xi6DeaH5OlsU
 L6t5F9BZhG95pGIt2Q9FWLuBQFmh9bpAkFR8dMPpvefLXnLwTmM1iuyVSnHp6yniUV
 ceWrDKW3KkUwd0yI7ng/C1hWJ8UXVQc2cpk+O/+rJ7p0n7t/onczoDijgjMwgXUdEp
 rz+DiMf+r8cH+FnloJYVusGBc7z/OKpUPZmbmOMj0Vh9wNoydRdAag76faQDs+IfZT
 iIlHkWJxEhloCnvPhcXR8zVEeZ28DyVGO+eqkgm6iZqs96ISZs4jW6gM6TW3+J7XQx
 CIbZJh/XjcbYpLpUQ1MqU/cV2OlX3LFrwiNDBBvceZ3AAAO7JuUHGt5dtXSTiS7gZq
 fIPfZZXdsza6AUUx90C1IZ0k=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=ZStqnL97
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] ice: recap the VSI and QoS
 info after rebuild
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
From: Aaron Ma via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Aaron Ma <aaron.ma@canonical.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,osuosl.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:david.m.ertman@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[aaron.ma@canonical.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 507829ECBC
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 6:32=E2=80=AFAM Tony Nguyen <anthony.l.nguyen@intel=
.com> wrote:
>
>
>
> On 12/24/2025 10:21 PM, Aaron Ma wrote:
> > Fix IRDMA hardware initialization timeout (-110) after resume by
> > separating VSI-dependent configuration from RDMA resource allocation,
> > ensuring VSI is rebuilt before IRDMA accesses it.
> >
> > After resume from suspend, IRDMA hardware initialization fails:
> >    ice: IRDMA hardware initialization FAILED init_state=3D4 status=3D-1=
10
> >
> > Separate RDMA initialization into two phases:
> > 1. ice_init_rdma() - Allocate resources only (no VSI/QoS access, no plu=
g)
> > 2. ice_rdma_finalize_setup() - Assign VSI/QoS info and plug device
> >
> > This allows:
> > - ice_init_rdma() to stay in ice_resume() (mirrors ice_deinit_rdma()
> >    in ice_suspend()
> > - VSI assignment deferred until after ice_vsi_rebuild() completes
> > - QoS info updated after ice_dcb_rebuild() completes
> > - Device plugged only when control queues, VSI, and DCB are all ready
> Hi Aaron,
>
> Sorry for the late feedback, but I'm working on getting AI Review in
> place and when I ran it against this path it flagged a couple of things..=
.
>
> > Fixes: bc69ad74867db ("ice: avoid IRQ collision to fix init failure on =
ACPI S3 resume")
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> > ---
> > V1 -> V2: no changes.
> > V2 -> V3:
> > - mirrors init_rdma in resume as Tony Nguyen suggested to fix
> > the memleak and move ice_plug_aux_dev/ice_unplug_aux_dev out of
> > init/deinit rdma.
> > - ensure the correct VSI/QoS info is loaded after rebuild.
> >
> >   drivers/net/ethernet/intel/ice/ice.h      |  1 +
> >   drivers/net/ethernet/intel/ice/ice_idc.c  | 41 +++++++++++++++++-----=
-
> >   drivers/net/ethernet/intel/ice/ice_main.c |  7 +++-
> >   3 files changed, 38 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/etherne=
t/intel/ice/ice.h
> > index 147aaee192a79..6463c1fea7871 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -989,6 +989,7 @@ int ice_schedule_reset(struct ice_pf *pf, enum ice_=
reset_req reset);
> >   void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
> >   int ice_plug_aux_dev(struct ice_pf *pf);
> >   void ice_unplug_aux_dev(struct ice_pf *pf);
> > +void ice_rdma_finalize_setup(struct ice_pf *pf);
> >   int ice_init_rdma(struct ice_pf *pf);
> >   void ice_deinit_rdma(struct ice_pf *pf);
> >   bool ice_is_wol_supported(struct ice_hw *hw);
> > diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/eth=
ernet/intel/ice/ice_idc.c
> > index 420d45c2558b6..b6079a6cb7736 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_idc.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_idc.c
> > @@ -360,6 +360,35 @@ void ice_unplug_aux_dev(struct ice_pf *pf)
> >       auxiliary_device_uninit(adev);
> >   }
> >
> > +/**
> > + * ice_rdma_finalize_setup - Complete RDMA setup after VSI is ready
> > + * @pf: ptr to ice_pf
> > + *
> > + * Sets VSI-dependent information and plugs aux device.
> > + * Must be called after ice_init_rdma(), ice_vsi_rebuild(), and
> > + * ice_dcb_rebuild() complete.
> > + */
> > +void ice_rdma_finalize_setup(struct ice_pf *pf)
> > +{
> > +     struct iidc_rdma_priv_dev_info *privd;
> > +
> > +     if (!ice_is_rdma_ena(pf) || !pf->cdev_info)
> > +             return;
> > +
> > +     privd =3D pf->cdev_info->iidc_priv;
> > +     if (!privd || !pf->vsi[0] || !pf->vsi[0]->netdev)

Aleksandr raised this change to:
  if (!privd || !pf->vsi || !pf->vsi[0] || !pf->vsi[0]->netdev)

I will add this in v4.

> > +             return;
> > +
> > +     /* Assign VSI info now that VSI is valid */
> > +     privd->netdev =3D pf->vsi[0]->netdev;
> > +     privd->vport_id =3D pf->vsi[0]->vsi_num;
> > +
> > +     /* Update QoS info after DCB has been rebuilt */
> > +     ice_setup_dcb_qos_info(pf, &privd->qos_info);
> > +
> > +     ice_plug_aux_dev(pf);
>
> "
> Does making ice_rdma_finalize_setup() void lose error reporting? The
> old ice_init_rdma() called ice_plug_aux_dev() and propagated errors to
> callers with error cleanup. Now ice_plug_aux_dev() returns int but
> ice_rdma_finalize_setup() is void, so the return value is ignored.
>
> If ice_plug_aux_dev() fails (kzalloc failure, auxiliary_device_init
> failure, or auxiliary_device_add failure), the error is silently
> ignored and RDMA functionality won't be available. The old code would
> return an error that ice_load() and ice_resume() would log, helping
> users understand why RDMA isn't working.
>
> Should ice_rdma_finalize_setup() return int and propagate the error, or
> at least log a message when ice_plug_aux_dev() fails?
> "
>
> I agree that logging a message would be helpful to inform the user.
> Either here or propagating it and printing a differentiated messages
> would be nice.

Aleksandr also raised this.
Since ice_rebuild() which called this function can't propagate errors,
so I think logging a dev_warn() when ice_plug_aux_dev() fails is more
appropriate.

>
> > +}
> > +
> >   /**
> >    * ice_init_rdma - initializes PF for RDMA use
> >    * @pf: ptr to ice_pf
> > @@ -398,23 +427,16 @@ int ice_init_rdma(struct ice_pf *pf)
> >       }
> >
> >       cdev->iidc_priv =3D privd;
> > -     privd->netdev =3D pf->vsi[0]->netdev;
> >
> >       privd->hw_addr =3D (u8 __iomem *)pf->hw.hw_addr;
> >       cdev->pdev =3D pf->pdev;
> > -     privd->vport_id =3D pf->vsi[0]->vsi_num;
> >
> >       pf->cdev_info->rdma_protocol |=3D IIDC_RDMA_PROTOCOL_ROCEV2;
> > -     ice_setup_dcb_qos_info(pf, &privd->qos_info);
> > -     ret =3D ice_plug_aux_dev(pf);
> > -     if (ret)
> > -             goto err_plug_aux_dev;
> > +
> >       return 0;
> >
> > -err_plug_aux_dev:
> > -     pf->cdev_info->adev =3D NULL;
> > -     xa_erase(&ice_aux_id, pf->aux_idx);
> >   err_alloc_xa:
> > +     xa_erase(&ice_aux_id, pf->aux_idx);
>
> "
> Does this error path call xa_erase() with an uninitialized pf->aux_idx?
>
> When xa_alloc() fails at line 423, the code jumps to err_alloc_xa which
> now calls xa_erase(). But if xa_alloc() failed, nothing was allocated
> into the xarray, and pf->aux_idx contains an undefined value from the
> failed xa_alloc() call. Calling xa_erase() with this undefined index
> seems incorrect.
>
> In the original code, the err_plug_aux_dev label came after successful
> xa_alloc(), so xa_erase() was only called when something was actually
> allocated. The err_alloc_xa label came after err_plug_aux_dev and fell
> through without calling xa_erase().
> "
>

Right, after xa_alloc failed, it should not call xa_rease, I will remove it=
.

I will send v4 patch to fix 3 issues above.
Thanks for the detail review.

> Semi-related. I sent patch 1 of this series on since it seems like it
> can be independent of this one so no need to carry that one with this.
>

Thank you very much.
Aaron

> Thanks,
> Tony
>
> >       kfree(privd);
> >   err_privd_alloc:
> >       kfree(cdev);
