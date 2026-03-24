Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDjCOtu1wmlilAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 17:03:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A77A53189BB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 17:03:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8182E83670;
	Tue, 24 Mar 2026 16:03:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NqkHi-HwWO2J; Tue, 24 Mar 2026 16:03:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD71983653
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774368214;
	bh=ndr4f+Fhi3490xGAr/HXUqs1nKZ0HcWxjW9z/lI5D0g=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qCoybjO5bXG8k5yCddgXsZ3fGm1rpyEr9iULTiNepze1A0zoXGY15cnfp/q5u7Zpw
	 Ah+4Qhm2JyJ78lgnR95s+gToP/JeWUsjtKpY6v1yFqsK5eiqFn8/ItMS2XXs8IhjMt
	 4PTi14QLlfmKZI6baCNmfqLHgSlbM4OVxw8Jtb3LG564aX2JOGhVSsVzx3U2WStR49
	 Ax0bnK+A1yuDqyF46Ntb6g2g7upk9YlwnxQm4sZQn/r9JTikNjHGLvvhqaSibQxpvM
	 YZxj5fHBxCeYzRFc+ircIRAyP+lkxnt9k6TMo+3X+c4KjM4tld7/Gb6E0K+4WyfuXF
	 fUUzDkLZVWr3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD71983653;
	Tue, 24 Mar 2026 16:03:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9119F1D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 16:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82A2060DC9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 16:03:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WFTvLnTcD_je for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 16:03:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jramaseu@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7610D60DC2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7610D60DC2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7610D60DC2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 16:03:32 +0000 (UTC)
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com
 [74.125.82.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-353-8QDxvjC5NyWYLBdCPyGpxQ-1; Tue, 24 Mar 2026 12:03:29 -0400
X-MC-Unique: 8QDxvjC5NyWYLBdCPyGpxQ-1
X-Mimecast-MFC-AGG-ID: 8QDxvjC5NyWYLBdCPyGpxQ_1774368208
Received: by mail-dy1-f199.google.com with SMTP id
 5a478bee46e88-2ba8013a9e3so1287424eec.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 09:03:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774368207; x=1774973007;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ndr4f+Fhi3490xGAr/HXUqs1nKZ0HcWxjW9z/lI5D0g=;
 b=GVLAusRPSbl0jlKYAqN1v99f9netRRskj2bFdTrtoKk201xisqdatQa4n8i8+H+fZv
 ONejCdbKCM3ScRY3WbkznYRQYNyb0MTPJcTAklApm6jl5RLXIKzuJeqHW119C35cS2VI
 HqlA8oTJJyCOQmYOhM/lqsF0kmmsXo83jlih49CnjNbeVBhnE0TKUy02GhLr3wffEgEs
 NMW7jCjsKWHkVy1DzBINTJTkbjeRSOBKHVMjnXqydWkWMRNoczmMd1FJCHzBQ5f9SQuJ
 sYjGXNo3UoUP+tuVoz9vbaA9pSaI9fXg58xG3sawjN8NqdeSQJyHwQzV6MAlIj53lIY5
 umlA==
X-Gm-Message-State: AOJu0Yz7Rq8P7aUclcnsHhsteAjg+9z/dIi6Vn4CWBTRSlKIrRBWKOPa
 pPQ1g3iskLNygm3vExzJlvLEhTNqHSMdC9p++2kDaFeEvQdayLKTPIicN9P3nY+atyGTW7yBEhs
 n85KfnCxOx/LgixVgVIQDGBYlJaEIFF0WH3IlN+qbbQlovptfg3JGY7aZCX4bAr4M9gDoLx22+i
 ZWTwcX/MJC8tnIPvTSxAkXuFZ7+NkszUpWT8PYZoWwrWICcgfQVsnrB18g
X-Gm-Gg: ATEYQzyVGWlr9H9S8icAvI5swi1g0guKh0WuADfUIiN6buP/8DgCaDC1Ak6YJeQvdqx
 gDxEX1aRn7OvmJTtt0nAbri1lgkih+DUTa+6gDjJyFLwGAZKqZH4ALIqd7TyPH2KvKiE98RosaM
 qa3oiExsWjYSXrozNucx8WOxZq3FgbglElX38GJzGp+Q/BXlY5KiwUVHvrRQHRqhxApceUIgmhg
 AGhQA==
X-Received: by 2002:a05:7301:9e44:b0:2c1:558c:16e1 with SMTP id
 5a478bee46e88-2c1558c2237mr1067228eec.4.1774368207382; 
 Tue, 24 Mar 2026 09:03:27 -0700 (PDT)
X-Received: by 2002:a05:7301:9e44:b0:2c1:558c:16e1 with SMTP id
 5a478bee46e88-2c1558c2237mr1067181eec.4.1774368206589; Tue, 24 Mar 2026
 09:03:26 -0700 (PDT)
MIME-Version: 1.0
References: <20260310150557.1138437-1-jramaseu@redhat.com>
 <20260312094028.1394467-1-jramaseu@redhat.com>
In-Reply-To: <20260312094028.1394467-1-jramaseu@redhat.com>
From: Jakub Ramaseuski <jramaseu@redhat.com>
Date: Tue, 24 Mar 2026 17:03:00 +0100
X-Gm-Features: AQROBzCSNoHLn2VgBVM9Ge1eKI3Iopqe3NKUZ8sfqVr2R6LeNpg0dWjHHRqz3sY
Message-ID: <CAMxPHxuOFtyP9VzB4UpshMCKcgnQ+FHJxHTS-zXUXk4Wzm+mrg@mail.gmail.com>
To: anthony.l.nguyen@intel.com
Cc: intel-wired-lan@lists.osuosl.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: XlBW1WydMrPZ8Qx3NMfC7_43qfxFze8m3hAj6z-LR5M_1774368208
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1774368210;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ndr4f+Fhi3490xGAr/HXUqs1nKZ0HcWxjW9z/lI5D0g=;
 b=GaOrUHO8020brQirwUJGHDxuJ1Jn39phusEGgYZfX9LoVCtylviIaDPPd2OmvruBq4Lt3d
 jT8k39jVJkan29u1LVb48dFVTaCuolNSMXfK3Q4LUvghL7LWdztHGcKNHXKY+1alnHo5ma
 TuPehfosTM0mdb9Uoz5Duakh/1X3NHk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GaOrUHO8
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: enable
 NETIF_F_HW_CSUM for GSO packets
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_SENDER(0.00)[jramaseu@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jramaseu@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A77A53189BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi, Anthony,

Pardon me for asking, but is anything else required in this matter?

Regards,
Jakub Ramaseuski

On Thu, Mar 12, 2026 at 10:40=E2=80=AFAM Jakub Ramaseuski <jramaseu@redhat.=
com> wrote:
>
> For whom it may concern
>
> I forgot to include Reviewed-by section that was to be copied from v1 of =
the patch
> (to be found here: https://lore.kernel.org/intel-wired-lan/20260310115556=
.1004263-1-jramaseu@redhat.com/T/#u),
> sorry for the inconvenience.
>
> Regards,
> Jakub Ramaseuski
>

