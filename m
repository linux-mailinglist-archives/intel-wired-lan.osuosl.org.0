Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FA012F2E9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jan 2020 03:24:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B380385C9F;
	Fri,  3 Jan 2020 02:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6_u1168WWqw6; Fri,  3 Jan 2020 02:24:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3498385C7A;
	Fri,  3 Jan 2020 02:24:32 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6462B1BF20D
 for <intel-wired-lan@osuosl.org>; Fri,  3 Jan 2020 02:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5FA65864CB
 for <intel-wired-lan@osuosl.org>; Fri,  3 Jan 2020 02:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n9jak53GYZEH for <intel-wired-lan@osuosl.org>;
 Fri,  3 Jan 2020 02:24:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9F73786477
 for <intel-wired-lan@osuosl.org>; Fri,  3 Jan 2020 02:24:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 18:24:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,389,1571727600"; d="scan'208";a="244773375"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga004.fm.intel.com with ESMTP; 02 Jan 2020 18:24:28 -0800
Received: from orsmsx114.amr.corp.intel.com ([169.254.8.106]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.58]) with mapi id 14.03.0439.000;
 Thu, 2 Jan 2020 18:24:28 -0800
From: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: use better trace path
Thread-Index: AQHVwdrqk7Ghx0SbO0KsJAq7CpfMEafYNgRw
Date: Fri, 3 Jan 2020 02:24:27 +0000
Message-ID: <253CF818969A9240AB2054BF91F2C2BC98EFB0F3@ORSMSX114.amr.corp.intel.com>
References: <20200103020938.816066-1-jesse.brandeburg@intel.com>
In-Reply-To: <20200103020938.816066-1-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: use better trace path
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

Can ignore this one, I sent a v2 with iavf included.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
