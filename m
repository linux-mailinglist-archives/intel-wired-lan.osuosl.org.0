Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D883264F34
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 21:38:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E34F387775;
	Thu, 10 Sep 2020 19:38:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S2+zUxomYEdh; Thu, 10 Sep 2020 19:38:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2155687709;
	Thu, 10 Sep 2020 19:38:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B03D1BF291
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 19:38:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 063B5877CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 19:38:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3XpNdRVoTuq2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Sep 2020 19:38:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C8EAF877C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 19:38:02 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3798021556;
 Thu, 10 Sep 2020 19:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599766682;
 bh=bdD2AYYqs+4x4expaBzr59fx8t7eVErHy3jZh2ZesWU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UE0SO8vij6S15zbtG8SZosXnDHdOzmUk/Z/lk88WjWOr2bj0csGGnFZgq3ve6j2jl
 YdPe5Fo3VLOAI4PfM9mwP+I4QjcsyNXo6AmXSlxVPoo5KTaAoa5NvpNcCUZjB0lkd9
 7PtV2/bzAVQVWsya/9hkRLeR/fX0JxqYUVbCbR+Q=
Date: Thu, 10 Sep 2020 12:38:00 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wang Hai <wanghai38@huawei.com>
Message-ID: <20200910123800.74865996@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200910150429.31912-1-wanghai38@huawei.com>
References: <20200910150429.31912-1-wanghai38@huawei.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] Fix some kernel-doc
 warnings for e1000/e1000e
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 10 Sep 2020 23:04:26 +0800 Wang Hai wrote:
> Wang Hai (3):
>   e1000e: Fix some kernel-doc warnings in ich8lan.c
>   e1000e: Fix some kernel-doc warnings in netdev.c
>   e1000: Fix a bunch of kerneldoc parameter issues in e1000_hw.c

You should put some text here but I can confirm this set removes 17
warnings.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
