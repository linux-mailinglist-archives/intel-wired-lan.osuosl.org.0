Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 607AC2B55EE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Nov 2020 02:06:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F17BF20371;
	Tue, 17 Nov 2020 01:06:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W+-lEobhzAHT; Tue, 17 Nov 2020 01:06:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A49BF20796;
	Tue, 17 Nov 2020 01:06:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 509CB1BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 01:06:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C1E585E03
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 01:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2RmPw4_csYyL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Nov 2020 01:06:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0103385DEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 01:06:44 +0000 (UTC)
IronPort-SDR: dPI2D6V4BP6lIG92qZaTntAJlVmlJKPqzqLEl2zFpfVqmIrdRDxTro+7i1oJnF6jdY97yL0ynd
 3FJ7yKvQd6tw==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="167332133"
X-IronPort-AV: E=Sophos;i="5.77,484,1596524400"; d="scan'208";a="167332133"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 17:06:34 -0800
IronPort-SDR: 6iuQ2P5b0uYvsNEUnXl6Ocy1/RYxIywyS7fYQX2jn8o3mTTVCtMq9u54TDf4sKeBzQFv48Te3p
 75GygF6a54SA==
X-IronPort-AV: E=Sophos;i="5.77,484,1596524400"; d="scan'208";a="430329490"
Received: from iansancx-mobl1.amr.corp.intel.com (HELO ellie)
 ([10.255.231.171])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 17:06:32 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
In-Reply-To: <20201114025704.GA15240@hoboy.vegasvil.org>
Date: Mon, 16 Nov 2020 17:06:30 -0800
Message-ID: <874klo7pwp.fsf@intel.com>
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
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Richard,

Richard Cochran <richardcochran@gmail.com> writes:

> What is a PTM?  Why does a PTM have dialogs?  Can it talk?
>
> Forgive my total ignorance!

:-)

We are talking about PCIe PTM (Precise Time Measurement), basically it's
a PTP-like protocol running on the PCIe fabric.

The PTM dialogs are a pair of messages: a Request from the endpoint (in
my case, the NIC) to the PCIe root (or switch), and a Response from the
other side (this message includes the Master Root Time, and the
calculated propagation delay).

The interface exposed by the NIC I have allows basically to start/stop
these PTM dialogs (I was calling them PTM cycles) and to configure the
interval between each cycle (~1ms - ~512ms).

I also have access to four time stamps:
 - T1, when the NIC sends the Request message;
 - T2, when the PCIe root received the Request message;
 - T3, when the PCIe root sends the Response message;
 - T4, when the NIC receives the Response message;

Actually, I have T1 (on this cycle), T2 (on this and on the previous
cycle), 'T4 - T1' (on this and on the previous cycle) and 'T3 - T2' (on
the previous cycle).

Another thing of note, is that trying to start the PTM dialogs "on
demand" syncronously with the ioctl() doesn't seem too reliable, it
seems to want to be kept running for a longer time.

I think that's it for a "PCIe PTM from a software person" overview :-)


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
