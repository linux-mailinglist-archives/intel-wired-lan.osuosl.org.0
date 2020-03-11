Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D32182607
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 00:51:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3489861A3;
	Wed, 11 Mar 2020 23:51:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kNq1WJ0fmTPH; Wed, 11 Mar 2020 23:51:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F25F86153;
	Wed, 11 Mar 2020 23:51:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8474C1BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 23:51:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7FCF82270C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 23:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tTZDt0MXj2eC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2020 23:51:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 19E3F226FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 23:51:00 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN (unknown [163.114.132.128])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFF45206B1;
 Wed, 11 Mar 2020 23:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583970660;
 bh=Q63T0Htd7n/3DXvdhimi+p5DRbpZhfV6xUdVmhAoM50=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=M1NESqfYXGennf0DFX51EBrZy4MdIZouq21zmYPNbOfv4npeXLUpJZBo43eay4Y8I
 wv8Cagi/4lVUzc7+s3oBmssPNqjmcR/pks27MjSf7q+ghy6PR685RAumj0GNAmlftH
 APow1yQymd8o/ZVOxPab7X97AI/7qZ2evCfWtOts=
Date: Wed, 11 Mar 2020 16:50:57 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20200311165057.3f69e090@kicinski-fedora-PC1C0HJN>
In-Reply-To: <20200311213319.783841-8-jacob.e.keller@intel.com>
References: <20200311213319.783841-1-jacob.e.keller@intel.com>
 <20200311213319.783841-8-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 7/8] ice: add basic handler for
 devlink .info_get
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

On Wed, 11 Mar 2020 14:33:18 -0700 Jacob Keller wrote:
> +    * - ``fw.bundle``
> +      - running
> +      - 0x80002ec0
> +      - Unique identifier of the firmware image file that was loaded onto
> +        the device. Also referred to as the EETRACK identifier of the NVM.

Ugh, I think I mislead you in the previous discussion..

Could you s/fw.bundle/fw.bundle_id/ and make it generic? NFP has the
"_id" at the end which I clearly forgot about..
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
