Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3D42FC7B9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 03:24:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AECD1859D1;
	Wed, 20 Jan 2021 02:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kk60hFl_JTOu; Wed, 20 Jan 2021 02:23:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 11F2A85ABE;
	Wed, 20 Jan 2021 02:23:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4AEBD1BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 02:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 464EE86EA3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 02:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ANpqXOI74c5C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jan 2021 02:23:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D69EB86D5A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 02:23:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B55452251D;
 Wed, 20 Jan 2021 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611109434;
 bh=JIngvo/gLL0np8/0GdMsYcplKvOBUvSZQ6TQAwbmqik=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ulq9oBEFLABNxyLpx4OC2BvM5iMkVgxvDCjF+A6jopPjnYsvqAJgQRl6qHYEiqyQB
 rXuY9rkUMQE3lWXdBoCo155flsKyuYoKZpFIS5hXtpXOqT2GWYv0oPcZMNip5LtFqm
 uniA8gje2cmCgC6vO+sonTxh8DGuAFalH2vrQPAZpcbIh4VtFMXQpj/cRAvO4MpHkR
 fFPHT0HtQQe28zZBd65lHIPRf32S1VF0kdFwa/znUITTrYQ0lajjgdUKnENNjc2NMw
 P8z43vxodkzeo2fRp7+BZJAFsjTBFPmw2YVv6FsKh6LpK1QA0+SBv1koxUrtD7orQs
 ZYuNBXPMJv+Hg==
Date: Tue, 19 Jan 2021 18:23:52 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210119182352.17635829@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210119004028.2809425-7-vinicius.gomes@intel.com>
References: <20210119004028.2809425-1-vinicius.gomes@intel.com>
 <20210119004028.2809425-7-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 6/8] igc: Add support for
 tuning frame preemption via ethtool
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
Cc: Jose.Abreu@synopsys.com, mkubecek@suse.cz, jiri@resnulli.us,
 vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 18 Jan 2021 16:40:26 -0800 Vinicius Costa Gomes wrote:
> +		NL_SET_ERR_MSG(extack, "Invalid value for add-frag-size");

NL_SET_ERR_MSG_MOD
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
