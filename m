Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B5B183A7B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 21:18:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2E2888601;
	Thu, 12 Mar 2020 20:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TdlAAAIlHeWN; Thu, 12 Mar 2020 20:18:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 66249885ED;
	Thu, 12 Mar 2020 20:18:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 40D1B1BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 20:17:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3C1FE8654C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 20:17:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sBR0lR6b0f85 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2020 20:17:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B76B88648C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 20:17:40 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN (unknown [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6366F206E2;
 Thu, 12 Mar 2020 20:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584044260;
 bh=zhu+rsTufrw2FzTmrz0GF4KFrsSif/d1LfR9k+MShXc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=2PtAXT3/Us/EkOGP+ZH3Vsi7V+vRkA2GeaRmK0dB6YMMMmf83H9gIlW5xyu8nziij
 bIyGuvK/NoLXwXsBbHB2k3x2WJgdmFYqqZoWmZgoaal/T9z/OSx2gCXs0V+425PP4T
 tSlcK94U2auAOAt3iLPrkqDzgTn/gOYLJlN/7oZY=
Date: Thu, 12 Mar 2020 13:17:38 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20200312131738.77d91d7e@kicinski-fedora-PC1C0HJN>
In-Reply-To: <20200312015818.1007882-8-jacob.e.keller@intel.com>
References: <20200312015818.1007882-1-jacob.e.keller@intel.com>
 <20200312015818.1007882-8-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 7/9] devlink: promote
 "fw.bundle_id" to a generic info version
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 11 Mar 2020 18:58:16 -0700 Jacob Keller wrote:
> The nfp driver uses ``fw.bundle_id`` to represent a unique identifier of the
> entire firmware bundle.
> 
> A future change is going to introduce a similar notion in the ice
> driver, so promote ``fw.bundle_id`` into a generic version now.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Jakub Kicinski <kuba@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
