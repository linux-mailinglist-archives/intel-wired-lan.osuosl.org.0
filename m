Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26711446B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jan 2020 22:57:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7946C87B08;
	Tue, 21 Jan 2020 21:57:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qr8A1MYd8WDF; Tue, 21 Jan 2020 21:57:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E81287B41;
	Tue, 21 Jan 2020 21:57:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 382911BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2020 21:57:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 32E0387B0A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2020 21:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UxDjGJR2xq6U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jan 2020 21:57:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A9CE287B08
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2020 21:57:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 13:57:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; d="scan'208";a="427201383"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.26])
 by fmsmga006.fm.intel.com with ESMTP; 21 Jan 2020 13:57:55 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
In-Reply-To: <20200120063350.36467-1-sasha.neftin@intel.com>
References: <20200120063350.36467-1-sasha.neftin@intel.com>
Date: Tue, 21 Jan 2020 13:59:04 -0800
Message-ID: <87o8uw31zr.fsf@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Complete to commit Add basic
 skeleton for PTP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sasha,

Sasha Neftin <sasha.neftin@intel.com> writes:

> commit 5f2958052c58 ("igc: Add basic skeleton for PTP")
> Add ptp suspend method to the igc_shutdown.

I guess the commit message could use a bit more text, something like
this:

"Commit 5f2958052c58 ("igc: Add basic skeleton for PTP") added basic
support for PTP, what's missing is support for suspending. By cleaning
the runtime storage for timestamp this avoids a possible invalid memory
access when the system comes back from suspend."

Apart from that, the code looks good.

Is this the only thing missing for suspend/resume to work? If so, that's
cool :-)


Cheers,
--
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
