Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE19DF99FC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2019 20:45:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6B2D8203AC;
	Tue, 12 Nov 2019 19:45:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HztqQ43yR+uM; Tue, 12 Nov 2019 19:45:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7126E203DC;
	Tue, 12 Nov 2019 19:45:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85E381BF968
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 19:45:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7FF8A81FA0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 19:45:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4521vifwcA8d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2019 19:45:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AFD9C84AF1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 19:45:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 11:45:24 -0800
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; d="scan'208";a="194430986"
Received: from jbrandeb-desk4.amr.corp.intel.com (HELO localhost)
 ([10.166.241.50])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 11:45:24 -0800
Date: Tue, 12 Nov 2019 11:45:23 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Message-ID: <20191112114249.00002280@intel.com>
In-Reply-To: <498edf36e634b9590fd7f58fa7febde226bb3e6e.camel@intel.com>
References: <0EF347314CF65544BA015993979A29CDB4ED9024@IRSMSX102.ger.corp.intel.com>
 <498edf36e634b9590fd7f58fa7febde226bb3e6e.camel@intel.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [e1000-patches] [PATCH] igb: read flash with
 iomem=strict
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Ludkiewicz,
 Adam" <adam.ludkiewicz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 12 Nov 2019 11:05:38 -0800 Jeff wrote:
> On Tue, 2019-11-12 at 13:03 +0000, Loktionov, Aleksandr wrote:
> > When Secure Boot is enabled access to the /dev/mem is forbidden for user-
> > space applications and clients are reporting inability to use tools in
> > Secure Boot Mode. The way to perform NVM update is to use igb driver.
> > Currently 1G Linux Base Driver has API which allows only EEPROM access.
> > There is a need to extend IOCTL API to allow NVM and registers access.
> > These defines are necessary for NVM access functions.
> > 
> > Signed-off-by: Adam Ludkiewicz <adam.ludkiewicz@intel.com>
> > ---  
> 
> This patch only adds defines and macros which are not being used in the
> driver currently.  It appears you are missing the code to actually use
> these defines.  Your missing the changes that Adam made to igb_ethtool.c,
> which are currently being reviewed internally.
> 
> Since this is an incomplete patch, I will drop it from the queue and will
> await a v2 of the patch that has the complete changes needed in the driver.

Not only that, but this is the same code that was just rejected for
the ice driver. I think we should NOT be trying to push this upstream,
knowing that it will likely be rejected.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
