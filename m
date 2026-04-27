Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OZeB9+572knFQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 21:32:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA13A479525
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 21:32:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2A0C808C8;
	Mon, 27 Apr 2026 19:32:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TvnSHDLlo3_i; Mon, 27 Apr 2026 19:32:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D1F6808C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777318362;
	bh=50dwTOATE1Na5UCaAF9M0vP1RtBQIq5R5kvcUf3ZMyk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P4fbes9NB2lRA0tHKIU5CF3JzquLfXs8BVh9DtdVkhHXpnIRI1thAugCDXK8glHIB
	 RfzdvRgu+rVAg/b/nNICVDrGRCHp1ThItBcWaGIamkVYiTh4HWD+L4X91tjOpA2SQP
	 6dTZ6cWZTVYcaxRKmcRZS1TbJqXIB0GYYpAshvD53dkYVXQHnwli1QcRfnXdXD1S8G
	 cYXMsj6feBb/0EnXd7Bm8PjaPAKbHM/cVl47BZG6SM31YZdIhTO8Qq8SCJKGFMbcij
	 hGngPX2y1Ow2WRdb0R29p5n0DDvXsAlT+hjW1Ft3QJrLtIopql8tZj/bR4dOq1MwUf
	 LwcJt6pYCYTFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D1F6808C4;
	Mon, 27 Apr 2026 19:32:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id ADF552DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 19:32:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 93CC3808C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 19:32:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xNB5M8wt6daz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 19:32:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5D8A5808C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D8A5808C0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D8A5808C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 19:32:37 +0000 (UTC)
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-613-rI3u8GcvNPazAPXGwz-Z_g-1; Mon, 27 Apr 2026 15:32:32 -0400
X-MC-Unique: rI3u8GcvNPazAPXGwz-Z_g-1
X-Mimecast-MFC-AGG-ID: rI3u8GcvNPazAPXGwz-Z_g_1777318352
Received: by mail-ot1-f70.google.com with SMTP id
 46e09a7af769-7dbc51bc49bso2430950a34.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 12:32:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777318352; x=1777923152;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=50dwTOATE1Na5UCaAF9M0vP1RtBQIq5R5kvcUf3ZMyk=;
 b=O7P/vMTMzzUzOwUH7NuZi/jz9iZusCpxALiNi2C0k4AVOlEl8jfUKSIBq3Zvc9dL7T
 lOYTIkud5azUdQs4O7ncgdpVfZsuWaiOffURHif/TXtJ8Iv75prKJFSoplHxqgvjti9J
 rJfHTMlaXx6pC7YTiFPi5DBbR/lzjHfmUJUE5xz4hFqzcSyrP9ENyhEc7fV40gekpNuX
 fHCtP21SNI/Z9o4wRQrXSaHQ3n4Qv5pgnsTy6tCQNL3zZWl7h8KQIxbrEWXyPAIzudak
 8oj1lfyrukpxpQsdx2UtcsvMwLYcoWoN6k0fDS/bhR1iVTBigu75zD4WEeFyJFsQJz4V
 bVGA==
X-Forwarded-Encrypted: i=1;
 AFNElJ8sDJtnVrVAsEWK3vw3p8L+4BwUyywzA7iMYD0yyJNE0aaNYVSGnVj+b8kCzaGldN+1qJx7hCjGaG1JjHZ/H4Y=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzw6GNgXdlicJ7li2ZdSLBVngP3kGtnhkAIscmsVRWafMFzvhfj
 PN0Of+MiqEYzO+/rsuOc+MhihzqG76N3IylYOlnHqzEZBTzCf/scRjGwS2QfDBuJto7uVT/Ireq
 cRYk+4ZtrM99YPYNJjLwewpmHWHzAvsGYa0pmOQov9nv4okfC27AH1IIiSARmQL345LWrs9ycCt
 91vwZUW09Y/AF6uQ9BPqvm5jwsCksBtTjpr4LpTXFJxixeIg==
X-Gm-Gg: AeBDieu9XJ4+yYyHj9S3os1T10wtb2vfaRHBf2+Z+gxC+0Yy2WWyY+S7UZw4gi9rGyc
 ji0OIRKh6lo9+3iNr8c2rh8LrcgPbqCjCfCQYbG8wUPFDhmOqDDJx4MpGLMvNKKdUljK6LB2xEC
 KVMW2evfLEUAsubnqmdpJa1jpuLAFkZ4qlHIP/XN8lcPbxsZl5p2xZ+H+Sa3YjdMHgVuLazXGE9
 C9aX0VY35L0y4iW
X-Received: by 2002:a05:6830:25c1:b0:7db:c389:6495 with SMTP id
 46e09a7af769-7de9869a09bmr178307a34.2.1777318351950; 
 Mon, 27 Apr 2026 12:32:31 -0700 (PDT)
X-Received: by 2002:a05:6830:25c1:b0:7db:c389:6495 with SMTP id
 46e09a7af769-7de9869a09bmr178295a34.2.1777318351513; Mon, 27 Apr 2026
 12:32:31 -0700 (PDT)
MIME-Version: 1.0
References: <20260427151827.43342-1-mschmidt@redhat.com>
 <IA3PR11MB898650A3226F812E881C1630E5362@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB898650A3226F812E881C1630E5362@IA3PR11MB8986.namprd11.prod.outlook.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Mon, 27 Apr 2026 21:32:19 +0200
X-Gm-Features: AVHnY4KDkbhBcuI8yDy-sLtNrjJxeDvZsewcQGhCAf5QBE6Z9Z8q8TFZ5-P_4lg
Message-ID: <CADEbmW0m_4p9XZZYWnX8RmYjtj1YtV2FRVygac1QH8iN8+FpGQ@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: BZXjBIh7oZ4WIyCuLK66uGvp5VDebHtNww2lIGPIsGE_1777318352
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1777318356;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=50dwTOATE1Na5UCaAF9M0vP1RtBQIq5R5kvcUf3ZMyk=;
 b=d0bFtNRtVEpExpn/VjLmS1iyuthsILM9lDN0dYjpv7TwucOC6SOA/hBFlM9tBEZBF1gp+3
 zjUzkxWd7Rz/07UCDmtdRHwKWRDu777KhCkw0klHyctuAyLI0PPhpMJ3eLIQCHX1x3xF1m
 VP/YEfpMI18byrnI+D4PQxvKvPh7NDU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=d0bFtNRt
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix stats array overflow
 when VF requests more queues
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: EA13A479525
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,osuosl.org:dkim,osuosl.org:email,atlassian.net:url,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

On Mon, Apr 27, 2026 at 5:30=E2=80=AFPM Loktionov, Aleksandr
<aleksandr.loktionov@intel.com> wrote:
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Michal Schmidt
...
> > See the linked RHEL Jira item for a reproducer.
> >
> > Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with
> > ice_vf_reconfig_vsi()")
> > Closes: https://redhat.atlassian.net/browse/RHEL-164321
> Not sure are links to local JIRAs are acceptable in kernel?

The ticket is publicly visible and does not require a login.

> Why no Cc: stable@vger.kernel.org?

Apparently I still have not internalized the removal of the netdev
special stable handling from 5 years ago. Sorry!

Michal

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>
> > Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> > Assisted-by: Claude:claude-opus-4-6 semcode
> > ---
> >  drivers/net/ethernet/intel/ice/ice_lib.c    | 2 +-
> >  drivers/net/ethernet/intel/ice/ice_lib.h    | 1 +
> >  drivers/net/ethernet/intel/ice/ice_vf_lib.c | 7 +++++++
> >  3 files changed, 9 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> > b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index 837b71b7b2b7..fc78176a2a8d 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -3015,7 +3015,7 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi
> > *vsi,
> >   * ice_vsi_realloc_stat_arrays - Frees unused stat structures or
> > alloc new ones
> >   * @vsi: VSI pointer
> >   */
> > -static int
> > +int
> >  ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)  {
> >       u16 req_txq =3D vsi->req_txq ? vsi->req_txq : vsi->alloc_txq;
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h
> > b/drivers/net/ethernet/intel/ice/ice_lib.h
> > index 49454d98dcfe..6f7da84384e5 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
> > @@ -66,6 +66,7 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked);
> > void ice_vsi_decfg(struct ice_vsi *vsi);  void ice_dis_vsi(struct
> > ice_vsi *vsi, bool locked);
> >
> > +int ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi);
> >  int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);  int
> > ice_vsi_cfg(struct ice_vsi *vsi);  struct ice_vsi
> > *ice_vsi_alloc(struct ice_pf *pf); diff --git
> > a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > index 772f6b07340d..9edb2c14f553 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > @@ -268,6 +268,13 @@ static int ice_vf_reconfig_vsi(struct ice_vf *vf)
> >
> >       vsi->flags =3D ICE_VSI_FLAG_NO_INIT;
> >
> > +     vsi->req_txq =3D vf->num_req_qs;
> > +     vsi->req_rxq =3D vf->num_req_qs;
> > +
> > +     err =3D ice_vsi_realloc_stat_arrays(vsi);
> > +     if (err)
> > +             return err;
> > +
> >       ice_vsi_decfg(vsi);
> >       ice_fltr_remove_all(vsi);
> >
> > --
> > 2.54.0
>

