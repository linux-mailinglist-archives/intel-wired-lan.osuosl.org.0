Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /yw+CVwAz2lesQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 01:48:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2687438F4ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 01:48:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C87E60814;
	Thu,  2 Apr 2026 23:48:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LF52lapNaeYi; Thu,  2 Apr 2026 23:48:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23F7A6080B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775173719;
	bh=n/tN/fSucZVzXItT34ZMLPR7+Vd6FzvpbCN0/zznqP4=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Im9H//8UN2BOnT6ECtRBsXvoYWQJUfdd49hkHJs9B9JqhLoBmBzRM9NnfzmdL8+bv
	 GjBG72L6fB04TeB2KUnB289yIfqVSSILxxRO5xboU70NLNvagQns+ZCpJCX0BL/f5L
	 Jl9PvFTSAx3OSX9Dh4mEhuPP6jrxX5fllSeqPn2LKX5qmU6MSZSneLNDuk6sGTInQ3
	 blLe0MAyVDbTP+hAINcuScrCtGwI9WEdU2m/qx9/9QJAtuvL/gpsTkHuNpHA6V0I10
	 IL3x0q0y/c/YwDLFA/0v2YLJO3Ucr7Dmm9ugJdueeUbZiw1tXp1LgrhEcvG2PeJn9R
	 TcE32VPF03Low==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23F7A6080B;
	Thu,  2 Apr 2026 23:48:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7268D2A2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 23:48:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 585DD400F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 23:48:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F_KvgNWOA7Cv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2026 23:48:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AE8024002D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE8024002D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE8024002D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 23:48:36 +0000 (UTC)
X-CSE-ConnectionGUID: MHq78LihTmO0f8jbTCDRJA==
X-CSE-MsgGUID: UylCuEY2QvqQbP7sK6Nd4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="75961996"
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208";a="75961996"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 16:48:36 -0700
X-CSE-ConnectionGUID: tjSrim2+TJqzeTDkrUgoWA==
X-CSE-MsgGUID: TiOtLPiUTV+8RW4wpIPixQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208";a="227361270"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.88.27.144])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 16:48:36 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Bob Van Valzah <bob@vanvalzah.com>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, julianstj@fb.com, jeff@jeffgeerling.com, Lasse
 Johnsen <lasse@timebeat.app>, Ian Gough <ian@timebeat.app>
In-Reply-To: <CDC20B85-E83B-4AC9-9261-24B3D967DCA6@vanvalzah.com>
References: <D1C3B3DF-960F-40C7-BBD7-994359F0C8AD@vanvalzah.com>
 <65977d5b-16eb-418c-995e-6a918f67707a@linux.dev>
 <B22CCB1A-15FE-4233-9F47-7FE522C8D6FF@VanValzah.Com>
 <CAD61B95-35BF-4BAC-AC26-6AC043DE6FC1@vanvalzah.com>
 <CDC20B85-E83B-4AC9-9261-24B3D967DCA6@vanvalzah.com>
Date: Thu, 02 Apr 2026 16:48:35 -0700
Message-ID: <874ilsyld8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775173717; x=1806709717;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=y95f5QlYUMwAz4Mebn4afYMRuQzmkG7xApZVnf6syFs=;
 b=GSq0ahLNpfMbvubdL55KmhPPGhc405RU53Vrqn8nQmu9t6kSCVn7xROx
 GoSNcBuBs+dJaoA3G4AyHKEeteHJnDVJ248WJweLZUQKMPZzUsOW7HnZF
 WPII6Qkaoaux5DIRPmiu8RunmgjfoDf5U2rhYBJGPuDBNVxFRA2rTwYre
 5RyOujX1u5cQmk6Sc/oNWiU4UCglIt7ClfRN984lURQ3Jc7xURuIw5dPT
 Neg5XrIh83tDRV0ZzMNqkv5YIg0+7n8O947sFqmhcmoNUYdxTaaHBvOL+
 mz3q4ATrig2+lOnZQRqkXggaq0JejI+cj8Ijx5HLZOIN04MtYb3LpfQjM
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GSq0ahLN
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix Tx timestamp timeout caused
 by unlocked TIMINCA write in adj fine]
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
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:bob@vanvalzah.com,m:vadim.fedorenko@linux.dev,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:julianstj@fb.com,m:jeff@jeffgeerling.com,m:lasse@timebeat.app,m:ian@timebeat.app,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim];
	FORGED_SENDER(0.00)[vinicius.gomes@intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[vinicius.gomes@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2687438F4ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

Bob Van Valzah <bob@vanvalzah.com> writes:

> Vadim,
>
> Thanks for the feedback on our first patch. We've spent more time in
> the lab studying the igc TX timestamp behavior under stress. We
> understand the failure modes much better now.
>
> You were right that ptp_tx_lock was the wrong lock =E2=80=94 it guards th=
e TX
> queue, not the timing registers. You suggested tmreg_lock instead. We
> tested tmreg_lock alone (v2) and found it doesn't fix the bug: it appears
> that the race is between the software TIMINCA write and the hardware=E2=
=80=99s
> asynchronous TX timestamp capture pipeline, not between two software thre=
ads.
> tmreg_lock serializes software register accesses but can't prevent the ha=
rdware
> from reading TIMINCA at the instant software writes it.
>
> Our v3 patch (attached) takes tmreg_lock as you suggested, and
> additionally disables TX timestamping in hardware via TSYNCTXCTL around
> the TIMINCA write. This prevents the hardware from starting new
> timestamp captures during the rate change:
>
>     spin_lock_irqsave(&igc->tmreg_lock, flags);
>     txctl =3D rd32(IGC_TSYNCTXCTL);
>     wr32(IGC_TSYNCTXCTL, txctl & ~IGC_TSYNCTXCTL_ENABLED);
>     wr32(IGC_TIMINCA, inca);
>     wr32(IGC_TSYNCTXCTL, txctl);
>     spin_unlock_irqrestore(&igc->tmreg_lock, flags);
>

I sent, a couple of days ago, the link to your report to our hardware
folks, waiting for them to take a look.

I think that this workaround, even if incomplete, will be interesting to
them as well. Again, thanks for the detailed report.


Cheers,
--=20
Vinicius
