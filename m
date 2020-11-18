Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8DE2B813F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Nov 2020 16:55:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8E68A20023;
	Wed, 18 Nov 2020 15:55:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hnxE8Zq90GFN; Wed, 18 Nov 2020 15:55:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 10E922044F;
	Wed, 18 Nov 2020 15:55:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 43C381BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Nov 2020 15:55:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3F21184B08
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Nov 2020 15:55:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sJKRkKUgXJt7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Nov 2020 15:55:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D759384A0F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Nov 2020 15:55:36 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D1A9247B3;
 Wed, 18 Nov 2020 15:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605714936;
 bh=r0CDRoFkB8BgLEPaa2ssyralnP0p6N+L5jBhaOttndg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=S9JnTs5f0QJFKzgr4+uG12DR9Qr/gWbsLxpvqU4dEzKQl32h8l4FGCWOQCE4rgoiY
 M8MH8Yy0aAw5aULGjQx4lSGrYy9xH1+s+58XL2ZZN+MtkBVsFpsHa1hSk7CO0Jhfnb
 O/q7DH9DjQa741gdG0QQFw9Wf1hDnUMCWBHyuyFg=
Date: Wed, 18 Nov 2020 07:55:34 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201118075534.2a5e63c4@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <87d00b5uj7.fsf@intel.com>
References: <20201114025704.GA15240@hoboy.vegasvil.org>
 <874klo7pwp.fsf@intel.com>
 <20201117014926.GA26272@hoboy.vegasvil.org>
 <87d00b5uj7.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for PTP getcrosststamp()
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
Cc: andre.guedes@intel.com, linux-pci@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 17 Nov 2020 17:21:48 -0800 Vinicius Costa Gomes wrote:
> > Also, what is the point of providing time measurements every 1
> > millisecond?  
> 
> I sincerely have no idea. I had no power on how the hardware was
> designed, and how PTM was implemented in HW.

Is the PTMed latency not dependent on how busy the bus is?
That'd make 1ms more reasonable.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
