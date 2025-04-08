Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B904A81013
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 17:33:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A96640CB4;
	Tue,  8 Apr 2025 15:33:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o2RmKfBdxKbm; Tue,  8 Apr 2025 15:33:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9D3640D49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744126396;
	bh=ZIp5HkuCecJrXO42LNENOtR2HpJcHzON18/VgrUWA2U=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Din1DbHKfbHFdVRMdYU5IKo/Im5/91Xwuniw3Mdq4O8dM+KDlxn45eiGZjakr4bgq
	 h67teXspPP//McLNKfJa5JI0WPiXxRHj5INwlUfCrzdb5rJ+Vrn/4x82jUu4g8Ka9c
	 RZ2F0WNjfGzgIQb4bv0aMQMUGZx1M4JaVzGgGVXssL/Ay0nDKTptoXwo9sowzeOWAe
	 6kK+DcMtG0giBX1tywI+VbXj53NfQEcQ7jw6lPFyE3sWWJ0YP7dmNSrOdQincTpS53
	 eu43Woe+oQzBbhTGISjxjDGEM0U8nAV5+pueSz2NHQLzhvlxGNr/LQaZ89WQXQNrr7
	 flN9y1bCpMwSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9D3640D49;
	Tue,  8 Apr 2025 15:33:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 426401F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 15:33:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 28BE840B00
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 15:33:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lkpBzcYeJG7F for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 15:33:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::d62; helo=mail-io1-xd62.google.com;
 envelope-from=mpazdan@arista.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7082440124
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7082440124
Received: from mail-io1-xd62.google.com (mail-io1-xd62.google.com
 [IPv6:2607:f8b0:4864:20::d62])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7082440124
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 15:33:13 +0000 (UTC)
Received: by mail-io1-xd62.google.com with SMTP id
 ca18e2360f4ac-85dac9729c3so380077939f.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Apr 2025 08:33:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744126392; x=1744731192;
 h=content-transfer-encoding:references:in-reply-to:message-id:date
 :subject:cc:to:from:dkim-signature:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZIp5HkuCecJrXO42LNENOtR2HpJcHzON18/VgrUWA2U=;
 b=D1uiPz9tXD3Rqot4W0L8YobwNOIZ7Px3EmpWzxRdYoZrHqE482UgPUkeCefxiGCJqK
 SA+XEVq/aEG0BwoyhSIcHcgHkPxCdV6Y4hZZS13oKGSEcuENp5OyS5cqvhgg9nGyIw2I
 IuQm4/rQv1xiTIeqvMc8AE6V+FvG+S5ezvYWGftx/DerYBGZbLL0SQHjVs9ELcpf1Tar
 vaeLgYOMEFxr/PGgwW7QlBnI6WVFups07pyqEV1rWWm6+5aXnV/KcWHML66S522hIKkF
 8Hl/177SyeO+p24yGuksPSaQM+Xm7lLqj0+UYxKn1CI57mg+dkKiBEcRD1YZJ/7V/qO+
 0zGg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUgN9hmpZK6dblV4J6lpf7iVja41Bef4RQM2BhR2wAe8lCeS68RHUk8YEyEw2ItsPXmSBUBcQWGwMnwMuqCX5w=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwTJEHGMpu776RCFJEZ0dOYLgrpLYFUA30GAD09D9vLLsB+wgpZ
 3D5n1oPNNURB60FAJ7X7u5fTlWpIMGVAR08xGfFDxkEXBnMwmcW+ErkjI9va4JCvoFZEEBGYC6f
 xxvDbeO5iGSRLFrvWGEcg+LtLa/iBDg==
X-Gm-Gg: ASbGnct2X9KkNi8GbgGcs2j3CDFwDmUZISeHtXtVxKRikfk874JY9bfy48utwKO5AxW
 Fw/K/dcXiLU/DKL6kqouGEtLAd/m+4heeIaIGWj5QUugGfQVoPFEL/hVNV7m5fus3zgzq9euBde
 CD9My0v93S0B3GzUvlbbCL+1moWQRmpB/LzKzlHsOHAx9HYms4PWr7sSSN53PznrHgvOkFq95/y
 8YpMq769aExuwNUTNNjSNZF/UWfmK88Vn0nnqcxSFK2eliRSKMMTAs2Epc9HJt0ZsIMqWvehRnZ
 xT2/xo9DohF0za/6j2BokKN4BjQ=
X-Google-Smtp-Source: AGHT+IG0bJHf8yVxArmgqdUB1VjG2+cLxcbev3xbFIUcyxf0dWKFoKc1j1VYHlHpJORlLSCMN8zrwdAyYHgg
X-Received: by 2002:a05:6e02:2484:b0:3d5:8923:faa5 with SMTP id
 e9e14a558f8ab-3d6ec536c51mr139672185ab.10.1744126392378; 
 Tue, 08 Apr 2025 08:33:12 -0700 (PDT)
Received: from smtp.aristanetworks.com ([74.123.28.25])
 by smtp-relay.gmail.com with ESMTPS id
 e9e14a558f8ab-3d703c0b600sm1161445ab.53.2025.04.08.08.33.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Apr 2025 08:33:12 -0700 (PDT)
X-Relaying-Domain: arista.com
Received: from mpazdan-home-zvfkk.localdomain
 (mpazdan-home-zvfkk.sjc.aristanetworks.com [10.244.168.54])
 by smtp.aristanetworks.com (Postfix) with ESMTP id 81F2A100242;
 Tue,  8 Apr 2025 15:33:11 +0000 (UTC)
Received: by mpazdan-home-zvfkk.localdomain (Postfix, from userid 91835)
 id 79EE640B1B; Tue,  8 Apr 2025 15:33:11 +0000 (UTC)
X-SMTP-Authentication: Allow-List-permitted
X-SMTP-Authentication: Allow-List-permitted
From: Marek Pazdan <mpazdan@arista.com>
To: andrew@lunn.ch
Cc: aleksander.lobakin@intel.com, almasrymina@google.com,
 andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, daniel.zahka@gmail.com,
 davem@davemloft.net, ecree.xilinx@gmail.com, edumazet@google.com,
 gal@nvidia.com, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 jianbol@nvidia.com, kory.maincent@bootlin.com, kuba@kernel.org,
 linux-kernel@vger.kernel.org, mpazdan@arista.com, netdev@vger.kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com, willemb@google.com
Date: Tue,  8 Apr 2025 15:32:30 +0000
Message-ID: <20250408153311.30539-1-mpazdan@arista.com>
In-Reply-To: <8b8dca4d-bdf3-49e4-b081-5f51e26269bb@lunn.ch>
References: <8b8dca4d-bdf3-49e4-b081-5f51e26269bb@lunn.ch>
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=Arista-A; t=1744126391;
 bh=ZIp5HkuCecJrXO42LNENOtR2HpJcHzON18/VgrUWA2U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XoRvZiXmLdRa7ky3oaLJGb1Tqv3cqnbOyHOEdxKTMssua1ZAFg5cxhRrQ8iRbaNOG
 9/9zQqEjQcKIamZ4YTOx7abJNoRNPtv8sdb+oc46Hlu3PzFvtul41m8DUhDs4OULze
 shlA2AgFZY1ZmsK07+atJJ5xX/pM8ATUOH41E58xaKu98tjjjRdq3PSbYb45vIEXLL
 cjbf3rmmQO6NrOcc80HFEPL33TM8RDgMz4+DJm3Op4TL8IxNWO9/gCf8rRPwzTSeKi
 skiPf5i2kJDf1WDPXZ0LNIt1XeILe/I6Q95BmdJPlWbNUXv4pw4QnIupz97xDoNsC+
 Nv5jLsfOCR45Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=arista.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=arista.com header.i=@arista.com header.a=rsa-sha256
 header.s=Arista-A header.b=XoRvZiXm
Subject: Re: [Intel-wired-lan] [PATCH 1/2] ethtool: transceiver reset and
 presence pin control
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

On Mon, 7 Apr 2025 22:39:17 +0200 Andrew Lunn wrote:
> How do you tell the kernel to stop managing the SFP? If you hit the
> module with a reset from user space, the kernel is going to get
> confused. And how are you talking to the module? Are you going to
> hijack the i2c device via i2-dev? Again, you need to stop the kernel
> from using the device.

This is something to implement in driver code. For ice driver this reset will
be executed through AQ command (Admin Queue) which is communication channel
between driver and firmware. What I probably need to do is to add additional PHY
state (like USER_MODULE_RESET) and check it when driver wants to execute AQ command.

> Before you go any further, i think you need to zoom out and tell us
> the big picture....

In my use case I need to have ability to reset transceiver module. There are 
several reasons for that. Most common is to reinit module if case of error state.
(this according to CMIS spec). Another use case is that in our switch's cli there
is a command for transceiver reinitialisation which involves transceiver reset.
