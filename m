Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8754EA3AFF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2019 17:51:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 48000873C9;
	Fri, 30 Aug 2019 15:51:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0HSADNbpdjCN; Fri, 30 Aug 2019 15:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 961DF873B5;
	Fri, 30 Aug 2019 15:51:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B10171BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:51:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ABF4A25DFC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nik5oiJ9YE+P for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2019 15:51:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id C1BB125D72
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:51:14 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id m3so3726453pgv.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 08:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=qh9JMIOA6DKpPhCLXrMjeRQ/Yu9ZjBiM5utlR/Cj6uc=;
 b=qdTI7Rxa8bA7zDyC9FTroHXftoktZ3lJz1pyQDM7p4Rn2bUQFsEwGZJ0rfzzPK0gxJ
 BJWwVx5B6Yl42LJa7WyqX+7ykYYL+MxmE4cUI0DAF0RUleeaiCELdH8SaPnx42bFvqBp
 NTdXhNtJjPH0qRI1bIN1RM/jK88UUp+gfVgLzhCPHDo1hqLxhEJcuD5/myWOSB0bAXPc
 6XnvglnfEntJcP31gi21D21SB5ZnLBnTgsySn1BMnUsarf50G1JSPkT/f4U863IW/MIb
 DTI6FhxcwjgLRw6WOPFEbMwWb1cBCP2l9GUxTc08tZVtV+ZQvNB+agc5gUDiPq4UFygj
 7CMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=qh9JMIOA6DKpPhCLXrMjeRQ/Yu9ZjBiM5utlR/Cj6uc=;
 b=iGnXP0DKA85crH4dZgDe3lM78Zfx5oSwTP9uvbuHwCJC0vGOmgLk8jnmhYkzAcJcCJ
 M811lLrTHWpAnctE2zL6vBr2T8JYfWtR8n3eMa+HdNLQUh8rMZ2w5fu3Dkf+g0dm0Qu9
 +nIz5cQDeh4pJOYwHXVTqkpER2+khz/N8lKoQtkRahXFenm8vMNSwHap0QYc/TkAQY8y
 2dyb0wJWtw6UpKuoLQ19uitDegPHGNyR00uAr1yDjih0W/nBQClKk6xyqLAbyC3Cb9sD
 2k2kiV7NiqaH9bPvv3VcrMfQRDccV1XqRcGdJiaEvN8LYQCpBxpPkezJrKdv9kyYXfGu
 PIhQ==
X-Gm-Message-State: APjAAAVYCCoiPSA0T1tetXifK9XCO5TY5BpaEn7agSOK+sio+lReYwhe
 742/6T5bRJkof1fACxhgKNc=
X-Google-Smtp-Source: APXvYqxIH4BI/e4zt9lk20BW0P9HQaA9UZQnQj8IVrIOLOp/FA92JAuYZYcs56FcEFTv/PE0Gi7TWA==
X-Received: by 2002:aa7:8a83:: with SMTP id a3mr18843130pfc.115.1567180274559; 
 Fri, 30 Aug 2019 08:51:14 -0700 (PDT)
Received: from [172.26.108.102] ([2620:10d:c090:180::7594])
 by smtp.gmail.com with ESMTPSA id j1sm6763972pfh.174.2019.08.30.08.51.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:51:14 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Fri, 30 Aug 2019 08:51:12 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <359B63E6-49B0-4AA2-96F3-D139AF0AEA33@gmail.com>
In-Reply-To: <20190827022531.15060-12-kevin.laatz@intel.com>
References: <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190827022531.15060-1-kevin.laatz@intel.com>
 <20190827022531.15060-12-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 11/12] samples/bpf: use
 hugepages in xdpsock app
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
Cc: maximmi@mellanox.com, jakub.kicinski@netronome.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 stephen@networkplumber.org, saeedm@mellanox.com,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 26 Aug 2019, at 19:25, Kevin Laatz wrote:

> This patch modifies xdpsock to use mmap instead of posix_memalign. With
> this change, we can use hugepages when running the application in unaligned
> chunks mode. Using hugepages makes it more likely that we have physically
> contiguous memory, which supports the unaligned chunk mode better.
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
