Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FB18E0C1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B402877DF;
	Wed, 14 Aug 2019 22:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rnq-n1hUyAmb; Wed, 14 Aug 2019 22:31:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2049087804;
	Wed, 14 Aug 2019 22:31:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F6761BF846
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:41:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 08C3A876C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:41:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2MKDg+LOZvRp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 15:41:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8E39D876C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:41:48 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 196so6630574pfz.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 08:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=O5OHk4GVwTOH3/2WWRV/xHNUYFZMkcNgmPSCC7StgDo=;
 b=KCzk+TSQF9zO5+LG/31abtFiWvrfGr+w+7IDX/8xyVxpWtu/z3ge8H+rHyNmQ83Ht5
 0cw+/ok5i1F6DXsl2vrB2fJVruIto9zGFjiylm3DsepEPXGmbYfNGxpDUNww21sJ1nsN
 xz65QyvKG0H/CGzmYDd6av2QIVf+kGx5eTQsOsM4psAm3+EEOrZNjVaiWBsHOojRAiLo
 mYFFP2jmB1IHHBm4+aGsr7ZaV4suXqzt2DePHgANlvzoVT/9K6bHtKK0qwWHYxBVAZth
 X3XCqjNmQLDaHWjL4HRBuW6VUQsPEnlhUbP6ZbDWuRTWh0qBVdriaZEX/GMwwbnLFD/k
 FE0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=O5OHk4GVwTOH3/2WWRV/xHNUYFZMkcNgmPSCC7StgDo=;
 b=d7fUa3g7Z8oNlZEb4NafwLfi7qHqLBO7PS4SRSYskbHr+B4KGkv34JaF+HZec3DU46
 ZCuuN05hfzclXGhG/IM9Sq6PN8vYms4K6dnBFVJUns/8NnsmkCvjuuHAaarjqKYDmutG
 66D0ntkeQhMLId7G+o2cJlwIr+8/czdKw0soV9TnRGs4utCiVvTNmJGTxkVdeDQCd/ct
 oNOCGh2mOZKCDTTWCla9frLlIJCTrgp4uT+D9QT2ke/FxG390k0SZK+Gj/gOHWFJCja5
 MOALaCtnxbGT2Mvrm9UhabsMGp6+ltBCPrYi+O9OuA6G/SKtiH7094vF6ubDIbJGRoA6
 hJGA==
X-Gm-Message-State: APjAAAV1J0qIOO9JMuDr34Kc3kyeeO0tLkveBIqSE487c6aKmsemxUat
 AGDRpKsNa6KFwjhLcv2uhew=
X-Google-Smtp-Source: APXvYqzjZFrr3rJKcSsnGqyM/iwg1XYFzKS+wkccR7KdyMR5vL/4KzqhmcP/PytH3FlUAjPi1H+5YA==
X-Received: by 2002:a62:1d8f:: with SMTP id d137mr549211pfd.207.1565797308210; 
 Wed, 14 Aug 2019 08:41:48 -0700 (PDT)
Received: from [172.26.122.72] ([2620:10d:c090:180::6327])
 by smtp.gmail.com with ESMTPSA id s72sm65545pgc.92.2019.08.14.08.41.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 08:41:47 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Magnus Karlsson" <magnus.karlsson@intel.com>
Date: Wed, 14 Aug 2019 08:41:46 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <E0E5FCCE-AF23-4329-9789-292BE78C4B7C@gmail.com>
In-Reply-To: <1565767643-4908-5-git-send-email-magnus.karlsson@intel.com>
References: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
 <1565767643-4908-5-git-send-email-magnus.karlsson@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 4/8] ixgbe: add support
 for AF_XDP need_wakeup feature
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
Cc: axboe@kernel.dk, maximmi@mellanox.com, kevin.laatz@intel.com,
 jakub.kicinski@netronome.com, daniel@iogearbox.net,
 maciejromanfijalkowski@gmail.com, netdev@vger.kernel.org,
 ciara.loftus@intel.com, qi.z.zhang@intel.com, ast@kernel.org,
 xiaolong.ye@intel.com, ilias.apalodimas@linaro.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 bruce.richardson@intel.com, maciej.fijalkowski@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 14 Aug 2019, at 0:27, Magnus Karlsson wrote:

> This patch adds support for the need_wakeup feature of AF_XDP. If the
> application has told the kernel that it might sleep using the new bind
> flag XDP_USE_NEED_WAKEUP, the driver will then set this flag if it has
> no more buffers on the NIC Rx ring and yield to the application. For
> Tx, it will set the flag if it has no outstanding Tx completion
> interrupts and return to the application.
>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>

Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
