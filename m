Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BF0899381
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 05:00:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F06C5606CF;
	Fri,  5 Apr 2024 03:00:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OqBGFhV_N82I; Fri,  5 Apr 2024 03:00:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61FCB606AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712286008;
	bh=QR9jCZZBwYIDks7aqIOeqpa6vdbKSWGYYw8zcF5Lgo0=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JW//83tjTVJBXBP5N43pRRJFMwNSVeo58APY/sCFVdmA609wLeflpsGdw/WgMXAdX
	 EbTPXL78AkmblMK2FjeTUiqJdAGS9RdJV1/5r/M0LlRLJp0JNMKcE9zvXG2JtJnxMP
	 tPa+gId1PDRRH3ZLOg4ldXYC9pqvNMFFJW4rdhos+g4ua3hmfZtNLkPlXUjoqEJw7m
	 4/LVYHot5MklN/5nWSl1KlgZWA6APNs7cdEogPK4g8L6JXvDpYVFrv3GGu+L69L0wu
	 efvIQNSI/2ktHILk16VUQxIVoDpeF35t/BGqaUi28+Nf+KVUYahseDZiFEjHkXMmT2
	 cBPhB6TgFJr4g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61FCB606AF;
	Fri,  5 Apr 2024 03:00:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F038B1BF39C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 03:00:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB18B4157C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 03:00:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g0XX0dzuErWg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 03:00:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::632; helo=mail-ej1-x632.google.com;
 envelope-from=james.dutton@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C0890410DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0890410DF
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C0890410DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 03:00:03 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-a51a8749478so1132366b.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 04 Apr 2024 20:00:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712286001; x=1712890801;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QR9jCZZBwYIDks7aqIOeqpa6vdbKSWGYYw8zcF5Lgo0=;
 b=M6ZYPlXWF8VyDvIToXffe6e9FsWCEymqQQ+v5CO66dU1/YvWrkp1kRYyCrZK31c3vb
 Kzo+yDCxIE6NtlICJ5C1xtxb+hdxHfaJ7gnn0E6Z2lY+/4y8fy+0HcmwzEx1n4k+T/hF
 HMiYWrwSqSoOR9S7HoZvlBkrGSUJrAu+zeZESBrkkbgUCwAELnv6jPsVD8O28cA95jC5
 Rq2mFkXlXZCxJ+O1I2SLHsH9F0OHBMmV1ETkuIUSTAgPh+e2XJI6cjCbXAOf2CgfjLCb
 X41oi4Rywq9yhmJWeNQGf7NOFPJcOkCQKQltcygc10HKKKWML/FQdqxtcoimcaTTVD6h
 +7wQ==
X-Gm-Message-State: AOJu0YyizTYKSQ3i4u4UANgKJHRrsPYwZz4KDe7RzJoAWTINHOO4K3tx
 /MGoQq2KXjU3JCND3mdZ+L1v6Zvi5VhaXVSuzHcdPv/9DO+NiBriDpGh2fOigHqvQiKtNRflN5J
 fXv4QR4LH6cTjy3sBM+A2vxRXHfCR9fHz
X-Google-Smtp-Source: AGHT+IFabFfyCJu4chpuFdpGLYSbyG6IM/gYo1ISQQjjBjleHI15etH/lfq7x+I7UAYlYfCqjlEDbEgjTf7mkKqqp1I=
X-Received: by 2002:a17:907:971d:b0:a46:a1d0:8451 with SMTP id
 jg29-20020a170907971d00b00a46a1d08451mr125223ejc.16.1712286001086; Thu, 04
 Apr 2024 20:00:01 -0700 (PDT)
MIME-Version: 1.0
From: James Dutton <james.dutton@gmail.com>
Date: Fri, 5 Apr 2024 03:59:25 +0100
Message-ID: <CAAMvbhGb1mrkFA10=86a-KrzLbyOt13pMk+ZWKwgJ7vzMOcqaQ@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712286001; x=1712890801; darn=lists.osuosl.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=QR9jCZZBwYIDks7aqIOeqpa6vdbKSWGYYw8zcF5Lgo0=;
 b=N8YXwvZD74ePNePvU5q/khybVSCl+fLV474ae1ttdIJMKBlg/DrPzeQUKS3a/DlCId
 Y30FiGLAJ7A4j05u6LSEu7ZZQvCzRwygF+ZiA9pcOjQsRHCmj9AzKYB7hHpbTklh9Rky
 4maPYUCG0MTBKyafnTQD0Uffug2b5pODWKwao0im3ri5i02+Ku9VJPz3X7/WeG7+WLrk
 ospJtfMq86FslwSEjiq84sRJghtloV/pFtshCOsnVXeSFzQM+n/YoR0OC9FZ/lw2B4WL
 zq2Tl9guGp24/yp22GslKQ+b6KcAFG91OLw3gwZgA8H/Jm0y4PTgVvb844xT16j1nAjr
 D3cA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=N8YXwvZD
Subject: [Intel-wired-lan] How to set interface up / down ?
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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

Hi,

I have source code for a sfp phy that is setting
phydev->link = 1
What else do I have to do to make ethtool think the
Link detected: yes

Is there a function I need to call from the phy code to cause the
carrier state to be UP ?
ethtool always shows "Link detected: no" state.

Kind Regards

James
