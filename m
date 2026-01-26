Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPVPFj8md2kUcwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 09:30:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EBB8578E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 09:30:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EF7640644;
	Mon, 26 Jan 2026 08:30:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MgfoV36gDOWp; Mon, 26 Jan 2026 08:30:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8347E40662
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769416249;
	bh=QoXcx9RJW2MGk9gdqPpQfFLPfh4v79V4Bss6akGxX8U=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HVsRryTM6qGqarJXPrBgYsPr8YdmgrP59WNO7MK8ETSpOBurExxqkxN9ESX+mQL5w
	 1fZWpSiBlbZVkE+Vqt9Ug2nYeCOl+g2g4IN0odD3uAZA2d602O+lLIAm6KhW2TXfAW
	 H/ZGeNthG+MeS6hqhWGr9oA1XOkwV/d24OOJp/hrVGTNnXaLZXXe+S0xlb/VQV6SEc
	 89Q0q0kyyqxgQcC2+N39+x7v6r3I5lKSCBneSF6H+C221TUhiKVaMrLQCw6eDpXFEi
	 89WluSUXy9SNCEh30oLYnHqEtrilkFxX0tlVzIQQLnK7cHW/0Hq5obzeaCDnga+JAZ
	 jLgaq0G84U+TQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8347E40662;
	Mon, 26 Jan 2026 08:30:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D4E8355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 08:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 415908175A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 08:30:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IxQGxM8k_Tdc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 08:30:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 52BB581758
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52BB581758
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52BB581758
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 08:30:45 +0000 (UTC)
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-151-9bPMOPEFMoOtO71qDxsE5w-1; Mon, 26 Jan 2026 03:30:42 -0500
X-MC-Unique: 9bPMOPEFMoOtO71qDxsE5w-1
X-Mimecast-MFC-AGG-ID: 9bPMOPEFMoOtO71qDxsE5w_1769416242
Received: by mail-ot1-f70.google.com with SMTP id
 46e09a7af769-7cfda364023so1485285a34.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 00:30:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769416241; x=1770021041;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=QoXcx9RJW2MGk9gdqPpQfFLPfh4v79V4Bss6akGxX8U=;
 b=udDF3bF4uoztjCV5bNLY6XRIUTGnv7bPCrdwsA8m4Xi3nOH+mLvVOQqJgyw50FJM6X
 FuNbZ9mH9aiVjk2OGWBHFBCj9SN5Cggyp0v+yQwEzxTDYQ4xh+jZjmCX85CiokIrrae9
 KDF0Jo0sFtVuOxSa/exDlcGP/KMkGjPi1YwzXSpk2RAL/3uWDayzHSPCw52PWeJsGYJ2
 dzii2wtrd3Jv2ZzgJYN4WXropct9Ghb5VE3kkPTvIi5gRw8xoSkos/ftUsT0P6B7g2GW
 MObOH5cwn8BONBLvmWNaf/jVLh4bfHjZGZDVfec4Lbh4+CmESwqNddhOcJLfV5OswMmq
 TNlw==
X-Gm-Message-State: AOJu0YympV4t9XGCltzpaaeSDur/NySKpryMgThFXw/NE1U64il640O+
 RAaC8zY0Aok2IS5uB6SUS7V2Qyaw8aCbh37nm2b199ip+98fMQ6fwoEq+vajqbD3rTaadHY8mJt
 XP9JJ8TfWXVsPmjFxFnDLxeJTfUh43sH641mM4YmVyQU40AWds30hGhZp1HFBFY9kqzIW5F24mZ
 4kD++8O9zfjAoVtGaUMA7eL1+rzpFvomrYLBFzE/pbnRVXI4LuIQ6/xhzd
X-Gm-Gg: AZuq6aJiKQP/ACRCyfbDSvZHHmMGYNddnCS/hYtj9WKIKxxs1B5vbgKsQP5j61zmMGs
 V04IUu3knEoVLNFSs81qJbq1M+wV3SoICiGCHGPKO36s3d/BFVoIo/Z+NO/N5ZzFGbrO23ZXz6Z
 9Y30VFw60n1nb2033iHcLfwwmdjGerwcsPgebFl8LszTRgwx+a0MZYEDorZIKbNSEfdg==
X-Received: by 2002:a05:6830:4124:b0:7d1:4980:252a with SMTP id
 46e09a7af769-7d17025a852mr1636280a34.3.1769416241349; 
 Mon, 26 Jan 2026 00:30:41 -0800 (PST)
X-Received: by 2002:a05:6830:4124:b0:7d1:4980:252a with SMTP id
 46e09a7af769-7d17025a852mr1636278a34.3.1769416240934; Mon, 26 Jan 2026
 00:30:40 -0800 (PST)
MIME-Version: 1.0
References: <20260121-jk-e825c-fix-missing-timetamps-v1-1-f090eabfc823@intel.com>
In-Reply-To: <20260121-jk-e825c-fix-missing-timetamps-v1-1-f090eabfc823@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Mon, 26 Jan 2026 09:30:29 +0100
X-Gm-Features: AZwV_QjPh_HuYHfu57c4WL9426spChrLIXNrv5MUk5FZfKy-L9r3KFgo-dRant4
Message-ID: <CADEbmW0roa=NKwB2kE7DJ0n_W5=Rqk1LJu3kri4u1Rkc8h-KvA@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Przemyslaw Korba <przemyslaw.korba@intel.com>, netdev@vger.kernel.org, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Zb0fdIl_9qmbEF3OfnAqMLLE7VgHg9FbDxshLiMn9Mw_1769416242
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1769416244;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QoXcx9RJW2MGk9gdqPpQfFLPfh4v79V4Bss6akGxX8U=;
 b=PdxHR0DU+Kj8LMgaEXWg34ZmZBuZ3CqhrxPgjRZuvVjioijDM9C+7Na0/8sfBVL+Z8XCNL
 jKDKpMQ76MgJ7TKdI8OmQPILNmxj645Cs9dMYR/nRCU0PpM6SX2GczRO/Zu/wq7PtwjPAZ
 b9InSsG10LWnHlFg3f8QxMRmgwBx4SM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=PdxHR0DU
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: PTP: fix missing
 timestamps on E825 hardware
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
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 10EBB8578E
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 8:01=E2=80=AFPM Jacob Keller <jacob.e.keller@intel.=
com> wrote:
> The E825 hardware currently has each PF handle the PFINT_TSYN_TX cause of
> the miscellaneous OICR interrupt vector. The actual interrupt cause
> underlying this is shared by all ports on the same quad:
>
>   =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=90
>   =E2=94=82                                 =E2=94=82
>   =E2=94=82   =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90 =E2=
=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90 =E2=94=8C=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=90 =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=90   =E2=94=82
>   =E2=94=82   =E2=94=82PF 0=E2=94=82 =E2=94=82PF 1=E2=94=82 =E2=94=82PF 2=
=E2=94=82 =E2=94=82PF 3=E2=94=82   =E2=94=82
>   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98 =E2=
=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98 =E2=94=94=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=98 =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=98   =E2=94=82
>   =E2=94=82                                 =E2=94=82
>   =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=96=B2=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=98
>                    =E2=94=82
>                    =E2=94=82
>   =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=BC=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=90
>   =E2=94=82             PHY QUAD            =E2=94=82
>   =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=96=B2=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=96=B2=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=96=B2=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=96=B2=E2=94=
=80=E2=94=80=E2=94=98
>       =E2=94=82        =E2=94=82        =E2=94=82        =E2=94=82
>   =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=80=E2=94=80=E2=94=
=90 =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=94=80=E2=94=
=90 =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=80=E2=94=80=E2=94=
=90 =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=80=E2=94=80=E2=94=
=90
>   =E2=94=82Port 0=E2=94=82 =E2=94=82Port 1=E2=94=82 =E2=94=82Port 2=E2=94=
=82 =E2=94=82Port 3=E2=94=82
>   =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=98 =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=98 =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=98 =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=98
>
> If multiple PFs issue Tx timestamp requests near simultaneously, it is
> possible that the correct PF will not be interrupted and will miss its
> timestamp. Understanding why is somewhat complex.
>
> Consider the following sequence of events:
>
>   CPU 0:
>   Send Tx packet on PF 0
>   ...
>   PF 0 enqueues packet with Tx request          CPU 1, PF1:
>   ...                                           Send Tx packet on PF1
>   ...                                           PF 1 enqueues packet with=
 Tx request
>
>   HW:
>   PHY Port 0 sends packet
>   PHY raises Tx timestamp event interrupt
>   MAC raises each PF interrupt
>
>   CPU 0, PF0:                                   CPU 1, PF1:
>   ice_misc_intr() checks for Tx timestamps      ice_misc_intr() checks fo=
r Tx timestamp
>   Sees packet ready bit set                     Sees nothing available
>   ...                                           Exits
>   ...
>   ...
>   HW:
>   PHY port 1 sends packet
>   PHY interrupt ignored because not all packet timestamps read yet.
>   ...
>   Read timestamp, report to stack
>
> Because the interrupt event is shared for all ports on the same quad, the
> PHY will not raise a new interrupt for any PF until all timestamps are
> read.
>
> In the example above, the second timestamp comes in for port 1 before the
> timestamp from port 0 is read. At this point, there is no longer an
> interrupt thread running that will read the timestamps, because each PF h=
as
> checked and found that there was no work to do. Applications such as ptp4=
l
> will timeout after waiting a few milliseconds. Eventually, the watchdog
> service task will re-check for all quads and notice that there are
> outstanding timestamps, and issue a software interrupt to recover. Howeve=
r,
> by this point it is far too late, and applications have already failed.
>
> All of this occurs because of the underlying hardware behavior. The PHY
> cannot raise a new interrupt signal until all outstanding timestamps have
> been read.
>
> As a first step to fix this, switch the E825C hardware to the
> ICE_PTP_TX_INTERRUPT_ALL mode. In this mode, only the clock owner PF will
> respond to the PFINT_TSYN_TX cause. Other PFs disable this cause and will
> not wake. In this mode, the clock owner will iterate over all ports and
> handle timestamps for each connected port.
>
> This matches the E822 behavior, and is a necessary but insufficient step =
to
> resolve the missing timestamps.
>
> Even with use of the ICE_PTP_TX_INTERRUPT_ALL mode, we still sometimes mi=
ss
> a timestamp event. The ice_ptp_tx_tstamp_owner() does re-check the ready
> bitmap, but does so before re-enabling the OICR interrupt vector. It also
> only checks the ready bitmap, but not the software Tx timestamp tracker.
>
> To avoid risk of losing a timestamp, refactor the logic to check both the
> software Tx timestamp tracker bitmap *and* the hardware ready bitmap.
> Additionally, do this outside of ice_ptp_process_ts() after we have alrea=
dy
> re-enabled the OICR interrupt.
>
> Remove the checks from the ice_ptp_tx_tstamp(), ice_ptp_tx_tstamp_owner()=
,
> and the ice_ptp_process_ts() functions. This results in ice_ptp_tx_tstamp=
()
> being nothing more than a wrapper around ice_ptp_process_tx_tstamp() so w=
e
> can remove it.
>
> Add the ice_ptp_tx_tstamps_pending() function which returns a boolean
> indicating if there are any pending Tx timestamps. First, check the
> software timestamp tracker bitmap. In ICE_PTP_TX_INTERRUPT_ALL mode, chec=
k
> *all* ports software trackers. If a tracker has outstanding timestamp
> requests, return true. Additionally, check the PHY ready bitmap to confir=
m
> if the PHY indicates any outstanding timestamps.
>
> In the ice_misc_thread_fn(), call ice_ptp_tx_tstamps_pending() just befor=
e
> returning from the IRQ thread handler. If it returns true, write to
> PFINT_OICR to trigger a PFINT_OICR_TSYN_TX_M software interrupt. This wil=
l
> force the handler to interrupt again and complete the work even if the PH=
Y
> hardware did not interrupt for any reason.
>
> This results in the following new flow for handling Tx timestamps:
>
> 1) send Tx packet
> 2) PHY captures timestamp
> 3) PHY triggers MAC interrupt
> 4) clock owner executes ice_misc_intr() with PFINT_OICR_TSYN_TX flag set
> 5) ice_ptp_ts_irq() returns IRQ_WAKE_THREAD
> 7) The interrupt thread wakes up and kernel calls ice_misc_intr_thread_fn=
()
> 8) ice_ptp_process_ts() is called to handle any outstanding timestamps
> 9) ice_irq_dynamic_ena() is called to re-enable the OICR hardware interru=
pt
>    cause
> 10) ice_ptp_tx_tstamps_pending() is called to check if we missed any more
>     outstanding timestamps, checking both software and hardware indicator=
s.
>
> With this change, it should no longer be possible for new timestamps to
> come in such a way that we lose an interrupt. If a timestamp comes in
> before the ice_ptp_tx_tstamps_pending() call, it will be noticed by at
> least one of the software bitmap check or the hardware bitmap check. If t=
he
> timestamp comes in *after* this check, it should cause a timestamp
> interrupt as we have already read all timestamps from the PHY and the OIC=
R
> vector has been re-enabled.
>
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products"=
)
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

I applied this patch to a RHEL 9.6 kernel and my colleague has tested it.
He wrote:
> Tested the build: kernel-5.14.0-570.81.1.iceptpstamps.el9 by running
> G8273.2 noise generation test (7.1) for more than 4 hours -  have not
> observed any issues. Packet rates normal and inter-message intervals
> are regular. No delays, timeouts, failures.

You can add:

Tested-by: Vitaly Grinberg <vgrinber@redhat.com>

