Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F02A1A3A91
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2019 17:41:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D3ED87E93;
	Fri, 30 Aug 2019 15:41:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aYEyZhWZ4Kmg; Fri, 30 Aug 2019 15:41:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD0D487E96;
	Fri, 30 Aug 2019 15:41:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B5DD61BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:41:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD33620425
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:41:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iH5lvyu3911l for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2019 15:41:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id A25D52035D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:41:23 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id p3so3722789pgb.9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 08:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=D8WYuwJPEmbhKXQGImoSc/umRvPMZq3miEtQVpPDIyE=;
 b=GLT3KSbOdxNdWEJziOivaaRl9ftjEIOPYOD44fLe1aCmSkZ6nWkisCmIHxoSlt29Ku
 5M0eD7pyoHUDgSoNDxCjFKgH7XNkqn4056s8pBbWz//nmri3+x93Pt9jjQonUeGt43RR
 y3HXgOTLbQZX48fFF5ZWoBKv0a4aXe7tWlZfkBH8KLMSUpUu4wN1Oe+eYsJHJXQ5faXt
 0orVVe26LBuXYDQSS5SbMasmVp4t3HEyaPz3Ojpdh23P0VLYMo6lshczmd/fElIVmLlb
 esccWSy5iFrKIdkRwNmlmIV9bRGjcDWYyxE9t8k0t6D8Ycz9tyunRhdFtmqf0UE0bNbY
 K87Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=D8WYuwJPEmbhKXQGImoSc/umRvPMZq3miEtQVpPDIyE=;
 b=rCn98iyvHLdnjv7qUI+B0N9fbVmWgGaJC1zJLU8hMhiqb6Ay71agh8oLRvztgH5Puz
 JTY31KSZXPqXejVpI7Zy5tgrTzi+0/n5fJ4m5XYbuuiiX1aVPcU/S9p/sOwzMQmoT3Ag
 QkIWfvugUvNu+xc5NW5Gdo1PKp9Io+HmAYmvr56HD6SRWxaWMHj1yaIRiy+Ki0KIB0Nc
 cdv63OsZZnCbtZMJp9wtKcVMVPn4OGd0xfqr6QDweDqYKBYWljR8BK+muY09k5p1Yxp2
 26X7+i2Xd9b0kG6qIsClXCPcHNutif24JjEIYerZylfsX8fj49COM+8nQpfJjVZN+/Pv
 xoNA==
X-Gm-Message-State: APjAAAXKdxtUeQVMmBBPH/pFobmrkKA+o9PXRsbygZrHiA4FPBtM6hMH
 3JKf43strBr+o1iNRVBVGuk=
X-Google-Smtp-Source: APXvYqyAHjdLR4jjf4CFBr/fLQGF4SuwhhatOJggl7ZYFDFH/GYHzRC0hg8JaY/uu7v35x+aaGkCsw==
X-Received: by 2002:a63:5f95:: with SMTP id
 t143mr13449469pgb.304.1567179683260; 
 Fri, 30 Aug 2019 08:41:23 -0700 (PDT)
Received: from [172.26.108.102] ([2620:10d:c090:180::7594])
 by smtp.gmail.com with ESMTPSA id q4sm6807211pff.183.2019.08.30.08.41.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:41:22 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Fri, 30 Aug 2019 08:41:21 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <071FC949-1F73-40EB-AE2E-FBFEE4F956B3@gmail.com>
In-Reply-To: <20190827022531.15060-4-kevin.laatz@intel.com>
References: <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190827022531.15060-1-kevin.laatz@intel.com>
 <20190827022531.15060-4-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 03/12] xsk: add support to
 allow unaligned chunk placement
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

> Currently, addresses are chunk size aligned. This means, we are very
> restricted in terms of where we can place chunk within the umem. For
> example, if we have a chunk size of 2k, then our chunks can only be placed
> at 0,2k,4k,6k,8k... and so on (ie. every 2k starting from 0).
>
> This patch introduces the ability to use unaligned chunks. With these
> changes, we are no longer bound to having to place chunks at a 2k (or
> whatever your chunk size is) interval. Since we are no longer dealing with
> aligned chunks, they can now cross page boundaries. Checks for page
> contiguity have been added in order to keep track of which pages are
> followed by a physically contiguous page.
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
> Signed-off-by: Bruce Richardson <bruce.richardson@intel.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
