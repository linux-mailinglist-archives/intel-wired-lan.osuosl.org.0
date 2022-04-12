Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AC54FCCCF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 05:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E50CE83498;
	Tue, 12 Apr 2022 03:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ClcWdUWOmr34; Tue, 12 Apr 2022 03:01:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00FD583495;
	Tue, 12 Apr 2022 03:01:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C38B01BF380
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 03:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B083C60EE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 03:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id soOyM9SjkUcA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Apr 2022 03:01:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B8F860ECC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 03:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649732503; x=1681268503;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oy122aMW6hyDTL+Ns+munOV1cWv/PxvvWrlq/HyS4zM=;
 b=ENRDYj1qCqwHSfM5dZS4gEzi60qxQpxyDPxpUxl5N3kgw9Eq3i/3vL/5
 H4KsV32eCa30wxs9QULjNLTnp23wbphsZYefpZFA9lHkiXo4wIJ/t/AyA
 DbA7VaBcBeSzTgs2scvJOR/utB7og/KdNCLJ/CRCPj8RKhoZRSDh5S3yO
 0iNUDu++YjjYlNNO2tO7pvcq9929oEcQWhn51glrsri8DEJNGeQ9ZYcK7
 DWLyXIIgCFLrVBCCArASFz4/xq5jur0/sZbYeYq6JRRDzOolmoLDIL20T
 EW2BvhWIQUBZujYOuuaCIiY6GBg5BF86Q+Yu8k97jyqsIyT5fslKcT5PK Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="325176092"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="325176092"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 20:01:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="551500553"
Received: from jhaas-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.1.25])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 20:01:42 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <019c889a-35be-a443-38a0-113e094d68b4@molgen.mpg.de>
References: <20220405205437.29829-1-vinicius.gomes@intel.com>
 <019c889a-35be-a443-38a0-113e094d68b4@molgen.mpg.de>
Date: Mon, 11 Apr 2022 20:01:42 -0700
Message-ID: <877d7vc8dl.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-queue v1] igc: Fix suspending when
 PTM is active
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
Cc: roots@gmx.de, intel-wired-lan@lists.osuosl.org, andre.roeder@hetzner.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Paul Menzel <pmenzel@molgen.mpg.de> writes:

> Dear Vinicius,
>
>
> Thank you for your patch.
>
> Am 05.04.22 um 22:54 schrieb Vinicius Costa Gomes:
>> Some mainboard/CPU combinations have shown problems with
>> suspend/resume when PCIe PTM is enabled and active.
>
> Please give a concrete example of a mainboard/CPU combination with that 
> problem, and document exactly what the problem is (system hangs, when, 
> where, just no network device)?

Sure. Will add.

>
> Also, please use 75 characters per line in commit messages.
>

Will fix.

@Tony, I will send a v2.

>
> Acked-by: Paul Menzel <pmenzel@molgen.mpg.de>
>
>
> Kind regards,
>
> Paul

Thank you,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
