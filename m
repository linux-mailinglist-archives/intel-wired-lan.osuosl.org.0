Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF5E291914
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Oct 2020 21:03:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1043287796;
	Sun, 18 Oct 2020 19:03:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c6-DNprcib7g; Sun, 18 Oct 2020 19:03:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9CF78777C;
	Sun, 18 Oct 2020 19:03:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 72CDB1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Oct 2020 19:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3C7BF20785
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Oct 2020 19:03:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m4dWpChJ2jOp for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Oct 2020 19:03:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B10FF2041A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Oct 2020 19:03:38 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0AB422267;
 Sun, 18 Oct 2020 19:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603047818;
 bh=grwSBB9QbtI9q+8ThvC366A7K50iHzDD1VRkp3UvbfQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OrZ3CUZByjB0YxQcS6SAWrMzsGb2DmTx4XzB+WD3ICVXWxVoJKgVKck2bbhT3dPGf
 P4sfDMyFKe5BZkUpDTyeEA6ED0ZksQ3PfL2JLDCpHcVM8NcV6xdl4v38krZYV/raQz
 xYqpu6AjT/MWghczyfMltKqYQAIxd+9yfKqO3z3A=
Date: Sun, 18 Oct 2020 12:03:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20201018120336.4a662b4a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201018133951.GB34104@ranger.igk.intel.com>
References: <20201017071238.95190-1-sven.auhagen@voleatech.de>
 <20201018133951.GB34104@ranger.igk.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 0/6] igb: xdp patches followup
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
Cc: nhorman@redhat.com, netdev@vger.kernel.org, brouer@redhat.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, sassmann@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, 18 Oct 2020 15:39:51 +0200 Maciej Fijalkowski wrote:
> - next time please specify the tree in the subject that you're targetting
>   this set to land; is it net or net-next? net-next is currently closed so
>   you probably would have to come back with this once it will be open
>   again

Most of the patches here look like fixes, so we can take them into net
but please repost them rather soon.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
