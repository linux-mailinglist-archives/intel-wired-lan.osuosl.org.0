Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C2D28C46
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 May 2019 23:20:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A57088AE0;
	Thu, 23 May 2019 21:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R2KOF+tNiANc; Thu, 23 May 2019 21:20:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4279B88AF6;
	Thu, 23 May 2019 21:20:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 901001BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2019 21:20:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8BB8388AF1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2019 21:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CV0Cf7iSdsHP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 May 2019 21:20:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 285BD88AE0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2019 21:20:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 14:20:17 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost) ([10.241.225.24])
 by fmsmga007.fm.intel.com with ESMTP; 23 May 2019 14:20:17 -0700
Date: Thu, 23 May 2019 14:20:17 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: "Mauro S. M. Rodrigues" <maurosr@linux.vnet.ibm.com>
Message-ID: <20190523142017.00005c59@intel.com>
In-Reply-To: <20190523191112.14572-1-maurosr@linux.vnet.ibm.com>
References: <20190523191112.14572-1-maurosr@linux.vnet.ibm.com>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.30; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Check DDM existence in
 transceiver before access
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
Cc: intel-wired-lan@lists.osuosl.org, gromero@linux.vnet.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 23 May 2019 16:11:12 -0300 Mauro wrote:
> Some transceivers may comply with SFF-8472 but not implement the Digital
> Diagnostic Monitoring (DDM) interface described in it. The existence of
> such area is specified by bit 6 of byte 92, set to 1 if implemented.
> 
> Currently, due to not checking this bit ixgbe fails trying to read sfp
> module's eeprom with the follow message:
> 
> ethtool -m enP51p1s0f0
> Cannot get Module EEPROM data: Input/output error
> 
> Because it fails to read the additional 256 bytes in which it was assumed
> to exist the DDM data.
> 
> This issue was noticed using a Mellanox Passive DAC PN 01FT738. The eeprom
> data was confirmed by Mellanox as correct and present in other Passive
> DACs in from other manufacturers.
> 
> Signed-off-by: Mauro S. M. Rodrigues <maurosr@linux.vnet.ibm.com>

Looks reasonable, thanks for the patch!

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
