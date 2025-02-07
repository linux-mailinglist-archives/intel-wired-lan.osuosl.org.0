Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E393A2C37A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 14:26:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 823F36069A;
	Fri,  7 Feb 2025 13:26:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xgLN1QzCMogf; Fri,  7 Feb 2025 13:26:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57EA661141
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738934787;
	bh=35QjS2mTIYO+gJZIHE49mfSaBK9urZetBSEHinYZAYQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rATG0I8W3xQ3w/Li4QuBGFzGU6UmhOahltgBTbbqMgwSQc+FqXwMKwN7aTHK/IxMa
	 5wZjaljnDdURir/3AfPvmzcHrVCRjP98dPquXhIvekW0lO5ZszLVLfjXUB0jUDNJcr
	 huWxr5DF9T0U1DoVmK7zVPz6/bh7SKpBKSzbY372D3XWpr9HkBMd6ptgQofTOCgUrZ
	 I1+4kyR9dTM1Ze3ziEq3YbnKo7rWoodOMIeFsNHo4VdRmyT3zPvkf/vw7CFDwqBLnW
	 7p3Y3BRFFVsHGQDKDOBkOb8QPTI2Ww6LW4o9+3jFLorfATFwWmhMXlQx1Vz+DuyVIB
	 ZpAWcCcGgZEsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57EA661141;
	Fri,  7 Feb 2025 13:26:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 04D47C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 13:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5ABA403B3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 13:26:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5gyAEZptcUJ8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 13:26:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5E53940424
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E53940424
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E53940424
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 13:26:24 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-2163dc5155fso41230205ad.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Feb 2025 05:26:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738934783; x=1739539583;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=35QjS2mTIYO+gJZIHE49mfSaBK9urZetBSEHinYZAYQ=;
 b=ww9lfCKhctOtYtc22xNI/Q6iyUP+AhP4XLdFMTVrWB59TwNvkEXwaA6goJLsseMKER
 Nw+QV4eX97NI+zoEBxng6otm7ZXAasAU4Jn1Wfz2RtExAvgqjwe3cNouRUA7h2ANhviU
 ROHwhx0YrjKTKDCTUJmyjPlAA2U3MxGMUmPeEncmuxXK8rFKKc0csy6TFl1yqXWZ6Bcg
 dgA1ZV1wziqXEhnpFQI91/IzOna45/zSW1e3i88uRFkH5oQUio/sHjAktmeaV5K6u5pi
 OeHK0QwrfuN4tXfb7UeSMRmcbJ+P3vdocPEzIlCyLxKaaAwnqaCUiCYaEICwhNqqx8RQ
 U8jA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUfLSWJxSz0a+RUF/0+gOaG88XZPx2cuuLOumpUyb5lDwvatew4CeNPl/sxMJEHTGNERL2kmEBDhaN4Dorf6bg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwuEJB0Eb4dlO3TpMPSC9+1K07zIDfWy369djenoGNoHLAIcmoV
 lMDpwSjlHCVPUBaDbysmx4ElzuX36Z8bNtnnyvgBrK1l++Pw2eVTLnxdLzQR2Uc=
X-Gm-Gg: ASbGncsDWL0vHrI8Lra7S0Jx1c8k0GZOamG/JZLz9JgZMKOmile6ml0g/1k+NXVb9uF
 GmZxS62+EQYA0IrELPfSNLpZ5J20nD12ZeUaLj60Kplzh8UAedefAtVd36BIG31AT4cs2q6kX6P
 7uQzCAltvdsIBi20xWzvR7DSNtY1S5j5un9bWuVMGGl2Oj4X3B3lPcBegfOKOyjB4ZSr+X58BtX
 zG6iFFzVGvleAMZU3Y1d0o2IXQMhDTSAxyn1ztKpJM/iM1W9QK8MFJ5leqDN/jr17IXqlGdIxRD
 PULPa5bYB/kgbHoWsc2dlzgV6zZXXJm8CdM6ShuRyeAYfTlqMCWklwnDUg==
X-Google-Smtp-Source: AGHT+IGiKFyaTw/aK5AthVDYdZM7IzbZscYSuVsAYH2PMD0dc+PpHEArHTZi0M1IUfMhDs+Y9G+A/w==
X-Received: by 2002:a17:902:f786:b0:216:410d:4c53 with SMTP id
 d9443c01a7336-21f4e74480emr55611145ad.41.1738934783432; 
 Fri, 07 Feb 2025 05:26:23 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21f3683d6e5sm30154055ad.141.2025.02.07.05.26.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2025 05:26:23 -0800 (PST)
Date: Fri, 7 Feb 2025 05:26:20 -0800
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Stanislav Fomichev <sdf@fomichev.me>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Message-ID: <Z6YJ_LUD5Gpyb-at@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Stanislav Fomichev <sdf@fomichev.me>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
References: <871pwa6tf2.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871pwa6tf2.fsf@kurt.kurt.home>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1738934783; x=1739539583; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=35QjS2mTIYO+gJZIHE49mfSaBK9urZetBSEHinYZAYQ=;
 b=v5npUxoqBtgUU5Dt0AVQz7440GhEQth5XV7Y1QTuMx2+JHcL3a3pnQyMp1B+Zp+UF1
 rc32xujqRmW916TIjOphmocIZV6Lx/cxnP2rO22jE7JSo5Z1e0Za5XBpScPTa+DkrlI5
 oYoxekQzUDjH6LiN/AnwYlAhkmx1Tt/i3931g=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=v5npUxoq
Subject: Re: [Intel-wired-lan] igb: XDP/ZC busy polling
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

On Fri, Feb 07, 2025 at 09:38:41AM +0100, Kurt Kanzenbach wrote:
> Hello Joe,
> 
> I noticed that XDP/ZC busy polling does not work anymore in combination
> with igb driver. This seems to be related to commit 5ef44b3cb43b ("xsk:
> Bring back busy polling support") which relies on
> netif_queue_set_napi().
> 
> I see you implemented it for e1000, igc and so on. However, igb is
> missing. Do you have any plans to add the missing registration to igb?
> Just asking. Otherwise, I can send a patch for it.

Please feel free; I don't have an igb device so I wouldn't be able
to test it, but I'd happily review it so please CC me.

BTW, I wrote a small series that updates the documentation and adds
a test for AF_XDP [1] that you may want to consider applying/running
(if it is not merged by the time you add support to igb).

[1]: https://lore.kernel.org/lkml/20250207030916.32751-1-jdamato@fastly.com/
