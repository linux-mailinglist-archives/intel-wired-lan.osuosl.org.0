Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE34162D4F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 18:46:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 569B4872A6;
	Tue, 18 Feb 2020 17:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lqtvv4jo1Lfx; Tue, 18 Feb 2020 17:45:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E042787410;
	Tue, 18 Feb 2020 17:45:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D9A41BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 17:45:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 68F3C20489
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 17:45:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JF4CbtmgVw87 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 17:45:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id D2E4220012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 17:45:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 09:45:56 -0800
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="235606497"
Received: from jbrandeb-desk4.amr.corp.intel.com (HELO localhost)
 ([10.166.241.50])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 09:45:55 -0800
Date: Tue, 18 Feb 2020 09:45:55 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <20200218094555.00001cb4@intel.com>
In-Reply-To: <20200217060718.20965-1-sasha.neftin@intel.com>
References: <20200217060718.20965-1-sasha.neftin@intel.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Fix typo in Alder Lake
 brand name
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 17 Feb 2020 08:07:18 +0200 Sasha wrote:
> -#define E1000_DEV_ID_PCH_ADP_1219_LM16		0x1A1E
                                ^
                                ^^^
Man this change is so subtle, you should definitely mention in your
commit message that you're changing a "one" to an "I"

I wrote a whole response to this mail without seeing the difference
until the end.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
