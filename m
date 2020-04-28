Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D55EE1BCD3A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2020 22:15:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51FAA86610;
	Tue, 28 Apr 2020 20:15:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YE0TEzHKov5V; Tue, 28 Apr 2020 20:15:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E663E8639F;
	Tue, 28 Apr 2020 20:15:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B4231BF410
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2020 20:15:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4F2DF2281C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2020 20:15:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XJU5l84fsE8W for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2020 20:15:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
 by silver.osuosl.org (Postfix) with ESMTPS id 8629C22773
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2020 20:15:02 +0000 (UTC)
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 616212D6;
 Tue, 28 Apr 2020 20:15:01 +0000 (UTC)
Date: Tue, 28 Apr 2020 14:15:00 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: David Miller <davem@davemloft.net>
Message-ID: <20200428141500.7ff1e82b@lwn.net>
In-Reply-To: <20200428.131143.378850463944291442.davem@davemloft.net>
References: <cover.1588024424.git.mchehab+huawei@kernel.org>
 <20200428.131143.378850463944291442.davem@davemloft.net>
Organization: LWN.net
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 00/38] net: manually convert files to
 ReST format - part 1
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
Cc: linux-atm-general@lists.sourceforge.net, linux-doc@vger.kernel.org,
 mchehab+huawei@kernel.org, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 lvs-devel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 28 Apr 2020 13:11:43 -0700 (PDT)
David Miller <davem@davemloft.net> wrote:

> Jon, do you mind if I merge this via the networking tree?

Not at all, that's what I was expecting you would do.

Thanks,

jon
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
