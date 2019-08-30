Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C84AA3AD8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2019 17:47:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0AA2987E9C;
	Fri, 30 Aug 2019 15:47:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rxJAPzbB6RKc; Fri, 30 Aug 2019 15:47:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 81C9187EAC;
	Fri, 30 Aug 2019 15:47:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A6A41BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4F9DF87E3E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gZk9bxCWUExi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2019 15:47:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C2EBB87EAE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:47:28 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id n9so3758836pgc.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 08:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=CaUjNDZmAEMMNBK/j5jNsZ8s6fv3GaGOWpRXhiLhjHA=;
 b=alNnDMoWISTqpfRaT/IeJGrtie5ISN4pfHCtecs12x4BIVYzcyAZOVSVPIChmBgoIA
 e6DdiNPD+F9hBN4uGTOyTNnGWBq2PXPaydIGaQn5WoQK5h3gUnAFrcduna4Ae/GhfxHQ
 shnc7G/4SYTiEKA918gj1+pYgrBswd9SCou/AccVD4MWidzJBuuXntOktDH0nbgTVVAi
 rcoQ2VN6LqSkH2AUFtSrVkYckZy3kjssMtcAPKmirc/k/njhT0X/p9R7W/UxeblHqLwr
 ZcxTgYaHULn5s1GW13rmeMx2nIyfBekJ6U0qJK2ZkzzbXGsw9JktW/20U+wTdM6WHEvy
 jwvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=CaUjNDZmAEMMNBK/j5jNsZ8s6fv3GaGOWpRXhiLhjHA=;
 b=mwgSBe+kJmXsnm0mJK8vYG+Fl9TzNsXMMFysHcPLgJITlV9zH6pjheoTZtD5zoYakl
 M1KY/vOFrCq1S5n1F5NPzc7EgUOnzOWLKe3YmlqMXgLseL31GhYs5Yl6IbnC+LcWKtyC
 ogVcHPOoDIXMXiDyRG5cBIB2kLKMpSqs+IaAHqIVM21EoWODNj/URi9MosmlpUzhNNak
 4/Jfzp503EwQKUpO73ZiZ2wetjpbXiXNqPrgG7jI/cDINrtjn9gPnvah2Heldr46ttNV
 nlGV6EzDaJjM8LLMbfTujNCLwaUyJK9qJWx3rntJSdELSwBmyraECivalfZDmR0GmvJr
 Claw==
X-Gm-Message-State: APjAAAULKFIzz6JiZ60gFqCWgPnRp5u4A8f2umMz8iVLY6KUY242Sepv
 OKTofa5eyGICfdN+J7QzR7Q=
X-Google-Smtp-Source: APXvYqwId+rnnf9zQr1wjleHUWuUCyMAz/csQ287iSxHjnI4dSv1PyN4/8pxTYUHT5Fj/06ex8R6DA==
X-Received: by 2002:a62:ee0e:: with SMTP id e14mr19360256pfi.31.1567180048529; 
 Fri, 30 Aug 2019 08:47:28 -0700 (PDT)
Received: from [172.26.108.102] ([2620:10d:c090:180::7594])
 by smtp.gmail.com with ESMTPSA id y10sm9802795pjp.27.2019.08.30.08.47.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:47:28 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Fri, 30 Aug 2019 08:47:26 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <33E70F88-0C7B-48EF-9591-DBC17D2A09B6@gmail.com>
In-Reply-To: <20190827022531.15060-10-kevin.laatz@intel.com>
References: <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190827022531.15060-1-kevin.laatz@intel.com>
 <20190827022531.15060-10-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 09/12] samples/bpf: add
 unaligned chunks mode support to xdpsock
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

> This patch adds support for the unaligned chunks mode. The addition of the
> unaligned chunks option will allow users to run the application with more
> relaxed chunk placement in the XDP umem.
>
> Unaligned chunks mode can be used with the '-u' or '--unaligned' command
> line options.
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
