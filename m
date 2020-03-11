Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4C4182603
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 00:49:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 901A5226FF;
	Wed, 11 Mar 2020 23:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vR8w-CSArUFy; Wed, 11 Mar 2020 23:49:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AA30922767;
	Wed, 11 Mar 2020 23:49:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6FA7F1BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 23:49:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6B6898613E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 23:49:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1YqLoaVmm47J for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2020 23:49:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4700E85DCF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 23:49:34 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN (unknown [163.114.132.128])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B4BB206B1;
 Wed, 11 Mar 2020 23:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583970574;
 bh=1WO7qWUbM7r6tbbQHFS2TdUBzwtXz5r/48kar5aga9c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Q4BtgtLuDWRKT8F6sOTUjN/Yjo+6rJok5ZJpK9s6EeqVXf/rj0ZFU9/sjdFrhhCAc
 w/DI6P16COLMFMfXhBcXzEAf45ewKCpsy0XnK8WmqKRW7dWxv9s14G6UNGwVdWYxpk
 6ffPGjfkW6eW759n8Ao08MAqQjI6O/yorqDPKcok=
Date: Wed, 11 Mar 2020 16:49:32 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20200311164932.1a9def7a@kicinski-fedora-PC1C0HJN>
In-Reply-To: <20200311213319.783841-9-jacob.e.keller@intel.com>
References: <20200311213319.783841-1-jacob.e.keller@intel.com>
 <20200311213319.783841-9-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 8/8] ice: add board identifier info to
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

On Wed, 11 Mar 2020 14:33:19 -0700 Jacob Keller wrote:
> Export a unique board identifier using "board.id" for devlink's
> .info_get command.
> 
> Obtain this by reading the NVM for the PBA identification string.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Jakub Kicinski <kuba@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
