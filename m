Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF79E183A7C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 21:18:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6991D20371;
	Thu, 12 Mar 2020 20:18:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XgU4xVehU0ex; Thu, 12 Mar 2020 20:18:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D4A3520382;
	Thu, 12 Mar 2020 20:18:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B1DD1BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 20:18:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7626D875AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 20:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aVtXxIOStqaC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2020 20:18:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DB8D0875A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 20:18:38 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN (unknown [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 932AE206E2;
 Thu, 12 Mar 2020 20:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584044318;
 bh=tcuucS7hOdCj8EdkSe9DlmycIQN4z0cO7w8Ib3DboTA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=x6fWZaTk8gLZgHFvV6YG34k5hXzLRNPHjQwH1T7ok63wsrLOA4YIg8/yCnhetIbIy
 SI2W7k1x++TehavTORcUJlicUCqtDPEEq0qGpuiRw3hU4Ocd2jAaMdS1zAnilcfCR2
 plD/01iFcArODhiKgytr206TBdIrpub53E/kAZ90=
Date: Thu, 12 Mar 2020 13:18:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20200312131836.1679a4a3@kicinski-fedora-PC1C0HJN>
In-Reply-To: <20200312015818.1007882-9-jacob.e.keller@intel.com>
References: <20200312015818.1007882-1-jacob.e.keller@intel.com>
 <20200312015818.1007882-9-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 8/9] ice: add basic handler for
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

On Wed, 11 Mar 2020 18:58:17 -0700 Jacob Keller wrote:
> The devlink .info_get callback allows the driver to report detailed
> version information. The following devlink versions are reported with
> this initial implementation:
> 
>  "fw.mgmt" -> The version of the firmware that controls PHY, link, etc
>  "fw.mgmt.api" -> API version of interface exposed over the AdminQ
>  "fw.mgmt.build" -> Unique build id of the source for the management fw
>  "fw.undi" -> Version of the Option ROM containing the UEFI driver
>  "fw.psid.api" -> Version of the NVM image format.
>  "fw.bundle_id" -> Unique identifier for the combined flash image.
>  "fw.app.name" -> The name of the active DDP package.
>  "fw.app" -> The version of the active DDP package.

Acked-by: Jakub Kicinski <kuba@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
