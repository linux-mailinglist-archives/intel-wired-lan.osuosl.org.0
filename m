Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C072675C3
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Sep 2020 00:16:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32E64876F5;
	Fri, 11 Sep 2020 22:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tHHIIylKSsBg; Fri, 11 Sep 2020 22:16:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB48E8790E;
	Fri, 11 Sep 2020 22:16:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C84551BF29F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 22:16:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C28972E2C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 22:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SxnKmk8MKz6N for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 22:16:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E24482E2D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 22:16:03 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57F2021D7E;
 Fri, 11 Sep 2020 22:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599862563;
 bh=gwgvoL1ltfNlDqSVDatly48d4XGe9Ljq55CRe0Bpqng=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=liEq1zumY4avXYacWnhCeKdg33nS4eS4+eyin5aDtr7cQkGyVm9FJjy1St88Wts5w
 imhCdRMr5hzIBptbVIGBtWPLe0wjVRpAQLSxAhOp9OUly1PNyXYFeTpMTdqo5l5shS
 cO3B73lbBsoaXjSkkfun3UMyrZcQC166luhIE+vs=
Date: Fri, 11 Sep 2020 15:16:01 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20200911151601.3207ed80@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200911143405.00004085@intel.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911075515.6d81066b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20200911120005.00000178@intel.com>
 <20200911131238.1069129c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20200911143405.00004085@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 00/11] make
 drivers/net/ethernet W=1 clean
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 11 Sep 2020 14:34:05 -0700 Jesse Brandeburg wrote:
> If I'm not mistaken *all* the warnings you had listed are from C=1
> (sparse) which would be best fixed with a second set of patches. This
> set of patches only aimed to get rid of the W=1 (gcc warnings and kdoc
> warnings from scripts/kernel-doc)

Oh damn, you're right. I got fooled by my own logs :/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
