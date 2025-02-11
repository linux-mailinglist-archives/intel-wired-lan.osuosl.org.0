Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF699A3020D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 04:15:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45769413A4;
	Tue, 11 Feb 2025 03:15:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rgVxK5Y81HrF; Tue, 11 Feb 2025 03:15:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AAAB4138A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739243714;
	bh=l1kP+XWZTOkAajPber64+I/sNCVI/eizySysH4dcPnI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=scF6a5R1x7uP9CT/W/mGKwGv6kDdGb+M0R7YDUacfaBJap3SoBSWHxzYdAH4lUqUV
	 CLyaBs5nhfxOqdSyJyshq0gEXawpMj2/hDKc8+z4flA8x1z9fmQ1B3WvHIMpKHtcDy
	 FOsJ66VySY4+DSY/MHmlZ9qL0hZCKPGXIfWaZsAWGrfGJq1iTO9xlQtcx1ny3OjobJ
	 newF5BCUjn9maoiQsD3diolnW6DGiw1kDT5PTKNONwe7TTYed61uqSztevTi2b+nrF
	 zui/3R5oyEvEcx2xqJzldP+HFmbpROaWxSLCC7qD89EDdUF+EGcpRNXMHoGE96uFQd
	 W7bpwNToxkAsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AAAB4138A;
	Tue, 11 Feb 2025 03:15:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C1DC9C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 03:15:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A3F2440F34
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 03:15:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N1Tx2CfKLwev for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 03:15:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::633; helo=mail-pl1-x633.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5C502408A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C502408A5
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C502408A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 03:15:10 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-21f48ebaadfso83713145ad.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 19:15:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739243709; x=1739848509;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=l1kP+XWZTOkAajPber64+I/sNCVI/eizySysH4dcPnI=;
 b=nnXdbZ49BCpSDykPt4pgP716ZDYO1ZbJ41kmWR0x226IAnlVwPWU7H+cuSmBbdANcA
 7k+MKBRDgONJw0qyXrtchRsoJLLCJz02uhVTyvTBjKdEUpfc5N4cjw7fyCcgccZRAhJC
 UI6ljZHlH2Tm4mnBLBYlOEDOWTrISQ1MGoYWiHa3i4fJOccoQxF/HZ6iGkvCTpjQfOD+
 hFkNC5hFZZ0aZiNcT7KNvYf97EPYxkN0lvX6T9hThydrLasde7n2/F8j7OwQkRqeFy3J
 4fhWhNoXM5iSfeJ/J2QY1sv1QcBMcBVU9xxUFJ+LqtCtpZnFmsrNnx9aWN4QjDxUnIlg
 62hw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVzc74czRObX2I27vFT98yh1w/2l3ea8CrgedjcpH+I+z8g7UGfGU5a2U4Xuw8yyA2izedf2x9po/AseperboE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwE8sveDP7xg4KLK8mjGl0hrfG5NhTnjSANcGXQMAAb/qQvnKZK
 0iAGJzTUHjA10loq/RMv4KEpahDV5/qxcKFgotfrMWi6YD+c9/BoFvCGMUVMMqw=
X-Gm-Gg: ASbGnctDJf6eNWeJj6SVkIk0+qP5Y7w7NdKkKlkYECMF+uGb+AIKKv8sRujOsLVzxev
 H5e1M1qbS/hNv0+jyCDaOJBv3M72dZJ2KUKGoYV4Xmr5rRU42EeYq72lnVDpvHUBZ3+IdEs8hTl
 ELRdQP13pwoKE+f4fiJo7S+2pL+QjhXyATxFPNc1gZxHbrjGguQNR3QpfF/yMVARkRx47gkB99X
 t6Q2nWGW7i5HC/M3em6CeJ+ELJA/zpMYdC0nGzlD7misiXNkrwDczSNHBo4iuQzLS+gHV2qJxTa
 J0eSVKpJZKB2hR5Zx1ug2OxbIxSmWg+55UR5bCgfDysAu4KrW9eFMDRuBGotw1Q=
X-Google-Smtp-Source: AGHT+IELYS0mgNiIgF09/UGSX5ndAImM0FhA9QaK3O1rhuAZR7Qa6bUo3XbZmbsTOscqHOLk72pZ2A==
X-Received: by 2002:a17:902:c941:b0:21f:8099:72de with SMTP id
 d9443c01a7336-21f809974b2mr116223295ad.45.1739243709678; 
 Mon, 10 Feb 2025 19:15:09 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21f368cff88sm86052585ad.242.2025.02.10.19.15.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 19:15:09 -0800 (PST)
Date: Mon, 10 Feb 2025 19:15:06 -0800
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z6rAuqYnIzQH_gtN@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1739243709; x=1739848509; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=l1kP+XWZTOkAajPber64+I/sNCVI/eizySysH4dcPnI=;
 b=YXtCOI8zpq5Zkv6k4Y8m60ARIIVgujbDFjGkoVzSSD/DY+gDYikbBkVm7nfuTVyyR3
 9eSxY0GJN6vk0+2jh9DGAxxvmdkHh4vAeraT2PTYT8coPbYZtD1o6A/2A70HpJqaNjae
 NpZ/LNTVF+iX91vDcg5r6j239yKpnA7aG84HY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=YXtCOI8z
Subject: Re: [Intel-wired-lan] [PATCH 0/3] igb: XDP/ZC follow up
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

On Mon, Feb 10, 2025 at 10:19:34AM +0100, Kurt Kanzenbach wrote:
> This is a follow up for the igb XDP/ZC implementation. The first two 
> patches link the IRQs and queues to NAPI instances. This is required to 
> bring back the XDP/ZC busy polling support. The last patch removes 
> undesired IRQs (injected via igb watchdog) while busy polling with 
> napi_defer_hard_irqs and gro_flush_timeout set.

You may want to use netif_napi_add_config to enable persistent NAPI
config, btw. This makes writing userland programs based on
SO_INCOMING_NAPI_ID much easier.

See also:

https://lore.kernel.org/netdev/20250208012822.34327-1-jdamato@fastly.com/
